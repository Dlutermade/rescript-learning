Console.log("Hello World")

@react.component
let make = () => <p className="text-lg"> {"Hello World!"->React.string} </p>

let element = <h1> {"Helloa World!"->React.string} </h1>

let wrapChildren = (children: React.element) => {
  <div>
    <h1> {"Overview"->React.string} </h1>
    {children}
  </div>
}

let a = wrapChildren(<div> {"Hello World!"->React.string} </div>)

let greeting = "Hello "->React.string
let name = "Stranger"->React.string

let element =
  <div>
    greeting
    name
  </div>

let element =
  ["element 1"->React.string, "element 2"->React.string, "element 3"->React.string]->React.array

// 通常 js
type renderProps = {"name": string}

let render = (myComp: renderProps => React.element) => {
  <div> {React.createElement(myComp, {"name": "World"})} </div>
}

type renderProps2 = {"title": string, "children": React.element}
let render2 = (article: renderProps2 => React.element) => {
  let children = ["Introduction"->React.string, "Body"->React.string]
  let props = {"title": "Article #1", "children": React.null}

  {React.createElementVariadic(article, props, children)}
}

// pure reScript
let render = (renderMyComp: (~name: string, ~age: int) => React.element) => {
  <div> {renderMyComp(~name="World", ~age=10)} </div>
}

let test = React.cloneElement(<div />, {"className": "container"})
