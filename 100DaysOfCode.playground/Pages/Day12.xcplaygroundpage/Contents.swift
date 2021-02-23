import Foundation

enum PasswordError: Error {
	case obvious
}

func checkPassword(_ password: String) throws -> Bool {
	if password == "password" {
		throw PasswordError.obvious
	}
	
	return true
}

let validPassword = try? checkPassword("ludwiggg")
if validPassword != nil {
	print("valid")
} else {
	print("whuuut")
}