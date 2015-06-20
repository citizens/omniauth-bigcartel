require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bigcartel < OmniAuth::Strategies::OAuth2
      option :name, :bigcartel

      option :client_options, { 
        site: 'https://api.bigcartel.com',
        authorize_url: 'https://my.bigcartel.com/oauth/authorize',
        request_token_url: 'https://api.bigcartel.com/oauth/request_token',
        access_token_url: 'https://api.bigcartel.com/oauth/token',
      }

      uid { raw_info['id'] }

      info do
        {
          id: raw_info['id'],
          subdomain: raw_info['subdomain'],
          store_name: raw_info['store_name'],
          description: raw_info['description'],
          contact_email: raw_info['contact_email']
        }
      end

      extra do
        { user_info: raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get("/account").body)
      end    
    end
  end
end
