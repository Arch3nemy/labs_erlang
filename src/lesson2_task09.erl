-module(lesson2_task09).
-export([main/0, pack/1]).

pack(List) -> pack(List, []).
pack([], _) -> [];
pack([H, H | T], L) -> pack([H | T], [H | L]);
pack([H | T], L) -> [[H | L] |  pack(T,[] )].

main() ->
  erlang:display(lesson2_task09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e])).
