local F Build in
   fun {Build D C}
      fun {$ I}
        local F in
          fun {F I D C}
             if C == nil then
                bottom
             elseif D.1 == I then
                C.1
             else
                {F I D.2 C.2}
             end
          end
          {F I D C}
        end
      end
   end

   F = {Build [1 2 3] [~1 ~2 ~3]}
   {Browse {F 1}} % Prints ~1
   {Browse {F 3}} % Prints ~3
   {Browse {F 4}} % Prints bottom
end
