module MotoWebEngine
  class Engine < ::Rails::Engine
    isolate_namespace MotoWebEngine
    require 'kaminari'
  end
end
