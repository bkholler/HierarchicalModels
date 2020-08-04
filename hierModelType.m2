HierarchicalModel = new Type of HashTable;

hierarchicalModel = method(Options => {grobBasis => null});
-- Creates the data structures associated to the model
hierarchicalModel(List, List) := HierarchicalModel => opts -> (states, delta) -> (
    groundSet := unique flatten delta;
    new HierarchicalModel from {
	r => states,
    	Delta => delta,
    	GroundSet => groundSet,
    	pRing => probRing(r),
    	GBDelta => opts.grobBasis
  }
)

HierarchicalModel = new Type of HashTable;

hierarchicalModel = method(Options => {grobBasis => null});
-- Creates the data structures associated to the model
hierarchicalModel(List, List) := HierarchicalModel => opts -> (states, delta) -> (
    groundSet := unique flatten delta;
    new HierarchicalModel from {
	r => states,
    	Delta => delta,
    	GroundSet => groundSet,
    	pRing => probRing(r),
    	GBDelta => opts.grobBasis
  }
)