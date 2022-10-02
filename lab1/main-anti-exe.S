
main：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	pushq  0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmpq *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmpq *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <printf@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmpq *0x2f75(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	4c 8d 05 66 02 00 00 	lea    0x266(%rip),%r8        # 12e0 <__libc_csu_fini>
    107a:	48 8d 0d ef 01 00 00 	lea    0x1ef(%rip),%rcx        # 1270 <__libc_csu_init>
    1081:	48 8d 3d 9e 01 00 00 	lea    0x19e(%rip),%rdi        # 1226 <main>
    1088:	ff 15 52 2f 00 00    	callq  *0x2f52(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    108e:	f4                   	hlt    
    108f:	90                   	nop

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4018 <__TMC_END__>
    1097:	48 8d 05 7a 2f 00 00 	lea    0x2f7a(%rip),%rax        # 4018 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmpq   *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	retq   
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4018 <__TMC_END__>
    10c7:	48 8d 35 4a 2f 00 00 	lea    0x2f4a(%rip),%rsi        # 4018 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmpq   *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 09 2f 00 00 00 	cmpb   $0x0,0x2f09(%rip)        # 4014 <completed.8061>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	callq  1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	callq  1090 <deregister_tm_clones>
    112c:	c6 05 e1 2e 00 00 01 	movb   $0x1,0x2ee1(%rip)        # 4014 <completed.8061>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	retq   
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmpq   10c0 <register_tm_clones>

0000000000001149 <func_a>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	48 83 ec 20          	sub    $0x20,%rsp
    1155:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1158:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    115f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1162:	8d 50 01             	lea    0x1(%rax),%edx
    1165:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1168:	01 d0                	add    %edx,%eax
    116a:	89 c6                	mov    %eax,%esi
    116c:	48 8d 3d 95 0e 00 00 	lea    0xe95(%rip),%rdi        # 2008 <N+0x4>
    1173:	b8 00 00 00 00       	mov    $0x0,%eax
    1178:	e8 d3 fe ff ff       	callq  1050 <printf@plt>
    117d:	90                   	nop
    117e:	c9                   	leaveq 
    117f:	c3                   	retq   

0000000000001180 <func_b>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	55                   	push   %rbp
    1185:	48 89 e5             	mov    %rsp,%rbp
    1188:	8b 05 82 2e 00 00    	mov    0x2e82(%rip),%eax        # 4010 <x>
    118e:	83 c0 01             	add    $0x1,%eax
    1191:	ba 64 00 00 00       	mov    $0x64,%edx
    1196:	01 d0                	add    %edx,%eax
    1198:	89 c6                	mov    %eax,%esi
    119a:	48 8d 3d 67 0e 00 00 	lea    0xe67(%rip),%rdi        # 2008 <N+0x4>
    11a1:	b8 00 00 00 00       	mov    $0x0,%eax
    11a6:	e8 a5 fe ff ff       	callq  1050 <printf@plt>
    11ab:	90                   	nop
    11ac:	5d                   	pop    %rbp
    11ad:	c3                   	retq   

00000000000011ae <func_c>:
    11ae:	f3 0f 1e fa          	endbr64 
    11b2:	55                   	push   %rbp
    11b3:	48 89 e5             	mov    %rsp,%rbp
    11b6:	48 83 ec 20          	sub    $0x20,%rsp
    11ba:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11bd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    11c4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    11cb:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    11d2:	8b 55 f4             	mov    -0xc(%rbp),%edx
    11d5:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11d8:	89 c6                	mov    %eax,%esi
    11da:	48 8d 3d 2b 0e 00 00 	lea    0xe2b(%rip),%rdi        # 200c <N+0x8>
    11e1:	b8 00 00 00 00       	mov    $0x0,%eax
    11e6:	e8 65 fe ff ff       	callq  1050 <printf@plt>
    11eb:	eb 2c                	jmp    1219 <func_c+0x6b>
    11ed:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11f0:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11f3:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11f6:	01 45 f0             	add    %eax,-0x10(%rbp)
    11f9:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11fc:	89 c6                	mov    %eax,%esi
    11fe:	48 8d 3d 0c 0e 00 00 	lea    0xe0c(%rip),%rdi        # 2011 <N+0xd>
    1205:	b8 00 00 00 00       	mov    $0x0,%eax
    120a:	e8 41 fe ff ff       	callq  1050 <printf@plt>
    120f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1212:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1215:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1219:	8b 45 f8             	mov    -0x8(%rbp),%eax
    121c:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    121f:	7c cc                	jl     11ed <func_c+0x3f>
    1221:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1224:	c9                   	leaveq 
    1225:	c3                   	retq   

0000000000001226 <main>:
    1226:	f3 0f 1e fa          	endbr64 
    122a:	55                   	push   %rbp
    122b:	48 89 e5             	mov    %rsp,%rbp
    122e:	bf 0a 00 00 00       	mov    $0xa,%edi
    1233:	e8 11 ff ff ff       	callq  1149 <func_a>
    1238:	b8 00 00 00 00       	mov    $0x0,%eax
    123d:	e8 3e ff ff ff       	callq  1180 <func_b>
    1242:	bf 14 00 00 00       	mov    $0x14,%edi
    1247:	e8 62 ff ff ff       	callq  11ae <func_c>
    124c:	89 c6                	mov    %eax,%esi
    124e:	48 8d 3d bc 0d 00 00 	lea    0xdbc(%rip),%rdi        # 2011 <N+0xd>
    1255:	b8 00 00 00 00       	mov    $0x0,%eax
    125a:	e8 f1 fd ff ff       	callq  1050 <printf@plt>
    125f:	b8 00 00 00 00       	mov    $0x0,%eax
    1264:	5d                   	pop    %rbp
    1265:	c3                   	retq   
    1266:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    126d:	00 00 00 

0000000000001270 <__libc_csu_init>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	41 57                	push   %r15
    1276:	4c 8d 3d 3b 2b 00 00 	lea    0x2b3b(%rip),%r15        # 3db8 <__frame_dummy_init_array_entry>
    127d:	41 56                	push   %r14
    127f:	49 89 d6             	mov    %rdx,%r14
    1282:	41 55                	push   %r13
    1284:	49 89 f5             	mov    %rsi,%r13
    1287:	41 54                	push   %r12
    1289:	41 89 fc             	mov    %edi,%r12d
    128c:	55                   	push   %rbp
    128d:	48 8d 2d 2c 2b 00 00 	lea    0x2b2c(%rip),%rbp        # 3dc0 <__do_global_dtors_aux_fini_array_entry>
    1294:	53                   	push   %rbx
    1295:	4c 29 fd             	sub    %r15,%rbp
    1298:	48 83 ec 08          	sub    $0x8,%rsp
    129c:	e8 5f fd ff ff       	callq  1000 <_init>
    12a1:	48 c1 fd 03          	sar    $0x3,%rbp
    12a5:	74 1f                	je     12c6 <__libc_csu_init+0x56>
    12a7:	31 db                	xor    %ebx,%ebx
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12b0:	4c 89 f2             	mov    %r14,%rdx
    12b3:	4c 89 ee             	mov    %r13,%rsi
    12b6:	44 89 e7             	mov    %r12d,%edi
    12b9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12bd:	48 83 c3 01          	add    $0x1,%rbx
    12c1:	48 39 dd             	cmp    %rbx,%rbp
    12c4:	75 ea                	jne    12b0 <__libc_csu_init+0x40>
    12c6:	48 83 c4 08          	add    $0x8,%rsp
    12ca:	5b                   	pop    %rbx
    12cb:	5d                   	pop    %rbp
    12cc:	41 5c                	pop    %r12
    12ce:	41 5d                	pop    %r13
    12d0:	41 5e                	pop    %r14
    12d2:	41 5f                	pop    %r15
    12d4:	c3                   	retq   
    12d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12dc:	00 00 00 00 

00000000000012e0 <__libc_csu_fini>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	c3                   	retq   

Disassembly of section .fini:

00000000000012e8 <_fini>:
    12e8:	f3 0f 1e fa          	endbr64 
    12ec:	48 83 ec 08          	sub    $0x8,%rsp
    12f0:	48 83 c4 08          	add    $0x8,%rsp
    12f4:	c3                   	retq   
