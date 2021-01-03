class PropertyshowingsController < ApplicationController

    def new
        @propertyshowing = Propertyshowing.new
    end

    def create 
        @propertyshowing = Propertyshowing.create(ps_params)
        redirect_to agent_path(@propertyshowing.agent)
    end

    def edit
        @propertyshowing = Propertyshowing.find(params[:id])
    end 

    def update
         @propertyshowing = Propertyshowing.find_by(id: params[:id])
         @propertyshowing.update(ps_params)
         redirect_to agent_path(@propertyshowing.agent)
    end

    def destroy
        @propertyshowing = Propertyshowing.find_by(id: params[:id])
        @propertyshowing.destroy
        redirect_to agents_path
   end
    
    private
    def ps_params
        params.require(:propertyshowing).permit(:address, :date, :time, :description, :size, :price, :agent_id, :seller_id)
    end

end