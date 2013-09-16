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
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  curso_id       :integer
#  ano_lectivo_id :integer
#  permite_email  :boolean
#  permite_sms    :boolean
#  estado_civil   :boolean
#

require 'test_helper'

class SocioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
