# 正の整数を入力します。その整数が、
# 10の倍数（10,20,30...）からの差が
# 2以内であるときはTrue
# それ以外はFalseと出力するメソッドを作りましょう。

# 出力例：
# near_ten(12)→True
# near_ten(17)→False
# near_ten(19)→True

def near_ten(num)
quotient = num % 10
if quotient  <= 2 || quotient >= 8
  puts "True"
else
  puts "False"
end
end