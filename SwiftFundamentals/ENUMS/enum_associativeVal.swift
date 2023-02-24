//
//  enum_associativeVal.swift
//  SwiftFundamentals
//
//  Created by AndreMacBook on 2023-02-23.
//

import Foundation

enum Coin: Int {
  case penny = 1
  case nickel = 5
  case dime = 10
  case quarter = 25
}
enum WithdrawalError {
  case success(newBalance: Int)
  case error(message: String)
}

let coinPurse: [Coin] =
[.penny, .nickel, .dime, .dime, .quarter, .nickel ]

var balance: Int = 100

func withdraw(ammount: Int) -> WithdrawalError {
  if ammount <= balance {
    balance -= ammount
    return .success(newBalance: balance)
  } else {
    return .error(message: "broke")
  }
}

let result = withdraw(ammount: 50)

  //! switch case enum check
switch result {
      // ! you need let bindings to read the associative value (newBalance)
  case .success(let joke):
    print("You balance is \(joke)")
  case .error(let error):
    print("Error \(error)")
}

  // ! You can look with if [ case .success(let [value as body]) is in the result variable
guard case .success(let body) = result else {
  fatalError("error")
}
print("guard case enum check", body)

  // ! Or if case...
if case .success(let body2) = result {
  print("if case enum check", body2)
} else {
  print("error")
}
