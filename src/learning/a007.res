// 變體

// 首字大寫
type myResponse = Yes | No | PrettyMuch

let response1 = Yes

// 構造器參數
type account =
  | None
  | Instagram(string)
  | Facebook(string, int)

let myAccount = Facebook("hello", 123)

// payload ( 內聯 Record )
type user = Number(int) | Id({name: string, password: string})

let me = Id({name: "me", password: "123"})

// 這是 tuple 不是 two arg
type twoTuple = Test((int, int))

// 盡量給予 constructor argument 對於操作也比較彈性

/**
 * 盡量不要 使用 不明確 type
 */
@module("myLibrary")
external draw: 'a => unit = "draw"
// 而是使用如下明確版本
@module("myLibrary") external drawFloat: float => unit = "draw"
@module("myLibrary") external drawString: string => unit = "draw"

type animal =
  | MyFloat(float)
  | MyString(string)

let betterDraw = animal =>
  switch animal {
  | MyFloat(f) => drawFloat(f)
  | MyString(s) => drawString(s)
  }
