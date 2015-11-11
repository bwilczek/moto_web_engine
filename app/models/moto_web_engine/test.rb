module MotoWebEngine
  class Test < ActiveRecord::Base
    
    belongs_to :run
    
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
