class Solution {
    func isPowerOfTwo(n: Int) -> Bool {
        let condition1 = n > 0
        let condition2 = (x & (x - 1))  == 0
        return condition1 && condition2
    }
}
