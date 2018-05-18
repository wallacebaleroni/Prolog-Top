nome(brasil, "Seleção Brasileira de Futebol").
associacao(brasil, cbf).
confederacao(brasil, conmebol).

apelido(brasil, "seleção verde-amarela").
apelido(brasil, "seleção canarinho").
apelido(brasil, "seleção amarelinha").

participou(p) :- ganhou(p).

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

todascopas(PAIS) :- aggregate_all(count, participou(PAIS,copadomundo,_), Count),Count = 20.

ganhou(brasil, copadomundo, 1958).
ganhou(brasil, copadomundo, 1962).
ganhou(brasil, copadomundo, 1970).
ganhou(brasil, copadomundo, 1994).
ganhou(brasil, copadomundo, 2002).

ganhou(alemanha, copadomundo, 2014).


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

pentacampeao(PAIS) :- aggregate_all(count, ganhou(PAIS,copadomundo,_), Count),Count = 5.

sede(olimpiadas, 2016, riodejaneiro).
sede(copadomundo, 1958, suecia).
sede(copadomundo, 1962, chile).
sede(copadomundo, 1970, mexico).
sede(copadomundo, 1994, eua).
sede(copadomundo, 2002, coreiadosul).
sede(copadomundo, 2002, japao).

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

fornecedor(athleta, 1954, 1977).
fornecedor(adidas, 1977, 1981).
fornecedor(topper, 1981, 1990).
fornecedor(umbro, 1991, 1996).
fornecedor(nike, 1997, 2018).

fornecedor(MARCA, ANO) :- fornecedor(MARCA, INI, FIM), ANO >= INI, ANO =< FIM.

rival(brasil, argentina).
rival(brasil, uruguai).

titulo(melhordomundo, romario, 1994).
titulo(melhordomundo, ronaldo, 1996).
titulo(melhordomundo, ronaldo, 1997).
titulo(melhordomundo, ronaldo, 2002).
titulo(melhordomundo, ronaldinhogaucho, 2004).
titulo(melhordomundo, ronaldinhogaucho, 2005).
titulo(melhordomundo, kaka, 2007).

uniforme(jogador, principal, amarelo, azul).
uniforme(jogador, alternativo, azul, branco).
uniforme(goleiro, principal, verde, verde).
uniforme(goleiro, principal, cinza, cinza).
uniforme(goleiro, principal, preto, roxo).
uniforme(jogador, treino, azul).
uniforme(goleiro, treino, preto).
uniforme(comissaotecnica, treino, preto).

tecnico(tite,2016,2018).
tecnico(dunga,2014,2016).
tecnico(felipao,2013,2014).
tecnico(manomenezes,2010,2012).
tecnico(dunga,2006,2010).
tecnico(parreira,2003,2006).
tecnico(felipao,2001,2002).
tecnico(leao,2000,2001).

tecnico(NOME, ANO) :- tecnico(NOME, INI, FIM), ANO >= INI, ANO =< FIM.

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

jogou(brasil, 1, 7, alemanha, copadomundo, 2014).
jogou(brasil, 14, 0, nicaragua, jogospanamericanos, 1975).
jogou(brasil, 0, 6, uruguai, campeonatosulamericano, 1920).
jogou(brasil, 5, 2, suecia, copadomundo, 1958).
jogou(brasil, 4, 1, italia, copadomundo, 1970).
jogou(brasil, 0, 3, frança, copadomundo, 1998).
jogou(brasil, 2, 0, alemanha, copadomundo, 2002).

ganhoupartida(brasil, ADVERSARIO, CAMPEONATO, ANO) :- jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO), BR > ADV.
perdeupartida(brasil, ADVERSARIO, CAMPEONATO, ANO) :- jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO), BR < ADV.


