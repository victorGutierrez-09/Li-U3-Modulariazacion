INCLUDE Irvine32.inc

.data
    msg_Bienvenida BYTE "INICIO DE PROGRAMA ", 0
    msg_Proc       BYTE "ESTOY EN EL PROCEDIMIENTOOOOOOOOOO AJAJ XD ", 0
    msg_Proc2      BYTE "ESTOY EN EL  OTRO PROCEDIMIENTOOOOOOOOOO AJAJ XD ", 0
    msg_Fin        BYTE "ACABO EL PROGRAMA ", 0

.code
main PROC
    mov edx, OFFSET msg_Bienvenida
    call WriteString
    call Crlf

    call MensajeAviso

    mov eax, 10
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

    call MensajeAviso2 ; Llamada anidada: guarda otra dirección de retorno en la pila
    
    ret
MensajeAviso ENDP

MensajeAviso2 PROC
    mov edx, OFFSET msg_Proc2
    call WriteString
    call Crlf
    ret
MensajeAviso2 ENDP

END main