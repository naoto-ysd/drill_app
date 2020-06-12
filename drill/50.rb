# Rubyでは:（コロン）で始まるシンボルと呼ばれるものがありますが、
# これはどういったものか、またシンボルを使うことのメリットは何か解説してください。

# 回答
Rubyの内部では整数として管理されているが、文字列のように呼び出せるオブジェクト。
同じシンボルであれば同一のオブジェクトを参照するので、いくつ作成しても必要なメモリ容量は変わらない。また、文字列よりも高速に処理することができる。


# Railsアプリケーションではバリデーションに引っかかると保存がされない仕組みがあります。
# 以下のコードで、保存されるべきtweetがなぜか保存されずロールバックされてしまう場合、どうすればその理由を確認できるか説明してください。
tweet = Tweet.new(tweet_params)
if tweet.save
  some_method(tweet)
end

# 回答
①1行目と2行の間にbinding.pryを記載し止める。
②pryの中で、tweet.saveを実行する。
③tweet.errorsを実行すると保存の際に出たエラーの内容が表示される。