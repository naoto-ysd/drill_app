# 配列から大文字から始まる文字列を抜き出すメソッド
def upperstr(array)

  # 配列の添字として使用する変数
  count = 0

  # 大文字から始まる文字列を格納する配列
  upper = []

  # eachメソッドで配列に含まれている要素を全て取り出す
  array.each{|arraystr|

    # 正規表現で先頭が大文字から始まりる文字列を抽出し、配列(upper)に格納する
    upper[count] = arraystr.slice(/^[A-Z].*/)

    # 配列の添字に1を加算する
    count += 1
  }
  
  # 文字列の先頭が小文字だった場合は配列にnilが格納されるため、deleteメソッドでnilを削除する。
  upper.delete(nil)

  # メソッドの返り値として、大文字から始まる文字列を格納した配列を変えす。
  return upper

end


# ユーザー用のガイド
p "文字列を半角スペースで区切って入力してください"

# コンソールから入力した文字列を変数に代入
str = gets

# 入力された文字列を半角スペースで区切って配列に代入
ary = str.split(" ")

# upperstrメソッドの返り値を変数に代入
# (upperstrメソッドは大文字から始まる文字列を取り出すメソッド)
upperary = upperstr(ary)

# ユーザー用のガイド
p "大文字から始まる文字列を取り出しました"

# eachメソッドで配列に含まれている要素を全て取り出す
upperary.each{|ustr|
  # 配列の中身を表示
  p ustr
}