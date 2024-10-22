(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 door3 door4 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 gem4 - gem
            wizard1 wizard2 wizard3 wizard4 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (walls) (set-index walls true 1 1))
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (xloc wizard1) 4)
         (= (yloc wizard1) 1)
         (= (xloc key1) 4)
         (= (yloc key1) 1)
         (iscolor key1 red)
         (iscolor wizard1 red)
         (hold wizard1 key1)
         (= (walls) (set-index walls true 1 5))
         (= (xloc wizard2) 6)
         (= (yloc wizard2) 1)
         (iscolor wizard2 blue)
         (= (walls) (set-index walls true 1 7))
         (= (walls) (set-index walls true 1 8))
         (= (xloc wizard3) 9)
         (= (yloc wizard3) 1)
         (iscolor wizard3 blue)
         (= (walls) (set-index walls true 1 10))
         (= (xloc gem1) 11)
         (= (yloc gem1) 1)
         (= (walls) (set-index walls true 2 1))
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 2 10))
         (= (xloc door1) 11)
         (= (yloc door1) 2)
         (iscolor door1 blue)
         (= (walls) (set-index walls true 3 1))
         (= (walls) (set-index walls true 3 2))
         (= (walls) (set-index walls true 3 3))
         (= (walls) (set-index walls true 4 1))
         (= (walls) (set-index walls true 4 2))
         (= (walls) (set-index walls true 4 3))
         (= (walls) (set-index walls true 4 4))
         (= (walls) (set-index walls true 4 5))
         (= (walls) (set-index walls true 4 7))
         (= (walls) (set-index walls true 4 8))
         (= (walls) (set-index walls true 4 9))
         (= (walls) (set-index walls true 4 10))
         (= (walls) (set-index walls true 4 11))
         (= (xloc wizard4) 1)
         (= (yloc wizard4) 5)
         (= (xloc key2) 1)
         (= (yloc key2) 5)
         (iscolor key2 blue)
         (iscolor wizard4 blue)
         (hold wizard4 key2)
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 6 1))
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
         (= (xloc gem2) 1)
         (= (yloc gem2) 8)
         (= (xloc door2) 2)
         (= (yloc door2) 8)
         (iscolor door2 red)
         (= (walls) (set-index walls true 8 7))
         (= (xloc door3) 9)
         (= (yloc door3) 8)
         (iscolor door3 blue)
         (= (xloc gem3) 11)
         (= (yloc gem3) 8)
         (= (walls) (set-index walls true 9 1))
         (= (walls) (set-index walls true 9 2))
         (= (walls) (set-index walls true 9 3))
         (= (walls) (set-index walls true 9 4))
         (= (walls) (set-index walls true 9 5))
         (= (walls) (set-index walls true 9 7))
         (= (walls) (set-index walls true 9 9))
         (= (walls) (set-index walls true 9 10))
         (= (walls) (set-index walls true 9 11))
         (= (walls) (set-index walls true 10 1))
         (= (walls) (set-index walls true 10 2))
         (= (walls) (set-index walls true 10 3))
         (= (walls) (set-index walls true 10 4))
         (= (walls) (set-index walls true 10 5))
         (= (walls) (set-index walls true 10 7))
         (= (walls) (set-index walls true 10 9))
         (= (walls) (set-index walls true 10 10))
         (= (walls) (set-index walls true 10 11))
         (= (xloc gem4) 1)
         (= (yloc gem4) 11)
         (= (xloc door4) 2)
         (= (yloc door4) 11)
         (iscolor door4 red)
         (= (walls) (set-index walls true 12 1))
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (walls) (set-index walls true 12 5))
         (= (walls) (set-index walls true 12 6))
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (walls) (set-index walls true 12 9))
         (= (walls) (set-index walls true 12 10))
         (= (walls) (set-index walls true 12 11))
         (= (xloc agent1) 11)
         (= (yloc agent1) 11)
         (= (xloc agent2) 8)
         (= (yloc agent2) 3))
  (:goal (has agent1 gem1))
)