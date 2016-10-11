local FlattenList in
   fun {FlattenList L}
      case L of Hd|Tl then {Append {FlattenList Hd} {FlattenList Tl}}
      [] nil then nil
      else [L] end
   end

   {Browse {FlattenList [[[1]] [2] [3]]}}
end