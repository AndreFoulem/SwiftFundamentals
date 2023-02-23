//
//  enum_basic.swift
//  SwiftFundamentals
//
//  Created by AndreMacBook on 2023-02-23.
//

import Foundation

enum Months: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

  /// -> get season with matching Enums with switch case
func getSeason(for month: Months) -> String {
  switch month {
    case .january, .february, .march, .april:
      return "Winter"
    default:
      return "no result"
  }
}
var myMonth = Months.february
var result = getSeason(for: myMonth)
//print("a",result)




  /// -> Get month from with Raw Value
func monthsUntilWinterBreak(from month: Months) -> Int {
  Months.december.rawValue - month.rawValue
}
var monthsUntil = monthsUntilWinterBreak(from: .april)
//print("monthsUntil", monthsUntil)


  /// -> Init with raw value -> Returns an optional
//if let fifthMonth = Months(rawValue: 5) {
//  print(fifthMonth)
//}


