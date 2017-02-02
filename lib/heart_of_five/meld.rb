module HeartOfFive
  class Meld
    attr_reader :cards, :strength

    def initialize(cards)
      @cards = cards
    end

    def two_of_a_kind?
      @two_of_a_kind ||= x_of_a_kind?(2)
    end

    def three_of_a_kind?
      @three_of_a_kind ||= x_of_a_kind?(3)
    end

    def four_of_a_kind?
      @four_of_a_kind ||= x_of_a_kind?(4)
    end

    def sisters?
      @sisters ||= pairable? &&
        multiple_groups? &&
        sequential_groups? &&
        same_sized_groups? &&
        first_group.size > 1
    end

    # 1,2,3,4,5,6,7,8,9,10,11,12,13,1
    # A 2 3 4 5 6 7 8 9  T  J  Q  K A
    def run?
      return false unless pairable? && num_groups > 4

      @run ||= if sequential_groups? && same_sized_groups? && first_group.size == 1
        true
      elsif aces?
        # funky logic, Aces can be low or high card
        # convert one ace to #14
        as_ace_high.run?
      else
        false
      end
    end

    def aces?
      @aces ||= cards.detect{|r,s| r == 1}
    end

    def multiple_groups?
      num_groups > 1
    end

    def num_groups
      group_by_rank.size
    end

    def sequential_groups?
      return false unless group_by_rank.any?

      (group_by_rank.keys.max - group_by_rank.keys.min) == (num_groups - 1)
    end

    def first_group
      @first_group ||= begin
                         _, fs = *group_by_rank.first
                         fs
                       end
    end

    def same_sized_groups?
      return false unless first_group

      # check all groups are the same size
      group_by_rank.all?{|g, gs| gs.size == first_group.size}
    end

    private

    def jokers?
      @jokers ||= cards.any?{|r,s| s > 4}
    end

    def pairable?
      !jokers?
    end

    def x_of_a_kind?(x)
      cards.size == x && pairable? && cards.group_by{|r,s| r}.all?{|g, gs| gs.size == x}
    end

    def group_by_rank
      @group_by_rank ||= cards.group_by{|r, s| r}
    end

    # Return a new Meld with a single Ace value changed
    # from low to high. Useful for detecting a run with
    # and Ace at the end.
    #
    # Only do this for the first Ace it finds. So a run
    # can start and end with an Ace.
    #
    # This may return a Meld with no material change if
    # there's no Ace to upgrade.
    def as_ace_high
      first = true
      ace_high = cards.map do |rank, suit|
        if rank == 1 and first
          first = false
          [14, suit]
        else
          [rank, suit]
        end
      end
      Meld.new(ace_high)
    end
  end
end
