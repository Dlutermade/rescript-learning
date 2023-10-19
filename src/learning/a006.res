// Object 物件 / Dict 字典

/**
 * 聲明可選 也可以不聲明
 */
type person = {"age": int, "name": string, "name2": string}

// 不是 person
let me = {
  "age": 10,
}

let age = me["age"]

// ----
type student = {@set "age": int, @set "name": string}

@module("myJSFile") external student1: student = "student1"
student1["age"] = 10

type point2d = {"x": float, "y": float}
type point3d = {...point2d, "z": float}

let myPoint: point3d = {
  "x": 1.0,
  "y": 2.0,
  "z": 3.0,
}

// ----

@val external document: 'a = "document"

// call a method
document["addEventListener"]("mouseup", _event => {
  Js.log("clicked!")
})

// get a property
let loc = document["location"]

// set a property
document["location"]["href"] = "rescript-lang.org"
