require "thinking_sphinx"
require "thinking_sphinx/test"

module SphinxHelpers
  def create_index(klass)
    ThinkingSphinx::Test.index "#{klass.name.underscore.gsub('/','_')}_core"
  end
end

RSpec::Matchers.define :be_searchable_with do |expected|
  match do |actual|
    !actual.search(expected).empty?
  end
  failure_message_for_should do |actual|
    "No instances of #{actual} found in the index with query: #{expected.inspect}"
  end
end

RSpec::Matchers.define :be_universally_searchable_with do |expected|
  match do |actual|
    !ThinkingSphinx.search(expected).empty?
  end
  failure_message_for_should do |actual|
    "No instances of #{actual} found in the index with query: #{expected.inspect}"
  end
end

RSpec::Matchers.define :be_indexed do
  match do |actual|
    ThinkingSphinx::Test.config.indices.map(&:model).include? actual
  end
  failure_message_for_should do |actual|
    "Expected indices to include at least one entry for #{actual}"
  end
end
