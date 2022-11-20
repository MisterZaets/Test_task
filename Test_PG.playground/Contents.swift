import Foundation

print(makeItCool("Swift is Awesame"))

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
