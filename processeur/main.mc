FUN main s

(*--- On récupère l'adresse de l'instruction à exécuter, du registre RIP ---*)
(i=1..16) rip0[i] = REG ( rip[i] )

(*--- On détermine l'instruction dont il s'agit ---*)
(i=1..16) op[i] = ROM ( (j=1..16)rip0[j] <i,4> )

(*--- Chargement de l'instruction (~prof. 6) ---*)
(j=1..16) opbit[j] = demux4 ( (j=1..4) op[j] )

(*--- On lit les autres registres ---*)
(i=1..16) rax0[i] = REG ( rax[i] )
(i=1..16) rbx0[i] = REG ( rbx[i] )
(i=1..16) rcx0[i] = REG ( rcx[i] )
(i=1..16) rdx0[i] = REG ( rdx[i] )
(i=1..16) rsp0[i] = REG ( rsp[i] )
(i=1..16) flg0[i] = REG ( flg[i] )
(i=1..16) rbp0[i] = REG ( rbp[i] )


(*--- Structure d'une instruction ---*)
(* op        == ooooaaabbbcccccc *)
(* oooo      := opcode           *)
(* aaa       := reg1             *)
(* bbb       := reg2             *)
(* bbbcccccc := constante        *)

(*--- On pré-calcule quelques valeurs ---*)

(i=1..7) c[i] = op[7]
(i=8..16) c[i] = op[i]
(i=1..8) reg1[i] = demux3 ( (j=5..7) op[j] )
(i=1..8) reg2[i] = demux3 ( (j=8..10) op[j] )

(i=1..16) vreg1k1[i] = MUX ( reg1[1], rax0[i],    rbx0[i] )
(i=1..16) vreg1k2[i] = MUX ( reg1[2], vreg1k1[i], rcx0[i] )
(i=1..16) vreg1k3[i] = MUX ( reg1[3], vreg1k2[i], rdx0[i] )
(i=1..16) vreg1k4[i] = MUX ( reg1[4], vreg1k3[i], rsp0[i] )
(i=1..16) vreg1k5[i] = MUX ( reg1[5], vreg1k4[i], flg0[i] )
(i=1..16) vreg1k6[i] = MUX ( reg1[6], vreg1k5[i], rip0[i] )
(i=1..16) vreg1[i] =   MUX ( reg1[7], vreg1k6[i], rbp0[i] )

(i=1..16) vreg2k1[i] = MUX ( reg2[1], rax0[i],    rbx0[i] )
(i=1..16) vreg2k2[i] = MUX ( reg2[2], vreg2k1[i], rcx0[i] )
(i=1..16) vreg2k3[i] = MUX ( reg2[3], vreg2k2[i], rdx0[i] )
(i=1..16) vreg2k4[i] = MUX ( reg2[4], vreg2k3[i], rsp0[i] )
(i=1..16) vreg2k5[i] = MUX ( reg2[5], vreg2k4[i], flg0[i] )
(i=1..16) vreg2k6[i] = MUX ( reg2[6], vreg2k5[i], rip0[i] )
(i=1..16) vreg2[i] =   MUX ( reg2[7], vreg2k6[i], rbp0[i] )



(*--- On exécute les instructions, en série si nécessaire ---*)
(*--> OPCODE 0 : NOP *)



(*--> OPCODE 1 : SWAP REX1, REX2 *)

(* RAX, RBX *)
(i=1..16) rax1[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[1], rax0[i], rbx0[i] )
(i=1..16) rbx1[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[1], rbx0[i], rax0[i] )

(* RAX, RCX *)
(i=1..16) rax2[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[2], rax1[i], rcx0[i] )
(i=1..16) rcx1[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[2], rcx0[i], rax0[i] )

(* RAX, RDX *)
(i=1..16) rax3[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[3], rax2[i], rdx0[i] )
(i=1..16) rdx1[i] = MUX ( ( opbit[1] . reg1[0] ) . reg2[3], rdx0[i], rax0[i] )

(* RBX, RCX *)
(i=1..16) rbx2[i] = MUX ( ( opbit[1] . reg1[1] ) . reg2[2], rbx1[i], rcx0[i] )
(i=1..16) rcx2[i] = MUX ( ( opbit[1] . reg1[1] ) . reg2[2], rcx1[i], rbx0[i] )

(* RBX, RDX *)
(i=1..16) rbx3[i] = MUX ( ( opbit[1] . reg1[1] ) . reg2[3], rbx2[i], rdx0[i] )
(i=1..16) rdx2[i] = MUX ( ( opbit[1] . reg1[1] ) . reg2[3], rdx1[i], rbx0[i] )

(* RCX, RDX *)
(i=1..16) rcx3[i] = MUX ( ( opbit[1] . reg1[2] ) . reg2[3], rcx2[i], rdx0[i] )
(i=1..16) rdx3[i] = MUX ( ( opbit[1] . reg1[2] ) . reg2[3], rdx2[i], rcx0[i] )


(*--> OPCODE 2 : PUSH REG1 *)
(j=1..16) tmprsp[j] = cast ( opbit[3] (opbit[2] + opbit[5]) )
(j=1..16) rsp1[j] = add16 ( (j=1..16)rsp0[j] (j=1..16)tmprsp[j] 0 )

(i=1..16) null1[i] = RAM ( <0,16>, opbit[2], (j=1..12)rsp0[j+4] <i,4>, vreg1[i] )



(*--> OPCODE 3 : POP REG1 *)
(i=1..16) popaddr[i] = MUX ( opbit[3], 0, rsp1[i] )
(i=1..16) popvalue[i] = RAM ( (j=5..16)popaddr[j] <i,4>, 0, <0,16>, 0 )
(i=1..16) rax4[i] = MUX ( opbit[3] . reg1[0], rax3[i], popvalue[i] )
(i=1..16) rbx4[i] = MUX ( opbit[3] . reg1[1], rbx3[i], popvalue[i] )
(i=1..16) rcx4[i] = MUX ( opbit[3] . reg1[2], rcx3[i], popvalue[i] )
(i=1..16) rdx4[i] = MUX ( opbit[3] . reg1[3], rdx3[i], popvalue[i] )



(*--> OPCODE 4 : MOV REG1, REG2 *)

(* REG1 <- REG2 *)
(i=1..16) rax5[i] = MUX ( opbit[4] . reg1[0], rax4[i], vreg2[i] )
(i=1..16) rbx5[i] = MUX ( opbit[4] . reg1[1], rbx4[i], vreg2[i] )
(i=1..16) rcx5[i] = MUX ( opbit[4] . reg1[2], rcx4[i], vreg2[i] )
(i=1..16) rdx5[i] = MUX ( opbit[4] . reg1[3], rdx4[i], vreg2[i] )
(i=1..16) rsp2[i] = MUX ( opbit[4] . reg1[4], rsp1[i], vreg2[i] )
(i=1..16) flg1[i] = MUX ( opbit[4] . reg1[5], flg0[i], vreg2[i] )
(i=1..16) rip1[i] = MUX ( opbit[4] . reg1[6], rip0[i], vreg2[i] )
(i=1..16) rbp1[i] = MUX ( opbit[4] . reg1[7], rbp0[i], vreg2[i] )



(* OPCODE 5 : PUSH CST *)
(i=1..16) null2[i] = RAM ( <0,16>, opbit[5], (j=5..16)rsp0[j] <i,4>, c[i] )



(* OPCODE 6 : JMPc REG1 *)
(i=1..16) rip2[i] = MUX ( opbit[6] . op[15]                 , rip1[i], vreg1[i] )
(i=1..16) rip3[i] = MUX ( opbit[6] . ( op[14] . flg0[0] )   , rip2[i], vreg1[i] )
(i=1..16) rip4[i] = MUX ( opbit[6] . ( op[13] . flg0[1] )   , rip3[i], vreg1[i] )
(i=1..16) rip5[i] = MUX ( opbit[6] . ( op[12] . n(flg0[0]) ), rip4[i], vreg1[i] )

ijmped = opbit[6] . ( op[15] + ( op[14] . flg0[0] ) + ( op[13] . flg0[1] ) + ( op[12] . n(flg0[0] ) ) )



(* OPCODE 7 : SHIFT REG1, REG2 *)
(* OPCODE 8 : BINOP REG1, REG2 *)

(j=1..16) neg2[j] = neg16 ( (j=1..16) vreg2[j] )
(j=1..16) not2[j] = not16 ( (j=1..16) vreg2[j] )
(j=1..16) notp[j] = not16 ( (j=1..16) vreg1[j] )

(j=1..16) add12[j] = add16 ( (j=1..16)vreg1[j] (j=1..16)vreg2[j] 0 )
(j=1..16) sub12[j] = add16 ( (j=1..16)vreg2[j] (j=1..16)notp[j] 1 )
(j=1..16) and12[j] = and16 ( (j=1..16)vreg1[j] (j=1..16)vreg2[j] )
(j=1..16) or12[j] = or16 ( (j=1..16)vreg1[j] (j=1..16)vreg2[j] )
(j=1..16) xor12[j] = xor16 ( (j=1..16)vreg1[j] (j=1..16)vreg2[j] )
(j=1..16) shif2[j] = shiftc ( (j=1..16)vreg2[j]  (j=13..16)vreg1[j] )

(i=1..16) res1[i] = MUX ( opbit[8] . op[15], 0, add12[i] )
(i=1..16) res2[i] = MUX ( opbit[8] . op[14], res1[i], sub12[i] )
(i=1..16) res3[i] = MUX ( opbit[8] . op[13], res2[i], and12[i] )
(i=1..16) res4[i] = MUX ( opbit[8] . op[12], res3[i], or12[i] )
(i=1..16) res5[i] = MUX ( opbit[8] . op[11], res4[i], xor12[i] )
(i=1..16) res6[i] = MUX ( opbit[7] . op[15], res5[i], shif2[i] )

(* OPCODE 9 : MONOP REG2 *)
(i=1..16) res7[i] = MUX ( opbit[9] . op[14], res6[i], neg2[i] )
(i=1..16) res8[i] = MUX ( opbit[9] . op[15], res7[i], not2[i] )

(i=1..16) rax6[i] = MUX ( (opbit[8]+opbit[7]) . reg2[0], rax5[i], res8[i] )
(i=1..16) rbx6[i] = MUX ( (opbit[8]+opbit[7]) . reg2[1], rbx5[i], res8[i] )
(i=1..16) rcx6[i] = MUX ( (opbit[8]+opbit[7]) . reg2[2], rcx5[i], res8[i] )
(i=1..16) rdx6[i] = MUX ( (opbit[8]+opbit[7]) . reg2[3], rdx5[i], res8[i] )

(i=1..16) rsp3[i] = MUX ( (opbit[8]+opbit[7]) . reg2[4], rsp2[i], res8[i] )
(i=1..16) flg2[i] = MUX ( (opbit[8]+opbit[7]) . reg2[5], flg1[i], res8[i] )
(i=1..16) rip6[i] = MUX ( (opbit[8]+opbit[7]) . reg2[6], rip5[i], res8[i] )
(i=1..16) rbp2[i] = MUX ( (opbit[8]+opbit[7]) . reg2[7], rbp1[i], res8[i] )

(* OPCODE 10 : MOV CST, REG1 *)
(i=1..16) rax7[i] = MUX ( opbit[10] . reg1[0], rax6[i], c[i] )
(i=1..16) rbx7[i] = MUX ( opbit[10] . reg1[1], rbx6[i], c[i] )
(i=1..16) rcx7[i] = MUX ( opbit[10] . reg1[2], rcx6[i], c[i] )
(i=1..16) rdx7[i] = MUX ( opbit[10] . reg1[3], rdx6[i], c[i] )
(i=1..16) rsp4[i] = MUX ( opbit[10] . reg1[4], rsp3[i], c[i] )
(i=1..16) flg3[i] = MUX ( opbit[10] . reg1[5], flg2[i], c[i] )
(i=1..16) rip7[i] = MUX ( opbit[10] . reg1[6], rip6[i], c[i] )
(i=1..16) rbp3[i] = MUX ( opbit[10] . reg1[7], rbp2[i], c[i] )



(* OPCODE 11 : MOV REG2, (REG1) *)

(i=1..16)readaddr[i] = MUX ( opbit[12], 0, vreg1[i] )

(i=1..16)readvalue[i] = RAM ( (j=1..12)readaddr[j+4] <i,4>, opbit[11], (j=1..12)vreg1[j+4] <i,4>, vreg2[i] )



(* OPCODE 12 : MOV (REG1), REG2 *)

(i=1..16) rax8[i] = MUX ( opbit[12] . reg2[0], rax7[i], readvalue[i] )
(i=1..16) rbx8[i] = MUX ( opbit[12] . reg2[1], rbx7[i], readvalue[i] )
(i=1..16) rcx8[i] = MUX ( opbit[12] . reg2[2], rcx7[i], readvalue[i] )
(i=1..16) rdx8[i] = MUX ( opbit[12] . reg2[3], rdx7[i], readvalue[i] )
(i=1..16) rsp5[i] = MUX ( opbit[12] . reg2[4], rsp4[i], readvalue[i] )
(i=1..16) flg4[i] = MUX ( opbit[12] . reg2[5], flg3[i], readvalue[i] )
(i=1..16) rip8[i] = MUX ( opbit[12] . reg2[6], rip7[i], readvalue[i] )
(i=1..16) rbp4[i] = MUX ( opbit[12] . reg2[7], rbp3[i], readvalue[i] )



(* OPCODE 13 : INT *)
out = opbit[13]



(* OPCODE 14 : SELECT *)
(* dernière étape *)



(*--- on incrémente RIP ---*)
(j=1..16) rip9[j] = add16 ( (j=1..16)rip0[j] <0,16> 1 )

(*--- on écrit nos drapeaux ---*)
cond = opbit[8] + opbit[9]
neq = any16 ( (j=1..16)sub12[j] )
flg[0] = MUX ( cond, flg4[0], neq )
flg[1] = MUX ( cond, flg4[1], sub12[0] )
(i=3..16) flg[i] = flg4[i]

(*--- écriture des registres ---*)
(i=1..16) rax[i] = rax8[i]
(i=1..16) rbx[i] = rbx8[i]
(i=1..16) rcx[i] = rcx8[i]
(i=1..16) rdx[i] = rdx8[i]
(i=1..16) rsp[i] = rsp5[i]
(i=1..16) rbp[i] = rbp4[i]

(* ce qui peut nous pousser à modifier rip :
opcode[4] = mov reg, rip,
opcode[6] = jmp reg,
opcode[10] = mov cst, rip
opcode[12] = mov (reg), rip
opcode[7,8,9] = add reg, rip
*)

(i=1..16) rip[i] = MUX ( ( opbit[7] + opbit[8] ) . reg2[6] + ( ( opbit[4] + opbit[10] + opbit[12] + opbit[9] ) . reg1[6] ) + ijmped, rip9[i], rip8[i] )



NUF out






















FUN any16 [ (j=1..16) x[j] ]
(i=1..8) z0[i] = x[2*i] + x[2*i+1]
(i=1..4) z1[i] = z0[2*i] + z0[2*i+1]
(i=1..2) z2[i] = z1[2*i] + z1[2*i+1]
z3 = z2[0] + z2[1]
NUF [ z3 ]

FUN shift1 [ (j=1..16) x[j] ]
y[15] = 0
(i=1..15) y[i] = x[i+1]
NUF [ (j=1..16) y[j] ]

FUN shift2 [ (j=1..16) x[j] ]
y[15] = 0
y[14] = 0
(i=1..14) y[i] = x[i+2]
NUF [ (j=1..16) y[j] ]

FUN shift4 [ (j=1..16) x[j] ]
(i=12..16) y[i] = 0
(i=1..12) y[i] = x[i+4]
NUF [ (j=1..16) y[j] ]

FUN shift8 [ (j=1..16) x[j] ]
(i=8..16) y[i] = 0
(i=1..8) y[i] = x[i+8]
NUF [ (j=1..16) y[j] ]

FUN shiftc [ (j=1..16) x[j], (j=1..4) c[j] ]
(i=1..16) y0p[i] = shift1 ( (j=1..16) x[j] )
(i=1..16) y0[i] = MUX ( c[3],  x[i], y0p[i] )

(i=1..16) y1p[i] = shift2 ( (j=1..16) y0[j] )
(i=1..16) y1[i] = MUX ( c[2],  y0[i], y1p[i] )

(i=1..16) y2p[i] = shift4 ( (j=1..16) y1[j] )
(i=1..16) y2[i] = MUX ( c[1],  y1[i], y2p[i] )

(i=1..16) y3p[i] = shift8 ( (j=1..16) y2[j] )
(i=1..16) y3[i] = MUX ( c[0],  y2[i], y3p[i] )
NUF [ (j=1..16) y3[j] ]
