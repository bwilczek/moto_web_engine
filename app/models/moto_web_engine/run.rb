module MotoWebEngine
  class Run < ActiveRecord::Base
    
    has_many :tests, dependent: :destroy
  
    enum result: { 
      pending: -2,
      running: -1,
      passed: 0,
      failure: 1,
      error: 2,
      skipped: 3
    }
    
  end
end
