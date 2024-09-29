/*import UIKit
import CoreBluetooth

class WorkoutBluetoothManager: NSObject, ObservableObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    @Published var repsReceived: Int = 0
    
    var centralManager: CBCentralManager!
    var discoveredPeripheral: CBPeripheral?
    var characteristic: CBCharacteristic?

    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil, options: nil)
    }

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .poweredOn:
            centralManager.scanForPeripherals(withServices: nil, options: nil)
        default:
            print("Central manager state changed: \(central.state.rawValue)")
        }
    }

    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], RSSI: NSNumber) {
        if peripheral.name == "Arduino/Genuino 101" { // Replace with your Arduino board's name
            centralManager.stopScan()
            discoveredPeripheral = peripheral
            if let discoveredPeripheral = discoveredPeripheral { // Safely unwrap the optional
                centralManager.connect(discoveredPeripheral, options: nil)
            }
        }
    }

    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        peripheral.delegate = self
        peripheral.discoverServices([CBUUID(string: "180D")]) // Replace with your service UUID
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        guard let services = peripheral.services else { return }

        for service in services {
            peripheral.discoverCharacteristics(nil, for: service)
        }
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        guard let characteristics = service.characteristics else { return }

        for characteristic in characteristics {
            if characteristic.uuid.uuidString == "2A37" { // Replace with your characteristic UUID
                self.characteristic = characteristic
                peripheral.readValue(for: characteristic)
            }
        }
    }

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        guard let data = characteristic.value else { return }
        let reps = Int(data[0]) // Assume the first byte contains the rep count
        DispatchQueue.main.async {
            self.repsReceived = reps
        }
    }

    func writeDataToCharacteristic(_ data: Data) {
        if let characteristic = self.characteristic {
            discoveredPeripheral?.writeValue(data, for: characteristic, type: .withResponse)
        }
    }
}
*/
