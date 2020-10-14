#lang planet neil/sicp
; comment
; liskt: car, cdr
; recursion!
; no for or while loops in a sens
; if statements

(define (less-than-five num)
  (if (< num 5) "Yes" "No"))

; example: find length of list without length command
(define (find-list-length lst)
  (if (equal? lst '()) 0 (+ 1 (find-list-length (cdr lst))))
   )
