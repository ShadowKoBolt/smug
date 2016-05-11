module Smug
  module Admin
    class CrudController < BaseController
      include ModelInspection
      include RouteInspection

      def index
        render text: "index"
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
    end
  end
end
