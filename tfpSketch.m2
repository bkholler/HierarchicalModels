-- Facets1 simplicial complex on [n]. 
-- Facets2 simplicial complex on [n + k]\[n] -- Facets1 simplicial complex on [n]. 
-- Facets2 simplicial complex on [n + k]\[n] \cup S
-- need to check S \subset [n] is a face in each complex 
--glueSimpComp(Facets1, Facets2, S)

S = {1,2}

tabs = binomialToTableau(f)
g = tableauToBinomial(tabs, R)