//1
var journal : [String : Int]

journal = ["Mary" : 4, "Alex":5, "Polly":2, "Max":3, "Stefan":4, "Elly":2]

print(journal)

func updateJournal ( updJournal:inout [String : Int], student: String, rating: Int){
	journal[student] = rating
}


updateJournal(updJournal: &journal, student: "Max", rating: 4 )
print(journal)

func deleteStudentFrom(journal:inout [String : Int], student: String){
	journal[student] = nil
}

deleteStudentFrom(journal: &journal, student: "Max")
print(journal)

func addStudent(to journal:inout [String : Int], student: String, rating: Int){
	journal[student] = rating
}

addStudent(to: &journal, student: "Maxi", rating: 5)
print(journal)



//2
var chessDesk = [String : String]()
let deskLabels = ["A", "B", "C", "D", "E"]

for i in 1..<6{
	for j in 1..<6{
		var label = deskLabels[i-1] + String(j)
		chessDesk[label] = ( (i%2 != 0 && j%2 == 0) || (i%2 == 0 && j%2 != 0) ) ? "W" : "B"
	}
}

func printColorOf(cell: String, from chessDesk: [String : String]){
	print(chessDesk[cell] == "B" ? "Black" : "White" )
}

printColorOf(cell: "C5", from: chessDesk)

//print("\(chessDesk["A5"]!) \(chessDesk["B5"]!) \(chessDesk["C5"]!) \(chessDesk["D5"]!) \(chessDesk["E5"]!)")
//print("\(chessDesk["A4"]!) \(chessDesk["B4"]!) \(chessDesk["C4"]!) \(chessDesk["D4"]!) \(chessDesk["E4"]!)")
//print("\(chessDesk["A3"]!) \(chessDesk["B3"]!) \(chessDesk["C3"]!) \(chessDesk["D3"]!) \(chessDesk["E3"]!)")
//print("\(chessDesk["A2"]!) \(chessDesk["B2"]!) \(chessDesk["C2"]!) \(chessDesk["D2"]!) \(chessDesk["E2"]!)")
//print("\(chessDesk["A1"]!) \(chessDesk["B1"]!) \(chessDesk["C1"]!) \(chessDesk["D1"]!) \(chessDesk["E1"]!)")


//3
var myNumbers = [1,2,3,4,5,6,7,8,9,0]
print(myNumbers)

func reverseArray(array: inout [Int]){
	array.reverse()
}

reverseArray(array: &myNumbers)
print(myNumbers)


//4
let closureFunc : ([Int]) -> ([Int]) = {inArr -> ([Int]) in
	var outArr = [Int]()
	for i in 0..<inArr.count {
		if (inArr[i] % 2 == 0 && inArr[i] % 3 == 0 && i % 2 != 0 && inArr[i] > 5){
			outArr.append(inArr[i])			
		}
	}
	return outArr
}


func filter(inArr : [Int], closure: ([Int]) -> ([Int])) -> ([Int]){
	return closure(inArr)
}

var nonFilteredArr = [1, 6, 2, 7, 8, 12, 18]
var filteredArr = filter(inArr: nonFilteredArr, closure: closureFunc)

print(filteredArr)


//5