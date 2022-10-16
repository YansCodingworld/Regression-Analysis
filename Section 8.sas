libname data1 '/home/u58879515/data1';

proc gchart data=data1.pilots;
	vbar state / sumvar=salary type=mean;
	format salary dollar8.;
run;

proc gplot data=data1.pilots;
    where gender='F';
	plot salary * birth / regeqn;
	symbol v=diamond i=rlclm95 c=green;
run;

