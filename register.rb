class Sum
  attr_accessor :sum, :thousand, :hundred, :ten, :one

  def initialize(sum, thousand=0, hundred=0, ten=0, one=0)
    @sum = sum
    @thousand = thousand
    @hundred = hundred
    @ten = ten
    @one = one
  end

  def confirm(number)
    array = []
    array = number.to_s.split("")
    if array.length >= 4
      @thousand = array[-4].to_i
      @hundred = array[-3].to_i
      @ten = array[-2].to_i
      @one = array[-1].to_i
    elsif array.length >= 3
      @hundred = array[-3].to_i
      @ten = array[-2].to_i
      @one = array[-1].to_i
    elsif array.length >= 2
      @ten = array[-2].to_i
      @one = array[-1].to_i
    elsif array.length >= 2
      @one = array[-1].to_i
    end
  end


end

loop{
 puts"合計金額を入力してください"
 sum = gets
 sum = sum.to_i
 if sum == 0
   puts"値が間違っています"
 else
   @money = Sum.new(sum)
   break
 end
}
@money.confirm(@money.sum)
# @money

loop{
 puts"金額を打ち込んでください"
 sum = gets
 sum = sum.to_i
  if (sum == 0) || (@money.sum > sum)
   puts"値が間違っています"
 else
   @register = Sum.new(sum)
   break
 end
}
@register.confirm(@register.sum)
# @register

if (@register.sum > @money.sum + 10000) #10000円
  puts"値が間違っています"
elsif (@register.thousand >= @money.thousand + 2) && (@register.thousand != 5)
  puts"値が間違っています"
elsif (@register.hundred >= @money.hundred + 2) && (@register.hundred != 5)
  puts"値が間違っています"
elsif (@register.ten >= @money.ten + 2) && (@register.ten != 5)
  puts"値が間違っています"
elsif (@register.one >= @money.one + 2) && (@register.one != 5)
  puts"値が間違っています"
end

puts "お釣りは#{@register.sum - @money.sum}円です"
