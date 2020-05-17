# 20時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
# それ以外は「OK」と出力するメソッドを作成します。
# オウムが喋る時をture、喋らない時をfalseと入力することにし、時刻も同時に入力します。

# 呼び出し方：
# parrot_trouble(talking, hour)

# 出力例：
# parrot_trouble(true, 6) → NG
# parrot_trouble(true, 7) → OK
# parrot_trouble(false, 6) → OK
# parrot_trouble(false, 7) → OK

def parrot_trouble(talking, hour)

  if (talking  && (hour < 7 || hour > 20))
    puts "NG"
  else
    puts "OK"
  end

end 


puts "時間を入力してください"
hour = gets.to_i

puts "オウムは喋りますか(しゃべる場合は1、喋らない場合は2を入力)"
talking_tmp = gets.to_i

if talking_tmp == 1
  talking = true
elsif talking_tmp == 2
  talking = false
else
  "1か2を入力してください"
end

parrot_trouble(talking, hour)