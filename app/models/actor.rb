# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def characters

      characters = Character.where({ :actor_id => self.id })
      return characters

  end

  def filmography

    films = []
    
    self.characters.each do |char|
      films.push(char.movie)
    end

    return films

  end

end
