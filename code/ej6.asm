		ORG	p:$e000
main		EQU	*
		
		add x1,a
		rep #$a
		norm r0,a
		add x0,a

end		main