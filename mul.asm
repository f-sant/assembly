;data
org 1000h
num1    db  5h
num2    db  3h

;instructions
org 2000h
mov al, num1 ;move num1 to reg al
cmp al, 0 ;compare 0 with the al value
jz  end1 ;go to the label end if it's equal
mov ah, 0 ;will be used for operation
mov dx, 0 ;res will be stored here
mov cl, num2 ; move num2 to reg cl
loop: cmp cl, 0 ;compare 0 with the cl value
    jz end ;go to the label end if it's equal
    add dx, ax ;add dx (res) with ax (num1) res=res+num1 
    dec cl ; dec cl, the previous op. will be made (CL) x times
    jump loop ;go to label loop (repeat)
end1:hlt
    end



