//I HAVE BIG PROBLEMS WITH MY IRON
//виртуалка еле живая, xcode виснет, ничего не вышло(
//пыталась компилировать простые команды в онлайн компиляторе, а методы библиотечных классов они уже не видят(

//1.

var myIntVar1 = Int.max
let myDoubleVar1 = Double.greatestFiniteMagnitude
var myFloatVar1 = Float.greatestFiniteMagnitude

var myStrVar1 = "Maximum of "

let myStrVar2 = "Integer"

print("\(myStrVar1) \(myStrVar2) = \(myIntVar1)")

//myStrVar2 = "Double"

var myStrVar3 = "Double"


print("\(myStrVar1) \(myStrVar3) = \(myDoubleVar1)")

myStrVar3 = "Float"

print("\(myStrVar1) \(myStrVar3) = \(myFloatVar1)")

//min????

var patient = (name: "Nana", age: 12 , weight: 45.290, ill : false)

print("Name : \(patient.name); Is ill : \(patient.ill)");

let (name, age, ill) = ("Hannah", 12, true)

print("Name : \(name); age : \(age); Is ill : \(ill)");

//2

var varInt = 12
var varInt2 = 9
var varStr = "kokoko"
var varStr2 = "1111"
var varDbl = 11.2233
var varDbl2 = 44.5566
//print(varInt / varDbl) error
//print(varInt + varDbl) error
//print(varInt - varDbl) error
//print(varInt * varDbl) error
//print(varInt % varDbl)  error
//print(varDbl / varInt) error


print(varDbl2 / varDbl) 
print(varDbl2 + varDbl)
print(varDbl2 - varDbl)
print(varDbl2 * varDbl)
print(varDbl2 * varDbl)
//print(varDbl2 % varDbl) error
print(varInt % varInt2)

//print(varInt + varStr2) error


//print(varDbl2 + varStr)error

//3

var tuple1 :  (Int, Double, String)? = (1, 1.1, "one")

var tuple2 : (Int?, Double?,String?) = (2, 2.2, "two")



print(tuple1?.0)

print(tuple1?.1)

print(tuple1?.2)



print(tuple2.0)

print(tuple2.1)

print(tuple2.2)

//4

print(tuple1!.0 + tuple2.0!) 
print(tuple1!.0 & tuple2.0!)
print(tuple1!.0 - tuple2.0!)
print(tuple1!.0 * tuple2.0!)
print(tuple1!.0 / tuple2.0!)
print(tuple1!.0 % tuple2.0!)
print(tuple1!.0 | tuple2.0!)


//5
//использовать NSDate() для получения текущей даты и перевести его в тип Date. Вроде нашла такое
//создать объект типа Date с датой ДР и вычесть из него текущую дату. Перевести в секунды.
//не нашла понятного объяснения про методы класса NSDateFormatter. Может и через него вышло бы

//6
var str1 = "first string"
var str2 = "second string"
var strRes = str1 + " and " + str2
print(strRes)

strRes = ""

strRes += str1
strRes += " and "
strRes += str2
print(strRes)

print("\(str1) and \(str2)")

var char1 : Character = "!"
strRes.append(char1)
print(strRes)


//7
//что-то пошло не так

var hex = 0x0061
while hex <= 0x007A
{
    let ch : Character = "\u{\(hex)}"
    print(ch)
    hex += 1
}
