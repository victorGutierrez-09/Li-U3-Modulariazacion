INCLUDE Irvine32.inc

.data
    msg_Bienvenida BYTE "INICIO DE PROGRAMA ", 0
    msg_Cad        BYTE "ESCRIBE UNA CADENA (TEXTO) : ", 0
    msg_Inv        BYTE "NO EXISTE LA CADENA ", 0
    mag_Val        BYTE "LA CADENA SI EXISTE  ", 0
    palabra        BYTE 20 DUP(0)
    msg_Fin        BYTE "ACABO EL PROGRAMA ", 0

.code
main PROC
    mov edx, OFFSET msg_Bienvenida
    call WriteString
    call Crlf

    mov edx, OFFSET msg_Cad
    call WriteString
    call Crlf

    mov edx, OFFSET palabra
    mov ecx, SIZEOF palabra
    call ReadString
    call Crlf

    call ValidarCad ; Llama al procedimiento y guarda la dirección de retorno

    mov edx, OFFSET msg_Fin
    call WriteString
    call Crlf
    
    exit
main ENDP

ValidarCad PROC
    cmp eax, 0
    jle invalido
    mov edx, OFFSET mag_Val
    jmp mostrar
invalido:
    mov edx, OFFSET msg_Inv
mostrar:
    call WriteString
    call Crlf
    ret ; Retorna a la instrucción siguiente después de la llamada
ValidarCad ENDP

END main