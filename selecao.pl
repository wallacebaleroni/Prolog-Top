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

selecao(PAIS) :-
    ganhou(PAIS, _, _).

/* copa(SEDE, ANO). */
copa(uruguai, 1930).
copa(italia, 1934).
copa(franca, 1938).
copa(brasil, 1950).
copa(suica, 1954).
copa(suecia, 1958).
copa(chile, 1962).
copa(inglaterra, 1966).
copa(mexico, 1970).
copa(alemanha_ocidental, 1974).
copa(argentina, 1978).
copa(espanha, 1982).
copa(mexico, 1986).
copa(italia, 1990).
copa(estados_unidos, 1994).
copa(franca_, 1998).
copa(japao_e_coreia_do_sul, 2002).
copa(alemanha, 2006).
copa(africa_do_sul, 2010).
copa(brasil, 2014).

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

participou(SELECAO, COMPETICAO, ANO) :-
    ganhou(SELECAO, COMPETICAO, ANO),
    not(participou(SELECAO, COMPETICAO, ANO)).
% só cria a instância de participou se ela não existir ainda, para evitar a contagem de duplicatas

competicao(COMPETICAO) :-
    participou(_, COMPETICAO, _).

todas_copas(PAIS) :-
    aggregate_all(count, participou(PAIS, copadomundo, _), COUNT_PARTICIPOU),
    aggregate_all(count, copa(_, _), COUNT_TODAS),
    COUNT_PARTICIPOU = COUNT_TODAS.

/* ganhou(SELECAO, COMPETICAO, ANO) */
ganhou(uruguai, copadomundo, 1930).
ganhou(italia, copadomundo, 1934).
ganhou(italia, copadomundo, 1938).
ganhou(uruguai, copadomundo, 1950).
ganhou(alemanha, copadomundo, 1954).
ganhou(brasil, copadomundo, 1958).
ganhou(brasil, copadomundo, 1962).
ganhou(inglaterra, copadomundo, 1966).
ganhou(brasil, copadomundo, 1970).
ganhou(alemanha, copadomundo, 1974).
ganhou(argentina, copadomundo, 1978).
ganhou(italia, copadomundo, 1982).
ganhou(argentina, copadomundo, 1986).
ganhou(alemanha, copadomundo, 1990).
ganhou(brasil, copadomundo, 1994).
ganhou(franca, copadomundo, 1998).
ganhou(brasil, copadomundo, 2002).
ganhou(italia, copadomundo, 2006).
ganhou(espanha, copadomundo, 2010).
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

pentacampeao(PAIS) :-
    aggregate_all(count, ganhou(PAIS, copadomundo, _), COUNT),
    COUNT = 5.

tetracampeao(PAIS) :-
    aggregate_all(count, ganhou(PAIS, copadomundo, _), COUNT),
    COUNT = 4.

tricampeao(PAIS) :-
    aggregate_all(count, ganhou(PAIS, copadomundo, _), COUNT),
    COUNT = 3.

bicampeao(PAIS) :-
    aggregate_all(count, ganhou(PAIS, copadomundo, _), COUNT),
    COUNT = 2.

campeaomundial(PAIS) :-
    ganhou(PAIS, copadomundo, _).
campeaoolimpico(PAIS) :-
    ganhou(PAIS, olimpiadas, _).
    
/* jogou_no_time(JOGADOR, SELECAO) */
jogou_no_time(rivellino, brasil).
jogou_no_time(zico, brasil).
jogou_no_time(ronaldo, brasil).
jogou_no_time(romario, brasil).
jogou_no_time(ronaldinhogaucho, brasil).
jogou_no_time(zagallo, brasil).
jogou_no_time(carlosalberto, brasil).
jogou_no_time(robertocarlos, brasil).
jogou_no_time(tostao, brasil).
jogou_no_time(didi, brasil).
jogou_no_time(vava, brasil).
jogou_no_time(bellini, brasil).
jogou_no_time(bebeto, brasil).
jogou_no_time(rivaldo, brasil).
jogou_no_time(neymar, brasil).

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

posicao(JOGADOR, POSICAO) :-
    posicao(JOGADOR, _, POSICAO).

numero_posicao(JOGADOR, NUMERO) :-
    posicao(JOGADOR, NUMERO, _).

/* tipo_posicao(POSICAO, TIPO) */
% jogador ou goleiro, para identificar os uniformes
tipo_posicao(goleiro, goleiro).
tipo_posicao(zagueiro, jogador).
tipo_posicao(atacante, jogador).
tipo_posicao(volante, jogador).
tipo_posicao(meia, jogador).
tipo_posicao(lateral, jogador).

