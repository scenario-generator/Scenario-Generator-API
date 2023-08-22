class GeneratorsController < AuthenticatedController
  def index
    @generators.alphabetical
  end

  def show
    @generator = Generator.find(params[:id])
  end

  def new
    @generator = Generator.new
  end

  def create
    @generator = Generator.new(create_params)
    @generator.user = current_user

    if @generator.save
      redirect_to @generator
    else
      render :new
    end
  end

  def edit
    @generator = Generator.find(params[:id])
  end

  def update
    @generator = Generator.find(params[:id])
    if @generator.update(update_params)
      redirect_to @generator
    else
      render :edit
    end
  end

  private

  def create_params
    params.require(:generator).permit(:name, :kind)
  end

  def update_params
    params.require(:generator).permit(:name, :kind, :active)
  end
end
