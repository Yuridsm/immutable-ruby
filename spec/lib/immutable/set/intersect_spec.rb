require "spec_helper"

describe Immutable::Set do
  describe "#intersect?" do
    [
      [[], [], false],
      [["A"], [], false],
      [[], ["A"], false],
      [["A"], ["A"], true],
      [%w[A B C], ["B"], true],
      [["B"], %w[A B C], true],
      [%w[A B C], %w[D E], false],
      [%w[F G H I], %w[A B C], false],
      [%w[A B C], %w[A B C], true],
      [%w[A B C], %w[A B C D], true],
      [%w[D E F G], %w[A B C], false],
    ].each do |a, b, expected|
      describe "for #{a.inspect} and #{b.inspect}" do
        it "returns #{expected}" do
          S[*a].intersect?(S[*b]).should be(expected)
        end
      end
    end
  end
end