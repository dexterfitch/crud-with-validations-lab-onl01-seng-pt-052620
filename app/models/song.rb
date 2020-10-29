class Song < ApplicationRecord
  validates :title, presence: true
  #   - Cannot be repeated by the same artist in the same year
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, if: :released
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }, allow_nil: true
  validates :artist_name, presence: true
  validate :unique_song

  def unique_song?
    @songs = Song.all
    if title
    end
  end
end
