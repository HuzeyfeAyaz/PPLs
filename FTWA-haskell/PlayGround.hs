import Data.List
import Data.Maybe
import Data.Time.Calendar
import Data.Time.Clock
import Data.Time
import Control.Exception
import Relations
import FamilyMember 
import FamilyTree


ozgurTree = FamilyTree{
    treeName = "Ozgur's Family Tree",
    treeRoot = Nothing,
    treeMembers = [
    FamilyMember {
        firstName = "Ahmet",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 1956 11 20,
        deathDate  = Nothing,
        father  =Nothing,
        mother =Nothing,
        children =["Selin Ozgur", "Ali Ozgur", "Omer Ozgur"],
        tree =Nothing,
        spouse = Just "Hilal Demirtas Ozgur"
    },
    FamilyMember {
        firstName = "Hilal",
        lastName = "Demirtas Ozgur",
        gender = "female",
        birthDate = Just $ fromGregorian 1957 5 20,
        deathDate  = Nothing,
        father  =Nothing,
        mother =Nothing,
        children =["Selin Ozgur", "Ali Ozgur", "Omer Ozgur"],
        tree =Nothing,
        spouse =Just "Ahmet Ozgur"
    },
    FamilyMember {
        firstName = "Selin",
        lastName = "Ozgur",
        gender = "female",
        birthDate = Just $ fromGregorian 1979 1 20,
        deathDate  = Nothing,
        father  = Just "Ahmet Ozgur",
        mother = Just "Hilal Demirtas Ozgur",
        children =["Yunus Isci", "Leyla Isci", "Zeynep Isci"],
        tree =Nothing,
        spouse = Just "Mehmet Isci"
    },
    FamilyMember {
        firstName = "Ali",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 1977 8 15,
        deathDate  = Nothing,
        father  =Just "Ahmet Ozgur",
        mother = Just "Hilal Demirtas Ozgur",
        children =["Bilal Ozgur", "Suleiman Ozgur", "Burcu Ozgur"],
        tree =Nothing,
        spouse = Just "Ayse Yalcintas Ozgur"
    },
    FamilyMember {
        firstName = "Omer",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 1981 4 15,
        deathDate  = Nothing,
        father  = Just "Ahmet Ozgur",
        mother = Just "Hilal Demirtas Ozgur",
        children =[],
        tree =Nothing,
        spouse =Nothing
    },
    FamilyMember {
        firstName = "Mehmet",
        lastName = "Isci",
        gender = "male",
        birthDate = Just $ fromGregorian 1975 11 9,
        deathDate  = Nothing,
        father  =Nothing,
        mother =Nothing,
        children =["Yunus Isci", "Leyla Isci", "Zeynep Isci"],
        tree =Nothing,
        spouse = Just "Selin Ozgur" 
    },
    FamilyMember {
        firstName = "Ayse",
        lastName = "Yalcintas Ozgur",
        gender = "female",
        birthDate = Just $ fromGregorian 1979 2 3,
        deathDate  = Nothing,
        father  = Nothing,
        mother = Nothing,
        children =["Bilal Ozgur", "Suleiman Ozgur", "Burcu Ozgur"],
        tree =Nothing,
        spouse = Just "Ali Ozgur"
    },
    FamilyMember{
        firstName = "Yunus",
        lastName = "Isci",
        gender = "male",
        birthDate = Just $ fromGregorian 1999 8 20,
        deathDate  = Nothing,
        father  =Just "Mehmet Isci",
        mother =Just "Selin Ozgur",
        children =[],
        tree =Nothing,
        spouse =Nothing
    },
    FamilyMember{
        firstName = "Leyla",
        lastName = "Isci",
        gender = "female",
        birthDate = Just $ fromGregorian 2005 4 2,
        deathDate  = Nothing,
        father  =Just "Mehmet Isci",
        mother =Just "Selin Ozgur",
        children =["Batuhan Ozgur"],
        tree =Nothing,
        spouse =Just "Suleiman Ozgur"
    },
    FamilyMember{
        firstName = "Zeynep",
        lastName = "Isci",
        gender = "female",
        birthDate = Just $ fromGregorian 1996 9 9,
        deathDate  = Nothing,
        father  =Just "Mehmet Isci",
        mother =Just "Selin Ozgur",
        children =["Arif Ozgur"],
        tree =Nothing,
        spouse =Just "Bilal Ozgur"
    },
    FamilyMember{
        firstName = "Bilal",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 1998 8 10,
        deathDate  = Nothing,
        father  =Just "Ali Ozgur",
        mother =Just "Ayse Yalcintas Ozgur",
        children =["Arif Ozgur"],
        tree =Nothing,
        spouse =Just "Zeynep Isci"
    },
    FamilyMember{
        firstName = "Suleiman",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 1999 8 20,
        deathDate  = Nothing,
        father  =Just "Ali Ozgur",
        mother =Just "Ayse Yalcintas Ozgur",
        children =["Batuhan Ozgur"],
        tree =Nothing,
        spouse =Just "Leyla Isci"
    },
    FamilyMember{
        firstName = "Burcu",
        lastName = "Ozgur",
        gender = "female",
        birthDate = Just $ fromGregorian 2001 7 9,
        deathDate  = Nothing,
        father  =Just "Ali Ozgur",
        mother =Just "Ayse Yalcintas Ozgur",
        children =[],
        tree =Nothing,
        spouse =Nothing
    },
    FamilyMember{
        firstName = "Batuhan",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 2019 5 5,
        deathDate  = Nothing,
        father  = Just "Suleiman Ozgur",
        mother = Just "Leyla Isci",
        children =[],
        tree =Nothing,
        spouse =Nothing
    },
    FamilyMember{
        firstName = "Arif",
        lastName = "Ozgur",
        gender = "male",
        birthDate = Just $ fromGregorian 2022 5 11,
        deathDate  = Nothing,
        father  = Just "Bilal Ozgur",
        mother = Just "Zeynep Isci",
        children =[],
        tree =Nothing,
        spouse =Nothing
    }
    ]
}


