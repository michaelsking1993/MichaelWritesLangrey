class AnnotationsController < ApplicationController

  #http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @text = Text.find(params[:text_id])
    @annotation = @text.annotations.create(annotation_params)
    redirect_to text_path(@text)
  end

  def new
  end

  def destroy
    @text = Text.find(params[:text_id])
    @annotation = @text.annotations.find(params[:id])
    @annotation.destroy
    redirect_to text_path(@text)
  end

  def show
  end

    private
      def annotation_params
        params.require(:annotation).permit(:annotater, :body)
        params.require(:annotation).permit(:annotater, :body)
      end
end
