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
(DEFINE (sum-up-numbers-general L)
        ; using conditions to handle different cases
        (COND
        ((NULL? L) 0) ; First case: return 0 when null list is passed
        ((NUMBER? (CAR L)) (+ (CAR L) (sum-up-numbers-general (CDR L)))) ; if the first element is number sum that with recursive call of other element
        (ELSE 
         ; Now the first element can be non numeric or be a list
         ; when it is a list
         (IF (LIST? (CAR L))
         (+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L)))
         (+ 0 (sum-up-numbers-general (CDR L))) ; if the first element is not number sum 0 with recursive call of other element
              ) 
           )
       )
    )



;;; 4. procedure min-above-min
; helper function find_min which will find the minimum number in a list
; logic: compare first item with minimum of rest of item. Base case: if list has only one item it's the minimum
(DEFINE (find_min list1)
        
        (COND
         ((NULL? List1) +999999) ; if the list is null return the highest value, ideally + infinity
         ( (NOT (NUMBER? (CAR list1))) (find_min (CDR list1)) ) ; skips the non-numeric character
         ( (NULL? (CDR list1)) (CAR list1));if there's only one item in list, it is the minimum
         
         ((< (CAR list1) (find_min (CDR list1)) ) (CAR list1)  ) ;if first item of list is less than minimum of rest item in list, return first item as minimum
         
         (ELSE (find_min (CDR list1))) ; else (when first item is larger) applying find_min function to rest of items will be the minimum
         )
      )


(DEFINE (find_max list1)
        
        (COND
          ((NULL? List1) -999999)  ;if the list is null return the lowest value, ideally - infinity                  
         ( (NOT (NUMBER? (CAR list1))) (find_max (CDR list1)) ) ; skips the non-numeric character
         ( (NULL? (CDR list1)) (CAR list1));if there's only one item in list, it is the maximum
         
         ((> (CAR list1) (find_max (CDR list1)) ) (CAR list1)  ) ;if first item of list is greater than minimum of rest item in list, return first item as maximum
         
         (ELSE (find_max (CDR list1))) ; else (when max of rest is greater than first item) applying find_max function to rest of items will be the maximum
         )
      )
                               
(DEFINE (min-above-min L1 L2)
        ; Find min of L2 first and store it somewhere or maybe not store
        (COND
         ( base case)
         ;general case
         ;logic compare first item of L1 with min of L2 and compare that result with min of rest
         ((< (return_greater (CAR L1) (find_min L2)) (min-above-min (CDR L1) L2))  ((return_greater (CAR L1) (find_min L2))))
         
         )
         
                               
                 