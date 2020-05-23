class EscalationJob < ApplicationJob

    EscalationService.new.perform

end
