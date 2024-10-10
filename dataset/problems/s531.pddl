(define (problem doors-keys-gems-problem)
  (:domain doors-keys-gems)
  (:objects blue red - color
            key1 key2 key3 key4 key5 key6 - key
            door1 door2 door3 door4 - door
            agent1 agent2 - agent
            gem1 gem2 gem3 - gem)
  (:init (= (walls) (new-bit-matrix false 12 11))
         (= (xloc key1) 1)
         (= (yloc key1) 1)
         (iscolor key1 blue)
         (= (walls) (set-index walls true 1 2))
         (= (walls) (set-index walls true 1 3))
         (= (walls) (set-index walls true 1 4))
         (= (xloc key2) 5)
         (= (yloc key2) 1)
         (iscolor key2 blue)
         (= (xloc key3) 11)
         (= (yloc key3) 1)
         (iscolor key3 blue)
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
         (locked door1)
         (= (xloc door2) 3)
         (= (yloc door2) 6)
         (iscolor door2 blue)
         (locked door2)
         (= (xloc key4) 11)
         (= (yloc key4) 6)
         (iscolor key4 red)
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
         (= (xloc key5) 11)
         (= (yloc key5) 8)
         (iscolor key5 blue)
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
         (locked door3)
         (= (xloc gem2) 11)
         (= (yloc gem2) 10)
         (= (walls) (set-index walls true 11 2))
         (= (walls) (set-index walls true 11 3))
         (= (walls) (set-index walls true 11 4))
         (= (walls) (set-index walls true 11 5))
         (= (xloc door4) 6)
         (= (yloc door4) 11)
         (iscolor door4 blue)
         (locked door4)
         (= (walls) (set-index walls true 11 7))
         (= (walls) (set-index walls true 11 8))
         (= (walls) (set-index walls true 11 9))
         (= (walls) (set-index walls true 11 10))
         (= (walls) (set-index walls true 11 11))
         (= (xloc key6) 1)
         (= (yloc key6) 12)
         (iscolor key6 blue)
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
         (= (xloc agent2) 6)
         (= (yloc agent2) 5))
  (:goal true)
)