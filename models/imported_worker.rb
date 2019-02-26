# frozen_string_literal: true

# Imported Workers model
class ImportedWorker < ActiveRecord::Base
  validates :name,  presence: true
  validates :email, presence: true
end
