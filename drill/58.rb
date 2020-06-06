# 平日でないまたは休日の場合は「True」と返信し、
# 休日ではない場合は「False」と条件分岐させるメソッドを作りましょう。

# 呼び出し方：
# sleep_in(weekday, vacation)

# 出力例：
# sleep_in(false, false) → False
# sleep_in(true, false) → False
# sleep_in(false, true) → True

# 模範解答
# def sleep_in(is_weekday, is_vacation)
#   if (is_weekday != true) || (is_vacation == false)
#     puts "True"
#   else
#     puts "False"
#   end
# end
# is_weekday = true
# is_vacation = false
# sleep_in(is_weekday,is_vacation)


def sleep_in(weekday, vacation)
  if weekday == false || vacation == true
    p true
  else
    p false
end

sleep_in(false, true)
