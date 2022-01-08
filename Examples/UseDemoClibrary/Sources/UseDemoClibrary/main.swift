import SwiftIO
import MadBoard
import DemoCLibrary


fun1()
fun2()

// fun3 is not visable!
// fun3()

// fun4 is visable!
fun4()

let adcReadValue = wrapAdcRead(0)
print(adcReadValue)

while true {
    sleep(ms: 1000)
}
