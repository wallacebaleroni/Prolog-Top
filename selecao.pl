nome(selecao, "Seleção Brasileira de Futebol").
associacao(selecao, cbf).
confederacao(selecao, conmebol).

apelido(selecao, "seleção verde-amarela").
apelido(selecao, "seleção canarinho").
apelido(selecao, "seleção amarelinha").

participou(selecao, copadomundo, 1930).
participou(selecao, copadomundo, 1934).
participou(selecao, copadomundo, 1938).
participou(selecao, copadomundo, 1950).
participou(selecao, copadomundo, 1954).
participou(selecao, copadomundo, 1958).
participou(selecao, copadomundo, 1962).
participou(selecao, copadomundo, 1966).
participou(selecao, copadomundo, 1970).
participou(selecao, copadomundo, 1974).
participou(selecao, copadomundo, 1978).
participou(selecao, copadomundo, 1982).
participou(selecao, copadomundo, 1986).
participou(selecao, copadomundo, 1990).
participou(selecao, copadomundo, 1994).
participou(selecao, copadomundo, 1998).
participou(selecao, copadomundo, 2002).
participou(selecao, copadomundo, 2006).
participou(selecao, copadomundo, 2010).
participou(selecao, copadomundo, 2014).

ganhou(selecao, copadomundo, 1958).
ganhou(selecao, copadomundo, 1962).
ganhou(selecao, copadomundo, 1970).
ganhou(selecao, copadomundo, 1994).
ganhou(selecao, copadomundo, 2002).

participou(p) :- ganhou(p).

ganhou(selecao, copadasamericas, 1919).
ganhou(selecao, copadasamericas, 1922).
ganhou(selecao, copadasamericas, 1949).
ganhou(selecao, copadasamericas, 1989).
ganhou(selecao, copadasamericas, 1997).
ganhou(selecao, copadasamericas, 1999).
ganhou(selecao, copadasamericas, 2004).
ganhou(selecao, copadasamericas, 2007).


ganhou(selecao, copadasconfederacoes, 1997).
ganhou(selecao, copadasconfederacoes, 2005).
ganhou(selecao, copadasconfederacoes, 2009).
ganhou(selecao, copadasconfederacoes, 2013).

ganhou(selecao, olimpiadas, 2016).

ganhou(selecao, campeonatopanamericano, 1952).
ganhou(selecao, campeonatopanamericano, 1956).

ganhou(selecao, jogospanamericanos, 1963).
ganhou(selecao, jogospanamericanos, 1979).
ganhou(selecao, jogospanamericanos, 1987).

sede(olimpiadas, 2016, riodejaneiro).
sede(copadomundo, 1958, suecia).
sede(copadomundo, 1962, chile).
sede(copadomundo, 1970, mexico).
sede(copadomundo, 1994, eua).
sede(copadomundo, 2002, coreiadosul).
sede(copadomundo, 2002, japao).

fezparte(rivellino, selecao).
fezparte(zico, selecao).
fezparte(ronaldo, selecao).
fezparte(romario, selecao).
fezparte(ronaldinhogaucho, selecao).
fezparte(zagallo, selecao).
fezparte(carlosalberto, selecao).
fezparte(robertocarlos, selecao).
fezparte(tostao, selecao).
fezparte(didi, selecao).
fezparte(vava, selecao).
fezparte(bellini, selecao).
fezparte(bebeto, selecao).
fezparte(rivaldo, selecao).

fornecedor(athleta, 1954).
fornecedor(athleta, 1977).
fornecedor(adidas, 1977).
fornecedor(adidas, 1981).
fornecedor(topper, 1981).
fornecedor(topper, 1990).
fornecedor(umbro, 1991).
fornecedor(umbro, 1996).
fornecedor(nike, 1997).
fornecedor(nike, 2018).

fornecedor(MARCA, ANO) :- fornecedor(MARCA, X), fornecedor(MARCA, Y), X > ANO, Y < ANO. /* ? */

rival(selecao, argentina).
rival(selecao, uruguai).

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
