class Bell < ApplicationRecord
    after_save :check_escalation

    private

    def check_escalation
        sql = "SELECT COUNT(*) FROM bells WHERE created_at >= now() - INTERVAL '1 min'"
        count = ActiveRecord::Base.connection.execute(sql)
        EscalationService.new.perform if count.values[0][0] == 1
    end
end
