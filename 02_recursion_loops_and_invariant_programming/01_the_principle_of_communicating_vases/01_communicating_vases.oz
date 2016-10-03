local MainSum in
  fun {MainSum N}
    local Sum in
        fun {Sum N Acc}
          if N == 0 then Acc
          else {Sum (N - 1) (N * N + Acc)} end
        end
        {Sum N 0}
    end
  end

  {Browse {MainSum 6}}
end