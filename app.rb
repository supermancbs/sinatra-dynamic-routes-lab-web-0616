require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    params[:name].reverse
  end 

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end 

  get '/say/:number/:phrase' do 
    "#{params[:phrase]}\n" * params[:number].to_i
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation=='add'
      (@num1.to_i + @num2.to_i).to_s
    elsif @operation=='subtract'
       @num1 - @num2
    elsif @operation=='multiply'
       @num1 * @num2
    elsif @operation=='divide'
      @num1 / @num2
    end 
      
  end 

end