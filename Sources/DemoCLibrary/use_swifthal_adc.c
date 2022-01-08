#include "swift_adc.h"
#include "adc_wrap.h"



int wrapAdcRead(int id) {
    unsigned short value;

    void *adc = swifthal_adc_open(id);
    swifthal_adc_read(adc, &value);

    return (int) value;
}
