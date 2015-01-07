# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  number     :integer
#  street     :string(255)
#  campus     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Building < ActiveRecord::Base
end
