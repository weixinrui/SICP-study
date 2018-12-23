# Chapter1 answer
## practice 1_6_1.scm
When "if" was replaced by "new-if", following answer would be displayed:

```
;Loading "1_6_1.scm"...
;  Loading "improve.scm"...
;    Loading "average.scm"...
;      Loading "abs.scm"... done
;      Loading "square.scm"... done
;    ... done
;  ... done
;  Loading "good-enough.scm"...
;    Loading "abs.scm"... done
;    Loading "square.scm"... done
;  ... done
;... aborted
;Aborting!: maximum recursion depth exceeded
```
Explanation:

The reason is that this program was stuck in recurrence. That is because "new-if" is just a ordinary function, while "if" is a special function. When executing "if", if the condition is "true", then only the first expression will be calculated. However, when executing "new-if" function, both the first and the second expressions are calculated. As a result, in this case, "guess" will not be "good-enough".

## practice 1_7
When using this program to extract a root for 0.009, the result was
```
;Loading "1_6.scm"... done
;Value: .04030062264654547
```
We can calculate the error between the result got by the program and the real result. And the error is equal to 34%. Obviously, the error is relatively large.

The reason for this is that the "good-enough" parameter I had set was 0.001.
***
When extracting root for a large number, for example 900000000000000000000, the program was stuck in loop.
***
After modifying the "good-enough" by using the following code:
```
(define (good-enough old-guess new-guess)
  (<
    (/ (abs (- new-guess old-guess))
       old-guess)
    0.01))
```
The result for 0.0009 is:
```
;Loading "1_6_2.scm"... done
;Value: 3.0000012746348552e-2
```
The error is around
```
;Value: 4.248782851009233e-7
```
And the program can also extract root for a very big number.

***
