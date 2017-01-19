# Heart of Five (红心五)

Heart of Five is a multiplayer playing card game. A player wins by discarding
all their cards first, a player loses by having cards at the end.

<img src='http://a2.mzstatic.com/us/r30/Purple62/v4/7c/9d/6c/7c9d6ccb-1a15-6cb0-ba83-8d057ed062ca/sc552x414.jpeg' />

# Players and Cards

This game is best played with 4 players, but could be played with 2 to N
players. After 6 players, more decks can be added to keep things interesting.

A standard **52 card deck plus 2 jokers** are required. More than 1 deck maybe used
if there are more than 4 players.

# Game Play and Winning

1. Deal entire deck of cards evenly to all players.

2. The player who obtains the **Three of Hearts** starts the first round, otherwise the
   previous round winner should start. The `lead player` establishes the
   required `meld` for the other players.

3. Each player takes turns discarding `melds` if they can make a matching
   `meld` stronger than the previous player's `meld` or may choose to `pass` if
   they cannot form a larger `meld` or chooses to keep the cards for later in
   the round.

4. When all players `pass`, the player with the most recent discard can start a
   new `meld` resetting the `style` and minimum value for the other players. Go to
   step #3 until a player discards all their cards.

5. First player to discard all their cards wins the round. Remaining players
   still decide to play a `meld` or `pass` their turn. If all players `pass`,
   the next turn defaults to the player immediately after the round winner. Play
   continues until all players are out of cards. The last player with cards
   remaining loses the round.

6. Continue to step #1 until a player wins 10 rounds or there's no more time to
   play. Wins and loses are traditionally tallied separately.

# Rules of the Meld

A player can only discard if they can compose a set of cards, known as a `meld`, the
same type as the `lead player`. The only time a `style` can change is via a `bomb`
or a new `leader` is established.

## Styles of Melds

1. Single Card
2. Two of a Kind
3. Three of a Kind
4. Bomb (Four of a Kind)
5. Sisters
6. Full House
7. Runs (Straight)
8. Straight Flush (Another Bomb)

### Single Card

A single lonely card. Only the `rank` of the card is important. The weakest card
rank is `3` the strongest is `2`. The complete order is: `3 4 5 6 7 8 9 10 J Q K
A 2 jj JJ 5H`. `jj` and `JJ` are Small Joker and Big Joker respectively. The
name of the game is "Heart of Five" because the strongest single card play is
the Five of Hearts.

### Two of a Kind

Two cards of the same `rank` is a Two of a Kind. Jokers cannot be paired to
form a Two of a Kind. The strongest pair is two twos. Sometimes it is
advantageous to use a `5H` in a Pair of Fives to discard the other five.

The cards' `rank` determines the strength.

### Three of a Kind

Same as Two of a Kind but with three cards of the same `rank`.

### The Bomb! (Four of a Kind)

Same as Two of a Kind but with four cards.

This `meld` is an exception to the `style` rule and that's why it's called `The Bomb`.
The bomb is played as all four of the same `rank` of cards. `3C 3D 3H 3S`. A fun
use of bombing is after some one plays a `5H`, they'll never see it coming! This
is also why we notate bombs with `!`. For example: `Q!` is all four queens. When
multiple decks are used Four of a Kind can be common and bombing can get pretty crazy.

After a bomb is played, another player may bomb with a higher `rank`.

It is possible to lead with a bomb, but what's the fun in that?!?

### Sisters

Two or more Two of a Kinds. Where the `rank` of the cards are sequential.
For instance: `3H 3D,4H 4D`. Three of a Kind may also be used.
For instance: `3H 3D 3S, 4H 4D 4C`. Four of a Kind could be used, too, but
again, it's a waste of a bomb.

The `rank` of the highest pair/triple determines the strength of the meld.

### Full House

A Full House is a Two of a Kind plus a Three of Kind. The rank of the Three of
the kind determines the strength.

### Runs (Straight)

5 or more cards in `rank` sequence. When a player leads with a straight, the
next players must use the same number of cards. The highest `rank` determines
the strength. This is the only `style` where a `2` is considered a low `rank`.

The longest possible run is `A 2 3 4 5 6 7 8 9 10 J Q K A`. Incidentally, it is
possible to win a round instantly when leading with this `meld`.

### Straight Flush (Another Bomb)

This `meld` is another exception to the `style` rule and is very rare indeed.
A Royal Flush requires at least 5 cards in the `meld`. The 5 cards must be a
Run and in the same `suit`. This is the only `meld` where the `suit` of the cards
actually matter.


## ANSI Hand Notation

[Standard 52 Card Deck + 2 Jokers](https://en.wikipedia.org/wiki/Standard_52-card_deck)

**Ranks:** 2-9, 10 `T`, Jack `J`, Queen `Q`, King `K`, Ace `A`. For consistent
character counts `T` is used instead of `10` to represent ten.

**Suits:** Club `C`, Diamonds `D`, Hearts `H`, Spades `S`

**Specials:** Small Joker `jj`, Big Joker `JJ`

**Bomb:** Instead of notating a bomb as `3C 3D 3H 3S` we use `3!` where the `!`
implies all 4 suits and looks cool!

### Example Notation
```
AS = Ace of Spades
2D = Two of Diamonds
5H = Five of Hearts
5! = Bomb or Four of a Kind  or four fives
TC = Ten of Clubs
```

# Sample Game Play

**Players:** Alice, Bob, Cat, and Dan

1. Cards are dealt.

2. **Alice** is the `leader` and start because she has the Three of Hearts `3H`.
   She shows it to the other players because the others don't trust her, but
   doesn't have to use it.

3. **Alice** plays `AS 2H 3H 4S 5C`, a low `run` but helps her get rid of some
   cards.

4. **Bob** `pass`. He doesn't have a run with the same amount of cards or
   higher values.

5. **Cat** and **Dan** also `pass`.

6. **Alice** plays `3S`, **Bob** plays `4C`, **Cat** plays `5S`, **Dan** plays
   `2H` (Remember: `2` is bigger than `A`!).

7. **Alice** passes because she doesn't want to use her `JJ`, yet. **Bob** and
   **Cat** also `pass`.

8. **Dan** is the new `leader`. He can plays `3C 3D 4D 4H`.

9. **Alice** passes. **Bob** plays `JH JD QS QC`, **Cat** plays `QH QD`,
   **Alice** now plays `KH KD AH AC`, they highest possible `meld`. **Bob** and
   **Cat** `pass`. **Dan** smiles and throws a `bomb`, `10!`. **Alice** is
   discouraged because she really wanted to set the next `meld`.

10. **Bob** plays `6C 7C 8H 9H 10C` and has no more cards left. Everyone else
    passes. **Cat** can `lead` with a new `meld`.

11. Play continues until **Cat** and **Dan** run out of cards, and poor
    **Alice** is the only once with cards remaining.

12. **Bob** tallies a win, **Alice** tallies a lose.

13. A new round is dealt and **Bob** gets to set the `lead meld` because he won
    the previous round.

14. Repeat until someone wins 10 rounds or it's too late and declare the person
    with the best grand total the winner.

