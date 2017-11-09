%% escript fork-bomb.erl +P 134217727

-module(bomb).
-export([loop/0]).
-import(lists, [map/2]).
-import(pg2, [pid/0, join/2, get_members/1]).

loop() ->
  join(forks, pid()),

  receive
    _ -> spawn(bomb, loop, []),
         loop()
  end.

main(_) ->
  spawn(bomb, loop, []),

  case get_members(forks) of
    [Pid|Pids] -> map(fun(P) -> P ! 1 end, [Pid|Pids]);
    _ -> error
  end,

  main(1).
