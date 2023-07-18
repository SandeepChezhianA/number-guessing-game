#lang racket
; The purpose of this program is to simulate a number guessing game where the computer generates a random number and the user is supposed to guess that number.

(define (larger-input guess trial)
  (begin
    (display "Try a larger number \n Whats your guess? __")
    (define user-input (read))
    (if (equal? user-input guess)
        (begin
          (display "You got it! \n You took ")
          (display (number->string trial))
          (display " attempts!"))
        (if (< user-input guess)
            (larger-input guess (+ trial 1))
            (smaller-input guess (+ trial 1))))))

(define (smaller-input guess trial)
  (begin
    (display "Try a smaller number \n Whats your guess? __")
    (define user-input (read))
    (if (equal? user-input guess)
          (begin
          (display "You got it! \n You took")
          (display (number->string trial))
          (display "attempts"))
        (if (< user-input guess)
            (larger-input guess (+ trial 1))
            (smaller-input guess (+ trial 1))))))



(define (number-guessing-name)
  (define k (random 1 101))
  (display "I've picked a number in the range 1 to 100! \n What's your guess? __")
  (begin
    (define user-input (read))
    (if (equal? user-input k)
        (display "You got it! \n You took 1 attempt")
        (if (< user-input k)
            (larger-input k 1)
            (smaller-input k 1)))))