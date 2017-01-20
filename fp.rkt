;;; The reverse-general procedure reverses the list
(DEFINE (reverse-general lis)
        ;figuring out an way to get the last element of list
        ; CDR of list. CAR of list in recursive manner
        (COND
           ((NULL? lis) lis) ; if the list is null simply return null list
           (ELSE (append  (reverse-general (CDR lis))
                  
                  (list (CAR lis)) 
                  )
           )
         )
      )
        