class Solution {
    func isAnagram(s: String, _ t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }

        let c1 = [Int](count: 26, repeatedValue: 0)
        let c2 = [Int](count: 26, repeatedValue: 0)
    }
}
