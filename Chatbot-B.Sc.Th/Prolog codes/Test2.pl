:- include('C:/Users/asus/Desktop/4. S�n�f/Lisans Tezi/TurkishMorphophonologicalAnalyzer/Morphophonologic Analyzer for Nouns/weak_vowel_harmonizer.pl').

initial(q0).
final(q1).
final(q2).
final(q3a).
final(q3b).
final(q3c).
final(q3d).
final(q4a).
final(q4b).
final(q5).

t(q0,verb,q1).

t(q1,tDefPast,q3a).
t(q1,tInDefPast,q3b).
t(q1,tProg,q3b).
t(q1,tAor,q3b).
t(q1,tFut,q3b).
t(q1,tNec,q3b).
t(q1,tCon,q3c).
t(q1,tOpt,q3d).
t(q1,neg,q2).

t(q2,tDefPast,q3a).
t(q2,tInDefPast,q3b).
t(q2,tProg,q3b).
t(q2,tAor,q3b).
t(q2,tFut,q3b).
t(q2,tNec,q3b).
t(q2,tCon,q3c).
t(q2,tOpt,q3d).

t(q3a,aCon,q4a).
t(q3a,aDefPast,q4a).
t(q3a,pDefInd�c,q5).

t(q3b,pInd�c,q5).
t(q3b,aDefPast,q4a).
t(q3b,aInDefPast,q4b).
t(q3b,aCon,q4a).

t(q3c,aDefPast,q4a).
t(q3c,aInDefPast,q4b).
t(q3c,pDefInd�c,q5).

t(q3d,aDefPast,q4a).
t(q3d,aInDefPast,q4b).
t(q3d,pInd�c,q5).

t(q4a,pDefInd�c,q5).

t(q4b,pInd�c,q5).

allomorph(git,verb).
allomorph(gid,verb).
allomorph(uc,verb).
allomorph(ge�,verb).
allomorph(gel,verb).
allomorph(bul,verb).
allomorph(g�r,verb).
allomorph(otur,verb).
allomorph(ol,verb).
allomorph(kalk,verb).
allomorph(uyu,verb).

allomorph(ma,neg).
allomorph(me,neg).
allomorph(m�,neg).
allomorph(mi,neg).
allomorph(mu,neg).
allomorph(m�,neg).

allomorph(d�,tDefPast).
allomorph(di,tDefPast).
allomorph(t�,tDefPast).
allomorph(ti,tDefPast).
allomorph(du,tDefPast).
allomorph(d�,tDefPast).
allomorph(tu,tDefPast).
allomorph(t�,tDefPast).

allomorph(m��,tInDefPast).
allomorph(mi�,tInDefPast).
allomorph(mu�,tInDefPast).
allomorph(m��,tInDefPast).

allomorph(yor,tProg).
allomorph(�yor,tProg).
allomorph(iyor,tProg).
allomorph(uyor,tProg).
allomorph(�yor,tProg).

allomorph(ecek,tFut).
allomorph(yecek,tFut).
allomorph(�ecek,tFut).
allomorph(secek,tFut).
allomorph(necek,tFut).
allomorph(acak,tFut).
allomorph(yacak,tFut).
allomorph(�acak,tFut).
allomorph(sacak,tFut).
allomorph(nacak,tFut).

allomorph(r,tAor).
allomorph(�r,tAor).
allomorph(ir,tAor).
allomorph(ur,tAor).
allomorph(�r,tAor).
allomorph(ar,tAor).
allomorph(er,tAor).

allomorph(meli,tNec).
allomorph(mal�,tNec).

allomorph(se,tCon).
allomorph(sa,tCon).

allomorph(e,tOpt).
allomorph(ye,tOpt).
allomorph(a,tOpt).
allomorph(ya,tOpt).

allomorph(se,aCon).
allomorph(sa,aCon).

allomorph(d�,aDefPast).
allomorph(di,aDefPast).
allomorph(t�,aDefPast).
allomorph(ti,aDefPast).
allomorph(du,aDefPast).
allomorph(d�,aDefPast).
allomorph(tu,aDefPast).
allomorph(t�,aDefPast).

allomorph(m��,aInDefPast).
allomorph(mi�,aInDefPast).
allomorph(mu�,aInDefPast).
allomorph(m��,aInDefPast).

allomorph(�m,pInd�c).
allomorph(y�m,pInd�c).
allomorph(s�m,pInd�c).
allomorph(im,pInd�c).
allomorph(yim,pInd�c).
allomorph(sim,pInd�c).
allomorph(um,pInd�c).
allomorph(yum,pInd�c).
allomorph(sum,pInd�c).
allomorph(�m,pInd�c).
allomorph(y�m,pInd�c).
allomorph(s�m,pInd�c).
allomorph(s�n,pInd�c).
allomorph(sin,pInd�c).
allomorph(sun,pInd�c).
allomorph(s�n,pInd�c).
allomorph(�z,pInd�c).
allomorph(iz,pInd�c).
allomorph(uz,pInd�c).
allomorph(�z,pInd�c).
allomorph(s�n�z,pInd�c).
allomorph(siniz,pInd�c).
allomorph(sunuz,pInd�c).
allomorph(s�n�z,pInd�c).
allomorph(ler,pInd�c).
allomorph(lar,pInd�c).

allomorph(m,pDefInd�c).
allomorph(n,pDefInd�c).
allomorph(k,pDefInd�c).
allomorph(n�z,pDefInd�c).
allomorph(niz,pDefInd�c).
allomorph(nuz,pDefInd�c).
allomorph(n�z,pDefInd�c).
allomorph(ler,pDefInd�c).
allomorph(lar,pDefInd�c).

analyze(String, Morphemes):-
   initial(State),
   analyze(String, State, Morphemes, []).

