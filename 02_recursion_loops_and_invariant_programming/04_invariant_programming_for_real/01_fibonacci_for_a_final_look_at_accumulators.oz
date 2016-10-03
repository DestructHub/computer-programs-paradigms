local Fib in
  fun {Fib N}
      local FibAux in
          fun {FibAux N Acc1 Acc2}
            if N == 0 then 0
            elseif N < 3 then Acc1 + Acc2
            else {FibAux (N - 1) Acc2 (Acc1 + Acc2)} end
          end
          {FibAux N 0 1}
      end
  end

  {Browse {Fib 0}}
  {Browse {Fib 1}}
  {Browse {Fib 2}}
  {Browse {Fib 3}}
  {Browse {Fib 10}}
end