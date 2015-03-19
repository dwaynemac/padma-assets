require "padma-assets/version"

module Padma
  module Assets
    class Engine < Rails::Engine
      engine_name "padma-assets"
      config.i18n.load_path += Dir[File.join(File.expand_path(File.dirname(__FILE__)), 'locales', '*.yml')]
      config.paths.app.views << Dir[File.join(File.expand_path(File.dirname(__FILE__)), '../app/views')] 
    end
  end
end
