class ProductsController < ApplicationController
    mount_uploader :image, AvatarUploader
end
