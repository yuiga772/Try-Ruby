# loopの中にある変数は外から呼び出すことができないので、loop文の外で定義しないといけない。
# そしてその変数を更新する形で、数字を上書きする。
number = 0
number_second = 0

#メソッドの定義
def add(f, s)
  puts f + s
end

def subtract(f, s)
  puts f - s
end

def multiply(f, s)
  puts f * s
end

def division(f, s)
  puts f / s
end

def modulo(f, s)
  puts f % s
end

puts "Hello, Let's cariculate! Please enter a first number:"


number = gets

  # to_sはデフォルトだからつけなくても良い。||は「または」(&&は「かつ」)。
if number.to_i != 0 || number.to_s == "0"
      #後の過程で計算に使用するため、integer型(又はfloat型)にする必要がある。
    number = number.to_i
else
  print "Error:Please enter a number:"
end



# 二つ目の数字を入力。
print "Please enter a next number:"


number_second = gets.chomp
  # 上記と同じプロセス。
if number_second.to_i != 0 || number_second.to_s == "0"
   number_second = number_second.to_i
else
    puts "Error:Please enter a number"
  end



# オペレーター(+・-・*・/・%のどれか)の入力。
print "Please input operator:"

operator = ""
loop do
  operator = gets.chomp
  break if operator == "+" || operator == "-" || operator == "*" || operator == "/" || operator == "%"
  puts "Invalid operator"
end

print "The answer is "
if operator == "+"
    add(number, number_second)
elsif operator == "-"
    subtract(number, number_second)
elsif operator == "*"
    multiply(number, number_second)
elsif operator == "/"
    division(number, number_second)
elsif operator == "%"
    modulo(number, number_second)
end
