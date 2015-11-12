#
class EntriesController < UsersController
  before_action

  # GET /entries
  # lists all Entries for auth user
  def index
    @entry = Entry.all
    render json: @entry
  end

  # # GET /entries/1
  # # shows one specific Entry from auth user
  # def show
  #   @entry = Entry.find(params[:id])
  #   render json: @entry
  # end

  # POST /entries
  # creates Entry by auth user
  def create
    @entry = current_user.entries.new(entry_params)
    if @entry.save
      render json: @entry, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # # PATCH /entries/1
  # # updates one specific Entry of auth user
  # def update
  #   if @entry.update(entry_params)
  #     head :no_content
  #   else
  #     render json: @entry.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /entries/1
  # delete entries by authorized user
  def destroy
    @entry.destroy
    head :no_content
  end

  def entry_params
    params.require(:entry).permit(:day_rating, :pain_rank, :note_entry, :symptoms, :medication, :mood)
  end

  private :entry_params
end
