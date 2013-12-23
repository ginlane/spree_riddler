require 'active_model_serializers'
class Spree::ProductSearchSerializer < ::ActiveModel::Serializer
  attributes :id, :name, :description, :thumbnail, :url
  attr_accessor :controller

  def initialize(resource, options)
    self.controller = options[:controller]
    super
  end

  def thumbnail
    @object.master_images.product
  end

  def url
    controller.url_for @object
  end
end
