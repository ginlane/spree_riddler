Spree::Core::Engine.add_routes do
  namespace "spree" do
    namespace "api" do
      resources :searches
    end
  end
end
