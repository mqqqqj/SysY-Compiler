
main.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_a>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	89 7d ec             	mov    %edi,-0x14(%rbp)
   f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  16:	8b 45 fc             	mov    -0x4(%rbp),%eax
  19:	8d 50 01             	lea    0x1(%rax),%edx
  1c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  1f:	01 d0                	add    %edx,%eax
  21:	89 c6                	mov    %eax,%esi
  23:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 2a <func_a+0x2a>
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	e8 00 00 00 00       	callq  34 <func_a+0x34>
  34:	90                   	nop
  35:	c9                   	leaveq 
  36:	c3                   	retq   

0000000000000037 <func_b>:
  37:	f3 0f 1e fa          	endbr64 
  3b:	55                   	push   %rbp
  3c:	48 89 e5             	mov    %rsp,%rbp
  3f:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 45 <func_b+0xe>
  45:	83 c0 01             	add    $0x1,%eax
  48:	ba 64 00 00 00       	mov    $0x64,%edx
  4d:	01 d0                	add    %edx,%eax
  4f:	89 c6                	mov    %eax,%esi
  51:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 58 <func_b+0x21>
  58:	b8 00 00 00 00       	mov    $0x0,%eax
  5d:	e8 00 00 00 00       	callq  62 <func_b+0x2b>
  62:	90                   	nop
  63:	5d                   	pop    %rbp
  64:	c3                   	retq   

0000000000000065 <func_c>:
  65:	f3 0f 1e fa          	endbr64 
  69:	55                   	push   %rbp
  6a:	48 89 e5             	mov    %rsp,%rbp
  6d:	48 83 ec 20          	sub    $0x20,%rsp
  71:	89 7d ec             	mov    %edi,-0x14(%rbp)
  74:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  7b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  82:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  89:	8b 55 f4             	mov    -0xc(%rbp),%edx
  8c:	8b 45 f0             	mov    -0x10(%rbp),%eax
  8f:	89 c6                	mov    %eax,%esi
  91:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 98 <func_c+0x33>
  98:	b8 00 00 00 00       	mov    $0x0,%eax
  9d:	e8 00 00 00 00       	callq  a2 <func_c+0x3d>
  a2:	eb 2c                	jmp    d0 <func_c+0x6b>
  a4:	8b 45 f0             	mov    -0x10(%rbp),%eax
  a7:	89 45 fc             	mov    %eax,-0x4(%rbp)
  aa:	8b 45 f4             	mov    -0xc(%rbp),%eax
  ad:	01 45 f0             	add    %eax,-0x10(%rbp)
  b0:	8b 45 f0             	mov    -0x10(%rbp),%eax
  b3:	89 c6                	mov    %eax,%esi
  b5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # bc <func_c+0x57>
  bc:	b8 00 00 00 00       	mov    $0x0,%eax
  c1:	e8 00 00 00 00       	callq  c6 <func_c+0x61>
  c6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  c9:	89 45 f4             	mov    %eax,-0xc(%rbp)
  cc:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  d0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  d3:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  d6:	7c cc                	jl     a4 <func_c+0x3f>
  d8:	8b 45 f0             	mov    -0x10(%rbp),%eax
  db:	c9                   	leaveq 
  dc:	c3                   	retq   

00000000000000dd <main>:
  dd:	f3 0f 1e fa          	endbr64 
  e1:	55                   	push   %rbp
  e2:	48 89 e5             	mov    %rsp,%rbp
  e5:	bf 0a 00 00 00       	mov    $0xa,%edi
  ea:	e8 00 00 00 00       	callq  ef <main+0x12>
  ef:	b8 00 00 00 00       	mov    $0x0,%eax
  f4:	e8 00 00 00 00       	callq  f9 <main+0x1c>
  f9:	bf 14 00 00 00       	mov    $0x14,%edi
  fe:	e8 00 00 00 00       	callq  103 <main+0x26>
 103:	89 c6                	mov    %eax,%esi
 105:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 10c <main+0x2f>
 10c:	b8 00 00 00 00       	mov    $0x0,%eax
 111:	e8 00 00 00 00       	callq  116 <main+0x39>
 116:	b8 00 00 00 00       	mov    $0x0,%eax
 11b:	5d                   	pop    %rbp
 11c:	c3                   	retq   
