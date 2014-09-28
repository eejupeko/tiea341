module Exercise where
import Prelude hiding (and, or, not)

and :: Bool -> Bool -> Bool
and a b = a == True && b == True

or :: Bool -> Bool -> Bool
or  a b = a == True || b == True

not :: Bool -> Bool 
not a = a == False

imply :: Bool -> Bool -> Bool
imply a b = a == False || b == True