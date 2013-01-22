#define	FRAME0		(* ((volatile unsigned int*) 0x10400000))			//dereferences the pointer to the first frame
#define	FRAME1		(* ((volatile unsigned int*) 0x10800000))			//dereferences the pointer to the second frame
#define	FRAME_BASE0		 0x10400000										//frame0 base address
#define	FRAME_BASE1		 0x10800000	
#define	PROGRAM_ADDRESS	 0x10c00000										//frame1 base address
#define	GPCMD		(* ((volatile unsigned int*) 0x10c00000))
#define	GPCODE		(* ((volatile unsigned int*) 0x80000014))
#define GPFRAME		(* ((volatile unsigned int*) 0x80000018))
#define	GPVALID		(* ((volatile unsigned int*) 0x8000001C))

#define	PIXELFRAME	(* ((volatile unsigned int*) 0x80000010))

//----------------------------------------------
//=============================================
int main (void) {
	PIXELFRAME = FRAME_BASE0;
	
	GPCODE = PROGRAM_ADDRESS;
	GPCMD = 0x010000FF;

	(&GPCMD)[1] = 0x02FF0000;		//draw red line
	(&GPCMD)[2] = 0x000a000a;		//(x0,y0) = (10, 10)
	(&GPCMD)[3] = 0x0315000a;		//(x1, y1) = (789, 10)
	(&GPCMD)[4] = 0x00000000; 		//stop

	GPFRAME = FRAME_BASE1;
	/*

	(&GPCODE)[0x20] = 0x02FF0000;	//draw red line
	(&GPCODE)[0x24] = 0x0315000a;  	//(x0,y0) = (10, 10)
	(&GPCODE)[0x28] = 0x0315024d; 	//(x1, y1) = (789, 10)
	*/

	GPVALID = 1;
	PIXELFRAME = FRAME_BASE1;
	
}

//---------------------------------------------------------------------

