class PortfoliosController < ApplicationController
    def index #list all objects
        @portfolio_items = Portfolio.all #turn this available to the view
        #it brings all portfolio items
    end

    def angular
      @angular_portfolio_items = Portfolio.angular

    end

    def new
        @portfolio_item = Portfolio.new

        3.times { @portfolio_item.technologies.build } #build will instantiate 3 versions of this portfolio item with technologies
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body,
           technologies_attributes: [:name]))
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

      def edit #similar to set_blog method
        @portfolio_item = Portfolio.find(params[:id]) #this is looking into the parameters
      end

      def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.'} 
          else
            format.html { render :edit }
          end
        end
      end

      def show
        #this is the show action
        @portfolio_item = Portfolio.find(params[:id])
      end

      def destroy
        # Perform the lookup
        @portfolio_item = Portfolio.find(params[:id])

        # Destroy/Delete the record
        @portfolio_item.destroy

        # Redirect -> What happens after the destroy occurs
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Portfolio was destroyed.' }
      end
    

end

end