class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(text)
        Movie.create(title: text)
    end

    def self.first_movie
        self.all.first
    end

    def self.last_movie
        self.all.last
    end

    def self.movie_count
        self.all.count
    end

    def self.find_movie_with_id(id)
        self.all.find(id)
    end
    def self.find_movie_with_attributes(item)
        self.find_by(item)
    end

    def self.find_movies_after_2002
        self.where('release_date > 2002')
    end

    def update_with_attributes(att)
        self.update(att)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    def self.delete_by_id(id)
        self.destroy_by(id: id)
    end

    def self.delete_all_movies
        self.destroy_all
    end


end