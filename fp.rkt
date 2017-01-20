;;; The reverse-general procedure reverses the list
(DEFINE (reverse-general lis)
        ;figuring out an way to get the last element of list
        ; CDR of list. CAR of list in recursive manner
        (COND
           ((NULL? lis) lis) ; if the list is null simply return null list
           (ELSE (append  (reverse-general (CDR lis))
                  
                  ; if CAR function produce a list itself:
                  ; we have to apply reverse-general to it as well
                  ; using IF to
                          (IF (LIST? (CAR lis))
                              (reverse-general (CAR lis))
                              ; if it returns true list is produced
                                  ;use
                  (list (CAR lis))) ;if the CAR produce only one atom
                  )
           )
         )
      )