module Shop
  module Liquid
    module Drops
      class Products < ::Liquid::Drop

        def first
          self.collection.first
        end

        def last
          self.collection.last
        end

        def each(&block)
          self.collection.each(&block)
        end

        def each_with_index(&block)
          self.collection.each_with_index(&block)
        end

        def size
          self.collection.count
        end

        alias :count :size
        alias :length :size

        protected

        def paginate(options = {})
          @collection = self.collection.page(options[:page] || 1).per(options[:per_page] || 10)

          {
            :collection       => self.collection,
            :current_page     => self.collection.current_page,
            :previous_page    => self.collection.first_page? ? nil : self.collection.current_page - 1,
            :next_page        => self.collection.last_page? ? nil : self.collection.current_page + 1,
            :total_entries    => self.collection.total_count,
            :total_pages      => self.collection.num_pages,
            :per_page         => self.collection.options[:limit]
          }
        end

        def collection
          @collection ||= @context.registers[:site].products.ordered
        end

      end

    end
  end
end
