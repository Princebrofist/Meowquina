/*import ORSSerial

class SerialManager: NSObject, ORSSerialPortDelegate {
    var serialPort: ORSSerialPort?

    override init() {
        super.init()
        // List available serial ports
        let availablePorts = ORSSerialPortManager.shared().availablePorts
        serialPort = availablePorts.first // Select the first available port
        
        if let port = serialPort {
            port.delegate = self
            port.baudRate = 9600
            port.open()
        }
    }

    func serialPortWasOpened(_ serialPort: ORSSerialPort) {
        print("Serial Port Opened")
    }

    func serialPortWasClosed(_ serialPort: ORSSerialPort) {
        print("Serial Port Closed")
    }

    func serialPort(_ serialPort: ORSSerialPort, didReceive data: Data) {
        if let message = String(data: data, encoding: .utf8) {
            print("Received: \(message)")
            // Update your app's UI or logic with the received data
        }
    }

    func closePort() {
        serialPort?.close()
    }
}
*/
