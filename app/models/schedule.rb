class Schedule < ApplicationRecord
    validates :title, {presence:true}
    validates :start,{presence:true}
    validates :end,{presence:true}
    validate :start_end_check
    def start_end_check
        if self.start && self.end
            errors.add(:end,"は開始日より前の日付は登録できません。") unless
            self.start < self.end
        end
    end
end
