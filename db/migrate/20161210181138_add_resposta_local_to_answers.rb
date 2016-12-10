class AddRespostaLocalToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :resposta_local, :integer
  end
end
