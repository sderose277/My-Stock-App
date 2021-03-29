class HomeController < ApplicationController
  def index
  	@api = StockQuote::Stock.new(api_key: 'pk_d5c6ea5d4c2c4a2d8b13f329dd5508e5')

  	if params[:ticker] == ""
  		@nothing = "Hey! You Forgot To Enter A Symbol"
	elsif params[:ticker] 
		 @stock = StockQuote::Stock.quote(params[:ticker]) 
		if !@stock 
  		@error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again" 
		 
		end
  	end
  end
  	def about
  end
end

