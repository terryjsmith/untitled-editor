
#include <UWidget.h>
#include <OpenGL.h>
#include <algorithm>

UWidget::UWidget() {
    m_parent = 0;
    m_actualWidth = m_actualHeight = 0;
    m_actualX = m_actualY = 0;
    m_sizePolicyHorizontal = SizePolicy::POLICY_EXPANDING;
    m_sizePolicyVertical = SizePolicy::POLICY_GROWTOFIT;
    m_dirty = true; // Dirty first thing after being created
    m_texture = 0;
    m_vertexBuffer = 0;
    m_vertexArray = 0;
    
    // Define default style
    m_styles.push_back(UStyle());
}

UWidget::~UWidget() {
    if (m_vertexBuffer) {
        GL_CHECK(glDeleteBuffers(1, &m_vertexBuffer));
        m_vertexBuffer = 0;
    }

    if (m_vertexArray) {
        GL_CHECK(glDeleteVertexArrays(1, &m_vertexArray));
        m_vertexArray = 0;
    }
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

        // Only need to do all of this is the output produced a texture (otherwise empty container)
        if (m_texture) {
            // Set up vertex array object
            if (m_vertexArray == 0) {
                GL_CHECK(glGenVertexArrays(1, &m_vertexArray));
            }

            if (m_vertexBuffer == 0) {
                GL_CHECK(glGenBuffers(1, &m_vertexBuffer));
            }

            // Set up vertex buffer
            float vertices[] = {
                0.0f, (float)m_actualHeight, 0.0f, 1.0f,
                0.0f, 0.0f, 0.0f, 0.0f,
                (float)m_actualWidth, (float)m_actualHeight, 1.0f, 1.0f,
                (float)m_actualWidth, 0.0f, 1.0f, 0.0f
            };

            GL_CHECK(glBindVertexArray(m_vertexArray));

            GL_CHECK(glBindBuffer(GL_ARRAY_BUFFER, m_vertexBuffer));
            GL_CHECK(glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 4 * 4, vertices, GL_STREAM_DRAW));

            GL_CHECK(glEnableVertexAttribArray(0));
            GL_CHECK(glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0));

            GL_CHECK(glEnableVertexAttribArray(1));
            GL_CHECK(glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)(sizeof(float) * 2)));

        }

        m_dirty = false;
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
    
    // If this is an expanding item (expend to fit), we want to return the size of all of our contents
    if(m_sizePolicyHorizontal == SizePolicy::POLICY_GROWTOFIT) {
        // Width will be the maximum width of items and height will be cumulative
        for(int i = 0; i < m_children.size(); i++) {
            // Subtract the margins of the child from the available maximum width of its contents
            float newMaxWidth = m_children[i]->Style()->Margin(UStyle::Side::LEFT) + m_children[i]->Style()->Margin(UStyle::Side::RIGHT);
            finalWidth = max(finalWidth, m_children[i]->Width(newMaxWidth - totalPadding - totalBorders));
        }

        // Add borders and padding around content
        finalWidth += totalPadding + totalBorders;
    }
    else {
        // Start with the maxWidth and go from there
        finalWidth = maxWidth;
    }
    
    // Limit by mins and maxes
    if(m_styles[0].MinimumWidth() >= 0) {
        finalWidth = max(finalWidth, m_styles[0].MinimumWidth());
    }

    if (m_styles[0].MaximumWidth() >= 0) {
        finalWidth = min(finalWidth, m_styles[0].MaximumWidth());
    }

    // Set actual width
    m_actualWidth = finalWidth;

    // Iterate over children
    for (int i = 0; i < m_children.size(); i++) {
        m_children[i]->Width(m_actualWidth - totalPadding);

        // TODO: Figure out how to apply padding / spacing to elements
    }
    
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
    if(m_sizePolicyVertical == true) {
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
    else {
        finalHeight = maxHeight;
    }
    
    // Add in our own padding and borders
    finalHeight += totalPadding + totalBorders;
    
    // Limit by mins and maxes
    if (m_styles[0].MinimumHeight() >= 0) {
        finalHeight = max(finalHeight, m_styles[0].MinimumHeight());
    }

    if (m_styles[0].MaximumHeight() >= 0) {
        finalHeight = min(finalHeight, m_styles[0].MaximumHeight());
    }

    // Set actual height
    m_actualHeight = finalHeight;

    // Iterate over children
    for (int i = 0; i < m_children.size(); i++) {
        m_children[i]->Height(m_actualHeight - totalPadding);
    }
    
    return(finalHeight);
}

void UWidget::SizePolicy(int horizontal, int vertical) {
    m_sizePolicyHorizontal = horizontal;
    m_sizePolicyVertical = vertical;
}
