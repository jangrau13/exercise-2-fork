(define (domain domain-example)
    (:requirements :negative-preconditions)

    ; set of operators

    (:types
        room - object ;my_class - base_class 
        time - object
        inh - object
    )

    (:predicates
        (available ?t - time)
        (canArrive ?inh - inh ?t - time )
        (inRoom ?inh - inh ?r - room)
        (isOpen ?r - room ?inh - inh ?t - time)
        (joined ?r - room)
    )

    (:action unlock
        :parameters (?t - time ?r - room ?inh - inh)
        :precondition (and
            (available ?t)
            (not(isOpen ?r ?inh ?t))
            (canArrive ?inh ?t)
        )
        :effect (and
            (not (available ?t))
            (isOpen ?r ?inh ?t)
        )
    )

    (:action join
        :parameters (?t - time ?r - room ?inh - inh)
        :precondition (and 
            (isOpen ?r ?inh ?t)
            (canArrive ?inh ?t)
        )
        :effect (and
            (joined ?r)
         )
    )

    (:action showRoom
        :parameters (?t - time ?inh - inh ?r - room)
        :precondition (and 
            (joined ?r)
            (isOpen ?r ?inh ?t)
            (canArrive ?inh ?t)
        )
        :effect (and 
            (inRoom ?inh ?r)
        )
    )
)