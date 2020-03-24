-- | Problem7.hs

data NestedList a = Elem a | Humpty [NestedList a]

t0 = Humpty [Elem 1, Humpty [Elem 2, Humpty [Elem 3, Elem 4], Elem 5]]
t1 = Elem 5
t2 = Humpty []
t4 = Humpty [Elem 'a', Humpty [Elem 'b', Humpty [Elem 'c', Elem 'd'], Elem 'd']]

myflatten :: NestedList a -> [a]
myflatten (Elem a) = [a]
myflatten (Humpty []) = []
myflatten (Humpty (x:xs)) = myflatten x ++ myflatten (Humpty xs)
