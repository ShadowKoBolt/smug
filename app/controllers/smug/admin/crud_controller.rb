module Smug
  module Admin
    class CrudController < BaseController
      include ModelInspection
      include RouteInspection

      before_action :find_items, only: :index

      def index
      end

      def new
      end

      def create
      end

      def edit
      end

      def update
      end

      def destroy
      end

      protected

      def find_items
        @items = self.class.model.all
        begin
          @items = @items.decorate
        rescue Draper::UninferrableDecoratorError
          @items = IndexDecorator.decorate_collection(@items)
        end
      end
    end
  end
end
