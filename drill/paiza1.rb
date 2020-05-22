# https://paiza.jp/works/mondai/prob60/5_or_more_9?language_uid=ruby

# 入力は以下のフォーマットで与えられます。

# n (数字の総数)
# a_1
# a_2
# a_3
# ...
# a_i
# ...
# a_n

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください

# 期待する出力
# 入力された正の整数a_iのうち5以上のものを全て足しあわせて出力してください。
# 最後は改行し、余計な文字、空行を含んではいけません。

# すべてのテストケースにおいて、以下の条件をみたします。
# 1 ≦ n ≦ 1,000
# -1,000,000 ≦ a_i ≦ 1,000,000

input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  print "hello = #{ s[0] } , world = #{ s[1] }\n"
end