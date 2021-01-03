class SellersController < ApplicationController
    def index 
        @sellers = Seller.all
    end

    def show
        @seller = Seller.find(params[:id])
    end

    def new
        @seller = Seller.new
    end

    def create 
        @seller = Seller.create(seller_params)
        redirect_to sellers_path
    end

    def edit
    end

    def update
    end

    def destroy
        @seller = Seller.find_by(id: params[:id])
        @seller.destroy
        redirect_to sellers_path
   end

    def seller_params
        params.require(:seller).permit(:name, :telephone, :email_address, :occupation)
    end
end