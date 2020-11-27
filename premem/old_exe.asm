main:
    mov 0, $rax
    push $rax
    push $rax

    mov .main, $rdx
    push $rdx
    push $rcx
    push $rcx
    
    mov $rcx, $rbx
    mov 1, $rax
    add $rax, $rbx
    mov $rbx, $rcx
    
    mov .draw, $rip


draw:
    mov 3, $rbx
    shift 7
    pop $rax
    add $rax, $rbx
    pop $rax
    shift 7
    add $rax, $rbx
    int
    pop $rdx
    mov $rdx, $rip