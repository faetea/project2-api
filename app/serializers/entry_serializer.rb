#
class EntrySerializer < ActiveModel::Serializer
  attributes :id, :day_rating, :pain_rank, :note_entry, :symptoms, :medication, :mood, :created_at
end
