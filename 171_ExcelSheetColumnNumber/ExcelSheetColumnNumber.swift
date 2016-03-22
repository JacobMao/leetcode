import Foundation

class Solution {
    func titleToNumber(s: String) -> Int {
        var currentPower = s.unicodeScalars.count - 1
        return s.unicodeScalars.reduce(0) { (currentTotal, str) -> Int in
            let result = Int(str.value - 64) * Int(powf(26, Float(currentPower)))

            currentPower -= 1

            return currentTotal + result
        }
    }
}
