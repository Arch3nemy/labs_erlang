-module(lesson2_task08).
-export([main/0, compress/1]).

compress([H,H | T]) -> compress([H |T]);
compress([H | []]) -> [H];
compress([H | T]) -> [H | compress(T)].

main() ->
  erlang:display(lesson2_task08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e])).