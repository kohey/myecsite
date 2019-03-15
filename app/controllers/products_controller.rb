class ProductsController < ApplicationController
    def new

    end

    def create
        # binding.pry
        uploader = AvatarUploader.new(product_params)
        @product = Product.new

        @product.name = params[:name]
        @product.description = params[:description]
        @product.price = params[:price]
        @product.image = params[:product][:image]

        if @product.save
            flash[:success] = '商品を登録しました'
            redirect_to '/'
        else
            flash[:danger] = '登録できませんでした'
            render '/products/new'
        end

    end

    private
    def product_params
        params.require(:product).permit(:name,:description,:price,:image)
    end
end
