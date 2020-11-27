# afficheur de segments

begin:
    nop

cstb 12
mov rax, (rbx)
mov 12, rax

main:
    cstb main
    pushb
    mov rax, rbx
    cstb 0
    pushb
    cstb 0
    pushb
    cstb draw
    jmp



# wline ( x0, y0, k ) -> ()
# draw ( x0, y0 ), draw ( x0 + 1, y0 ), ...
hline:
    popa
    swapab
    popa
    swapab
    pushb
    add
    
# ( x0, y0 ) ( k, y0 + k )
    pushb
    cstb 1
    add
    popa
    pushb

# ( x0, y0, k+1 ) ( y0 + k, _ )
    cstb 3
    swapab
    pushb
    gram
    swapab
    sub
# ( x0, y0, k+1, y0 + k ) ( _, n-2 )
    sram
    
    
    

draw:
    cstb 384
    popa
    add
    shift
    shift
    shift
    shift
    shift
    shift
    shift
    popa
    add

    printb

    popa
    swapab
    jmp