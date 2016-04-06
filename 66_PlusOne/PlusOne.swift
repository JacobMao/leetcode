class Solution {
    func plusOne(digits: [Int]) -> [Int] {
        var carryNumber = 1

        var ret = digits.reverse().map {(element) -> Int in
            let sum = element + carryNumber
            carryNumber = sum / 10

            return sum % 10
        }

        if carryNumber != 0 {
            ret.append(1)
        }

        return ret.reverse()
    }
}
