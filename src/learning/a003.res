let greeting = "Hello world!"
let multilineGreeting = "Hello
world!
"

let greetings = "Hello  " ++ "world!"

let name = "Joe"

// 顯示 插入字串
let greeting = `Hello
World
👋
${name}
`

let age = 10
// 隱式 插入字串 因為` ` 只能插入字串type
let message = j`Today I am $age years old`

let firstLetterOfAlphabet = 'a'
let out = String.get("a", 0) // "a"[0]
// 3.5 => "3.5"
let out2 = String.make(3.5)

// regex
let r = %re("/b/g")

// 深層比較
([1, 2] == [1, 2])->Console.log
// 淺層比較
([1, 2] === [1, 2])->Console.log

// 深層比較
([1, 2] != [1, 2])->Console.log
// 淺層比較
([1, 2] !== [1, 2])->Console.log
