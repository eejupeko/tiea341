import Data.Char
import Data.List
import Data.List.Split (splitOn)

-- |shout  converts a string into upper case and adds an exclamation mark 
-- at the end.
shout :: String -> String
shout str = case str of 
	"" -> ""
	_ -> map toUpper (str ++ "!")

-- Examples:
-- shout "I am Groot" == "I AM GROOT!"
-- shout "a cat" == "A CAT!"
-- shout "This is an example" == "THIS IS AN EXAMPLE!"
-- shout "" = ""



-- |shoutWords converts a string into upper case and adds an exclamation 
-- mark at the end of each word.
shoutWords :: String -> String
shoutWords "" = "!"
shoutWords str = case words str of
	[x] -> (map toUpper x) ++ "!"
	x : xs -> (map toUpper x) ++ "! " ++ shoutWords (intercalate " " xs)
	[] -> "!"
	 
-- Examples:
-- shoutWords "I am Groot" == "I! AM! GROOT!"
-- shoutWords "a cat" == "A! CAT!"
-- shoutWords "" == ""
-- shoutWords "This is an example" == "THIS! IS! AN! EXAMPLE!"




-- |shoutLines converts a string into upper case and adds an 
-- exclamation mark at the end of each line.
shoutLines :: String -> String
shoutLines str = case splitOn "\n" str of
	[x] -> (map toUpper x) ++ "!"
	x:xs -> (map toUpper x) ++ "!\n" ++ shoutLines (intercalate "\n" xs)
	[] -> "!"

-- Examples:
-- shoutLines "I am Groot" == "I! AM! GROOT!"
-- shoutLines "a cat\na hat" == "A CAT!\nA HAT!"
-- shoutLines "first line\nsecond line\nthird line" == "FIRST LINE!\nSECOND LINE!\nTHIRD LINE!"