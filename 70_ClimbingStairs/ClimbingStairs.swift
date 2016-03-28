class Solution {
    func climbStairs(n: Int) -> Int {
        return 0
    }

    func recursiveSolution(n: Int) -> Int {
        if n <= 2 {
            return n
        }

        return recursiveSolution(n - 1) + recursiveSolution(n - 2)
    }

    func dynamicProgrammingSolution1(n: Int) -> Int {
        if n <= 2 {
            return n
        }

        var dp = [0, 1, 2]

        for i in 3..<(n+1) {
            dp.append(dp[i-1] + dp[i-2])
        }

        return dp[n]
    }

    func dynamicProgrammingSolution2(n: Int) -> Int {
        if n <= 2 {
            return n
        }

        var dp = [Int](count: 3, repeatedValue: 0)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n {
            dp[i%3] = dp[(i - 1) % 3] + dp[(i - 2) % 3]
        }

        return dp[n%3]
    }

    func dynamicProgrammingSolution3(n: Int) -> Int {
        if n <= 2 {
            return n
        }

        var dp = [Int](count: 3, repeatedValue: 0)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n {
            dp[i%3] = dp[(i - 1) % 3] + dp[(i - 2) % 3]
        }

        return dp[n%3]
    }
}
