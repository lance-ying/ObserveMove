(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 door3 door4 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 wizard4 wizard5 wizard6 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (xloc wizard1) 1)
         (= (yloc wizard1) 1)
         (iscolor wizard1 blue)
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (xloc wizard2) 5)
         (= (yloc wizard2) 1)
         (iscolor wizard2 blue)
         (= (xloc wizard3) 11)
         (= (yloc wizard3) 1)
         (iscolor wizard3 blue)
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 9))
         (= (walls) (set-index walls true 2 10))
         (= (walls) (set-index walls true 2 11))
         (= (walls) (set-index walls true 3 2))
         (= (walls) (set-index walls true 3 3))
         (= (walls) (set-index walls true 3 4))
         (= (walls) (set-index walls true 3 5))
         (= (walls) (set-index walls true 3 6))
         (= (walls) (set-index walls true 3 7))
         (= (walls) (set-index walls true 3 9))
         (= (walls) (set-index walls true 3 10))
         (= (walls) (set-index walls true 3 11))
         (= (walls) (set-index walls true 5 1))
         (= (walls) (set-index walls true 5 2))
         (= (walls) (set-index walls true 5 3))
         (= (walls) (set-index walls true 5 4))
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 5 7))
         (= (walls) (set-index walls true 5 8))
         (= (walls) (set-index walls true 5 9))
         (= (walls) (set-index walls true 5 10))
         (= (walls) (set-index walls true 5 11))
         (= (xloc gem1) 1)
         (= (yloc gem1) 6)
         (= (xloc door1) 2)
         (= (yloc door1) 6)
         (iscolor door1 red)
         (= (xloc door2) 3)
         (= (yloc door2) 6)
         (iscolor door2 blue)
         (= (xloc wizard4) 11)
         (= (yloc wizard4) 6)
         (= (xloc key1) 11)
         (= (yloc key1) 6)
         (iscolor key1 red)
         (iscolor wizard4 red)
         (has wizard4 key1)
         (= (walls) (set-index walls true 7 1))
         (= (walls) (set-index walls true 7 2))
         (= (walls) (set-index walls true 7 3))
         (= (walls) (set-index walls true 7 4))
         (= (walls) (set-index walls true 7 5))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 8))
         (= (walls) (set-index walls true 7 9))
         (= (walls) (set-index walls true 7 10))
         (= (walls) (set-index walls true 7 11))
         (= (walls) (set-index walls true 8 1))
         (= (walls) (set-index walls true 8 2))
         (= (walls) (set-index walls true 8 3))
         (= (walls) (set-index walls true 8 4))
         (= (walls) (set-index walls true 8 5))
         (= (xloc wizard5) 11)
         (= (yloc wizard5) 8)
         (iscolor wizard5 blue)
         (= (walls) (set-index walls true 9 1))
         (= (walls) (set-index walls true 9 2))
         (= (walls) (set-index walls true 9 3))
         (= (walls) (set-index walls true 9 4))
         (= (walls) (set-index walls true 9 5))
         (= (walls) (set-index walls true 9 7))
         (= (walls) (set-index walls true 9 8))
         (= (walls) (set-index walls true 9 9))
         (= (walls) (set-index walls true 9 10))
         (= (walls) (set-index walls true 9 11))
         (= (xloc door3) 10)
         (= (yloc door3) 10)
         (iscolor door3 blue)
         (= (xloc gem2) 11)
         (= (yloc gem2) 10)
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (walls) (set-index walls true 11 5))
         (= (xloc door4) 6)
         (= (yloc door4) 11)
         (iscolor door4 blue)
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 9))
         (= (walls) (set-index walls true 11 10))
         (= (walls) (set-index walls true 11 11))
         (= (xloc wizard6) 1)
         (= (yloc wizard6) 12)
         (= (xloc key2) 1)
         (= (yloc key2) 12)
         (iscolor key2 blue)
         (iscolor wizard6 blue)
         (has wizard6 key2)
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (walls) (set-index walls true 12 5))
         (= (xloc gem3) 6)
         (= (yloc gem3) 12)
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (walls) (set-index walls true 12 9))
         (= (walls) (set-index walls true 12 10))
         (= (walls) (set-index walls true 12 11))
         (= (xloc agent1) 6)
         (= (yloc agent1) 8)
         (= (xloc agent2) 8)
         (= (yloc agent2) 1))
  (:goal true)
)