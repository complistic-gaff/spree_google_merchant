require 'spree_core'

module SpreeGoogleMerchant
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      require 'spree_google_merchant_hooks'
      
    end

    config.to_prepare &method(:activate).to_proc
  end
end
