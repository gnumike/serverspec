describe 'sample_json' do
  context json_config('/tmp/test.json') do
    it { should have_key('foo') }
    it { should have_key_value('foo','bar') }
  end
end
