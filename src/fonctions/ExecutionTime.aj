package fonctions;

import java.util.Date;

public aspect ExecutionTime {
	long executionTime;
	long beginTime;
	long endTime;
	
	pointcut begin() : 
		call(void spacewar.Game.run());
	
	pointcut end() : 
		call(void spacewar.Game.quit());
	
	before() : begin(){
		Date d1 = new Date();
		beginTime = d1.getTime();
		System.out.println("The counting begins......");
	}
	
	before() : end(){
		Date d2 = new Date();
		endTime = d2.getTime();
		System.out.println("The execution time is : "+ (endTime - beginTime));
	}
}
