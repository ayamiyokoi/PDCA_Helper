class ReflectionsController < ApplicationController
  before_action :set_reflection, only: %i[ show edit update destroy ]

  # GET /rflections or /rflections.json
  def index
    @reflections = Reflection.all
    @reflection = Reflection.find(current_user.id)
    @user = User.find(current_user.id)
    #TODO current_user.idではだめ。
  end

  # GET /rflections/1 or /rflections/1.json
  def show
    @post_comment = PostComment.new
  end

  # GET /rflections/new
  def new
    @reflection = Reflection.new
  end

  # GET /rflections/1/edit
  def edit
  end

  # POST /rflections or /rflections.json
  def create
    @reflection = Reflection.new(reflection_params)
    @reflection.user_id = current_user.id
    @reflection.save

    respond_to do |format|
      if @reflection.save
        format.html { redirect_to @reflection, notice: "Reflection was successfully created." }
        format.json { render :show, status: :created, location: @reflection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reflection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rflections/1 or /rflections/1.json
  def update
    respond_to do |format|
      if @reflection.update(reflection_params)
        format.html { redirect_to @reflection, notice: "Reflection was successfully updated." }
        format.json { render :show, status: :ok, location: @reflection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reflection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rflections/1 or /rflections/1.json
  def destroy
    @reflection.destroy
    respond_to do |format|
      format.html { redirect_to reflections_url, notice: "Reflection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reflection
      @reflection = Reflection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reflection_params
      params.require(:reflection).permit(:goal, :result, :biggergoal, :plan, :topic_name, :topic, :overall)
    end
end
