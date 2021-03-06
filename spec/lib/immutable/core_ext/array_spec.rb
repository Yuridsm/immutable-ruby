require "spec_helper"

describe Array do
  let(:array) { %w[A B C] }

  describe "#to_list" do
    let(:to_list) { array.to_list }

    it "returns an equivalent Immutable list" do
      expect(to_list).to eq(L["A", "B", "C"])
    end
  end
end
