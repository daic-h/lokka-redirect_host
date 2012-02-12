module Lokka
  module RedirectIfHeroku
    def self.registered(app)
      app.before do
        if request.host =~ /\.heroku\.com/
          redirect(request.url.sub(/\.heroku\.com/, '.com'))
        end
      end
    end
  end
end
