module Control.Monad.Eff.Console where

import Control.Monad.Eff (Eff)

import Data.Show (class Show, show)
import Data.Unit (Unit)

-- | The `CONSOLE` effect represents those computations which write to the
-- | console.
foreign import data CONSOLE :: !

-- | Write a message to the console.
foreign import log
  :: forall eff
   . String
  -> Eff (console :: CONSOLE | eff) Unit

-- | Write an error to the console.
foreign import error
  :: forall eff
   . String
  -> Eff (console :: CONSOLE | eff) Unit

-- | Write a value to the console, using its `Show` instance to produce a
-- | `String`.
print :: forall a eff. Show a => a -> Eff (console :: CONSOLE | eff) Unit
print a = log (show a)
