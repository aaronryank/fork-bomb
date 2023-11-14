import System.Posix.Process

main = forkProcess main >> main
