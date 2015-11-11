require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class TestsController < ApplicationController
    
    def index
      @tests = Test.last 10
    end

  end
end
