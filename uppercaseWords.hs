module Exercise where
import Data.Char


wordUpperFirst :: String -> String
wordUpperFirst str = case str of
    (x:xs) -> (toUpper x) : xs
    "" -> ""
    
yhdistaSanat :: [String] -> String
yhdistaSanat sanat = case sanat of
    [] -> ""
    (x:xs) -> x ++ " " ++ yhdistaSanat xs
 

upperFirst :: String -> String   
upperFirst str = 
    let sanat = map wordUpperFirst (words str)
    in yhdistaSanat sanat