defmodule Cards do

  def hello do
    "Hello, World!"
  end

  def create_deck do
    cards = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "King", "Queen", "Jack"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for card <- cards do
      for suit <- suits do
        "#{card} of #{suit}"
      end
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end
