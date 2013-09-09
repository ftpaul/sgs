# == Schema Information
#
# Table name: socios
#
#  id             :integer          not null, primary key
#  num_aluno      :integer
#  nome           :string(255)
#  morada         :string(255)
#  cod_postal     :string(255)
#  localidade     :string(255)
#  telemovel      :string(255)
#  nascimento     :date
#  email          :string(255)
#  bi             :string(255)
#  foto           :string(255)
#  newsletter     :boolean
#  entidades      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  curso_id       :integer
#  ano_lectivo_id :integer
#

class Socio < ActiveRecord::Base
  attr_accessible :bi, :cod_postal, :email, :entidades, :foto, :localidade, :morada, :nascimento, :newsletter, :nome, 
  						:num_aluno, :telemovel, :curso_id, :ano_lectivo_id

  has_one :curso
  has_one :ano_lectivo

  mount_uploader :foto, FotoUploader
  
  validates :ano_lectivo_id, presence: true
  validates :curso_id, presence: true
  validates :num_aluno, presence: true
  validates :nome, presence: true
  validates :email, presence: true

end
