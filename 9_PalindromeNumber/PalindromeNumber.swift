class Solution {
    func isPalindrome(x: Int) -> Bool {
        if x < 0 {
            return false
        }

        if x < 10 {
            return true
        }

        var div = 1
        while x / div >= 10 {
            div *= 10
        }

        var inputValue = x
        while inputValue > 0 {
            let l = inputValue / div
            let r = inputValue % 10
            if l != r {
                return false
            }

            inputValue = (inputValue % div) / 10
            div /= 100
        }

        return true
    }
}

let s = Solution()
print(s.isPalindrome(11011))
