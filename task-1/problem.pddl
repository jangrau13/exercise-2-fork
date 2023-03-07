(define (problem myProblem)
    (:domain domain-example)
    ; object instances
    (:objects
        room1 - room
        room2 - room
        room3 - room
        room4 - room
        room5 - room
        room6 - room
        room7 - room
        room8 - room
        room9 - room
        room10 - room
        am0800 - time
        am0815 - time
        am0830 - time
        am0845 - time
        am0900 - time
        am0915 - time
        am0930 - time
        am0945 - time
        am1000 - time
        am1015 - time
        am1030 - time
        inh1 - inh
        inh2 - inh
        inh3 - inh
        inh4 - inh
        inh5 - inh
        inh6 - inh
        inh7 - inh
        inh8 - inh
        inh9 - inh
        inh10 - inh
    )

    (:init
        (canArrive inh1 am0800 )
        (canArrive inh2 am0815 )
        (canArrive inh3 am0830 )
        (canArrive inh4 am0845 )
        (canArrive inh5 am0900 )
        (canArrive inh6 am0915 )
        (canArrive inh7 am0800 )
        (canArrive inh7 am0930 )
        (canArrive inh8 am0945 )
        (canArrive inh9 am1000 )
        (canArrive inh10 am1015 )
        (available am0800)
        (available am0815)
        (available am0830)
        (available am0845)
        (available am0900)
        (available am0915)
        (available am0930)
        (available am0945)
        (available am1000)
        (available am1015)
    )

    (:goal (and
            (inRoom inh1 room1)
            (inRoom inh2 room2)
            (inRoom inh3 room3)
            (inRoom inh4 room4)
            (inRoom inh5 room5)
            (inRoom inh6 room6)
            (inRoom inh7 room7)
            (inRoom inh8 room8)
            (inRoom inh9 room9)
            (inRoom inh10 room10)
        )
    )

)