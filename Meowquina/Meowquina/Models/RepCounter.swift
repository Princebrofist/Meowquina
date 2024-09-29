import Foundation

class RepCounter: ObservableObject {
    @Published var reps: Int = 0
    
    func incrementRep() {
        reps += 1
    }
    
    func resetReps() {
        reps = 0
    }
}
