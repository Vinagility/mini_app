module Shop
  module Liquid
    module Drops
      class Shop < ::Liquid::Drop

        def products
          @products ||= Products.new
        end

      end

    end
  end
end