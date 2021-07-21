
#include <UHBoxLayout.h>

UHBoxLayout::UHBoxLayout() {
	m_sizePolicyVertical = SizePolicy::POLICY_EXPANDING;
}

float UHBoxLayout::Width(float maxWidth) {
	// Start with parent
	UWidget::Width(maxWidth);

	// Start by trying to expand everything equally
	float numChildren = m_children.size();
	float totalWidth = 0;
	std::vector<float> widths;
	float padding = Style(0)->Padding(UStyle::Side::LEFT);
	float totalPadding = (numChildren - 1) * padding;
	float idealWidth = (maxWidth - totalPadding) / numChildren;
	float idealTotal = maxWidth - totalPadding;

	for (int i = 0; i < numChildren; i++) {
		float width = m_children[i]->Width(idealWidth);
		totalWidth += width;
		widths.push_back(width);
	}

	// Some items may have fixed min and max widths, need to adjust
	while (std::abs(totalWidth - idealTotal) > 1) {
		// Iterate over children to see which ones are troublemakers
		float remainder = maxWidth;
		std::vector<float> expanding;
		for (int i = 0; i < numChildren; i++) {
			if (widths[i] != idealWidth) {
				// Trouble maker, not conforming to our suggested width
				remainder -= widths[i];
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
			float width = m_children[*it]->Width(remainder / expanding.size());
			widths[*it] = width;
		}

		// Sum new totals
		totalWidth = 0;
		for (int i = 0; i < numChildren; i++) {
			totalWidth += widths[i];
		}
	}

	// Finally, set offsets
	float offset = 0;
	for (int i = 0; i < numChildren; i++) {
		m_children[i]->OffsetX(offset);
		offset += widths[i] + padding;
	}

	return(m_actualWidth);
}