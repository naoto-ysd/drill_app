# 問題1
# トリボナッチ数列
# 以下のような規則で整数を並べます。

# 最初の3つの数は「1, 0, 5」である。
# それ以降は、直前の3つの整数の和を並べる。つまり、
# 4番目の整数は 1 + 0 + 5 = 6
# 5番目の整数は 0 + 5 + 6 = 11
# 6番目の整数は 5 + 6 + 11 = 22
# この規則により、次のような列ができます。

# 1, 0, 5, 6, 11, 22, 39, 72, ⋯

# この列の31番目の整数を求めてください。

array = [1, 0, 5]
sum = 0
count = 0

while count <= 34 do
  array.each{|num|
    sum += num
    puts num
  }
  array.push(sum)
  array.delete_at(0)
  puts "テスト#{array}"
  sum = 0
  count += 1
end