		ORG	x:$0000
		dc	0.125
		dc	0.0625
		dc	-0.5
		dc	0.75

		ORG	y:$1000
		dc	0.3125
		dc	-0.0125
		dc	0.5
		dc	0.625		

		ORG	p:$e000
		
vect_max	EQU	*

		do	n0,endloop
		move	x:(r0)+,x0	y:(r4),b
		cmpm	x0,b
		tlt	x0,b
		move	b,y:(r4)+
		
endloop		EQU	*
			
		rts
		
main		EQU	*	
		move	#$0000,A	
		move	#$1000,B	
		move	A,r0		
		move	B,r4
		
		move	#$4,n0
			
		jsr	vect_max

		end	main




