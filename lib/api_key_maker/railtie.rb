module ApiKeyMaker
  class Railtie < Rails::Railtie
    initializer 'api_key_maker.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
    
    initializer 'api_key_maker.controller_additions' do
      ActionController::Base.send :include, ApiKeyMaker::ControllerAdditions
    end
    
  end
end