require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bigcartel < OmniAuth::Strategies::OAuth2
      option :name, :bigcartel

      option :client_options, { 
        site: 'https://my.bigcartel.com',
        authorize_url: 'https://my.bigcartel.com/oauth/authorize',
        access_token_path: '/oauth/token',
      }

      uid { request.params['account_id'] }
    end
  end
end
