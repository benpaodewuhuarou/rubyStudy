class PorfoliosController < ApplicationController
  layout "porfolio"
	def index
		@portfolio_items = Porfolio.all 
	end

  def angular
    @angular_portfolio_items = Porfolio.angular
  end

	def new 
		@portfolio_item =Porfolio.new
    3.times{@portfolio_item.technologies.build}
	end

	def show
		@portfolio_item = Porfolio.find(params[:id])
	end

	def create
    	@portfolio_item = Porfolio.new(por_params)

    	respond_to do |format|
      	if @portfolio_item.save
        	format.html { redirect_to porfolios_path, notice: 'Your portfolio item is now live.' }
      	else
        	format.html { render :new }
      		end
   		end
  	end

	def edit
	    @portfolio_item = Porfolio.find(params[:id])
      3.times{@portfolio_item.technologies.build}
	end

   	def update
   		@portfolio_item = Porfolio.find(params[:id])
      
    	respond_to do |format|
      	if @portfolio_item.update(por_params)
        	format.html { redirect_to porfolios_path, notice: 'porfolio was successfully updated.' }
        
      	else
        	format.html { render :edit }
       
      	end
    	end
  	end

  	def destroy
  		# Perform the lookup
  		@portfolio_item = Porfolio.find(params[:id])
  		#Destroy the record
  		@portfolio_item.destroy
  		#redirect
    	respond_to do |format|
      		format.html { redirect_to porfolios_url, notice: 'porfolio was successfully destroyed.' }
    	end
  	end
    private
      def por_params
        params.require(:porfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
      end
end