analyze('', State, [], _):- final(State).

analyze(String, CurrentState, [Prefix|Morphemes], Ex_Allomorph):-
   concat(Prefix, Suffix, String),
   allomorph(Prefix, Allomorph),
   t(CurrentState, Allomorph, NextState),
   append(Ex_Allomorph, [Prefix], Morpheme),
   ((Allomorph == 'tProg') -> progHarmonize(Morpheme); harmonize(Morpheme)),
   analyze(Suffix, NextState, Morphemes, [Prefix]).

progHarmonize([Allomorph1, Allomorph2]):-
   string_to_list(Allomorph1, LCodes),
   string_to_list(Allomorph2, RCodes),
   vowel_vowel_progHarmony(LCodes, RCodes),
   consonant_consonant_harmony(LCodes, RCodes),
   vowel_consonant_harmony(LCodes, RCodes),
   consonant_vowel_harmony(LCodes, RCodes).

vowel_vowel_progHarmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   vowel(LChar1),
   consonant(RChar1),
   vowel(RChar2),
   (LChar1 = �; LChar1 = i; LChar1 = u; LChar1 = �).

vowel_vowel_progHarmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1,LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   vowel(LChar2),
   vowel(RChar1),
   (((LChar2 = a; LChar2 = �), (RChar1 = a; RChar1 = �));
   ((LChar2 = o; LChar2 = u), (RChar1 = a; RChar1 = u));
   ((LChar2 = e; LChar2 = i), (RChar1 = e; RChar1 = i));
   ((LChar2 = �; LChar2 = �), (RChar1 = e; RChar1 = �))
   ).


harmonize([_]).

harmonize([Allomorph1, Allomorph2]):-
   string_to_list(Allomorph1, LCodes),
   string_to_list(Allomorph2, RCodes),
   vowel_vowel_harmony(LCodes, RCodes),
   consonant_consonant_harmony(LCodes, RCodes),
   vowel_consonant_harmony(LCodes, RCodes),
   consonant_vowel_harmony(LCodes, RCodes).

vowel_vowel_harmony(_, [RCode1]):-
   char_code(RChar1, RCode1),
   consonant(RChar1).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   vowel(LChar1),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar1 = a; LChar1 = �), (RChar2 = a; RChar2 = �));
   ((LChar1 = o; LChar1 = u), (RChar2 = a; RChar2 = u));
   ((LChar1 = e; LChar1 = i), (RChar2 = e; RChar2 = i));
   ((LChar1 = �; LChar1 = �), (RChar2 = e; RChar2 = �))
   ).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   vowel(LChar2),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar2 = a; LChar2 = �), (RChar2 = a; RChar2 = �));
   ((LChar2 = o; LChar2 = u), (RChar2 = a; RChar2 = u));
   ((LChar2 = e; LChar2 = i), (RChar2 = e; RChar2 = i));
   ((LChar2 = �; LChar2 = �), (RChar2 = e; RChar2 = �))
   ).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2, LCode3|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(LChar3, LCode3),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   consonant(LChar2),
   vowel(LChar3),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar3 = a; LChar3 = �), (RChar2 = a; RChar2 = �));
   ((LChar3 = o; LChar3 = u), (RChar2 = a; RChar2 = u));
   ((LChar3 = e; LChar3 = i), (RChar2 = e; RChar2 = i));
   ((LChar3 = �; LChar3 = �), (RChar2 = e; RChar2 = �))
   ).

vowel_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   vowel(LChar2),
   vowel(RChar1),
  (((LChar2 = a; LChar2 = �), (RChar1 = a; RChar1 = �));
   ((LChar2 = o; LChar2 = u), (RChar1 = a; RChar1 = u));
   ((LChar2 = e; LChar2 = i), (RChar1 = e; RChar1 = i));
   ((LChar2 = �; LChar2 = �), (RChar1 = e; RChar1 = �))
   ).

consonant_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(consonant(LChar1)),!); not(consonant(RChar1))).
   
consonant_consonant_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   vowel(LChar2),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar2 = o, LChar1 = r), (RChar1 = s, RChar2 = a));
   ((LChar2 = o, LChar1 = r), (RChar1 = s, RChar2 = u))
   ).
   
consonant_consonant_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   vowel(LChar2),
   consonant(RChar1),
   vowel(RChar2),
  (((RChar1 = s, RChar2 = e));
   ((RChar1 = s, RChar2 = a))
   ).

consonant_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   consonant(RChar1),
  ((consonant_type1(LChar1), consonant_type1(RChar1));
   (consonant_type1(LChar1), consonant_type2(RChar1));
   (consonant_type2(LChar1), consonant_type3(RChar1));
   (consonant_type2(LChar1), consonant_type2(RChar1));
   (consonant_type3(LChar1), consonant_type2(RChar1));
   (consonant_type3(LChar1), consonant_type3(RChar1))
   ).

vowel_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(vowel(LChar1)),!); not(consonant(RChar1))).

vowel_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   vowel(LChar1),
   consonant(RChar1),
   not(RChar1 = t).

consonant_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(consonant(LChar1)),!); not(vowel(RChar1))).

consonant_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   vowel(RChar1),
   not(LChar1 = c),
   not(LChar1 = t).

consonant_type1(�).
consonant_type1(f).
consonant_type1(h).
consonant_type1(k).
consonant_type1(p).
consonant_type1(s).
consonant_type1(�).
consonant_type1(t).

consonant_type2(l).
consonant_type2(m).
consonant_type2(n).
consonant_type2(r).
consonant_type2(y).

consonant_type3(b).
consonant_type3(c).
consonant_type3(d).
consonant_type3(g).
consonant_type3(�).
consonant_type3(j).
consonant_type3(v).
consonant_type3(z).