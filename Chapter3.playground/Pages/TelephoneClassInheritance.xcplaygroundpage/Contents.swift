/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
import UIKit
//: # Telephones using class inheritance
//:
class Telephone {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    func makeCall() {
        print("Make call")
    }
    func hangUp() {
        print("Hang up")
    }
}
//: ## Landline classes
class Landline:Telephone {
    
}
class Rotary:Landline {
    func rotaryInput() {
        print("Received rotary input")
    }
}
class PushButton:Landline {
    func buttonInput() {
        print("Pushed some buttons")
    }
}
//: ## Cellular classes
class Cellular:Telephone {
    override func makeCall() {
        print("Cellular call")
    }
    func sendSMS() {
        print("Send SMS")
    }
}
class NonSmart:Cellular {
    func buttonInput() {
        print("Pushed some buttons")
    }
}
class Smart:Cellular {
    func touchInput() {
        print("Received touch input")
    }
    func accessInternet() {
        print("Accessed internet")
    }
}
class iPhone:Smart {
    //iOS implementation
}
class AndroidPhone:Smart {
    //Android implementation
}
class WindowsPhone:Smart {
    //Windows OS implementation
}
//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
