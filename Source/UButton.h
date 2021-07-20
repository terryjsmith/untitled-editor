
#ifndef ubutton_h
#define ubutton_h

#include <UWidget.h>
#include <ULabel.h>

class UButton : public UWidget {
public:
    UButton();
    ~UButton() = default;
    
    enum State {
        STATE_DEFAULT = 0,
        STATE_HOVER,
        STATE_CLICK
    };

    /**
     * Get label
     */
    ULabel* Label() { return m_label; }
    
protected:
    // Should be overridden to populate texture data
    virtual void Redraw();

    // Label
    ULabel* m_label;
};

#endif
