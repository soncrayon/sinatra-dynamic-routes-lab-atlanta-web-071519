require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end 

  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @n = params[:number]
    result = ""
    @n.to_i.times {
      result += @phrase
    }
    result 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      num = @number1 + @number2
    elsif @operation == "subtract"
      num = @number1 - @number2
    elsif @operation == "multiply"
      num = @number1 * @number2
    elsif @operation == "divide"
      num = @number1 / @number2
    end
    "#{num}"
  end

end