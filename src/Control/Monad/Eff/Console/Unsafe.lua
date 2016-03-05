-- module Control.Monad.Eff.Console.Unsafe

local Control_Monad_Eff_Console_Unsafe = {}

Control_Monad_Eff_Console_Unsafe.logAny = function (s)
  return function ()
    print(tostring(s))
    return {}
  end
end

Control_Monad_Eff_Console_Unsafe.errorAny = function (s)
  return function ()
    print("[ERROR]" .. tostring(s))
    return {}
  end
end

return Control_Monad_Eff_Console_Unsafe
