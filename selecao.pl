nome(brasil, "Seleção Brasileira de Futebol").
associacao(brasil, cbf).
confederacao(brasil, conmebol).

apelido(brasil, "seleção verde-amarela").
apelido(brasil, "seleção canarinho").
apelido(brasil, "seleção amarelinha").

/* selecao(PAIS) */
selecao(brasil).
selecao(alemanha).
selecao(nicaragua).
selecao(uruguai).
selecao(argentina).
selecao(suecia).
selecao(italia).
selecao(franca).

selecao(PAIS) :- ganhou(PAIS, _, _).

/* participou(SELECAO, COMPETICAO, ANO) */
participou(brasil, copadomundo, 1930).
participou(brasil, copadomundo, 1934).
participou(brasil, copadomundo, 1938).
participou(brasil, copadomundo, 1950).
participou(brasil, copadomundo, 1954).
participou(brasil, copadomundo, 1958).
participou(brasil, copadomundo, 1962).
participou(brasil, copadomundo, 1966).
participou(brasil, copadomundo, 1970).
participou(brasil, copadomundo, 1974).
participou(brasil, copadomundo, 1978).
participou(brasil, copadomundo, 1982).
participou(brasil, copadomundo, 1986).
participou(brasil, copadomundo, 1990).
participou(brasil, copadomundo, 1994).
participou(brasil, copadomundo, 1998).
participou(brasil, copadomundo, 2002).
participou(brasil, copadomundo, 2006).
participou(brasil, copadomundo, 2010).
participou(brasil, copadomundo, 2014).
participou(alemanha, copadomundo, 2014).

participou(SELECAO, COMPETICAO, ANO) :- ganhou(SELECAO, COMPETICAO, ANO).
competicao(COMPETICAO) :- participou(_, COMPETICAO, _).
todascopas(PAIS) :- aggregate_all(count, participou(PAIS, copadomundo, _), Count), Count = 20.

/* ganhou(SELECAO, COMPETICAO, ANO) */
ganhou(brasil, copadomundo, 1958).
ganhou(brasil, copadomundo, 1962).
ganhou(brasil, copadomundo, 1970).
ganhou(brasil, copadomundo, 1994).
ganhou(brasil, copadomundo, 2002).

ganhou(alemanha, copadomundo, 1954).
ganhou(alemanha, copadomundo, 1974).
ganhou(alemanha, copadomundo, 1990).
ganhou(alemanha, copadomundo, 2014).
ganhou(italia, copadomundo, 1934).
ganhou(italia, copadomundo, 1938).
ganhou(italia, copadomundo, 1982).
ganhou(italia, copadomundo, 2006).
ganhou(argentina, copadomundo, 1978).
ganhou(argentina, copadomundo, 1986).
ganhou(uruguai, copadomundo, 1930).
ganhou(uruguai, copadomundo, 1950).
ganhou(franca, copadomundo, 1998).
ganhou(inglaterra, copadomundo, 1996).
ganhou(espanha, copadomundo, 2010).

ganhou(brasil, copadasamericas, 1919).
ganhou(brasil, copadasamericas, 1922).
ganhou(brasil, copadasamericas, 1949).
ganhou(brasil, copadasamericas, 1989).
ganhou(brasil, copadasamericas, 1997).
ganhou(brasil, copadasamericas, 1999).
ganhou(brasil, copadasamericas, 2004).
ganhou(brasil, copadasamericas, 2007).

ganhou(brasil, copadasconfederacoes, 1997).
ganhou(brasil, copadasconfederacoes, 2005).
ganhou(brasil, copadasconfederacoes, 2009).
ganhou(brasil, copadasconfederacoes, 2013).

ganhou(brasil, olimpiadas, 2016).

ganhou(brasil, campeonatopanamericano, 1952).
ganhou(brasil, campeonatopanamericano, 1956).

ganhou(brasil, jogospanamericanos, 1963).
ganhou(brasil, jogospanamericanos, 1979).
ganhou(brasil, jogospanamericanos, 1987).


pentacampeao(PAIS) :- aggregate_all(count, ganhou(PAIS, copadomundo, _), Count), Count = 5.
tetracampeao(PAIS) :- aggregate_all(count, ganhou(PAIS, copadomundo, _), Count), Count = 4.
tricampeao(PAIS) :- aggregate_all(count, ganhou(PAIS, copadomundo, _), Count), Count = 3.
bicampeao(PAIS) :- aggregate_all(count, ganhou(PAIS, copadomundo, _), Count), Count = 2.
campeaomundial(PAIS) :- ganhou(PAIS,copadomundo,_).
campeaoolimpico(PAIS) :- ganhou(PAIS,olimpiadas,_).
    
