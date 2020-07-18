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

begin 'abc'.foo
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end

begin
  Foo.new
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end

begin
  1/0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue StandardError
  puts 'その他のエラーです'
end

begin 
  1/0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue
  puts 'その他のエラーです'
end

retry_count = 0
begin
  puts '処理を開始します。'
  1/0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。 (#{retry_count}回目)"
    retry
  else
    puts 'retryに失敗しました。'
  end
end


# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :india
#     'rupee'
#   else
#     raise "無効な国名です。#{country}"
#   end
# end

# puts currency_of(:japan)
# currency_of(:italy)


# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :india
#     'rupee'
#   else
#     raise ArgumentError, '無効な国名です。#{country}'
#   end
# end
# currency_of(:italy)

require 'date'

def to_date(string)
  begin
    Date.parse(string)
  rescue ArgumentError
    nil
  end
end

puts to_date('2017-01-01')

puts to_date('dbc')

def to_date(string)
  Date.parse(string) rescue nil
end

puts to_date('2017-01-01')

puts to_date('dbc')

def fizz_buzz(n)
  begin
    if n % 15 == 0
      'Fizz Buzz'
    elsif n % 3 == 0
      'Fizz'
    elsif n % 5 == 0
      'Buzz'
    else
      n.to_s
    end
  rescue => e
    puts "#{e.class} #{e.message}"
  end
end

puts fizz_buzz(nil)

def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
rescue => e
  puts "#{e.class} #{e.message}"
end

puts fizz_buzz(nil)
