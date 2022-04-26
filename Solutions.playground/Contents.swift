import UIKit

/*
 
 Hello these, I am Zulqarnain Naveed, an iOS Engineer. I picked these questions from One Week preparation
 Hacker Rank path. Although the solutions passed all the test cases but
 still feel free to optimize the solutions.
 
 HOW TO USE:
 Just on comment the function code and call the function with required parameters.
 */


/*
func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var plusProportion:Float = 0
    var minusProportion:Float = 0
    var zeroProportion:Float = 0
    var arrayLength = Float(arr.count)
    for number in arr{
        if number == 0{
            zeroProportion += 1
        }else if number < 0{
            minusProportion += 1
        }else if number > 0{
            plusProportion += 1
        }
    }
    print(plusProportion/arrayLength)
    print(minusProportion/arrayLength)
    print(zeroProportion/arrayLength)
}
*/


/*
func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    let sortedArr = arr.sorted()
    let miniNumber = sortedArr[0]
    let maxNumber = sortedArr[arr.count-1]
    var minCount = 0
    var maxCount = 0
    for number in arr{
        minCount += number
        maxCount += number
    }
    print("\(minCount - maxNumber) \(maxCount - miniNumber)")
}
*/



/*
func timeConversion(s: String) -> String {
    // Write your code here
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "h:mm:ssa"
   //dateFormatter.locale = Locale(identifier: "en_US_POSIX") // fixes nil if device time in 24 hour format
    let date = dateFormatter.date(from: s)

    dateFormatter.dateFormat = "HH:mm:ss"
    let date24 = dateFormatter.string(from: date!)
    return date24
}
timeConversion(s:"6:35:00 PM")
timeConversion(s:"07:05:45PM")
*/



/*
func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let sortedArray = arr.sorted()
    let midIndex = arr.count / 2
    return sortedArray[midIndex]
}
findMedian(arr: [0,1,2,4,5,6,3])
*/


/*
func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    let sortedArray = a.sorted()
    var uniqueElement = 0
    var count = 0
    for i in stride(from: 0, to: sortedArray.count, by: 1) {
        for j in stride(from: 0, to: sortedArray.count , by: 1)
        {
            if sortedArray[i] == sortedArray[j]{
                count += 1
            }
        }
        if count == 1{
            uniqueElement = sortedArray[i]
        }
        count = 0
    }
    return uniqueElement
}

lonelyinteger(a: [ 1, 1, 2, 2, 3, 3, 4 ] )
*/


/*
func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var leftDiagonalSum = 0
    var rightDiagonalSum = 0
            
    
    // MARK :- SOLUTION ONE
    for i in stride(from: 0, to: arr.count, by: 1) {
        leftDiagonalSum += arr[i][i]
        rightDiagonalSum += arr[i][arr[i].count - 1 - i]
    }
    
    // MARK :- SOLUTION ONE
    
//    for row in 0..<arr.count{
//        for col in 0..<arr[row].count{
//            if row == col{
//                leftDiagonalSum += arr[row][col]
//                rightDiagonalSum += arr[row][arr[row].count - 1 - col]
//            }
//        }
//    }
    
    // MARK :- SOLUTION ONE
    
//    for i in 0..<arr.count {
//        leftDiagonalSum += arr[i][i]
//        rightDiagonalSum += arr[i][arr[i].count - 1 - i]
//    }
    return abs(leftDiagonalSum - rightDiagonalSum)
}

let array = [
                [1, 2, 3],
                [4, 5, 6],
                [8, 9, 8]
            ]
diagonalDifference(arr: array)
*/




/*
func countingSort(arr: [Int]) -> [Int] {
    // Write your code here
    var maxValue = arr.max() ?? 0
    if maxValue < 99{
        maxValue = maxValue + 1
    }
    var frequencyArray = [Int](repeating: 0, count: maxValue+1)
    

    for i in stride(from: 0, to: arr.count, by: 1){
        let arrElement = arr[i]
        frequencyArray[arrElement] += 1
    }
    return frequencyArray

}
var arr = [63, 54, 17, 78, 43, 70 ,32, 97, 16, 94, 74, 18, 60, 61, 35, 83, 13, 56, 75, 52, 70, 12, 24, 37, 17, 0, 16, 64, 34, 81, 82, 24, 69, 2, 30,
           61, 83, 37, 97, 16, 70, 53, 0, 61, 12, 17, 97, 67, 33, 30, 49, 70, 11, 40, 67, 94, 84, 60, 35, 58, 19, 81, 16, 14, 68, 46, 42, 81, 75, 87, 13, 84, 33, 34, 14, 96, 7 ,59, 17, 98, 79, 47 ,71 ,75 ,8 ,27 ,73, 66, 64, 12, 29, 35, 80, 78, 80, 6, 5 ,24 ,49, 82]
countingSort(arr: arr)
*/







