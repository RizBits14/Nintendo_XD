.model large
.stack 1000h

.data

;Welcome Page Data
welcome_page_line_1  db 10,13, '                           **********************************$'
welcome_page_line_2  db 10,13, '                           **            Welcome           **$'
welcome_page_line_3  db 10,13, '                           **                              **$'
welcome_page_line_4  db 10,13, '                           **              To              **$'
welcome_page_line_5  db 10,13, '                           **                              **$'
welcome_page_line_6  db 10,13, '                           **         Nintendo XD!         **$'
welcome_page_line_7  db 10,13, '                           **                              **$'
welcome_page_line_8  db 10,13, '                           ** Your Personal Gaming Console!**$'
welcome_page_line_9  db 10,13, '                           **********************************$'
welcome_page_line_10 db 10,13, '                           __________________________________$'
welcome_page_line_11 db 10,13, '$'
welcome_page_line_12 db 10,13, 'Here you can play 2 games. Please give input accordingly:$'
welcome_page_line_13 db 10,13, '$'
welcome_page_line_14 db 10,13, 'Press 1 to play Wordle Ultimate$'
welcome_page_line_15 db 10,13, 'Press 2 to play Rock/Paper/Scissors$'
welcome_page_line_16 db 10,13, '$'
welcome_page_line_17 db 10,13, 'Enter which game you want to play: $'

;For Invalid Input Whie Choosing the Game Data
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

sir_page_line_1 db 10,13, '******_____________******$'
sir_page_line_2 db 10,13, '**     Submitted To    **$'
sir_page_line_3 db 10,13, '-------------------------$'
sir_page_line_4 db 10,13, '|     Waseq Alvi Sir    |$'
sir_page_line_5 db 10,13, '-------------------------$'
sir_page_line_6 db 10,13, '|  Labib Hasan Khan Sir |$'
sir_page_line_7 db 10,13, '-------------------------$'
sir_page_line_8 db 10,13, '**  Special Thanks to  **$' 
sir_page_line_9 db 10,13, '-------------------------$'
sir_page_line_10 db 10,13,'| Raisul Kabir News Sir |$' 
sir_page_line_11 db 10,13,'******_____________******$'                   

.code
main proc

start:
    mov ax, @data
    mov ds, ax
    
    ;Printing Welcome Page
    mov ah, 09
    mov dx, offset welcome_page_line_1
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_2
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_3
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_4
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_5
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_6
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_7
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_8
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_9
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_10
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_11
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_12
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_13
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_14
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_15
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_16
    int 21h
    mov ah, 09
    mov dx, offset welcome_page_line_17
    int 21h
    
    ;Taking Input -GAME SEL
    mov ah, 01
    int 21h
    mov bl, al
    lea dx, newline
    mov ah, 09
    int 21h
    
    ;If 1 jump to wordle elseif jump to RPS
    cmp bl, '1'
    je wordle
    cmp bl, '2'
    je rock_paper_scissors
    
    ;Else jump to start
    mov ah, 09
    mov dx, offset invalid_input_line
    int 21h
    mov ah, 00
    int 16h
    jmp start

;Wordle Game Code    
wordle:
    lea dx, newline
    mov ah, 09
    int 21h
    
    lea dx, wordle_rule_msg
    int 21h
    mov ah, 09
    lea dx, wordle_rule_1
    int 21h
    mov ah, 09
    lea dx, wordle_rule_2
    int 21h
    mov ah, 09
    lea dx, wordle_rule_3
    int 21h
    mov ah, 09
    lea dx, wordle_rule_4
    int 21h
    mov ah, 09
    lea dx, wordle_rule_5
    int 21h
    mov ah, 09
    lea dx, wordle_rule_6
    int 21h
    mov ah, 09
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    
    mov ah, 00h
    int 1Ah
    mov wordle_rng, dx
    
    mov ax, wordle_rng
    xor dx, dx
    mov cx, wordle_array_size
    div cx
    
    mov cx, 4
    mov si, dx
    mov ax, 4
    mul si
    mov si, ax
    lea di, wordle_target_word
    
wordle_copy_word:
    mov al, wordle_word_array[si]
    mov [di], al
    inc si
    inc di
    loop wordle_copy_word
    
wordle_game_loop:
    inc byte ptr [wordle_guess_count]
    mov cx, 4
    lea si, wordle_guess
    mov al, '$'
    
wordle_clear_guess:
    mov [si], al
    inc si
    loop wordle_clear_guess
    
    lea dx, wordle_input_prompt
    mov ah, 09
    int 21h
    
    mov cx, 4
    lea si, wordle_guess
    
wordle_input_loop:
    mov ah, 01
    int 21h
    cmp al, 'a'
    jl wordle_store_characters
    cmp al, 'z'
    jg wordle_store_characters
    sub al, 32
