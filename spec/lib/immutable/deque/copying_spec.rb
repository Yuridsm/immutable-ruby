require "spec_helper"

describe Immutable::Deque do
  [:dup, :clone].each do |method|
    [
      [],
      ["A"],
      %w[A B C],
    ].each do |values|
      context "on #{values.inspect}" do
        let(:deque) { D[*values] }

        it "returns self" do
          deque.send(method).should equal(deque)
        end
      end
    end
  end
end