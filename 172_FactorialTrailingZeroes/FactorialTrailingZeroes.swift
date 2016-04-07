import Foundation

class Solution {
    func trailingZeroes(n: Int) -> Int {
        var ret = 0

        var inputValue = n
        while inputValue > 0 {
            inputValue /= 5
            ret += inputValue
        }

        return ret
    }

    func trailingZeroes2(n: Int) -> Int {
        if n < 5 {
            return 0
        }

        var ret = 0

        let inputValue = Double(n)
        let k = Int(ceil(log(inputValue) / log(5.0)))
        for i in 1...k {
            let calculatedResult = floor(inputValue / pow(5.0, Double(i)))
            ret += Int(calculatedResult)
        }

        return ret
    }
}

let s = Solution()
print(s.trailingZeroes(32))
