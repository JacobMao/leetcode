class Solution {
    func isPowerOfThree(n: Int) -> Bool {
        if n < 1 {
            return false
        }

        if sizeof(Int) == 4 {
            return 1162261467 % n == 0
        } else if sizeof(Int) == 8 {
            return 4052555153018976267 % n == 0
        } else {
            return false
        }
    }
}
