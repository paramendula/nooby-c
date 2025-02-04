// print "Hello, World\n" to the stdout

.section .data
message: .string "Hello, World!\n"
message_len = . - message

.section .text
.global _start

_start:
    movq $1, %rax
    movq $1, %rdi
    movq $message, %rsi
    movq $message_len, %rdx
    syscall

    movq $60, %rax
    movq $0, %rdi
    syscall
