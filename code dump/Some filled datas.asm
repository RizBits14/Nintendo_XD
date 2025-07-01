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



;Rock Paper Scissors Game Data

;Rock Paper Scissors Rules Data

;Play Again Data

;Author Data

.code

main proc     
    start:
    mov ax, @data
    mov ds, ax
    
    ;Printing Welcome Page Data and Other Stuffs
    
main endp
end start
