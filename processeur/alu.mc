FUN add1 [ x, y, c ]
r = ((x+y).c)+(x.y)
z = x ^ y ^ c
NUF [ r, z ]

FUN add16 [ (j=1..16)x[j], (j=1..16)y[j], rap ]
r[0] = rap
(i=1..16) ( r[i+1], z[15-i] ) = add1 ( x[15-i] y[15-i] r[i] )
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
