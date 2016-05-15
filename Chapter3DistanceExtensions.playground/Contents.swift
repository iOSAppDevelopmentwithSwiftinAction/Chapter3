//: Playground - noun: a place where people can play

import UIKit

//: # Distance class
//:

class Distance {
    static let kmPerMile = 1.60934
    
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles)
        }
        set(newKm) {
            miles = Distance.toMiles(newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {
        self.miles = Distance.toMiles(km)
    }
    static func toKm(miles:Double)->Double {
        return miles * kmPerMile
    }
    static func toMiles(km:Double)->Double {
        return km / kmPerMile
    }
}
//: ## Distance extension
extension Distance {
    static let feetPerMile = 1.60934
    var feet:Double {
        get {
            return Distance.toFeet(miles)
        }
        set(newFeet) {
            miles = Distance.toMiles(feet: newFeet)
        }
    }
    convenience init(feet:Double) {
        self.init(miles:Distance.toMiles(feet:feet))
    }
    func displayMiles()->String {
        return "\(Int(miles)) miles"
    }
    static func toFeet(miles:Double)->Double {
        return miles * 5280
    }
    static func toMiles(feet feet:Double)->Double {
        return feet / 5280
    }
}

var distance = Distance(km: 100)
print ("\(distance.km) km in miles is \(distance.miles)")

distance.km = 90