/* fezparte(JOGADOR, SELECAO) */
fezparte(rivellino, brasil).
fezparte(zico, brasil).
fezparte(ronaldo, brasil).
fezparte(romario, brasil).
fezparte(ronaldinhogaucho, brasil).
fezparte(zagallo, brasil).
fezparte(carlosalberto, brasil).
fezparte(robertocarlos, brasil).
fezparte(tostao, brasil).
fezparte(didi, brasil).
fezparte(vava, brasil).
fezparte(bellini, brasil).
fezparte(bebeto, brasil).
fezparte(rivaldo, brasil).
fezparte(neymar, brasil).

/* fazparte(JOGADOR, SELECAO) */
/* elenco atual da seleção */
fazparte(JOGADOR, brasil) :- posicao(JOGADOR, _, _).

/* posicao(JOGADOR, NUMERO, POSICAO) */
posicao(alisson, 1, goleiro).
posicao(cassio, 16, goleiro).
posicao(ederson, 23, goleiro).
posicao(danilo, 2, lateral).
posicao(filipeluis, 6, lateral).
posicao(marcelo, 12, lateral).
posicao(fagner, 22, lateral).
posicao(miranda, 3, zagueiro).
posicao(pedrogeromel, 4, zagueiro).
posicao(marquinhos, 13, zagueiro).
posicao(thiagosilva, 14, zagueiro).
posicao(casemiro, 5, volante).
posicao(renatoaugusto, 8, meia).
posicao(philippecoutinho, 11, meia).
posicao(paulinho, 15, volante).
posicao(fernandinho, 17, volante).
posicao(fred, 18, meia).
posicao(willian, 19, meia).
posicao(douglascosta, 7, atacante).
posicao(gabrieljesus, 9, atacante).
posicao(neymar, 10, atacante).
posicao(taison, 20, atacante).
posicao(robertofirmino, 21, atacante).

posicao(JOGADOR, POSICAO) :- posicao(JOGADOR, _, POSICAO).
numero(JOGADOR, NUMERO) :- posicao(JOGADOR, NUMERO, _).

/* clube(JOGADOR, CLUBE) */
clube(alisson, roma).
clube(cassio, corinthians).
clube(ederson, manchestercity).
clube(danilo, manchestercity).
clube(filipeluis, atleticodemadrid).
clube(marcelo, realmadrid).
clube(fagner, corinthians).
clube(miranda, internazionale).
clube(pedrogeromel, gremio).
clube(marquinhos, parissaintgermain).
clube(thiagosilva, parissaintgermain).
clube(casemiro, realmadrid).
clube(renatoaugusto, beijingguoan).
clube(philippecoutinho, barcelona).
clube(paulinho, barcelona).
clube(fernandinho, manchestercity).
clube(fred, shakhtardonetsk).
clube(willian, chelsea).
clube(douglascosta, juventus).
clube(gabrieljesus, manchestercity).
clube(neymar, parissaintgermain).
clube(taison, shakhtardonetsk).
clube(robertofirmino, liverpool).

/* fornecedor(MARCA, ANO_INICIO, ANO_FIM) */
fornecedor(athleta, 1954, 1977).
fornecedor(adidas, 1977, 1981).
fornecedor(topper, 1981, 1990).
fornecedor(umbro, 1991, 1996).
fornecedor(nike, 1997, 2018).

fornecedor(MARCA, ANO) :- fornecedor(MARCA, INI, FIM), ANO >= INI, ANO =< FIM.

fornecedor(brasil, MARCA) :- fornecedor(MARCA, _, _).

/* rival (SELECAO_1, SELECAO_2). */
rival(brasil, argentina).
rival(brasil, uruguai).

/* titulo (TITULO, JOGADOR, ANO) */
titulo(melhordomundo, romario, 1994).
titulo(melhordomundo, ronaldo, 1996).
titulo(melhordomundo, ronaldo, 1997).
titulo(melhordomundo, ronaldo, 2002).
titulo(melhordomundo, ronaldinhogaucho, 2004).
titulo(melhordomundo, ronaldinhogaucho, 2005).
titulo(melhordomundo, kaka, 2007).

/* uniforme(TIPO_MEMBRO, TIPO_UNIFORME, COR_1, COR_2) */
uniforme(jogador, principal, amarelo, azul).
uniforme(jogador, alternativo, azul, branco).
uniforme(goleiro, principal, verde, verde).
uniforme(goleiro, principal, cinza, cinza).
uniforme(goleiro, principal, preto, roxo).
uniforme(jogador, treino, azul, azul).
uniforme(goleiro, treino, preto, preto).
uniforme(comissaotecnica, treino, preto, preto).


/* tecnico(TECNICO, ANO_INICIO, ANO_FIM) */
tecnico(tite, 2016, 2018).
tecnico(dunga, 2014, 2016).
tecnico(felipao, 2013, 2014).
tecnico(manomenezes, 2010, 2012).
tecnico(dunga, 2006, 2010).
tecnico(parreira, 2003, 2006).
tecnico(felipao, 2001, 2002).
tecnico(leao, 2000, 2001).

