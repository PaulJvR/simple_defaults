require 'test_helper'

class SimpleDefaultsTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, SimpleDefaults
  end

  test 'sets the default values from the hash in the defaults method' do
    Person.stub_any_instance(:defaults, {name: 'Jim'}) do
      person = Person.new
      assert_equal person.name, 'Jim'
    end
  end

  test 'does not overwrite supplied values' do
    Person.stub_any_instance(:defaults, {name: 'Jim'}) do
      person = Person.new(name: 'Ken')
      assert_equal person.name, 'Ken'
    end
  end

  test 'it sets pensioner to false when false supplied correctly' do
    Person.stub_any_instance(:defaults, { pensioner: true }) do
      person = Person.new(pensioner: false)
      assert !person.pensioner?, 'Boolean value set incorrectly'
    end
  end

  test  'it sets pensioner to true when true supplied correctly' do
    Person.stub_any_instance(:defaults, { pensioner: false }) do
      person = Person.new(pensioner: true)
      assert person.pensioner?, 'Boolean value set incorrectly'
    end
  end

  test 'it sets default values for rails enums' do
    Person.stub_any_instance(:defaults, {status: :inactive}) do
      person = Person.new
      assert person.inactive?, 'Status was not set by default'
    end
  end

  test 'it accepts procs' do
    Person.stub_any_instance(:defaults, {age: Proc.new { 23 } }) do
      person = Person.new
      assert_equal person.age, 23
    end
  end

  test 'it accepts lambdas' do
    Person.stub_any_instance(:defaults, {age: lambda { 23 }}) do
      person = Person.new
      assert_equal person.age, 23
    end
  end

end
