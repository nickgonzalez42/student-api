Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins /localhost:\d+/
    resource "*",
             headers: :any,
             methods: [:get, :post, :patch, :put, :delete]
  end
end
