# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
#  description  :string
#  is_complete  :boolean          default("false")
#  created_at   :datetime
#  updated_at   :datetime
#

class Task < ActiveRecord::Base

  def complete?
    is_complete
  end

end
