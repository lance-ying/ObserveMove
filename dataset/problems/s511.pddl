(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 key3 key4 key5 key6 - key
            door1 door2 door3 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (xloc key1) 1)
         (= (yloc key1) 1)
         (iscolor key1 blue)
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (xloc key2) 4)
         (= (yloc key2) 1)
         (iscolor key2 blue)
         (= (walls) (set-index walls true 1 5))
         (= (walls) (set-index walls true 1 6))
         (= (xloc key3) 7)
         (= (yloc key3) 1)
         (iscolor key3 blue)
         (= (walls) (set-index walls true 1 8))
         (= (walls) (set-index walls true 1 9))
         (= (walls) (set-index walls true 1 10))
         (= (xloc key4) 11)
         (= (yloc key4) 1)
         (iscolor key4 blue)
         (= (walls) (set-index walls true 2 2))
         (= (walls) (set-index walls true 2 3))
         (= (walls) (set-index walls true 2 5))
         (= (walls) (set-index walls true 2 6))
         (= (walls) (set-index walls true 2 8))
         (= (walls) (set-index walls true 2 9))
         (= (walls) (set-index walls true 2 10))
         (= (walls) (set-index walls true 3 2))
         (= (walls) (set-index walls true 3 3))
         (= (walls) (set-index walls true 3 5))
         (= (walls) (set-index walls true 3 6))
         (= (walls) (set-index walls true 3 8))
         (= (walls) (set-index walls true 3 9))
         (= (walls) (set-index walls true 3 10))
         (= (walls) (set-index walls true 5 1))
         (= (walls) (set-index walls true 5 2))
         (= (walls) (set-index walls true 5 4))
         (= (walls) (set-index walls true 5 5))
         (= (walls) (set-index walls true 5 6))
         (= (walls) (set-index walls true 5 7))
         (= (walls) (set-index walls true 5 8))
         (= (walls) (set-index walls true 5 10))
         (= (xloc key5) 1)
         (= (yloc key5) 6)
         (iscolor key5 red)
         (= (walls) (set-index walls true 6 4))
         (= (walls) (set-index walls true 6 5))
         (= (walls) (set-index walls true 6 6))
         (= (walls) (set-index walls true 6 7))
         (= (walls) (set-index walls true 6 8))
         (= (walls) (set-index walls true 6 10))
         (= (walls) (set-index walls true 7 1))
         (= (walls) (set-index walls true 7 2))
         (= (walls) (set-index walls true 7 4))
         (= (walls) (set-index walls true 7 5))
         (= (walls) (set-index walls true 7 6))
         (= (walls) (set-index walls true 7 7))
         (= (walls) (set-index walls true 7 8))
         (= (walls) (set-index walls true 7 10))
         (= (xloc key6) 11)
         (= (yloc key6) 7)
         (iscolor key6 blue)
         (= (walls) (set-index walls true 8 1))
         (= (walls) (set-index walls true 8 2))
         (= (walls) (set-index walls true 8 4))
         (= (walls) (set-index walls true 8 5))
         (= (walls) (set-index walls true 8 6))
         (= (walls) (set-index walls true 8 7))
         (= (walls) (set-index walls true 8 8))
         (= (walls) (set-index walls true 8 10))
         (= (walls) (set-index walls true 8 11))
         (= (walls) (set-index walls true 9 1))
         (= (walls) (set-index walls true 9 2))
         (= (walls) (set-index walls true 9 4))
         (= (walls) (set-index walls true 9 5))
         (= (walls) (set-index walls true 9 6))
         (= (walls) (set-index walls true 9 7))
         (= (walls) (set-index walls true 9 8))
         (= (walls) (set-index walls true 9 10))
         (= (walls) (set-index walls true 9 11))
         (= (xloc door1) 10)
         (= (yloc door1) 10)
         (iscolor door1 red)
         (locked door1)
         (= (xloc gem1) 11)
         (= (yloc gem1) 10)
         (= (xloc door2) 1)
         (= (yloc door2) 11)
         (iscolor door2 blue)
         (locked door2)
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (xloc door3) 5)
         (= (yloc door3) 11)
         (iscolor door3 blue)
         (locked door3)
         (= (walls) (set-index walls true 11 6))
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 9))
         (= (walls) (set-index walls true 11 10))
         (= (walls) (set-index walls true 11 11))
         (= (xloc gem2) 1)
         (= (yloc gem2) 12)
         (= (walls) (set-index walls true 12 2))
         (= (walls) (set-index walls true 12 3))
         (= (walls) (set-index walls true 12 4))
         (= (xloc gem3) 5)
         (= (yloc gem3) 12)
         (= (walls) (set-index walls true 12 6))
         (= (walls) (set-index walls true 12 7))
         (= (walls) (set-index walls true 12 8))
         (= (walls) (set-index walls true 12 9))
         (= (walls) (set-index walls true 12 10))
         (= (walls) (set-index walls true 12 11))
         (= (xloc agent1) 9)
         (= (yloc agent1) 8)
         (= (xloc agent2) 3)
         (= (yloc agent2) 4))
  (:goal (has agent1 gem3))
)