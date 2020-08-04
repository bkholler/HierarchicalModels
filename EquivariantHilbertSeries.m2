This  function \texttt{equivH(c)} computes the rational form of the equivariant Hilbert series for the generalized independence models with fixed number of states $c$.The function takes as input the vector $\mathtt{c}$. Its  output is the rational form of the equivariant Hilbert series for the filtration of ideals arising from the respective hierarchical models.  The function encodes the formula presented in paper [MN] with some simplifications done beforehand to the automaton. More specifically, we reduce the automata construceted there by minimizing the number states with the technique in  \cite[Theorem 4.26]{HU}.

equivH=(c)->(
m=1;
for i from 0 to #c-1 do m=m*c_i;--m is the number of ZETA letters
L=splice{#c:1}..c; --(#l=M) the vectors associated to each letter ZETA
n=0;
d={};
for i from 0 to #c-1 do(d=drop(c,{i,i});
    p=1;
    for j from 0 to #d-1 do(p=p*d_j);
    n=n+p); --n is the number of acceptable states represented by TAU
M=mutableMatrix(ZZ,#c,#c);
for j from 0 to #c-1 do( for i from 0 to #c-1 do( (M_(i,j)=c_j)));   
for i from 0 to #c-1 do(M_(i,i)=1);
 M=entries matrix M;
I={};
for i from 0 to #c-1 do(Q={splice{#M_i:1}..M_i};
    I= append(I,Q));
I=flatten I; -- records the vectors associated to TAU letters/states
J=apply(#I,i->#I_i); --records how many times one has states with the TAU_i loops
b=0;
h=mutableMatrix(ZZ,#J,1);
for i from 0 to #J-1 do( b=b+J_i;
    h_(i,0)=b);
h=matrix entries h;
h=0||h;
H=apply(#J,i->h_(i,0)); -- records the sums of the first i-th terms of J
R=QQ[t,s_1..s_(#c)]; --#c is the a number of words TAU for shifts, t is the weight for ZETA-s
            -- and s_i is the weight for TAU_i-s              
S=frac R; -- the fraction field where the equivariant Hilbert series
--Below is the matrix that records the relationships in the automaton
--FIRST PART-- relations in automaton from ZETA to ZETA
L=splice{#c:1}..c;
A=mutableMatrix (S, #L,#L);
N=mutableMatrix (ZZ,#c,1);
for k from 0 to #c-1 do N_(k,0)=1;
N; -- the vector with all 1 and length #c.
for j from 0 to #L-1 do( for i from  0  to #L-1 do( a=mutableMatrix(ZZ,#c,1);
for k from 0 to #c-1 do(if (L_j)_k<=(L_i)_k then a_(k,0)=1);
if a==N then A_(i,j)=t));
A= matrix entries A;
--SECOND PART--relations in automata from TAU to ZETA
B=mutableMatrix(S,#L,n);
for i from 0 to #I-1 do( for e from 0 to #I_i-1 do( for j from 0 to #L-1  do( if drop(I_i_e,{i,i})<=drop(L_j,{i,i}) then B_(j,H_i+e)=t)));
B=matrix entries B; --
--THIRD PART--relations in automata from ZETA to TAU
C=mutableMatrix(S,n,#L);
for i from 0 to #I-1 do( for e from 0 to #I_i-1 do( for j from 0 to #L-1 do( if drop(I_i_e,{i,i})==drop(L_j,{i,i}) then C_(H_i+e,j)=s_(i+1))));
C=matrix entries C;
--FOURTH PART-- relations in automata from TAU to TAU
D=mutableMatrix(S,n,n);
for i from 0 to #I-1 do( for j from 0 to #I-1 do(for e from 0 to  #(I_i)-1 do(  for l from 0 to  #(I_j)-1 do( if i<=j and I_j_l_i==1 and drop(I_i_e,{j,j})==drop(I_j_l,{j,j}) then D_(H_j+l,H_i+e)=s_(j+1)))));
D=matrix entries D;
M=(A|B)||(C|D); -- the square  matrix describing all the relations
k=m+n; -- the size of the matrix
M=id_(S^k)-M; -- the matrix that we want to use the inverse of
D=determinant M;
N = inverse M;
v=mutableMatrix(S,1,k);
for i from 0 to k-1 do(v_(0,i)=1);
v=matrix entries v; -- the vector that records the accepting states
e=mutableMatrix(S,k,1);
for i from 0 to k-1 do(e_(0,0)=1);
e= matrix entries e; -- the unit vector
g=v*N*e;
m=1;
for i from 0 to #c-1 do m=m*s_(i+1);
m;
h=m*determinant g; -- the equivariant Hilbert series
return (h))
