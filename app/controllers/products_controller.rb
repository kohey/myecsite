class ProductsController < ApplicationController
    mount_uploader :image, AvatarUploader
    def new
        @user = User.new
    end

    def create

    end
end
