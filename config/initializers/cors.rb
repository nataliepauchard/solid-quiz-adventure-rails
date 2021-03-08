Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://quiz-app-solid-adventure.herokuapp.com/' #needs to be replaced with an explicit list of real URLs on Heroku when you deploy, you'll get an error, need actual host here # ##
    resource '*',
      :headers => :any,
      :methods => %i( get post put patch delete options head )
  end
end
