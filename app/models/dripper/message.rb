module Dripper
  class Message < ActiveRecord::Base
    #validates :drippable, presence: true
    belongs_to :drippable, polymorphic: true, optional: true

    belongs_to :dripper_action, class_name: "Dripper::Action"
  end
end
