let ageAndMame = (24, "Lil' ReScript")
let my3dCoordinates = (10.0, 30.5, 100.0)

// using
let (_, y, _) = my3dCoordinates

// update -> mew tuple
let coordunates1 = (10, 20, 30)
let (c1x, _, _) = coordunates1
let coordunates2 = (c1x + 50, 20, 30)

// 場景
let getCenterVoordinates = () => {
  let x = 10
  let y = 20
  let z = 30
  (x, y, z)
}
