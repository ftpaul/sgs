# == Schema Information
#
# Table name: socios
#
#  id               :integer          not null, primary key
#  num_aluno        :integer
#  nome             :string(255)
#  morada           :string(255)
#  cod_postal       :string(255)
#  localidade       :string(255)
#  telemovel        :string(255)
#  nascimento       :date
#  email            :string(255)
#  bi               :string(255)
#  foto             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  curso_id         :integer
#  ano_lectivo_id   :integer
#  permite_email    :boolean
#  permite_sms      :boolean
#  estado_civil     :boolean
#  num_univercidade :integer
#  sexo             :string(255)
#

class Socio < ActiveRecord::Base
  attr_accessible :bi, :cod_postal, :email, :permite_sms, :foto, :localidade, :morada, :nascimento, :permite_email, 
              :nome, :num_aluno, :telemovel, :curso_id, :ano_lectivo_id, :num_univercidade, :sexo

  has_one :curso
  has_one :ano_lectivo

  mount_uploader :foto, FotoUploader
  
  validates :ano_lectivo_id, presence: true
  validates :curso_id, presence: true
  validates :num_aluno, presence: true
  validates :nome, presence: true
  validates :email, presence: true

  def self.import(file)
    #file=File.open("input_file", "r:ISO-8859-1")
      handler = open(file.path)
csv_string = handler.read.encode!("UTF-8", "iso-8859-1", invalid: :replace)
CSV.parse(csv_string, headers: true) do |row|

   # CSV.foreach(file.path, enconding: "iso-8859-1:UTF-8") do |row|
      socio = Socio.new
      socio.num_aluno = row["nAluno"].to_s
      socio.ano_lectivo_id = 1
      socio.curso_id = row["curso_id"]
      #socio.foto.store!(File.open(File.join("http://127.0.0.1:3000/uploads/socio/foto/#{row["foto"]}")))
      socio.save!
    end
  end

end
