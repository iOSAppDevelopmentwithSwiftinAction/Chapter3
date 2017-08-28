/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
import UIKit
//: # Telephones using protocols
//:
//: ## is-a protocols
protocol Telephone {
    var phoneNo:Int { get set }
    func makeCall()
    func hangUp()
}
extension Telephone {
    func makeCall() {
        print("Make call")
    }
    func hangUp() {
        print("Hang up")
    }
}
protocol Landline:Telephone {
    
}
protocol Cellular:Telephone {
    func sendSMS()
}
extension Cellular {
    func sendSMS() {
        print("Send SMS")
    }
}
//: ## Capability protocols
protocol Rotaryable {
    func rotaryInput()
}
extension Rotaryable {
    func rotaryInput() {
        print("Received rotary input")
    }
}
protocol PushButtonable {
    func buttonInput()
}
extension PushButtonable {
    func buttonInput() {
        print("Pushed some buttons")
    }
}
protocol Touchable {
    func touchInput()
}
extension Touchable {
    func touchInput() {
        print("Received touch input")
    }
}
protocol Internetable {
    func accessInternet()
}
extension Internetable {
    func accessInternet() {
        print("Accessed internet")
    }
}
//: ## Classes
class RotaryPhone:Landline, Rotaryable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class PushButtonPhone:Landline, PushButtonable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class NonSmartPhone:Cellular,PushButtonable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class iPhone:Cellular,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //iOS implementation
}
class AndroidPhone:Cellular,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //Android implementation
}
class WindowsPhone:Cellular,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //Windows OS implementation
}

