
# 文字列から重複を取り出すメソッド
def duplication(str)
  # 引数で受け取った文字列を半角スペースで分割し配列に格納
  tmpstr = str.split(" ")

  # 重複を排除した文字列を格納する配列
  dupstr = []

  # uniqメソッドで重複を排除し、配列に格納する
  dupstr = tmpstr.uniq

  # メソッドの返り値として、文字列の重複を排除した配列を返す
  return dupstr
end


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

str = gets
ary = duplication(str)
upperary = upperstr(ary)

upperary.each{|ustr|
  p ustr
}