wordle_store_characters:
    mov [si], al
    inc si
    loop wordle_input_loop
    
    lea dx, newline
    mov ah, 09
    int 21h
    
    mov cx, 4
    lea si, wordle_guess
    lea di, wordle_target_word
    lea bx, wordle_result
    
wordle_check_exact:
    mov al, [si]
    cmp al, [di]
    jne wordle_not_exact
    mov byte ptr [bx], '*'
    jmp wordle_next_characters
wordle_not_exact:
    mov byte ptr [bx], '-'
wordle_next_characters:
    inc si
    inc di
    inc bx
    loop wordle_check_exact
    
    mov cx, 4
    lea si, wordle_guess
    
wordle_second_pass:
    cmp byte ptr wordle_result[si-wordle_guess], '*'
    je wordle_skip_letter
    push cx
    mov cx, 4
    lea di, wordle_target_word
wordle_check_letter:
    mov al, [si]
    cmp al, [di]
    jne wordle_continue_inner
    cmp byte ptr wordle_result[di-wordle_target_word], '*'
    je wordle_continue_inner
    mov byte ptr wordle_result[si-wordle_guess], '+'
wordle_continue_inner:
    inc di
    loop wordle_check_letter
    pop cx
wordle_skip_letter:
    inc si
    loop wordle_second_pass

    lea dx, wordle_result
    mov ah, 9
    int 21h

    lea dx, newline
    mov ah, 9
    int 21h

    mov cx, 4
    lea si, wordle_result
    mov bl, 1
wordle_check_win:
    cmp byte ptr [si], '*'
    jne wordle_not_won
    inc si
    loop wordle_check_win
    jmp wordle_winner
wordle_not_won:
    jmp wordle_game_loop
    
wordle_winner:
    lea dx, wordle_correct_msg
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, wordle_guess_count_msg
    mov ah, 09
    int 21h
    lea dx, wordle_guess_count
    mov al, [wordle_guess_count]
    add al, '0'
    mov dl, al
    mov ah, 02
    int 21h
    
    jmp ask_play_again
    
    mov ah, 4ch
    int 21h

;Rock Paper Scissors Game Code    
rock_paper_scissors:
    lea dx, newline
    mov ah, 09
    int 21h
    
    lea dx, rps_rule_msg
    int 21h
    mov ah, 09
    lea dx, rps_rule_1
    int 21h
    mov ah, 09
    lea dx, rps_rule_2
    int 21h
    mov ah, 09
    lea dx, rps_rule_3
    int 21h
    mov ah, 09
    lea dx, rps_rule_4
    int 21h
    mov ah, 09
    lea dx, rps_rule_5
    int 21h
    mov ah, 09
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, rps_rule_msg_2
    int 21h
    mov ah, 09
    lea dx, rps_rule_6
    int 21h
    mov ah, 09
    lea dx, rps_rule_7
    int 21h
    mov ah, 09
    lea dx, rps_rule_8
    int 21h
    mov ah, 09
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    
rps_get_rounds:
    lea dx, rps_rounds_msg
    mov ah, 09
    int 21h
    
    mov ah, 01
    int 21h
    
    cmp al, '1'
    jl rps_invalid_rounds
    cmp al, '9'
    jg rps_invalid_rounds
    
    sub al, '0'
    mov rps_rounds, al
    lea dx, newline
    mov ah, 09
    int 21h
    jmp rps_game_loop
    
rps_invalid_rounds:
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, rps_round_invalid
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    jmp rps_get_rounds
    
rps_game_loop:
    lea dx, newline
    mov ah, 09
    int 21h
    mov dl, rps_current_round
    add dl, '0'
    mov ah, 02
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    mov ah, 00h
    int 1ah
    mov ax, dx
    xor dx, dx
    mov cx, 3
    div cx
    add dl, 1
    mov rps_comp_choice, dl
    
    lea dx, newline
    mov ah, 09
    int 21h
    
    
    lea dx, rps_prompt_msg
    mov ah, 09
    int 21h
    
    mov ah, 01
    int 21h
    
    ;Saving and restoring the input
    push ax
    lea dx, newline
    mov ah, 09
    int 21h
    pop ax 
    
    mov rps_player_choice, 0
    
    ;Using R/P/S for input
    cmp al, 'R'
    je rps_rock
    cmp al, 'r'
    je rps_rock
    cmp al, 'P'
    je rps_paper
    cmp al, 'p'
    je rps_paper
    cmp al, 'S'
    je rps_scissors
    cmp al, 's'
    je rps_scissors
    
    ;Using 1/2/3 for input
    sub al, '0'
    cmp al, 1
    je rps_rock
    cmp al, 2
    je rps_paper
    cmp al, 3
    je rps_scissors
    jmp rps_invalid
    
rps_rock:
    mov rps_player_choice, 1
    jmp rps_check_game
