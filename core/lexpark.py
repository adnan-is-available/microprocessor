# lexpark.py

from lark import Lark, tree

grammar = """
?start : ( avoid | fun )*
?fun : decl avoid (eq avoid)+ undecl
?avoid : NEWLINES -> favoid
?decl : "FUN" NAME (var)+ -> fun_decl
	  | "FUN" NAME "[" multivar "]" -> fun_mdecl
?undecl : "NUF" (var)+ -> fun_undecl
		| "NUF" "[" multivar "]" -> fun_mundecl
?eq : sindex var "=" exp -> sliced_eq
	| var "=" exp -> simple_eq
	| multivar "=" expcall -> call_eq
	| sindex "(" multivar ")" "=" expcall -> scall_eq
	| avoid -> eavoid
	| comment -> eavoid
?comment: "(*" /[^*]/* "*)"
?multivar : var -> mvar_var
		  | sindex var -> mvar_idx
		  | multivar ("," multivar)* -> mvar_cat
?expcall : NAME "(" mexp ")" -> exp_call
?var : varname -> varname_simple
	| varname "[" index "]" -> varname_indexed
?busvar : exp -> simple_busvar
		| sindex exp -> sliced_busvar
?bus : "[" busvar ("|" busvar)* "]" -> bbus
?mexp : exp -> mexp_exp
	  | sindex exp -> mexp_idx
	  | "<" index "," index ">" -> mexp_cst
	  | mexp (" " mexp)* -> mexp_cat
?exp : BOOL -> exp_cst
	 | var -> exp_acces
	 | exp "+" exp -> exp_or
	 | exp "^" exp -> exp_xor
	 | "(" exp ")"
	 | exp "." exp -> exp_and
	 | exp "@" exp -> exp_nand
	 | "n" "(" exp ")" -> exp_not
	 | "MUX" "(" exp "," exp "," exp ")" -> exp_mux
	 | "REG" "(" exp ")" -> exp_reg
	 | "ROM" "(" mexp ")" -> exp_rom
	 | "RAM" "(" mexp "," exp "," mexp "," exp ")" -> exp_ram
?varname : NAME
!index : INDI -> i_idx
		| INDJ -> j_idx
		| NUM -> cst_idx
		| index "+" index -> add_idx
		| index "-" index -> sub_idx
		| "(" index ")"
		| index "*" index -> mul_idx
		| index "!" index -> pow_idx
?sindex : "(" (INDI | INDJ | INDK ) "=" NUM  ".." NUM ")"
INDI : "i"
INDJ : "j"
INDK : "k"
BOOL : "1" | "0"
NUM : ("0".."9")+
NAME : ("a".."z" | "A".."Z") ("a".."z" | "A".."Z" | "0".."9")*
NEWLINES : "\\n"+
%ignore " " | "\\t"
"""

gram = Lark ( grammar )

def parse ( strings_nl ) :
	return gram.parse ( strings_nl )


# déboggage...
if False :
	with open ( "test.mc", 'r' ) as file :
		tree = parse ( file.read ( ) )
		print ( tree.pretty ( ) )