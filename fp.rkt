;;;Problem 1. The reverse-general procedure reverses the list
(DEFINE (reverse-general L)
        ;figuring out an way to get the last element of list
        ; logic = (CDR of list) (CAR of list) in recursive manner and appending them
        (COND
           ((NULL? L) L) ; if the list is null simply return null list
           (ELSE 
                (IF  (LIST? (CAR L)) ; if the first item of list is also list
                
                     ( append  (reverse-general (CDR L)) ; apply logic by recursively calling reverse function to both CDR an CAR
                               (list(reverse-general (CAR L))) ; appending reverse of CDR and reverse of CAR
                               )
                              
                  
                     (append (reverse-general (CDR L)) ; else first item of list is not a list
                             (list (CAR L))            ;append reverse of CDR with list of CAR
                             )
                      )
                 )
             )
          )


;;; 2. procedure sum-up-numbers-simple 
(DEFINE (sum-up-numbers-simple L)
        ; using conditions to handle different cases
        (COND
        ((NULL? L) 0) ; First case: return 0 when null list is passed
        ((NUMBER? (CAR L)) (+ (CAR L) (sum-up-numbers-simple (CDR L)))) ; if the first element is number sum that with recursive call of other element
        (ELSE (+ 0 (sum-up-numbers-simple (CDR L)))) ; if the first element is not number sum 0 with recursive call of other element
           )
      )



;;; 3. procedure sum-up-numbers-general 
(DEFINE (sum-up-numbers-simple L)
        ; using conditions to handle different cases
        (COND
        ((NULL? L) 0) ; First case: return 0 when null list is passed
        ((NUMBER? (CAR L)) (+ (CAR L) (sum-up-numbers-simple (CDR L)))) ; if the first element is number sum that with recursive call of other element
        (ELSE 
         ; Now the first element can be non numeric or be a list
         ; when it is a list
         (IF (LIST? (CAR L))
         (+ (sum-up-numbers-simple (CAR L)) (sum-up-numbers-simple (CDR L)))
         (+ 0 (sum-up-numbers-simple (CDR L)))
              ) ; if the first element is not number sum 0 with recursive call of other element
           )
      )
        )