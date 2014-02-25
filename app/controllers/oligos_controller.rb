class OligosController < PagesController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  respond_to :html, :json
#   before_action :set_oligo, only: [:show, :edit, :update, :destroy]

#   # GET /oligos
#   # GET /oligos.json
#   def index
#     @oligos = Oligo.all
#   end

#   # GET /oligos/1
#   # GET /oligos/1.json
#   def show
#   end

#   # GET /oligos/new
#   def new
#     @oligo = Oligo.new
#   end

#   # GET /oligos/1/edit
#   def edit
#   end

#   # POST /oligos
#   # POST /oligos.json
#   def create
#     @oligo = Oligo.new(oligo_params)

#     respond_to do |format|
#       if @oligo.save
#         format.html { redirect_to @oligo, notice: 'Oligo was successfully created.' }
#         format.json { render action: 'show', status: :created, location: @oligo }
#       else
#         format.html { render action: 'new' }
#         format.json { render json: @oligo.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /oligos/1
#   # PATCH/PUT /oligos/1.json

#   # DELETE /oligos/1
#   # DELETE /oligos/1.json
#   def destroy
#     @oligo.destroy
#     respond_to do |format|
#       format.html { redirect_to oligos_url }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_oligo
#       @oligo = Oligo.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def oligo_params
#       params.require(:oligo).permit(:oligo_no, :name, :sequence, :tm, :descrip, :designer)
#     end
# end

  def index

  end

  def update
    @oligo=current_user.oligos.find(params[:id])
    respond_to do |format|
      if @oligo.update(oligo_params)
        format.html { redirect_to @oligo, notice: 'Oligo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oligo.errors, status: :unprocessable_entity }
      end
    end
  end


  def create
    
    @oligo= current_user.oligos.build(oligo_params)
    
    if @oligo.save
      
      flash[:success] = "Oligo created"
      redirect_to (:back)
    end
  end

  def destroy
    @oligo=current_user.oligos.find(params[:id])
    @oligo.destroy
      flash[:alert] = "Oligo deleted"
      redirect_to (:back)
    rescue ActiveRecord::RecordNotFound
    redirect_to (:back), :alert => "You can only delete an oligo you uploaded!"
  end

  private

  def oligo_params
    params.require(:oligo).permit(:oligo_no, :name, :sequence, :tm, :descrip, :designer)
  end

  def correct_user
      @oligos= current_user.oligos.find_by(id: params[:id])      
  end

end   














