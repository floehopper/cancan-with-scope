require 'test_helper'

class WidgetTest < ActiveSupport::TestCase
  test 'foo' do
    foo = Widget.create!(name: 'foo')
    bar = Widget.create!(name: 'bar')
    ability = Ability.new(nil)
    relation = Widget.accessible_by(ability, :read)
    raw_sql = "\nSQL: #{relation.to_sql}\n"
    assert_equal [foo], relation, raw_sql
  end
end
