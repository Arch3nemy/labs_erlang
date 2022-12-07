-module(lesson2_task02).
-export([main/0, but_last/1]).

but_last([_A, _B] = L) -> L;
but_last([_|L]) -> but_last(L).

main()->
  erlang:display(lesson2_task02:but_last([a,b,c,d,e,f])),
  true.