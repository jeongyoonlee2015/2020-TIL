#lang racket ;neil/sicp
(require racket/trace)
; example: find length of list without length command
(define (find-list-length lst)
 (if (empty? lst) 0 (+ 1 (find-list-length (cdr lst))))
  )
(trace find-list-length)
;; (find-list-length '(1 2 3 4))


; exercise: sum all elements of a list
(define (sum-list lst)
(if (empty? lst) 0 (+ (car lst) (sum-list (cdr lst))))
         )
;; (sum-list '(1 2 3 4))
(trace sum-list)

;;(sum-list '(1 2 3 4))
