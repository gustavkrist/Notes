## Expression trees

```fsharp
type term =
    | Const of int
    | Add of term * term
    | Sub of term * term
    | Mul of term * term
    | Div of term * term

Add
    (Div (Mul (Const 2, Const 3),
          Sub (Const 2, Const 1)),
    Mul (Const 5,
         Sub (Const 4, Const 1)))
```