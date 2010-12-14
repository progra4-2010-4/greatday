Omnisocial.setup do |config|
  
  # ==> Twitter
  # config.twitter 'APP_KEY', 'APP_SECRET'
  
  # ==> Facebook
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'
  
  if Rails.env.production?
     # Configs for production mode go here
     config.twitter 'FQx86BCrCNNOUAJ2fmbRA','ITZCWiiYUYaeU1vZNaWBJtKZyinFt5U6Wdfcy409IY' 
     config.facebook '164349440268966','7f4a7d2fd94bad1930902c58155e71e0'  
  elsif Rails.env.development?
    
    # Configs for development mode go here
    config.twitter 'FQx86BCrCNNOUAJ2fmbRA','ITZCWiiYUYaeU1vZNaWBJtKZyinFt5U6Wdfcy409IY'
    config.facebook '164349440268966','7f4a7d2fd94bad1930902c58155e71e0'
  end
  
end
