#include "swift_adc.h"
#include "adc_wrap.h"



int wrapAdcRead(int id) {
    void *adc = swifthal_adc_open(id);
    return swifthal_adc_read(adc) + 1;
}
