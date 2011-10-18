module Shop
  module Liquid
    module Drops
      class Product < Locomotive::Liquid::Drops::Base

        delegate :name, :description, :price, :to => '_source'

        def _id
          self._source._id.to_s
        end

        def has_image
          self._source.image?
        end

        def image_url
          self._source.image.url if self.has_image
        end

      end
    end
  end
end
