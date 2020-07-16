class PortfoliosController < ApplicationController
    def index #list all objects
        @portfolio_items = Portfolio.all #turn this available to the view
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
        #these are the parameters that it is allowed to go through the system
        #title, subtitle and body are white-listed parameters
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
          else
            format.html { render :new }
          end
        end
      end
    

end

