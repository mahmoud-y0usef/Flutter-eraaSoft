import 'dart:math';

List<String> quotes = [
  "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
  "Success is not final, failure is not fatal: It is the courage to continue that counts.",
  "The only way to do great work is to love what you do.",
  "Don't watch the clock; do what it does. Keep going.",
  "Your limitation—it's only your imagination.",
  "Push yourself, because no one else is going to do it for you.",
  "Dream it. Wish it. Do it.",
  "Stay positive, work hard, make it happen.",
  "Difficulties in life are intended to make us better, not bitter.",
  "Opportunities don't happen, you create them.",
  "Act as if what you do makes a difference. It does.",
  "Believe you can and you're halfway there.",
  "It always seems impossible until it's done.",
  "Keep going. Everything you need will come to you at the perfect time.",
  "Success doesn’t come from what you do occasionally. It comes from what you do consistently.",
  "Great things never come from comfort zones.",
  "Little things make big days.",
  "It’s going to be hard, but hard does not mean impossible.",
  "Don’t stop when you’re tired. Stop when you’re done.",
  "Wake up with determination. Go to bed with satisfaction."
];

String getRandomQuote() {
  return quotes[Random().nextInt(quotes.length)];
}