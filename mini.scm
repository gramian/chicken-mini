(import (chicken io))

(define (string-trim str)
  (let rho [(from 0)
            (till (sub1 (string-length str)))]
      (cond [(> from till) ""]
            [(char-whitespace? (string-ref str from)) (rho (add1 from) till)]
            [(char-whitespace? (string-ref str till)) (rho from (sub1 till))]
            [else (substring str from (add1 till))])))

(define (mini path)
  (foldr (lambda (x a)
           (let [(kvl (string-split (string-trim x) "="))]
             (if (null? kvl) a (cons (cons (string->symbol (string-trim (car kvl))) (string-trim (cadr kvl))) a))))
         '() (read-lines (open-input-file path))))
