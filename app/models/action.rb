# frozen_string_literal: true

class Action < ApplicationRecord
  has_many :activities, dependent: :destroy

  validates :name, presence: true
  validates :value, presence: true, numericality: { only_integer: true }
end
