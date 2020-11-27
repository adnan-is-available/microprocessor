	mov $23, %rsp
	push %rip
	mov main, %rip
main:
	mov %rsp, %rcx
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $1, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $2, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $3, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $3
	pop %rax
	mov $4, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $2
	pop %rax
	mov $5, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $9
	pop %rax
	mov $6, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $7, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $3
	pop %rax
	mov $8, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $2
	pop %rax
	mov $9, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $21
	pop %rax
	mov $10, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $2
	pop %rax
	mov $11, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $12, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $13, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $14, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $15, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $20
	pop %rax
	mov $16, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $2
	pop %rax
	mov $17, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $18, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $20
	pop %rax
	mov $19, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $2
	pop %rax
	mov $20, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $21, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	mov $0, %rdx
	sub %rdx, %rsp
	push %rip
	mov Fmain, %rip
	mov $0, %rax
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fmain:
	push %rcx
	mov %rsp, %rcx
	mov $1, %rdx
	add %rdx, %rsp
	push $1
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $4
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L186, %rdx
	jne %rdx
	pop %rax
	push $0
L186:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L178, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L179
L178:
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L185, %rdx
	jne %rdx
	pop %rax
	push $0
L185:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L180, %rdx
	jeq %rdx
	push $1
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L181
L180:
	mov $16, %rdx
	mov (%rdx), %rax
	push %rax
	push $4
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L184, %rdx
	jne %rdx
	pop %rax
	push $0
L184:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L182, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L183
L182:
	push $1
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
L183:
L181:
L179:
	pop %rax
	push $45
	push $12
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	push $87
	push $12
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	push $75
	push $54
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	push $45
	push $94
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $3, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	mov (%rdx), %rax
	push %rax
	push $42
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $6, %rdx
	mov (%rdx), %rax
	push %rax
	push $63
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $7, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $8, %rdx
	mov (%rdx), %rax
	push %rax
	push $21
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $9, %rdx
	mov (%rdx), %rax
	push %rax
	push %rip
	mov Fprint_day, %rip
	mov $1, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $11, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $42
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $12, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $42
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $14, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $15, %rdx
	mov (%rdx), %rax
	push %rax
	push $21
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $17, %rdx
	mov (%rdx), %rax
	push %rax
	push $42
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $18, %rdx
	mov (%rdx), %rax
	push %rax
	push $63
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $20, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $21, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	jmp L82
L83:
	mov $2, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L177, %rdx
	jeq %rdx
	pop %rax
	push $0
L177:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L171, %rdx
	jeq %rdx
	mov $4, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L172
L171:
	jmp L173
L174:
	push $0
	push $0
	push $0
	pop %rax
	mov $2, %rbx
	add %rax, %rbx
	mov $7, %rdx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	int
	push $0
	pop %rax
L173:
	mov $1, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L175, %rdx
	jeq %rdx
	push $0
	jmp L176
L175:
	push $1
L176:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L174, %rdx
	jne %rdx
	push $0
	pop %rax
	push $0
	pop %rax
	mov $1, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $4, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	mov %rax, (%rdx)
	push $0
L172:
	pop %rax
	mov $4, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L170, %rdx
	jeq %rdx
	pop %rax
	push $0
L170:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L84, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $4, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $3, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $3, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $3, %rdx
	mov (%rdx), %rax
	push %rax
	push $6
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L169, %rdx
	jeq %rdx
	pop %rax
	push $0
L169:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L86, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $3, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $6, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $6, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $6, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L168, %rdx
	jeq %rdx
	pop %rax
	push $0
L168:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L88, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $6, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $5, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $5, %rdx
	mov (%rdx), %rax
	push %rax
	push $6
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L167, %rdx
	jeq %rdx
	pop %rax
	push $0
L167:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L90, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $5, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $8, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $8, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $8, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L166, %rdx
	jeq %rdx
	pop %rax
	push $0
L166:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L164, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $8, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $7, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $7, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L165
L164:
	mov $0, %rax
	push %rax
L165:
	pop %rax
	mov $7, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L163, %rdx
	jeq %rdx
	pop %rax
	push $0
L163:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L161, %rdx
	jeq %rdx
	pop %rax
	mov $8, %rdx
	mov (%rdx), %rax
	push %rax
	push $4
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L162, %rdx
	jeq %rdx
	pop %rax
	push $0
L162:
L161:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L92, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $8, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	push $0
	pop %rax
	mov $7, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $12, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $12, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $10, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $12, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L160, %rdx
	jeq %rdx
	pop %rax
	push $0
L160:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L158, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $12, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $11, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $11, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L159
L158:
	mov $0, %rax
	push %rax
L159:
	pop %rax
	mov $9, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $9, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $9, %rdx
	mov (%rdx), %rax
	push %rax
	push $8
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L157, %rdx
	jeq %rdx
	pop %rax
	push $0
