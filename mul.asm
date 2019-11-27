;data
org 1000h
num1    db  5h
num2    db  3h

;subroutine
org 3000h
mul: cmp al, 0 ;compare 0 with the al value
    jz end ;go to the label end if it's equal
    cmp cl, 0 ;compare 0 with the cl value
    jz end ; go to the label end if it's equal
    mov ah, 0 ;move 0 to the reg ah
    mov dx, 0 ;move 0 to the reg dx
loop: add dx, ax ; add num2 times
      dec cl ; dec cl, the previous op. will be made (CL) x times
      jnz loop ;go to label loop if cl that contains num2 value is dif 0 (repeat)
end: ret
org 2000h
mov al, num1 ;move num1 to reg al
mov cl, num2 ; move num2 to reg cl
call mul
hlt
end



