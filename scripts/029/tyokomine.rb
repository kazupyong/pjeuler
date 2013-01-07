#2 ≤ a ≤ 5 と 2 ≤ b ≤ 5について, ab を全て考えてみよう:
#
#22=4, 23=8, 24=16, 25=32
#32=9, 33=27, 34=81, 35=243
#42=16, 43=64, 44=256, 45=1024
#52=25, 53=125, 54=625, 55=3125
#これらを小さい順に並べ, 同じ数を除いたとすると, 15個の項を得る:
#
#4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125
#
#2 ≤ a ≤ 100, 2 ≤ b ≤ 100 で同じことをしたときいくつの異なる項が存在するか?

result = 0
exist = Array.new
for a in 2..100
  for b in 2..100
    tmp = a**b
    if !exist.include?(tmp)
      result += 1
      exist << tmp
    end
  end
end
p result