L157:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L155, %rdx
	jeq %rdx
	push $1
	pop %rax
	mov $9, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L156
L155:
	mov $0, %rax
	push %rax
L156:
	pop %rax
	mov $9, %rdx
	mov (%rdx), %rax
	push %rax
	push %rip
	mov Fprint_day, %rip
	mov $1, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $28
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L154, %rdx
	jeq %rdx
	pop %rax
	push $0
L154:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L152, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L153, %rdx
	jeq %rdx
	pop %rax
	push $0
L153:
L152:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L149, %rdx
	jeq %rdx
	pop %rax
	mov $22, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L150, %rdx
	jeq %rdx
	push $0
	jmp L151
L150:
	push $1
L151:
L149:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $1
	mov L144, %rdx
	jne %rdx
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $29
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L148, %rdx
	jeq %rdx
	pop %rax
	push $0
L148:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L146, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L147, %rdx
	jeq %rdx
	pop %rax
	push $0
L147:
L146:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L145, %rdx
	jeq %rdx
	pop %rax
	mov $22, %rdx
	mov (%rdx), %rax
	push %rax
L145:
L144:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $1
	mov L138, %rdx
	jne %rdx
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $30
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L143, %rdx
	jeq %rdx
	pop %rax
	push $0
L143:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L141, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L142, %rdx
	jeq %rdx
	pop %rax
	push $0
L142:
L141:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L139, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $7
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L140, %rdx
	jleq %rdx
	pop %rax
	push $0
L140:
L139:
L138:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $1
	mov L132, %rdx
	jne %rdx
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $30
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L137, %rdx
	jeq %rdx
	pop %rax
	push $0
L137:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L135, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L136, %rdx
	jeq %rdx
	pop %rax
	push $0
L136:
L135:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L133, %rdx
	jeq %rdx
	pop %rax
	push $8
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L134, %rdx
	jleq %rdx
	pop %rax
	push $0
L134:
L133:
L132:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $1
	mov L126, %rdx
	jne %rdx
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $31
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L131, %rdx
	jeq %rdx
	pop %rax
	push $0
L131:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L129, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L130, %rdx
	jeq %rdx
	pop %rax
	push $0
L130:
L129:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L127, %rdx
	jeq %rdx
	pop %rax
	push $7
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L128, %rdx
	jleq %rdx
	pop %rax
	push $0
L128:
L127:
L126:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $1
	mov L120, %rdx
	jne %rdx
	pop %rax
	mov $10, %rdx
	mov (%rdx), %rax
	push %rax
	push $31
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L125, %rdx
	jeq %rdx
	pop %rax
	push $0
L125:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L123, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $2
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L124, %rdx
	jeq %rdx
	pop %rax
	push $0
L124:
L123:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	push $0
	mov L121, %rdx
	jeq %rdx
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $8
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L122, %rdx
	jleq %rdx
	pop %rax
	push $0
L122:
L121:
L120:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L94, %rdx
	jeq %rdx
	push $1
	pop %rax
	mov $12, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	push $0
	pop %rax
	mov $11, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $13, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $15, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $15, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $15, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L119, %rdx
	jeq %rdx
	pop %rax
	push $0
L119:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L117, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $15, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $14, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $14, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L118
L117:
	mov $0, %rax
	push %rax
L118:
	pop %rax
	mov $13, %rdx
	mov (%rdx), %rax
	push %rax
	push $13
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L116, %rdx
	jeq %rdx
	pop %rax
	push $0
L116:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L96, %rdx
	jeq %rdx
	push $1
	pop %rax
	mov $13, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	push $0
	pop %rax
	mov $14, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	push $1
	pop %rax
	mov $15, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $19, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $21, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $21, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $21, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L115, %rdx
	jeq %rdx
	pop %rax
	push $0
L115:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L113, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $21, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $20, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $20, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L114
L113:
	mov $0, %rax
	push %rax
L114:
	pop %rax
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $100
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L112, %rdx
	jeq %rdx
	pop %rax
	push $0
L112:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L107, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $19, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	push $0
	pop %rax
	mov $20, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $18, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $18, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $18, %rdx
	mov (%rdx), %rax
	push %rax
	push $10
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L111, %rdx
	jeq %rdx
	pop %rax
	push $0
L111:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L109, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $18, %rdx
	mov %rax, (%rdx)
	push $0
	pop %rax
	mov $17, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $17, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L110
L109:
	mov $0, %rax
	push %rax
L110:
	pop %rax
	mov $16, %rdx
	mov (%rdx), %rax
	push %rax
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $16, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L108
L107:
	mov $0, %rax
	push %rax
