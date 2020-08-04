------------------------------------------------
--Documentation
-----------------------------------------------
beginDocumentation()

---------------------------------------
-- HierarchicalModels
--------------------------------------

doc///
Key
HierarchicalModels
Headline
A package to compute the algebraic objects related to a hierarchical model.

Description
Text
{\em HierarchicalModels} is a package for  the algebra and the geometry associated to hierarchical models.
This package calculates the generating sets for toric ideals of hierarchical models using the package FourTiTwo.
These ideals and their connection to hierarchical models are introduced in [1].
In the case of reducible hierarchical models, we compute their generating set as toric fiber product presented in [2] and [3].
Additionally, the package computes the dimesion of hierarchical  models, which is one less than the dimension of their ideals,
using the formula in Theorem 2.6 [2].
 
 
 {\em References:}
 
[1] Persi Diaconis and Bernd Sturmfels, {\em Algebraic Algorithms for sampling from conditional distributions},
   Ann. Statist. 26, 1998.
 
[2] Serkan Hoşten and Seth Sullivant, {\em Gröbner bases and polyhedral geometry of reducible and cyclic models},
  J. Combin. Theory,  \textbf{100}, 277301, 2002.

[3] Seth Sullivant, {\em Toric fiber products}, J. Algebra 316, no. 2, 560577, 2007.
 
----------------------------------------------------
end
doc///
 Key
         probRing
         (probRing,List)
    Headline
         Compute the probability ring where the ideals for a hierarchical model with a given number of states live
    Usage
        R=probRing(r)
    Inputs
       r: number of states of the random variables
         A set of positive integers
 
    Outputs
       R: Polynomial ring
          The polynomial ring with variables indexed by the  state space
     
    Example
      R = probRing({2,3,2})

   SeeAlso
    hierToric42
///
-------------------------------------------------------------
-- hierToric42
-------------------------------------------------------------
doc///
Key
   hierToric42
   (hierToric42,List,List)
       Headline
              Compute the ideal associated to the hierarchical model using the FourTiTwo package.
       Usage
               I = hierToric42(r,Facets)
       Inputs
              r: number of states of the random variables
      Facets: a set of maximal dependency relations among random variables, i.e. facets of a simplicial complex
       Description
              Text
         Computes the toric ideal using the function toricMarkov of the FourTiTwo package on the matrix whose columns parametrize the toric variety;
   the toric ideal is the kernel defined by this map.
       Example
              I = hierToric42({2,3,4},{{0,1},{1,2}})  
       SeeAlso
            probRing
hierMatrix    

///
----------------------------------
--hierMatrix
---------------------------------
doc///

Key
   hierMatrix
  (hierMatrix,List,List)
       Headline
              Compute the matrix that encondes the monomial map that has the ideal of hierarchical model as its kernel.
       Usage
               I = hierMatrix(r,Facets)
       Inputs
              r: number of states of the random variables
      Facets: a set of maximal dependency relations among random variables, i.e. facets of a simplicial complex
       Description
              Text
         Computes the matrix that encondes the monomial map that has the ideal of hierarchical model as its kernel.
       Example
              I = hierMatrix({2,3,4},{{0,1},{1,2}})  
       SeeAlso
            probRing
       hierToric42    

///
----------------------------------
--parameterRing
---------------------------------
doc///
Key
   parameterRing
  (parameterRing,List,List)
       Headline
              Compute the target ring  the monomial map that has the ideal of hierarchical model as its kernel.
       Usage
               I = parameterRing(r,Facets)
       Inputs
              r: number of states of the random variables
      Facets: a set of maximal dependency relations among random variables, i.e. facets of a simplicial complex
       Description
              Text
         Computes the target ring  the monomial map that has the ideal of hierarchical model as its kernel.
   The first index in the variables denotes the facet, and the rest of the index vector is in the states
   space defined by this facet.  
       Example
              I = parameterRing({2,3,4},{{0,1},{1,2}})  
       SeeAlso
            probRing
       hierToric42    
        hierMatrix

///
----------------------------------
--hierDim
---------------------------------
doc///
Key
   hierDim
  (hierDim,List,List)
       Headline
              Compute the dimension of the hierarchical model.
       Usage
               I = hierDim(r,Facets)
       Inputs
              r: number of states of the random variables
      Facets: a set of maximal dependency relations among random variables, i.e. facets of a simplicial complex
       Description
              Text
         Computes the dimension of the hierarchical model using a formula by Hoşten and Sullivant.
   The dimension of its ideal is one more than the dimension of the model.
       Example
              I = hierDim({2,3,4},{{0,1},{1,2}})  
       SeeAlso
       hierToric42    
 
///
----------------------------------
--margPolytope
---------------------------------
doc///
Key
   margPolytope
  (margPolytope,List,List)
       Headline
              Compute the marginal polytope associated  to  the hierarchical model.
       Usage
               I = margPolytope(r,Facets)
       Inputs
              r: number of states of the random variables
      Facets: a set of maximal dependency relations among random variables, i.e. facets of a simplicial complex
       Description
              Text
         Computes the marginal polytope associated to the hierarchical model. The marginal polytope is the convex
   hull of column vectors of the matrix that encondes the monomial map that has the ideal of hierarchical model as its kernel.
       Example
              I = margP({2,3,4},{{0,1},{1,2}})  
       SeeAlso
       hierToric42    
 
///