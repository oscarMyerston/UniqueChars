
/// UNIQUE CHARS
/**
 Challenge: Given a String, see if you can detect whether it contains only unique chars.
 */


func isUnique(_ text: String) -> Bool {

    var foundChars = [Character: Bool]()
    let chars = Array(text)
    for c in chars {
        if foundChars[c] != nil {
            return false
        }
        foundChars[c] = true
    }
    return true
}

dump(isUnique("ab"))
dump(isUnique("aa"))
dump(isUnique("abcdefghijklmnopqrstuvwxyz"))
dump(isUnique("abcdefghijklmnopqrstuvwxyza"))
