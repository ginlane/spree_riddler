class Spree::Api::SearchesController < ApplicationController
  def index
    results = ThinkingSphinx.search params[:q], page: params[:page], per: params[:per]
    render json: results, each_serializer: Spree::ProductSearchSerializer, controller: self
  end
end
