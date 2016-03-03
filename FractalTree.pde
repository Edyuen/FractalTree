private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
	size(740,680);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(115,215,215);   
	line(375,680,375,340);   
	drawBranches(375,340,100,2*Math.PI/2);
	drawBranches(375,340,100,4*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	int endX1, endY1, endX2, endY2;
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	branchLength = branchLength * fractionLength;
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	if 	(branchLength>smallestBranch){
		drawBranches(endX1, endY1, branchLength, angle1);
		drawBranches(endX2, endY2, branchLength, angle2);
	}


} 
