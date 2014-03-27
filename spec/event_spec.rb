require 'spec_helper'

describe Event do
  describe '.create' do
    it 'should create and save a new instance' do
      test_event = Event.create(:description => "Hello")
      test_event.should be_an_instance_of Event
    end
  end

  describe '#edit_description' do
    it 'should change the description of an event' do
      test_event = Event.create(:description => "Hello")
      test_event.edit_description("Goodbye")
      test_event.description.should eq "Goodbye"
    end
  end

  describe '#edit_location' do
    it 'should change the location of an event' do
      test_event = Event.create(:location => "Hawaii")
      test_event.edit_location("Oregon")
      test_event.location.should eq "Oregon"
    end
  end

  describe '#edit_startdatetime' do
    it 'should change the starting dat/time of an event' do
      test_event = Event.create(:start => "2013-02-02 8:00")
      test_event.edit_startdatetime("2011-01-08 7:30")
      test_event.start.should eq "2011-01-08 7:30"
    end
  end

  describe '#edit_enddatetime' do
    it 'should change the ending dat/time of an event' do
      test_event = Event.create(:end => "2013-02-02 8:00")
      test_event.edit_enddatetime("2011-01-08 7:30")
      test_event.end.should eq "2011-01-08 7:30"
    end
  end
end


