class QuadrasController < ApplicationController
  def index
    quadras = Quadra.all
    render json: quadras
  end

  def show
    quadras = Quadra.find(params[:id])
    render json: quadras
  end

  def create
    quadras = Quadra.new(quadra_params)
    if quadras.save
      render json: quadras, status: :created
    else
      render json: quadras.errors, status: :unprocessable_entity
    end
  end

  def update
    quadras = Quadra.find(params[:id])
    if quadras.update(quadra_params)
      render json: quadras
    else
      render json: quadras.errors, status: :unprocessable_entity
    end
  end

  def destroy
    quadras = Quadra.find(params[:id])
    quadras.destroy
    head :no_content
  end

  private

  def quadra_params
    params.require(:quadra).permit(:nome)
  end
end
