// 自動推導預期
let score = 10
let add = (a, b) => a + b

// 標記 type
let score: int = 10

let myInt = 5
let myInt: int = 5
let myInt = (5: int) + (4: int)
let add = (x: int, y: int): int => x + y
let drawCircle = (~radius as r: int) => r * r

// 泛型
type coordinates<'a> = ('a, 'a, 'a)

let a: coordinates<int> = (10, 20, 30)

let buddy = (10, 20, 30)
let greetings = ["hello", "world"]

// 泛型 進階
type result<'a, 'b> =
  | Ok('a)
  | Error('b)

type myPayload = {data: string}
type myPayloadResults<'errorType> = array<result<myPayload, 'errorType>>
let payloadResults: myPayloadResults<string> = [Ok({data: "123"}), Error("456")]

// Recursive type
type rec person = {
  name: string,
  friends: array<person>,
}

// 互遞迴 type 透過 and 關鍵字
type rec student = {taughtBy: teacher}
and teacher = {students: array<student>}

// type Escape Hatch 逃生通道
external convertToFloat: int => float = "%identity"
let age = 10
let gpa = 2.1 +. convertToFloat(age)
