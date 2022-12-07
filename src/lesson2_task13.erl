-module(lesson2_task13).
-export([main/0, decode/1]).

decode([]) -> [];
decode([{0, _} | T]) -> decode(T);
decode([{Num, Str} | T]) -> [Str | decode([{Num-1, Str} | T])].

main()->
  erlang:display(lesson2_task13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}])),
  true.