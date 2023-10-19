Console.log("Hello World")

@react.component
let make = () => <p className="text-lg"> {React.string("Hello World!")} </p>

let element = <h1> {React.string("Helloa World!")} </h1>

let wrapChildren = (children: React.element) => {
  <div>
    <h1> {React.string("Overview")} </h1>
    {children}
  </div>
}

let a = wrapChildren(<div> {React.string("Hello World!")} </div>)

let greeting = React.string("Hello ")
let name = React.string("Stranger")

let element =
  <div>
    greeting
    name
  </div>

let element = React.array([
  React.string("element 1"),
  React.string("element 2"),
  React.string("element 3"),
])

// 通常 js
type renderProps = {"name": string}

let render = (myComp: renderProps => React.element) => {
  <div> {React.createElement(myComp, {"name": "World"})} </div>
}

type renderProps2 = {"title": string, "children": React.element}
let render2 = (article: renderProps2 => React.element) => {
  let children = [React.string("Introduction"), React.string("Body")]
  let props = {"title": "Article #1", "children": React.null}

  {React.createElementVariadic(article, props, children)}
}

// pure reScript
let render = (renderMyComp: (~name: string, ~age: int) => React.element) => {
  <div> {renderMyComp(~name="World", ~age=10)} </div>
}


let test = React.cloneElement( <div/> , {"className": "container"})