(load "mini.scm")

(for-each (lambda (x)
  (begin
    (display (car x))
    (display "=")
    (display (cdr x))
    (newline)))
  (mini "test.ini"))
