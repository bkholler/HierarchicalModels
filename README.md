# HierarchicalModels
 
HierarchicalModels is a Macaulay2 package that I began developing with Aida Maraj at the Macaulay2 Cleveland 2020 workshop and is currently still under development.
Currently, this package computes:
(1) Design matrix underlying a hierarchical model
(2) Monomial map parameterizing the model
(3) Grobner basis of the toric ideal using FourTiTwo
(4) Easy conversion between normal and tableau notation for binomials
(5) Toric fiber product style lifting of some polynomials

We plan to implement the following methods which we think would be useful for the community. 

(1) Decompose a simplicial complex into irreducible components
(2) Compute toric ideal of a decomposable model completely through the toric fiber product
(3) Compute any ideal by computing the irreducible components via FourTiTwo and then computing the full ideal via the toric fiber product
(4) A general method for the toric fiber product of two toric ideals with respect to a given grading
(5) Compute marginal polytope and its H-representation when the complex is decomposable via fiber product of polytopes
(6) Higher codimension toric fiber product for simplicial complexes that aren't decomposable

If there are other features that you are interested in or think would be useful for the community feel free to contact me at bkholler@ncsu.edu. 
