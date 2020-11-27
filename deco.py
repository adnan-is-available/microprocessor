# deco.py

def usage_fun ( ) :
    print ( "usage :" )

def main_args ( f ) :
    def res ( argv, opt = { }, usage = usage_fun ) :
        opt_tar = None
        for arg in argv :
            if opt_tar != None :
                opt[opt_tar][1] = arg
                opt_tar = None
            elif arg in opt :
                if opt[arg][1] == None :
                    opt[arg][0] = True
                else :
                    opt[arg][0] = True
                    opt_tar = arg
            else :
                print ( "{} est une commande non reconnue.".format ( arg ) )
                usage ( )
                exit ( 1 )
        if opt_tar != None :
            print ( "{} nécessite un argument.".format ( opt_tar ) )
            usage ( )
            exit ( 1 )
        
        _kargs = {}
        for arg in opt :
            if opt[arg][1] == None :
                _kargs[arg] = opt[arg][0]
            else :
                _kargs[arg] = opt[arg][1]
        
        return f ( **_kargs )
    return res