class Solution {
    func isUgly(num: Int) -> Bool {
        if num <= 0 {
            return false
        }

        var inputNum = num
        while inputNum > 1 {
            if inputNum % 2 == 0 {
                inputNum /= 2
            } else if inputNum % 3 == 0 {
                inputNum /= 3
            } else if inputNum % 5 == 0 {
                inputNum /= 5
            } else {
                break
            }
        }

        return inputNum == 1
    }
}
