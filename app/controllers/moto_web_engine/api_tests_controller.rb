require_dependency "moto_web_engine/application_controller"

module MotoWebEngine
  class ApiTestsController < ApplicationController

    # skip_before_action :verify_authenticity_token
    
    def index
      offset = params[:offset] || 0
      limit = params[:limit] || 20
      @tests = Test.order('id DESC').offset(offset).limit(limit)
      render json: @tests
    end

    def create
      input = JSON.parse(request.body.read)
      # validate input hash here (or delegate to some private method)
      test = Test.new input
      test.save!
      render json: test
    end

    def update
      test = Test.find params[:id]
      input = JSON.parse(request.body.read)
      puts input
      # validate input hash here (or delegate to some private method)
      test.update input
      render json: test
    end

    def show
      test = Test.find params[:id]
      render json: test
    end

  end
end