rps_paper:
    mov rps_player_choice, 2
    jmp rps_check_game
rps_scissors:
    mov rps_player_choice, 3
    
rps_check_game:
    mov al, rps_player_choice
    mov bl, rps_comp_choice
    cmp al, bl
    je rps_tie
    cmp al, 1
    je rps_check_rock
    cmp al, 2
    je rps_check_paper
    jmp rps_check_scissors

rps_check_rock:
    cmp bl, 3
    je rps_win
    jmp rps_lose
rps_check_paper:
    cmp bl, 1
    je rps_win
    jmp rps_lose
rps_check_scissors:
    cmp bl, 2
    je rps_win
    jmp rps_lose

rps_invalid:
    lea dx, rps_invalid_msg
    mov ah, 09
    int 21h
    jmp rps_round_end
    
rps_tie:
    lea dx, rps_tie_msg
    mov ah, 09
    int 21h
    jmp rps_round_end
rps_win:
    lea dx, rps_win_msg
    mov ah, 09
    int 21h
    inc rps_player_wins
    jmp rps_round_end
rps_lose:
    lea dx, rps_lose_msg
    mov ah, 09
    int 21h
    inc rps_computer_wins
    
rps_round_end:
    lea dx, newline
    mov ah, 09
    int 21h
    inc rps_current_round
    mov al, rps_current_round
    cmp al, rps_rounds
    jle rps_game_loop
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, rps_final_msg
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 9
    int 21h
    lea dx, rps_player_score
    mov ah, 09
    int 21h
    mov dl, rps_player_wins
    add dl, '0'
    mov ah, 02
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, rps_computer_score
    mov ah, 09
    int 21h
    mov dl, rps_computer_wins
    add dl, '0'
    mov ah, 02
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, rps_final_winner
    mov ah, 09
    int 21h
    mov al, rps_player_wins
    cmp al, rps_computer_wins
    je rps_draw
    jg rps_player_win
    lea dx, rps_computer_msg
    jmp rps_display_winner

rps_player_win:
    lea dx, rps_player_msg
    jmp rps_display_winner
rps_draw:
    lea dx, rps_draw_msg
rps_display_winner:
    mov ah, 09
    int 21h
    lea dx, newline
    mov ah, 09
    int 21h
    jmp ask_play_again
    jmp exit_game

ask_play_again:
    lea dx, newline
    mov ah, 09
    int 21h
    
    lea dx, play_again_msg
    mov ah, 09
    int 21h
    
    lea dx, play_again_wordle
    mov ah, 09
    int 21h
    
    lea dx, play_again_rps
    mov ah, 09
    int 21h
    
    lea dx, exit_console
    mov ah, 09
    int 21h
    
    lea dx, ask_credit
    mov ah, 09
    int 21h
    
    lea dx, play_again_option_msg
    mov ah, 09
    int 21h
    
    mov ah, 01
    int 21h
    
    cmp al, '1'
    je wordle
    cmp al, '2'
    je rock_paper_scissors
    cmp al, '3'
    je exit_game
    cmp al, '4'
    je view_creds
    
    lea dx, play_again_invalid
    mov ah, 09
    int 21h
    jmp ask_play_again  
    
view_creds:
    lea dx, author_page_line_1
    mov ah, 09h
    int 21h
    lea dx, author_page_line_2
    mov ah, 09h
    int 21h
    lea dx, author_page_line_3
    mov ah, 09h
    int 21h
    lea dx, author_page_line_4
    mov ah, 09h
    int 21h
    lea dx, author_page_line_5
    mov ah, 09h
    int 21h
    lea dx, author_page_line_6
    mov ah, 09h
    int 21h
    lea dx, author_page_line_7
    mov ah, 09h
    int 21h
    lea dx, author_page_line_8
    mov ah, 09h
    int 21h
    lea dx, author_page_line_9
    mov ah, 09h
    int 21h
    lea dx, author_page_line_10
    mov ah, 09h
    int 21h
    lea dx, author_page_line_11
    mov ah, 09h
    int 21h
    lea dx, author_page_line_12
    mov ah, 09h
    int 21h
    lea dx, author_page_line_13
    mov ah, 09h
    int 21h
    
    lea dx, newline
    mov ah, 09h
    int 21h
    lea dx, newline
    mov ah, 09h
    int 21h

    lea dx, sir_page_line_1
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_2
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_3
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_4
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_5
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_6
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_7
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_8
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_9
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_10
    mov ah, 09h
    int 21h
    lea dx, sir_page_line_11
    mov ah, 09h
    int 21h        
    
exit_game:
    lea dx, newline
    mov ah, 09
    int 21h
    lea dx, exit_msg
    mov ah, 09
    int 21h
    mov ah, 4ch
    int 21h
main endp
end start       