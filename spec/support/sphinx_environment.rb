require "thinking_sphinx"
require "thinking_sphinx/test"

module SphinxHelpers
  def create_index(klass)
    ThinkingSphinx::Test.index "#{klass.name.underscore.gsub('/','_')}_core"
  end
end

RSpec::Matchers.define :be_indexed do
  match do |actual|
    result = create_index actual
    result !~ /ERROR/
  end
  failure_message_for_should do |actual|
    message = create_index actual
    "Expected index not to fail. Message was:\n\n#{message}"
  end
end
