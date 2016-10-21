local FunnyFunc Test Func1 Func2 in
  fun {FunnyFunc FunL L}
    case L of H|T then {FunL.1 H}|{FunnyFunc FunL.2 T}
    else nil
    end
  end

  proc {Test FunL L SolL}
      {Browse {FunnyFunc FunL L} == SolL}
  end

  fun {Func1 X} X * X end
  fun {Func2 X} X + X end

  {Test [Func1 Func2] [1 2] [1 4]}
end
