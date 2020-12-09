import Foundation

let date = Calendar.current.date(byAdding: .weekOfYear, value: 1, to: Date())
let formatter = DateFormatter()

formatter.dateFormat = "dd-MM-yyyy"
let result = formatter.string(from: date ?? Date())

print(result)
