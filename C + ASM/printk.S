.extern printk

.section .rodata
msg:
    .asciz "algo\n"

.section .text
.global minha_func
minha_func:
    mov $msg, %rdi   # primeiro argumento
    xor %rax, %rax   # printk é variádica → zerar rax
    call printk
    ret
