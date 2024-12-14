1 s$=" The Commodore 64 artiste in action...hang on, i am painting some unique art for you."
2 s$=s$+" This can take a while. Just need some more paint over here... Almost done   "
3 s$=s$+"  Oh No! Now i messed it up a bit. I need more paint for this... any key to stop "
4 c$="{black}{white}{red}{cyan}{purple}{green}{blue}{yellow}{orange}{brown}{pink}{dark gray}{light gray}{light green}{light blue}{light gray}"
5 forx=.to39:a$=a$+" ":b$=b$+"{230}":next
6 print"{clear}";:poke53272,23:w=1:forx=.toint(rnd(w)*999):next:rem random random
7 poke53280,0:poke53281,0:gosub 120
8 x=rnd(-ti)
10 x=int(rnd(w)*40):xx=int(rnd(w)*(40-x))
20 y=int(rnd(w)*24):yy=int(rnd(w)*(24-y))
25 c=1+int(rnd(w)*15):c1=int(rnd(w)*2)
30 gosub 100
35 getq$:ifq$<>""then50
40 goto10
50 d=1:s$=a$+"-= Code by Eyvind Ebsen dec. 2024 =- "
55 forx=.to79:gosub 106:next
64 goto64
99 rem draw rectangle
100 printmid$(c$,c,1);
102 for q=.toyy:poke781,y+q:poke782,x:sys65520
103 if c1=0thenprint"{reverse on}"left$(a$,xx):goto 105
104 printleft$(b$,xx)
105 next
106 ifd>40then poke781,24:poke782,0:sys65520:print"{white}"mid$(s$,d-40,39);
108 d=d+1:ifd>294 then d=1:gosub120
110 return
120 print"{home}{down*24}{white}"left$(s$,38);:return
