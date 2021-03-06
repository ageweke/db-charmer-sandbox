require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DbCharmer do
  it "should have connections_should_exist accessors" do
    DbCharmer.connections_should_exist.should_not be_nil
    DbCharmer.connections_should_exist = :foo
    DbCharmer.connections_should_exist.should == :foo
  end

  it "should have connections_should_exist? method" do
    DbCharmer.connections_should_exist = true
    DbCharmer.connections_should_exist?.should be_true
    DbCharmer.connections_should_exist = false
    DbCharmer.connections_should_exist?.should be_false
    DbCharmer.connections_should_exist = "shit"
    DbCharmer.connections_should_exist?.should be_true
    DbCharmer.connections_should_exist = nil
    DbCharmer.connections_should_exist?.should be_false
  end

  it "should have migration_connections_should_exist accessors" do
    DbCharmer.migration_connections_should_exist.should_not be_nil
    DbCharmer.migration_connections_should_exist = :foo
    DbCharmer.migration_connections_should_exist.should == :foo
  end

  it "should have migration_connections_should_exist? method" do
    DbCharmer.migration_connections_should_exist = true
    DbCharmer.migration_connections_should_exist?.should be_true
    DbCharmer.migration_connections_should_exist = false
    DbCharmer.migration_connections_should_exist?.should be_false
    DbCharmer.migration_connections_should_exist = "shit"
    DbCharmer.migration_connections_should_exist?.should be_true
    DbCharmer.migration_connections_should_exist = nil
    DbCharmer.migration_connections_should_exist?.should be_false
  end
end
