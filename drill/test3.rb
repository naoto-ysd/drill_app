# 3の倍数と3のつく数字だけ
# 次の条件の少なくとも一方を満たす整数のことを「A的な数」と呼ぶことにします。

# ・3の倍数である。
# ・十進法で書いた場合に「3」が含まれる。

# 例えば、9、31、42、135は何れも「A的な数」です。

# 1から50000までの整数のうち「A的な数」だけを足し合わせたときの合計を求めてください。


count = 1
sum = 0

while count <= 50000
  str_count = count.to_s
  puts str_count
  if count % 3 == 0 || str_count.index("3")
    sum += count
  end
  count += 1
end

puts sum