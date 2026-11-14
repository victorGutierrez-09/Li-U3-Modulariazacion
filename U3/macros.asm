INCLUDE Irvine32.inc

MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

CalcularImporte MACRO precio, cantidad
    mov eax, precio
    imul eax, cantidad
ENDM

.data
    MensajeBienvenida BYTE "Que pasa calabaza", 0
    MensajeFin        BYTE "Me piro vampiro ", 0
    precio            DWORD 50
    cantidad          DWORD 3
    importe           DWORD ?

.code
main PROC
    MostrarMensaje MensajeBienvenida

    CalcularImporte precio, cantidad
    mov importe, eax

    call WriteInt
    call Crlf

    MostrarMensaje MensajeFin

    exit
main ENDP
END main