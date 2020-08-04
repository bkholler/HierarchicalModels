liftBinomialTableau = method(Options => {});
liftBinomialTableau(List, List, Boolean) := List => opts -> (tabs, k, isFromDelta1) -> (   
    newTabs := {};
    newTab := {};
    
    if isFromDelta1 then (
	
	for i from 0 to 1 do (	
	    
	    newTab = {};
	    
	    for d from 0 to #k-1 do (
		
		
		newTab = append(newTab, tabs_i_d|k_d); 
		
		);
	    
	    newTabs = append(newTabs, newTab);
	    
	    );
	);
    
    if not isFromDelta1 then (
	
	for i from 0 to 1 do (	
	    
	    newTab = {};
	    
	    for d from 0 to #k-1 do (
		
		
		newTab = append(newTab, k_d|tabs_i_d); 
		
		);
	    
	    newTabs = append(newTabs, newTab);
	    
	    );
	);
	
    newTabs
    ) 