# 任意の2つの文字列があります。
# 大文字と小文字の違いを無視して、
# どちらかの文字がもう一方の文字の最後にある場合はTrueを
# ない場合はFalseを出力するプログラムを作りましょう。
# （つまり、大文字と小文字は区別されません）。
# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# end_other('Hiabc', 'abc') → True
# end_other('AbC', 'HiaBc') → True
# end_other('abc', 'abXabc') → True

def end_other(a,b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length

  if  b_down.slice!(-(a_len)..b_len - 1) == a_down || a_down.slice!(-(b_len)..a_len - 1) == b_down
    puts "True"
  else
    puts "False"
  end
end

end_other('abc', 'abXabc')