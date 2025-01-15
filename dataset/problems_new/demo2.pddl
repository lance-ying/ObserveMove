(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 - key
            door1 door2 door3 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem
            wizard1 wizard2 wizard3 wizard4 wizard5 - wizard)
  (:init (= (walls) (new-bit-matrix false 11 9))
         (= (xloc wizard1) 1)
         (= (yloc wizard1) 1)
         (iscolor wizard1 blue)
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (walls) (set-index walls true 1 5))
         (= (walls) (set-index walls true 1 6))
         (= (xloc gem1) 7)
         (= (yloc gem1) 1)
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 4))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 7))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 4 1))
         (= (walls) (set-index walls true 4 2))
         (= (walls) (set-index walls true 4 3))
         (= (walls) (set-index walls true 4 4))
         (= (walls) (set-index walls true 4 6))
         (= (walls) (set-index walls true 4 7))
         (= (walls) (set-index walls true 4 8))
         (= (walls) (set-index walls true 4 9))
         (= (xloc wizard2) 1)
         (= (yloc wizard2) 5)
         (iscolor wizard2 blue)
         (= (xloc wizard3) 9)
         (= (yloc wizard3) 5)
         (iscolor wizard3 blue)
         (= (walls) (set-index walls true 6 1))
         (= (walls) (set-index walls true 6 2))
         (= (walls) (set-index walls true 6 3))
         (= (walls) (set-index walls true 6 4))
         (= (walls) (set-index walls true 6 6))
         (= (walls) (set-index walls true 6 7))
         (= (walls) (set-index walls true 6 8))
         (= (walls) (set-index walls true 6 9))
         (= (xloc gem2) 1)
         (= (yloc gem2) 7)
         (= (xloc door1) 2)
         (= (yloc door1) 7)
         (iscolor door1 blue)
         (= (xloc door2) 3)
         (= (yloc door2) 7)
         (iscolor door2 red)
         (= (walls) (set-index walls true 7 6))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 8))
         (= (walls) (set-index walls true 7 9))
         (= (walls) (set-index walls true 8 1))
         (= (walls) (set-index walls true 8 2))
         (= (walls) (set-index walls true 8 3))
         (= (walls) (set-index walls true 8 4))
         (= (walls) (set-index walls true 8 6))
         (= (walls) (set-index walls true 8 7))
         (= (walls) (set-index walls true 8 8))
         (= (walls) (set-index walls true 8 9))
         (= (xloc door3) 8)
         (= (yloc door3) 9)
         (iscolor door3 blue)
         (= (xloc gem3) 9)
         (= (yloc gem3) 9)
         (= (walls) (set-index walls true 10 2))
         (= (walls) (set-index walls true 10 3))
         (= (walls) (set-index walls true 10 4))
         (= (walls) (set-index walls true 10 6))
         (= (walls) (set-index walls true 10 7))
         (= (walls) (set-index walls true 10 8))
         (= (walls) (set-index walls true 10 9))
         (= (xloc wizard4) 1)
         (= (yloc wizard4) 11)
         (= (xloc key1) 1)
         (= (yloc key1) 11)
         (iscolor key1 red)
         (iscolor wizard4 red)
         (hold wizard4 key1)
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (xloc wizard5) 5)
         (= (yloc wizard5) 11)
         (= (xloc key2) 5)
         (= (yloc key2) 11)
         (iscolor key2 blue)
         (iscolor wizard5 blue)
         (hold wizard5 key2)
         (= (walls) (set-index walls true 11 6))
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 9))
         (= (xloc agent1) 5)
         (= (yloc agent1) 7)
         (= (xloc agent2) 5)
         (= (yloc agent2) 4))
  (:goal (has agent1 gem2))
)