L108:
	pop %rax
	mov $17, %rdx
	mov (%rdx), %rax
	push %rax
	push $42
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $18, %rdx
	mov (%rdx), %rax
	push %rax
	push $63
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $20, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $21, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $4
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L106, %rdx
	jne %rdx
	pop %rax
	push $0
L106:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L98, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L99
L98:
	mov $19, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L105, %rdx
	jne %rdx
	pop %rax
	push $0
L105:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L100, %rdx
	jeq %rdx
	push $1
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L101
L100:
	mov $16, %rdx
	mov (%rdx), %rax
	push %rax
	push $4
	push %rip
	mov Fmod, %rip
	mov $2, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L104, %rdx
	jne %rdx
	pop %rax
	push $0
L104:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L102, %rdx
	jeq %rdx
	push $0
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
	jmp L103
L102:
	push $1
	pop %rax
	mov $22, %rdx
	mov %rax, (%rdx)
	push $0
L103:
L101:
L99:
	jmp L97
L96:
	mov $0, %rax
	push %rax
L97:
	pop %rax
	mov $14, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $15, %rdx
	mov (%rdx), %rax
	push %rax
	push $21
	push $84
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L95
L94:
	mov $0, %rax
	push %rax
L95:
	pop %rax
	mov $11, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $42
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $12, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $42
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L93
L92:
	mov $0, %rax
	push %rax
L93:
	pop %rax
	mov $7, %rdx
	mov (%rdx), %rax
	push %rax
	push $0
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $8, %rdx
	mov (%rdx), %rax
	push %rax
	push $21
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L91
L90:
	mov $0, %rax
	push %rax
L91:
	pop %rax
	mov $5, %rdx
	mov (%rdx), %rax
	push %rax
	push $42
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L89
L88:
	mov $0, %rax
	push %rax
L89:
	pop %rax
	mov $6, %rdx
	mov (%rdx), %rax
	push %rax
	push $63
	push $0
	push $0
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L87
L86:
	mov $0, %rax
	push %rax
L87:
	pop %rax
	mov $3, %rdx
	mov (%rdx), %rax
	push %rax
	push $84
	push $0
	push $1
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L85
L84:
	mov $0, %rax
	push %rax
L85:
	pop %rax
	mov $4, %rdx
	mov (%rdx), %rax
	push %rax
	push $105
	push $0
	push $0
	push %rip
	mov Fprint_dig, %rip
	mov $4, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
L82:
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L83, %rdx
	jne %rdx
	push $0
	pop %rax
	mov $1, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fprint_day:
	push %rcx
	mov %rsp, %rcx
	mov $6, %rdx
	add %rdx, %rsp
	push $7
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $42
	push $7
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $3, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $42
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L81, %rdx
	jeq %rdx
	pop %rax
	push $0
L81:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L79, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L80
L79:
	mov $0, %rax
	push %rax
L80:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $2
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L78, %rdx
	jeq %rdx
	pop %rax
	push $0
L78:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L76, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L77
L76:
	mov $0, %rax
	push %rax
L77:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $3
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L75, %rdx
	jeq %rdx
	pop %rax
	push $0
L75:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L73, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L74
L73:
	mov $0, %rax
	push %rax
L74:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $4
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L72, %rdx
	jeq %rdx
	pop %rax
	push $0
L72:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L70, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L71
L70:
	mov $0, %rax
	push %rax
L71:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $5
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L69, %rdx
	jeq %rdx
	pop %rax
	push $0
L69:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L67, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L68
L67:
	mov $0, %rax
	push %rax
L68:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $6
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L66, %rdx
	jeq %rdx
	pop %rax
	push $0
L66:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L64, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L65
L64:
	mov $0, %rax
	push %rax
L65:
	pop %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L63, %rdx
	jeq %rdx
	pop %rax
	push $0
L63:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L61, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $21
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L62
L61:
	mov $0, %rax
	push %rax
L62:
	pop %rax
	mov $6, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fprint_dig:
	push %rcx
	mov %rsp, %rcx
	mov $5, %rdx
	add %rdx, %rsp
	mov $-5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $-4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $3, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $4, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L60, %rdx
	jeq %rdx
	pop %rax
	push $0
L60:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L56, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L58, %rdx
	jeq %rdx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L59
L58:
	mov $0, %rax
	push %rax
L59:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L57
L56:
	mov $0, %rax
	push %rax
L57:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $2
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L55, %rdx
	jeq %rdx
	pop %rax
	push $0
L55:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L51, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L53, %rdx
	jeq %rdx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L54
L53:
	mov $0, %rax
	push %rax
L54:
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L52
L51:
	mov $0, %rax
	push %rax
L52:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $3
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L50, %rdx
	jeq %rdx
	pop %rax
	push $0
L50:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L46, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L48, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L49
L48:
	mov $0, %rax
	push %rax
