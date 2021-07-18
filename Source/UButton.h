
#ifndef ubutton_h
#define ubutton_h

#include <UWidget.h>

class UButton : public UWidget {
public:
    UButton();
    ~UButton() = default;
    
    enum State {
        STATE_DEFAULT = 0,
        STATE_HOVER,
        STATE_CLICK
    };
    
protected:
    // Should be overridden to populate texture data
    virtual void Redraw();
};

#endif
