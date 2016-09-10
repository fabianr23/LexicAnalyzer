%{




%}

%%
[\t]+ /*ignore whitespaces */;

el   |
la   |
los  |
las  |
un   |
uno  |
una  |
unos | 
una { printf ("%s: es un articulo \n" ,yytext);
}
	
abrir |
acabar |
aconsejar |
amar |
apoyar |
aprender | 
ayudar |
bailar |
beber |
caer |
cambiar | 
cantar |
cerrar |
cocinar |
comenzar |
comer |
comparar | 
comprar |
conducir |
contar |
continuar | 
correr |
cortar |
costar |
creer |
dar |
decidir | 
decir |
descansar | 
describir |
destruir |
doler |
dormir |
elegir |
empezar |
empujar |
encontrar | 
encontrarse |
enseñar |
entender |
esconder |
escribir |
escuchar |
esperar |
estudiar |
explicar |
ganar |
gritar |
hablar |
hacer |
intentar | 
ir |
jugar | 
lanzar |
lavar |
leer |
limpiar | 
llamar |
llegar |
llenar |
llorar |
luchar |
mandar |
mejorar |
mentir |
mirar |
morir |
mostrar | 
mover |
necesitar | 
ocurrir |
odiar |
ofrecer | 
olvidar |
oír |
pagar | 
pensar | 
perder |
perdonar | 
permitir |
poder |
poner |
preferir |
preguntar | 
preparar |
prometer |
pulsar |
quedarse | 
quemar |
querer |
recibir |
reconocer | 
recordar |
repetir |
responder | 
reír |
saber |
sacar |
salir |
saltar |
sentar |
sentir |
ser |
sonreír | 
tener |
terminar | 
tirar |
tocar |
trabajar | 
traer |
tratar |
usar |
vender | 
venir |
ver |
viajar | 
visitar |
vivir |
volver |
volverse { printf("%s : es un verbo \n", yytext);

}
 
[a-zA-Z]+ {printf("%s : No es un articulo \n", yytext);

	}




.|\n {
	ECHO; /*normal default */
}

%%
main(){
	yylex();
}
