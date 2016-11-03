(letrec ((x  (lambda () (begin (fork-thread x) (x))))) (x))
