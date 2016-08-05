require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class ApiRunsController < ApplicationController

    # skip_before_action :verify_authenticity_token
    
    def index
      offset = params[:offset] || 0
      limit = params[:limit] || 20
      @runs = Run.order('id DESC').offset(offset).limit(limit)
      render json: @runs
    end

    def create
      input = JSON.parse(request.body.read)
      # validate input hash here (or delegate to some private method)
      run = Run.new input
      run.save!
      render json: run
    end

    def update
      run = Run.find params[:id]
      input = JSON.parse(request.body.read)
      # validate input hash here (or delegate to some private method)
      run.update input
      render json: run
    end

    def show
      run = Run.find params[:id]
      render json: run
    end

  end
end
