// accumulate numbers from the stdin until 0 is encountered

.section .data
greet_msg: .ascii "Enter integers, 0 to stop: "
greet_msg_len = . - greet_msg
newline: .ascii "\n"
newline_len = . - newline
buffer: .space 9
buffer_len = . - buffer

.section .text
.global _start

print_newline:
    movq $1, %rax
    movq $1, %rdi 
    movq $newline, %rsi
    movq $newline_len, %rdx
    syscall
    ret

_start:
    // fill buffer with zeroes
    movq $buffer, %rdi
    movb $0, %al
    movq $buffer_len, %rcx
    rep stosb

    // write(stdout, greet_msg, greet_msg_len)
    movq $1, %rax
    movq $1, %rdi 
    movq $greet_msg, %rsi
    movq $greet_msg_len, %rdx
    syscall

    call print_newline

    // read(stdin, buffer, buffer_len)
    movq $0, %rax
    movq $0, %rdi
    movq $buffer, %rsi
    movq $buffer_len, %rdx
    syscall

    // move read amount to rbx
    mov %rax, %rdx

    // write(stdout, buffer, %rdx)
    movq $1, %rax
    movq $1, %rdi 
    movq $buffer, %rsi
    // %rdx already set
    syscall

    // exit(0)
    movq $60, %rax
    movq $0, %rdi
    syscall