-- allRelations = [is_father, is_mother, is_son, is_daughter, is_little_brother, is_big_brother, is_little_sister, is_big_sister, 
--                 is_amca, is_hala, is_dayi, is_teyze, is_yegen, is_cousin, is_eniste, is_yenge, is_mother_law, is_father_law, 
--                 is_son_law, is_daughter_law, is_bacanak, is_elti, is_baldiz, is_kayinbirader]


findRelation :: String -> String -> [FamilyMember]-> IO ()
findRelation name1 self ft = do
    

    putStrLn $ "The relation of " ++ name1 ++ " to " ++ self ++ " is "
    if (is_father self name1 ft) then putStrLn "Baba" else putStr ""
    if (is_mother self name1 ft) then putStrLn "Anne" else putStr ""
    if (is_son self name1 ft) then putStrLn "Ogul" else putStr ""
    if (is_daughter self name1 ft) then putStrLn "Kız" else putStr ""
    if (is_little_brother self name1 ft) then putStrLn "Erkek kardes" else putStr ""
    if (is_big_brother self name1 ft) then putStrLn "Abi" else putStr ""
    if (is_little_sister self name1 ft) then putStrLn "Kız kardes" else putStr ""
    if (is_big_sister self name1 ft) then putStrLn "Abla" else putStr ""
    if (is_amca self name1 ft) then putStrLn "Amca" else putStr ""
    if (is_hala self name1 ft) then putStrLn "Hala" else putStr ""
    if (is_dayi self name1 ft) then putStrLn "Dayi" else putStr ""
    if (is_teyze self name1 ft) then putStrLn "Teyze" else putStr ""
    if (is_yegen self name1 ft) then putStrLn "Yegen" else putStr ""
    if (is_cousin self name1 ft) then putStrLn "Kuzen" else putStr ""
    if (is_eniste self name1 ft) then putStrLn "Eniste" else putStr ""
    if (is_yenge self name1 ft) then putStrLn "Yenge" else putStr ""
    if (is_mother_law self name1 ft) then putStrLn "Kayinvalide" else putStr ""
    if (is_father_law self name1 ft) then putStrLn "Kayinpeder" else putStr ""
    if (is_son_law self name1 ft) then putStrLn "Damat" else putStr ""
    if (is_daughter_law self name1 ft) then putStrLn "Gelin" else putStr ""
    if (is_bacanak self name1 ft) then putStrLn "Bacanak" else putStr ""
    if (is_elti self name1 ft) then putStrLn "Elti" else putStr ""
    if (is_baldiz self name1 ft) then putStrLn "Baldiz" else putStr ""
    if (is_kayinbirader self name1 ft) then putStrLn "Kayinbirader" else putStr ""
    putStrLn "----------------------"

