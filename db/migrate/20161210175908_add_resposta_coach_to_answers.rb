class AddRespostaCoachToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :resposta_coach, :integer
  end
end
