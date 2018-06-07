/*
1. O Brasil já venceu alguma Copa do Mundo na Europa?
*/

?- ganhou_copa_em_continente(brasil, europa).

/*
2. Quem ganhou a Copa do Mundo no ano em que o Brasil perdeu uma partida por uma diferença de 6 gols?
*/

?- jogou(brasil, GOLS1, GOLS2, _, copadomundo, ANO), ganhou(VENCEDOR, copadomundo, ANO), 6 is P2-P1, !.

/*
3. A seleção já teve um mesmo técnico durante dois períodos de tempo diferentes?
*/
?- tecnico_2_periodos(brasil).

/*
4. Qual é a cor do uniforme que o Neymar usa nos treinos da seleção?
*/

?- posicao(neymar, _, POS), tipo_posicao(POS, TIPO), uniforme(TIPO, treino, COR1, COR2).

/*
5. A seleção brasileira participou de todas as Copas do Mundo até hoje?
*/

?- todas_copas(brasil).

/*
6. Quem é o atual fornecedor de material esportivo da seleção brasileira?
*/

?- ano_atual(ANO), fornecedor(MARCA, ANO), !.

/*
7. Há algum jogador no elenco atual da seleção que joga em um time chinês?
*/

joga_no_time(JOGADOR, brasil), joga_no_time(JOGADOR, TIME), baseado_em(TIME, CIDADE), fica_em(CIDADE, china).

/*
8. O Neymar atualmente joga na Copa Libertadores da América?
*/

?- joga_no_campeonato(neymar, libertadores).

/*
9. Em qual time joga o camisa 15 da seleção?
*/

?- posicao(NOME, 15, _), joga_no_time(NOME, TIME), TIME \== brasil.

/*
10. Quem era o técnico da seleção na última vez que o Brasil venceu a Copa do Mundo?
*/

?- ultima_vitoria_na_copa(ANO), tecnico(NOME, ANO), !.
