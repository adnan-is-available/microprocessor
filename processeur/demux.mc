FUN demux3 [ (j=1..3) x[j] ]
(j=1..3) nx[j] = n(x[j])
yp[0] = nx[1] . nx[2]
yp[1] = nx[1] . x[2]
yp[2] = x[1] . nx[2]
yp[3] = x[1] . x[2]

(j=1..4) y[j] = nx[0] . yp[j]
(j=1..4) y[4+j] = x[0] . yp[j]
NUF [ (j=1..8) y[j] ]

FUN demux4 [ (j=1..4) x[j] ]
(j=1..8) yp[j] = demux3 ( (j=1..3) x[1+j] )
nx = n(x[0])
(j=1..8) y[j] = nx . yp[j]
(j=1..8) y[8+j] = x[0] . yp[j]
NUF [ (j=1..16) y[j] ]

FUN cast [ x, z ]
y[15] = (x+z)
(j=1..15) y[j] = x
NUF [ (j=1..16) y[j] ]