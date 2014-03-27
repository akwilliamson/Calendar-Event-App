class Event < ActiveRecord::Base

  def edit_description(new_description)
    self.update(:description => new_description)
  end

  def edit_location(new_location)
    self.update(:location => new_location)
  end

  def edit_startdatetime(new_startdatetime)
    self.update(:start => new_startdatetime)
  end

  def edit_enddatetime(new_enddatetime)
    self.update(:end => new_enddatetime)
  end

end
