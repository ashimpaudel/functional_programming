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
        
        (+ (CAR L) (CAR(CDR L)))
        )

        