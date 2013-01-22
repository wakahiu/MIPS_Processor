#define	FRAME0		(* ((volatile unsigned int*) 0x10400000))	//FRAME0
#define	FRAME1		(* ((volatile unsigned int*) 0x10800000))	//FRAME1


//----------------------------------------------
//=============================================
int main (void) {


		int tempAddr = 0;
		int color	= 0xFFFFFF00;
	while(1)
	{

		//Iterate thoughout the whole screen.
		for (unsigned int i = 0; i < 600; i = i + 100) {
			for (unsigned int j = 0; j < 800; j = j + 100) {
				
				//Draw little 100*100 multicolored squares
				
				for (unsigned int y = i; y < i+100; y = y + 1) {
					for (unsigned int x = j; x < j+100; x = x + 1) {
						tempAddr = ((y << 10) + (x << 0));
						(&FRAME0)[ tempAddr ] = (color >> 8);
						(&FRAME1)[ tempAddr ] = (color >> 8);
				
					}
				}
				color = color + 0x0F1A8000;
			}
		}
	}
}

//---------------------------------------------------------------------

