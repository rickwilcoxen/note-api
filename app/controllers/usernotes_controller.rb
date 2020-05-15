class UsernotesController < OpenReadController
  before_action :set_usernote, only: %i[show update destroy]

  # GET /usernotes
  def index
    @usernotes = Usernote.all

    render json: @usernotes
  end

  # GET /usernotes/1
  def show
    render json: @usernote
  end

  # POST /usernotes
  def create
    @usernote = current_user.usernotes.build(usernote_params)

    if @usernote.save
      render json: @usernote, status: :created, location: @usernote
    else
      render json: @usernote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usernotes/1
  def update
    if @usernote.update(usernote_params)
      render json: @usernote
    else
      render json: @usernote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usernotes/1
  def destroy
    @usernote.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_usernote
    @usernote = current_user.usernote.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.

  def usernote_params
    params.require(:usernote).permit(:title, :contents, :tag, :user_id)
  end
end
