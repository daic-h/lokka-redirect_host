module Lokka
  module RedirectHost
    def self.registered(app)
      app.before do
        unless request.host =~ ENV['REDIRECT_HOST']
          redirect(request.scheme + '://' + ENV['REDIRECT_HOST'] + request.path)
        end
      end
    end
  end
end
