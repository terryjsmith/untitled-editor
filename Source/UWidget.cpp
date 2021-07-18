
#include <UWidget.h>

UWidget::UWidget() {
    m_parent = 0;
    m_actualWidth = m_actualHeight = 0;
    m_growToFit = false;
    
    // Define default style
    m_styles.push_back(UStyle());
}

UStyle* UWidget::Style(int index) {
    return &m_styles[index];
}

void UWidget::AddChild(UWidget* child) {
    m_children.push_back(child);
}

UWidget* UWidget::Child(int index) {
    return(m_children[index]);
}

int UWidget::Children() {
    return(m_children.size());
}

void UWidget::MarkDirty() {
    m_dirty = true;
    
    // Also mark all children as dirty
    auto it = m_children.begin();
    for(; it != m_children.end(); it++) {
        (*it)->MarkDirty();
    }
}

UTexture2D* UWidget::GetTexture() {
    if(m_dirty) {
        this->Redraw();
    }
    
    return(m_texture);
}

float UWidget::Width(float maxWidth) {
    // Need to determine size based on content
    float finalWidth = 0;
    
    // Easiest: if fixed width/height, use that
    if(m_styles[0].FixedWidth() >= 0) {
        m_actualWidth = m_styles[0].FixedWidth();
        return(m_actualWidth);
    }
    
    // Calculate our padding and borders
    float totalPadding = m_styles[0].Padding(UStyle::Side::LEFT) + m_styles[0].Padding(UStyle::Side::RIGHT);
    float totalBorders = m_styles[0].BorderWidth(UStyle::Side::LEFT) + m_styles[0].BorderWidth(UStyle::Side::RIGHT);

    // In all cases, start with the maxWidth and go from there
    finalWidth = maxWidth;
    
    // If this is an expanding item (expend to fit), we want to return the size of all of our contents
    if(m_growToFit == true) {
        // Width will be the maximum width of items and height will be cumulative
        for(int i = 0; i < m_children.size(); i++) {
            // Subtract the margins of the child from the available maximum width of its contents
            float newMaxWidth = m_children[i]->Style()->Margin(UStyle::Side::LEFT) + m_children[i]->Style()->Margin(UStyle::Side::RIGHT);
            finalWidth = std::max(finalWidth, m_children[i]->Width(newMaxWidth - totalPadding - totalBorders));
        }
    }
    
    // Limit by mins and maxes
    finalWidth = std::max(finalWidth, m_styles[0].MinimumWidth());
    finalWidth = std::min(finalWidth, m_styles[0].MaximumWidth());
    
    m_actualWidth = finalWidth;
    return(finalWidth);
}

float UWidget::Height(float maxHeight) {
    // Need to determine size based on content
    float finalHeight = 0;
    
    // Easiest: if fixed width/height, use that
    if(m_styles[0].FixedHeight() >= 0) {
        m_actualHeight = m_styles[0].FixedHeight();
        return(m_actualHeight);
    }
    
    // Calculate our padding and borders
    float totalPadding = m_styles[0].Padding(UStyle::Side::TOP) + m_styles[0].Padding(UStyle::Side::BOTTOM);
    float totalBorders = m_styles[0].BorderWidth(UStyle::Side::TOP) + m_styles[0].BorderWidth(UStyle::Side::BOTTOM);
    
    // If this is an expanding item (expend to fit), we want to return the size of all of our contents
    if(m_growToFit == true) {
        // We want to reduce the available max space by the height of the children as we go
        float newMaxHeight = maxHeight;
        
        // Height will be the cumulative height of all children
        for(int i = 0; i < m_children.size(); i++) {
            // Add the margins of the child in
            float margins = m_children[i]->Style()->Margin(UStyle::Side::TOP) + m_children[i]->Style()->Margin(UStyle::Side::BOTTOM);
            
            // And the height of the child
            float childHeight = m_children[i]->Height(newMaxHeight) + margins;
            newMaxHeight -= childHeight;
            finalHeight += childHeight;
        }
    }
    
    // Add in our own padding and borders
    finalHeight += totalPadding + totalBorders;
    
    // Limit by mins and maxes
    finalHeight = std::max(finalHeight, m_styles[0].MinimumHeight());
    finalHeight = std::min(finalHeight, m_styles[0].MaximumHeight());
    
    m_actualHeight = finalHeight;
    return(finalHeight);
}
