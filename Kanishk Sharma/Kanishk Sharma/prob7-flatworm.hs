data NestedList a = Elem a | List [NestedList a]



-- flatworm (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

flatworm :: NestedList a -> [a]

flatworm (Elem x) = [x]

flatworm (List x) = concatMap flatworm x   --was having a bit problem..so took help from a guy and got suggested 'concatMap'





test case 1 = flatworm (Elem 5)
test case 2 = (List[Elem 1, List [Elem2, List[Elem 3, Elem 4], Elem 5]])
