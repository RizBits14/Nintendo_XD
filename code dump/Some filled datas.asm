.model large
.stack 1000h

.data

;Welcome Datas

welcome_page_line_1  db 10,13, '                           *************************************$'
welcome_page_line_2  db 10,13, '                           **              Welcome            **$'
welcome_page_line_3  db 10,13, '                           **                                 **$'
welcome_page_line_4  db 10,13, '                           **                To               **$'
welcome_page_line_5  db 10,13, '                           **                                 **$'
welcome_page_line_6  db 10,13, '                           **           Nintendo XD!          **$'
welcome_page_line_7  db 10,13, '                           **                                 **$'
welcome_page_line_8  db 10,13, '                           **  Your Personal Gaming Console!  **$'
welcome_page_line_9  db 10,13, '                           *************************************$'
welcome_page_line_10 db 10,13, '                           _____________________________________$'
welcome_page_line_11 db 10,13, '$'
welcome_page_line_12 db 10,13, 'Here you can play 2 games. Please give input accordingly:$'
welcome_page_line_13 db 10,13, '$'
welcome_page_line_14 db 10,13, 'Press 1 to play Wordle Ultimate$'
welcome_page_line_15 db 10,13, 'Press 2 to play Rock/Paper/Scissors$'
welcome_page_line_16 db 10,13, '$'
welcome_page_line_17 db 10,13, 'Enter which game you want to play: $'

;Datas For Invalid Input While Choosing the Game Data

invalid_input_line db 10,13, 'Invalid Input! Press Any Key To Restart...'

;Newline Data

newline db 10,13, '$'

;Wordle Game Data

wordle_word_array db 'BIRD'
                  db 'CODE'
                  db 'HEAD'
                  db 'ROSE'
                  db 'FROG'
                  db 'BARK'
                  db 'HAND'
                  db 'SAND'
                  db 'TIME'
                  db 'EYES'
                  db 'LONG'
                  db 'GOOD'
                  db 'FOOD'
                  db 'ICON'
                  db 'GIVE'
                  db 'DAWN'
                  db 'LAND'
                  db 'READ'
                  db 'COIN'
                  db 'BANK'
                  db 'DAMN'
wordle_array_size       equ 20
wordle_target_word      db 4 dup(?)
wordle_guess            db 5 dup('$')
wordle_input_prompt     db 'Enter a four letter word: $'
wordle_correct_msg      db 'Congratulations you have gueesed the word correctly!$'
wordle_result           db 5 dup('$')
wordle_rng              dw 0
wordle_guess_count_msg  db 'The number of guesses it took for you to guessed it correctly is: $'
wordle_guess_count      db 0

;Wordle Rules Data

wordle_rule_msg db 10,13, '*** Rules of the Game ***$'
wordle_rule_1 db 10,13, 'You need to guess the correct word.$'
wordle_rule_2 db 10,13, 'Here:$'
wordle_rule_3 db 10,13, '- means wrong letters$'
wordle_rule_4 db 10,13, '+ means right letter wrong position$'
wordle_rule_5 db 10,13, '* means right letter right position$'
wordle_rule_6 db 10,13, 'You have unlimitate guesses. Have Fun!$'

;Rock Paper Scissors Game Data

rps_prompt_msg     db 'Enter R/P/S or 1/2/3 for Rock/Paper/Scissors respectively: $'
rps_win_msg        db 'You have won$'
rps_lose_msg       db 'You have lost$'
rps_tie_msg        db 'It is a tie$'
rps_invalid_msg    db 'Invalid choice! Only Use R/P/S or 1/2/3$'
rps_you_chose      db 'Enter your move: $'
rps_computer_chose db 'Computer has choosen: $'
rps_choices        db 'Rock$Paper$Scissors$'
rps_rounds         db 0
rps_current_round  db 1
rps_player_wins    db 0
rps_computer_wins  db 0
rps_rounds_msg     db 'Enter the number of rounds you want to play (1-9): $'
rps_final_msg      db 'Final Results: $'
rps_player_score   db 'Player Wins: $'
rps_computer_score db 'Computer Wins: $'
rps_final_winner   db 'The winner is: $'
rps_draw_msg       db 'The game is a draw$'
rps_player_msg     db 'Player!$'
rps_computer_msg   db 'Computer!$'
rps_round_invalid  db 'Invalid Input. Please select only between (1-9)$'
rps_comp_choice    db ?
rps_player_choice  db ?

;Rock Paper Scissors Rules Data

rps_rule_msg   db 10,13, '*** Rules of the Game ***$'
rps_rule_1     db 10,13, 'You will enter your move$'
rps_rule_2     db 10,13, 'Computer will generate its move$'
rps_rule_3     db 10,13, 'If your move is stronger than coomputer you will win$'
rps_rule_4     db 10,13, 'If your move is weaker than computer you will lose$'
rps_rule_5     db 10,13, 'Else it is a tie$'
rps_rule_msg_2 db 10,13, '****** POWERS ****** $'
rps_rule_6     db 10,13, '1. Rock wins against scissors.$'
rps_rule_7     db 10,13, '2. Scissors win against paper.$'
rps_rule_8     db 10,13, '3. Paper wins against rock.$'

;Play Again Data

play_again_msg        db 10,13, 'Would You Like To: $'
play_again_wordle     db 10,13, '1. Play Wordle$'
play_again_rps        db 10,13, '2. Play Rock Paper Scissors$'
exit_console          db 10,13, '3. Exit Console$'
ask_credit            db 10,13, '4. View Credits$'
play_again_invalid    db 10,13, 'Invalid choice! Please select 1, 2, or 3$'
play_again_option_msg db 10,13, 'Enter your option: $' 
exit_msg              db 10,13, 'Thanks for playing Nintendo XD! Have a great day!$'

;Author Data

author_page_line_1 db 10,13, '                         *********************__________*********************$'
author_page_line_2 db 10,13, '                         **                  Submitted By                  **$'
author_page_line_3 db 10,13, '                         **                   Group: 12                    **$'
author_page_line_4 db 10,13, '                         ----------------------------------------------------$'
author_page_line_5 db 10,13, '                         |          Name          |            ID           |$'
author_page_line_6 db 10,13, '                         ----------------------------------------------------$'
author_page_line_7 db 10,13, '                         |      Tahmid Iqbal      |         21201701        |$'
author_page_line_8 db 10,13, '                         ----------------------------------------------------$'
author_page_line_9 db 10,13, '                         |     Rizwanul Islam     |         21201129        |$'
author_page_line_10 db 10,13, '                         ----------------------------------------------------$'
author_page_line_11 db 10,13, '                         **                     FALL 24                    **$'
author_page_line_12 db 10,13, '                         **                                                **$'
author_page_line_13 db 10,13, '                         *********************__________*********************$'

.code

main proc     
    start:
    mov ax, @data
    mov ds, ax
    
    ;Printing Welcome Page Data and Other Stuffs
    
main endp
end start
