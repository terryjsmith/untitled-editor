
#ifndef uhboxlayout_h
#define uhboxlayout_h

#include <UWidget.h>

class UHBoxLayout : public UWidget {
public:
	UHBoxLayout();
	~UHBoxLayout() = default;

    /**
     * Get the actual width and height of the element (based on all children)
     */
    virtual float Width(float maxWidth);

protected:
    void Redraw() { }
};

#endif