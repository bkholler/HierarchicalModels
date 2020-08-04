restart;
load "HierarchicalModels.m2";
debug HierarchicalModels;

viewHelp HierarchicalModels

Delta = {{0,1}, {1,2}};
r = {2,2,3};

R = probRing(r);
gens R

I = hierToric42(r, Delta, pRing => R)

Delta1 = {{0,1}, {0,2}, {1,2}};
r1 = {2,2,2};

Delta2 = {{1,2,3}};
r2 = {2,2,2};

Delta = {{0,1}, {0,2}, {1,2,3}};
r = {2,2,2,2};

R1 = probRing(r1)
R = probRing(r)

I1 = hierToric42(r1, Delta1, pRing => R1);
I = hierToric42(r, Delta, pRing => R);

f = (first entries gens I1)_0

fLift = liftHierPoly(f, {{2}, {1,2}}, R, true)

isSubset(ideal(fLift), I)
