/**
 * let 類型綁定
 */
@genType
module A = {
  %%private(let a = 3)
  let b = 4

  let f = x => x + a + b
}

A.f(5)->Console.log

