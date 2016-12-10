class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to answers_path, notice: 'Answer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def answer_params
      params.require(:answer).permit(
        :resposta_palestra,
        :resposta_coach,
        :resposta_local,
        :observacao
      )
    end
end