tecnico(NOME, ANO) :- tecnico(NOME, INI, FIM), ANO >= INI, ANO =< FIM.

tecnico(brasil) :- tecnico(_, _, _).

/* patrocina(MARCA, ANO_INICIO, ANO_FIM) */
patrocina(guaranaantarctica, 2001, 2019).
patrocina(guaranaantarctica, 2005, 2014).
patrocina(guaranaantarctica, 2008, 2022).
patrocina(extra, 2009, 2018).
patrocina(nestle, 2010, 2018).
patrocina(mastercard, 2012, 2020).
patrocina(samsung, 2013, 2016).
patrocina(gillette, 2016, 2018).
patrocina(gol, 2013, 2017).
patrocina(unimed, 2013, 2019).
patrocina(chevrolet, 2014, 2018).

patrocina(MARCA, ANO) :- patrocina(MARCA, INI, FIM), ANO >= INI, ANO =< FIM.

patrocina(brasil, MARCA) :- patrocina(MARCA, _, _).

/* jogou(SELECAO_1, PLACAR_SELECAO_1, PLACAR_SELECAO_2,SELECAO_2, COMPETICAO, ANO) */
jogou(brasil, 1, 7, alemanha, copadomundo, 2014).
jogou(brasil, 14, 0, nicaragua, jogospanamericanos, 1975).
jogou(brasil, 0, 6, uruguai, campeonatosulamericano, 1920).
jogou(brasil, 5, 2, suecia, copadomundo, 1958).
jogou(brasil, 4, 1, italia, copadomundo, 1970).
jogou(brasil, 0, 3, franca, copadomundo, 1998).
jogou(brasil, 2, 0, alemanha, copadomundo, 2002).
jogou(brasil, 0, 0, italia, copadomundo, 1994).

jogou(SELECAO1, P1, P2, SELECAO2, COMPETICAO, ANO) :- jogou(SELECAO2, P2, P1, SELECAO1, COMPETICAO, ANO).
ganhoupartida(brasil, ADVERSARIO, CAMPEONATO, ANO) :- jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO), BR > ADV.
perdeupartida(brasil, ADVERSARIO, CAMPEONATO, ANO) :- jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO), BR < ADV.

/* sede(COMPETICAO, ANO, LOCAL) */
sede(copadomundo, 1958, suecia).
sede(copadomundo, 1962, chile).
sede(copadomundo, 1970, mexico).
sede(copadomundo, 1994, eua).
sede(copadomundo, 2002, coreiadosul).
sede(copadomundo, 2002, japao).
sede(olimpiadas, 2016, riodejaneiro).

/* continente(CONTINENTE). */
continente(america). 
continente(europa).
continente(asia).

/* ficaem(CIDADE, PAIS)
   ficaem(PAIS, SUBCONTINENTE).
   ficaem(SUBCONTINENTE, CONTINENTE). */

ficaem(riodejaneiro, brasil).
ficaem(brasil, americadosul).
ficaem(suecia, europa).
ficaem(mexico, americadonorte).
ficaem(chile, americadosul).
ficaem(eua, americadonorte).
ficaem(coreiadosul, asia).
ficaem(japao, asia).
ficaem(americadosul, america).
ficaem(americadonorte, america).

ficaem(roma, italia).
ficaem(saopaulo, brasil).
ficaem(machester, inglaterra).
ficaem(madri, espanha).
ficaem(milao, italia).
ficaem(portoalegre, brasil).
ficaem(pequim, china).
ficaem(barcelona, espanha).
ficaem(donetsk, ucrania).
ficaem(londres, inglaterra).
ficaem(turim, italia).
ficaem(liverpool, inglaterra).
ficaem(paris, franca).

ficaem(inglaterra, europa).
ficaem(espanha, europa).
ficaem(italia, europa).
ficaem(franca, europa).
ficaem(china, asia).
ficaem(ucrania, europa).

/*ficaem(CLUBE,CIDADE)*/
ficaem(roma, roma).
ficaem(corinthians, saopaulo).
ficaem(manchestercity, manchester).
ficaem(atleticodemadrid, madri).
ficaem(internazionale, milao).
ficaem(gremio, portoalegre).
ficaem(parissaintgermain, paris).
ficaem(realmadrid, madri).
ficaem(beijingguoan, pequim).
ficaem(barcelona, barcelona).
ficaem(shakhtardonetsk, donetsk).
ficaem(chelsea, londres).
ficaem(juventus, turim).
ficaem(liverpool, liverpool).

/*ficaem(CAMPEONATO,CONTINENTE)*/
ficaem(america,libertadores).
ficaem(europa,championsleague).



ficaem(X, Z) :- pertence_a(X, Z).
pertence_a(X, Z) :- ficaem(X, Y), ficaem(Y, Z).

jogana(JOGADOR,CAMPEONATO) :- clube(JOGADOR,X), ficaem(X,CAMPEONATO).


