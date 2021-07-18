
#include <UButton.h>

UButton::UButton() {
    // Push back two more styles for click and hover states
    m_styles.push_back(UStyle());
    m_styles.push_back(UStyle());
}

void UButton::Redraw() {
    
}
