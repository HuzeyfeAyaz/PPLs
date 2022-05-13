
module FamilyMember where
import Data.Time.Calendar
import Data.Time.Clock
import Data.Maybe

data FamilyMember = FamilyMember {
    firstName :: String,
    lastName :: String,
    gender :: String,
    birthDate :: Maybe Day,
    deathDate :: Maybe Day,
    father :: Maybe FamilyMember,
    mother :: Maybe FamilyMember,
    children :: [FamilyMember],
    tree :: Maybe String,
    spouse :: Maybe FamilyMember
} deriving (Show)


-- if firstname and lastnames are same, then they are same person
-- if the birth date is bigger the the person bigger
instance Eq FamilyMember where
    (==) (FamilyMember fname1 lname1 _ _ _ _ _ _ _ _) (FamilyMember fname2 lname2 _ _ _ _ _ _ _ _) = fname1 == fname2 && lname1 == lname2



addSpouse :: FamilyMember -> FamilyMember -> [FamilyMember]
addSpouse fm1 fm2 = [fm1{spouse = Just fm2}, fm2{spouse = Just fm1}]


--check if the person has a death date then its not alive
isAlive :: FamilyMember -> Bool
isAlive fm = isNothing $ deathDate fm

 

getAge :: FamilyMember -> Integer -- get the difference between the birth date and the current date in years
getAge fm = (diffDays (fromGregorian 2022 05 13) (fromJust $ birthDate fm)) `div` 365


--function that get the level of member in family member tree
-- getLevel :: FamilyMember -> [FamilyMember] -> Int -> Int
-- getLevel fm [] level = level 
-- getLevel Nothing _ _ = 0
-- getLevel fm fmList = map (\x -> if x == father fm then getLevel x fmList (level + 1) )

-- TODO: add relationships
-- getRelationship :: FamilyMember -> String
setTree :: FamilyMember -> String -> FamilyMember
setTree fm tree = fm{tree = Just tree}

fullName :: FamilyMember -> String
fullName fm = firstName fm ++ " " ++ lastName fm