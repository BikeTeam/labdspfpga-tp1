		ORG	p:$e000
main		EQU	*

		macr	x0,x1,a
		rnd	b
		mpyr	x0,x1,b

end		main
		