/* joga_no_time(JOGADOR, SELECAO) */
% elenco atual da seleção
joga_no_time(JOGADOR, brasil) :-
    posicao(JOGADOR, _, _).

/* joga_no_time(JOGADOR, TIME) */
% clubes dos jogadores da seleção brasileira
joga_no_time(alisson, roma).
joga_no_time(cassio, corinthians).
joga_no_time(ederson, manchestercity).
joga_no_time(danilo, manchestercity).
joga_no_time(filipeluis, atleticodemadrid).
joga_no_time(marcelo, realmadrid).
joga_no_time(fagner, corinthians).
joga_no_time(miranda, internazionale).
joga_no_time(pedrogeromel, gremio).
joga_no_time(marquinhos, parissaintgermain).
joga_no_time(thiagosilva, parissaintgermain).
joga_no_time(casemiro, realmadrid).
joga_no_time(renatoaugusto, beijingguoan).
joga_no_time(philippecoutinho, barcelona).
joga_no_time(paulinho, barcelona).
joga_no_time(fernandinho, manchestercity).
joga_no_time(fred, shakhtardonetsk).
joga_no_time(willian, chelsea).
joga_no_time(douglascosta, juventus).
joga_no_time(gabrieljesus, manchestercity).
joga_no_time(neymar, parissaintgermain).
joga_no_time(taison, shakhtardonetsk).
joga_no_time(robertofirmino, liverpool).

/* fornecedor(MARCA, ANO_INICIO, ANO_FIM) */
% fornecedores de uniforme da seleção brasileira
fornecedor(athleta, 1954, 1977).
fornecedor(adidas, 1977, 1981).
fornecedor(topper, 1981, 1990).
fornecedor(umbro, 1991, 1996).
fornecedor(nike, 1997, 2018).

fornecedor(MARCA, ANO) :-
    fornecedor(MARCA, INI, FIM),
    ANO >= INI,
    ANO =< FIM.

fornecedor(brasil, MARCA) :-
    fornecedor(MARCA, _, _).

/* rivalidade (SELECAO_1, SELECAO_2) */
rivalidade(brasil, argentina).
rivalidade(brasil, uruguai).

/* premio_jogador (TITULO, JOGADOR, ANO) */
premio_jogador(melhordomundo, romario, 1994).
premio_jogador(melhordomundo, ronaldo, 1996).
premio_jogador(melhordomundo, ronaldo, 1997).
premio_jogador(melhordomundo, ronaldo, 2002).
premio_jogador(melhordomundo, ronaldinhogaucho, 2004).
premio_jogador(melhordomundo, ronaldinhogaucho, 2005).
premio_jogador(melhordomundo, kaka, 2007).

/* uniforme(TIPO_MEMBRO, TIPO_UNIFORME, COR_1, COR_2) */
% uniformes atuais da seleção brasileira
uniforme(jogador, principal, amarelo, azul).
uniforme(jogador, alternativo, azul, branco).
uniforme(goleiro, principal, verde, verde).
uniforme(goleiro, principal, cinza, cinza).
uniforme(goleiro, principal, preto, roxo).
uniforme(jogador, treino, azul, azul).
uniforme(goleiro, treino, preto, preto).
uniforme(comissaotecnica, treino, preto, preto).

/* tecnico(TECNICO, ANO_INICIO, ANO_FIM) */
% técnicos da seleção brasileira
tecnico(tite, 2016, 2018).
tecnico(dunga, 2014, 2016).
tecnico(felipao, 2013, 2014).
tecnico(manomenezes, 2010, 2012).
tecnico(dunga, 2006, 2010).
tecnico(parreira, 2003, 2006).
tecnico(felipao, 2001, 2002).
tecnico(leao, 2000, 2001).

tecnico(NOME, ANO) :-
    tecnico(NOME, INI, FIM),
    ANO >= INI,
    ANO =< FIM.

/* patrocina(MARCA, ANO_INICIO, ANO_FIM) */
% patrocinadores da seleção brasileira
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

patrocina(MARCA, ANO) :-
    patrocina(MARCA, INI, FIM),
    ANO >= INI,
    ANO =< FIM.

patrocina(brasil, MARCA) :-
    patrocina(MARCA, _, _).

