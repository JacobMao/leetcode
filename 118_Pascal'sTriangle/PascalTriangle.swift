class Solution {
    func generate(numRows: Int) -> [[Int]] {
        if numRows <= 0 {
            return []
        }

        if numRows == 1 {
            return [[1]]
        }

        var ret: [[Int]] = []
        ret.reserveCapacity(numRows)

        ret.append([1])

        var previousRow: [Int] = [1]
        for r in 1..<numRows {
            let columnCount = r + 1
            var row: [Int] = []
            row.reserveCapacity(columnCount)

            for c in 0..<columnCount {
                let leftColumn = c - 1
                let leftValue = leftColumn < 0 ? 0 : previousRow[leftColumn]

                let rightColumn = c
                let rightValue = rightColumn >= previousRow.count ? 0 : previousRow[rightColumn]

                row.append(leftValue + rightValue)
            }

            previousRow = row

            ret.append(row)
        }

        return ret
    }
}

let s = Solution()
print(s.generate(4))
