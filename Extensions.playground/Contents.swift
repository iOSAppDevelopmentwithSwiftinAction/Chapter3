import UIKit
//: # Extensions of their type
extension Dictionary {
  func add(other:Dictionary)->Dictionary {
    var returnDictionary:Dictionary = self
    for (key,value) in other {
      returnDictionary[key] = value
    }
    return returnDictionary
  }
}

var somelanguages = ["eng":"English","esp":"Spanish","ita":"Italian"]
var moreLanguages = ["deu":"German","chi":"Chinese","fre":"French"]
var languages = somelanguages.add(other:moreLanguages)
//: # Operator overloading
func +(left: [String:String], right:[String:String]) -> [String:String] {
  var returnDictionary = left
  for (key,value) in right {
    returnDictionary[key] = value
  }
  return returnDictionary
}

var somelanguages2 = ["eng":"English","esp":"Spanish","ita":"Italian"]
var moreLanguages2 = ["deu":"German","chi":"Chinese","fre":"French"]
var languages2 = somelanguages + moreLanguages
//: # Generics
func +<Key,Value>(left: [Key:Value], right:[Key:Value]) -> [Key:Value] {
  var returnDictionary = left
  for (key,value) in right {
    returnDictionary[key] = value
  }
  return returnDictionary
}

let somelanguages3 = ["eng":"English","esp":"Spanish","ita":"Italian"]
let moreLanguages3 = ["deu":"German","chi":"Chinese","fre":"French"]
var languages3 = somelanguages + moreLanguages

let someRomanNumerals = [1:"I",5:"V",10:"X",50:"L",100:"C",500:"D",1000:"M"]
let moreRomanNumberals = [1:"I",2:"II",3:"III",4:"IV",5:"V"]
var romanNumerals = someRomanNumerals + moreRomanNumberals