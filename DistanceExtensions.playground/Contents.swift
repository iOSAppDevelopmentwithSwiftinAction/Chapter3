import UIKit

//: # Distance class
//:

struct Distance {
    static let kmPerMile = 1.60934
    
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km:newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {
        self.miles = Distance.toMiles(km:km)
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
    static let feetPerMile:Double = 5280
    var feet:Double {
        get {
            return Distance.toFeet(miles:miles)
        }
        set(newFeet) {
            miles = Distance.toMiles(feet: newFeet)
        }
    }
    init(feet:Double) {
        self.miles = Distance.toMiles(feet:feet)
    }
    func displayMiles()->String {
        return "\(Int(miles)) miles"
    }
    static func toFeet(miles:Double)->Double {
        return miles * feetPerMile
    }
    static func toMiles(feet:Double)->Double {
        return feet / feetPerMile
    }
    static func toKm(feet:Double)->Double {
        return toKm(miles:toMiles(feet:feet))
    }
}

var distance = Distance(km: 100)
print ("\(distance.km) km in miles is \(distance.displayMiles())")


distance.km = 90


let km = Distance.toKm(miles:60)   //62.137
let km2 = Distance.toKm(feet:100) // 00189