/*  TOWER PROBLEM START

/*
 If there is one tower then Player 1 always wins by simply removing everything and leaveing just 1. But if there are two towers then second player can always just copy the first player and therfore second player wins. If there are three towers then first one wins by removing everything and leaving 1 and then just copying player two. The only time that player one is going to lose if there is one tower which is it of height 1.
 */
func towerBreakers(n: Int, m: Int) -> Int {
    if n % 2 != 0 && m > 1{
        return 1
    }else{
        return 2
    }
    if n % 2 == 0{
        return 2
    }
}
func towerBreakers(n: Int, m: Int) -> Int {
    // Write your code here
    var towerHeights = [Int](repeating: m, count: n)
    var towerOddNumbers = false
    if towerHeights.count % 2 != 0{
        towerOddNumbers = true
    }
    var playerOne = true
    var playerTwo = false
    var TowersHeightGreaterThanOne = true
    while TowersHeightGreaterThanOne{
        print("- - - - Player One turn")
        if playerOne{
            if towerOddNumbers{
                
                //
                
                for i in 0..<towerHeights.count{
                    if towerHeights[i]>1{
                        while towerHeights[i] != 1{
                            towerHeights[i] -= 1
                        }
                        playerOne = false
                        playerTwo = true
                        break
                    }
                    
                }
                
                //
                
            }else{
                for i in 0..<towerHeights.count{
                    if towerHeights[i]>1{
                        print("deducting for player one")
                        towerHeights[i] -= 1
                        playerOne = false
                        playerTwo = true
                        break
                    }
                }
            }
            
            if playerOne{
                TowersHeightGreaterThanOne = false
            }
        }
        print("- - - - Player Two turn")
        if playerTwo{
            for i in 0..<towerHeights.count{
                if towerHeights[i]>1{
                    print("deducting for player two")
                    towerHeights[i] -= 1
                    playerOne = true
                    playerTwo = false
                    break
                }
            }
            if playerTwo{
                TowersHeightGreaterThanOne = false
        }
    }
}
    if playerTwo{
        print("player One wins")
        return 1
    }
    print("player Two wins")
return 2
}
print(towerBreakers(n: 2, m: 2))
*/


 
 
 
 
 
 
 
 

/*
func palindromeIndex(s: String)->Int {
    let reversedString = String(s.reversed())
    if s == reversedString{
        return -1
    }
    let mySTring = Array(s)
    for i in 0..<mySTring.count{
        var title  = mySTring
            title.remove(at: i)
            if String(title) == String(title.reversed()){
                return i
            }
    }
    return -1
}

palindromeIndex(s: "kjowoemiduaaxasnqghxbxkiccikxbxhgqnsaxaaudimeowojk")
*/





/*
func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    let smallAlphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let UpperAlphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var myString = Array(s)
    for i in 0..<myString.count
    {
        let currentCh = String(myString[i])
        if smallAlphabets.contains(currentCh){
            let currentIndexAlphabet = smallAlphabets.firstIndex(of: currentCh)
            var newIndex = currentIndexAlphabet! + k
            while newIndex > 25{
                if newIndex > 25{
                    newIndex = newIndex - 26
                    if newIndex < 0{
                        newIndex = 25
                    }
                }
            }
            myString[i] = Character(smallAlphabets[newIndex])
        }
    }
    for i in 0..<myString.count
    {
        let currentCh = String(myString[i])
        if UpperAlphabets.contains(currentCh){
            let currentIndexAlphabet = UpperAlphabets.firstIndex(of: currentCh)
            var newIndex = currentIndexAlphabet! + k
            while newIndex > 25{
            if newIndex > 25{
                newIndex = newIndex - 26
                while newIndex < 0{
                    newIndex += 1
                }
            }
            }
            myString[i] = Character(UpperAlphabets[newIndex])
        }
    }
return String(myString)
}

print(caesarCipher(s: "1X7T4VrCs23k4vv08D6yQ3S19G4rVP188M9ahuxB6j1tMGZs1m10ey7eUj62WV2exLT4C83zl7Q80M", k: 27))

*/


//func superDigit(n: String, k: Int) -> Int {
//    // Write your code here
//    if n.count == 1{
//        return 1
//    }
//    var myString = ""
//    var sum = 0
//    var keepLooping = true
//    for _ in 0..<k{
//        myString += n
//    }
//    if let myNumber = NumberFormatter().number(from: myString) {
//        var myInt = myNumber.intValue
//        while keepLooping{
//            sum = 0
//            while myInt >= 1{
//                let mod = myInt % 10
//                if myInt < 9{
//                    sum += myInt
//
//                }else{
//                    sum += mod
//                }
//
//                myInt = Int(myInt / 10)
//            }
//            myInt = sum
//            if myInt < 10{
//                keepLooping = false
//            }
//        }
//      }
//    return sum
//}

