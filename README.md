# SwiftOr
Adds an Experimental "Or" type to Swift that can be one of two types using generics.

## Usage Example:

### `Or` can be initiallized like this
```
let zero = Or<String,Int>(0)
let one = Or<String,Int>(1)

let a = Or<String,Int>("a")
let b = Or<String,Int>("b")
```

### You can access the values of `Or` by casting to the optional version of the type
```
let zero1 = zero.value() as String?
print(zero1) // nil
let zero2 = zero.value() as Int?
print(zero2) // Optional(0)

let a1 = a.value() as String?
print(a1) // Optional("a")
let a2 = a.value() as Int?
print(a2) // nil
```

### You can also use compare two `Or` instances
```
print("""
zero == zero is \(zero == zero)
zero != zero is \(zero != zero)
zero != one is \(zero != one)
zero < one is \(zero < one)
one < zero is \(one < zero)
zero < a is \(zero < a)
a < b is \(a < b)
b < a is \(b < a)
a == a is \(a == a)
a != a is \(a != a)
a != b is \(a != b)
zero == a is \(zero == a)
zero != a is \(zero != a)
""")
```
Note: If the value inside of the `Or` instances are diffrent type the comparison always returns false.

## Use Case: 

One possible use case of this could be when interfacing with a dynamically language (e.g javascript) if a value can be one of two types.
