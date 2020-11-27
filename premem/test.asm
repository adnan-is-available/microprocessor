# super fichier !
begin:
cstb 0
pushb

main:

xdraw:
cstb 0
pushb

rec_xdraw:
popa
cstb 1
add
pushb

cstb rec_xdraw
pushb
swapab
pushb
cstb 10
pushb
cstb draw
jmp

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