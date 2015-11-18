require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class TestsController < ApplicationController
    
    def show
      @test = Test.find params[:id]
      render layout: 'moto_web_engine/no_menu'
    end

  end
end
