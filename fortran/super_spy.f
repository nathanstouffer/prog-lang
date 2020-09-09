	! program for the super spy assignment for CSCI 305

	PROGRAM super_spy
	IMPLICIT NONE

	! variable declarations
	CHARACTER(LEN=1) :: ones, tens
	CHARACTER(LEN=7) :: input

	write(*,*) 'Hat size?'          ! prompt user
        read(*,*) input                 ! read in number
       
        ones = OnesDigit(input, LEN_TRIM(input))
        tens = TensDigit(input, LEN_TRIM(input))
        
        write(*,*) "Use " // tens // ones        
        
        CONTAINS
                CHARACTER(LEN=1) FUNCTION TensDigit(num, length)
                        IMPLICIT NONE
                        CHARACTER*7 :: num
                        INTEGER :: length
                        TensDigit = num(length:length+1)
                END FUNCTION TensDigit
                
                CHARACTER(LEN=1) FUNCTION OnesDigit(num, length)
                        IMPLICIT NONE
                        CHARACTER*7 :: num
                        INTEGER :: length
                        OnesDigit = num(length-3:length-2)
                END FUNCTION OnesDigit
	END PROGRAM super_spy
