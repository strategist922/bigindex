module BigIndex
  module Adapters

    class AbstractAdapter

      attr_reader :name, :options

      def adapter_name
        'abstract'
      end

      def process_index_batch(items, loop, options={})
        raise NotImplementedError
      end

      def drop_index
        raise NotImplementedError
      end

      def find_values_by_index(query, options={})
        raise NotImplementedError
      end

      def find_by_index(query, options={})
        raise NotImplementedError
      end

      def find_ids_by_index(query, options={})
        raise NotImplementedError
      end


      private

      def initialize(name, options)
        @name = name
        @options = options
      end

    end # class AbstractAdapter

  end # module Adapters
end # module BigIndex