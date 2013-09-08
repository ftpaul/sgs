# == Schema Information
#
# Table name: cursos
#
#  id         :integer          not null, primary key
#  designacao :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Curso < ActiveRecord::Base
  attr_accessible :designacao, :id
end
