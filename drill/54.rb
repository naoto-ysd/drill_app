# 以下のような、Deviseを使ったRailsのコードがあるとします。
# これはDeviseを使用したときのcurrent_userに対して、nicknameカラムに
# あるデータを取得して@nicknameに代入することを意図したものです。

# @nickname = current_user.nickname
# ただし、ログインしないときにこれを実行するとnilに対してメソッドを使おうとしてエラーになってしまいます。

# これを回避できる記述がRuby2.3からできるようになりました。
# それがどのような記述か、またそれはどのような動きをするのか説明してください。

# 回答
# @nickname = current_user&.nickname
# &はsafe navigation operator、 lonely operator（ぼっち演算子）などと呼ばれる演算子です。

# メソッドに続けて記述すると、そのメソッドがnilでなかった場合のみ右辺のメソッドが実行されます。

# もしnilだった場合は全ての演算結果としてnilを返します。つまり@nicknameにnilが代入されます。

# とても使い勝手の良い演算子のため、覚えて活用していきましょう。

# なお、ぼっち演算子という命名は、&の記号が一人ぼっちで膝を抱えている人に見えるところからきています。