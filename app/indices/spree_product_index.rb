ThinkingSphinx::Index.define "spree/product", with: :active_record do
  indexes name, sortable: true
  indexes master.sku, as: :sku
  indexes description
  indexes meta_description
  indexes meta_keywords
  indexes taxons(:name), as: :taxon, facet: :true

  has taxons(:id), as: :taxon_ids

  table_name = Spree::Product.table_name
  active_sql = "#{table_name}.deleted_at IS NULL AND #{table_name}.available_on <= NOW()"

  has where(active_sql), as: :active, type: :boolean
end
