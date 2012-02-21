module Lokka
  module RedirectHost
    def self.registered(app)
      app.before do
        if (it = ENV['REDIRECT_HOST']) && (request.host != it)
          host = "#{request.scheme}://#{it}"
          host << ":#{request.port}" unless request.port == 80
          host << request.path

          redirect(host)
        end
      end
    end
  end
end
