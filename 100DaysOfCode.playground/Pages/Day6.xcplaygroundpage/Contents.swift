import UIKit

func fight(action: () -> Void) {
    action()
    print("action executed")
}

fight(action: {
    print("my action")
})
