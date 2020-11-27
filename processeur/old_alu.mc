FUN add1 [ x, y ]
zalpha = x^y
zbeta = n(x^y)
ralpha = x.y
rbeta = (x+y)
NUF [ zalpha, zbeta, ralpha, rbeta ]

FUN add2 [ (j=1..2) x[j], (j=1..2) y[j] ]
z1alpha, z1beta, r1alpha, r1beta = add1 ( x[1] y[1] )
z0alpha, z0beta, r0alpha, r0beta = add1 ( x[0] y[0] )

zalpha[1] = z1alpha
zalpha[0] = MUX ( r1alpha, z0alpha, z0beta )

zbeta[1] = z1beta
zbeta[0] = MUX ( r1beta, z0alpha, z0beta )

ralpha = MUX ( r1alpha, r0alpha, r0beta )
rbeta = MUX ( r1beta, r0alpha, r0beta )

NUF [ (j=1..2) zalpha[j], (j=1..2) zbeta[j], ralpha, rbeta ]

FUN add4 [ (j=1..4) x[j], (j=1..4) y[j] ]
(j=1..2)z1alpha[j], (j=1..2)z1beta[j], r1alpha, r1beta = add2 ( (j=1..2) x[j+2] (j=1..2) y[j+2] )
(j=1..2)z0alpha[j], (j=1..2)z0beta[j], r0alpha, r0beta = add2 ( (j=1..2) x[j] (j=1..2) y[j] )

(j=1..2) zalpha[j+2] = z1alpha[j]
(j=1..2) zalpha[j] = MUX ( r1alpha, z0alpha[j], z0beta[j] )

(j=1..2) zbeta[j+2] = z1beta[j]
(j=1..2) zbeta[j] = MUX ( r1beta, z0alpha[j], z0beta[j] )

ralpha = MUX ( r1alpha, r0alpha, r0beta )
rbeta = MUX ( r1beta, r0alpha, r0beta )

NUF [ (j=1..4) zalpha[j], (j=1..4) zbeta[j], ralpha, rbeta ]

FUN add8 [ (j=1..8) x[j], (j=1..8) y[j] ]
(j=1..4)z1alpha[j], (j=1..4)z1beta[j], r1alpha, r1beta = add4 ( (j=1..4) x[j+4] (j=1..4) y[j+4] )
(j=1..4)z0alpha[j], (j=1..4)z0beta[j], r0alpha, r0beta = add4 ( (j=1..4) x[j] (j=1..4) y[j] )

(j=1..4) zalpha[j+4] = z1alpha[j]
(j=1..4) zalpha[j] = MUX ( r1alpha, z0alpha[j], z0beta[j] )

(j=1..4) zbeta[j+4] = z1beta[j]
(j=1..4) zbeta[j] = MUX ( r1beta, z0alpha[j], z0beta[j] )

ralpha = MUX ( r1alpha, r0alpha, r0beta )
rbeta = MUX ( r1beta, r0alpha, r0beta )

NUF [ (j=1..8) zalpha[j], (j=1..8) zbeta[j], ralpha, rbeta ]

FUN add16 [ (j=1..16) x[j], (j=1..16) y[j], gamma ]
(j=1..8)z1alpha[j], (j=1..8)z1beta[j], r1alpha, r1beta = add8 ( (j=1..8) x[j+8] (j=1..8) y[j+8] )
(j=1..8)z0alpha[j], (j=1..8)z0beta[j], r0alpha, r0beta = add8 ( (j=1..8) x[j] (j=1..8) y[j] )

(j=1..8) zalpha[j+8] = z1alpha[j]
(j=1..8) zalpha[j] = MUX ( r1alpha, z0alpha[j], z0beta[j] )

(j=1..8) zbeta[j+8] = z1beta[j]
(j=1..8) zbeta[j] = MUX ( r1beta, z0alpha[j], z0beta[j] )

ralpha = MUX ( r1alpha, r0alpha, r0beta )
rbeta = MUX ( r1beta, r0alpha, r0beta )

(i=1..16) z[i] = MUX ( gamma, zalpha[i], zbeta[i] )

NUF [ (j=1..16)z[j] ]

FUN and16 [ (j=1..16) x[j], (j=1..16) y[j] ]
(i=1..16) z[i] = x[i] . y[i]
NUF [ (j=1..16) z[j] ]

FUN or16 [ (j=1..16) x[j], (j=1..16) y[j] ]
(i=1..16) z[i] = x[i] + y[i]
NUF [ (j=1..16) z[j] ]

FUN xor16 [ (j=1..16) x[j], (j=1..16) y[j] ]
(i=1..16) z[i] = x[i] ^ y[i]
NUF [ (j=1..16) z[j] ]

FUN not16 [ (j=1..16) x[j] ]
(i=1..16) z[i] = n(x[i])
NUF [ (j=1..16) z[j] ]

FUN sub16 [ (j=1..16) x[j], (j=1..16) y[j] ]
(j=1..16) ny[j] = not16((j=1..16)y[j])
(j=1..16) z[j] = add16 ( (j=1..16) x[j] (j=1..16) ny[j] 1 )
NUF [ (j=1..16) z[j] ]

FUN neg16 [ (j=1..16) x[j] ]
(j=1..16) z[j] = sub16 ( <0,16> (j=1..16)x[j] )
NUF [ (j=1..16) z[j] ]
