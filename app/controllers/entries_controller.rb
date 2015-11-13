#
class EntriesController < UsersController
  before_action

  # GET /entries
  # listEntries
  def index
    @entry = Entry.all
    render json: @entry
  end

  # GET /entries/1
  # showEntry
  def show
    @entry = Entry.find(params[:id])
    render json: @entry
  end

  # POST /entries
  # createEntry
  def create
    @entry = current_user.entries.new(entry_params)
    if @entry.save
      render json: @entry, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH /entries/1
  # editEntry
  def update
    if @entry.update(entry_params)
      head :no_content
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  # deleteEntry
  def destroy
    @entry.destroy
    head :no_content
  end

  def entry_params
    params.require(:entry).permit(:day_rating, :pain_rank, :note_entry, :symptoms, :medication, :mood, :created_at)
  end

  private :entry_params
end
