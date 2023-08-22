class OptionsController < AuthenticatedController
  def show
    @option = Option.find(params[:id])
  end

  def new
    @column = Column.find(params[:column_id])
  end

  def create
    @column = Column.find(params[:column_id])

    if @column.update(create_params)
      redirect_to column_path(@column)
    else
      render :new
    end
  end

  def edit
    @option = Option.find(params[:id])
  end

  def update
    @option = Option.find(params[:id])

    if @option.update(update_params)
      redirect_to @option
    else
      render :edit
    end
  end

  private

  def options_string_param
    params.require(:column).permit(:options)[:options]
  rescue
    ""
  end
  helper_method :options_string_param

  def create_params
    split_options = options_string_param.split("\n").compact.reject(&:blank?)

    {
      options_attributes: split_options.map do |string|
        {
          text: string,
          weight: 1,
        }
      end
    }
  end

  def update_params
    params.require(:option).permit(
      :text,
      :weight,
      :column_id,
    )
  end
end
