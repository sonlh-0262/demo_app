class Search::UsersController < ApplicationController
  def index
    if params[:name].present?
       @users = User.search_name(params[:name]).order_by_created_at(params[:sort_by_created_at].to_sym)
      else
        @users = User.none
      end
      render "users/index"
  end
end