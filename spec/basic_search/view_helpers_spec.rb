require 'spec_helper'

describe 'ViewHelpers' do

  before :each do
    @view_helper_class = Class.new
    @view_helper_class.send(:include, BasicSearch::ViewHelpers)
    @view_helper = @view_helper_class.new
  end

  describe '#params_search_hash' do

    it 'should return existing hash with key search from params' do
      @view_helper.stub(:params).and_return({search: 'search_value'})
      @view_helper.search_param_hash.should eq({search: 'search_value'})
    end

    it 'should return empty hash if params has no hash with key search' do
      @view_helper.stub(:params).and_return({})
      @view_helper.search_param_hash.should eq({})
    end
  end

  describe '#sortable_with_search' do

    it 'should call sortable with search param' do
      @view_helper.should_receive(:search_param_hash).and_return({search: 'search_value'})
      @view_helper.should_receive(:sortable).with(['column1'], 'title', {search: 'search_value'})
      @view_helper.sortable_with_search(['column1'], 'title')
    end
  end
end