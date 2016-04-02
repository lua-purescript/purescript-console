-- module Control.Monad.Eff.Console

local Control_Monad_Eff_Console = {}

Control_Monad_Eff_Console.log = function (s)
  return function ()
    print(s);
    return {}
  end
end

Control_Monad_Eff_Console.warn = function (s)
  return function ()
    print("[WARNING]" .. s)
    return {}
  end
end

Control_Monad_Eff_Console.error = function (s)
  return function ()
    print("[ERROR]" .. s)
    return {}
  end
end

Control_Monad_Eff_Console.info = function (s)
  return function ()
    print("[INFO]" .. s)
    return {}
  end
end

return Control_Monad_Eff_Console
