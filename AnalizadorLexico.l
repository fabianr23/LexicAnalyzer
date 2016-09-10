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

aburrido |
ácido |
alegre |
alto |
amargo |
ancho |
atrevido |
azul |
bajo |
blanco |
blando |
bonito |
buen |
bueno |
caliente |
capaz |
central |
chungo |
común |
conocido |
contento |
corto  |
débil  |
delgado |
derecho |
diferente |
difícil | 
divertido |
dulce |
duro |
enfermo |
estrecho |
exterior |
fácil |
falso |
famoso |
feo |
final |
fresco |
frío |
fuerte |
gordo |
grande |
guapo |
húmedo |
igual |
imposible |
interesante |
interior |
inútil |
izquierdo |
joven |
largo |
lento |
listo |
malo |
masivo |
mayor |
mejor |
menor |
mucho |
muerto |
musical |
nacional |
natural |
negro |
nuevo |
peor |
pequeño |
perfecto |
pobre |
poco |
popular |
posible |
primer |
primero |
principal |
próximo |
rápido |
raro |
recto |
rico |
rojo |
salado |
sano |
seco |
segundo |
simple |
social |
solo |
tímido |
tonto |
triste |
útil |
verdadero |
verde |
viejo |
vivo { printf("%s : es un adjetivo \n", yytext);

}

abrelatas |
aire |
Andrea |
Andrés |
animal |
Antonia |
Antonio |
Argentina |
átomo |
Belén |
Beto |
botón |
Brasil |
Bruselas |
cable |
calculadora |
carpeta |
cartera |
celular |
cerradura |
césped |
Chile |
chrome |
círculo |
ciudad |
ciruela |
claridad |
clavel |
competencia |
computadora |
cuerda |
Dinamarca |
diodo |
disposición |
drogas |
escuela |
esfera |
esquina |
eugenia |
excel |
Fernanda |
Francia |
galleta |
Guadalupe |
guitarra |
hoja |
idea |
Juanita |
juguete |
julio |
loros |
manantial |
mausoleo |
mesa |
México |
molécula |
mouse |
mueble |
Nicolás |
notas |
paint |
pantalla |
París |
parlante |
pelusa |
periférico |
perro |
piscina |
planta |
Polonia |
posavasos |
programa |
puerta |
química |
rectángulo |
ropa |
silla |
sonido |
suciedad |
sustancia |
televisor |
tierra |
tigre |
Tomás |
trabajador |
trabajo |
triángulo |
tulipán |
utensilio |
vaso |
ventana |
vidrio |
violín |
visita { printf("%s : es un sustantivo \n", yytext);

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
