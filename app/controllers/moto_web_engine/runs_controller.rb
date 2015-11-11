require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class RunsController < ApplicationController
    
    def index
      @runs = Run.last 10
    end    
    
  end
end
