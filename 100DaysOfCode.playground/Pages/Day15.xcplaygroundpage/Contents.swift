import Foundation

protocol Employee {
    var name: String { get set }
    var age: Int { get set }
    func doWork() // might not be defined
}

extension Employee {
    func doWork() {
        print("gk dulu")
    }
}

struct Programmer: Employee {
    var name: String
    
    var age: Int
}

var jonDoe = Programmer(name: "Jon Doe", age: 32)
jonDoe.doWork()

extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        if self > high {
            return high
        }
    
        if self < low {
            return low
        }
        
        return self
    }
}

let sample = 123
print(sample.clamp(low: 100, high: 110))

var runCount = 0
var time: Float = 30
var elapsedTime: Float = 0

Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
    elapsedTime += 0.01
    print(elapsedTime)
            if elapsedTime >= time {
                timer.invalidate()

            }
}
