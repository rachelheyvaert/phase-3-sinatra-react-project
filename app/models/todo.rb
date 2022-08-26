class Todo < ActiveRecord::Base
    belongs_to :category

    def self.by_oldest
        self.all.order(created_at: :desc)
      end
end