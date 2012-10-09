require 'spec_helper'

describe Vmstat::Memory do
  context "Vmstat#memory" do
    let(:memory) { Vmstat.memory }
    subject { memory }

    it "should be a vmstat memory object" do
      should be_a(Vmstat::Memory)
    end

    context "methods" do
      it { should respond_to(:pagesize) }
      it { should respond_to(:wired) }
      it { should respond_to(:active) }
      it { should respond_to(:inactive) }
      it { should respond_to(:free) }
      it { should respond_to(:wired_bytes) }
      it { should respond_to(:active_bytes) }
      it { should respond_to(:inactive_bytes) }
      it { should respond_to(:free_bytes) }
      it { should respond_to(:zero_filled) }
      it { should respond_to(:reactivated) }
      it { should respond_to(:faults) }
      it { should respond_to(:copy_on_write_faults) }
    end

    context "content" do
      its(:pagesize) { should be_a_kind_of(Numeric) }
      its(:wired) { should be_a_kind_of(Numeric) }
      its(:active) { should be_a_kind_of(Numeric) }
      its(:inactive) { should be_a_kind_of(Numeric) }
      its(:free) { should be_a_kind_of(Numeric) }
      its(:wired_bytes) { should be_a_kind_of(Numeric) }
      its(:active_bytes) { should be_a_kind_of(Numeric) }
      its(:inactive_bytes) { should be_a_kind_of(Numeric) }
      its(:free_bytes) { should be_a_kind_of(Numeric) }
      its(:zero_filled) { should be_a_kind_of(Numeric) }
      its(:reactivated) { should be_a_kind_of(Numeric) }
      its(:faults) { should be_a_kind_of(Numeric) }
      its(:copy_on_write_faults) { should be_a_kind_of(Numeric) }
    end
  end
end