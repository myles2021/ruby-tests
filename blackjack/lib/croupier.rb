require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  return "Your score: #{player_score} \nBank Score: #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "You are over 21... you loooooooo0o00o0o0o0ose!"
  elsif player_score == 21
    "Black Jack! 🚀"
  elsif player_score == bank_score
    "Twist!"
  elsif player_score > bank_score
    "#{player_score} beats #{bank_score}! You... are... a... WIIINNNNNNEEEERRRRRR 😀"
  else
    "The bank beats you! You lose! 🙃"
  end
end
