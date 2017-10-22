//1
var myArr = [1,2,3,4,5,6,7,8,9,10]
var sumArr = 0

for s in myArr {
	sumArr += s
}
print("Сумма массива = \(sumArr)")

var arr2 = [Int]()
var arr3 = [Int]()



var arr = Array (repeating: 10, count: 50 )
print(arr)



var arr1 = [Int]()
for i in 0..<50 {
	arr1.append(10)
}
print(arr1)


var arr2 = [Int]()
var i = 0

repeat {
	arr2.append(10)
	i += 1
} while i < 50
print(arr2)

//2
//Похоже, так и не поняла опционалы. Не понимаю, почему не добавляется нил..
//Если не создавать отдельные тюплы, а вставлять сразу в массив строку и число, то ругается на лишний элемент(
var myTupleArray: [(firstName: String, age: Int)?] = []
var tArr : Array<(firstName: String, age: Int)?> = []

//var tuple2 = ("Maxi", nil)
var tuple1 = ("Alice", 23)
var tuple2 = ("Maxi", 27)
var tuple3 = ("Alex", 25)
tArr.append(tuple1)
tArr.append(tuple2)
tArr.append(tuple3)
print(tArr)



var cnt = tArr.count
var sum = 0

var i = 0

for i in 0 ... cnt {
	sum += tArr[i]!.age
}

print("Average age = \(sum / cnt)")


//3
var dict = [String : Int]()

for t in tArr {
	dict[t!.firstName] = t!.age 
}

print(dict)

cnt = dict.count
sum = 0
for (index, value) in dict {
	sum += value
}

print ("Average age = \(sum / cnt)")


//4
var mySet: Set<Character> = []

var s = (0..<26).map({Character(UnicodeScalar("a".unicodeScalars.first!.value + $0)!)})
for i in 0..<26 {
	mySet.insert(s[i])
}
print(mySet.sorted())

print(Set((mySet.sorted()).reversed()))

mySet.removeFirst()

//приведенные в справочнике remiveLast, removeAtIndex почему-то не работают..

//5
var journal = ["Mary" : 4, "Alex":5, "Polly":2, "Max":3, "Stefan":4, "Elly":2]

print(journal)

journal.updateValue(4, forKey: "Polly")

print(journal)

for (index, value) in journal {
	if value == 5
	{
		journal[index] = nil
	}
}

print(journal)

journal["Kate"] = 4
journal["Mike"] = 3
print(journal)

var sum = 0
for (index, value) in journal {
	sum += value
}
print("Average academic performance = \(sum / journal.count)")




