require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class RunsController < ApplicationController
    
    def index
      @runs = Run.order('created_at DESC').page(params[:page]).per(20)
    end    
    
    def show
      @run = Run.find(params[:id])
    end
    
  end
end
