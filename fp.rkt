;;;Problem 1. The reverse-general procedure reverses the list
(DEFINE (reverse-general lis)
        ;figuring out an way to get the last element of list
        ; logic = (CDR of list) (CAR of list) in recursive manner and appending them
        (COND
           ((NULL? lis) lis) ; if the list is null simply return null list
           (ELSE 
                (IF  (LIST? (CAR lis)) ; if the first item of list is also list
                
                     ( append  (reverse-general (CDR lis)) ; apply logic by recursively calling reverse function to both CDR an CAR
                               (list(reverse-general (CAR lis))) ; appending reverse of CDR and reverse of CAR
                               )
                              
                  
                     (append (reverse-general (CDR lis)) ; else first item of list is not a list
                             (list (CAR lis))            ;append reverse of CDR with list of CAR
                             )
                      )
                 )
             )
          )