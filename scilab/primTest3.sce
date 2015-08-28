x1 = [-1000000   -1000000   -1000000   -1000000   -79.937408  -72.400325;
-1000000   -1000000   -1000000   -1000000   -1000000   -79.214156;
-1000000   -1000000   -1000000   -76.05308   -1000000   -1000000.;
-1000000   -1000000   -74.472734  -1000000   -1000000   -1000000.;
-79.862467  -1000000   -1000000   -1000000   -1000000   -1000000.;
-74.879083  -1000000   -1000000   -1000000   -1000000   -1000000.;
-79.549133  -1000000   -1000000   -1000000   -1000000   -1000000.;
-1000000   -1000000   -1000000   -1000000   -1000000   -79.40397;
-1000000   -1000000   -74.268819  -61.44108   -1000000   -1000000.;
-1000000   -79.954615  -74.232487  -70.277902  -1000000   -79.139971];  
  
x2=[-79.962655  -79.025532  -1000000   -1000000;
-1000000   -79.755308  -1000000   -79.996737;
-1000000   -1000000   -76.714974  -1000000;
-1000000   -1000000   -62.306888  -75.815712;
-1000000   -1000000   -1000000   -1000000;
-1000000   -79.189023  -1000000   -1000000;
-1000000   -75.503285  -1000000   -79.56212;
-78.610513  -1000000   -1000000   -78.695141;
-1000000.   -1000000   -1000000   -72.974843;
-77.064733  -73.090527  -68.302841  -1000000];
  
  x=[x1 x2]; 
disp(x);

MIN_LEVEL = -1000000; 
//define the system constants
NUM_NODES = 10;

newNodeLevel = -1.*x;
MAX_LEVEL = -1*MIN_LEVEL;
[newGraph,mincost] = primOptimization(NUM_NODES,newNodeLevel,MAX_LEVEL,MIN_LEVEL);
newGraph=-1.*newGraph;
disp('Minimun cost');
disp(mincost);
disp('Minimun graph');
disp(newGraph);
