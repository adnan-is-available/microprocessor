# programme général

main:
    cstb 16
    pushb
    
    cstb 1
    pushb
    
    cstb 42
    pushb
    
    cstb printeur
    pushb
    
    cstb 1
    pushb
    
    cstb getx
    jmp

printeur:
    cstb printeur_next
    pushb
    cstb 2
    pushb
    cstb getx
    jmp
    printeur_next:
    popa
    cstb printeur_next_next
    pushb
    swapab
    pushb
    cstb getx
    jmp
    printeur_next_next:
    popa
    swapab
    printb
    cstb printeur
    jmp
    

# getx ( next, %x+1 ) -> ( X )
getx:
    popa
    gram
    swapab
    sram
    swapab
    popa
    sram
    swapab
    popa
    pushb
    swapab
    jmp

# set0 ( next, k ) -> ()
setx:
    popa
    gram
    swapab
    
    cstb 0
    sram
    swapab
    
    