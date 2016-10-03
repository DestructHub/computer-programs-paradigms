local Prime in
  fun {Prime N}
     local PrimeTail in
        fun {PrimeTail N Acc}
           if Acc == N then true
           else
              if N mod Acc == 0 then false 
              else {PrimeTail N (Acc + 1)} end
           end
        end

        if N == 1 then false
        else {PrimeTail N 2} end
     end
  end

  {Browse {Prime 12}}
end