//func superDigit(n: String, k: Int) -> Int {
//    // Write your code here
//    let myString = Array(n)
//    if n.count > 1{
//        var sum = 0
//        for ch in myString{
//            let stringValue = String(ch)
//            let myInt = Int(stringValue)
//            sum += myInt ?? 0
//        }
//        return superDigit(n: String(sum * k), k: 1);
//    }else{
//        return Int(n) ?? 0
//    }
//}
//print(superDigit(n: "116",k: 2))




/*
func gridChallenge(grid: [String]) -> String {
    // Write your code here
    var myGrid = grid
    var verticalArray: [[String]] = []
    for row in stride(from: 0, to: myGrid.count, by: 1){
        var myRow = Array(myGrid[row])
        myRow = myRow.sorted()
        myGrid[row] = String(myRow)
        let arrayOfLetters = myRow.map(String.init)
        verticalArray.append(arrayOfLetters)
    }
    var col = 0
    for _ in 0..<verticalArray.count - 1{
        for row in 0..<verticalArray.count {
          print("row \(row) col \(col)")
          print(verticalArray[row][col])
            if row + 1 < verticalArray.count{
                let arrayValue = verticalArray[row][col]
                let nextValue = verticalArray[row + 1][col]
                if Character(arrayValue).asciiValue! > Character(nextValue).asciiValue!{
                    return "NO"
                }
            }
            

        }
        col += 1
    }

    return "YES"
}

//print(gridChallenge(grid: grid))
//var grid = ["abc","hjk","mpq","rtv"]
 // a  b  c  x  c
 // a  d  e  y  z
//  e  f  g  a  d

//  00   01   02   03
//  10   11   12   13
//  20   21   22   23

// a  b  c
// h  j  k
// m  p  q
// r  t  v

var gir1 = [
"wzxzwxzyzzwzyyzwzzxzyxzyzzwwyzzyzjxyxzzzyyzyyyzzzxzzzzyjzyyyzzzxyzzzyzyzwyzyyzzzzzzxyzyyyyxzxxzyxwz",
"zzzzzzzzuxxzzzzzzzzzzzxwzzzzzzxxzzzzyyzxxzzzxzzxzzzzzzzzzxzzzzzzzzzwxwzzzzzzxwzzzyxzzzzzzzyzzzzxzxu",
"zzzzzzyzzzzzyyzzzzzzzzzyzzzzzyyzzzzzyyzzzzzzyzyzzyzyzzzzzyyzzzyyyyyzyzyzzzzzzzzyzzzzzzzyzzzzzzzyyzz",
"zyyyyyzzzzzyzzyyyzyyzzzyzzzzyzzzzzzyzzzzzzyyzzyzyzyzzzzzyzzzzzzyzzzzzzzzzzzzyzzzzzzzzzzzzyzzzzzzzyy",
"yzzzzyzyzyzyyzzzzzyzzyzzzzzzzzzzzyzzyzzzzzyzzyzzzzzzyzzyzyzzzzzzzyzzzzyzzzzzzzzzzzzzzzzzzzzyzzyzzzz",
"zzzzzzzzzyzzyzzyzzzzyzzyzzzzzzzyyzzzyzyzzzzzzzzyyzzyzzzzzyyzzzzzzzzzzyzzzzyzzzzzyzzzzzzyzzzzzzyzzzz",
"zzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzz",
"zzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzyzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzyzzzzzzzzzzzzz",
"zzzzzzzzyzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"]
print(gridChallenge(grid: gir1))

*/





/*
func minimumBribes(q: [Int]) -> Void {
    // Write your code here
    var bribes = 0
    let sortedQ = q.sorted()
    var tooChaotic = false
    for (index,value) in q.enumerated(){
        if value == sortedQ[index]{
            continue
        }
        let position = sortedQ.firstIndex(of: value)
        let variation = position! - index
                if variation > 2{
                                print("Too chaotic")
                                tooChaotic = true
                                break
                } else if variation > 0 && variation <= 2{
                                bribes += variation
                            }
    }
    if !tooChaotic{
        print(bribes)
    }
}

minimumBribes(q: [1 ,2 ,5 ,3 ,7 ,8 ,6 ,4])
*/


/*
func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    if candles.count == 1{
        return 1
    }
    let sortedHeights = candles.sorted()
    let tallestCandle = sortedHeights[sortedHeights.count - 1]
    var tallestCandlesCount = 0
    for value in candles{
        if value == tallestCandle{
            tallestCandlesCount += 1
        }
    }
    return tallestCandlesCount
}

print(birthdayCakeCandles(candles: [4,4,1,3]))
*/


/*
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
    var sharedBill = 0
    for (index,item) in bill.enumerated(){
        if index != k{
            sharedBill += item
        }
    }
    sharedBill /= 2
    if sharedBill == b{
        print("Bon Appetit")
    }else if b > sharedBill{
        print(b-sharedBill)
    }
}
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)
*/
