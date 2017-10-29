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



//6
enum chessFigures{
	case king(color: String, cell: String)
	case queen(color: String, cell: String)
	case rook(color: String, cell: String)
	case bishop(color: String, cell: String)
	case knight(color: String, cell: String)
	case pown(color: String, cell: String)
}


var chessDesk = [String : chessFigures?]()
let deskLabels = ["A", "B", "C", "D", "E", "F", "G", "H"]

for i in 1..<9{
	for j in 1..<9{
		var label:String = deskLabels[j-1] + String(i)
		switch (deskLabels[j-1], i ){
			case (let char, 1) where char == "A" || char == "H":
				chessDesk[label] = chessFigures.rook(color:"W", cell: label)
			case (let char, 1) where char == "B" || char == "G":
				chessDesk[label] = chessFigures.knight(color:"W", cell: label)
			case (let char, 1) where char == "C" || char == "F": 
				chessDesk[label] = chessFigures.bishop(color:"W", cell: label)
			case (let char, 1) where char == "D":
				chessDesk[label] = chessFigures.queen(color:"W", cell: label)
			case (let char, 1) where char == "E":
				chessDesk[label] = chessFigures.king(color:"W", cell: label)
			case (_, 2):
				chessDesk[label] = chessFigures.pown(color:"W", cell: label)
			case (_, 7):
				chessDesk[label] = chessFigures.pown(color:"B", cell: label)
			case (let char, 8) where char == "A" || char == "H":
				chessDesk[label] = chessFigures.rook(color:"B", cell: label)
			case (let char, 8) where char == "B" || char == "G":
				chessDesk[label] = chessFigures.knight(color:"B", cell: label)
			case (let char, 8) where char == "C" || char == "F":
				chessDesk[label] = chessFigures.bishop(color:"B", cell: label)
			case (let char, 8) where char == "D":
				chessDesk[label] = chessFigures.queen(color:"B", cell: label)
			case (let char, 8) where char == "E":
				chessDesk[label] = chessFigures.king(color:"E", cell: label)
			default : chessDesk[label] = nil		
		} 
	}
}

//7

//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"


class StudentClass {
	var Name: String
	var LastName: String
	var number: Int
	var averageScore: Double
	var fullName: String{
			switch ((Name[Name.index(Name.startIndex, offsetBy: 0)]), 
			(LastName[LastName.index(LastName.startIndex, offsetBy: 0)])){
				case ("A"..."Z", "A"..."Z") :
					return "\(LastName) \(Name)"
				default: return ""
			}
	}
	
	init(name: String, lastName: String, number: Int, averageScore: Double) {
    	self.Name = name
    	self.LastName = lastName
		self.number = number
		self.averageScore = averageScore
	}
}
	

struct StudentStruct {
	var Name: String
	var LastName: String
	var number: Int
	var averageScore: Double
}

func printStudents(students :[StudentClass]) -> () {
	for student in students{
		print("Student:\(student.number) has average score: \(student.averageScore)")
	}
}
var studentsArr = [StudentClass]()

studentsArr.append(StudentClass(name: "Maxi", lastName: "Bauer", number: 1, averageScore: 4.1))
studentsArr.append(StudentClass(name: "Mary", lastName: "unterweger", number: 2, averageScore: 4.6))

printStudents(students: studentsArr)

print(studentsArr[0].Name.characters.first?.description ?? "")
print((studentsArr[0].Name[studentsArr[0].Name.index(studentsArr[0].Name.startIndex, offsetBy: 0)]))
