 Omnisocial.setup do |config|

      # ==> Twitter
      # config.twitter 'APP_KEY', 'APP_SECRET'

      # ==> Facebook
      # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'

      

    if Rails.env.production?
       # Configs for production mode go here
         config.twitter 'APP_KEY', 'APP_SECRET'

     elsif Rails.env.development?

       # Configs for development mode go here
       config.twitter 'ZPVwzXFtrmR2VNNMvdQQig', 'czCNf7uFWWM9sRDPwqcnmpcFOEMf8XK6hPzQudbWrog'

  
     end

   end
