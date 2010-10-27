class Book < ActiveRecord::Base
  belongs_to :subject
  validates_numericality_of :price, :message=>"Cena musi byc liczba"
  
  before_save :check_title
  
  def check_title
	if self.title.blank? then
	 self.title = "Bez tytulu"
	end
  end
end