require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bigcartel < OmniAuth::Strategies::OAuth2
      option :name, :bigcartel

      option :client_options, { 
        site: 'https://my.bigcartel.com',
        authorize_path: '/oauth/authorize',
        request_token_path: '/oauth/token',
        access_token_path: '/oauth/request_token',
      }

      uid { request.params['account_id'] }
    end
  end
end
