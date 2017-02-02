require 'spec_helper'

module HeartOfFive
  describe Meld do
    subject { Meld.new(cards) }

    describe '#two_of_a_kind?' do
      context 'with matching cards' do
        let(:cards) { [[1, 2], [1, 3]] }
        it 'returns true' do
          expect(subject.two_of_a_kind?).to be(true)
        end
      end
      context 'without matching cards' do
        let(:cards) { [[1, 2], [10, 3]] }
        it 'returns false' do
          expect(subject.two_of_a_kind?).to be(false)
        end
      end
      context 'with too many cards' do
        let(:cards) { [[1, 2], [1, 3], [1, 4]] }
        it 'returns false' do
          expect(subject.two_of_a_kind?).to be(false)
        end
      end
      context 'with too few cards' do
        let(:cards) { [[1, 2]] }
        it 'returns false' do
          expect(subject.two_of_a_kind?).to be(false)
        end
      end
    end

    describe '#three_of_a_kind?' do
      context 'with matching cards' do
        let(:cards) { [[1, 2], [1, 3], [1, 4]] }
        it 'returns true' do
          expect(subject.three_of_a_kind?).to be(true)
        end
      end
      context 'without matching cards' do
        let(:cards) { [[1, 2], [10, 3], [11, 4]] }
        it 'returns false' do
          expect(subject.three_of_a_kind?).to be(false)
        end
      end
      context 'with too many cards' do
        let(:cards) { [[1, 2], [1, 3], [1, 4], [1, 4]] }
        it 'returns false' do
          expect(subject.three_of_a_kind?).to be(false)
        end
      end
      context 'with too few cards' do
        let(:cards) { [[1, 2], [1, 3]] }
        it 'returns false' do
          expect(subject.three_of_a_kind?).to be(false)
        end
      end
    end

    describe '#four_of_a_kind?' do
      context 'with matching cards' do
        let(:cards) { [[1, 2], [1, 3], [1, 4], [1, 1]] }
        it 'returns true' do
          expect(subject.four_of_a_kind?).to be(true)
        end
      end
      context 'without matching cards' do
        let(:cards) { [[1, 2], [10, 3], [11, 4], [2, 4]] }
        it 'returns false' do
          expect(subject.four_of_a_kind?).to be(false)
        end
      end
      context 'with too many cards' do
        let(:cards) { [[1, 1], [1, 2], [1, 3], [1, 4], [1, 4]] }
        it 'returns false' do
          expect(subject.four_of_a_kind?).to be(false)
        end
      end
      context 'with too few cards' do
        let(:cards) { [[1, 2], [1, 3], [1, 4]] }
        it 'returns false' do
          expect(subject.four_of_a_kind?).to be(false)
        end
      end
    end

    describe '#sisters?' do
      context 'with matching pairs cards' do
        let(:cards) { [[1, 2], [1, 3], [2, 4], [2, 1]] }
        it 'returns true' do
          expect(subject.sisters?).to be(true)
        end
      end
      context 'with matching trips cards' do
        let(:cards) { [[1, 1], [1, 2], [1, 3], [2, 1], [2, 4], [2, 1]] }
        it 'returns true' do
          expect(subject.sisters?).to be(true)
        end
      end
      context 'without matching cards' do
        let(:cards) { [[1, 2], [10, 3], [11, 4], [2, 4]] }
        it 'returns false' do
          expect(subject.sisters?).to be(false)
        end
      end
    end

    describe '#run?' do
      context 'with 10 to A' do
        let(:cards) { [[10, 1], [11, 2], [12, 3], [13, 4], [1, 1]] }
        it 'returns true' do
          expect(subject.run?).to be(true)
        end
      end
      context 'with 9 to K' do
        let(:cards) { [[9, 1], [10, 1], [11, 2], [12, 3], [13, 4]] }
        it 'returns true' do
          expect(subject.run?).to be(true)
        end
      end
      context 'with A to 5' do
        let(:cards) { [[1, 1], [2, 2], [3, 3], [4, 4], [5, 1]] }
        it 'returns true' do
          expect(subject.run?).to be(true)
        end
      end
      context 'with A to A' do
        let(:cards) { [[1, 1], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1], [9, 1], [10, 1], [11, 2], [12, 3], [13, 4], [1, 1]] }
        it 'returns true' do
          expect(subject.run?).to be(true)
        end
      end
      context 'with too few cards' do
        let(:cards) { [[10, 1], [11, 2], [12, 3], [13, 4]] }
        it 'returns false' do
          expect(subject.run?).to be(false)
        end
      end
    end
  end
end
