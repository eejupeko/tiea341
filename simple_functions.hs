-- |numberOfLines counts the number of lines on a given string. 
--
numberOfLines :: String -> Int
numberOfLines str = length(lines str)

-- Examples:
-- numberOfLines "" == 0
-- numberOfLines "a cat\na hat" == 2
-- numberOfLines "a line" == 1
-- numberOfLines "1\n2\n3\n4" == 4
-- numberOfLines " + a b " == 1

-- numberOfLines "a cat\na hat"
-- == {- Substitute numberOfLines "a cat\na hat" = length(lines "a cat\na hat") -}
-- length(lines "a cat\na hat")
-- == {- Calculate lines "a cat\na hat" = ["a cat", "a hat"] -}
-- length ["a cat", "a hat"]
-- == {- Calculate length ["a cat", "a hat"] = 2 -}
-- 2


-- |howManyMonthsToEarnMoney calculates the time it takes to save given amount of money
-- based on your income and expenses. First variable is the amount to be saved, second
-- variable is monthly income and third variable the monthly expenses. Negative result
-- means expenses exceed income.
howManyMonthsToEarnMoney :: Double -> Double -> Double -> Int
howManyMonthsToEarnMoney a b c = ceiling (a/(b-c))

-- Examples:
-- howManyMonthsToEarnMoney 1000 600 100 == 2
-- howManyMonthsToEarnMoney 1000 550 100 == 3
-- howManyMonthsToEarnMoney 100.50 40 10.3 == 4

-- howManyMonthsToEarnMoney 1000 599 100
-- == {- Substitute howManyMonthsToEarnMoney 1000 599 100 = ceiling (1000/(599-100))
-- ceiling (1000/(550-100))
-- == {- Calculate 550-100 = 450 -}
-- ceiling (1000/450)
-- == {- Calculate 1000/450 = 2.222... -}
-- ceiling 2.222...
-- == {- Calculate ceiling 2.222... = 3 -}
-- 3


-- |areaOfTriangle calculates the area of a triangle with given height and width.
-- Order of variables isn't important.
areaOfTriangle :: Double -> Double -> Double
areaOfTriangle a b = (a*b)/2

-- Examples:
-- areaOfTriangle 5 10 == 25
-- areaOfTriangle 2 45.23 == 45.23
-- areaOfTriangle 1 1 == 0.5

-- areaOfTriangle 5 10
-- == {- Substitute areaOfTriangle 5 10 = (5*10)/2
-- (5*10)/2
-- == {- Calculate 5*10 = 50 -}
-- 50/2
-- == {- Calculate 50/2 = 25 -}
-- 25



-- |areaOfRectangle calculates the area of a rectangle with given height and width.
-- Order of variables isn't important.
areaOfRectangle :: Double -> Double -> Double
areaOfRectangle a b = a*b

-- Examples:
-- areaOfRectangle 5 10 == 50
-- areaOfRectangle 2 45.5 == 91
-- areaOfRectangle 1 1.5 == 1.5

-- areaOfRectangle 5 10
-- == {- Substitute areaOfRectangle 5 10 = 5*10
-- 5*10
-- == {- Calculate 5*10 = 50 -}
-- 50


-- |areaOfCircle calculates the area of a circle with given radius
areaOfCircle :: Double -> Double
areaOfCircle r = pi*r**2

-- Examples (approximations):
-- areaOfCircle 10 == 314
-- areaOfCircle 1 == 3.14
-- areaOfCircle 5.25 == 86.59

-- areaOfCircle 10 
-- == {- Substitute areaOfCircle 10 = pi * 10 ** 2 -}
-- pi * 10 ** 2
-- == {- Calculate the exponential 10 ** 2 ==  100 -}
-- pi * 100
-- == {- Substitute pi == 3.14 -}
-- 3.14 * 100
-- == {- Calculate the multiplication 3.14 * 100 = 314 -}
-- 314


-- |extractDomain extracts the domain from an URL
extractDomain :: String -> String
extractDomain str = takeWhile (/='/') (drop 2 (dropWhile (/='/') str))

-- Examples:
-- extractDomain "http://hackage.haskell.org/package/base-4.7.0.1/docs/Prelude.html" == "hackage.haskell.org"
-- extractDomain "http://functional-programming.it.jyu.fi/chapters/Functions.md" == "functional-programming.it.jyu.fi"
-- extractDomain "https://korppi.jyu.fi/kotka/help/faq/https://korppi.jyu.fi/kotka/help/faq/" == "korppi.jyu.fi"

-- extractDomain "http://functional-programming.it.jyu.fi/chapters/Functions.md"
-- == {- Substitute tractDomain "http://functional-programming.it.jyu.fi/chapters/Functions.md" = takeWhile (/='/') (drop 2 (dropWhile (/='/') "http://functional-programming.it.jyu.fi/chapters/Functions.md")) -}
-- takeWhile (/='/') (drop 2 (dropWhile (/='/') "http://functional-programming.it.jyu.fi/chapters/Functions.md"))
-- == {- Calculate dropWhile (/='/') "http://functional-programming.it.jyu.fi/chapters/Functions.md" = "//functional-programming.it.jyu.fi/chapters/Functions.md" -}
-- takeWhile (/='/') (drop 2 "//functional-programming.it.jyu.fi/chapters/Functions.md")
-- == {- Calculate drop 2 "//functional-programming.it.jyu.fi/chapters/Functions.md" = "functional-programming.it.jyu.fi/chapters/Functions.md" -}
-- takeWhile (/='/') "functional-programming.it.jyu.fi/chapters/Functions.md"
-- == {- Calculate takeWhile (/='/') "functional-programming.it.jyu.fi/chapters/Functions.md" = "functional-programming.it.jyu.fi" -}
-- "functional-programming.it.jyu.fi"