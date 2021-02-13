defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert(Cards.hello() == :world)
  end

  test "create_deck returns 52 cards" do
    deck_length = length(Cards.create_deck())
    assert(deck_length == 52)
  end

  test "shuffling a deck works as expected" do
    deck = Cards.create_deck()
    refute(deck == Cards.shuffle(deck))
  end

end