L49:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L47
L46:
	mov $0, %rax
	push %rax
L47:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $4
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L45, %rdx
	jeq %rdx
	pop %rax
	push $0
L45:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L41, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L43, %rdx
	jeq %rdx
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L44
L43:
	mov $0, %rax
	push %rax
L44:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L42
L41:
	mov $0, %rax
	push %rax
L42:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $5
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L40, %rdx
	jeq %rdx
	pop %rax
	push $0
L40:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L36, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L38, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L39
L38:
	mov $0, %rax
	push %rax
L39:
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L37
L36:
	mov $0, %rax
	push %rax
L37:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $6
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L35, %rdx
	jeq %rdx
	pop %rax
	push $0
L35:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L31, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L33, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L34
L33:
	mov $0, %rax
	push %rax
L34:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L32
L31:
	mov $0, %rax
	push %rax
L32:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $7
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L30, %rdx
	jeq %rdx
	pop %rax
	push $0
L30:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L26, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L28, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L29
L28:
	mov $0, %rax
	push %rax
L29:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L27
L26:
	mov $0, %rax
	push %rax
L27:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $8
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L25, %rdx
	jeq %rdx
	pop %rax
	push $0
L25:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L23, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L24
L23:
	mov $0, %rax
	push %rax
L24:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $9
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L22, %rdx
	jeq %rdx
	pop %rax
	push $0
L22:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L18, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L20, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L21
L20:
	mov $0, %rax
	push %rax
L21:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L19
L18:
	mov $0, %rax
	push %rax
L19:
	pop %rax
	mov $-6, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L17, %rdx
	jeq %rdx
	pop %rax
	push $0
L17:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L13, %rdx
	jeq %rdx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L15, %rdx
	jeq %rdx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $2, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L16
L15:
	mov $0, %rax
	push %rax
L16:
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $0
	push %rip
	mov Fprinth, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	push %rip
	mov Fprintv, %rip
	mov $3, %rdx
	sub %rdx, %rsp
	mov $0, %rdx
	mov (%rdx), %rax
	push %rax
	jmp L14
L13:
	mov $0, %rax
	push %rax
L14:
	pop %rax
	mov $5, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fprintv:
	push %rcx
	mov %rsp, %rcx
	mov $1, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	jmp L10
L11:
	mov $-4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $-5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $2, %rbx
	add %rax, %rbx
	mov $7, %rdx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	int
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
L10:
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L12, %rdx
	jleq %rdx
	pop %rax
	push $0
L12:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L11, %rdx
	jne %rdx
	push $0
	pop %rax
	mov $1, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fprinth:
	push %rcx
	mov %rsp, %rcx
	mov $1, %rdx
	add %rdx, %rsp
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	jmp L7
L8:
	mov $-4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $-5, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $2, %rbx
	add %rax, %rbx
	mov $7, %rdx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	shift %rdx, %rbx
	pop %rax
	add %rax, %rbx
	int
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
L7:
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $14
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L9, %rdx
	jleq %rdx
	pop %rax
	push $0
L9:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L8, %rdx
	jne %rdx
	push $0
	pop %rax
	mov $1, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fdiv:
	push %rcx
	mov %rsp, %rcx
	mov $2, %rdx
	add %rdx, %rsp
	mov $-4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	jmp L4
L5:
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	add %rbx, %rax
	push %rax
	pop %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
L4:
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L6, %rdx
	jleq %rdx
	pop %rax
	push $0
L6:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L5, %rdx
	jne %rdx
	push $0
	pop %rax
	mov $1, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	mov %rax, (%rdx)
	mov %rcx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
	pop %rax
	mov $2, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
Fmod:
	push %rcx
	mov %rsp, %rcx
	mov $1, %rdx
	add %rdx, %rsp
	mov $-4, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	jmp L1
L2:
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov %rax, (%rcx)
	sub %rdx, %rcx
	push $0
	pop %rax
L1:
	mov $-3, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	push $1
	pop %rbx
	pop %rax
	sub %rbx, %rax
	push %rax
	pop %rbx
	pop %rax
	cmp %rbx, %rax
	push $1
	mov L3, %rdx
	jleq %rdx
	pop %rax
	push $0
L3:
	pop %rax
	mov $0, %rdx
	cmp %rdx, %rax
	mov L2, %rdx
	jne %rdx
	push $0
	pop %rax
	mov $0, %rdx
	add %rdx, %rcx
	mov (%rcx), %rbx
	push %rbx
	sub %rdx, %rcx
	pop %rax
	mov $0, %rdx
	mov %rax, (%rdx)
	mov %rcx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
	pop %rax
	mov $1, %rdx
	sub %rdx, %rsp
	pop %rcx
	pop %rdx
	mov $9, %rbx
	add %rbx, %rdx
	mov %rdx, %rip
