class NotasController < ApplicationController
  before_action :set_nota, only: [:show, :update, :destroy]

  def index
    @notas = Nota.all
    json_response(@notas)
  end

  def create
    @nota = Nota.create!(nota_params)
    json_response(@nota, :created)
  end

  def show
    json_response(@nota)
  end

  def update
    @nota.update(nota_params)
    head :no_content
  end

  def destroy
    @nota.destroy
    head :no_content
  end

  private

  def nota_params
    params.permit(:titulo, :nota, :primeira_visualizacao, :numero_visualizacao, :is_publica, :status)
  end

  def set_nota
    @nota = Nota.find(params[:id])
  end
end