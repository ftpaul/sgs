# == Schema Information
#
# Table name: ano_lectivos
#
#  id          :integer          not null, primary key
#  ano_lectivo :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnoLectivo < ActiveRecord::Base
  attr_accessible :ano_lectivo
end
