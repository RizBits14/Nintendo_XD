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

;Datas For Invalid Input While Choosing the Game Data

;Newline Data

;Wordle Game Data

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