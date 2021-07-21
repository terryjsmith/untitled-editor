
#ifndef uvboxlayout_h
#define uvboxlayout_h

#include <UWidget.h>

class UVBoxLayout : public UWidget {
public:
	UVBoxLayout();
	~UVBoxLayout() = default;

	/**
	 * Get the actual width and height of the element (based on all children)
	 */
	virtual float Height(float maxHeight);

protected:
	void Redraw() { }
};

#endif