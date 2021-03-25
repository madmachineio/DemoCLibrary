import SwiftIO
import SwiftIOBoard
import DemoCLibrary


fun1()
fun2()

//fun3 is not visable!
//fun3()

let adcReadValue = wrapAdcRead(0)
print(adcReadValue)

while true {
    sleep(ms: 1000)
}