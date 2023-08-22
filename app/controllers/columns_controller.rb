# frozen_string_literal: true
class ColumnsController < AuthenticatedController
  def show
    @column = Column.find(params[:id])
  end

  def new
    @generator = Generator.find(params[:generator_id])
    @column = @generator.owned_columns.new
  end

  def create
    @generator = Generator.find(params[:generator_id])
    @column = @generator.owned_columns.new(column_params)

    if @column.save
      redirect_to column_path(@column)
    else
      render :new
    end
  end

  def edit
    @column = Column.find(params[:id])
  end

  def update
    @column = Column.find(params[:id])

    if @column.update(column_params)
      redirect_to column_path(@column)
    else
      render :edit
    end
  end

  private

  def column_params
    params.require(:column).permit(
      :allow_duplicate_options,
      :chance_of_multiple,
      :help,
      :max,
      :max_per,
      :min,
      :name,
      :position,
      :spoilers,
      :type,
      :parent
    )
  end
end
