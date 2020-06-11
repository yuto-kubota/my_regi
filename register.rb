sum = 0
loop{
 puts"合計金額を入力してください"
 sum = gets
 sum = sum.to_i
 if sum == 0
   puts"値が間違っています"
 else
   break
 end
}

money = 0
loop{
 puts"金額を打ち込んでください"
 money = gets
 money = money.to_i
 if (money == 0) || (sum > money)
   puts"値が間違っています"
 else
   break
 end
}
if (sum*0.001 >= 1)
 th = sum * 0.001
 th = th.floor
 th = th.to_s.split('')[-1]
 th = th.to_i
end
