class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token #required for APIs
end

# do we need to inherit from ActiveRecord ????