askForRelations :: FamilyTree -> IO ()
askForRelations tree = do
    putStrLn "Enter the name & surname of the person you want to get the relationship of:"
    member1 <- getLine
    putStrLn "Enter the name & surname of the person you want to get the relationship with:"
    member2 <- getLine
    findRelation member1 member2 (treeMembers tree)
    askForRelations tree

main::IO()
main = do
    putStrLn "Welcome to the Family Tree Warehouse!"
    askForRelations ozgurTree



    -- result <- try (is_son_law "Selin Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree)) :: IO (Either SomeException Bool)
    -- case result of 
    --     Left ex -> print ""
    --     Right x -> putStrLn $ "The relation is: " ++ (show x)



    -- putStrLn $ show $ is_father "Ahmet Ozgur" "Ali Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_son_law "Selin Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree)

    -- putStrLn $ show $ is_dayi (Just "Zeynep Isci") (Just "Ali Ozgur") (treeMembers ozgurTree)
    


    -- print members in the tree
    -- putStrLn "The members of the tree are:"
    -- mapM_ print $ treeMembers ozgurTree
    -- display the children of member with name Ahmet Ozgur
    -- putStrLn "The children of member with name Ahmet Ozgur are:"
    -- putStrLn $ show $ children $ fromJust $ getMember "Ahmet Ozgur" ozgurTree
    -- putStrLn $ show $ is_kayinbirader "Suleiman Ozgur" "Yunus Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_father "Selin Ozgur" "Ahmet Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_father "Ali Ozgur" "Selin Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_mother "Selin Ozgur" "Ahmet Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_mother "Selin Ozgur" "Hilal Demirtas Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_siblings "Yunus Isci" "Leyla Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_son "Batuhan Ozgur" "Leyla Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_daughter "Selin Ozgur" "Hilal Demirtas Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_younger "Ahmet Ozgur" "Selin Ozgur"(treeMembers ozgurTree)
    -- putStrLn $ show $ is_sister "Burcu Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree)
    
    -- putStrLn $ show $ is_younger "Suleiman Ozgur" "Bilal Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_little_brother "Suleiman Ozgur" "Bilal Ozgur" (treeMembers ozgurTree) 
    -- putStrLn $ show $ is_big_brother "Bilal Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree) 

    -- putStrLn $ show $ is_sister "Leyla Isci" "Zeynep Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_little_sister "Leyla Isci" "Zeynep Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_big_sister "Zeynep Isci" "Leyla Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_siblings "Omer Ozgur" "Ali Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_amca "Bilal Ozgur" "Omer Ozgur"(treeMembers ozgurTree)
    
    -- putStrLn $ show $ is_siblings "Selin Ozgur" "Ali Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_hala "Selin Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_teyze "Zeynep Isci" "Batuhan Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_yegen "Burcu Ozgur" "Omer Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_cousin "Arif Ozgur" "Batuhan Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_eniste "Omer Ozgur" "Mehmet Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_yenge "Selin Ozgur" "Ayse Yalcintas Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_mother_law "Ayse Yalcintas Ozgur" "Hilal Demirtas Ozgur" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_father_law "Zeynep Isci" "Ali Ozgur" (treeMembers ozgurTree)



    -- putStrLn $ show $ is_father_law "Ali Ozgur" "Selin Ozgur" (treeMembers ozgurTree)

    -- TODO
    -- putStrLn $ show $ is_dayi "Ali Ozgur" "Zeynep Isci" (treeMembers ozgurTree)
    -- putStrLn $ show $ is_son_law "Selin Ozgur" "Suleiman Ozgur" (treeMembers ozgurTree)
