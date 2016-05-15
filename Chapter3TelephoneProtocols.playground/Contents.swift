//: Playground - noun: a place where people can play

import UIKit

//: # Telephones using protocols
//:
//: ## is-as protocols
protocol TelephoneType {
    var phoneNo:Int { get set }
    func makeCall()
    func hangUp()
}
extension TelephoneType {
    func makeCall() {
        print("Make call")
    }
    func hangUp() {
        print("Hang up")
    }
}
protocol LandlineType:TelephoneType {
    
}
protocol CellularType:TelephoneType {
    func sendSMS()
}
extension CellularType {
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
class RotaryPhone:LandlineType, Rotaryable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class PushButtonPhone:LandlineType, PushButtonable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class NonSmartPhone:CellularType,PushButtonable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
}
class iPhone:CellularType,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //iOS implementation
}
class AndroidPhone:CellularType,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //Android implementation
}
class WindowsPhone:CellularType,Touchable,Internetable {
    var phoneNo:Int
    init(phoneNo:Int) {
        self.phoneNo = phoneNo
    }
    //Windows OS implementation
}

