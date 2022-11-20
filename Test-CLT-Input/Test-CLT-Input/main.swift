//
//  main.swift
//  Test-CLT-Input
//
//  Created by Сергей Заец on 20.11.2022.
//

import Foundation

print("Enter your text: ", terminator: "")
if var input = readLine() {
    while(input.isEmpty)
    {
        print("No text there! Please, enter something: ", terminator: "")
        input = readLine()!
    }
    print(makeItCool(input))
}

func makeItCool(_ string: String) -> String {
    var output = string
    let chiperKey = [
         "a" : "@",
         "i" : "1",
         "s" : "$",
         "o" : "0",
         "t" : "+",
        ]

    for (key, value) in chiperKey {
        output = output.lowercased().replacingOccurrences(of: key, with: value)
    }
    return output
}
