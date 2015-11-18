module MotoWebEngine
  module ApplicationHelper
    
    def bgcolor_result(result)
      case result.to_sym
      when :pending
        '#ffeeee'
      when :running
        '#ffcc00'
      when :passed
        '#00ff00'
      when :failure
        '#ff0000'
      when :error
        '#cc0099'
      when :skipped
        '#0066ff'
      else
        '#ffffff'
      end     
    end
    
    def duration(d)
      return '-' if d.nil?
      secs = d.to_i % 60
      mins = d.to_i / 60
      fraction = (d - d.to_i).round(3).to_s[2..-1]
      return "0.#{fraction}\"" if mins == 0 && secs == 0
      return "#{secs}.#{fraction}\"" if mins == 0
      "#{mins}'#{secs}.#{fraction}\""
    end
          
  end
end
