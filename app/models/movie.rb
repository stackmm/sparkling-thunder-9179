class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  def actors_order_of_age
    actors.order("age")
  end

  def average_actor_age
    actors.average("age")
  end
end
