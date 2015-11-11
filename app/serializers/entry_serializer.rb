#
class EntrySerializer < ActiveModel::Serializer
  attributes :day_rating, :pain_rank, :note_entry, :symptoms, :medication, :mood
end
