doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber' x = (if x >= 100 then x else doubleMe x) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

myName = "Eli"

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z  