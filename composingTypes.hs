-- Element of a data store that contains information about business representatives 
-- of an ice cream company. The company is mainly interested in whom to send the 
-- paycheck and how much money should be paid. The pay is calculated according to 
-- the number of ice cream cones sold.

iceCreamSeller :: (String, Int)
iceCreamSeller ("Eetu",100)
iceCreamSeller ("Ville", 20)



-- System for monitoring ice-cream booths. Booths can be either open, which is when 
-- they contain ice cream and a business representative selling the said ice cream, 
-- or closed, when there is neither a business representative nor ice cream in them 
-- (Ie. make a type that reflects the fact that closed booth cannot have a representative 
-- nor ice cream). The stocks of ice cream must also be replenished when some brand is 
-- about to run out.

data iceCreamBooth Closed | Open Double Double

-- A company wide phonebook.