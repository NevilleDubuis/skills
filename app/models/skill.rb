class Skill < ActiveRecord::Base

  # ================
  # = Validations  =
  # ================

  validates :name, :characteristic, :description, :use, :type, presence: true
end
