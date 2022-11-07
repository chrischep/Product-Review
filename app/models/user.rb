class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        self.products.order(:star_rating).last.product
   end 
   def favorite_product
        self.reviews.where(product_id: product.product.id).delete_all
        
    end
end