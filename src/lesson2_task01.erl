-module(lesson2_task01).
-export([main/0, last/1]).

last([]) ->
  nil;
last([H|[]]) ->
  H;
last([_|T]) ->
  last(T).

main()->
  erlang:display(lesson2_task01:last([a,b,c,d,e,f])),
  true.

