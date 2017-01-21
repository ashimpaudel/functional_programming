(DEFINE (reverse-sim list1)
        (COND
         ((NULL? list1) list1)
         (ELSE (append (reverse-sim (CDR list1))
                       (list (CAR list1)))
               )
         )
        )
;;; The reverse-general procedure reverses the list
(DEFINE (reverse-general lis)
        ;figuring out an way to get the last element of list
        ; CDR of list. CAR of list in recursive manner
        (COND
           ((NULL? lis) lis) ; if the list is null simply return null list
           (ELSE 
            (IF (LIST? (CAR lis))
                
            ( append  (reverse-general (CDR lis))
                  
                  ; if CAR function produce a list itself:
                  ; we have to apply reverse-general to it as well
                  ; using IF to
                         
                     (list(reverse-sim (CAR lis))) ; if not used list at front will remove every other braces except first and last
                              
                  )
            (append (reverse-general (CDR lis)) 
                    (list (CAR lis)))
            
           )
         )
      )
        )