module.exports = class Blackjack
    exports.unconvertedAces = false
    welcome: () ->
        console.log("Welcome to the Blackjack Table")

    dealCard: ()->
        deck1 = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11]
        deck2 = deck1
        deck3 = deck1
        deck4 = deck1
        deck5 = deck1
        deck6 = deck1
        cards = [deck1...,deck2...,deck3...,deck4...,deck5...,deck6...]
        cards[Math.floor(Math.random()*cards.length)]

    displayCards: (card1, card2) ->
        debugger;
        exports.unconvertedAces = true if card1 == 11 or card2 == 11
        if card1 != 11 and card2 != 11 then cardTotal = card1 + card2
        if card1 == 11 and card2 != 11 then cardTotal = (card1 + card2) + " or " + (1 + card2)
        if card1 != 11 and card2 == 11 then cardTotal = (card1 + card2) + " or " + (1 + card1)
        if card1 == 11 and card2 == 11 then cardTotal = (2 + " or " + 12)
        tenCards = ["10", "Jack", "Queen", "King"]
        ace = "Ace"
        if card1 == 10
            card1 = tenCards[Math.floor(Math.random()*tenCards.length)]
        if card2 == 10
            card2 = tenCards[Math.floor(Math.random()*tenCards.length)]
        if card1 == 11
            card1 = ace
        if card2 == 11
            card2 = ace
        console.log("You were dealt a(n) " + card1 + " and a(n) " + card2);
        console.log("Your card total is " + cardTotal)











    runner: () ->
        this.welcome()
        this.displayCards(this.dealCard(), this.dealCard())