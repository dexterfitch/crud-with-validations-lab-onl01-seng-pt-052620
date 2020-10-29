class Song < ApplicationRecord
  validates :title, presence: true
  #   - Cannot be repeated by the same artist in the same year
  validates_inclusion_of :released, in: [true, false]
  validates_presence_of :release_year, if: :released
  #   - Optional if `released` is `false`
  #   - Must not be blank if `released` is `true`
  #   - Must be less than or equal to the current year
  validates :artist_name, presence: true

  def unique_song?
    @songs = Song.all
    if title
    end
  end
end
