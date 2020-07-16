puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま続行する'
end

puts 'End.'

def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue
    puts '例外が発生しました'
  end

  puts 'method_1 end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  1 / 0
  puts 'method_3 end.'
end

puts method_1

begin 1 / 0

rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース -----"
  puts e.backtrace
  puts "-----"
end

begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
end

begin 
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しましたね"
rescue NoMethodError
  puts "メソッドがありません"
rescue ZeroDivisionError, NoMethodError
  puts "0で除算したか、存在しないメソッドが呼び出されました"
end

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end

