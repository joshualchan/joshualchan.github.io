Blob [] blob1;

public void setup()
{
	size(600,200);
	textAlign(CENTER);
	textSize(80);

	blob1 = new Blob[250];


	for(int i = 0 ; i<blob1.length ; i++)
		blob1[i] = new Blob(0,0); //random point for initialization

}

public void draw()
{
	background(0);
	fill(1);
	textSize(80);
	text("JOSH" , 300,125);


	for(int i = 0 ; i< blob1.length ; i++)
	{
		
		if(get(blob1[i].getX(), blob1[i].getY()) != color(0,0,0))
		{
			blob1[i].show();
			blob1[i].move();	
				
		}
		
	}


	for(int i = 0 ; i< blob1.length ; i++)
	{
		int randX2,randY2;
		randX2 = (int)(Math.random()*205)+190;
		randY2 = (int)(Math.random()*105)+65;		
		if(get(blob1[i].getX(), blob1[i].getY()) != color(1,1,1))
		{
			blob1[i].setX(randX2);
			blob1[i].setY(randY2);
				
		}
		
	}

}


 class Blob  
 {     
 	private int myX, myY;

 	public Blob (int x, int y)
 	{
 		myX = x+ (int)(Math.random()*7) -3;
 		myY = y+ (int)(Math.random()*7) -3;

 	}   


 	public void show()
 	{
 		fill(255,0,0);
 		//fill(255,0,0);
 		ellipse(myX,myY,7,7);	
 		
 	}


 	public void move()
 	{
 		if(get(myX,myY) != color(0,0,0))
 		{
 			myX = myX  + (int)(Math.random()*3) -1;
 			myY = myY + (int)(Math.random()*3) -1;
 		}

 	}


 	public void setX(int x){myX = x;}
 	public void setY(int y){myY = y;}
 	public int getX(){return myX;}
 	public int getY(){return myY;}

 }    