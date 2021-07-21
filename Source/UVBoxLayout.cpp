
#include <UVBoxLayout.h>

UVBoxLayout::UVBoxLayout() {
	m_sizePolicyVertical = SizePolicy::POLICY_EXPANDING;
}

float UVBoxLayout::Height(float maxHeight) {
	// Start with parent
	UWidget::Height(maxHeight);

	// Start by trying to expand everything equally
	float numChildren = m_children.size();
	float totalHeight = 0;
	std::vector<float> heights;
	float padding = Style(0)->Padding(UStyle::Side::TOP);
	float totalPadding = (numChildren - 1) * padding;
	float idealHeight = (maxHeight - totalPadding) / numChildren;
	float idealTotal = maxHeight - totalPadding;

	for (int i = 0; i < numChildren; i++) {
		float height = m_children[i]->Height(idealHeight);
		totalHeight += height;
		heights.push_back(height);
	}

	// Some items may have fixed min and max widths, need to adjust
	while (std::abs(totalHeight - idealTotal) > 1) {
		// Iterate over children to see which ones are troublemakers
		float remainder = maxHeight;
		std::vector<float> expanding;
		for (int i = 0; i < numChildren; i++) {
			if (heights[i] != idealHeight) {
				// Trouble maker, not conforming to our suggested width
				remainder -= heights[i];
			}
			else {
				// A+ student, so far conforming
				expanding.push_back(i);
			}
		}

		// If we have no more expanding items, break and call it good enough
		if (expanding.size() == 0) {
			break;
		}

		// Have the rest of them expand to fit
		auto it = expanding.begin();
		for (; it != expanding.end(); it++) {
			float height = m_children[*it]->Height(remainder / expanding.size());
			heights[*it] = height;
		}

		// Sum new totals
		totalHeight = 0;
		for (int i = 0; i < numChildren; i++) {
			totalHeight += heights[i];
		}
	}

	// Finally, set offsets
	float offset = 0;
	for (int i = 0; i < numChildren; i++) {
		m_children[i]->OffsetY(offset);
		offset += heights[i] + padding;
	}

	return(m_actualWidth);
}