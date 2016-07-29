module Smug
  module Admin
    class CrudController < BaseController
      include ModelInspection
      include RouteInspection
      include DashboardInspection

      before_action :find_items, only: :index
      before_action :find_item, only: [:show, :edit, :update, :destroy]

      def index
      end

      def show
      end

      def new
        @item = NewDecorator.decorate(self.class.model.new)
      end

      def create
        @item = self.class.model.new(item_params)
        if @item.save
          flash[:notice] = t ".created", default: "Record created"
          redirect_to [:admin, self.class.model_name.route_key]
        else
          @item = NewDecorator.decorate(@item)
          render action: :new
        end
      end

      def edit
      end

      def update
        if @item.update(item_params)
          flash[:notice] = t ".updated", default: "Record updated"
          redirect_to [:admin, self.class.model_name.route_key]
        else
          render :edit
        end
      end

      def destroy
        @item.destroy
        flash[:notice] = t ".destroyed", default: "Record destroyed"
        redirect_to [:admin, self.class.model_name.route_key]
      end

      protected

      def find_items
        @items = self.class.model.all
        @items = @items.paginate(page: params[:page])
        @items = PaginationDecorator.decorate(@items)
      end

      def find_item
        @item = self.class.model.find(params[:id])
        @item = ShowDecorator.decorate(@item)
      end

      def item_params
        params.require(self.class.model_name.param_key).permit!
      end
    end
  end
end
