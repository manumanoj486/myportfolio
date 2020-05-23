class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end	

	def new
		@portfolio_item = Portfolio.new
	end	

	def show
		@portfolio = Portfolio.find(params[:id])
	end	

	def create

	    @portfolio = Portfolio.create(params.require(:portfolio).permit( :title, :subtitle, :body))

	    respond_to do |format|
	      if @portfolio.save
	        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
	      else
	        format.html { render :new }
	      end
    	end
  	end

  	def edit
  		@portfolio_item = Portfolio.find(params[:id])
  	end	

  	def update
  		@portfolio = Portfolio.find(params[:id])
  		@portfolio.update(params.require(:portfolio).permit( :title, :subtitle, :body))
  		respond_to do |format|	
	        if @portfolio.save
	          format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
	        else
	          format.html { redirect_to edit_portfolio_path(@portfolio)}
	        end
	    end    
  	end	


  	def destroy
  		@portfolio = Portfolio.find(params[:id])
  		@portfolio.destroy
  		respond_to do |format| 
  			if @portfolio.destroy
				format.html { redirect_to portfolios_path, notice: " Portfolis is successfully deleted"}
			end	
  		end	
  	end	

end
