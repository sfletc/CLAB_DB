class PlasmidsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  respond_to :html, :json

#   # GET /plasmids
#   # GET /plasmids.json
#   def index
#     @plasmids = Plasmid.all
#   end

#   # GET /plasmids/1
#   # GET /plasmids/1.json
#   def show
#   end

#   # GET /plasmids/new
#   def new
#     @plasmid = Plasmid.new
#   end

#   # GET /plasmids/1/edit
#   def edit
#   end

#   # POST /plasmids
#   # POST /plasmids.json
#   def create
#     @plasmid = Plasmid.new(plasmid_params)

#     respond_to do |format|
#       if @plasmid.save
#         format.html { redirect_to @plasmid, notice: 'Plasmid was successfully created.' }
#         format.json { render action: 'show', status: :created, location: @plasmid }
#       else
#         format.html { render action: 'new' }
#         format.json { render json: @plasmid.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /plasmids/1
#   # PATCH/PUT /plasmids/1.json
#   def update
#     respond_to do |format|
#       if @plasmid.update(plasmid_params)
#         format.html { redirect_to @plasmid, notice: 'Plasmid was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: 'edit' }
#         format.json { render json: @plasmid.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /plasmids/1
#   # DELETE /plasmids/1.json
#   def destroy
#     @plasmid.destroy
#     respond_to do |format|
#       format.html { redirect_to plasmids_url }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_plasmid
#       @plasmid = Plasmid.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def plasmid_params
#       params.require(:plasmid).permit(:ligation, :vec_backbone, :insert, :puqc, :descrip, :designer)
#     end
# end

  def index

  end

  def update
    @plasmid=current_user.plasmids.find(params[:id])
    respond_to do |format|
      if @plasmid.update(plasmid_params)
        format.html { redirect_to @plasmid, notice: 'Plasmid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plasmid.errors, status: :unprocessable_entity }
      end
    end
  end


  def create
    
    @plasmid= current_user.plasmids.build(plasmid_params)
    
    if @plasmid.save
      
      flash[:success] = "Plasmid created"
      redirect_to (:back)
    end
  end

  def destroy
    @plasmid=current_user.plasmids.find(params[:id])
    @plasmid.destroy
      flash[:alert] = "Plasmid deleted"
      redirect_to (:back)
    rescue ActiveRecord::RecordNotFound
    redirect_to (:back), :alert => "You can only delete a plasmid you uploaded!"
  end

  private

  def plasmid_params
    params.require(:plasmid).permit(:ligation, :vec_backbone, :insert, :puqc, :descrip, :designer)
  end

  def correct_user
      @plasmids= current_user.plasmids.find_by(id: params[:id])      
  end

end   