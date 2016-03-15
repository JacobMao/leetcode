private let kMaxPickingCount = 3

class Solution {
    func canWinNim(n: Int) -> Bool {
        //assert(n > kMaxPickingCount, "number cannot be less than zero\(kMaxPickingCount)")

        return n % (kMaxPickingCount + 1) != 0
    }
}
