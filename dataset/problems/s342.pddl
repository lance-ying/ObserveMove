(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 door3 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 wizard4 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (walls) (set-index walls true 1 1))
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (walls) (set-index walls true 1 5))
         (= (walls) (set-index walls true 1 6))
         (= (xloc wizard1) 7)
         (= (yloc wizard1) 1)
         (= (xloc key1) 7)
         (= (yloc key1) 1)
         (iscolor key1 red)
         (iscolor wizard1 red)
         (hold wizard1 key1)
         (= (walls) (set-index walls true 1 8))
         (= (walls) (set-index walls true 1 9))
         (= (walls) (set-index walls true 1 10))
         (= (walls) (set-index walls true 1 11))
         (= (xloc wizard2) 1)
         (= (yloc wizard2) 2)
         (iscolor wizard2 blue)
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 2 9))
         (= (walls) (set-index walls true 2 10))
         (= (walls) (set-index walls true 2 11))
         (= (walls) (set-index walls true 3 2))
         (= (walls) (set-index walls true 3 3))
         (= (walls) (set-index walls true 3 4))
         (= (walls) (set-index walls true 3 5))
         (= (walls) (set-index walls true 3 6))
         (= (walls) (set-index walls true 3 8))
         (= (walls) (set-index walls true 3 9))
         (= (walls) (set-index walls true 3 10))
         (= (walls) (set-index walls true 3 11))
         (= (xloc door1) 10)
         (= (yloc door1) 4)
         (iscolor door1 red)
         (= (xloc gem1) 11)
         (= (yloc gem1) 4)
         (= (walls) (set-index walls true 5 2))
         (= (walls) (set-index walls true 5 3))
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 5 6))
         (= (walls) (set-index walls true 5 7))
         (= (walls) (set-index walls true 5 9))
         (= (walls) (set-index walls true 5 10))
         (= (walls) (set-index walls true 5 11))
         (= (xloc wizard3) 1)
         (= (yloc wizard3) 6)
         (= (xloc key2) 1)
         (= (yloc key2) 6)
         (iscolor key2 blue)
         (iscolor wizard3 blue)
         (hold wizard3 key2)
         (= (walls) (set-index walls true 6 2))
         (= (walls) (set-index walls true 6 3))
         (= (walls) (set-index walls true 6 5))
         (= (walls) (set-index walls true 6 6))
         (= (walls) (set-index walls true 6 7))
         (= (walls) (set-index walls true 6 9))
         (= (walls) (set-index walls true 6 10))
         (= (walls) (set-index walls true 6 11))
         (= (walls) (set-index walls true 7 1))
         (= (walls) (set-index walls true 7 2))
         (= (walls) (set-index walls true 7 3))
         (= (walls) (set-index walls true 7 5))
         (= (walls) (set-index walls true 7 6))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 9))
         (= (walls) (set-index walls true 7 10))
         (= (walls) (set-index walls true 7 11))
         (= (walls) (set-index walls true 8 1))
         (= (walls) (set-index walls true 8 2))
         (= (walls) (set-index walls true 8 3))
         (= (walls) (set-index walls true 8 5))
         (= (walls) (set-index walls true 8 6))
         (= (walls) (set-index walls true 8 7))
         (= (walls) (set-index walls true 8 9))
         (= (walls) (set-index walls true 8 10))
         (= (walls) (set-index walls true 8 11))
         (= (xloc wizard4) 11)
         (= (yloc wizard4) 9)
         (iscolor wizard4 blue)
         (= (walls) (set-index walls true 10 1))
         (= (walls) (set-index walls true 10 2))
         (= (walls) (set-index walls true 10 3))
         (= (walls) (set-index walls true 10 4))
         (= (walls) (set-index walls true 10 5))
         (= (xloc door2) 6)
         (= (yloc door2) 10)
         (iscolor door2 red)
         (= (walls) (set-index walls true 10 7))
         (= (walls) (set-index walls true 10 8))
         (= (walls) (set-index walls true 10 10))
         (= (walls) (set-index walls true 10 11))
         (= (walls) (set-index walls true 11 1))
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (walls) (set-index walls true 11 5))
         (= (xloc door3) 6)
         (= (yloc door3) 11)
         (iscolor door3 blue)
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 10))
         (= (walls) (set-index walls true 11 11))
         (= (walls) (set-index walls true 12 1))
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (walls) (set-index walls true 12 5))
         (= (xloc gem2) 6)
         (= (yloc gem2) 12)
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (xloc gem3) 9)
         (= (yloc gem3) 12)
         (= (walls) (set-index walls true 12 10))
         (= (walls) (set-index walls true 12 11))
         (= (xloc agent1) 3)
         (= (yloc agent1) 4)
         (= (xloc agent2) 8)
         (= (yloc agent2) 9))
  (:goal (has agent1 gem2))
)