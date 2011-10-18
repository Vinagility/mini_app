module Shop
  module Liquid
    module Filters
      module Base

        include ActionView::Helpers::NumberHelper

        def money_with_currency(price)
          number_to_currency(price)
        end

        def money_without_currency(price)
          number_to_currency(price, :unit => '')
        end

      end

      ::Liquid::Template.register_filter(Base)
    end
  end
end