class Api::V1::GeneratorsController < ApplicationController
  before_action :setup_subject
  before_action :setup_generators
  before_action :setup_generator, except: [:index]

  def index
  end

  def show
  end

  def scenario
    @scenario = @generator.generate
  end

  def column
    @column = Column.find_by(id: params[:column_id], generator_id: params[:generator_id])
    @scenario = [@column.process]

    render :scenario
  end

  private

  def setup_subject
    if params[:subject_id]
      @subject = Subject.find_by(id: params[:subject_id])
      render status: :not_found, json: { response: "Subject not found" } unless @subject
    end
  end

  def setup_generators
    if @subject
      @generators = @subject.generators
    else
      @generators = Generator.all
    end
  end

  def setup_generator
    id = params[:id] || params[:generator_id]
    @generator = @generators.find_by(id: id)
    render status: :not_found, json: { response: "Generator not found" } unless @generator
  end
end