/* jogou(SELECAO_1, PLACAR_SELECAO_1, PLACAR_SELECAO_2,SELECAO_2, COMPETICAO, ANO) */
jogou(brasil, 1, 7, alemanha, copadomundo, 2014).
jogou(brasil, 14, 0, nicaragua, jogospanamericanos, 1975).
jogou(brasil, 0, 6, uruguai, campeonatosulamericano, 1920).
jogou(brasil, 5, 2, suecia, copadomundo, 1958).
jogou(brasil, 4, 1, italia, copadomundo, 1970).
jogou(brasil, 0, 3, franca, copadomundo, 1998).
jogou(brasil, 2, 0, alemanha, copadomundo, 2002).
jogou(brasil, 0, 0, italia, copadomundo, 1994).

jogou(SELECAO1, P1, P2, SELECAO2, COMPETICAO, ANO) :-
    jogou(SELECAO2, P2, P1, SELECAO1, COMPETICAO, ANO).

ganhou_partida(brasil, ADVERSARIO, CAMPEONATO, ANO) :-
    jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO),
    BR > ADV.

perdeu_partida(brasil, ADVERSARIO, CAMPEONATO, ANO) :-
    jogou(brasil, BR, ADV, ADVERSARIO, CAMPEONATO, ANO),
    BR < ADV.

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

/* fica_em(LOCAL1, LOCAL2) */
% para perguntas
fica_em(X, Y) :-
    em_(X, Y).

fica_em(X, Z) :-
    em_(X, Y),
    fica_em(Y, Z).

/* em_(LOCAL1, LOCAL2) */
% para uso interno
% afirma que um local está dentro do outro

% SUBCONTINENTE em CONTINENTE
em_(americadosul, america).
em_(americadonorte, america).

% PAIS em SUBCONTINENTE
em_(brasil, americadosul).
em_(chile, americadosul).
em_(mexico, americadonorte).
em_(eua, americadonorte).
em_(suecia, europa).
em_(inglaterra, europa).
em_(espanha, europa).
em_(italia, europa).
em_(franca, europa).
em_(ucrania, europa).
em_(china, asia).
em_(coreiadosul, asia).
em_(japao, asia).

% CIDADE em PAIS
em_(riodejaneiro, brasil).
em_(saopaulo, brasil).
em_(portoalegre, brasil).
em_(turim, italia).
em_(roma, italia).
em_(milao, italia).
em_(machester, inglaterra).
em_(londres, inglaterra).
em_(liverpool, inglaterra).
em_(madrid, espanha).
em_(barcelona, espanha).
em_(paris, franca).
em_(donetsk, ucrania).
em_(pequim, china).

/* fica_em(TIME, LOCAL) */
% pra diferenciar relação entre dois locais
baseado_em(romafc, roma).
baseado_em(corinthians, saopaulo).
baseado_em(manchestercity, manchester).
baseado_em(atleticodemadrid, madrid).
baseado_em(internazionale, milao).
baseado_em(gremio, portoalegre).
baseado_em(parissaintgermain, paris).
baseado_em(realmadrid, madrid).
baseado_em(beijingguoan, pequim).
baseado_em(barcelona, barcelona).
baseado_em(shakhtardonetsk, donetsk).
baseado_em(chelsea, londres).
baseado_em(juventus, turim).
baseado_em(liverpoolfc, liverpool).

baseado_em(TIME, LUGAR) :-
    fica_em(X, LUGAR),
    baseado_em(TIME, X).

/* acontece_em(COMPETICAO, LOCAL) */
acontece_em(libertadores, america).
acontece_em(championsleague, europa).

joga_no_lugar(JOGADOR, LUGAR) :-
    joga_no_time(JOGADOR, Y),
    baseado_em(Y, LUGAR).

joga_no_campeonato(JOGADOR, CAMPEONATO) :-
    joga_no_lugar(JOGADOR, X),
    acontece_em(CAMPEONATO, X).


/* REGRAS PARA PERGUNTAS */
ano_atual(ANO) :-
	get_time(Stamp),
	stamp_date_time(Stamp, DateTime, local),
	date_time_value(year, DateTime, ANO).

ganhou_copa_em_continente(PAIS, CONTINENTE) :-
	ganhou(PAIS, copadomundo, ANO),
	copa(LOCAL, ANO),
	fica_em(LOCAL, CONTINENTE),
	continente(CONTINENTE),
	!.

tecnico_2_periodos(brasil) :-
    tecnico(NOME, INICIO1, FIM1),
    tecnico(NOME, INICIO2, FIM2),
    INICIO1 < INICIO2,
    FIM1 < FIM2,
    !.
