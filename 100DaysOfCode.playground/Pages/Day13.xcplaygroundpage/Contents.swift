import Foundation

var score = 70

switch score {
	case 0..<40:
		print("E")
	case 40..<50:
		print("D")
	case 50..<65:
		print("C")
	case 65..<70:
		print("B")
	case 70...100:
		print("A")
	default:
		print("whooot?")
}