class NotasController < ApplicationController
  before_action :set_nota, only: [:show, :update, :destroy]

  def index
    @notas = Nota.where(is_publica: true)
    json_response(@notas)
  end

  def create
    @nota = Nota.create!(nota_params)
    json_response(@nota, :created)
  end

  def show
    if @nota.primeira_visualizacao.nil?
      @nota.update_attributes!(primeira_visualizacao: Time.now)
    end

    @nota.inc(numero_visualizacao: 1)
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

  def status
    json_response(Status::getList)
  end

  private

  def nota_params
    params.permit(:titulo, :nota, :is_publica, :status)

  end

  def set_nota
    @nota = Nota.find(params[:id])
  end
end