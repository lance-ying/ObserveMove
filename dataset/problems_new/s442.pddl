(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 wizard4 wizard5 wizard6 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (xloc gem1) 1)
         (= (yloc gem1) 1)
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (walls) (set-index walls true 1 5))
         (= (xloc gem2) 6)
         (= (yloc gem2) 1)
         (= (walls) (set-index walls true 1 7))
         (= (walls) (set-index walls true 1 8))
         (= (xloc wizard1) 9)
         (= (yloc wizard1) 1)
         (iscolor wizard1 blue)
         (= (walls) (set-index walls true 1 10))
         (= (walls) (set-index walls true 1 11))
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 2 10))
         (= (walls) (set-index walls true 2 11))
         (= (xloc door1) 1)
         (= (yloc door1) 3)
         (iscolor door1 blue)
         (= (walls) (set-index walls true 3 2))
         (= (walls) (set-index walls true 3 3))
         (= (walls) (set-index walls true 3 4))
         (= (walls) (set-index walls true 3 5))
         (= (walls) (set-index walls true 3 7))
         (= (walls) (set-index walls true 3 8))
         (= (walls) (set-index walls true 3 10))
         (= (walls) (set-index walls true 3 11))
         (= (xloc wizard2) 11)
         (= (yloc wizard2) 4)
         (iscolor wizard2 blue)
         (= (walls) (set-index walls true 5 1))
         (= (walls) (set-index walls true 5 2))
         (= (walls) (set-index walls true 5 3))
         (= (walls) (set-index walls true 5 4))
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 5 7))
         (= (walls) (set-index walls true 5 8))
         (= (walls) (set-index walls true 5 10))
         (= (walls) (set-index walls true 5 11))
         (= (walls) (set-index walls true 6 1))
         (= (walls) (set-index walls true 6 2))
         (= (walls) (set-index walls true 6 3))
         (= (walls) (set-index walls true 6 4))
         (= (walls) (set-index walls true 6 5))
         (= (walls) (set-index walls true 6 7))
         (= (walls) (set-index walls true 6 8))
         (= (walls) (set-index walls true 6 10))
         (= (walls) (set-index walls true 6 11))
         (= (walls) (set-index walls true 7 1))
         (= (walls) (set-index walls true 7 2))
         (= (walls) (set-index walls true 7 3))
         (= (walls) (set-index walls true 7 4))
         (= (walls) (set-index walls true 7 5))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 8))
         (= (walls) (set-index walls true 7 10))
         (= (walls) (set-index walls true 7 11))
         (= (xloc wizard3) 1)
         (= (yloc wizard3) 8)
         (= (xloc key1) 1)
         (= (yloc key1) 8)
         (iscolor key1 red)
         (iscolor wizard3 red)
         (has wizard3 key1)
         (= (walls) (set-index walls true 8 7))
         (= (walls) (set-index walls true 8 8))
         (= (xloc wizard4) 11)
         (= (yloc wizard4) 8)
         (iscolor wizard4 blue)
         (= (walls) (set-index walls true 9 1))
         (= (walls) (set-index walls true 9 2))
         (= (walls) (set-index walls true 9 3))
         (= (walls) (set-index walls true 9 4))
         (= (walls) (set-index walls true 9 5))
         (= (walls) (set-index walls true 9 7))
         (= (walls) (set-index walls true 9 8))
         (= (walls) (set-index walls true 9 10))
         (= (walls) (set-index walls true 9 11))
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (walls) (set-index walls true 11 5))
         (= (walls) (set-index walls true 11 6))
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 10))
         (= (xloc door2) 11)
         (= (yloc door2) 11)
         (iscolor door2 blue)
         (= (xloc wizard5) 1)
         (= (yloc wizard5) 12)
         (iscolor wizard5 blue)
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (walls) (set-index walls true 12 5))
         (= (walls) (set-index walls true 12 6))
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (xloc wizard6) 9)
         (= (yloc wizard6) 12)
         (= (xloc key2) 9)
         (= (yloc key2) 12)
         (iscolor key2 blue)
         (iscolor wizard6 blue)
         (has wizard6 key2)
         (= (walls) (set-index walls true 12 10))
         (= (xloc gem3) 11)
         (= (yloc gem3) 12)
         (= (xloc agent1) 6)
         (= (yloc agent1) 8)
         (= (xloc agent2) 6)
         (= (yloc agent2) 4))
  (:goal (has agent1 gem1))
)