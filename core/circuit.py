# circuit.py

# définition d'un circuit de portes logiques

class Circuit ( ) :
    def __init__ ( self, multi_gates, ext_sync, inputs, outputs ) :
        self.multi_gates = multi_gates
        self.ext_sync = ext_sync

        self.inputs = inputs
        self.outputs = outputs

    def run ( self, inputs, ext ) :
        tab = { '0' : False, '1' : True }
        for x in inputs :
            tab[x] = inputs[x]

        for gates in self.multi_gates :
            for gate in gates : tab[gate[1]] = gate[2].get ( [tab[x] for x in gate[0]], ext )

        for sync in self.ext_sync :
            sync.trigger ( tab, ext )

        return {y : tab[y] for y in self.outputs}

    def nb_cycles ( self ) :
        return ( len ( self.multi_gates ), sum ( len ( gates ) for gates in self.multi_gates ) )

# fonctions utiles 

def read_var ( v ) :
    sp_v = v.split ( '_' )
    if len(sp_v) == 1 :
        return ( v, None )
    elif len(sp_v) == 2 :
        return ( sp_v[0], int(sp_v[1]) )
    print ( "<!> Variable non conforme aux conventions d'écriture :", v )

def get_inputs ( circuit ) :
    inputs = { }
    root, js = None, []
    for inp in circuit.inputs :
        r,s = read_var ( inp )
        if s == None :
            if root != None :
                lv = [bool(int(x)) for x in input ( "inputs " + root + "[" + str ( js[0] ) + ".." + str(js[-1]) + "] : " )]
            i = 0
            for j in js :
                inputs[root+'_'+str(j)] = lv[i]
                i += 1
                root, js = None, []
                inputs[r] = bool(int(input ( "input " + r + " : " )))
        else :
            if root == None :
                root, js = r, [s]
            elif root != r :
                lv = [bool(int(x)) for x in input ( "inputs " + root + "[" + str ( js[0] ) + ".." + str(js[-1]) + "] : " )]
                i = 0
                for j in js :
                    inputs[root+'_'+str(j)] = lv[i]
                    i += 1
                root, js = r, [s]
            else :
                js.append ( s )

    if root != None :
        lv = [bool(int(x)) for x in input ( "inputs " + root + "[" + str ( js[0] ) + ".." + str(js[-1]) + "] : " )]
        i = 0
        for j in js :
            inputs[root+'_'+str(j)] = lv[i]
            i += 1
        root, js = None, []
    return inputs 

def write_outputs ( otp ) :
    roots = { }
    for outp in otp :
        r,s = read_var ( outp )
        if r in roots and s != None :
            roots [r].append ( ( s, otp[outp] ) )
        elif r in roots :
            print ( "<!> Convention non respectées pour le nommage d'une variable :", outp )
        else :
            roots [r] = [ ( s, otp[outp] ) ]
            for r in roots :
                if roots[r][0][0] == None :
                    print ( "outputs " + r + " :", int(roots[r][0][1]) )
                else :
                    print ( "outputs " + r + "[" + str(roots[r][0][0]) + ".." + str(roots[r][-1][0]) + "] :", ''.join ( [str(int(roots[r][i][1])) for i in range(len(roots[r])) ]) )