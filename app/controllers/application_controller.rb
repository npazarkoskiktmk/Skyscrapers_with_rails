class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    include UsersAdditionalParams
end
