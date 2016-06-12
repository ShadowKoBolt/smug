module Smug
  module Admin
    class PaginationDecorator < Draper::CollectionDecorator
      delegate :current_page, :per_page, :offset, :total_entries, :total_pages

      def decorator_class
        # TODO: Need ability to have an item use a different decorator here
        # easily
        IndexDecorator
      end
    end
  end
end
