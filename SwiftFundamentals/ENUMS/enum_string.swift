//
//  enum_string.swift
//  SwiftFundamentals
//
//  Created by AndreMacBook on 2023-02-23.
//

import Foundation
  // 1

enum Icon: String {
  case music
  case sports
  case weather
  
  var filename: String {
    return "\(self.rawValue).png"
  }
}

  //let icon = Icon.weather
  //print(icon)
