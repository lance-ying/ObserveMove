(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 door3 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 - wizard)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (walls) (set-index walls true 1 1))
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (xloc wizard1) 5)
         (= (yloc wizard1) 1)
         (iscolor wizard1 blue)
         (= (walls) (set-index walls true 1 6))
         (= (walls) (set-index walls true 1 7))
         (= (walls) (set-index walls true 1 8))
         (= (walls) (set-index walls true 1 9))
         (= (walls) (set-index walls true 1 10))
         (= (xloc gem1) 11)
         (= (yloc gem1) 1)
         (= (walls) (set-index walls true 2 1))
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 2 9))
         (= (walls) (set-index walls true 2 10))
         (= (xloc door1) 11)
         (= (yloc door1) 2)
         (iscolor door1 blue)
         (= (xloc wizard2) 1)
         (= (yloc wizard2) 3)
         (= (xloc key1) 1)
         (= (yloc key1) 3)
         (iscolor key1 blue)
         (iscolor wizard2 blue)
         (hold wizard2 key1)
         (= (walls) (set-index walls true 4 1))
         (= (walls) (set-index walls true 4 2))
         (= (walls) (set-index walls true 4 3))
         (= (walls) (set-index walls true 4 5))
         (= (walls) (set-index walls true 4 6))
         (= (walls) (set-index walls true 4 7))
         (= (walls) (set-index walls true 4 8))
         (= (walls) (set-index walls true 4 9))
         (= (walls) (set-index walls true 4 10))
         (= (walls) (set-index walls true 4 11))
         (= (walls) (set-index walls true 5 1))
         (= (walls) (set-index walls true 5 2))
         (= (walls) (set-index walls true 5 3))
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 5 6))
         (= (walls) (set-index walls true 5 7))
         (= (walls) (set-index walls true 5 8))
         (= (walls) (set-index walls true 5 9))
         (= (walls) (set-index walls true 5 10))
         (= (walls) (set-index walls true 5 11))
         (= (walls) (set-index walls true 6 1))
         (= (walls) (set-index walls true 6 2))
         (= (walls) (set-index walls true 6 3))
         (= (walls) (set-index walls true 6 5))
         (= (walls) (set-index walls true 6 6))
         (= (walls) (set-index walls true 6 7))
         (= (walls) (set-index walls true 6 8))
         (= (walls) (set-index walls true 6 9))
         (= (walls) (set-index walls true 6 10))
         (= (walls) (set-index walls true 6 11))
         (= (walls) (set-index walls true 7 1))
         (= (walls) (set-index walls true 7 2))
         (= (walls) (set-index walls true 7 3))
         (= (walls) (set-index walls true 7 5))
         (= (walls) (set-index walls true 7 6))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 8))
         (= (walls) (set-index walls true 7 9))
         (= (walls) (set-index walls true 7 10))
         (= (walls) (set-index walls true 7 11))
         (= (xloc wizard3) 11)
         (= (yloc wizard3) 8)
         (= (xloc key2) 11)
         (= (yloc key2) 8)
         (iscolor key2 red)
         (iscolor wizard3 red)
         (hold wizard3 key2)
         (= (xloc door2) 1)
         (= (yloc door2) 9)
         (iscolor door2 red)
         (= (walls) (set-index walls true 9 2))
         (= (walls) (set-index walls true 9 3))
         (= (walls) (set-index walls true 9 5))
         (= (walls) (set-index walls true 9 6))
         (= (walls) (set-index walls true 9 7))
         (= (walls) (set-index walls true 9 9))
         (= (walls) (set-index walls true 9 10))
         (= (walls) (set-index walls true 9 11))
         (= (walls) (set-index walls true 10 2))
         (= (walls) (set-index walls true 10 3))
         (= (walls) (set-index walls true 10 5))
         (= (walls) (set-index walls true 10 6))
         (= (walls) (set-index walls true 10 7))
         (= (walls) (set-index walls true 10 9))
         (= (walls) (set-index walls true 10 10))
         (= (walls) (set-index walls true 10 11))
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 5))
         (= (walls) (set-index walls true 11 6))
         (= (walls) (set-index walls true 11 7))
         (= (xloc door3) 10)
         (= (yloc door3) 11)
         (iscolor door3 blue)
         (= (xloc gem2) 11)
         (= (yloc gem2) 11)
         (= (xloc gem3) 1)
         (= (yloc gem3) 12)
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 5))
         (= (walls) (set-index walls true 12 6))
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (walls) (set-index walls true 12 9))
         (= (walls) (set-index walls true 12 10))
         (= (walls) (set-index walls true 12 11))
         (= (xloc agent1) 4)
         (= (yloc agent1) 12)
         (= (xloc agent2) 4)
         (= (yloc agent2) 6))
  (:goal (has agent1 gem1))
)