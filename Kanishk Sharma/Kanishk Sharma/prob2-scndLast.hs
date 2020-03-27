scndLast :: [a] -> a
scndLast list = last (take ((length list) - 1) list)    --wasnt working at first,fixed it
--scndLast [x] = error"Really gnna try this? lol.."	--not able to work this error into the program....
--scndLast list = last (init last)      				--This wrks too


test case 1 = scndLast [1,2,3,4]
test case 2 = scndLast ['a'..'z']
