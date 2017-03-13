package org.compi2.codigo3d.parser;

import java_cup.runtime.Symbol;

//Scanner para generar C3D
%%
%{
    //Código de usuario
    

%}

%cup
%class scanner
%public
%line
%char
%column
%full

MAS		= "+"
MENOS		= "-"
MULT       	= "*"
DIV             = "/"
POT             = "^"
PAR_IZQ         = "("
PAR_DER         = ")"
IGUAL2          = "=="
DIFE            = "!="
MAYORQ          = ">"
MENORQ          = "<"
MENORQI         = "<="
MAYORQI         = ">="
ANDR            = "&&"
ORR             = "||"
NOTR            = "!"

ID              = [A-Za-z][_0-9A-Za-z]*
ENTERO          = [0-9]+
DECIMAL         = [0-9]+"."[0-9]+

SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]

%%

<YYINITIAL> {ID}            { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }
<YYINITIAL> {ENTERO}        { return new Symbol(sym.ENTERO, yyline, yycolumn, yytext()); }
<YYINITIAL> {DECIMAL}       { return new Symbol(sym.DECIMAL, yyline, yycolumn, yytext()); }
<YYINITIAL> {MAS}           { return new Symbol(sym.MAS, yyline, yycolumn, null); }
<YYINITIAL> {MENOS}	    { return new Symbol(sym.MENOS, yyline, yycolumn, null); }
<YYINITIAL> {MULT}          { return new Symbol(sym.MULT, yyline, yycolumn, null); }
<YYINITIAL> {DIV}	    { return new Symbol(sym.DIV, yyline, yycolumn, null); }
<YYINITIAL> {POT}	    { return new Symbol(sym.POT, yyline, yycolumn, null); }
<YYINITIAL> {PAR_IZQ}	    { return new Symbol(sym.PAR_IZQ, yyline, yycolumn, null); }
<YYINITIAL> {PAR_DER}	    { return new Symbol(sym.PAR_DER, yyline, yycolumn, null); }
<YYINITIAL> {IGUAL2}	    { return new Symbol(sym.IGUAL2, yyline, yycolumn, null); }
<YYINITIAL> {DIFE}	    { return new Symbol(sym.DIFE, yyline, yycolumn, null); }
<YYINITIAL> {MAYORQ}	    { return new Symbol(sym.MAYORQ, yyline, yycolumn, null); }
<YYINITIAL> {MENORQ}	    { return new Symbol(sym.MENORQ, yyline, yycolumn, null); }
<YYINITIAL> {MENORQI}	    { return new Symbol(sym.MENORQI, yyline, yycolumn, null); }
<YYINITIAL> {MAYORQI}	    { return new Symbol(sym.MAYORQI, yyline, yycolumn, null); }
<YYINITIAL> {ANDR}	    { return new Symbol(sym.ANDR, yyline, yycolumn, null); }
<YYINITIAL> {ORR}	    { return new Symbol(sym.ORR, yyline, yycolumn, null); }
<YYINITIAL> {NOTR}	    { return new Symbol(sym.NOTR, yyline, yycolumn, null); }



<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}

<YYINITIAL>. {
        String errLex = "Error léxico, caracter irreconocible: '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+yycolumn;
        System.err.println(errLex);
}