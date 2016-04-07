import Foundation

// C(n,k+1) = C(n,k) * (n-k) / (k+1)

class Solution {
    func getRow(rowIndex: Int) -> [Int] {
        if rowIndex < 0 {
            return []
        }


        var ret: [Int] = []

        let elementCount = rowIndex + 1
        ret.reserveCapacity(elementCount)

        ret.append(1)

        for i in 1..<elementCount {
            let previousIndex = i - 1
            let value = ret[previousIndex] * (rowIndex - previousIndex) / i

            ret.append(value)
        }

        return ret
    }
}

let s = Solution()
print(s.getRow(3))
