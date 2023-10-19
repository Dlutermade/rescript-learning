// Record
type person = {
  age: int,
  name: string,
}

// 因為有辦法 found 所以不會出錯, 爾且可以自動判斷
let me = {
  age: 5,
  name: "hoge",
}

let name = me.name

// no mutable update -> new record
let meNextYear = {
  ...me,
  age: me.age + 1,
}

type canMutable = {
  name: string,
  mutable age: int,
  sex: string,
}

let baby = {
  name: "test",
  age: 5,
  sex: "test",
}

// mutable update
baby.age = baby.age + 1

// -----
// optional field

type user = {
  name: string,
  haveCar?: bool,
}

let userOne = {
  name: "test",
  haveCar: true,
}

let userTwo = {
  name: "test",
}

let userThreeFromUserTwo = {
  ...userTwo,
  haveCar: ?Some(false), // ? -> 解構 option
}

// optional field switch
let message = switch userThreeFromUserTwo.haveCar {
| Some(true) => "有車"
| Some(false) => "沒車"
| None => "不知道"
}

let message2 = switch userThreeFromUserTwo {
| {haveCar: true} => "有車"
| {name: ""} => "名字不能確定"
| _ => "不知道"
}
