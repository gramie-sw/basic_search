require 'spec_helper'

describe 'ActiveRecordAdditions' do

  before :each do
    @active_record_class = Class.new
    @active_record_class.send(:include, BasicSearch::ActiveRecordAdditions)
  end

  describe '::search' do

    it 'should return where clause if search_term isn not nil' do
      @active_record_class.should_receive(:where).with('column1 LIKE :search_value OR column2 LIKE :search_value', {search_value: '%test%'})
      @active_record_class.search('test', :column1, :column2)
    end

    it 'should return scoped if search_term is nil' do
      @active_record_class.should_receive(:all)
      @active_record_class.search()
    end
  end
end