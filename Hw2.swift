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


print(Set(mySet.reversed()))






