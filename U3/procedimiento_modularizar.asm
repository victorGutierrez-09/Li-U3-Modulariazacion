INCLUDE Irvine32.inc

.data
    msg_Bienvenida BYTE "INICIO DE PROGRAMA ", 0
    msg_Proc       BYTE "ESTOY EN EL PROCEDIMIENTOOOOOOOOOO AJAJ XD ", 0
    msg_Fin        BYTE "ACABO EL PROGRAMA ", 0

.code
main PROC
    mov edx, OFFSET msg_Bienvenida
    call WriteString
    call Crlf

    call MensajeAviso
    mov eax, 10

    call MensajeAviso
    mov eax, 20

    mov edx, OFFSET msg_Fin
    call WriteString
    call Crlf
    
    exit
main ENDP

MensajeAviso PROC
    mov edx, OFFSET msg_Proc
    call WriteString
    call Crlf
    ret ; Regresa al flujo principal de main
MensajeAviso ENDP

END main