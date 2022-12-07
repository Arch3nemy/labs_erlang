-module(lesson2_task06).
-export([main/0, palindrome/1]).

palindrome(L)->
  L == lesson2_task05:reverse(L).

main()->
  erlang:display(lesson2_task06:palindrome([1,2,3,2,1])),
  true.