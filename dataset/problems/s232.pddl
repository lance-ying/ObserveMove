(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (walls) (set-index walls true 1 1))
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (walls) (set-index walls true 1 5))
         (= (walls) (set-index walls true 1 6))
         (= (walls) (set-index walls true 1 7))
         (= (xloc wizard1) 8)
         (= (yloc wizard1) 1)
         (= (xloc key1) 8)
         (= (yloc key1) 1)
         (iscolor key1 blue)
         (iscolor wizard1 blue)
         (hold wizard1 key1)
         (= (walls) (set-index walls true 1 9))
         (= (walls) (set-index walls true 1 10))
         (= (walls) (set-index walls true 1 11))
         (= (walls) (set-index walls true 2 1))
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 9))
         (= (walls) (set-index walls true 2 10))
         (= (walls) (set-index walls true 2 11))
         (= (xloc wizard2) 11)
         (= (yloc wizard2) 3)
         (iscolor wizard2 blue)
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
         (= (xloc door1) 3)
         (= (yloc door1) 6)
         (iscolor door1 blue)
         (= (xloc wizard3) 11)
         (= (yloc wizard3) 6)
         (= (xloc key2) 11)
         (= (yloc key2) 6)
         (iscolor key2 red)
         (iscolor wizard3 red)
         (hold wizard3 key2)
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
         (= (walls) (set-index walls true 8 7))
         (= (walls) (set-index walls true 8 8))
         (= (walls) (set-index walls true 8 9))
         (= (walls) (set-index walls true 8 10))
         (= (walls) (set-index walls true 8 11))
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
         (= (walls) (set-index walls true 11 1))
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (walls) (set-index walls true 11 5))
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 9))
         (= (walls) (set-index walls true 11 10))
         (= (xloc door2) 11)
         (= (yloc door2) 11)
         (iscolor door2 red)
         (= (walls) (set-index walls true 12 1))
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (walls) (set-index walls true 12 5))
         (= (xloc gem2) 6)
         (= (yloc gem2) 12)
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (walls) (set-index walls true 12 9))
         (= (walls) (set-index walls true 12 10))
         (= (xloc gem3) 11)
         (= (yloc gem3) 12)
         (= (xloc agent1) 1)
         (= (yloc agent1) 3)
         (= (xloc agent2) 6)
         (= (yloc agent2) 5))
  (:goal (has agent1 gem1))
)