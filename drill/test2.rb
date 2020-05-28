# 4乗的ガウス
# 1から50までの整数の4乗の和を求めてください。

# 14 + 24 + 34 + ⋯ + 504

count = 1
sum = 0

while count <= 50 do
  sum += count**4
  puts "#{count}回目:#{sum}"
  count += 1
end