riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/ckoenig/Documents/phd/interview/sw/exercise/v1/BUILD/PULP/GCC_RISCV//test/test

/home/ckoenig/Documents/phd/interview/sw/exercise/v1/BUILD/PULP/GCC_RISCV//test/test:     format de fichier elf32-littleriscv


Déassemblage de la section .vectors :

1c00d300 <__irq_vector_base>:
1c00d300:	08c0006f          	j	1c00d38c <pos_illegal_instr>
1c00d304:	08c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d308:	0880006f          	j	1c00d390 <pos_no_irq_handler>
1c00d30c:	0840006f          	j	1c00d390 <pos_no_irq_handler>
1c00d310:	0800006f          	j	1c00d390 <pos_no_irq_handler>
1c00d314:	07c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d318:	0780006f          	j	1c00d390 <pos_no_irq_handler>
1c00d31c:	0740006f          	j	1c00d390 <pos_no_irq_handler>
1c00d320:	0700006f          	j	1c00d390 <pos_no_irq_handler>
1c00d324:	06c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d328:	0680006f          	j	1c00d390 <pos_no_irq_handler>
1c00d32c:	0640006f          	j	1c00d390 <pos_no_irq_handler>
1c00d330:	0600006f          	j	1c00d390 <pos_no_irq_handler>
1c00d334:	05c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d338:	0580006f          	j	1c00d390 <pos_no_irq_handler>
1c00d33c:	0540006f          	j	1c00d390 <pos_no_irq_handler>
1c00d340:	0500006f          	j	1c00d390 <pos_no_irq_handler>
1c00d344:	04c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d348:	0480006f          	j	1c00d390 <pos_no_irq_handler>
1c00d34c:	0440006f          	j	1c00d390 <pos_no_irq_handler>
1c00d350:	0400006f          	j	1c00d390 <pos_no_irq_handler>
1c00d354:	03c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d358:	0380006f          	j	1c00d390 <pos_no_irq_handler>
1c00d35c:	0340006f          	j	1c00d390 <pos_no_irq_handler>
1c00d360:	0300006f          	j	1c00d390 <pos_no_irq_handler>
1c00d364:	02c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d368:	0280006f          	j	1c00d390 <pos_no_irq_handler>
1c00d36c:	0240006f          	j	1c00d390 <pos_no_irq_handler>
1c00d370:	0200006f          	j	1c00d390 <pos_no_irq_handler>
1c00d374:	01c0006f          	j	1c00d390 <pos_no_irq_handler>
1c00d378:	0180006f          	j	1c00d390 <pos_no_irq_handler>
1c00d37c:	0140006f          	j	1c00d390 <pos_no_irq_handler>

1c00d380 <_start>:
1c00d380:	00003517          	auipc	a0,0x3
1c00d384:	b4a50513          	addi	a0,a0,-1206 # 1c00feca <pos_init_entry>
1c00d388:	00050067          	jr	a0

1c00d38c <pos_illegal_instr>:
1c00d38c:	0000006f          	j	1c00d38c <pos_illegal_instr>

1c00d390 <pos_no_irq_handler>:
1c00d390:	30200073          	mret

1c00d394 <pos_semihosting_call>:
1c00d394:	00100073          	ebreak
1c00d398:	00008067          	ret

Déassemblage de la section .text :

1c00d39c <__udivdi3>:
1c00d39c:	87b2                	mv	a5,a2
1c00d39e:	8736                	mv	a4,a3
1c00d3a0:	88aa                	mv	a7,a0
1c00d3a2:	882e                	mv	a6,a1
1c00d3a4:	1e069d63          	bnez	a3,1c00d59e <__udivdi3+0x202>
1c00d3a8:	1c001337          	lui	t1,0x1c001
1c00d3ac:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c00d3b0:	0ac5fd63          	bleu	a2,a1,1c00d46a <__udivdi3+0xce>
1c00d3b4:	6741                	lui	a4,0x10
1c00d3b6:	0ae67363          	bleu	a4,a2,1c00d45c <__udivdi3+0xc0>
1c00d3ba:	0ff00693          	li	a3,255
1c00d3be:	00c6b6b3          	sltu	a3,a3,a2
1c00d3c2:	068e                	slli	a3,a3,0x3
1c00d3c4:	00d65733          	srl	a4,a2,a3
1c00d3c8:	933a                	add	t1,t1,a4
1c00d3ca:	00034703          	lbu	a4,0(t1)
1c00d3ce:	02000313          	li	t1,32
1c00d3d2:	96ba                	add	a3,a3,a4
1c00d3d4:	40d30333          	sub	t1,t1,a3
1c00d3d8:	00030c63          	beqz	t1,1c00d3f0 <__udivdi3+0x54>
1c00d3dc:	00659733          	sll	a4,a1,t1
1c00d3e0:	00d556b3          	srl	a3,a0,a3
1c00d3e4:	006617b3          	sll	a5,a2,t1
1c00d3e8:	00e6e833          	or	a6,a3,a4
1c00d3ec:	006518b3          	sll	a7,a0,t1
1c00d3f0:	0107d513          	srli	a0,a5,0x10
1c00d3f4:	02a87633          	remu	a2,a6,a0
1c00d3f8:	02a85733          	divu	a4,a6,a0
1c00d3fc:	0642                	slli	a2,a2,0x10
1c00d3fe:	1007d5b3          	p.exthz	a1,a5
1c00d402:	0108d693          	srli	a3,a7,0x10
1c00d406:	8ed1                	or	a3,a3,a2
1c00d408:	02e58833          	mul	a6,a1,a4
1c00d40c:	863a                	mv	a2,a4
1c00d40e:	0106fc63          	bleu	a6,a3,1c00d426 <__udivdi3+0x8a>
1c00d412:	96be                	add	a3,a3,a5
1c00d414:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x1b>
1c00d418:	00f6e763          	bltu	a3,a5,1c00d426 <__udivdi3+0x8a>
1c00d41c:	0106f563          	bleu	a6,a3,1c00d426 <__udivdi3+0x8a>
1c00d420:	ffe70613          	addi	a2,a4,-2
1c00d424:	96be                	add	a3,a3,a5
1c00d426:	410686b3          	sub	a3,a3,a6
1c00d42a:	02a6f833          	remu	a6,a3,a0
1c00d42e:	02a6d6b3          	divu	a3,a3,a0
1c00d432:	df0828b3          	p.insert	a7,a6,15,16
1c00d436:	02d58733          	mul	a4,a1,a3
1c00d43a:	8536                	mv	a0,a3
1c00d43c:	00e8fb63          	bleu	a4,a7,1c00d452 <__udivdi3+0xb6>
1c00d440:	98be                	add	a7,a7,a5
1c00d442:	fff68513          	addi	a0,a3,-1
1c00d446:	00f8e663          	bltu	a7,a5,1c00d452 <__udivdi3+0xb6>
1c00d44a:	00e8f463          	bleu	a4,a7,1c00d452 <__udivdi3+0xb6>
1c00d44e:	ffe68513          	addi	a0,a3,-2
1c00d452:	01061793          	slli	a5,a2,0x10
1c00d456:	8fc9                	or	a5,a5,a0
1c00d458:	4801                	li	a6,0
1c00d45a:	a06d                	j	1c00d504 <__udivdi3+0x168>
1c00d45c:	01000737          	lui	a4,0x1000
1c00d460:	46c1                	li	a3,16
1c00d462:	f6e661e3          	bltu	a2,a4,1c00d3c4 <__udivdi3+0x28>
1c00d466:	46e1                	li	a3,24
1c00d468:	bfb1                	j	1c00d3c4 <__udivdi3+0x28>
1c00d46a:	e601                	bnez	a2,1c00d472 <__udivdi3+0xd6>
1c00d46c:	4685                	li	a3,1
1c00d46e:	02c6d7b3          	divu	a5,a3,a2
1c00d472:	66c1                	lui	a3,0x10
1c00d474:	08d7fb63          	bleu	a3,a5,1c00d50a <__udivdi3+0x16e>
1c00d478:	0ff00693          	li	a3,255
1c00d47c:	00f6f363          	bleu	a5,a3,1c00d482 <__udivdi3+0xe6>
1c00d480:	4721                	li	a4,8
1c00d482:	00e7d6b3          	srl	a3,a5,a4
1c00d486:	9336                	add	t1,t1,a3
1c00d488:	00034683          	lbu	a3,0(t1)
1c00d48c:	02000613          	li	a2,32
1c00d490:	96ba                	add	a3,a3,a4
1c00d492:	8e15                	sub	a2,a2,a3
1c00d494:	e251                	bnez	a2,1c00d518 <__udivdi3+0x17c>
1c00d496:	40f58733          	sub	a4,a1,a5
1c00d49a:	4805                	li	a6,1
1c00d49c:	0107d513          	srli	a0,a5,0x10
1c00d4a0:	02a77633          	remu	a2,a4,a0
1c00d4a4:	02a75733          	divu	a4,a4,a0
1c00d4a8:	0642                	slli	a2,a2,0x10
1c00d4aa:	1007d5b3          	p.exthz	a1,a5
1c00d4ae:	0108d693          	srli	a3,a7,0x10
1c00d4b2:	8ed1                	or	a3,a3,a2
1c00d4b4:	02e58333          	mul	t1,a1,a4
1c00d4b8:	863a                	mv	a2,a4
1c00d4ba:	0066fc63          	bleu	t1,a3,1c00d4d2 <__udivdi3+0x136>
1c00d4be:	96be                	add	a3,a3,a5
1c00d4c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff001b>
1c00d4c4:	00f6e763          	bltu	a3,a5,1c00d4d2 <__udivdi3+0x136>
1c00d4c8:	0066f563          	bleu	t1,a3,1c00d4d2 <__udivdi3+0x136>
1c00d4cc:	ffe70613          	addi	a2,a4,-2
1c00d4d0:	96be                	add	a3,a3,a5
1c00d4d2:	406686b3          	sub	a3,a3,t1
1c00d4d6:	02a6f333          	remu	t1,a3,a0
1c00d4da:	02a6d6b3          	divu	a3,a3,a0
1c00d4de:	df0328b3          	p.insert	a7,t1,15,16
1c00d4e2:	02d58733          	mul	a4,a1,a3
1c00d4e6:	8536                	mv	a0,a3
1c00d4e8:	00e8fb63          	bleu	a4,a7,1c00d4fe <__udivdi3+0x162>
1c00d4ec:	98be                	add	a7,a7,a5
1c00d4ee:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x1b>
1c00d4f2:	00f8e663          	bltu	a7,a5,1c00d4fe <__udivdi3+0x162>
1c00d4f6:	00e8f463          	bleu	a4,a7,1c00d4fe <__udivdi3+0x162>
1c00d4fa:	ffe68513          	addi	a0,a3,-2
1c00d4fe:	01061793          	slli	a5,a2,0x10
1c00d502:	8fc9                	or	a5,a5,a0
1c00d504:	853e                	mv	a0,a5
1c00d506:	85c2                	mv	a1,a6
1c00d508:	8082                	ret
1c00d50a:	010006b7          	lui	a3,0x1000
1c00d50e:	4741                	li	a4,16
1c00d510:	f6d7e9e3          	bltu	a5,a3,1c00d482 <__udivdi3+0xe6>
1c00d514:	4761                	li	a4,24
1c00d516:	b7b5                	j	1c00d482 <__udivdi3+0xe6>
1c00d518:	00c797b3          	sll	a5,a5,a2
1c00d51c:	00d5d333          	srl	t1,a1,a3
1c00d520:	0107de13          	srli	t3,a5,0x10
1c00d524:	00c59733          	sll	a4,a1,a2
1c00d528:	00c518b3          	sll	a7,a0,a2
1c00d52c:	03c37633          	remu	a2,t1,t3
1c00d530:	00d555b3          	srl	a1,a0,a3
1c00d534:	03c35533          	divu	a0,t1,t3
1c00d538:	8dd9                	or	a1,a1,a4
1c00d53a:	0642                	slli	a2,a2,0x10
1c00d53c:	1007d733          	p.exthz	a4,a5
1c00d540:	0105d693          	srli	a3,a1,0x10
1c00d544:	02a70333          	mul	t1,a4,a0
1c00d548:	8ed1                	or	a3,a3,a2
1c00d54a:	882a                	mv	a6,a0
1c00d54c:	0066fc63          	bleu	t1,a3,1c00d564 <__udivdi3+0x1c8>
1c00d550:	96be                	add	a3,a3,a5
1c00d552:	fff50813          	addi	a6,a0,-1
1c00d556:	00f6e763          	bltu	a3,a5,1c00d564 <__udivdi3+0x1c8>
1c00d55a:	0066f563          	bleu	t1,a3,1c00d564 <__udivdi3+0x1c8>
1c00d55e:	ffe50813          	addi	a6,a0,-2
1c00d562:	96be                	add	a3,a3,a5
1c00d564:	406686b3          	sub	a3,a3,t1
1c00d568:	03c6f633          	remu	a2,a3,t3
1c00d56c:	03c6d6b3          	divu	a3,a3,t3
1c00d570:	df0625b3          	p.insert	a1,a2,15,16
1c00d574:	02d70733          	mul	a4,a4,a3
1c00d578:	8636                	mv	a2,a3
1c00d57a:	00e5fc63          	bleu	a4,a1,1c00d592 <__udivdi3+0x1f6>
1c00d57e:	95be                	add	a1,a1,a5
1c00d580:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff001b>
1c00d584:	00f5e763          	bltu	a1,a5,1c00d592 <__udivdi3+0x1f6>
1c00d588:	00e5f563          	bleu	a4,a1,1c00d592 <__udivdi3+0x1f6>
1c00d58c:	ffe68613          	addi	a2,a3,-2
1c00d590:	95be                	add	a1,a1,a5
1c00d592:	0842                	slli	a6,a6,0x10
1c00d594:	40e58733          	sub	a4,a1,a4
1c00d598:	00c86833          	or	a6,a6,a2
1c00d59c:	b701                	j	1c00d49c <__udivdi3+0x100>
1c00d59e:	12d5ea63          	bltu	a1,a3,1c00d6d2 <__udivdi3+0x336>
1c00d5a2:	67c1                	lui	a5,0x10
1c00d5a4:	02f6fd63          	bleu	a5,a3,1c00d5de <__udivdi3+0x242>
1c00d5a8:	0ff00793          	li	a5,255
1c00d5ac:	00d7b8b3          	sltu	a7,a5,a3
1c00d5b0:	088e                	slli	a7,a7,0x3
1c00d5b2:	1c001737          	lui	a4,0x1c001
1c00d5b6:	0116d7b3          	srl	a5,a3,a7
1c00d5ba:	86870713          	addi	a4,a4,-1944 # 1c000868 <__DTOR_END__>
1c00d5be:	97ba                	add	a5,a5,a4
1c00d5c0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x1c>
1c00d5c4:	02000813          	li	a6,32
1c00d5c8:	97c6                	add	a5,a5,a7
1c00d5ca:	40f80833          	sub	a6,a6,a5
1c00d5ce:	00081f63          	bnez	a6,1c00d5ec <__udivdi3+0x250>
1c00d5d2:	4785                	li	a5,1
1c00d5d4:	f2b6e8e3          	bltu	a3,a1,1c00d504 <__udivdi3+0x168>
1c00d5d8:	04a637b3          	p.sletu	a5,a2,a0
1c00d5dc:	b725                	j	1c00d504 <__udivdi3+0x168>
1c00d5de:	010007b7          	lui	a5,0x1000
1c00d5e2:	48c1                	li	a7,16
1c00d5e4:	fcf6e7e3          	bltu	a3,a5,1c00d5b2 <__udivdi3+0x216>
1c00d5e8:	48e1                	li	a7,24
1c00d5ea:	b7e1                	j	1c00d5b2 <__udivdi3+0x216>
1c00d5ec:	00f658b3          	srl	a7,a2,a5
1c00d5f0:	010696b3          	sll	a3,a3,a6
1c00d5f4:	00d8e6b3          	or	a3,a7,a3
1c00d5f8:	00f5d333          	srl	t1,a1,a5
1c00d5fc:	0106de13          	srli	t3,a3,0x10
1c00d600:	00f55733          	srl	a4,a0,a5
1c00d604:	03c377b3          	remu	a5,t1,t3
1c00d608:	010595b3          	sll	a1,a1,a6
1c00d60c:	03c35333          	divu	t1,t1,t3
1c00d610:	8f4d                	or	a4,a4,a1
1c00d612:	07c2                	slli	a5,a5,0x10
1c00d614:	1006d8b3          	p.exthz	a7,a3
1c00d618:	01075593          	srli	a1,a4,0x10
1c00d61c:	8ddd                	or	a1,a1,a5
1c00d61e:	02688eb3          	mul	t4,a7,t1
1c00d622:	01061633          	sll	a2,a2,a6
1c00d626:	879a                	mv	a5,t1
1c00d628:	01d5fc63          	bleu	t4,a1,1c00d640 <__udivdi3+0x2a4>
1c00d62c:	95b6                	add	a1,a1,a3
1c00d62e:	fff30793          	addi	a5,t1,-1
1c00d632:	00d5e763          	bltu	a1,a3,1c00d640 <__udivdi3+0x2a4>
1c00d636:	01d5f563          	bleu	t4,a1,1c00d640 <__udivdi3+0x2a4>
1c00d63a:	ffe30793          	addi	a5,t1,-2
1c00d63e:	95b6                	add	a1,a1,a3
1c00d640:	41d585b3          	sub	a1,a1,t4
1c00d644:	03c5f333          	remu	t1,a1,t3
1c00d648:	03c5d5b3          	divu	a1,a1,t3
1c00d64c:	df032733          	p.insert	a4,t1,15,16
1c00d650:	02b888b3          	mul	a7,a7,a1
1c00d654:	832e                	mv	t1,a1
1c00d656:	01177c63          	bleu	a7,a4,1c00d66e <__udivdi3+0x2d2>
1c00d65a:	9736                	add	a4,a4,a3
1c00d65c:	fff58313          	addi	t1,a1,-1
1c00d660:	00d76763          	bltu	a4,a3,1c00d66e <__udivdi3+0x2d2>
1c00d664:	01177563          	bleu	a7,a4,1c00d66e <__udivdi3+0x2d2>
1c00d668:	ffe58313          	addi	t1,a1,-2
1c00d66c:	9736                	add	a4,a4,a3
1c00d66e:	07c2                	slli	a5,a5,0x10
1c00d670:	6e41                	lui	t3,0x10
1c00d672:	0067e7b3          	or	a5,a5,t1
1c00d676:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x1b>
1c00d67a:	00b7f6b3          	and	a3,a5,a1
1c00d67e:	41170733          	sub	a4,a4,a7
1c00d682:	8df1                	and	a1,a1,a2
1c00d684:	0107d893          	srli	a7,a5,0x10
1c00d688:	02b68333          	mul	t1,a3,a1
1c00d68c:	02b885b3          	mul	a1,a7,a1
1c00d690:	8241                	srli	a2,a2,0x10
1c00d692:	8eae                	mv	t4,a1
1c00d694:	42c68eb3          	p.mac	t4,a3,a2
1c00d698:	01035693          	srli	a3,t1,0x10
1c00d69c:	96f6                	add	a3,a3,t4
1c00d69e:	02c888b3          	mul	a7,a7,a2
1c00d6a2:	00b6f363          	bleu	a1,a3,1c00d6a8 <__udivdi3+0x30c>
1c00d6a6:	98f2                	add	a7,a7,t3
1c00d6a8:	0106d613          	srli	a2,a3,0x10
1c00d6ac:	98b2                	add	a7,a7,a2
1c00d6ae:	03176063          	bltu	a4,a7,1c00d6ce <__udivdi3+0x332>
1c00d6b2:	db1713e3          	bne	a4,a7,1c00d458 <__udivdi3+0xbc>
1c00d6b6:	6741                	lui	a4,0x10
1c00d6b8:	177d                	addi	a4,a4,-1
1c00d6ba:	8ef9                	and	a3,a3,a4
1c00d6bc:	06c2                	slli	a3,a3,0x10
1c00d6be:	00e37333          	and	t1,t1,a4
1c00d6c2:	01051533          	sll	a0,a0,a6
1c00d6c6:	969a                	add	a3,a3,t1
1c00d6c8:	4801                	li	a6,0
1c00d6ca:	e2d57de3          	bleu	a3,a0,1c00d504 <__udivdi3+0x168>
1c00d6ce:	17fd                	addi	a5,a5,-1
1c00d6d0:	b361                	j	1c00d458 <__udivdi3+0xbc>
1c00d6d2:	4801                	li	a6,0
1c00d6d4:	4781                	li	a5,0
1c00d6d6:	b53d                	j	1c00d504 <__udivdi3+0x168>

1c00d6d8 <__umoddi3>:
1c00d6d8:	88b2                	mv	a7,a2
1c00d6da:	8736                	mv	a4,a3
1c00d6dc:	87aa                	mv	a5,a0
1c00d6de:	882e                	mv	a6,a1
1c00d6e0:	1a069963          	bnez	a3,1c00d892 <__umoddi3+0x1ba>
1c00d6e4:	1c0016b7          	lui	a3,0x1c001
1c00d6e8:	86868693          	addi	a3,a3,-1944 # 1c000868 <__DTOR_END__>
1c00d6ec:	0ac5f463          	bleu	a2,a1,1c00d794 <__umoddi3+0xbc>
1c00d6f0:	6341                	lui	t1,0x10
1c00d6f2:	08667a63          	bleu	t1,a2,1c00d786 <__umoddi3+0xae>
1c00d6f6:	0ff00313          	li	t1,255
1c00d6fa:	00c37363          	bleu	a2,t1,1c00d700 <__umoddi3+0x28>
1c00d6fe:	4721                	li	a4,8
1c00d700:	00e65333          	srl	t1,a2,a4
1c00d704:	969a                	add	a3,a3,t1
1c00d706:	0006c683          	lbu	a3,0(a3)
1c00d70a:	02000313          	li	t1,32
1c00d70e:	9736                	add	a4,a4,a3
1c00d710:	40e30333          	sub	t1,t1,a4
1c00d714:	00030c63          	beqz	t1,1c00d72c <__umoddi3+0x54>
1c00d718:	006595b3          	sll	a1,a1,t1
1c00d71c:	00e55733          	srl	a4,a0,a4
1c00d720:	006618b3          	sll	a7,a2,t1
1c00d724:	00b76833          	or	a6,a4,a1
1c00d728:	006517b3          	sll	a5,a0,t1
1c00d72c:	0108d613          	srli	a2,a7,0x10
1c00d730:	02c87733          	remu	a4,a6,a2
1c00d734:	02c85833          	divu	a6,a6,a2
1c00d738:	1008d533          	p.exthz	a0,a7
1c00d73c:	0742                	slli	a4,a4,0x10
1c00d73e:	0107d693          	srli	a3,a5,0x10
1c00d742:	03050833          	mul	a6,a0,a6
1c00d746:	8ed9                	or	a3,a3,a4
1c00d748:	0106f863          	bleu	a6,a3,1c00d758 <__umoddi3+0x80>
1c00d74c:	96c6                	add	a3,a3,a7
1c00d74e:	0116e563          	bltu	a3,a7,1c00d758 <__umoddi3+0x80>
1c00d752:	0106f363          	bleu	a6,a3,1c00d758 <__umoddi3+0x80>
1c00d756:	96c6                	add	a3,a3,a7
1c00d758:	410686b3          	sub	a3,a3,a6
1c00d75c:	02c6f733          	remu	a4,a3,a2
1c00d760:	02c6d6b3          	divu	a3,a3,a2
1c00d764:	df0727b3          	p.insert	a5,a4,15,16
1c00d768:	02d506b3          	mul	a3,a0,a3
1c00d76c:	00d7f863          	bleu	a3,a5,1c00d77c <__umoddi3+0xa4>
1c00d770:	97c6                	add	a5,a5,a7
1c00d772:	0117e563          	bltu	a5,a7,1c00d77c <__umoddi3+0xa4>
1c00d776:	00d7f363          	bleu	a3,a5,1c00d77c <__umoddi3+0xa4>
1c00d77a:	97c6                	add	a5,a5,a7
1c00d77c:	8f95                	sub	a5,a5,a3
1c00d77e:	0067d533          	srl	a0,a5,t1
1c00d782:	4581                	li	a1,0
1c00d784:	8082                	ret
1c00d786:	01000337          	lui	t1,0x1000
1c00d78a:	4741                	li	a4,16
1c00d78c:	f6666ae3          	bltu	a2,t1,1c00d700 <__umoddi3+0x28>
1c00d790:	4761                	li	a4,24
1c00d792:	b7bd                	j	1c00d700 <__umoddi3+0x28>
1c00d794:	e601                	bnez	a2,1c00d79c <__umoddi3+0xc4>
1c00d796:	4605                	li	a2,1
1c00d798:	031658b3          	divu	a7,a2,a7
1c00d79c:	6641                	lui	a2,0x10
1c00d79e:	06c8ff63          	bleu	a2,a7,1c00d81c <__umoddi3+0x144>
1c00d7a2:	0ff00613          	li	a2,255
1c00d7a6:	01167363          	bleu	a7,a2,1c00d7ac <__umoddi3+0xd4>
1c00d7aa:	4721                	li	a4,8
1c00d7ac:	00e8d633          	srl	a2,a7,a4
1c00d7b0:	96b2                	add	a3,a3,a2
1c00d7b2:	0006c603          	lbu	a2,0(a3)
1c00d7b6:	02000313          	li	t1,32
1c00d7ba:	963a                	add	a2,a2,a4
1c00d7bc:	40c30333          	sub	t1,t1,a2
1c00d7c0:	06031563          	bnez	t1,1c00d82a <__umoddi3+0x152>
1c00d7c4:	411585b3          	sub	a1,a1,a7
1c00d7c8:	0108d713          	srli	a4,a7,0x10
1c00d7cc:	02e5f6b3          	remu	a3,a1,a4
1c00d7d0:	02e5d5b3          	divu	a1,a1,a4
1c00d7d4:	1008d533          	p.exthz	a0,a7
1c00d7d8:	06c2                	slli	a3,a3,0x10
1c00d7da:	0107d613          	srli	a2,a5,0x10
1c00d7de:	02b505b3          	mul	a1,a0,a1
1c00d7e2:	8ed1                	or	a3,a3,a2
1c00d7e4:	00b6f863          	bleu	a1,a3,1c00d7f4 <__umoddi3+0x11c>
1c00d7e8:	96c6                	add	a3,a3,a7
1c00d7ea:	0116e563          	bltu	a3,a7,1c00d7f4 <__umoddi3+0x11c>
1c00d7ee:	00b6f363          	bleu	a1,a3,1c00d7f4 <__umoddi3+0x11c>
1c00d7f2:	96c6                	add	a3,a3,a7
1c00d7f4:	40b685b3          	sub	a1,a3,a1
1c00d7f8:	02e5f6b3          	remu	a3,a1,a4
1c00d7fc:	02e5d5b3          	divu	a1,a1,a4
1c00d800:	df06a7b3          	p.insert	a5,a3,15,16
1c00d804:	02b505b3          	mul	a1,a0,a1
1c00d808:	00b7f863          	bleu	a1,a5,1c00d818 <__umoddi3+0x140>
1c00d80c:	97c6                	add	a5,a5,a7
1c00d80e:	0117e563          	bltu	a5,a7,1c00d818 <__umoddi3+0x140>
1c00d812:	00b7f363          	bleu	a1,a5,1c00d818 <__umoddi3+0x140>
1c00d816:	97c6                	add	a5,a5,a7
1c00d818:	8f8d                	sub	a5,a5,a1
1c00d81a:	b795                	j	1c00d77e <__umoddi3+0xa6>
1c00d81c:	01000637          	lui	a2,0x1000
1c00d820:	4741                	li	a4,16
1c00d822:	f8c8e5e3          	bltu	a7,a2,1c00d7ac <__umoddi3+0xd4>
1c00d826:	4761                	li	a4,24
1c00d828:	b751                	j	1c00d7ac <__umoddi3+0xd4>
1c00d82a:	006898b3          	sll	a7,a7,t1
1c00d82e:	00c5d733          	srl	a4,a1,a2
1c00d832:	006517b3          	sll	a5,a0,t1
1c00d836:	00c55633          	srl	a2,a0,a2
1c00d83a:	006595b3          	sll	a1,a1,t1
1c00d83e:	0108d513          	srli	a0,a7,0x10
1c00d842:	8dd1                	or	a1,a1,a2
1c00d844:	02a77633          	remu	a2,a4,a0
1c00d848:	02a75733          	divu	a4,a4,a0
1c00d84c:	1008d833          	p.exthz	a6,a7
1c00d850:	0642                	slli	a2,a2,0x10
1c00d852:	0105d693          	srli	a3,a1,0x10
1c00d856:	02e80733          	mul	a4,a6,a4
1c00d85a:	8ed1                	or	a3,a3,a2
1c00d85c:	00e6f863          	bleu	a4,a3,1c00d86c <__umoddi3+0x194>
1c00d860:	96c6                	add	a3,a3,a7
1c00d862:	0116e563          	bltu	a3,a7,1c00d86c <__umoddi3+0x194>
1c00d866:	00e6f363          	bleu	a4,a3,1c00d86c <__umoddi3+0x194>
1c00d86a:	96c6                	add	a3,a3,a7
1c00d86c:	8e99                	sub	a3,a3,a4
1c00d86e:	02a6f733          	remu	a4,a3,a0
1c00d872:	02a6d6b3          	divu	a3,a3,a0
1c00d876:	df0725b3          	p.insert	a1,a4,15,16
1c00d87a:	02d806b3          	mul	a3,a6,a3
1c00d87e:	00d5f863          	bleu	a3,a1,1c00d88e <__umoddi3+0x1b6>
1c00d882:	95c6                	add	a1,a1,a7
1c00d884:	0115e563          	bltu	a1,a7,1c00d88e <__umoddi3+0x1b6>
1c00d888:	00d5f363          	bleu	a3,a1,1c00d88e <__umoddi3+0x1b6>
1c00d88c:	95c6                	add	a1,a1,a7
1c00d88e:	8d95                	sub	a1,a1,a3
1c00d890:	bf25                	j	1c00d7c8 <__umoddi3+0xf0>
1c00d892:	eed5e9e3          	bltu	a1,a3,1c00d784 <__umoddi3+0xac>
1c00d896:	6741                	lui	a4,0x10
1c00d898:	04e6f563          	bleu	a4,a3,1c00d8e2 <__umoddi3+0x20a>
1c00d89c:	0ff00e93          	li	t4,255
1c00d8a0:	00deb733          	sltu	a4,t4,a3
1c00d8a4:	070e                	slli	a4,a4,0x3
1c00d8a6:	1c001337          	lui	t1,0x1c001
1c00d8aa:	00e6d8b3          	srl	a7,a3,a4
1c00d8ae:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c00d8b2:	989a                	add	a7,a7,t1
1c00d8b4:	0008ce83          	lbu	t4,0(a7)
1c00d8b8:	02000e13          	li	t3,32
1c00d8bc:	9eba                	add	t4,t4,a4
1c00d8be:	41de0e33          	sub	t3,t3,t4
1c00d8c2:	020e1763          	bnez	t3,1c00d8f0 <__umoddi3+0x218>
1c00d8c6:	00b6e463          	bltu	a3,a1,1c00d8ce <__umoddi3+0x1f6>
1c00d8ca:	00c56963          	bltu	a0,a2,1c00d8dc <__umoddi3+0x204>
1c00d8ce:	40c507b3          	sub	a5,a0,a2
1c00d8d2:	8d95                	sub	a1,a1,a3
1c00d8d4:	00f53533          	sltu	a0,a0,a5
1c00d8d8:	40a58833          	sub	a6,a1,a0
1c00d8dc:	853e                	mv	a0,a5
1c00d8de:	85c2                	mv	a1,a6
1c00d8e0:	b555                	j	1c00d784 <__umoddi3+0xac>
1c00d8e2:	010008b7          	lui	a7,0x1000
1c00d8e6:	4741                	li	a4,16
1c00d8e8:	fb16efe3          	bltu	a3,a7,1c00d8a6 <__umoddi3+0x1ce>
1c00d8ec:	4761                	li	a4,24
1c00d8ee:	bf65                	j	1c00d8a6 <__umoddi3+0x1ce>
1c00d8f0:	01d65733          	srl	a4,a2,t4
1c00d8f4:	01c696b3          	sll	a3,a3,t3
1c00d8f8:	8ed9                	or	a3,a3,a4
1c00d8fa:	01d5d7b3          	srl	a5,a1,t4
1c00d8fe:	0106d813          	srli	a6,a3,0x10
1c00d902:	0307f333          	remu	t1,a5,a6
1c00d906:	01d558b3          	srl	a7,a0,t4
1c00d90a:	0307d7b3          	divu	a5,a5,a6
1c00d90e:	01c595b3          	sll	a1,a1,t3
1c00d912:	00b8e5b3          	or	a1,a7,a1
1c00d916:	0342                	slli	t1,t1,0x10
1c00d918:	1006d733          	p.exthz	a4,a3
1c00d91c:	0105d893          	srli	a7,a1,0x10
1c00d920:	011368b3          	or	a7,t1,a7
1c00d924:	02f70f33          	mul	t5,a4,a5
1c00d928:	01c61633          	sll	a2,a2,t3
1c00d92c:	01c51533          	sll	a0,a0,t3
1c00d930:	833e                	mv	t1,a5
1c00d932:	01e8fc63          	bleu	t5,a7,1c00d94a <__umoddi3+0x272>
1c00d936:	98b6                	add	a7,a7,a3
1c00d938:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff001b>
1c00d93c:	00d8e763          	bltu	a7,a3,1c00d94a <__umoddi3+0x272>
1c00d940:	01e8f563          	bleu	t5,a7,1c00d94a <__umoddi3+0x272>
1c00d944:	ffe78313          	addi	t1,a5,-2
1c00d948:	98b6                	add	a7,a7,a3
1c00d94a:	41e888b3          	sub	a7,a7,t5
1c00d94e:	0308f7b3          	remu	a5,a7,a6
1c00d952:	0308d8b3          	divu	a7,a7,a6
1c00d956:	df07a5b3          	p.insert	a1,a5,15,16
1c00d95a:	03170733          	mul	a4,a4,a7
1c00d95e:	87c6                	mv	a5,a7
1c00d960:	00e5fc63          	bleu	a4,a1,1c00d978 <__umoddi3+0x2a0>
1c00d964:	95b6                	add	a1,a1,a3
1c00d966:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff001b>
1c00d96a:	00d5e763          	bltu	a1,a3,1c00d978 <__umoddi3+0x2a0>
1c00d96e:	00e5f563          	bleu	a4,a1,1c00d978 <__umoddi3+0x2a0>
1c00d972:	ffe88793          	addi	a5,a7,-2
1c00d976:	95b6                	add	a1,a1,a3
1c00d978:	0342                	slli	t1,t1,0x10
1c00d97a:	6f41                	lui	t5,0x10
1c00d97c:	00f36333          	or	t1,t1,a5
1c00d980:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x1b>
1c00d984:	00f37833          	and	a6,t1,a5
1c00d988:	01035313          	srli	t1,t1,0x10
1c00d98c:	8ff1                	and	a5,a5,a2
1c00d98e:	02f808b3          	mul	a7,a6,a5
1c00d992:	02f307b3          	mul	a5,t1,a5
1c00d996:	8d99                	sub	a1,a1,a4
1c00d998:	8fbe                	mv	t6,a5
1c00d99a:	01065713          	srli	a4,a2,0x10
1c00d99e:	42e80fb3          	p.mac	t6,a6,a4
1c00d9a2:	0108d813          	srli	a6,a7,0x10
1c00d9a6:	987e                	add	a6,a6,t6
1c00d9a8:	02e30333          	mul	t1,t1,a4
1c00d9ac:	00f87363          	bleu	a5,a6,1c00d9b2 <__umoddi3+0x2da>
1c00d9b0:	937a                	add	t1,t1,t5
1c00d9b2:	01085713          	srli	a4,a6,0x10
1c00d9b6:	933a                	add	t1,t1,a4
1c00d9b8:	6741                	lui	a4,0x10
1c00d9ba:	177d                	addi	a4,a4,-1
1c00d9bc:	00e87833          	and	a6,a6,a4
1c00d9c0:	0842                	slli	a6,a6,0x10
1c00d9c2:	00e8f733          	and	a4,a7,a4
1c00d9c6:	9742                	add	a4,a4,a6
1c00d9c8:	0065e663          	bltu	a1,t1,1c00d9d4 <__umoddi3+0x2fc>
1c00d9cc:	00659d63          	bne	a1,t1,1c00d9e6 <__umoddi3+0x30e>
1c00d9d0:	00e57b63          	bleu	a4,a0,1c00d9e6 <__umoddi3+0x30e>
1c00d9d4:	40c70633          	sub	a2,a4,a2
1c00d9d8:	00c73733          	sltu	a4,a4,a2
1c00d9dc:	40d30333          	sub	t1,t1,a3
1c00d9e0:	40e30333          	sub	t1,t1,a4
1c00d9e4:	8732                	mv	a4,a2
1c00d9e6:	40e50733          	sub	a4,a0,a4
1c00d9ea:	00e53533          	sltu	a0,a0,a4
1c00d9ee:	406585b3          	sub	a1,a1,t1
1c00d9f2:	8d89                	sub	a1,a1,a0
1c00d9f4:	01d597b3          	sll	a5,a1,t4
1c00d9f8:	01c75733          	srl	a4,a4,t3
1c00d9fc:	00e7e533          	or	a0,a5,a4
1c00da00:	01c5d5b3          	srl	a1,a1,t3
1c00da04:	b341                	j	1c00d784 <__umoddi3+0xac>

1c00da06 <__extendsfdf2>:
1c00da06:	002027f3          	csrr	a5,0x2
1c00da0a:	cf751633          	p.extractu	a2,a0,7,23
1c00da0e:	00160713          	addi	a4,a2,1 # 1000001 <__l1_heap_size+0xff001d>
1c00da12:	ee873733          	p.bclr	a4,a4,23,8
1c00da16:	4685                	li	a3,1
1c00da18:	ec0517b3          	p.extractu	a5,a0,22,0
1c00da1c:	817d                	srli	a0,a0,0x1f
1c00da1e:	00e6d963          	ble	a4,a3,1c00da30 <__extendsfdf2+0x2a>
1c00da22:	0037d713          	srli	a4,a5,0x3
1c00da26:	38060613          	addi	a2,a2,896
1c00da2a:	07f6                	slli	a5,a5,0x1d
1c00da2c:	4681                	li	a3,0
1c00da2e:	a899                	j	1c00da84 <__extendsfdf2+0x7e>
1c00da30:	ee05                	bnez	a2,1c00da68 <__extendsfdf2+0x62>
1c00da32:	c7ad                	beqz	a5,1c00da9c <__extendsfdf2+0x96>
1c00da34:	477d                	li	a4,31
1c00da36:	100796b3          	p.fl1	a3,a5
1c00da3a:	40d706b3          	sub	a3,a4,a3
1c00da3e:	4729                	li	a4,10
1c00da40:	00d74e63          	blt	a4,a3,1c00da5c <__extendsfdf2+0x56>
1c00da44:	472d                	li	a4,11
1c00da46:	8f15                	sub	a4,a4,a3
1c00da48:	01568613          	addi	a2,a3,21
1c00da4c:	00e7d733          	srl	a4,a5,a4
1c00da50:	00c797b3          	sll	a5,a5,a2
1c00da54:	38900613          	li	a2,905
1c00da58:	8e15                	sub	a2,a2,a3
1c00da5a:	bfc9                	j	1c00da2c <__extendsfdf2+0x26>
1c00da5c:	ff568713          	addi	a4,a3,-11
1c00da60:	00e79733          	sll	a4,a5,a4
1c00da64:	4781                	li	a5,0
1c00da66:	b7fd                	j	1c00da54 <__extendsfdf2+0x4e>
1c00da68:	cf8d                	beqz	a5,1c00daa2 <__extendsfdf2+0x9c>
1c00da6a:	004006b7          	lui	a3,0x400
1c00da6e:	8efd                	and	a3,a3,a5
1c00da70:	0037d713          	srli	a4,a5,0x3
1c00da74:	0016b693          	seqz	a3,a3
1c00da78:	0692                	slli	a3,a3,0x4
1c00da7a:	c1374733          	p.bset	a4,a4,0,19
1c00da7e:	07f6                	slli	a5,a5,0x1d
1c00da80:	7ff00613          	li	a2,2047
1c00da84:	4581                	li	a1,0
1c00da86:	e60725b3          	p.insert	a1,a4,19,0
1c00da8a:	d54625b3          	p.insert	a1,a2,10,20
1c00da8e:	c1f525b3          	p.insert	a1,a0,0,31
1c00da92:	853e                	mv	a0,a5
1c00da94:	c299                	beqz	a3,1c00da9a <__extendsfdf2+0x94>
1c00da96:	0016a073          	csrs	0x1,a3
1c00da9a:	8082                	ret
1c00da9c:	4701                	li	a4,0
1c00da9e:	4601                	li	a2,0
1c00daa0:	b771                	j	1c00da2c <__extendsfdf2+0x26>
1c00daa2:	4701                	li	a4,0
1c00daa4:	7ff00613          	li	a2,2047
1c00daa8:	b751                	j	1c00da2c <__extendsfdf2+0x26>

1c00daaa <cpu_perf_get>:
1c00daaa:	14f52563          	p.beqimm	a0,15,1c00dbf4 <cpu_perf_get+0x14a>
1c00daae:	47bd                	li	a5,15
1c00dab0:	02a7e463          	bltu	a5,a0,1c00dad8 <cpu_perf_get+0x2e>
1c00dab4:	14752363          	p.beqimm	a0,7,1c00dbfa <cpu_perf_get+0x150>
1c00dab8:	479d                	li	a5,7
1c00daba:	04a7e163          	bltu	a5,a0,1c00dafc <cpu_perf_get+0x52>
1c00dabe:	0e352763          	p.beqimm	a0,3,1c00dbac <cpu_perf_get+0x102>
1c00dac2:	478d                	li	a5,3
1c00dac4:	06a7ee63          	bltu	a5,a0,1c00db40 <cpu_perf_get+0x96>
1c00dac8:	10152a63          	p.beqimm	a0,1,1c00dbdc <cpu_perf_get+0x132>
1c00dacc:	4785                	li	a5,1
1c00dace:	0aa7ea63          	bltu	a5,a0,1c00db82 <cpu_perf_get+0xd8>
1c00dad2:	78002573          	csrr	a0,pccr0
1c00dad6:	8082                	ret
1c00dad8:	47dd                	li	a5,23
1c00dada:	10f50463          	beq	a0,a5,1c00dbe2 <cpu_perf_get+0x138>
1c00dade:	02a7ec63          	bltu	a5,a0,1c00db16 <cpu_perf_get+0x6c>
1c00dae2:	47cd                	li	a5,19
1c00dae4:	0af50863          	beq	a0,a5,1c00db94 <cpu_perf_get+0xea>
1c00dae8:	06a7ef63          	bltu	a5,a0,1c00db66 <cpu_perf_get+0xbc>
1c00daec:	47c5                	li	a5,17
1c00daee:	0ef50163          	beq	a0,a5,1c00dbd0 <cpu_perf_get+0x126>
1c00daf2:	0ca7e063          	bltu	a5,a0,1c00dbb2 <cpu_perf_get+0x108>
1c00daf6:	79002573          	csrr	a0,pccr16
1c00dafa:	8082                	ret
1c00dafc:	08b52f63          	p.beqimm	a0,11,1c00db9a <cpu_perf_get+0xf0>
1c00db00:	47ad                	li	a5,11
1c00db02:	02a7e763          	bltu	a5,a0,1c00db30 <cpu_perf_get+0x86>
1c00db06:	0e952463          	p.beqimm	a0,9,1c00dbee <cpu_perf_get+0x144>
1c00db0a:	47a5                	li	a5,9
1c00db0c:	06a7e863          	bltu	a5,a0,1c00db7c <cpu_perf_get+0xd2>
1c00db10:	78802573          	csrr	a0,pccr8
1c00db14:	8082                	ret
1c00db16:	47ed                	li	a5,27
1c00db18:	08f50763          	beq	a0,a5,1c00dba6 <cpu_perf_get+0xfc>
1c00db1c:	02a7ea63          	bltu	a5,a0,1c00db50 <cpu_perf_get+0xa6>
1c00db20:	47e5                	li	a5,25
1c00db22:	0af50463          	beq	a0,a5,1c00dbca <cpu_perf_get+0x120>
1c00db26:	06a7e463          	bltu	a5,a0,1c00db8e <cpu_perf_get+0xe4>
1c00db2a:	79802573          	csrr	a0,pccr24
1c00db2e:	8082                	ret
1c00db30:	0ad52c63          	p.beqimm	a0,13,1c00dbe8 <cpu_perf_get+0x13e>
1c00db34:	47b5                	li	a5,13
1c00db36:	04a7e063          	bltu	a5,a0,1c00db76 <cpu_perf_get+0xcc>
1c00db3a:	78c02573          	csrr	a0,pccr12
1c00db3e:	8082                	ret
1c00db40:	06552f63          	p.beqimm	a0,5,1c00dbbe <cpu_perf_get+0x114>
1c00db44:	4795                	li	a5,5
1c00db46:	04a7e163          	bltu	a5,a0,1c00db88 <cpu_perf_get+0xde>
1c00db4a:	78402573          	csrr	a0,pccr4
1c00db4e:	8082                	ret
1c00db50:	47f5                	li	a5,29
1c00db52:	06f50963          	beq	a0,a5,1c00dbc4 <cpu_perf_get+0x11a>
1c00db56:	04f56563          	bltu	a0,a5,1c00dba0 <cpu_perf_get+0xf6>
1c00db5a:	47f9                	li	a5,30
1c00db5c:	0af51263          	bne	a0,a5,1c00dc00 <cpu_perf_get+0x156>
1c00db60:	79e02573          	csrr	a0,pccr30
1c00db64:	8082                	ret
1c00db66:	47d5                	li	a5,21
1c00db68:	06f50763          	beq	a0,a5,1c00dbd6 <cpu_perf_get+0x12c>
1c00db6c:	04a7e663          	bltu	a5,a0,1c00dbb8 <cpu_perf_get+0x10e>
1c00db70:	79402573          	csrr	a0,pccr20
1c00db74:	8082                	ret
1c00db76:	78e02573          	csrr	a0,pccr14
1c00db7a:	8082                	ret
1c00db7c:	78a02573          	csrr	a0,pccr10
1c00db80:	8082                	ret
1c00db82:	78202573          	csrr	a0,pccr2
1c00db86:	8082                	ret
1c00db88:	78602573          	csrr	a0,pccr6
1c00db8c:	8082                	ret
1c00db8e:	79a02573          	csrr	a0,pccr26
1c00db92:	8082                	ret
1c00db94:	79302573          	csrr	a0,pccr19
1c00db98:	8082                	ret
1c00db9a:	78b02573          	csrr	a0,pccr11
1c00db9e:	8082                	ret
1c00dba0:	79c02573          	csrr	a0,pccr28
1c00dba4:	8082                	ret
1c00dba6:	79b02573          	csrr	a0,pccr27
1c00dbaa:	8082                	ret
1c00dbac:	78302573          	csrr	a0,pccr3
1c00dbb0:	8082                	ret
1c00dbb2:	79202573          	csrr	a0,pccr18
1c00dbb6:	8082                	ret
1c00dbb8:	79602573          	csrr	a0,pccr22
1c00dbbc:	8082                	ret
1c00dbbe:	78502573          	csrr	a0,pccr5
1c00dbc2:	8082                	ret
1c00dbc4:	79d02573          	csrr	a0,pccr29
1c00dbc8:	8082                	ret
1c00dbca:	79902573          	csrr	a0,pccr25
1c00dbce:	8082                	ret
1c00dbd0:	79102573          	csrr	a0,pccr17
1c00dbd4:	8082                	ret
1c00dbd6:	79502573          	csrr	a0,pccr21
1c00dbda:	8082                	ret
1c00dbdc:	78102573          	csrr	a0,pccr1
1c00dbe0:	8082                	ret
1c00dbe2:	79702573          	csrr	a0,pccr23
1c00dbe6:	8082                	ret
1c00dbe8:	78d02573          	csrr	a0,pccr13
1c00dbec:	8082                	ret
1c00dbee:	78902573          	csrr	a0,pccr9
1c00dbf2:	8082                	ret
1c00dbf4:	78f02573          	csrr	a0,pccr15
1c00dbf8:	8082                	ret
1c00dbfa:	78702573          	csrr	a0,pccr7
1c00dbfe:	8082                	ret
1c00dc00:	4501                	li	a0,0
1c00dc02:	8082                	ret

1c00dc04 <task_matMultTransposed>:
1c00dc04:	6291                	lui	t0,0x4   # load upper immediate (upper 20 bits)
1c00dc06:	8e09                	sub	a2,a2,a0 # a = arguments
1c00dc08:	08028293          	addi	t0,t0,128 # 4080 <pos_soc_event_callback+0x3c38>
1c00dc0c:	8f2a                	mv	t5,a0
1c00dc0e:	08050f93          	addi	t6,a0,128
1c00dc12:	92aa                	add	t0,t0,a0
1c00dc14:	f8060393          	addi	t2,a2,-128
1c00dc18:	8eae                	mv	t4,a1
1c00dc1a:	01f38333          	add	t1,t2,t6
1c00dc1e:	40760e33          	sub	t3,a2,t2
1c00dc22:	015e407b          	lp.setup	x0,t3,1c00dc4c <task_matMultTransposed+0x48>  # hardware loop setup
1c00dc26:	000300ab          	p.sb	zero,1(t1!)  # register store with post increment (mem8(t1)=0, rs += 1)
1c00dc2a:	8576                	mv	a0,t4
1c00dc2c:	86fa                	mv	a3,t5
1c00dc2e:	4781                	li	a5,0
1c00dc30:	41ef8733          	sub	a4,t6,t5
1c00dc34:	00a740fb          	lp.setup	x1,a4,1c00dc48 <task_matMultTransposed+0x44>
1c00dc38:	0016c88b          	p.lbu	a7,1(a3!) # 400001 <__l1_heap_size+0x3f001d> # a7 = sext(mem8(a3)) ; a7 += 1
1c00dc3c:	0015480b          	p.lbu	a6,1(a0!) # LBU LOAD JUST ONE BYTE ! # a6 = sext(mem8(a0)) ; a6 += 1
1c00dc40:	430887b3          	p.mac	a5,a7,a6 # a5 = a5 + a7 * a6
1c00dc44:	0ff7f793          	andi	a5,a5,255
1c00dc48:	fef30fa3          	sb	a5,-1(t1)
1c00dc4c:	080e8e93          	addi	t4,t4,128
1c00dc50:	08068f93          	addi	t6,a3,128
1c00dc54:	080f0f13          	addi	t5,t5,128
1c00dc58:	fc5f90e3          	bne	t6,t0,1c00dc18 <task_matMultTransposed+0x14>
1c00dc5c:	8082                	ret

1c00dc5e <main>:
1c00dc5e:	1141                	addi	sp,sp,-16
1c00dc60:	1c001537          	lui	a0,0x1c001
1c00dc64:	1c0055b7          	lui	a1,0x1c005
1c00dc68:	c606                	sw	ra,12(sp)
1c00dc6a:	c422                	sw	s0,8(sp)
1c00dc6c:	c226                	sw	s1,4(sp)
1c00dc6e:	4801                	li	a6,0
1c00dc70:	24050e13          	addi	t3,a0,576 # 1c001240 <_edata>
1c00dc74:	24058313          	addi	t1,a1,576 # 1c005240 <B>
1c00dc78:	0808d07b          	lp.setupi	x0,128,1c00dc9a <main+0x3c>
1c00dc7c:	0ff87793          	andi	a5,a6,255
1c00dc80:	010e0633          	add	a2,t3,a6
1c00dc84:	010306b3          	add	a3,t1,a6
1c00dc88:	0803d0fb          	lp.setupi	x1,128,1c00dc96 <main+0x38>
1c00dc8c:	00f600ab          	p.sb	a5,1(a2!)
1c00dc90:	00f680ab          	p.sb	a5,1(a3!)
1c00dc94:	0785                	addi	a5,a5,1
1c00dc96:	0ff7f793          	andi	a5,a5,255
1c00dc9a:	08080813          	addi	a6,a6,128
1c00dc9e:	000207b7          	lui	a5,0x20
1c00dca2:	0789                	addi	a5,a5,2
1c00dca4:	cc079073          	csrw	0xcc0,a5
1c00dca8:	f1402473          	csrr	s0,mhartid
1c00dcac:	47fd                	li	a5,31
1c00dcae:	ca541733          	p.extractu	a4,s0,5,5
1c00dcb2:	0af70663          	beq	a4,a5,1c00dd5e <main+0x100>
1c00dcb6:	102007b7          	lui	a5,0x10200
1c00dcba:	4705                	li	a4,1
1c00dcbc:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dcc0:	02e7a023          	sw	a4,32(a5)
1c00dcc4:	4781                	li	a5,0
1c00dcc6:	79f79073          	csrw	pccr31,a5
1c00dcca:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dcce:	477d                	li	a4,31
1c00dcd0:	0ae78d63          	beq	a5,a4,1c00dd8a <main+0x12c>
1c00dcd4:	102007b7          	lui	a5,0x10200
1c00dcd8:	4705                	li	a4,1
1c00dcda:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dcde:	00e7ac23          	sw	a4,24(a5)
1c00dce2:	478d                	li	a5,3
1c00dce4:	cc179073          	csrw	0xcc1,a5
1c00dce8:	1c009637          	lui	a2,0x1c009
1c00dcec:	24060613          	addi	a2,a2,576 # 1c009240 <tempC>
1c00dcf0:	24058593          	addi	a1,a1,576
1c00dcf4:	24050513          	addi	a0,a0,576
1c00dcf8:	3731                	jal	1c00dc04 <task_matMultTransposed>
1c00dcfa:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dcfe:	477d                	li	a4,31
1c00dd00:	06e78d63          	beq	a5,a4,1c00dd7a <main+0x11c>
1c00dd04:	102007b7          	lui	a5,0x10200
1c00dd08:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd0c:	0007a023          	sw	zero,0(a5)
1c00dd10:	4781                	li	a5,0
1c00dd12:	cc179073          	csrw	0xcc1,a5
1c00dd16:	4505                	li	a0,1
1c00dd18:	3b49                	jal	1c00daaa <cpu_perf_get>
1c00dd1a:	ca541433          	p.extractu	s0,s0,5,5
1c00dd1e:	47fd                	li	a5,31
1c00dd20:	84aa                	mv	s1,a0
1c00dd22:	04f40763          	beq	s0,a5,1c00dd70 <main+0x112>
1c00dd26:	10200637          	lui	a2,0x10200
1c00dd2a:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd2e:	00862403          	lw	s0,8(a2)
1c00dd32:	d014f7d3          	fcvt.s.wu	a5,s1
1c00dd36:	d0147553          	fcvt.s.wu	a0,s0
1c00dd3a:	18f57553          	fdiv.s	a0,a0,a5
1c00dd3e:	31e1                	jal	1c00da06 <__extendsfdf2>
1c00dd40:	872a                	mv	a4,a0
1c00dd42:	1c001537          	lui	a0,0x1c001
1c00dd46:	87ae                	mv	a5,a1
1c00dd48:	8622                	mv	a2,s0
1c00dd4a:	85a6                	mv	a1,s1
1c00dd4c:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c00dd50:	22f5                	jal	1c00df3c <printf>
1c00dd52:	40b2                	lw	ra,12(sp)
1c00dd54:	4422                	lw	s0,8(sp)
1c00dd56:	4492                	lw	s1,4(sp)
1c00dd58:	4501                	li	a0,0
1c00dd5a:	0141                	addi	sp,sp,16
1c00dd5c:	8082                	ret
1c00dd5e:	4785                	li	a5,1
1c00dd60:	1a10b737          	lui	a4,0x1a10b
1c00dd64:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c00dd68:	4781                	li	a5,0
1c00dd6a:	79f79073          	csrw	pccr31,a5
1c00dd6e:	bfb1                	j	1c00dcca <main+0x6c>
1c00dd70:	1a10b637          	lui	a2,0x1a10b
1c00dd74:	00862403          	lw	s0,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00dd78:	bf6d                	j	1c00dd32 <main+0xd4>
1c00dd7a:	1a10b7b7          	lui	a5,0x1a10b
1c00dd7e:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00dd82:	4781                	li	a5,0
1c00dd84:	cc179073          	csrw	0xcc1,a5
1c00dd88:	b779                	j	1c00dd16 <main+0xb8>
1c00dd8a:	4785                	li	a5,1
1c00dd8c:	1a10b737          	lui	a4,0x1a10b
1c00dd90:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c00dd94:	478d                	li	a5,3
1c00dd96:	cc179073          	csrw	0xcc1,a5
1c00dd9a:	b7b9                	j	1c00dce8 <main+0x8a>

1c00dd9c <pos_fll_init>:
1c00dd9c:	00451593          	slli	a1,a0,0x4
1c00dda0:	832a                	mv	t1,a0
1c00dda2:	00458e13          	addi	t3,a1,4
1c00dda6:	1a100637          	lui	a2,0x1a100
1c00ddaa:	21c67703          	p.lw	a4,t3(a2)
1c00ddae:	86ba                	mv	a3,a4
1c00ddb0:	04074163          	bltz	a4,1c00ddf2 <pos_fll_init+0x56>
1c00ddb4:	00858793          	addi	a5,a1,8
1c00ddb8:	20f67883          	p.lw	a7,a5(a2)
1c00ddbc:	4519                	li	a0,6
1c00ddbe:	caa528b3          	p.insert	a7,a0,5,10
1c00ddc2:	05000513          	li	a0,80
1c00ddc6:	d70528b3          	p.insert	a7,a0,11,16
1c00ddca:	1a100837          	lui	a6,0x1a100
1c00ddce:	011867a3          	p.sw	a7,a5(a6)
1c00ddd2:	05b1                	addi	a1,a1,12
1c00ddd4:	20b67603          	p.lw	a2,a1(a2)
1c00ddd8:	14c00793          	li	a5,332
1c00dddc:	d307a633          	p.insert	a2,a5,9,16
1c00dde0:	00c865a3          	p.sw	a2,a1(a6)
1c00dde4:	4785                	li	a5,1
1c00dde6:	c1e7a6b3          	p.insert	a3,a5,0,30
1c00ddea:	c1f7a6b3          	p.insert	a3,a5,0,31
1c00ddee:	00d86e23          	p.sw	a3,t3(a6)
1c00ddf2:	00400793          	li	a5,4
1c00ddf6:	00231613          	slli	a2,t1,0x2
1c00ddfa:	963e                	add	a2,a2,a5
1c00ddfc:	4208                	lw	a0,0(a2)
1c00ddfe:	ed19                	bnez	a0,1c00de1c <pos_fll_init+0x80>
1c00de00:	10075733          	p.exthz	a4,a4
1c00de04:	c7a696b3          	p.extractu	a3,a3,3,26
1c00de08:	073e                	slli	a4,a4,0xf
1c00de0a:	16fd                	addi	a3,a3,-1
1c00de0c:	00d75533          	srl	a0,a4,a3
1c00de10:	c208                	sw	a0,0(a2)
1c00de12:	979a                	add	a5,a5,t1
1c00de14:	4705                	li	a4,1
1c00de16:	00e78623          	sb	a4,12(a5)
1c00de1a:	8082                	ret
1c00de1c:	46f5                	li	a3,29
1c00de1e:	10051733          	p.fl1	a4,a0
1c00de22:	4585                	li	a1,1
1c00de24:	82e6b75b          	p.subun	a4,a3,a4,1
1c00de28:	04e5e733          	p.max	a4,a1,a4
1c00de2c:	fff70693          	addi	a3,a4,-1
1c00de30:	00e51833          	sll	a6,a0,a4
1c00de34:	00d595b3          	sll	a1,a1,a3
1c00de38:	dc0838b3          	p.bclr	a7,a6,14,0
1c00de3c:	006786b3          	add	a3,a5,t1
1c00de40:	c0e8a5db          	p.addunr	a1,a7,a4
1c00de44:	00c6c683          	lbu	a3,12(a3)
1c00de48:	c20c                	sw	a1,0(a2)
1c00de4a:	d6e1                	beqz	a3,1c00de12 <pos_fll_init+0x76>
1c00de4c:	1a100637          	lui	a2,0x1a100
1c00de50:	21c67683          	p.lw	a3,t3(a2)
1c00de54:	00f85813          	srli	a6,a6,0xf
1c00de58:	de0826b3          	p.insert	a3,a6,15,0
1c00de5c:	0705                	addi	a4,a4,1
1c00de5e:	c7a726b3          	p.insert	a3,a4,3,26
1c00de62:	00d66e23          	p.sw	a3,t3(a2)
1c00de66:	979a                	add	a5,a5,t1
1c00de68:	4705                	li	a4,1
1c00de6a:	00e78623          	sb	a4,12(a5)
1c00de6e:	8082                	ret

1c00de70 <pos_fll_constructor>:
1c00de70:	00400793          	li	a5,4
1c00de74:	0007a023          	sw	zero,0(a5)
1c00de78:	0007a223          	sw	zero,4(a5)
1c00de7c:	0007a423          	sw	zero,8(a5)
1c00de80:	00079623          	sh	zero,12(a5)
1c00de84:	00078723          	sb	zero,14(a5)
1c00de88:	8082                	ret

1c00de8a <pos_soc_init>:
1c00de8a:	1141                	addi	sp,sp,-16
1c00de8c:	c606                	sw	ra,12(sp)
1c00de8e:	c422                	sw	s0,8(sp)
1c00de90:	37c5                	jal	1c00de70 <pos_fll_constructor>
1c00de92:	4501                	li	a0,0
1c00de94:	3721                	jal	1c00dd9c <pos_fll_init>
1c00de96:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c00de9a:	4505                	li	a0,1
1c00de9c:	3701                	jal	1c00dd9c <pos_fll_init>
1c00de9e:	01400413          	li	s0,20
1c00dea2:	c408                	sw	a0,8(s0)
1c00dea4:	4509                	li	a0,2
1c00dea6:	3ddd                	jal	1c00dd9c <pos_fll_init>
1c00dea8:	c048                	sw	a0,4(s0)
1c00deaa:	40b2                	lw	ra,12(sp)
1c00deac:	4422                	lw	s0,8(sp)
1c00deae:	0141                	addi	sp,sp,16
1c00deb0:	8082                	ret

1c00deb2 <strchr>:
1c00deb2:	00054783          	lbu	a5,0(a0)
1c00deb6:	0ff5f593          	andi	a1,a1,255
1c00deba:	00b78c63          	beq	a5,a1,1c00ded2 <strchr+0x20>
1c00debe:	cb99                	beqz	a5,1c00ded4 <strchr+0x22>
1c00dec0:	00150793          	addi	a5,a0,1
1c00dec4:	a011                	j	1c00dec8 <strchr+0x16>
1c00dec6:	c719                	beqz	a4,1c00ded4 <strchr+0x22>
1c00dec8:	853e                	mv	a0,a5
1c00deca:	0017c70b          	p.lbu	a4,1(a5!)
1c00dece:	feb71ce3          	bne	a4,a1,1c00dec6 <strchr+0x14>
1c00ded2:	8082                	ret
1c00ded4:	0015b593          	seqz	a1,a1
1c00ded8:	40b005b3          	neg	a1,a1
1c00dedc:	8d6d                	and	a0,a0,a1
1c00dede:	8082                	ret

1c00dee0 <pos_libc_fputc_locked>:
1c00dee0:	f14027f3          	csrr	a5,mhartid
1c00dee4:	1a10f6b7          	lui	a3,0x1a10f
1c00dee8:	ca5797b3          	p.extractu	a5,a5,5,5
1c00deec:	f1402773          	csrr	a4,mhartid
1c00def0:	079e                	slli	a5,a5,0x7
1c00def2:	070e                	slli	a4,a4,0x3
1c00def4:	0ff57513          	andi	a0,a0,255
1c00def8:	ee873733          	p.bclr	a4,a4,23,8
1c00defc:	97b6                	add	a5,a5,a3
1c00defe:	00a767a3          	p.sw	a0,a5(a4)
1c00df02:	4501                	li	a0,0
1c00df04:	8082                	ret

1c00df06 <pos_libc_prf_locked>:
1c00df06:	a095                	j	1c00df6a <pos_libc_prf>

1c00df08 <exit>:
1c00df08:	1141                	addi	sp,sp,-16
1c00df0a:	c422                	sw	s0,8(sp)
1c00df0c:	c606                	sw	ra,12(sp)
1c00df0e:	842a                	mv	s0,a0
1c00df10:	43d010ef          	jal	ra,1c00fb4c <pos_init_stop>
1c00df14:	c1f44533          	p.bset	a0,s0,0,31
1c00df18:	1a1047b7          	lui	a5,0x1a104
1c00df1c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c00df20:	1a10a7b7          	lui	a5,0x1a10a
1c00df24:	577d                	li	a4,-1
1c00df26:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00df2a:	10500073          	wfi
1c00df2e:	10500073          	wfi
1c00df32:	bfe5                	j	1c00df2a <exit+0x22>

1c00df34 <pos_io_start>:
1c00df34:	4501                	li	a0,0
1c00df36:	8082                	ret

1c00df38 <pos_io_stop>:
1c00df38:	4501                	li	a0,0
1c00df3a:	8082                	ret

1c00df3c <printf>:
1c00df3c:	7139                	addi	sp,sp,-64
1c00df3e:	02410313          	addi	t1,sp,36
1c00df42:	d432                	sw	a2,40(sp)
1c00df44:	862a                	mv	a2,a0
1c00df46:	1c00e537          	lui	a0,0x1c00e
1c00df4a:	d22e                	sw	a1,36(sp)
1c00df4c:	d636                	sw	a3,44(sp)
1c00df4e:	4589                	li	a1,2
1c00df50:	869a                	mv	a3,t1
1c00df52:	ee050513          	addi	a0,a0,-288 # 1c00dee0 <pos_libc_fputc_locked>
1c00df56:	ce06                	sw	ra,28(sp)
1c00df58:	d83a                	sw	a4,48(sp)
1c00df5a:	da3e                	sw	a5,52(sp)
1c00df5c:	dc42                	sw	a6,56(sp)
1c00df5e:	de46                	sw	a7,60(sp)
1c00df60:	c61a                	sw	t1,12(sp)
1c00df62:	3755                	jal	1c00df06 <pos_libc_prf_locked>
1c00df64:	40f2                	lw	ra,28(sp)
1c00df66:	6121                	addi	sp,sp,64
1c00df68:	8082                	ret

1c00df6a <pos_libc_prf>:
1c00df6a:	7119                	addi	sp,sp,-128
1c00df6c:	dca2                	sw	s0,120(sp)
1c00df6e:	1058                	addi	a4,sp,36
1c00df70:	4401                	li	s0,0
1c00df72:	d6ce                	sw	s3,108(sp)
1c00df74:	d4d2                	sw	s4,104(sp)
1c00df76:	d2d6                	sw	s5,100(sp)
1c00df78:	cede                	sw	s7,92(sp)
1c00df7a:	cce2                	sw	s8,88(sp)
1c00df7c:	c8ea                	sw	s10,80(sp)
1c00df7e:	de86                	sw	ra,124(sp)
1c00df80:	daa6                	sw	s1,116(sp)
1c00df82:	d8ca                	sw	s2,112(sp)
1c00df84:	d0da                	sw	s6,96(sp)
1c00df86:	cae6                	sw	s9,84(sp)
1c00df88:	c6ee                	sw	s11,76(sp)
1c00df8a:	89aa                	mv	s3,a0
1c00df8c:	8bae                	mv	s7,a1
1c00df8e:	8d32                	mv	s10,a2
1c00df90:	8a36                	mv	s4,a3
1c00df92:	1c001c37          	lui	s8,0x1c001
1c00df96:	c03a                	sw	a4,0(sp)
1c00df98:	8aa2                	mv	s5,s0
1c00df9a:	a039                	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00df9c:	85de                	mv	a1,s7
1c00df9e:	9982                	jalr	s3
1c00dfa0:	15f52063          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00dfa4:	0a85                	addi	s5,s5,1
1c00dfa6:	8d22                	mv	s10,s0
1c00dfa8:	000d4503          	lbu	a0,0(s10)
1c00dfac:	001d0413          	addi	s0,s10,1
1c00dfb0:	c979                	beqz	a0,1c00e086 <pos_libc_prf+0x11c>
1c00dfb2:	02500793          	li	a5,37
1c00dfb6:	fef513e3          	bne	a0,a5,1c00df9c <pos_libc_prf+0x32>
1c00dfba:	ca02                	sw	zero,20(sp)
1c00dfbc:	c802                	sw	zero,16(sp)
1c00dfbe:	c602                	sw	zero,12(sp)
1c00dfc0:	c402                	sw	zero,8(sp)
1c00dfc2:	c202                	sw	zero,4(sp)
1c00dfc4:	02300493          	li	s1,35
1c00dfc8:	02d00b13          	li	s6,45
1c00dfcc:	00044c83          	lbu	s9,0(s0)
1c00dfd0:	00140913          	addi	s2,s0,1
1c00dfd4:	85e6                	mv	a1,s9
1c00dfd6:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c00dfda:	8d4a                	mv	s10,s2
1c00dfdc:	8de6                	mv	s11,s9
1c00dfde:	3dd1                	jal	1c00deb2 <strchr>
1c00dfe0:	c91d                	beqz	a0,1c00e016 <pos_libc_prf+0xac>
1c00dfe2:	109c8963          	beq	s9,s1,1c00e0f4 <pos_libc_prf+0x18a>
1c00dfe6:	0194fe63          	bleu	s9,s1,1c00e002 <pos_libc_prf+0x98>
1c00dfea:	116c8163          	beq	s9,s6,1c00e0ec <pos_libc_prf+0x182>
1c00dfee:	03000713          	li	a4,48
1c00dff2:	0eec8963          	beq	s9,a4,1c00e0e4 <pos_libc_prf+0x17a>
1c00dff6:	02b00793          	li	a5,43
1c00dffa:	0afc8763          	beq	s9,a5,1c00e0a8 <pos_libc_prf+0x13e>
1c00dffe:	844a                	mv	s0,s2
1c00e000:	b7f1                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e002:	080c8263          	beqz	s9,1c00e086 <pos_libc_prf+0x11c>
1c00e006:	02000793          	li	a5,32
1c00e00a:	fefc9ae3          	bne	s9,a5,1c00dffe <pos_libc_prf+0x94>
1c00e00e:	4785                	li	a5,1
1c00e010:	c83e                	sw	a5,16(sp)
1c00e012:	844a                	mv	s0,s2
1c00e014:	bf65                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e016:	02a00693          	li	a3,42
1c00e01a:	2edc8263          	beq	s9,a3,1c00e2fe <pos_libc_prf+0x394>
1c00e01e:	fd0c8693          	addi	a3,s9,-48
1c00e022:	45a5                	li	a1,9
1c00e024:	4b01                	li	s6,0
1c00e026:	0cd5fd63          	bleu	a3,a1,1c00e100 <pos_libc_prf+0x196>
1c00e02a:	02e00793          	li	a5,46
1c00e02e:	28fd8663          	beq	s11,a5,1c00e2ba <pos_libc_prf+0x350>
1c00e032:	846e                	mv	s0,s11
1c00e034:	54fd                	li	s1,-1
1c00e036:	1c001737          	lui	a4,0x1c001
1c00e03a:	85ee                	mv	a1,s11
1c00e03c:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c00e040:	3d8d                	jal	1c00deb2 <strchr>
1c00e042:	4781                	li	a5,0
1c00e044:	cd19                	beqz	a0,1c00e062 <pos_libc_prf+0xf8>
1c00e046:	06c00793          	li	a5,108
1c00e04a:	001d0693          	addi	a3,s10,1
1c00e04e:	000d4d83          	lbu	s11,0(s10)
1c00e052:	3af40563          	beq	s0,a5,1c00e3fc <pos_libc_prf+0x492>
1c00e056:	06800793          	li	a5,104
1c00e05a:	3af40563          	beq	s0,a5,1c00e404 <pos_libc_prf+0x49a>
1c00e05e:	8d36                	mv	s10,a3
1c00e060:	87a2                	mv	a5,s0
1c00e062:	06700693          	li	a3,103
1c00e066:	0bb6ee63          	bltu	a3,s11,1c00e122 <pos_libc_prf+0x1b8>
1c00e06a:	06500693          	li	a3,101
1c00e06e:	3addf2e3          	bleu	a3,s11,1c00ec12 <pos_libc_prf+0xca8>
1c00e072:	04700693          	li	a3,71
1c00e076:	39b6ed63          	bltu	a3,s11,1c00e410 <pos_libc_prf+0x4a6>
1c00e07a:	04500793          	li	a5,69
1c00e07e:	38fdfae3          	bleu	a5,s11,1c00ec12 <pos_libc_prf+0xca8>
1c00e082:	2e0d9863          	bnez	s11,1c00e372 <pos_libc_prf+0x408>
1c00e086:	8456                	mv	s0,s5
1c00e088:	8522                	mv	a0,s0
1c00e08a:	50f6                	lw	ra,124(sp)
1c00e08c:	5466                	lw	s0,120(sp)
1c00e08e:	54d6                	lw	s1,116(sp)
1c00e090:	5946                	lw	s2,112(sp)
1c00e092:	59b6                	lw	s3,108(sp)
1c00e094:	5a26                	lw	s4,104(sp)
1c00e096:	5a96                	lw	s5,100(sp)
1c00e098:	5b06                	lw	s6,96(sp)
1c00e09a:	4bf6                	lw	s7,92(sp)
1c00e09c:	4c66                	lw	s8,88(sp)
1c00e09e:	4cd6                	lw	s9,84(sp)
1c00e0a0:	4d46                	lw	s10,80(sp)
1c00e0a2:	4db6                	lw	s11,76(sp)
1c00e0a4:	6109                	addi	sp,sp,128
1c00e0a6:	8082                	ret
1c00e0a8:	4705                	li	a4,1
1c00e0aa:	c63a                	sw	a4,12(sp)
1c00e0ac:	844a                	mv	s0,s2
1c00e0ae:	bf39                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e0b0:	00044503          	lbu	a0,0(s0)
1c00e0b4:	47a5                	li	a5,9
1c00e0b6:	fd050693          	addi	a3,a0,-48
1c00e0ba:	72d7e9e3          	bltu	a5,a3,1c00efec <pos_libc_prf+0x1082>
1c00e0be:	00140793          	addi	a5,s0,1
1c00e0c2:	8dbe                	mv	s11,a5
1c00e0c4:	a809                	j	1c00e0d6 <pos_libc_prf+0x16c>
1c00e0c6:	001dc50b          	p.lbu	a0,1(s11!)
1c00e0ca:	4725                	li	a4,9
1c00e0cc:	fd050793          	addi	a5,a0,-48
1c00e0d0:	197d                	addi	s2,s2,-1
1c00e0d2:	70f76ee3          	bltu	a4,a5,1c00efee <pos_libc_prf+0x1084>
1c00e0d6:	85de                	mv	a1,s7
1c00e0d8:	846e                	mv	s0,s11
1c00e0da:	9982                	jalr	s3
1c00e0dc:	fff535e3          	p.bneimm	a0,-1,1c00e0c6 <pos_libc_prf+0x15c>
1c00e0e0:	547d                	li	s0,-1
1c00e0e2:	b75d                	j	1c00e088 <pos_libc_prf+0x11e>
1c00e0e4:	4785                	li	a5,1
1c00e0e6:	ca3e                	sw	a5,20(sp)
1c00e0e8:	844a                	mv	s0,s2
1c00e0ea:	b5cd                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e0ec:	4705                	li	a4,1
1c00e0ee:	c43a                	sw	a4,8(sp)
1c00e0f0:	844a                	mv	s0,s2
1c00e0f2:	bde9                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e0f4:	4705                	li	a4,1
1c00e0f6:	c23a                	sw	a4,4(sp)
1c00e0f8:	844a                	mv	s0,s2
1c00e0fa:	bdc9                	j	1c00dfcc <pos_libc_prf+0x62>
1c00e0fc:	844a                	mv	s0,s2
1c00e0fe:	0905                	addi	s2,s2,1
1c00e100:	002b1793          	slli	a5,s6,0x2
1c00e104:	00094d83          	lbu	s11,0(s2)
1c00e108:	97da                	add	a5,a5,s6
1c00e10a:	0786                	slli	a5,a5,0x1
1c00e10c:	97e6                	add	a5,a5,s9
1c00e10e:	fd0d8713          	addi	a4,s11,-48
1c00e112:	fd078b13          	addi	s6,a5,-48
1c00e116:	8cee                	mv	s9,s11
1c00e118:	fee5f2e3          	bleu	a4,a1,1c00e0fc <pos_libc_prf+0x192>
1c00e11c:	00240d13          	addi	s10,s0,2
1c00e120:	b729                	j	1c00e02a <pos_libc_prf+0xc0>
1c00e122:	07000693          	li	a3,112
1c00e126:	24dd85e3          	beq	s11,a3,1c00eb70 <pos_libc_prf+0xc06>
1c00e12a:	1fb6e463          	bltu	a3,s11,1c00e312 <pos_libc_prf+0x3a8>
1c00e12e:	06e00693          	li	a3,110
1c00e132:	20dd8ae3          	beq	s11,a3,1c00eb46 <pos_libc_prf+0xbdc>
1c00e136:	2fb6e763          	bltu	a3,s11,1c00e424 <pos_libc_prf+0x4ba>
1c00e13a:	06900693          	li	a3,105
1c00e13e:	2add9ce3          	bne	s11,a3,1c00ebf6 <pos_libc_prf+0xc8c>
1c00e142:	06c00693          	li	a3,108
1c00e146:	00d78a63          	beq	a5,a3,1c00e15a <pos_libc_prf+0x1f0>
1c00e14a:	07a00693          	li	a3,122
1c00e14e:	00d78663          	beq	a5,a3,1c00e15a <pos_libc_prf+0x1f0>
1c00e152:	04c00693          	li	a3,76
1c00e156:	5ed78de3          	beq	a5,a3,1c00ef50 <pos_libc_prf+0xfe6>
1c00e15a:	000a2783          	lw	a5,0(s4)
1c00e15e:	0a11                	addi	s4,s4,4
1c00e160:	41f7d713          	srai	a4,a5,0x1f
1c00e164:	ce52                	sw	s4,28(sp)
1c00e166:	c23a                	sw	a4,4(sp)
1c00e168:	4e0741e3          	bltz	a4,1c00ee4a <pos_libc_prf+0xee0>
1c00e16c:	4732                	lw	a4,12(sp)
1c00e16e:	440709e3          	beqz	a4,1c00edc0 <pos_libc_prf+0xe56>
1c00e172:	02b00693          	li	a3,43
1c00e176:	4c92                	lw	s9,4(sp)
1c00e178:	02d10223          	sb	a3,36(sp)
1c00e17c:	02510a13          	addi	s4,sp,37
1c00e180:	843e                	mv	s0,a5
1c00e182:	8dd2                	mv	s11,s4
1c00e184:	a011                	j	1c00e188 <pos_libc_prf+0x21e>
1c00e186:	8dca                	mv	s11,s2
1c00e188:	4629                	li	a2,10
1c00e18a:	4681                	li	a3,0
1c00e18c:	8522                	mv	a0,s0
1c00e18e:	85e6                	mv	a1,s9
1c00e190:	d48ff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e194:	892a                	mv	s2,a0
1c00e196:	85e6                	mv	a1,s9
1c00e198:	8522                	mv	a0,s0
1c00e19a:	4629                	li	a2,10
1c00e19c:	4681                	li	a3,0
1c00e19e:	9feff0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e1a2:	03090913          	addi	s2,s2,48
1c00e1a6:	012d8023          	sb	s2,0(s11)
1c00e1aa:	00a5e7b3          	or	a5,a1,a0
1c00e1ae:	001d8913          	addi	s2,s11,1
1c00e1b2:	842a                	mv	s0,a0
1c00e1b4:	8cae                	mv	s9,a1
1c00e1b6:	fbe1                	bnez	a5,1c00e186 <pos_libc_prf+0x21c>
1c00e1b8:	00090023          	sb	zero,0(s2)
1c00e1bc:	01ba7d63          	bleu	s11,s4,1c00e1d6 <pos_libc_prf+0x26c>
1c00e1c0:	87ee                	mv	a5,s11
1c00e1c2:	000a4683          	lbu	a3,0(s4)
1c00e1c6:	0007c703          	lbu	a4,0(a5)
1c00e1ca:	fed78fab          	p.sb	a3,-1(a5!)
1c00e1ce:	00ea00ab          	p.sb	a4,1(s4!)
1c00e1d2:	fefa68e3          	bltu	s4,a5,1c00e1c2 <pos_libc_prf+0x258>
1c00e1d6:	4782                	lw	a5,0(sp)
1c00e1d8:	4732                	lw	a4,12(sp)
1c00e1da:	40f90933          	sub	s2,s2,a5
1c00e1de:	3c071de3          	bnez	a4,1c00edb8 <pos_libc_prf+0xe4e>
1c00e1e2:	47c2                	lw	a5,16(sp)
1c00e1e4:	3c079ae3          	bnez	a5,1c00edb8 <pos_libc_prf+0xe4e>
1c00e1e8:	4712                	lw	a4,4(sp)
1c00e1ea:	837d                	srli	a4,a4,0x1f
1c00e1ec:	c23a                	sw	a4,4(sp)
1c00e1ee:	3404c463          	bltz	s1,1c00e536 <pos_libc_prf+0x5cc>
1c00e1f2:	4712                	lw	a4,4(sp)
1c00e1f4:	412484b3          	sub	s1,s1,s2
1c00e1f8:	94ba                	add	s1,s1,a4
1c00e1fa:	0404e4b3          	p.max	s1,s1,zero
1c00e1fe:	009907b3          	add	a5,s2,s1
1c00e202:	40fb0b33          	sub	s6,s6,a5
1c00e206:	1040                	addi	s0,sp,36
1c00e208:	4c81                	li	s9,0
1c00e20a:	cc02                	sw	zero,24(sp)
1c00e20c:	4a01                	li	s4,0
1c00e20e:	4722                	lw	a4,8(sp)
1c00e210:	e305                	bnez	a4,1c00e230 <pos_libc_prf+0x2c6>
1c00e212:	01605f63          	blez	s6,1c00e230 <pos_libc_prf+0x2c6>
1c00e216:	fffb0d93          	addi	s11,s6,-1
1c00e21a:	85de                	mv	a1,s7
1c00e21c:	02000513          	li	a0,32
1c00e220:	9982                	jalr	s3
1c00e222:	1dfd                	addi	s11,s11,-1
1c00e224:	ebf52ee3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e228:	fffdb9e3          	p.bneimm	s11,-1,1c00e21a <pos_libc_prf+0x2b0>
1c00e22c:	9ada                	add	s5,s5,s6
1c00e22e:	5b7d                	li	s6,-1
1c00e230:	4792                	lw	a5,4(sp)
1c00e232:	00f40db3          	add	s11,s0,a5
1c00e236:	a031                	j	1c00e242 <pos_libc_prf+0x2d8>
1c00e238:	0014450b          	p.lbu	a0,1(s0!)
1c00e23c:	9982                	jalr	s3
1c00e23e:	ebf521e3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e242:	85de                	mv	a1,s7
1c00e244:	ffb41ae3          	bne	s0,s11,1c00e238 <pos_libc_prf+0x2ce>
1c00e248:	8da6                	mv	s11,s1
1c00e24a:	a021                	j	1c00e252 <pos_libc_prf+0x2e8>
1c00e24c:	9982                	jalr	s3
1c00e24e:	e9f529e3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e252:	1dfd                	addi	s11,s11,-1
1c00e254:	85de                	mv	a1,s7
1c00e256:	03000513          	li	a0,48
1c00e25a:	fffdb9e3          	p.bneimm	s11,-1,1c00e24c <pos_libc_prf+0x2e2>
1c00e25e:	4712                	lw	a4,4(sp)
1c00e260:	40e90933          	sub	s2,s2,a4
1c00e264:	c44a                	sw	s2,8(sp)
1c00e266:	e40a15e3          	bnez	s4,1c00e0b0 <pos_libc_prf+0x146>
1c00e26a:	47e2                	lw	a5,24(sp)
1c00e26c:	16079763          	bnez	a5,1c00e3da <pos_libc_prf+0x470>
1c00e270:	120c8863          	beqz	s9,1c00e3a0 <pos_libc_prf+0x436>
1c00e274:	00044783          	lbu	a5,0(s0)
1c00e278:	4a25                	li	s4,9
1c00e27a:	02e00d93          	li	s11,46
1c00e27e:	a801                	j	1c00e28e <pos_libc_prf+0x324>
1c00e280:	0405                	addi	s0,s0,1
1c00e282:	9982                	jalr	s3
1c00e284:	e5f52ee3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e288:	00044783          	lbu	a5,0(s0)
1c00e28c:	197d                	addi	s2,s2,-1
1c00e28e:	fd078713          	addi	a4,a5,-48
1c00e292:	853e                	mv	a0,a5
1c00e294:	85de                	mv	a1,s7
1c00e296:	feea75e3          	bleu	a4,s4,1c00e280 <pos_libc_prf+0x316>
1c00e29a:	ffb783e3          	beq	a5,s11,1c00e280 <pos_libc_prf+0x316>
1c00e29e:	8a66                	mv	s4,s9
1c00e2a0:	85de                	mv	a1,s7
1c00e2a2:	03000513          	li	a0,48
1c00e2a6:	01404463          	bgtz	s4,1c00e2ae <pos_libc_prf+0x344>
1c00e2aa:	0010106f          	j	1c00faaa <pos_libc_prf+0x1b40>
1c00e2ae:	9982                	jalr	s3
1c00e2b0:	1a7d                	addi	s4,s4,-1
1c00e2b2:	fff537e3          	p.bneimm	a0,-1,1c00e2a0 <pos_libc_prf+0x336>
1c00e2b6:	547d                	li	s0,-1
1c00e2b8:	bbc1                	j	1c00e088 <pos_libc_prf+0x11e>
1c00e2ba:	000d4d83          	lbu	s11,0(s10)
1c00e2be:	02a00793          	li	a5,42
1c00e2c2:	001d0513          	addi	a0,s10,1
1c00e2c6:	08fd8e63          	beq	s11,a5,1c00e362 <pos_libc_prf+0x3f8>
1c00e2ca:	fd0d8793          	addi	a5,s11,-48
1c00e2ce:	4825                	li	a6,9
1c00e2d0:	846e                	mv	s0,s11
1c00e2d2:	86aa                	mv	a3,a0
1c00e2d4:	4481                	li	s1,0
1c00e2d6:	45a5                	li	a1,9
1c00e2d8:	8d2a                	mv	s10,a0
1c00e2da:	d4f86ee3          	bltu	a6,a5,1c00e036 <pos_libc_prf+0xcc>
1c00e2de:	00249793          	slli	a5,s1,0x2
1c00e2e2:	97a6                	add	a5,a5,s1
1c00e2e4:	0786                	slli	a5,a5,0x1
1c00e2e6:	97ee                	add	a5,a5,s11
1c00e2e8:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c00e2ec:	fd078493          	addi	s1,a5,-48
1c00e2f0:	fd0d8793          	addi	a5,s11,-48
1c00e2f4:	846e                	mv	s0,s11
1c00e2f6:	fef5f4e3          	bleu	a5,a1,1c00e2de <pos_libc_prf+0x374>
1c00e2fa:	8d36                	mv	s10,a3
1c00e2fc:	bb2d                	j	1c00e036 <pos_libc_prf+0xcc>
1c00e2fe:	000a2b03          	lw	s6,0(s4)
1c00e302:	0a11                	addi	s4,s4,4
1c00e304:	080b4363          	bltz	s6,1c00e38a <pos_libc_prf+0x420>
1c00e308:	00094d83          	lbu	s11,0(s2)
1c00e30c:	00240d13          	addi	s10,s0,2
1c00e310:	bb29                	j	1c00e02a <pos_libc_prf+0xc0>
1c00e312:	07500693          	li	a3,117
1c00e316:	10dd8763          	beq	s11,a3,1c00e424 <pos_libc_prf+0x4ba>
1c00e31a:	07800693          	li	a3,120
1c00e31e:	10dd8363          	beq	s11,a3,1c00e424 <pos_libc_prf+0x4ba>
1c00e322:	07300793          	li	a5,115
1c00e326:	0cfd98e3          	bne	s11,a5,1c00ebf6 <pos_libc_prf+0xc8c>
1c00e32a:	004a0713          	addi	a4,s4,4
1c00e32e:	ce3a                	sw	a4,28(sp)
1c00e330:	000a2403          	lw	s0,0(s4)
1c00e334:	3c04c2e3          	bltz	s1,1c00eef8 <pos_libc_prf+0xf8e>
1c00e338:	460481e3          	beqz	s1,1c00ef9a <pos_libc_prf+0x1030>
1c00e33c:	00044783          	lbu	a5,0(s0)
1c00e340:	44078ce3          	beqz	a5,1c00ef98 <pos_libc_prf+0x102e>
1c00e344:	00140793          	addi	a5,s0,1
1c00e348:	4901                	li	s2,0
1c00e34a:	a021                	j	1c00e352 <pos_libc_prf+0x3e8>
1c00e34c:	0017c70b          	p.lbu	a4,1(a5!)
1c00e350:	c701                	beqz	a4,1c00e358 <pos_libc_prf+0x3ee>
1c00e352:	0905                	addi	s2,s2,1
1c00e354:	fe994ce3          	blt	s2,s1,1c00e34c <pos_libc_prf+0x3e2>
1c00e358:	412b0b33          	sub	s6,s6,s2
1c00e35c:	4481                	li	s1,0
1c00e35e:	c202                	sw	zero,4(sp)
1c00e360:	b565                	j	1c00e208 <pos_libc_prf+0x29e>
1c00e362:	001d4d83          	lbu	s11,1(s10)
1c00e366:	000a2483          	lw	s1,0(s4)
1c00e36a:	846e                	mv	s0,s11
1c00e36c:	0d09                	addi	s10,s10,2
1c00e36e:	0a11                	addi	s4,s4,4
1c00e370:	b1d9                	j	1c00e036 <pos_libc_prf+0xcc>
1c00e372:	02500793          	li	a5,37
1c00e376:	08fd90e3          	bne	s11,a5,1c00ebf6 <pos_libc_prf+0xc8c>
1c00e37a:	85de                	mv	a1,s7
1c00e37c:	02500513          	li	a0,37
1c00e380:	9982                	jalr	s3
1c00e382:	d5f52fe3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e386:	0a85                	addi	s5,s5,1
1c00e388:	b105                	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00e38a:	4785                	li	a5,1
1c00e38c:	41600b33          	neg	s6,s6
1c00e390:	c43e                	sw	a5,8(sp)
1c00e392:	bf9d                	j	1c00e308 <pos_libc_prf+0x39e>
1c00e394:	0014450b          	p.lbu	a0,1(s0!)
1c00e398:	197d                	addi	s2,s2,-1
1c00e39a:	9982                	jalr	s3
1c00e39c:	d5f522e3          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00e3a0:	85de                	mv	a1,s7
1c00e3a2:	ff2049e3          	bgtz	s2,1c00e394 <pos_libc_prf+0x42a>
1c00e3a6:	4792                	lw	a5,4(sp)
1c00e3a8:	4a72                	lw	s4,28(sp)
1c00e3aa:	00fa8733          	add	a4,s5,a5
1c00e3ae:	47a2                	lw	a5,8(sp)
1c00e3b0:	9726                	add	a4,a4,s1
1c00e3b2:	00e78ab3          	add	s5,a5,a4
1c00e3b6:	bf6059e3          	blez	s6,1c00dfa8 <pos_libc_prf+0x3e>
1c00e3ba:	9ada                	add	s5,s5,s6
1c00e3bc:	1b7d                	addi	s6,s6,-1
1c00e3be:	a029                	j	1c00e3c8 <pos_libc_prf+0x45e>
1c00e3c0:	01fb3463          	p.bneimm	s6,-1,1c00e3c8 <pos_libc_prf+0x45e>
1c00e3c4:	5fe0106f          	j	1c00f9c2 <pos_libc_prf+0x1a58>
1c00e3c8:	85de                	mv	a1,s7
1c00e3ca:	02000513          	li	a0,32
1c00e3ce:	9982                	jalr	s3
1c00e3d0:	1b7d                	addi	s6,s6,-1
1c00e3d2:	fff537e3          	p.bneimm	a0,-1,1c00e3c0 <pos_libc_prf+0x456>
1c00e3d6:	547d                	li	s0,-1
1c00e3d8:	b945                	j	1c00e088 <pos_libc_prf+0x11e>
1c00e3da:	02e00a13          	li	s4,46
1c00e3de:	a031                	j	1c00e3ea <pos_libc_prf+0x480>
1c00e3e0:	197d                	addi	s2,s2,-1
1c00e3e2:	014d9463          	bne	s11,s4,1c00e3ea <pos_libc_prf+0x480>
1c00e3e6:	5320106f          	j	1c00f918 <pos_libc_prf+0x19ae>
1c00e3ea:	00144d8b          	p.lbu	s11,1(s0!)
1c00e3ee:	85de                	mv	a1,s7
1c00e3f0:	856e                	mv	a0,s11
1c00e3f2:	9982                	jalr	s3
1c00e3f4:	fff536e3          	p.bneimm	a0,-1,1c00e3e0 <pos_libc_prf+0x476>
1c00e3f8:	547d                	li	s0,-1
1c00e3fa:	b179                	j	1c00e088 <pos_libc_prf+0x11e>
1c00e3fc:	188d83e3          	beq	s11,s0,1c00ed82 <pos_libc_prf+0xe18>
1c00e400:	8d36                	mv	s10,a3
1c00e402:	b185                	j	1c00e062 <pos_libc_prf+0xf8>
1c00e404:	188d86e3          	beq	s11,s0,1c00ed90 <pos_libc_prf+0xe26>
1c00e408:	8d36                	mv	s10,a3
1c00e40a:	06800793          	li	a5,104
1c00e40e:	b991                	j	1c00e062 <pos_libc_prf+0xf8>
1c00e410:	06300693          	li	a3,99
1c00e414:	70dd8c63          	beq	s11,a3,1c00eb2c <pos_libc_prf+0xbc2>
1c00e418:	d3b6e5e3          	bltu	a3,s11,1c00e142 <pos_libc_prf+0x1d8>
1c00e41c:	05800693          	li	a3,88
1c00e420:	7cdd9b63          	bne	s11,a3,1c00ebf6 <pos_libc_prf+0xc8c>
1c00e424:	06c00693          	li	a3,108
1c00e428:	18d780e3          	beq	a5,a3,1c00eda8 <pos_libc_prf+0xe3e>
1c00e42c:	07a00693          	li	a3,122
1c00e430:	16d78ce3          	beq	a5,a3,1c00eda8 <pos_libc_prf+0xe3e>
1c00e434:	04c00693          	li	a3,76
1c00e438:	2cd78ee3          	beq	a5,a3,1c00ef14 <pos_libc_prf+0xfaa>
1c00e43c:	000a2403          	lw	s0,0(s4)
1c00e440:	0a11                	addi	s4,s4,4
1c00e442:	ce52                	sw	s4,28(sp)
1c00e444:	4c81                	li	s9,0
1c00e446:	06f00793          	li	a5,111
1c00e44a:	3cfd81e3          	beq	s11,a5,1c00f00c <pos_libc_prf+0x10a2>
1c00e44e:	07500793          	li	a5,117
1c00e452:	02410a13          	addi	s4,sp,36
1c00e456:	04fd8763          	beq	s11,a5,1c00e4a4 <pos_libc_prf+0x53a>
1c00e45a:	4712                	lw	a4,4(sp)
1c00e45c:	2a0708e3          	beqz	a4,1c00ef0c <pos_libc_prf+0xfa2>
1c00e460:	77e1                	lui	a5,0xffff8
1c00e462:	8307c793          	xori	a5,a5,-2000
1c00e466:	02f11223          	sh	a5,36(sp)
1c00e46a:	4909                	li	s2,2
1c00e46c:	02610693          	addi	a3,sp,38
1c00e470:	87b6                	mv	a5,a3
1c00e472:	4e25                	li	t3,9
1c00e474:	f6443733          	p.bclr	a4,s0,27,4
1c00e478:	01cc9613          	slli	a2,s9,0x1c
1c00e47c:	8011                	srli	s0,s0,0x4
1c00e47e:	8c51                	or	s0,s0,a2
1c00e480:	004cdc93          	srli	s9,s9,0x4
1c00e484:	05770813          	addi	a6,a4,87
1c00e488:	03070593          	addi	a1,a4,48
1c00e48c:	01946533          	or	a0,s0,s9
1c00e490:	06ee7663          	bleu	a4,t3,1c00e4fc <pos_libc_prf+0x592>
1c00e494:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c00e498:	00178593          	addi	a1,a5,1
1c00e49c:	c52d                	beqz	a0,1c00e506 <pos_libc_prf+0x59c>
1c00e49e:	87ae                	mv	a5,a1
1c00e4a0:	bfd1                	j	1c00e474 <pos_libc_prf+0x50a>
1c00e4a2:	8a4a                	mv	s4,s2
1c00e4a4:	4629                	li	a2,10
1c00e4a6:	4681                	li	a3,0
1c00e4a8:	8522                	mv	a0,s0
1c00e4aa:	85e6                	mv	a1,s9
1c00e4ac:	a2cff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e4b0:	892a                	mv	s2,a0
1c00e4b2:	85e6                	mv	a1,s9
1c00e4b4:	8522                	mv	a0,s0
1c00e4b6:	4629                	li	a2,10
1c00e4b8:	4681                	li	a3,0
1c00e4ba:	ee3fe0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e4be:	03090913          	addi	s2,s2,48
1c00e4c2:	012a0023          	sb	s2,0(s4)
1c00e4c6:	00a5e7b3          	or	a5,a1,a0
1c00e4ca:	001a0913          	addi	s2,s4,1
1c00e4ce:	842a                	mv	s0,a0
1c00e4d0:	8cae                	mv	s9,a1
1c00e4d2:	fbe1                	bnez	a5,1c00e4a2 <pos_libc_prf+0x538>
1c00e4d4:	4782                	lw	a5,0(sp)
1c00e4d6:	00090023          	sb	zero,0(s2)
1c00e4da:	40f90933          	sub	s2,s2,a5
1c00e4de:	0147fd63          	bleu	s4,a5,1c00e4f8 <pos_libc_prf+0x58e>
1c00e4e2:	105c                	addi	a5,sp,36
1c00e4e4:	0007c683          	lbu	a3,0(a5)
1c00e4e8:	000a4703          	lbu	a4,0(s4)
1c00e4ec:	feda0fab          	p.sb	a3,-1(s4!)
1c00e4f0:	00e780ab          	p.sb	a4,1(a5!)
1c00e4f4:	ff47e8e3          	bltu	a5,s4,1c00e4e4 <pos_libc_prf+0x57a>
1c00e4f8:	c202                	sw	zero,4(sp)
1c00e4fa:	b9d5                	j	1c00e1ee <pos_libc_prf+0x284>
1c00e4fc:	00b78023          	sb	a1,0(a5)
1c00e500:	00178593          	addi	a1,a5,1
1c00e504:	fd49                	bnez	a0,1c00e49e <pos_libc_prf+0x534>
1c00e506:	00058023          	sb	zero,0(a1)
1c00e50a:	8d95                	sub	a1,a1,a3
1c00e50c:	00f6fc63          	bleu	a5,a3,1c00e524 <pos_libc_prf+0x5ba>
1c00e510:	0006c603          	lbu	a2,0(a3)
1c00e514:	0007c703          	lbu	a4,0(a5)
1c00e518:	fec78fab          	p.sb	a2,-1(a5!)
1c00e51c:	00e680ab          	p.sb	a4,1(a3!)
1c00e520:	fef6e8e3          	bltu	a3,a5,1c00e510 <pos_libc_prf+0x5a6>
1c00e524:	05800793          	li	a5,88
1c00e528:	28fd82e3          	beq	s11,a5,1c00efac <pos_libc_prf+0x1042>
1c00e52c:	4712                	lw	a4,4(sp)
1c00e52e:	992e                	add	s2,s2,a1
1c00e530:	0706                	slli	a4,a4,0x1
1c00e532:	c23a                	sw	a4,4(sp)
1c00e534:	b96d                	j	1c00e1ee <pos_libc_prf+0x284>
1c00e536:	4c81                	li	s9,0
1c00e538:	cc02                	sw	zero,24(sp)
1c00e53a:	4a01                	li	s4,0
1c00e53c:	47d2                	lw	a5,20(sp)
1c00e53e:	5e078163          	beqz	a5,1c00eb20 <pos_libc_prf+0xbb6>
1c00e542:	412b04b3          	sub	s1,s6,s2
1c00e546:	0404e4b3          	p.max	s1,s1,zero
1c00e54a:	009907b3          	add	a5,s2,s1
1c00e54e:	40fb0b33          	sub	s6,s6,a5
1c00e552:	1040                	addi	s0,sp,36
1c00e554:	b96d                	j	1c00e20e <pos_libc_prf+0x2a4>
1c00e556:	4881                	li	a7,0
1c00e558:	4801                	li	a6,0
1c00e55a:	4581                	li	a1,0
1c00e55c:	4501                	li	a0,0
1c00e55e:	4f11                	li	t5,4
1c00e560:	410f0f33          	sub	t5,t5,a6
1c00e564:	012f40fb          	lp.setup	x1,t5,1c00e588 <pos_libc_prf+0x61e>
1c00e568:	01f51713          	slli	a4,a0,0x1f
1c00e56c:	0015d793          	srli	a5,a1,0x1
1c00e570:	8fd9                	or	a5,a5,a4
1c00e572:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e576:	00f58eb3          	add	t4,a1,a5
1c00e57a:	8105                	srli	a0,a0,0x1
1c00e57c:	00beb5b3          	sltu	a1,t4,a1
1c00e580:	00a587b3          	add	a5,a1,a0
1c00e584:	853e                	mv	a0,a5
1c00e586:	85f6                	mv	a1,t4
1c00e588:	0805                	addi	a6,a6,1
1c00e58a:	0004d363          	bgez	s1,1c00e590 <pos_libc_prf+0x626>
1c00e58e:	4499                	li	s1,6
1c00e590:	04700693          	li	a3,71
1c00e594:	0cde0be3          	beq	t3,a3,1c00ee6a <pos_libc_prf+0xf00>
1c00e598:	06600693          	li	a3,102
1c00e59c:	4f81                	li	t6,0
1c00e59e:	0edd84e3          	beq	s11,a3,1c00ee86 <pos_libc_prf+0xf1c>
1c00e5a2:	00148f13          	addi	t5,s1,1
1c00e5a6:	4741                	li	a4,16
1c00e5a8:	04ef4f33          	p.min	t5,t5,a4
1c00e5ac:	1f7d                	addi	t5,t5,-1
1c00e5ae:	4501                	li	a0,0
1c00e5b0:	080006b7          	lui	a3,0x8000
1c00e5b4:	4295                	li	t0,5
1c00e5b6:	0f05                	addi	t5,t5,1
1c00e5b8:	030f40fb          	lp.setup	x1,t5,1c00e618 <pos_libc_prf+0x6ae>
1c00e5bc:	00250613          	addi	a2,a0,2
1c00e5c0:	00a63733          	sltu	a4,a2,a0
1c00e5c4:	9736                	add	a4,a4,a3
1c00e5c6:	02575533          	divu	a0,a4,t0
1c00e5ca:	00251693          	slli	a3,a0,0x2
1c00e5ce:	96aa                	add	a3,a3,a0
1c00e5d0:	8f15                	sub	a4,a4,a3
1c00e5d2:	0776                	slli	a4,a4,0x1d
1c00e5d4:	00365593          	srli	a1,a2,0x3
1c00e5d8:	8dd9                	or	a1,a1,a4
1c00e5da:	0255d5b3          	divu	a1,a1,t0
1c00e5de:	00359693          	slli	a3,a1,0x3
1c00e5e2:	00559713          	slli	a4,a1,0x5
1c00e5e6:	9736                	add	a4,a4,a3
1c00e5e8:	40e60733          	sub	a4,a2,a4
1c00e5ec:	02575733          	divu	a4,a4,t0
1c00e5f0:	81f5                	srli	a1,a1,0x1d
1c00e5f2:	00d70633          	add	a2,a4,a3
1c00e5f6:	95aa                	add	a1,a1,a0
1c00e5f8:	00e63733          	sltu	a4,a2,a4
1c00e5fc:	00b706b3          	add	a3,a4,a1
1c00e600:	01f69593          	slli	a1,a3,0x1f
1c00e604:	00165713          	srli	a4,a2,0x1
1c00e608:	8f4d                	or	a4,a4,a1
1c00e60a:	fc163633          	p.bclr	a2,a2,30,1
1c00e60e:	00e60533          	add	a0,a2,a4
1c00e612:	8285                	srli	a3,a3,0x1
1c00e614:	00c53633          	sltu	a2,a0,a2
1c00e618:	96b2                	add	a3,a3,a2
1c00e61a:	00ae85b3          	add	a1,t4,a0
1c00e61e:	96be                	add	a3,a3,a5
1c00e620:	01d5beb3          	sltu	t4,a1,t4
1c00e624:	96f6                	add	a3,a3,t4
1c00e626:	f606b533          	p.bclr	a0,a3,27,0
1c00e62a:	87ae                	mv	a5,a1
1c00e62c:	c125                	beqz	a0,1c00e68c <pos_libc_prf+0x722>
1c00e62e:	00258513          	addi	a0,a1,2
1c00e632:	00b537b3          	sltu	a5,a0,a1
1c00e636:	96be                	add	a3,a3,a5
1c00e638:	4e95                	li	t4,5
1c00e63a:	03d6de33          	divu	t3,a3,t4
1c00e63e:	002e1793          	slli	a5,t3,0x2
1c00e642:	97f2                	add	a5,a5,t3
1c00e644:	8e9d                	sub	a3,a3,a5
1c00e646:	01d69793          	slli	a5,a3,0x1d
1c00e64a:	00355693          	srli	a3,a0,0x3
1c00e64e:	8edd                	or	a3,a3,a5
1c00e650:	03d6d6b3          	divu	a3,a3,t4
1c00e654:	00369593          	slli	a1,a3,0x3
1c00e658:	00569793          	slli	a5,a3,0x5
1c00e65c:	97ae                	add	a5,a5,a1
1c00e65e:	40f507b3          	sub	a5,a0,a5
1c00e662:	03d7d7b3          	divu	a5,a5,t4
1c00e666:	82f5                	srli	a3,a3,0x1d
1c00e668:	95be                	add	a1,a1,a5
1c00e66a:	00f5b7b3          	sltu	a5,a1,a5
1c00e66e:	96f2                	add	a3,a3,t3
1c00e670:	96be                	add	a3,a3,a5
1c00e672:	01f69513          	slli	a0,a3,0x1f
1c00e676:	0015d793          	srli	a5,a1,0x1
1c00e67a:	8fc9                	or	a5,a5,a0
1c00e67c:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e680:	97ae                	add	a5,a5,a1
1c00e682:	8285                	srli	a3,a3,0x1
1c00e684:	00b7b5b3          	sltu	a1,a5,a1
1c00e688:	96ae                	add	a3,a3,a1
1c00e68a:	0885                	addi	a7,a7,1
1c00e68c:	06600593          	li	a1,102
1c00e690:	00130513          	addi	a0,t1,1
1c00e694:	1ebd82e3          	beq	s11,a1,1c00f078 <pos_libc_prf+0x110e>
1c00e698:	01e7de13          	srli	t3,a5,0x1e
1c00e69c:	00279593          	slli	a1,a5,0x2
1c00e6a0:	00269813          	slli	a6,a3,0x2
1c00e6a4:	97ae                	add	a5,a5,a1
1c00e6a6:	010e6833          	or	a6,t3,a6
1c00e6aa:	00b7b5b3          	sltu	a1,a5,a1
1c00e6ae:	96c2                	add	a3,a3,a6
1c00e6b0:	96ae                	add	a3,a3,a1
1c00e6b2:	0686                	slli	a3,a3,0x1
1c00e6b4:	01f7d593          	srli	a1,a5,0x1f
1c00e6b8:	8ecd                	or	a3,a3,a1
1c00e6ba:	01c6d593          	srli	a1,a3,0x1c
1c00e6be:	882e                	mv	a6,a1
1c00e6c0:	4712                	lw	a4,4(sp)
1c00e6c2:	03058593          	addi	a1,a1,48
1c00e6c6:	01003833          	snez	a6,a6
1c00e6ca:	00b30023          	sb	a1,0(t1)
1c00e6ce:	c7c6be33          	p.bclr	t3,a3,3,28
1c00e6d2:	00179593          	slli	a1,a5,0x1
1c00e6d6:	410888b3          	sub	a7,a7,a6
1c00e6da:	0a0714e3          	bnez	a4,1c00ef82 <pos_libc_prf+0x1018>
1c00e6de:	8ca6                	mv	s9,s1
1c00e6e0:	3c905d63          	blez	s1,1c00eaba <pos_libc_prf+0xb50>
1c00e6e4:	02e00693          	li	a3,46
1c00e6e8:	00230793          	addi	a5,t1,2
1c00e6ec:	00d300a3          	sb	a3,1(t1)
1c00e6f0:	00259693          	slli	a3,a1,0x2
1c00e6f4:	01e5d813          	srli	a6,a1,0x1e
1c00e6f8:	002e1513          	slli	a0,t3,0x2
1c00e6fc:	95b6                	add	a1,a1,a3
1c00e6fe:	00a86533          	or	a0,a6,a0
1c00e702:	00d5b833          	sltu	a6,a1,a3
1c00e706:	01c506b3          	add	a3,a0,t3
1c00e70a:	9836                	add	a6,a6,a3
1c00e70c:	0806                	slli	a6,a6,0x1
1c00e70e:	01f5d693          	srli	a3,a1,0x1f
1c00e712:	0106e833          	or	a6,a3,a6
1c00e716:	01c85313          	srli	t1,a6,0x1c
1c00e71a:	03030313          	addi	t1,t1,48
1c00e71e:	100006b7          	lui	a3,0x10000
1c00e722:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e726:	00678023          	sb	t1,0(a5)
1c00e72a:	00159e13          	slli	t3,a1,0x1
1c00e72e:	00a87833          	and	a6,a6,a0
1c00e732:	0014b463          	p.bneimm	s1,1,1c00e73a <pos_libc_prf+0x7d0>
1c00e736:	3d40106f          	j	1c00fb0a <pos_libc_prf+0x1ba0>
1c00e73a:	00359693          	slli	a3,a1,0x3
1c00e73e:	00281313          	slli	t1,a6,0x2
1c00e742:	01ee5e93          	srli	t4,t3,0x1e
1c00e746:	01c685b3          	add	a1,a3,t3
1c00e74a:	006ee333          	or	t1,t4,t1
1c00e74e:	981a                	add	a6,a6,t1
1c00e750:	00d5b6b3          	sltu	a3,a1,a3
1c00e754:	96c2                	add	a3,a3,a6
1c00e756:	0686                	slli	a3,a3,0x1
1c00e758:	01f5d813          	srli	a6,a1,0x1f
1c00e75c:	00d866b3          	or	a3,a6,a3
1c00e760:	01c6d813          	srli	a6,a3,0x1c
1c00e764:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c00e768:	010780a3          	sb	a6,1(a5)
1c00e76c:	ffe48c93          	addi	s9,s1,-2
1c00e770:	00159313          	slli	t1,a1,0x1
1c00e774:	8ee9                	and	a3,a3,a0
1c00e776:	01904463          	bgtz	s9,1c00e77e <pos_libc_prf+0x814>
1c00e77a:	3880106f          	j	1c00fb02 <pos_libc_prf+0x1b98>
1c00e77e:	01e35e13          	srli	t3,t1,0x1e
1c00e782:	058e                	slli	a1,a1,0x3
1c00e784:	00269813          	slli	a6,a3,0x2
1c00e788:	932e                	add	t1,t1,a1
1c00e78a:	010e6833          	or	a6,t3,a6
1c00e78e:	96c2                	add	a3,a3,a6
1c00e790:	00b335b3          	sltu	a1,t1,a1
1c00e794:	95b6                	add	a1,a1,a3
1c00e796:	0586                	slli	a1,a1,0x1
1c00e798:	01f35693          	srli	a3,t1,0x1f
1c00e79c:	8dd5                	or	a1,a1,a3
1c00e79e:	01c5d693          	srli	a3,a1,0x1c
1c00e7a2:	03068693          	addi	a3,a3,48
1c00e7a6:	00d78123          	sb	a3,2(a5)
1c00e7aa:	ffd48c93          	addi	s9,s1,-3
1c00e7ae:	00131e13          	slli	t3,t1,0x1
1c00e7b2:	8de9                	and	a1,a1,a0
1c00e7b4:	01904463          	bgtz	s9,1c00e7bc <pos_libc_prf+0x852>
1c00e7b8:	3420106f          	j	1c00fafa <pos_libc_prf+0x1b90>
1c00e7bc:	00331693          	slli	a3,t1,0x3
1c00e7c0:	00259813          	slli	a6,a1,0x2
1c00e7c4:	01ee5313          	srli	t1,t3,0x1e
1c00e7c8:	01036833          	or	a6,t1,a6
1c00e7cc:	9e36                	add	t3,t3,a3
1c00e7ce:	95c2                	add	a1,a1,a6
1c00e7d0:	00de36b3          	sltu	a3,t3,a3
1c00e7d4:	96ae                	add	a3,a3,a1
1c00e7d6:	0686                	slli	a3,a3,0x1
1c00e7d8:	01fe5593          	srli	a1,t3,0x1f
1c00e7dc:	8ecd                	or	a3,a3,a1
1c00e7de:	01c6d593          	srli	a1,a3,0x1c
1c00e7e2:	03058593          	addi	a1,a1,48
1c00e7e6:	00b781a3          	sb	a1,3(a5)
1c00e7ea:	ffc48c93          	addi	s9,s1,-4
1c00e7ee:	001e1313          	slli	t1,t3,0x1
1c00e7f2:	8ee9                	and	a3,a3,a0
1c00e7f4:	01904463          	bgtz	s9,1c00e7fc <pos_libc_prf+0x892>
1c00e7f8:	2fa0106f          	j	1c00faf2 <pos_libc_prf+0x1b88>
1c00e7fc:	003e1593          	slli	a1,t3,0x3
1c00e800:	00269813          	slli	a6,a3,0x2
1c00e804:	01e35e13          	srli	t3,t1,0x1e
1c00e808:	010e6833          	or	a6,t3,a6
1c00e80c:	932e                	add	t1,t1,a1
1c00e80e:	96c2                	add	a3,a3,a6
1c00e810:	00b335b3          	sltu	a1,t1,a1
1c00e814:	95b6                	add	a1,a1,a3
1c00e816:	0586                	slli	a1,a1,0x1
1c00e818:	01f35693          	srli	a3,t1,0x1f
1c00e81c:	8dd5                	or	a1,a1,a3
1c00e81e:	01c5d693          	srli	a3,a1,0x1c
1c00e822:	03068693          	addi	a3,a3,48
1c00e826:	00d78223          	sb	a3,4(a5)
1c00e82a:	ffb48c93          	addi	s9,s1,-5
1c00e82e:	00131e13          	slli	t3,t1,0x1
1c00e832:	8de9                	and	a1,a1,a0
1c00e834:	01904463          	bgtz	s9,1c00e83c <pos_libc_prf+0x8d2>
1c00e838:	2b20106f          	j	1c00faea <pos_libc_prf+0x1b80>
1c00e83c:	00331693          	slli	a3,t1,0x3
1c00e840:	00259813          	slli	a6,a1,0x2
1c00e844:	01ee5313          	srli	t1,t3,0x1e
1c00e848:	01036833          	or	a6,t1,a6
1c00e84c:	9e36                	add	t3,t3,a3
1c00e84e:	95c2                	add	a1,a1,a6
1c00e850:	00de36b3          	sltu	a3,t3,a3
1c00e854:	96ae                	add	a3,a3,a1
1c00e856:	0686                	slli	a3,a3,0x1
1c00e858:	01fe5593          	srli	a1,t3,0x1f
1c00e85c:	8ecd                	or	a3,a3,a1
1c00e85e:	01c6d593          	srli	a1,a3,0x1c
1c00e862:	03058593          	addi	a1,a1,48
1c00e866:	00b782a3          	sb	a1,5(a5)
1c00e86a:	ffa48c93          	addi	s9,s1,-6
1c00e86e:	001e1313          	slli	t1,t3,0x1
1c00e872:	8ee9                	and	a3,a3,a0
1c00e874:	01904463          	bgtz	s9,1c00e87c <pos_libc_prf+0x912>
1c00e878:	26a0106f          	j	1c00fae2 <pos_libc_prf+0x1b78>
1c00e87c:	003e1593          	slli	a1,t3,0x3
1c00e880:	00269813          	slli	a6,a3,0x2
1c00e884:	01e35e13          	srli	t3,t1,0x1e
1c00e888:	010e6833          	or	a6,t3,a6
1c00e88c:	932e                	add	t1,t1,a1
1c00e88e:	96c2                	add	a3,a3,a6
1c00e890:	00b335b3          	sltu	a1,t1,a1
1c00e894:	95b6                	add	a1,a1,a3
1c00e896:	0586                	slli	a1,a1,0x1
1c00e898:	01f35693          	srli	a3,t1,0x1f
1c00e89c:	8dd5                	or	a1,a1,a3
1c00e89e:	01c5d693          	srli	a3,a1,0x1c
1c00e8a2:	03068693          	addi	a3,a3,48
1c00e8a6:	00d78323          	sb	a3,6(a5)
1c00e8aa:	ff948c93          	addi	s9,s1,-7
1c00e8ae:	00131e13          	slli	t3,t1,0x1
1c00e8b2:	8de9                	and	a1,a1,a0
1c00e8b4:	01904463          	bgtz	s9,1c00e8bc <pos_libc_prf+0x952>
1c00e8b8:	2220106f          	j	1c00fada <pos_libc_prf+0x1b70>
1c00e8bc:	00331693          	slli	a3,t1,0x3
1c00e8c0:	00259813          	slli	a6,a1,0x2
1c00e8c4:	01ee5313          	srli	t1,t3,0x1e
1c00e8c8:	01036833          	or	a6,t1,a6
1c00e8cc:	9e36                	add	t3,t3,a3
1c00e8ce:	95c2                	add	a1,a1,a6
1c00e8d0:	00de36b3          	sltu	a3,t3,a3
1c00e8d4:	96ae                	add	a3,a3,a1
1c00e8d6:	0686                	slli	a3,a3,0x1
1c00e8d8:	01fe5593          	srli	a1,t3,0x1f
1c00e8dc:	8ecd                	or	a3,a3,a1
1c00e8de:	01c6d593          	srli	a1,a3,0x1c
1c00e8e2:	03058593          	addi	a1,a1,48
1c00e8e6:	00b783a3          	sb	a1,7(a5)
1c00e8ea:	ff848c93          	addi	s9,s1,-8
1c00e8ee:	001e1313          	slli	t1,t3,0x1
1c00e8f2:	8ee9                	and	a3,a3,a0
1c00e8f4:	01904463          	bgtz	s9,1c00e8fc <pos_libc_prf+0x992>
1c00e8f8:	1da0106f          	j	1c00fad2 <pos_libc_prf+0x1b68>
1c00e8fc:	003e1593          	slli	a1,t3,0x3
1c00e900:	00269813          	slli	a6,a3,0x2
1c00e904:	01e35e13          	srli	t3,t1,0x1e
1c00e908:	010e6833          	or	a6,t3,a6
1c00e90c:	932e                	add	t1,t1,a1
1c00e90e:	96c2                	add	a3,a3,a6
1c00e910:	00b335b3          	sltu	a1,t1,a1
1c00e914:	95b6                	add	a1,a1,a3
1c00e916:	0586                	slli	a1,a1,0x1
1c00e918:	01f35693          	srli	a3,t1,0x1f
1c00e91c:	8dd5                	or	a1,a1,a3
1c00e91e:	01c5d693          	srli	a3,a1,0x1c
1c00e922:	03068693          	addi	a3,a3,48
1c00e926:	00d78423          	sb	a3,8(a5)
1c00e92a:	ff748c93          	addi	s9,s1,-9
1c00e92e:	00131e13          	slli	t3,t1,0x1
1c00e932:	8de9                	and	a1,a1,a0
1c00e934:	01904463          	bgtz	s9,1c00e93c <pos_libc_prf+0x9d2>
1c00e938:	1920106f          	j	1c00faca <pos_libc_prf+0x1b60>
1c00e93c:	00331693          	slli	a3,t1,0x3
1c00e940:	00259813          	slli	a6,a1,0x2
1c00e944:	01ee5e93          	srli	t4,t3,0x1e
1c00e948:	01c68333          	add	t1,a3,t3
1c00e94c:	010ee833          	or	a6,t4,a6
1c00e950:	982e                	add	a6,a6,a1
1c00e952:	00d336b3          	sltu	a3,t1,a3
1c00e956:	96c2                	add	a3,a3,a6
1c00e958:	01f35593          	srli	a1,t1,0x1f
1c00e95c:	0686                	slli	a3,a3,0x1
1c00e95e:	8ecd                	or	a3,a3,a1
1c00e960:	01c6d593          	srli	a1,a3,0x1c
1c00e964:	03058593          	addi	a1,a1,48
1c00e968:	00b784a3          	sb	a1,9(a5)
1c00e96c:	ff648c93          	addi	s9,s1,-10
1c00e970:	8ee9                	and	a3,a3,a0
1c00e972:	00131593          	slli	a1,t1,0x1
1c00e976:	00a78513          	addi	a0,a5,10
1c00e97a:	15905063          	blez	s9,1c00eaba <pos_libc_prf+0xb50>
1c00e97e:	00259513          	slli	a0,a1,0x2
1c00e982:	01e5d813          	srli	a6,a1,0x1e
1c00e986:	00269313          	slli	t1,a3,0x2
1c00e98a:	95aa                	add	a1,a1,a0
1c00e98c:	00686333          	or	t1,a6,t1
1c00e990:	969a                	add	a3,a3,t1
1c00e992:	00a5b833          	sltu	a6,a1,a0
1c00e996:	9836                	add	a6,a6,a3
1c00e998:	0806                	slli	a6,a6,0x1
1c00e99a:	01f5d693          	srli	a3,a1,0x1f
1c00e99e:	0106e833          	or	a6,a3,a6
1c00e9a2:	01c85313          	srli	t1,a6,0x1c
1c00e9a6:	03030313          	addi	t1,t1,48
1c00e9aa:	100006b7          	lui	a3,0x10000
1c00e9ae:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e9b2:	00678523          	sb	t1,10(a5)
1c00e9b6:	ff548c93          	addi	s9,s1,-11
1c00e9ba:	00159e13          	slli	t3,a1,0x1
1c00e9be:	00a87833          	and	a6,a6,a0
1c00e9c2:	01904463          	bgtz	s9,1c00e9ca <pos_libc_prf+0xa60>
1c00e9c6:	0fc0106f          	j	1c00fac2 <pos_libc_prf+0x1b58>
1c00e9ca:	00359693          	slli	a3,a1,0x3
1c00e9ce:	00281313          	slli	t1,a6,0x2
1c00e9d2:	01ee5e93          	srli	t4,t3,0x1e
1c00e9d6:	01c685b3          	add	a1,a3,t3
1c00e9da:	006ee333          	or	t1,t4,t1
1c00e9de:	981a                	add	a6,a6,t1
1c00e9e0:	00d5b6b3          	sltu	a3,a1,a3
1c00e9e4:	96c2                	add	a3,a3,a6
1c00e9e6:	0686                	slli	a3,a3,0x1
1c00e9e8:	01f5d813          	srli	a6,a1,0x1f
1c00e9ec:	00d866b3          	or	a3,a6,a3
1c00e9f0:	01c6d813          	srli	a6,a3,0x1c
1c00e9f4:	03080813          	addi	a6,a6,48
1c00e9f8:	010785a3          	sb	a6,11(a5)
1c00e9fc:	ff448c93          	addi	s9,s1,-12
1c00ea00:	00159313          	slli	t1,a1,0x1
1c00ea04:	8ee9                	and	a3,a3,a0
1c00ea06:	01904463          	bgtz	s9,1c00ea0e <pos_libc_prf+0xaa4>
1c00ea0a:	0b00106f          	j	1c00faba <pos_libc_prf+0x1b50>
1c00ea0e:	058e                	slli	a1,a1,0x3
1c00ea10:	01e35e13          	srli	t3,t1,0x1e
1c00ea14:	00269813          	slli	a6,a3,0x2
1c00ea18:	932e                	add	t1,t1,a1
1c00ea1a:	010e6833          	or	a6,t3,a6
1c00ea1e:	96c2                	add	a3,a3,a6
1c00ea20:	00b335b3          	sltu	a1,t1,a1
1c00ea24:	95b6                	add	a1,a1,a3
1c00ea26:	0586                	slli	a1,a1,0x1
1c00ea28:	01f35693          	srli	a3,t1,0x1f
1c00ea2c:	8dd5                	or	a1,a1,a3
1c00ea2e:	01c5d693          	srli	a3,a1,0x1c
1c00ea32:	03068693          	addi	a3,a3,48
1c00ea36:	00d78623          	sb	a3,12(a5)
1c00ea3a:	ff348c93          	addi	s9,s1,-13
1c00ea3e:	00131813          	slli	a6,t1,0x1
1c00ea42:	01904463          	bgtz	s9,1c00ea4a <pos_libc_prf+0xae0>
1c00ea46:	06c0106f          	j	1c00fab2 <pos_libc_prf+0x1b48>
1c00ea4a:	8de9                	and	a1,a1,a0
1c00ea4c:	00331693          	slli	a3,t1,0x3
1c00ea50:	01e85e13          	srli	t3,a6,0x1e
1c00ea54:	00259313          	slli	t1,a1,0x2
1c00ea58:	9836                	add	a6,a6,a3
1c00ea5a:	006e6333          	or	t1,t3,t1
1c00ea5e:	959a                	add	a1,a1,t1
1c00ea60:	00d836b3          	sltu	a3,a6,a3
1c00ea64:	96ae                	add	a3,a3,a1
1c00ea66:	0686                	slli	a3,a3,0x1
1c00ea68:	01f85593          	srli	a1,a6,0x1f
1c00ea6c:	8ecd                	or	a3,a3,a1
1c00ea6e:	01c6d593          	srli	a1,a3,0x1c
1c00ea72:	03058593          	addi	a1,a1,48
1c00ea76:	00b786a3          	sb	a1,13(a5)
1c00ea7a:	ff248c93          	addi	s9,s1,-14
1c00ea7e:	8ee9                	and	a3,a3,a0
1c00ea80:	00181593          	slli	a1,a6,0x1
1c00ea84:	00e78513          	addi	a0,a5,14
1c00ea88:	03905963          	blez	s9,1c00eaba <pos_libc_prf+0xb50>
1c00ea8c:	00381513          	slli	a0,a6,0x3
1c00ea90:	01e5d313          	srli	t1,a1,0x1e
1c00ea94:	00269813          	slli	a6,a3,0x2
1c00ea98:	95aa                	add	a1,a1,a0
1c00ea9a:	01036833          	or	a6,t1,a6
1c00ea9e:	00a5b5b3          	sltu	a1,a1,a0
1c00eaa2:	96c2                	add	a3,a3,a6
1c00eaa4:	96ae                	add	a3,a3,a1
1c00eaa6:	0686                	slli	a3,a3,0x1
1c00eaa8:	82f1                	srli	a3,a3,0x1c
1c00eaaa:	03068693          	addi	a3,a3,48
1c00eaae:	00f78513          	addi	a0,a5,15
1c00eab2:	00d78723          	sb	a3,14(a5)
1c00eab6:	ff148c93          	addi	s9,s1,-15
1c00eaba:	440f8563          	beqz	t6,1c00ef04 <pos_libc_prf+0xf9a>
1c00eabe:	4581                	li	a1,0
1c00eac0:	cc02                	sw	zero,24(sp)
1c00eac2:	4a01                	li	s4,0
1c00eac4:	03000813          	li	a6,48
1c00eac8:	a011                	j	1c00eacc <pos_libc_prf+0xb62>
1c00eaca:	853e                	mv	a0,a5
1c00eacc:	fff50793          	addi	a5,a0,-1
1c00ead0:	0007c683          	lbu	a3,0(a5)
1c00ead4:	ff068be3          	beq	a3,a6,1c00eaca <pos_libc_prf+0xb60>
1c00ead8:	02e00813          	li	a6,46
1c00eadc:	4c81                	li	s9,0
1c00eade:	01069363          	bne	a3,a6,1c00eae4 <pos_libc_prf+0xb7a>
1c00eae2:	853e                	mv	a0,a5
1c00eae4:	0dfdf793          	andi	a5,s11,223
1c00eae8:	04500693          	li	a3,69
1c00eaec:	3ad78e63          	beq	a5,a3,1c00eea8 <pos_libc_prf+0xf3e>
1c00eaf0:	4782                	lw	a5,0(sp)
1c00eaf2:	00050023          	sb	zero,0(a0)
1c00eaf6:	8d1d                	sub	a0,a0,a5
1c00eaf8:	4732                	lw	a4,12(sp)
1c00eafa:	2a071263          	bnez	a4,1c00ed9e <pos_libc_prf+0xe34>
1c00eafe:	47c2                	lw	a5,16(sp)
1c00eb00:	28079f63          	bnez	a5,1c00ed9e <pos_libc_prf+0xe34>
1c00eb04:	02414783          	lbu	a5,36(sp)
1c00eb08:	02d00693          	li	a3,45
1c00eb0c:	c202                	sw	zero,4(sp)
1c00eb0e:	28d78863          	beq	a5,a3,1c00ed9e <pos_libc_prf+0xe34>
1c00eb12:	fd078793          	addi	a5,a5,-48
1c00eb16:	46a5                	li	a3,9
1c00eb18:	00b50933          	add	s2,a0,a1
1c00eb1c:	a2f6f0e3          	bleu	a5,a3,1c00e53c <pos_libc_prf+0x5d2>
1c00eb20:	412b0b33          	sub	s6,s6,s2
1c00eb24:	1040                	addi	s0,sp,36
1c00eb26:	4481                	li	s1,0
1c00eb28:	ee6ff06f          	j	1c00e20e <pos_libc_prf+0x2a4>
1c00eb2c:	000a2783          	lw	a5,0(s4)
1c00eb30:	0a11                	addi	s4,s4,4
1c00eb32:	ce52                	sw	s4,28(sp)
1c00eb34:	02f10223          	sb	a5,36(sp)
1c00eb38:	1b7d                	addi	s6,s6,-1
1c00eb3a:	4481                	li	s1,0
1c00eb3c:	c202                	sw	zero,4(sp)
1c00eb3e:	4905                	li	s2,1
1c00eb40:	1040                	addi	s0,sp,36
1c00eb42:	ec6ff06f          	j	1c00e208 <pos_libc_prf+0x29e>
1c00eb46:	04c00613          	li	a2,76
1c00eb4a:	004a268b          	p.lw	a3,4(s4!)
1c00eb4e:	5ac78ee3          	beq	a5,a2,1c00f90a <pos_libc_prf+0x19a0>
1c00eb52:	28f65363          	ble	a5,a2,1c00edd8 <pos_libc_prf+0xe6e>
1c00eb56:	06800613          	li	a2,104
1c00eb5a:	00c78663          	beq	a5,a2,1c00eb66 <pos_libc_prf+0xbfc>
1c00eb5e:	0156a023          	sw	s5,0(a3)
1c00eb62:	c46ff06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00eb66:	87d6                	mv	a5,s5
1c00eb68:	00f69023          	sh	a5,0(a3)
1c00eb6c:	c3cff06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00eb70:	004a0793          	addi	a5,s4,4
1c00eb74:	7761                	lui	a4,0xffff8
1c00eb76:	02610593          	addi	a1,sp,38
1c00eb7a:	ce3e                	sw	a5,28(sp)
1c00eb7c:	83074713          	xori	a4,a4,-2000
1c00eb80:	000a2783          	lw	a5,0(s4)
1c00eb84:	4601                	li	a2,0
1c00eb86:	02e11223          	sh	a4,36(sp)
1c00eb8a:	86ae                	mv	a3,a1
1c00eb8c:	4ea5                	li	t4,9
1c00eb8e:	f647b733          	p.bclr	a4,a5,27,4
1c00eb92:	01c61513          	slli	a0,a2,0x1c
1c00eb96:	8391                	srli	a5,a5,0x4
1c00eb98:	8fc9                	or	a5,a5,a0
1c00eb9a:	8211                	srli	a2,a2,0x4
1c00eb9c:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c00eba0:	03070893          	addi	a7,a4,48
1c00eba4:	00c7e333          	or	t1,a5,a2
1c00eba8:	00eefa63          	bleu	a4,t4,1c00ebbc <pos_libc_prf+0xc52>
1c00ebac:	01c68023          	sb	t3,0(a3)
1c00ebb0:	00168513          	addi	a0,a3,1
1c00ebb4:	00030a63          	beqz	t1,1c00ebc8 <pos_libc_prf+0xc5e>
1c00ebb8:	86aa                	mv	a3,a0
1c00ebba:	bfd1                	j	1c00eb8e <pos_libc_prf+0xc24>
1c00ebbc:	01168023          	sb	a7,0(a3)
1c00ebc0:	00168513          	addi	a0,a3,1
1c00ebc4:	fe031ae3          	bnez	t1,1c00ebb8 <pos_libc_prf+0xc4e>
1c00ebc8:	00050023          	sb	zero,0(a0)
1c00ebcc:	8d0d                	sub	a0,a0,a1
1c00ebce:	00d5fe63          	bleu	a3,a1,1c00ebea <pos_libc_prf+0xc80>
1c00ebd2:	87b6                	mv	a5,a3
1c00ebd4:	86ae                	mv	a3,a1
1c00ebd6:	0006c603          	lbu	a2,0(a3)
1c00ebda:	0007c703          	lbu	a4,0(a5)
1c00ebde:	fec78fab          	p.sb	a2,-1(a5!)
1c00ebe2:	00e680ab          	p.sb	a4,1(a3!)
1c00ebe6:	fef6e8e3          	bltu	a3,a5,1c00ebd6 <pos_libc_prf+0xc6c>
1c00ebea:	4789                	li	a5,2
1c00ebec:	00250913          	addi	s2,a0,2
1c00ebf0:	c23e                	sw	a5,4(sp)
1c00ebf2:	dfcff06f          	j	1c00e1ee <pos_libc_prf+0x284>
1c00ebf6:	85de                	mv	a1,s7
1c00ebf8:	02500513          	li	a0,37
1c00ebfc:	9982                	jalr	s3
1c00ebfe:	cff52163          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00ec02:	85de                	mv	a1,s7
1c00ec04:	856e                	mv	a0,s11
1c00ec06:	9982                	jalr	s3
1c00ec08:	cdf52c63          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00ec0c:	0a89                	addi	s5,s5,2
1c00ec0e:	b9aff06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00ec12:	007a0893          	addi	a7,s4,7
1c00ec16:	c408b8b3          	p.bclr	a7,a7,2,0
1c00ec1a:	0008a783          	lw	a5,0(a7)
1c00ec1e:	0048a303          	lw	t1,4(a7)
1c00ec22:	0157d693          	srli	a3,a5,0x15
1c00ec26:	00b31513          	slli	a0,t1,0xb
1c00ec2a:	08a1                	addi	a7,a7,8
1c00ec2c:	01435813          	srli	a6,t1,0x14
1c00ec30:	8d55                	or	a0,a0,a3
1c00ec32:	ce46                	sw	a7,28(sp)
1c00ec34:	e8b83833          	p.bclr	a6,a6,20,11
1c00ec38:	00b79593          	slli	a1,a5,0xb
1c00ec3c:	c1f53533          	p.bclr	a0,a0,0,31
1c00ec40:	1e034e63          	bltz	t1,1c00ee3c <pos_libc_prf+0xed2>
1c00ec44:	47b2                	lw	a5,12(sp)
1c00ec46:	1c078f63          	beqz	a5,1c00ee24 <pos_libc_prf+0xeba>
1c00ec4a:	02b00793          	li	a5,43
1c00ec4e:	02f10223          	sb	a5,36(sp)
1c00ec52:	02510313          	addi	t1,sp,37
1c00ec56:	7ff00793          	li	a5,2047
1c00ec5a:	18f80863          	beq	a6,a5,1c00edea <pos_libc_prf+0xe80>
1c00ec5e:	04600793          	li	a5,70
1c00ec62:	0dfdfe13          	andi	t3,s11,223
1c00ec66:	32fd8e63          	beq	s11,a5,1c00efa2 <pos_libc_prf+0x1038>
1c00ec6a:	41f85693          	srai	a3,a6,0x1f
1c00ec6e:	00b867b3          	or	a5,a6,a1
1c00ec72:	8ec9                	or	a3,a3,a0
1c00ec74:	8fd5                	or	a5,a5,a3
1c00ec76:	8e0780e3          	beqz	a5,1c00e556 <pos_libc_prf+0x5ec>
1c00ec7a:	02081363          	bnez	a6,1c00eca0 <pos_libc_prf+0xd36>
1c00ec7e:	01f5d793          	srli	a5,a1,0x1f
1c00ec82:	00151693          	slli	a3,a0,0x1
1c00ec86:	00d7e533          	or	a0,a5,a3
1c00ec8a:	0586                	slli	a1,a1,0x1
1c00ec8c:	5a054fe3          	bltz	a0,1c00fa4a <pos_libc_prf+0x1ae0>
1c00ec90:	01f5d793          	srli	a5,a1,0x1f
1c00ec94:	0506                	slli	a0,a0,0x1
1c00ec96:	8d5d                	or	a0,a0,a5
1c00ec98:	187d                	addi	a6,a6,-1
1c00ec9a:	0586                	slli	a1,a1,0x1
1c00ec9c:	fe055ae3          	bgez	a0,1c00ec90 <pos_libc_prf+0xd26>
1c00eca0:	c0280813          	addi	a6,a6,-1022
1c00eca4:	57f9                	li	a5,-2
1c00eca6:	c1f54533          	p.bset	a0,a0,0,31
1c00ecaa:	4881                	li	a7,0
1c00ecac:	06f85763          	ble	a5,a6,1c00ed1a <pos_libc_prf+0xdb0>
1c00ecb0:	33333eb7          	lui	t4,0x33333
1c00ecb4:	80000f37          	lui	t5,0x80000
1c00ecb8:	4881                	li	a7,0
1c00ecba:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x17323132>
1c00ecbe:	ffff4f13          	not	t5,t5
1c00ecc2:	5ff9                	li	t6,-2
1c00ecc4:	a011                	j	1c00ecc8 <pos_libc_prf+0xd5e>
1c00ecc6:	883e                	mv	a6,a5
1c00ecc8:	01f51693          	slli	a3,a0,0x1f
1c00eccc:	0015d713          	srli	a4,a1,0x1
1c00ecd0:	fc15b7b3          	p.bclr	a5,a1,30,1
1c00ecd4:	8f55                	or	a4,a4,a3
1c00ecd6:	00e785b3          	add	a1,a5,a4
1c00ecda:	00f5b7b3          	sltu	a5,a1,a5
1c00ecde:	8105                	srli	a0,a0,0x1
1c00ece0:	953e                	add	a0,a0,a5
1c00ece2:	00180793          	addi	a5,a6,1
1c00ece6:	feaee0e3          	bltu	t4,a0,1c00ecc6 <pos_libc_prf+0xd5c>
1c00ecea:	00259693          	slli	a3,a1,0x2
1c00ecee:	01e5d613          	srli	a2,a1,0x1e
1c00ecf2:	00251713          	slli	a4,a0,0x2
1c00ecf6:	95b6                	add	a1,a1,a3
1c00ecf8:	8f51                	or	a4,a4,a2
1c00ecfa:	953a                	add	a0,a0,a4
1c00ecfc:	00d5b6b3          	sltu	a3,a1,a3
1c00ed00:	9536                	add	a0,a0,a3
1c00ed02:	01f5d713          	srli	a4,a1,0x1f
1c00ed06:	0809                	addi	a6,a6,2
1c00ed08:	18fd                	addi	a7,a7,-1
1c00ed0a:	01e51663          	bne	a0,t5,1c00ed16 <pos_libc_prf+0xdac>
1c00ed0e:	0586                	slli	a1,a1,0x1
1c00ed10:	fc174533          	p.bset	a0,a4,30,1
1c00ed14:	883e                	mv	a6,a5
1c00ed16:	fbf849e3          	blt	a6,t6,1c00ecc8 <pos_libc_prf+0xd5e>
1c00ed1a:	80000f37          	lui	t5,0x80000
1c00ed1e:	4f95                	li	t6,5
1c00ed20:	ffff4f13          	not	t5,t5
1c00ed24:	83005de3          	blez	a6,1c00e55e <pos_libc_prf+0x5f4>
1c00ed28:	00258693          	addi	a3,a1,2
1c00ed2c:	00b6b5b3          	sltu	a1,a3,a1
1c00ed30:	952e                	add	a0,a0,a1
1c00ed32:	03f557b3          	divu	a5,a0,t6
1c00ed36:	00279713          	slli	a4,a5,0x2
1c00ed3a:	973e                	add	a4,a4,a5
1c00ed3c:	8d19                	sub	a0,a0,a4
1c00ed3e:	01d51713          	slli	a4,a0,0x1d
1c00ed42:	0036d613          	srli	a2,a3,0x3
1c00ed46:	8e59                	or	a2,a2,a4
1c00ed48:	03f65633          	divu	a2,a2,t6
1c00ed4c:	00361593          	slli	a1,a2,0x3
1c00ed50:	00561713          	slli	a4,a2,0x5
1c00ed54:	972e                	add	a4,a4,a1
1c00ed56:	40e68733          	sub	a4,a3,a4
1c00ed5a:	03f75733          	divu	a4,a4,t6
1c00ed5e:	8275                	srli	a2,a2,0x1d
1c00ed60:	95ba                	add	a1,a1,a4
1c00ed62:	97b2                	add	a5,a5,a2
1c00ed64:	00e5b733          	sltu	a4,a1,a4
1c00ed68:	00f70533          	add	a0,a4,a5
1c00ed6c:	187d                	addi	a6,a6,-1
1c00ed6e:	0885                	addi	a7,a7,1
1c00ed70:	01f5d793          	srli	a5,a1,0x1f
1c00ed74:	0506                	slli	a0,a0,0x1
1c00ed76:	8d5d                	or	a0,a0,a5
1c00ed78:	0586                	slli	a1,a1,0x1
1c00ed7a:	187d                	addi	a6,a6,-1
1c00ed7c:	feaf7ae3          	bleu	a0,t5,1c00ed70 <pos_libc_prf+0xe06>
1c00ed80:	b755                	j	1c00ed24 <pos_libc_prf+0xdba>
1c00ed82:	001d4d83          	lbu	s11,1(s10)
1c00ed86:	04c00793          	li	a5,76
1c00ed8a:	0d09                	addi	s10,s10,2
1c00ed8c:	ad6ff06f          	j	1c00e062 <pos_libc_prf+0xf8>
1c00ed90:	001d4d83          	lbu	s11,1(s10)
1c00ed94:	04800793          	li	a5,72
1c00ed98:	0d09                	addi	s10,s10,2
1c00ed9a:	ac8ff06f          	j	1c00e062 <pos_libc_prf+0xf8>
1c00ed9e:	4705                	li	a4,1
1c00eda0:	02514783          	lbu	a5,37(sp)
1c00eda4:	c23a                	sw	a4,4(sp)
1c00eda6:	b3b5                	j	1c00eb12 <pos_libc_prf+0xba8>
1c00eda8:	004a0793          	addi	a5,s4,4
1c00edac:	ce3e                	sw	a5,28(sp)
1c00edae:	000a2403          	lw	s0,0(s4)
1c00edb2:	4c81                	li	s9,0
1c00edb4:	e92ff06f          	j	1c00e446 <pos_libc_prf+0x4dc>
1c00edb8:	4785                	li	a5,1
1c00edba:	c23e                	sw	a5,4(sp)
1c00edbc:	c32ff06f          	j	1c00e1ee <pos_libc_prf+0x284>
1c00edc0:	4742                	lw	a4,16(sp)
1c00edc2:	22070063          	beqz	a4,1c00efe2 <pos_libc_prf+0x1078>
1c00edc6:	02000693          	li	a3,32
1c00edca:	02d10223          	sb	a3,36(sp)
1c00edce:	4c92                	lw	s9,4(sp)
1c00edd0:	02510a13          	addi	s4,sp,37
1c00edd4:	bacff06f          	j	1c00e180 <pos_libc_prf+0x216>
1c00edd8:	04800613          	li	a2,72
1c00eddc:	d8c791e3          	bne	a5,a2,1c00eb5e <pos_libc_prf+0xbf4>
1c00ede0:	87d6                	mv	a5,s5
1c00ede2:	00f68023          	sb	a5,0(a3)
1c00ede6:	9c2ff06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00edea:	00a5e6b3          	or	a3,a1,a0
1c00edee:	fbfd8613          	addi	a2,s11,-65
1c00edf2:	00330513          	addi	a0,t1,3
1c00edf6:	47e5                	li	a5,25
1c00edf8:	16069963          	bnez	a3,1c00ef6a <pos_libc_prf+0x1000>
1c00edfc:	3ec7e1e3          	bltu	a5,a2,1c00f9de <pos_libc_prf+0x1a74>
1c00ee00:	6795                	lui	a5,0x5
1c00ee02:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c00ee06:	00f31023          	sh	a5,0(t1)
1c00ee0a:	04600793          	li	a5,70
1c00ee0e:	00f30123          	sb	a5,2(t1)
1c00ee12:	4782                	lw	a5,0(sp)
1c00ee14:	000301a3          	sb	zero,3(t1)
1c00ee18:	8d1d                	sub	a0,a0,a5
1c00ee1a:	4581                	li	a1,0
1c00ee1c:	4c81                	li	s9,0
1c00ee1e:	cc02                	sw	zero,24(sp)
1c00ee20:	4a01                	li	s4,0
1c00ee22:	b9d9                	j	1c00eaf8 <pos_libc_prf+0xb8e>
1c00ee24:	4742                	lw	a4,16(sp)
1c00ee26:	02410313          	addi	t1,sp,36
1c00ee2a:	e20706e3          	beqz	a4,1c00ec56 <pos_libc_prf+0xcec>
1c00ee2e:	02000793          	li	a5,32
1c00ee32:	02f10223          	sb	a5,36(sp)
1c00ee36:	02510313          	addi	t1,sp,37
1c00ee3a:	bd31                	j	1c00ec56 <pos_libc_prf+0xcec>
1c00ee3c:	02d00793          	li	a5,45
1c00ee40:	02f10223          	sb	a5,36(sp)
1c00ee44:	02510313          	addi	t1,sp,37
1c00ee48:	b539                	j	1c00ec56 <pos_libc_prf+0xcec>
1c00ee4a:	40f007b3          	neg	a5,a5
1c00ee4e:	00f036b3          	snez	a3,a5
1c00ee52:	40e00cb3          	neg	s9,a4
1c00ee56:	02d00613          	li	a2,45
1c00ee5a:	02c10223          	sb	a2,36(sp)
1c00ee5e:	40dc8cb3          	sub	s9,s9,a3
1c00ee62:	02510a13          	addi	s4,sp,37
1c00ee66:	b1aff06f          	j	1c00e180 <pos_libc_prf+0x216>
1c00ee6a:	56f5                	li	a3,-3
1c00ee6c:	0cd8c063          	blt	a7,a3,1c00ef2c <pos_libc_prf+0xfc2>
1c00ee70:	0b14ce63          	blt	s1,a7,1c00ef2c <pos_libc_prf+0xfc2>
1c00ee74:	4712                	lw	a4,4(sp)
1c00ee76:	411484b3          	sub	s1,s1,a7
1c00ee7a:	4f81                	li	t6,0
1c00ee7c:	e709                	bnez	a4,1c00ee86 <pos_libc_prf+0xf1c>
1c00ee7e:	00902fb3          	sgtz	t6,s1
1c00ee82:	0fffff93          	andi	t6,t6,255
1c00ee86:	009886b3          	add	a3,a7,s1
1c00ee8a:	2e06cae3          	bltz	a3,1c00f97e <pos_libc_prf+0x1a14>
1c00ee8e:	4741                	li	a4,16
1c00ee90:	04e6cf33          	p.min	t5,a3,a4
1c00ee94:	1f7d                	addi	t5,t5,-1
1c00ee96:	06600d93          	li	s11,102
1c00ee9a:	f0069a63          	bnez	a3,1c00e5ae <pos_libc_prf+0x644>
1c00ee9e:	4501                	li	a0,0
1c00eea0:	080006b7          	lui	a3,0x8000
1c00eea4:	f76ff06f          	j	1c00e61a <pos_libc_prf+0x6b0>
1c00eea8:	86aa                	mv	a3,a0
1c00eeaa:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c00eeae:	2408c6e3          	bltz	a7,1c00f8fa <pos_libc_prf+0x1990>
1c00eeb2:	02b00793          	li	a5,43
1c00eeb6:	00f500a3          	sb	a5,1(a0)
1c00eeba:	06300793          	li	a5,99
1c00eebe:	0117de63          	ble	a7,a5,1c00eeda <pos_libc_prf+0xf70>
1c00eec2:	06400693          	li	a3,100
1c00eec6:	02d8c7b3          	div	a5,a7,a3
1c00eeca:	03078793          	addi	a5,a5,48
1c00eece:	02d8e8b3          	rem	a7,a7,a3
1c00eed2:	00f50123          	sb	a5,2(a0)
1c00eed6:	00350693          	addi	a3,a0,3
1c00eeda:	47a9                	li	a5,10
1c00eedc:	02f8c633          	div	a2,a7,a5
1c00eee0:	02f8e7b3          	rem	a5,a7,a5
1c00eee4:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c00eee8:	8536                	mv	a0,a3
1c00eeea:	00c5012b          	p.sb	a2,2(a0!)
1c00eeee:	03078793          	addi	a5,a5,48
1c00eef2:	00f680a3          	sb	a5,1(a3)
1c00eef6:	beed                	j	1c00eaf0 <pos_libc_prf+0xb86>
1c00eef8:	800004b7          	lui	s1,0x80000
1c00eefc:	fff4c493          	not	s1,s1
1c00ef00:	c3cff06f          	j	1c00e33c <pos_libc_prf+0x3d2>
1c00ef04:	85e6                	mv	a1,s9
1c00ef06:	cc02                	sw	zero,24(sp)
1c00ef08:	4a01                	li	s4,0
1c00ef0a:	bee9                	j	1c00eae4 <pos_libc_prf+0xb7a>
1c00ef0c:	4901                	li	s2,0
1c00ef0e:	1054                	addi	a3,sp,36
1c00ef10:	d60ff06f          	j	1c00e470 <pos_libc_prf+0x506>
1c00ef14:	007a0793          	addi	a5,s4,7
1c00ef18:	c407b7b3          	p.bclr	a5,a5,2,0
1c00ef1c:	00878713          	addi	a4,a5,8
1c00ef20:	ce3a                	sw	a4,28(sp)
1c00ef22:	4380                	lw	s0,0(a5)
1c00ef24:	0047ac83          	lw	s9,4(a5)
1c00ef28:	d1eff06f          	j	1c00e446 <pos_libc_prf+0x4dc>
1c00ef2c:	ffed8613          	addi	a2,s11,-2
1c00ef30:	0ff67d93          	andi	s11,a2,255
1c00ef34:	220486e3          	beqz	s1,1c00f960 <pos_libc_prf+0x19f6>
1c00ef38:	4712                	lw	a4,4(sp)
1c00ef3a:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c00ef3e:	1e071fe3          	bnez	a4,1c00f93c <pos_libc_prf+0x19d2>
1c00ef42:	00d02fb3          	sgtz	t6,a3
1c00ef46:	0fffff93          	andi	t6,t6,255
1c00ef4a:	84b6                	mv	s1,a3
1c00ef4c:	e56ff06f          	j	1c00e5a2 <pos_libc_prf+0x638>
1c00ef50:	007a0693          	addi	a3,s4,7
1c00ef54:	c406b6b3          	p.bclr	a3,a3,2,0
1c00ef58:	00868793          	addi	a5,a3,8
1c00ef5c:	ce3e                	sw	a5,28(sp)
1c00ef5e:	429c                	lw	a5,0(a3)
1c00ef60:	42d4                	lw	a3,4(a3)
1c00ef62:	c236                	sw	a3,4(sp)
1c00ef64:	8736                	mv	a4,a3
1c00ef66:	a02ff06f          	j	1c00e168 <pos_libc_prf+0x1fe>
1c00ef6a:	24c7efe3          	bltu	a5,a2,1c00f9c8 <pos_libc_prf+0x1a5e>
1c00ef6e:	6791                	lui	a5,0x4
1c00ef70:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c00ef74:	00f31023          	sh	a5,0(t1)
1c00ef78:	04e00793          	li	a5,78
1c00ef7c:	00f30123          	sb	a5,2(t1)
1c00ef80:	bd49                	j	1c00ee12 <pos_libc_prf+0xea8>
1c00ef82:	02e00793          	li	a5,46
1c00ef86:	00f300a3          	sb	a5,1(t1)
1c00ef8a:	00230793          	addi	a5,t1,2
1c00ef8e:	f6904163          	bgtz	s1,1c00e6f0 <pos_libc_prf+0x786>
1c00ef92:	8ca6                	mv	s9,s1
1c00ef94:	853e                	mv	a0,a5
1c00ef96:	b615                	j	1c00eaba <pos_libc_prf+0xb50>
1c00ef98:	4481                	li	s1,0
1c00ef9a:	c202                	sw	zero,4(sp)
1c00ef9c:	4901                	li	s2,0
1c00ef9e:	a6aff06f          	j	1c00e208 <pos_libc_prf+0x29e>
1c00efa2:	04600e13          	li	t3,70
1c00efa6:	06600d93          	li	s11,102
1c00efaa:	b1c1                	j	1c00ec6a <pos_libc_prf+0xd00>
1c00efac:	105c                	addi	a5,sp,36
1c00efae:	4565                	li	a0,25
1c00efb0:	0017c70b          	p.lbu	a4,1(a5!)
1c00efb4:	f9f70693          	addi	a3,a4,-97
1c00efb8:	0ff6f693          	andi	a3,a3,255
1c00efbc:	fe070613          	addi	a2,a4,-32
1c00efc0:	00d56e63          	bltu	a0,a3,1c00efdc <pos_libc_prf+0x1072>
1c00efc4:	fec78fa3          	sb	a2,-1(a5)
1c00efc8:	0017c70b          	p.lbu	a4,1(a5!)
1c00efcc:	f9f70693          	addi	a3,a4,-97
1c00efd0:	0ff6f693          	andi	a3,a3,255
1c00efd4:	fe070613          	addi	a2,a4,-32
1c00efd8:	fed576e3          	bleu	a3,a0,1c00efc4 <pos_libc_prf+0x105a>
1c00efdc:	fb71                	bnez	a4,1c00efb0 <pos_libc_prf+0x1046>
1c00efde:	d4eff06f          	j	1c00e52c <pos_libc_prf+0x5c2>
1c00efe2:	4c92                	lw	s9,4(sp)
1c00efe4:	02410a13          	addi	s4,sp,36
1c00efe8:	998ff06f          	j	1c00e180 <pos_libc_prf+0x216>
1c00efec:	4922                	lw	s2,8(sp)
1c00efee:	8dd2                	mv	s11,s4
1c00eff0:	a029                	j	1c00effa <pos_libc_prf+0x1090>
1c00eff2:	9982                	jalr	s3
1c00eff4:	1dfd                	addi	s11,s11,-1
1c00eff6:	8ff52563          	p.beqimm	a0,-1,1c00e0e0 <pos_libc_prf+0x176>
1c00effa:	85de                	mv	a1,s7
1c00effc:	03000513          	li	a0,48
1c00f000:	ffb049e3          	bgtz	s11,1c00eff2 <pos_libc_prf+0x1088>
1c00f004:	41490933          	sub	s2,s2,s4
1c00f008:	a62ff06f          	j	1c00e26a <pos_libc_prf+0x300>
1c00f00c:	4712                	lw	a4,4(sp)
1c00f00e:	12070fe3          	beqz	a4,1c00f94c <pos_libc_prf+0x19e2>
1c00f012:	03000793          	li	a5,48
1c00f016:	02f10223          	sb	a5,36(sp)
1c00f01a:	019467b3          	or	a5,s0,s9
1c00f01e:	14078ae3          	beqz	a5,1c00f972 <pos_libc_prf+0x1a08>
1c00f022:	02510593          	addi	a1,sp,37
1c00f026:	4905                	li	s2,1
1c00f028:	86ae                	mv	a3,a1
1c00f02a:	87b6                	mv	a5,a3
1c00f02c:	a011                	j	1c00f030 <pos_libc_prf+0x10c6>
1c00f02e:	87b2                	mv	a5,a2
1c00f030:	01dc9613          	slli	a2,s9,0x1d
1c00f034:	f8343733          	p.bclr	a4,s0,28,3
1c00f038:	800d                	srli	s0,s0,0x3
1c00f03a:	8c51                	or	s0,s0,a2
1c00f03c:	03070713          	addi	a4,a4,48
1c00f040:	003cdc93          	srli	s9,s9,0x3
1c00f044:	00e78023          	sb	a4,0(a5)
1c00f048:	01946733          	or	a4,s0,s9
1c00f04c:	00178613          	addi	a2,a5,1
1c00f050:	ff79                	bnez	a4,1c00f02e <pos_libc_prf+0x10c4>
1c00f052:	00060023          	sb	zero,0(a2)
1c00f056:	8e0d                	sub	a2,a2,a1
1c00f058:	00f6fc63          	bleu	a5,a3,1c00f070 <pos_libc_prf+0x1106>
1c00f05c:	0006c583          	lbu	a1,0(a3)
1c00f060:	0007c703          	lbu	a4,0(a5)
1c00f064:	feb78fab          	p.sb	a1,-1(a5!)
1c00f068:	00e680ab          	p.sb	a4,1(a3!)
1c00f06c:	fef6e8e3          	bltu	a3,a5,1c00f05c <pos_libc_prf+0x10f2>
1c00f070:	9932                	add	s2,s2,a2
1c00f072:	c202                	sw	zero,4(sp)
1c00f074:	97aff06f          	j	1c00e1ee <pos_libc_prf+0x284>
1c00f078:	111057e3          	blez	a7,1c00f986 <pos_libc_prf+0x1a1c>
1c00f07c:	00279e13          	slli	t3,a5,0x2
1c00f080:	01e7df13          	srli	t5,a5,0x1e
1c00f084:	00269e93          	slli	t4,a3,0x2
1c00f088:	00fe05b3          	add	a1,t3,a5
1c00f08c:	01df6eb3          	or	t4,t5,t4
1c00f090:	9eb6                	add	t4,t4,a3
1c00f092:	01c5b6b3          	sltu	a3,a1,t3
1c00f096:	96f6                	add	a3,a3,t4
1c00f098:	01f5d793          	srli	a5,a1,0x1f
1c00f09c:	0686                	slli	a3,a3,0x1
1c00f09e:	8edd                	or	a3,a3,a5
1c00f0a0:	01c6d793          	srli	a5,a3,0x1c
1c00f0a4:	03078793          	addi	a5,a5,48
1c00f0a8:	10000e37          	lui	t3,0x10000
1c00f0ac:	1e7d                	addi	t3,t3,-1
1c00f0ae:	00f30023          	sb	a5,0(t1)
1c00f0b2:	01c6f6b3          	and	a3,a3,t3
1c00f0b6:	00159793          	slli	a5,a1,0x1
1c00f0ba:	1618aee3          	p.beqimm	a7,1,1c00fa36 <pos_libc_prf+0x1acc>
1c00f0be:	01e7df13          	srli	t5,a5,0x1e
1c00f0c2:	00269e93          	slli	t4,a3,0x2
1c00f0c6:	058e                	slli	a1,a1,0x3
1c00f0c8:	00f58533          	add	a0,a1,a5
1c00f0cc:	01df6eb3          	or	t4,t5,t4
1c00f0d0:	9eb6                	add	t4,t4,a3
1c00f0d2:	00b536b3          	sltu	a3,a0,a1
1c00f0d6:	96f6                	add	a3,a3,t4
1c00f0d8:	01f55793          	srli	a5,a0,0x1f
1c00f0dc:	0686                	slli	a3,a3,0x1
1c00f0de:	8edd                	or	a3,a3,a5
1c00f0e0:	01c6d793          	srli	a5,a3,0x1c
1c00f0e4:	03078793          	addi	a5,a5,48
1c00f0e8:	00f300a3          	sb	a5,1(t1)
1c00f0ec:	01c6f6b3          	and	a3,a3,t3
1c00f0f0:	00151793          	slli	a5,a0,0x1
1c00f0f4:	1628a3e3          	p.beqimm	a7,2,1c00fa5a <pos_libc_prf+0x1af0>
1c00f0f8:	01e7df13          	srli	t5,a5,0x1e
1c00f0fc:	00269e93          	slli	t4,a3,0x2
1c00f100:	050e                	slli	a0,a0,0x3
1c00f102:	00f505b3          	add	a1,a0,a5
1c00f106:	01df6eb3          	or	t4,t5,t4
1c00f10a:	9eb6                	add	t4,t4,a3
1c00f10c:	00a5b6b3          	sltu	a3,a1,a0
1c00f110:	96f6                	add	a3,a3,t4
1c00f112:	01f5d793          	srli	a5,a1,0x1f
1c00f116:	0686                	slli	a3,a3,0x1
1c00f118:	8edd                	or	a3,a3,a5
1c00f11a:	01c6d793          	srli	a5,a3,0x1c
1c00f11e:	03078793          	addi	a5,a5,48
1c00f122:	00f30123          	sb	a5,2(t1)
1c00f126:	ffd88a13          	addi	s4,a7,-3
1c00f12a:	00159793          	slli	a5,a1,0x1
1c00f12e:	01c6f6b3          	and	a3,a3,t3
1c00f132:	134050e3          	blez	s4,1c00fa52 <pos_libc_prf+0x1ae8>
1c00f136:	01e7df13          	srli	t5,a5,0x1e
1c00f13a:	00269e93          	slli	t4,a3,0x2
1c00f13e:	058e                	slli	a1,a1,0x3
1c00f140:	00f58533          	add	a0,a1,a5
1c00f144:	01df6eb3          	or	t4,t5,t4
1c00f148:	9eb6                	add	t4,t4,a3
1c00f14a:	00b536b3          	sltu	a3,a0,a1
1c00f14e:	96f6                	add	a3,a3,t4
1c00f150:	01f55793          	srli	a5,a0,0x1f
1c00f154:	0686                	slli	a3,a3,0x1
1c00f156:	8edd                	or	a3,a3,a5
1c00f158:	01c6d793          	srli	a5,a3,0x1c
1c00f15c:	03078793          	addi	a5,a5,48
1c00f160:	00f301a3          	sb	a5,3(t1)
1c00f164:	ffc88a13          	addi	s4,a7,-4
1c00f168:	00151793          	slli	a5,a0,0x1
1c00f16c:	01c6f6b3          	and	a3,a3,t3
1c00f170:	134056e3          	blez	s4,1c00fa9c <pos_libc_prf+0x1b32>
1c00f174:	01e7df13          	srli	t5,a5,0x1e
1c00f178:	00269e93          	slli	t4,a3,0x2
1c00f17c:	050e                	slli	a0,a0,0x3
1c00f17e:	00f505b3          	add	a1,a0,a5
1c00f182:	01df6eb3          	or	t4,t5,t4
1c00f186:	9eb6                	add	t4,t4,a3
1c00f188:	00a5b6b3          	sltu	a3,a1,a0
1c00f18c:	96f6                	add	a3,a3,t4
1c00f18e:	01f5d793          	srli	a5,a1,0x1f
1c00f192:	0686                	slli	a3,a3,0x1
1c00f194:	8edd                	or	a3,a3,a5
1c00f196:	01c6d793          	srli	a5,a3,0x1c
1c00f19a:	03078793          	addi	a5,a5,48
1c00f19e:	00f30223          	sb	a5,4(t1)
1c00f1a2:	ffb88a13          	addi	s4,a7,-5
1c00f1a6:	00159793          	slli	a5,a1,0x1
1c00f1aa:	01c6f6b3          	and	a3,a3,t3
1c00f1ae:	0f4053e3          	blez	s4,1c00fa94 <pos_libc_prf+0x1b2a>
1c00f1b2:	01e7df13          	srli	t5,a5,0x1e
1c00f1b6:	00269e93          	slli	t4,a3,0x2
1c00f1ba:	058e                	slli	a1,a1,0x3
1c00f1bc:	00f58533          	add	a0,a1,a5
1c00f1c0:	01df6eb3          	or	t4,t5,t4
1c00f1c4:	9eb6                	add	t4,t4,a3
1c00f1c6:	00b536b3          	sltu	a3,a0,a1
1c00f1ca:	96f6                	add	a3,a3,t4
1c00f1cc:	01f55793          	srli	a5,a0,0x1f
1c00f1d0:	0686                	slli	a3,a3,0x1
1c00f1d2:	8edd                	or	a3,a3,a5
1c00f1d4:	01c6d793          	srli	a5,a3,0x1c
1c00f1d8:	03078793          	addi	a5,a5,48
1c00f1dc:	00f302a3          	sb	a5,5(t1)
1c00f1e0:	ffa88a13          	addi	s4,a7,-6
1c00f1e4:	00151793          	slli	a5,a0,0x1
1c00f1e8:	01c6f6b3          	and	a3,a3,t3
1c00f1ec:	0b4050e3          	blez	s4,1c00fa8c <pos_libc_prf+0x1b22>
1c00f1f0:	01e7df13          	srli	t5,a5,0x1e
1c00f1f4:	00269e93          	slli	t4,a3,0x2
1c00f1f8:	050e                	slli	a0,a0,0x3
1c00f1fa:	00f505b3          	add	a1,a0,a5
1c00f1fe:	01df6eb3          	or	t4,t5,t4
1c00f202:	9eb6                	add	t4,t4,a3
1c00f204:	00a5b6b3          	sltu	a3,a1,a0
1c00f208:	96f6                	add	a3,a3,t4
1c00f20a:	01f5d793          	srli	a5,a1,0x1f
1c00f20e:	0686                	slli	a3,a3,0x1
1c00f210:	8edd                	or	a3,a3,a5
1c00f212:	01c6d793          	srli	a5,a3,0x1c
1c00f216:	03078793          	addi	a5,a5,48
1c00f21a:	00f30323          	sb	a5,6(t1)
1c00f21e:	ff988a13          	addi	s4,a7,-7
1c00f222:	00159793          	slli	a5,a1,0x1
1c00f226:	01c6f6b3          	and	a3,a3,t3
1c00f22a:	05405de3          	blez	s4,1c00fa84 <pos_libc_prf+0x1b1a>
1c00f22e:	058e                	slli	a1,a1,0x3
1c00f230:	01e7de93          	srli	t4,a5,0x1e
1c00f234:	00269513          	slli	a0,a3,0x2
1c00f238:	97ae                	add	a5,a5,a1
1c00f23a:	00aee533          	or	a0,t4,a0
1c00f23e:	9536                	add	a0,a0,a3
1c00f240:	00b7b6b3          	sltu	a3,a5,a1
1c00f244:	96aa                	add	a3,a3,a0
1c00f246:	01f7d593          	srli	a1,a5,0x1f
1c00f24a:	0686                	slli	a3,a3,0x1
1c00f24c:	8ecd                	or	a3,a3,a1
1c00f24e:	01c6d593          	srli	a1,a3,0x1c
1c00f252:	03058593          	addi	a1,a1,48
1c00f256:	0786                	slli	a5,a5,0x1
1c00f258:	00b303a3          	sb	a1,7(t1)
1c00f25c:	ff888a13          	addi	s4,a7,-8
1c00f260:	85be                	mv	a1,a5
1c00f262:	01c6f6b3          	and	a3,a3,t3
1c00f266:	01405be3          	blez	s4,1c00fa7c <pos_libc_prf+0x1b12>
1c00f26a:	078a                	slli	a5,a5,0x2
1c00f26c:	01e5de13          	srli	t3,a1,0x1e
1c00f270:	00269513          	slli	a0,a3,0x2
1c00f274:	95be                	add	a1,a1,a5
1c00f276:	00ae6533          	or	a0,t3,a0
1c00f27a:	9536                	add	a0,a0,a3
1c00f27c:	00f5b6b3          	sltu	a3,a1,a5
1c00f280:	96aa                	add	a3,a3,a0
1c00f282:	01f5d793          	srli	a5,a1,0x1f
1c00f286:	0686                	slli	a3,a3,0x1
1c00f288:	8edd                	or	a3,a3,a5
1c00f28a:	01c6d793          	srli	a5,a3,0x1c
1c00f28e:	03078793          	addi	a5,a5,48
1c00f292:	10000e37          	lui	t3,0x10000
1c00f296:	1e7d                	addi	t3,t3,-1
1c00f298:	00f30423          	sb	a5,8(t1)
1c00f29c:	ff788a13          	addi	s4,a7,-9
1c00f2a0:	00159793          	slli	a5,a1,0x1
1c00f2a4:	01c6f6b3          	and	a3,a3,t3
1c00f2a8:	7d405663          	blez	s4,1c00fa74 <pos_libc_prf+0x1b0a>
1c00f2ac:	01e7df13          	srli	t5,a5,0x1e
1c00f2b0:	00269e93          	slli	t4,a3,0x2
1c00f2b4:	058e                	slli	a1,a1,0x3
1c00f2b6:	00f58533          	add	a0,a1,a5
1c00f2ba:	01df6eb3          	or	t4,t5,t4
1c00f2be:	9eb6                	add	t4,t4,a3
1c00f2c0:	00b536b3          	sltu	a3,a0,a1
1c00f2c4:	96f6                	add	a3,a3,t4
1c00f2c6:	01f55793          	srli	a5,a0,0x1f
1c00f2ca:	0686                	slli	a3,a3,0x1
1c00f2cc:	8edd                	or	a3,a3,a5
1c00f2ce:	01c6d793          	srli	a5,a3,0x1c
1c00f2d2:	03078793          	addi	a5,a5,48
1c00f2d6:	00f304a3          	sb	a5,9(t1)
1c00f2da:	ff688a13          	addi	s4,a7,-10
1c00f2de:	00151793          	slli	a5,a0,0x1
1c00f2e2:	01c6f6b3          	and	a3,a3,t3
1c00f2e6:	79405363          	blez	s4,1c00fa6c <pos_libc_prf+0x1b02>
1c00f2ea:	01e7df13          	srli	t5,a5,0x1e
1c00f2ee:	00269e93          	slli	t4,a3,0x2
1c00f2f2:	050e                	slli	a0,a0,0x3
1c00f2f4:	00f505b3          	add	a1,a0,a5
1c00f2f8:	01df6eb3          	or	t4,t5,t4
1c00f2fc:	9eb6                	add	t4,t4,a3
1c00f2fe:	00a5b6b3          	sltu	a3,a1,a0
1c00f302:	96f6                	add	a3,a3,t4
1c00f304:	01f5d793          	srli	a5,a1,0x1f
1c00f308:	0686                	slli	a3,a3,0x1
1c00f30a:	8edd                	or	a3,a3,a5
1c00f30c:	01c6d793          	srli	a5,a3,0x1c
1c00f310:	03078793          	addi	a5,a5,48
1c00f314:	00f30523          	sb	a5,10(t1)
1c00f318:	ff588a13          	addi	s4,a7,-11
1c00f31c:	00159793          	slli	a5,a1,0x1
1c00f320:	01c6f6b3          	and	a3,a3,t3
1c00f324:	75405063          	blez	s4,1c00fa64 <pos_libc_prf+0x1afa>
1c00f328:	01e7df13          	srli	t5,a5,0x1e
1c00f32c:	00269e93          	slli	t4,a3,0x2
1c00f330:	058e                	slli	a1,a1,0x3
1c00f332:	00f58533          	add	a0,a1,a5
1c00f336:	01df6eb3          	or	t4,t5,t4
1c00f33a:	9eb6                	add	t4,t4,a3
1c00f33c:	00b536b3          	sltu	a3,a0,a1
1c00f340:	96f6                	add	a3,a3,t4
1c00f342:	01f55793          	srli	a5,a0,0x1f
1c00f346:	0686                	slli	a3,a3,0x1
1c00f348:	8edd                	or	a3,a3,a5
1c00f34a:	01c6d793          	srli	a5,a3,0x1c
1c00f34e:	03078793          	addi	a5,a5,48
1c00f352:	00f305a3          	sb	a5,11(t1)
1c00f356:	ff488a13          	addi	s4,a7,-12
1c00f35a:	00151793          	slli	a5,a0,0x1
1c00f35e:	01c6f6b3          	and	a3,a3,t3
1c00f362:	6f405163          	blez	s4,1c00fa44 <pos_libc_prf+0x1ada>
1c00f366:	050e                	slli	a0,a0,0x3
1c00f368:	01e7de93          	srli	t4,a5,0x1e
1c00f36c:	00269813          	slli	a6,a3,0x2
1c00f370:	00f505b3          	add	a1,a0,a5
1c00f374:	010ee833          	or	a6,t4,a6
1c00f378:	9836                	add	a6,a6,a3
1c00f37a:	00a5b6b3          	sltu	a3,a1,a0
1c00f37e:	96c2                	add	a3,a3,a6
1c00f380:	01f5d793          	srli	a5,a1,0x1f
1c00f384:	0686                	slli	a3,a3,0x1
1c00f386:	8edd                	or	a3,a3,a5
1c00f388:	01c6d793          	srli	a5,a3,0x1c
1c00f38c:	03078793          	addi	a5,a5,48
1c00f390:	00f30623          	sb	a5,12(t1)
1c00f394:	ff388a13          	addi	s4,a7,-13
1c00f398:	00159793          	slli	a5,a1,0x1
1c00f39c:	01c6f6b3          	and	a3,a3,t3
1c00f3a0:	00d30513          	addi	a0,t1,13
1c00f3a4:	480d                	li	a6,3
1c00f3a6:	0d405163          	blez	s4,1c00f468 <pos_libc_prf+0x14fe>
1c00f3aa:	01e7de93          	srli	t4,a5,0x1e
1c00f3ae:	00269813          	slli	a6,a3,0x2
1c00f3b2:	058e                	slli	a1,a1,0x3
1c00f3b4:	00f58533          	add	a0,a1,a5
1c00f3b8:	010ee833          	or	a6,t4,a6
1c00f3bc:	9836                	add	a6,a6,a3
1c00f3be:	00b536b3          	sltu	a3,a0,a1
1c00f3c2:	96c2                	add	a3,a3,a6
1c00f3c4:	01f55793          	srli	a5,a0,0x1f
1c00f3c8:	0686                	slli	a3,a3,0x1
1c00f3ca:	8edd                	or	a3,a3,a5
1c00f3cc:	01c6d793          	srli	a5,a3,0x1c
1c00f3d0:	03078793          	addi	a5,a5,48
1c00f3d4:	00f306a3          	sb	a5,13(t1)
1c00f3d8:	ff288a13          	addi	s4,a7,-14
1c00f3dc:	00151793          	slli	a5,a0,0x1
1c00f3e0:	01c6f6b3          	and	a3,a3,t3
1c00f3e4:	65405c63          	blez	s4,1c00fa3c <pos_libc_prf+0x1ad2>
1c00f3e8:	050e                	slli	a0,a0,0x3
1c00f3ea:	01e7de93          	srli	t4,a5,0x1e
1c00f3ee:	00269813          	slli	a6,a3,0x2
1c00f3f2:	00f505b3          	add	a1,a0,a5
1c00f3f6:	010ee833          	or	a6,t4,a6
1c00f3fa:	9836                	add	a6,a6,a3
1c00f3fc:	00a5b6b3          	sltu	a3,a1,a0
1c00f400:	96c2                	add	a3,a3,a6
1c00f402:	01f5d793          	srli	a5,a1,0x1f
1c00f406:	0686                	slli	a3,a3,0x1
1c00f408:	8edd                	or	a3,a3,a5
1c00f40a:	01c6d793          	srli	a5,a3,0x1c
1c00f40e:	03078793          	addi	a5,a5,48
1c00f412:	00f30723          	sb	a5,14(t1)
1c00f416:	ff188a13          	addi	s4,a7,-15
1c00f41a:	00159793          	slli	a5,a1,0x1
1c00f41e:	01c6f6b3          	and	a3,a3,t3
1c00f422:	00f30513          	addi	a0,t1,15
1c00f426:	4805                	li	a6,1
1c00f428:	05405063          	blez	s4,1c00f468 <pos_libc_prf+0x14fe>
1c00f42c:	01e7d813          	srli	a6,a5,0x1e
1c00f430:	058e                	slli	a1,a1,0x3
1c00f432:	00269513          	slli	a0,a3,0x2
1c00f436:	97ae                	add	a5,a5,a1
1c00f438:	00a86533          	or	a0,a6,a0
1c00f43c:	9536                	add	a0,a0,a3
1c00f43e:	00b7b6b3          	sltu	a3,a5,a1
1c00f442:	96aa                	add	a3,a3,a0
1c00f444:	01f7d593          	srli	a1,a5,0x1f
1c00f448:	0686                	slli	a3,a3,0x1
1c00f44a:	8ecd                	or	a3,a3,a1
1c00f44c:	01c6d593          	srli	a1,a3,0x1c
1c00f450:	03058593          	addi	a1,a1,48
1c00f454:	01030513          	addi	a0,t1,16
1c00f458:	0786                	slli	a5,a5,0x1
1c00f45a:	01c6f6b3          	and	a3,a3,t3
1c00f45e:	00b307a3          	sb	a1,15(t1)
1c00f462:	ff088a13          	addi	s4,a7,-16
1c00f466:	4801                	li	a6,0
1c00f468:	4712                	lw	a4,4(sp)
1c00f46a:	4e070663          	beqz	a4,1c00f956 <pos_libc_prf+0x19ec>
1c00f46e:	02e00893          	li	a7,46
1c00f472:	01150023          	sb	a7,0(a0)
1c00f476:	8326                	mv	t1,s1
1c00f478:	cc02                	sw	zero,24(sp)
1c00f47a:	00150593          	addi	a1,a0,1
1c00f47e:	4881                	li	a7,0
1c00f480:	62605263          	blez	t1,1c00faa4 <pos_libc_prf+0x1b3a>
1c00f484:	62080063          	beqz	a6,1c00faa4 <pos_libc_prf+0x1b3a>
1c00f488:	00279513          	slli	a0,a5,0x2
1c00f48c:	01e7de93          	srli	t4,a5,0x1e
1c00f490:	00269e13          	slli	t3,a3,0x2
1c00f494:	97aa                	add	a5,a5,a0
1c00f496:	01ceee33          	or	t3,t4,t3
1c00f49a:	96f2                	add	a3,a3,t3
1c00f49c:	00a7beb3          	sltu	t4,a5,a0
1c00f4a0:	9eb6                	add	t4,t4,a3
1c00f4a2:	0e86                	slli	t4,t4,0x1
1c00f4a4:	01f7d693          	srli	a3,a5,0x1f
1c00f4a8:	01d6eeb3          	or	t4,a3,t4
1c00f4ac:	01ced693          	srli	a3,t4,0x1c
1c00f4b0:	03068693          	addi	a3,a3,48
1c00f4b4:	00d58023          	sb	a3,0(a1)
1c00f4b8:	fff30493          	addi	s1,t1,-1
1c00f4bc:	00158513          	addi	a0,a1,1
1c00f4c0:	00179693          	slli	a3,a5,0x1
1c00f4c4:	42048263          	beqz	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f4c8:	42182063          	p.beqimm	a6,1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f4cc:	10000e37          	lui	t3,0x10000
1c00f4d0:	1e7d                	addi	t3,t3,-1
1c00f4d2:	01cefeb3          	and	t4,t4,t3
1c00f4d6:	078e                	slli	a5,a5,0x3
1c00f4d8:	01e6df13          	srli	t5,a3,0x1e
1c00f4dc:	002e9513          	slli	a0,t4,0x2
1c00f4e0:	96be                	add	a3,a3,a5
1c00f4e2:	00af6533          	or	a0,t5,a0
1c00f4e6:	9eaa                	add	t4,t4,a0
1c00f4e8:	00f6b7b3          	sltu	a5,a3,a5
1c00f4ec:	97f6                	add	a5,a5,t4
1c00f4ee:	01f6d513          	srli	a0,a3,0x1f
1c00f4f2:	0786                	slli	a5,a5,0x1
1c00f4f4:	8fc9                	or	a5,a5,a0
1c00f4f6:	01c7d513          	srli	a0,a5,0x1c
1c00f4fa:	03050513          	addi	a0,a0,48
1c00f4fe:	00a580a3          	sb	a0,1(a1)
1c00f502:	ffe30493          	addi	s1,t1,-2
1c00f506:	00258513          	addi	a0,a1,2
1c00f50a:	00169e93          	slli	t4,a3,0x1
1c00f50e:	01c7f7b3          	and	a5,a5,t3
1c00f512:	3c048b63          	beqz	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f516:	3c282963          	p.beqimm	a6,2,1c00f8e8 <pos_libc_prf+0x197e>
1c00f51a:	01eedf13          	srli	t5,t4,0x1e
1c00f51e:	068e                	slli	a3,a3,0x3
1c00f520:	00279513          	slli	a0,a5,0x2
1c00f524:	9eb6                	add	t4,t4,a3
1c00f526:	00af6533          	or	a0,t5,a0
1c00f52a:	00deb6b3          	sltu	a3,t4,a3
1c00f52e:	97aa                	add	a5,a5,a0
1c00f530:	97b6                	add	a5,a5,a3
1c00f532:	0786                	slli	a5,a5,0x1
1c00f534:	01fed693          	srli	a3,t4,0x1f
1c00f538:	8fd5                	or	a5,a5,a3
1c00f53a:	01c7d693          	srli	a3,a5,0x1c
1c00f53e:	03068693          	addi	a3,a3,48
1c00f542:	00d58123          	sb	a3,2(a1)
1c00f546:	ffd30493          	addi	s1,t1,-3
1c00f54a:	00358513          	addi	a0,a1,3
1c00f54e:	001e9693          	slli	a3,t4,0x1
1c00f552:	01c7ff33          	and	t5,a5,t3
1c00f556:	38905963          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f55a:	38382763          	p.beqimm	a6,3,1c00f8e8 <pos_libc_prf+0x197e>
1c00f55e:	003e9513          	slli	a0,t4,0x3
1c00f562:	01e6d793          	srli	a5,a3,0x1e
1c00f566:	002f1e93          	slli	t4,t5,0x2
1c00f56a:	96aa                	add	a3,a3,a0
1c00f56c:	01d7eeb3          	or	t4,a5,t4
1c00f570:	9efa                	add	t4,t4,t5
1c00f572:	00a6b7b3          	sltu	a5,a3,a0
1c00f576:	97f6                	add	a5,a5,t4
1c00f578:	01f6d513          	srli	a0,a3,0x1f
1c00f57c:	0786                	slli	a5,a5,0x1
1c00f57e:	8fc9                	or	a5,a5,a0
1c00f580:	01c7d513          	srli	a0,a5,0x1c
1c00f584:	03050513          	addi	a0,a0,48
1c00f588:	00a581a3          	sb	a0,3(a1)
1c00f58c:	ffc30493          	addi	s1,t1,-4
1c00f590:	00458513          	addi	a0,a1,4
1c00f594:	00169e93          	slli	t4,a3,0x1
1c00f598:	01c7fe33          	and	t3,a5,t3
1c00f59c:	34905663          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f5a0:	34482463          	p.beqimm	a6,4,1c00f8e8 <pos_libc_prf+0x197e>
1c00f5a4:	068e                	slli	a3,a3,0x3
1c00f5a6:	01eed793          	srli	a5,t4,0x1e
1c00f5aa:	002e1513          	slli	a0,t3,0x2
1c00f5ae:	9eb6                	add	t4,t4,a3
1c00f5b0:	8d5d                	or	a0,a0,a5
1c00f5b2:	9e2a                	add	t3,t3,a0
1c00f5b4:	00deb7b3          	sltu	a5,t4,a3
1c00f5b8:	97f2                	add	a5,a5,t3
1c00f5ba:	01fed693          	srli	a3,t4,0x1f
1c00f5be:	0786                	slli	a5,a5,0x1
1c00f5c0:	8fd5                	or	a5,a5,a3
1c00f5c2:	01c7d693          	srli	a3,a5,0x1c
1c00f5c6:	03068693          	addi	a3,a3,48
1c00f5ca:	00d58223          	sb	a3,4(a1)
1c00f5ce:	ffb30493          	addi	s1,t1,-5
1c00f5d2:	00558513          	addi	a0,a1,5
1c00f5d6:	001e9693          	slli	a3,t4,0x1
1c00f5da:	30905763          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f5de:	30582563          	p.beqimm	a6,5,1c00f8e8 <pos_libc_prf+0x197e>
1c00f5e2:	10000e37          	lui	t3,0x10000
1c00f5e6:	1e7d                	addi	t3,t3,-1
1c00f5e8:	01c7f7b3          	and	a5,a5,t3
1c00f5ec:	01e6de93          	srli	t4,a3,0x1e
1c00f5f0:	00269513          	slli	a0,a3,0x2
1c00f5f4:	00279f13          	slli	t5,a5,0x2
1c00f5f8:	96aa                	add	a3,a3,a0
1c00f5fa:	01eeef33          	or	t5,t4,t5
1c00f5fe:	00a6b533          	sltu	a0,a3,a0
1c00f602:	97fa                	add	a5,a5,t5
1c00f604:	97aa                	add	a5,a5,a0
1c00f606:	00179e93          	slli	t4,a5,0x1
1c00f60a:	01f6d513          	srli	a0,a3,0x1f
1c00f60e:	01d56eb3          	or	t4,a0,t4
1c00f612:	01ced793          	srli	a5,t4,0x1c
1c00f616:	03078793          	addi	a5,a5,48
1c00f61a:	00f582a3          	sb	a5,5(a1)
1c00f61e:	ffa30493          	addi	s1,t1,-6
1c00f622:	00658513          	addi	a0,a1,6
1c00f626:	00169793          	slli	a5,a3,0x1
1c00f62a:	01cefeb3          	and	t4,t4,t3
1c00f62e:	2a905d63          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f632:	2a682b63          	p.beqimm	a6,6,1c00f8e8 <pos_libc_prf+0x197e>
1c00f636:	068e                	slli	a3,a3,0x3
1c00f638:	01e7df13          	srli	t5,a5,0x1e
1c00f63c:	002e9513          	slli	a0,t4,0x2
1c00f640:	97b6                	add	a5,a5,a3
1c00f642:	00af6533          	or	a0,t5,a0
1c00f646:	9eaa                	add	t4,t4,a0
1c00f648:	00d7b6b3          	sltu	a3,a5,a3
1c00f64c:	96f6                	add	a3,a3,t4
1c00f64e:	01f7d513          	srli	a0,a5,0x1f
1c00f652:	00169e93          	slli	t4,a3,0x1
1c00f656:	01d56eb3          	or	t4,a0,t4
1c00f65a:	01ced693          	srli	a3,t4,0x1c
1c00f65e:	03068693          	addi	a3,a3,48
1c00f662:	00d58323          	sb	a3,6(a1)
1c00f666:	ff930493          	addi	s1,t1,-7
1c00f66a:	00758513          	addi	a0,a1,7
1c00f66e:	00179693          	slli	a3,a5,0x1
1c00f672:	01cefeb3          	and	t4,t4,t3
1c00f676:	26905963          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f67a:	26782763          	p.beqimm	a6,7,1c00f8e8 <pos_libc_prf+0x197e>
1c00f67e:	078e                	slli	a5,a5,0x3
1c00f680:	01e6df13          	srli	t5,a3,0x1e
1c00f684:	002e9513          	slli	a0,t4,0x2
1c00f688:	96be                	add	a3,a3,a5
1c00f68a:	00af6533          	or	a0,t5,a0
1c00f68e:	9eaa                	add	t4,t4,a0
1c00f690:	00f6b7b3          	sltu	a5,a3,a5
1c00f694:	97f6                	add	a5,a5,t4
1c00f696:	01f6d513          	srli	a0,a3,0x1f
1c00f69a:	00179e93          	slli	t4,a5,0x1
1c00f69e:	01d56eb3          	or	t4,a0,t4
1c00f6a2:	01ced793          	srli	a5,t4,0x1c
1c00f6a6:	03078793          	addi	a5,a5,48
1c00f6aa:	00f583a3          	sb	a5,7(a1)
1c00f6ae:	ff830493          	addi	s1,t1,-8
1c00f6b2:	00858513          	addi	a0,a1,8
1c00f6b6:	00169793          	slli	a5,a3,0x1
1c00f6ba:	01cefeb3          	and	t4,t4,t3
1c00f6be:	22905563          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f6c2:	22882363          	p.beqimm	a6,8,1c00f8e8 <pos_libc_prf+0x197e>
1c00f6c6:	01e7df13          	srli	t5,a5,0x1e
1c00f6ca:	068e                	slli	a3,a3,0x3
1c00f6cc:	002e9513          	slli	a0,t4,0x2
1c00f6d0:	97b6                	add	a5,a5,a3
1c00f6d2:	00af6533          	or	a0,t5,a0
1c00f6d6:	9eaa                	add	t4,t4,a0
1c00f6d8:	00d7b6b3          	sltu	a3,a5,a3
1c00f6dc:	96f6                	add	a3,a3,t4
1c00f6de:	01f7d513          	srli	a0,a5,0x1f
1c00f6e2:	0686                	slli	a3,a3,0x1
1c00f6e4:	8ec9                	or	a3,a3,a0
1c00f6e6:	01c6d513          	srli	a0,a3,0x1c
1c00f6ea:	03050513          	addi	a0,a0,48
1c00f6ee:	00a58423          	sb	a0,8(a1)
1c00f6f2:	ff730493          	addi	s1,t1,-9
1c00f6f6:	00958513          	addi	a0,a1,9
1c00f6fa:	00179f13          	slli	t5,a5,0x1
1c00f6fe:	01c6feb3          	and	t4,a3,t3
1c00f702:	1e905363          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f706:	1e982163          	p.beqimm	a6,9,1c00f8e8 <pos_libc_prf+0x197e>
1c00f70a:	078e                	slli	a5,a5,0x3
1c00f70c:	01ef5293          	srli	t0,t5,0x1e
1c00f710:	002e9513          	slli	a0,t4,0x2
1c00f714:	01e786b3          	add	a3,a5,t5
1c00f718:	00a2e533          	or	a0,t0,a0
1c00f71c:	00f6b7b3          	sltu	a5,a3,a5
1c00f720:	9576                	add	a0,a0,t4
1c00f722:	97aa                	add	a5,a5,a0
1c00f724:	0786                	slli	a5,a5,0x1
1c00f726:	01f6d513          	srli	a0,a3,0x1f
1c00f72a:	8fc9                	or	a5,a5,a0
1c00f72c:	01c7d513          	srli	a0,a5,0x1c
1c00f730:	03050513          	addi	a0,a0,48
1c00f734:	00a584a3          	sb	a0,9(a1)
1c00f738:	ff630493          	addi	s1,t1,-10
1c00f73c:	00a58513          	addi	a0,a1,10
1c00f740:	0686                	slli	a3,a3,0x1
1c00f742:	01c7f7b3          	and	a5,a5,t3
1c00f746:	1a905163          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f74a:	18a82f63          	p.beqimm	a6,10,1c00f8e8 <pos_libc_prf+0x197e>
1c00f74e:	01e6de93          	srli	t4,a3,0x1e
1c00f752:	00269513          	slli	a0,a3,0x2
1c00f756:	00279e13          	slli	t3,a5,0x2
1c00f75a:	96aa                	add	a3,a3,a0
1c00f75c:	01ceee33          	or	t3,t4,t3
1c00f760:	00a6b533          	sltu	a0,a3,a0
1c00f764:	97f2                	add	a5,a5,t3
1c00f766:	97aa                	add	a5,a5,a0
1c00f768:	00179e93          	slli	t4,a5,0x1
1c00f76c:	01f6d513          	srli	a0,a3,0x1f
1c00f770:	01d56eb3          	or	t4,a0,t4
1c00f774:	01ced793          	srli	a5,t4,0x1c
1c00f778:	03078793          	addi	a5,a5,48
1c00f77c:	10000e37          	lui	t3,0x10000
1c00f780:	1e7d                	addi	t3,t3,-1
1c00f782:	00f58523          	sb	a5,10(a1)
1c00f786:	ff530493          	addi	s1,t1,-11
1c00f78a:	00b58513          	addi	a0,a1,11
1c00f78e:	00169793          	slli	a5,a3,0x1
1c00f792:	01cefeb3          	and	t4,t4,t3
1c00f796:	14905963          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f79a:	14b82763          	p.beqimm	a6,11,1c00f8e8 <pos_libc_prf+0x197e>
1c00f79e:	068e                	slli	a3,a3,0x3
1c00f7a0:	01e7df13          	srli	t5,a5,0x1e
1c00f7a4:	002e9513          	slli	a0,t4,0x2
1c00f7a8:	97b6                	add	a5,a5,a3
1c00f7aa:	00af6533          	or	a0,t5,a0
1c00f7ae:	9eaa                	add	t4,t4,a0
1c00f7b0:	00d7b6b3          	sltu	a3,a5,a3
1c00f7b4:	96f6                	add	a3,a3,t4
1c00f7b6:	01f7d513          	srli	a0,a5,0x1f
1c00f7ba:	0686                	slli	a3,a3,0x1
1c00f7bc:	8ec9                	or	a3,a3,a0
1c00f7be:	01c6d513          	srli	a0,a3,0x1c
1c00f7c2:	03050513          	addi	a0,a0,48
1c00f7c6:	00a585a3          	sb	a0,11(a1)
1c00f7ca:	ff430493          	addi	s1,t1,-12
1c00f7ce:	00c58513          	addi	a0,a1,12
1c00f7d2:	00179e93          	slli	t4,a5,0x1
1c00f7d6:	10905963          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f7da:	10c82763          	p.beqimm	a6,12,1c00f8e8 <pos_libc_prf+0x197e>
1c00f7de:	01c6f6b3          	and	a3,a3,t3
1c00f7e2:	01eedf13          	srli	t5,t4,0x1e
1c00f7e6:	078e                	slli	a5,a5,0x3
1c00f7e8:	00269513          	slli	a0,a3,0x2
1c00f7ec:	9ebe                	add	t4,t4,a5
1c00f7ee:	00af6533          	or	a0,t5,a0
1c00f7f2:	96aa                	add	a3,a3,a0
1c00f7f4:	00feb7b3          	sltu	a5,t4,a5
1c00f7f8:	97b6                	add	a5,a5,a3
1c00f7fa:	01fed513          	srli	a0,t4,0x1f
1c00f7fe:	00179693          	slli	a3,a5,0x1
1c00f802:	8ec9                	or	a3,a3,a0
1c00f804:	01c6d793          	srli	a5,a3,0x1c
1c00f808:	03078793          	addi	a5,a5,48
1c00f80c:	00f58623          	sb	a5,12(a1)
1c00f810:	ff330493          	addi	s1,t1,-13
1c00f814:	00d58513          	addi	a0,a1,13
1c00f818:	001e9793          	slli	a5,t4,0x1
1c00f81c:	01c6ff33          	and	t5,a3,t3
1c00f820:	0c905463          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f824:	0cd82263          	p.beqimm	a6,13,1c00f8e8 <pos_libc_prf+0x197e>
1c00f828:	003e9693          	slli	a3,t4,0x3
1c00f82c:	002f1513          	slli	a0,t5,0x2
1c00f830:	01e7de93          	srli	t4,a5,0x1e
1c00f834:	00aee533          	or	a0,t4,a0
1c00f838:	97b6                	add	a5,a5,a3
1c00f83a:	957a                	add	a0,a0,t5
1c00f83c:	00d7b6b3          	sltu	a3,a5,a3
1c00f840:	96aa                	add	a3,a3,a0
1c00f842:	0686                	slli	a3,a3,0x1
1c00f844:	01f7d513          	srli	a0,a5,0x1f
1c00f848:	8ec9                	or	a3,a3,a0
1c00f84a:	01c6d513          	srli	a0,a3,0x1c
1c00f84e:	03050513          	addi	a0,a0,48
1c00f852:	00a586a3          	sb	a0,13(a1)
1c00f856:	ff230493          	addi	s1,t1,-14
1c00f85a:	00e58513          	addi	a0,a1,14
1c00f85e:	00179f13          	slli	t5,a5,0x1
1c00f862:	01c6feb3          	and	t4,a3,t3
1c00f866:	08905163          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f86a:	06e82f63          	p.beqimm	a6,14,1c00f8e8 <pos_libc_prf+0x197e>
1c00f86e:	078e                	slli	a5,a5,0x3
1c00f870:	002e9513          	slli	a0,t4,0x2
1c00f874:	01ef5293          	srli	t0,t5,0x1e
1c00f878:	01e786b3          	add	a3,a5,t5
1c00f87c:	00a2e533          	or	a0,t0,a0
1c00f880:	9576                	add	a0,a0,t4
1c00f882:	00f6b7b3          	sltu	a5,a3,a5
1c00f886:	97aa                	add	a5,a5,a0
1c00f888:	00179e93          	slli	t4,a5,0x1
1c00f88c:	01f6d513          	srli	a0,a3,0x1f
1c00f890:	01d56eb3          	or	t4,a0,t4
1c00f894:	01ced793          	srli	a5,t4,0x1c
1c00f898:	03078793          	addi	a5,a5,48
1c00f89c:	00f58723          	sb	a5,14(a1)
1c00f8a0:	ff130493          	addi	s1,t1,-15
1c00f8a4:	00f58513          	addi	a0,a1,15
1c00f8a8:	00169793          	slli	a5,a3,0x1
1c00f8ac:	01cefe33          	and	t3,t4,t3
1c00f8b0:	02905c63          	blez	s1,1c00f8e8 <pos_libc_prf+0x197e>
1c00f8b4:	46c1                	li	a3,16
1c00f8b6:	02d81963          	bne	a6,a3,1c00f8e8 <pos_libc_prf+0x197e>
1c00f8ba:	00279513          	slli	a0,a5,0x2
1c00f8be:	01e7d813          	srli	a6,a5,0x1e
1c00f8c2:	002e1693          	slli	a3,t3,0x2
1c00f8c6:	97aa                	add	a5,a5,a0
1c00f8c8:	00d866b3          	or	a3,a6,a3
1c00f8cc:	00a7b7b3          	sltu	a5,a5,a0
1c00f8d0:	9e36                	add	t3,t3,a3
1c00f8d2:	97f2                	add	a5,a5,t3
1c00f8d4:	0786                	slli	a5,a5,0x1
1c00f8d6:	83f1                	srli	a5,a5,0x1c
1c00f8d8:	03078793          	addi	a5,a5,48
1c00f8dc:	01058513          	addi	a0,a1,16
1c00f8e0:	00f587a3          	sb	a5,15(a1)
1c00f8e4:	ff030493          	addi	s1,t1,-16
1c00f8e8:	47e2                	lw	a5,24(sp)
1c00f8ea:	014785b3          	add	a1,a5,s4
1c00f8ee:	9c0f9b63          	bnez	t6,1c00eac4 <pos_libc_prf+0xb5a>
1c00f8f2:	95a6                	add	a1,a1,s1
1c00f8f4:	8ca6                	mv	s9,s1
1c00f8f6:	9faff06f          	j	1c00eaf0 <pos_libc_prf+0xb86>
1c00f8fa:	02d00793          	li	a5,45
1c00f8fe:	411008b3          	neg	a7,a7
1c00f902:	00f500a3          	sb	a5,1(a0)
1c00f906:	db4ff06f          	j	1c00eeba <pos_libc_prf+0xf50>
1c00f90a:	41fad793          	srai	a5,s5,0x1f
1c00f90e:	0156a023          	sw	s5,0(a3)
1c00f912:	c2dc                	sw	a5,4(a3)
1c00f914:	e94fe06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00f918:	4a62                	lw	s4,24(sp)
1c00f91a:	a039                	j	1c00f928 <pos_libc_prf+0x19be>
1c00f91c:	9982                	jalr	s3
1c00f91e:	1a7d                	addi	s4,s4,-1
1c00f920:	01f53463          	p.bneimm	a0,-1,1c00f928 <pos_libc_prf+0x19be>
1c00f924:	fbcfe06f          	j	1c00e0e0 <pos_libc_prf+0x176>
1c00f928:	85de                	mv	a1,s7
1c00f92a:	03000513          	li	a0,48
1c00f92e:	ff4047e3          	bgtz	s4,1c00f91c <pos_libc_prf+0x19b2>
1c00f932:	4762                	lw	a4,24(sp)
1c00f934:	40e90933          	sub	s2,s2,a4
1c00f938:	939fe06f          	j	1c00e270 <pos_libc_prf+0x306>
1c00f93c:	4741                	li	a4,16
1c00f93e:	04e4cf33          	p.min	t5,s1,a4
1c00f942:	1f7d                	addi	t5,t5,-1
1c00f944:	84b6                	mv	s1,a3
1c00f946:	4f81                	li	t6,0
1c00f948:	c67fe06f          	j	1c00e5ae <pos_libc_prf+0x644>
1c00f94c:	104c                	addi	a1,sp,36
1c00f94e:	4901                	li	s2,0
1c00f950:	86ae                	mv	a3,a1
1c00f952:	ed8ff06f          	j	1c00f02a <pos_libc_prf+0x10c0>
1c00f956:	0c904463          	bgtz	s1,1c00fa1e <pos_libc_prf+0x1ab4>
1c00f95a:	4881                	li	a7,0
1c00f95c:	cc02                	sw	zero,24(sp)
1c00f95e:	b769                	j	1c00f8e8 <pos_libc_prf+0x197e>
1c00f960:	4712                	lw	a4,4(sp)
1c00f962:	4f81                	li	t6,0
1c00f964:	e319                	bnez	a4,1c00f96a <pos_libc_prf+0x1a00>
1c00f966:	c3dfe06f          	j	1c00e5a2 <pos_libc_prf+0x638>
1c00f96a:	4f01                	li	t5,0
1c00f96c:	4f81                	li	t6,0
1c00f96e:	c41fe06f          	j	1c00e5ae <pos_libc_prf+0x644>
1c00f972:	020102a3          	sb	zero,37(sp)
1c00f976:	c202                	sw	zero,4(sp)
1c00f978:	4905                	li	s2,1
1c00f97a:	875fe06f          	j	1c00e1ee <pos_libc_prf+0x284>
1c00f97e:	06600d93          	li	s11,102
1c00f982:	d1cff06f          	j	1c00ee9e <pos_libc_prf+0xf34>
1c00f986:	03000593          	li	a1,48
1c00f98a:	4712                	lw	a4,4(sp)
1c00f98c:	00b30023          	sb	a1,0(t1)
1c00f990:	e335                	bnez	a4,1c00f9f4 <pos_libc_prf+0x1a8a>
1c00f992:	06905b63          	blez	s1,1c00fa08 <pos_libc_prf+0x1a9e>
1c00f996:	02e00593          	li	a1,46
1c00f99a:	00b300a3          	sb	a1,1(t1)
1c00f99e:	00230513          	addi	a0,t1,2
1c00f9a2:	4841                	li	a6,16
1c00f9a4:	08088363          	beqz	a7,1c00fa2a <pos_libc_prf+0x1ac0>
1c00f9a8:	41100733          	neg	a4,a7
1c00f9ac:	04974733          	p.min	a4,a4,s1
1c00f9b0:	cc3a                	sw	a4,24(sp)
1c00f9b2:	40e48333          	sub	t1,s1,a4
1c00f9b6:	85aa                	mv	a1,a0
1c00f9b8:	4a01                	li	s4,0
1c00f9ba:	4841                	li	a6,16
1c00f9bc:	ac6044e3          	bgtz	t1,1c00f484 <pos_libc_prf+0x151a>
1c00f9c0:	a0d5                	j	1c00faa4 <pos_libc_prf+0x1b3a>
1c00f9c2:	4a72                	lw	s4,28(sp)
1c00f9c4:	de4fe06f          	j	1c00dfa8 <pos_libc_prf+0x3e>
1c00f9c8:	6799                	lui	a5,0x6
1c00f9ca:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c00f9ce:	00f31023          	sh	a5,0(t1)
1c00f9d2:	06e00793          	li	a5,110
1c00f9d6:	00f30123          	sb	a5,2(t1)
1c00f9da:	c38ff06f          	j	1c00ee12 <pos_libc_prf+0xea8>
1c00f9de:	679d                	lui	a5,0x7
1c00f9e0:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c00f9e4:	00f31023          	sh	a5,0(t1)
1c00f9e8:	06600793          	li	a5,102
1c00f9ec:	00f30123          	sb	a5,2(t1)
1c00f9f0:	c22ff06f          	j	1c00ee12 <pos_libc_prf+0xea8>
1c00f9f4:	02e00593          	li	a1,46
1c00f9f8:	00b300a3          	sb	a1,1(t1)
1c00f9fc:	00230513          	addi	a0,t1,2
1c00fa00:	00088763          	beqz	a7,1c00fa0e <pos_libc_prf+0x1aa4>
1c00fa04:	fa9042e3          	bgtz	s1,1c00f9a8 <pos_libc_prf+0x1a3e>
1c00fa08:	4a01                	li	s4,0
1c00fa0a:	cc02                	sw	zero,24(sp)
1c00fa0c:	bdf1                	j	1c00f8e8 <pos_libc_prf+0x197e>
1c00fa0e:	fe905de3          	blez	s1,1c00fa08 <pos_libc_prf+0x1a9e>
1c00fa12:	85aa                	mv	a1,a0
1c00fa14:	4a01                	li	s4,0
1c00fa16:	cc02                	sw	zero,24(sp)
1c00fa18:	8326                	mv	t1,s1
1c00fa1a:	4841                	li	a6,16
1c00fa1c:	b4b5                	j	1c00f488 <pos_libc_prf+0x151e>
1c00fa1e:	02e00593          	li	a1,46
1c00fa22:	00b50023          	sb	a1,0(a0)
1c00fa26:	88d2                	mv	a7,s4
1c00fa28:	0505                	addi	a0,a0,1
1c00fa2a:	8a46                	mv	s4,a7
1c00fa2c:	85aa                	mv	a1,a0
1c00fa2e:	8326                	mv	t1,s1
1c00fa30:	cc02                	sw	zero,24(sp)
1c00fa32:	4881                	li	a7,0
1c00fa34:	bc81                	j	1c00f484 <pos_libc_prf+0x151a>
1c00fa36:	4a01                	li	s4,0
1c00fa38:	483d                	li	a6,15
1c00fa3a:	b43d                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa3c:	00e30513          	addi	a0,t1,14
1c00fa40:	4809                	li	a6,2
1c00fa42:	b41d                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa44:	00c30513          	addi	a0,t1,12
1c00fa48:	b405                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa4a:	c0200813          	li	a6,-1022
1c00fa4e:	a62ff06f          	j	1c00ecb0 <pos_libc_prf+0xd46>
1c00fa52:	00330513          	addi	a0,t1,3
1c00fa56:	4835                	li	a6,13
1c00fa58:	bc01                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa5a:	00230513          	addi	a0,t1,2
1c00fa5e:	4a01                	li	s4,0
1c00fa60:	4839                	li	a6,14
1c00fa62:	b419                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa64:	00b30513          	addi	a0,t1,11
1c00fa68:	4815                	li	a6,5
1c00fa6a:	bafd                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa6c:	00a30513          	addi	a0,t1,10
1c00fa70:	4819                	li	a6,6
1c00fa72:	badd                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa74:	00930513          	addi	a0,t1,9
1c00fa78:	481d                	li	a6,7
1c00fa7a:	b2fd                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa7c:	00830513          	addi	a0,t1,8
1c00fa80:	4821                	li	a6,8
1c00fa82:	b2dd                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa84:	00730513          	addi	a0,t1,7
1c00fa88:	4825                	li	a6,9
1c00fa8a:	baf9                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa8c:	00630513          	addi	a0,t1,6
1c00fa90:	4829                	li	a6,10
1c00fa92:	bad9                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa94:	00530513          	addi	a0,t1,5
1c00fa98:	482d                	li	a6,11
1c00fa9a:	b2f9                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00fa9c:	00430513          	addi	a0,t1,4
1c00faa0:	4831                	li	a6,12
1c00faa2:	b2d9                	j	1c00f468 <pos_libc_prf+0x14fe>
1c00faa4:	849a                	mv	s1,t1
1c00faa6:	852e                	mv	a0,a1
1c00faa8:	b581                	j	1c00f8e8 <pos_libc_prf+0x197e>
1c00faaa:	41990933          	sub	s2,s2,s9
1c00faae:	8f3fe06f          	j	1c00e3a0 <pos_libc_prf+0x436>
1c00fab2:	00d78513          	addi	a0,a5,13
1c00fab6:	804ff06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00faba:	00c78513          	addi	a0,a5,12
1c00fabe:	ffdfe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fac2:	00b78513          	addi	a0,a5,11
1c00fac6:	ff5fe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00faca:	00978513          	addi	a0,a5,9
1c00face:	fedfe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fad2:	00878513          	addi	a0,a5,8
1c00fad6:	fe5fe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fada:	00778513          	addi	a0,a5,7
1c00fade:	fddfe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fae2:	00678513          	addi	a0,a5,6
1c00fae6:	fd5fe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00faea:	00578513          	addi	a0,a5,5
1c00faee:	fcdfe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00faf2:	00478513          	addi	a0,a5,4
1c00faf6:	fc5fe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fafa:	00378513          	addi	a0,a5,3
1c00fafe:	fbdfe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fb02:	00278513          	addi	a0,a5,2
1c00fb06:	fb5fe06f          	j	1c00eaba <pos_libc_prf+0xb50>
1c00fb0a:	00178513          	addi	a0,a5,1
1c00fb0e:	4c81                	li	s9,0
1c00fb10:	fabfe06f          	j	1c00eaba <pos_libc_prf+0xb50>

1c00fb14 <pos_init_start>:
1c00fb14:	1141                	addi	sp,sp,-16
1c00fb16:	c422                	sw	s0,8(sp)
1c00fb18:	1c001437          	lui	s0,0x1c001
1c00fb1c:	c606                	sw	ra,12(sp)
1c00fb1e:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c00fb22:	2245                	jal	1c00fcc2 <pos_irq_init>
1c00fb24:	b66fe0ef          	jal	ra,1c00de8a <pos_soc_init>
1c00fb28:	22f1                	jal	1c00fcf4 <pos_soc_event_init>
1c00fb2a:	20ed                	jal	1c00fc14 <pos_allocs_init>
1c00fb2c:	208d                	jal	1c00fb8e <pos_sched_init>
1c00fb2e:	405c                	lw	a5,4(s0)
1c00fb30:	c791                	beqz	a5,1c00fb3c <pos_init_start+0x28>
1c00fb32:	0421                	addi	s0,s0,8
1c00fb34:	9782                	jalr	a5
1c00fb36:	0044278b          	p.lw	a5,4(s0!)
1c00fb3a:	ffed                	bnez	a5,1c00fb34 <pos_init_start+0x20>
1c00fb3c:	bf8fe0ef          	jal	ra,1c00df34 <pos_io_start>
1c00fb40:	300467f3          	csrrsi	a5,mstatus,8
1c00fb44:	40b2                	lw	ra,12(sp)
1c00fb46:	4422                	lw	s0,8(sp)
1c00fb48:	0141                	addi	sp,sp,16
1c00fb4a:	8082                	ret

1c00fb4c <pos_init_stop>:
1c00fb4c:	1141                	addi	sp,sp,-16
1c00fb4e:	c422                	sw	s0,8(sp)
1c00fb50:	1c001437          	lui	s0,0x1c001
1c00fb54:	c606                	sw	ra,12(sp)
1c00fb56:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c00fb5a:	bdefe0ef          	jal	ra,1c00df38 <pos_io_stop>
1c00fb5e:	405c                	lw	a5,4(s0)
1c00fb60:	c791                	beqz	a5,1c00fb6c <pos_init_stop+0x20>
1c00fb62:	0421                	addi	s0,s0,8
1c00fb64:	9782                	jalr	a5
1c00fb66:	0044278b          	p.lw	a5,4(s0!)
1c00fb6a:	ffed                	bnez	a5,1c00fb64 <pos_init_stop+0x18>
1c00fb6c:	40b2                	lw	ra,12(sp)
1c00fb6e:	4422                	lw	s0,8(sp)
1c00fb70:	0141                	addi	sp,sp,16
1c00fb72:	8082                	ret

1c00fb74 <pos_cbsys_add>:
1c00fb74:	00259793          	slli	a5,a1,0x2
1c00fb78:	1c0015b7          	lui	a1,0x1c001
1c00fb7c:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c00fb80:	95be                	add	a1,a1,a5
1c00fb82:	419c                	lw	a5,0(a1)
1c00fb84:	c110                	sw	a2,0(a0)
1c00fb86:	c154                	sw	a3,4(a0)
1c00fb88:	c51c                	sw	a5,8(a0)
1c00fb8a:	c188                	sw	a0,0(a1)
1c00fb8c:	8082                	ret

1c00fb8e <pos_sched_init>:
1c00fb8e:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c00fb92:	8082                	ret

1c00fb94 <pos_alloc_init>:
1c00fb94:	00758793          	addi	a5,a1,7
1c00fb98:	c407b7b3          	p.bclr	a5,a5,2,0
1c00fb9c:	40b785b3          	sub	a1,a5,a1
1c00fba0:	c11c                	sw	a5,0(a0)
1c00fba2:	8e0d                	sub	a2,a2,a1
1c00fba4:	00c05763          	blez	a2,1c00fbb2 <pos_alloc_init+0x1e>
1c00fba8:	c4063633          	p.bclr	a2,a2,2,0
1c00fbac:	c390                	sw	a2,0(a5)
1c00fbae:	0007a223          	sw	zero,4(a5)
1c00fbb2:	8082                	ret

1c00fbb4 <pos_alloc>:
1c00fbb4:	4110                	lw	a2,0(a0)
1c00fbb6:	059d                	addi	a1,a1,7
1c00fbb8:	c405b5b3          	p.bclr	a1,a1,2,0
1c00fbbc:	ca31                	beqz	a2,1c00fc10 <pos_alloc+0x5c>
1c00fbbe:	4218                	lw	a4,0(a2)
1c00fbc0:	425c                	lw	a5,4(a2)
1c00fbc2:	02b75963          	ble	a1,a4,1c00fbf4 <pos_alloc+0x40>
1c00fbc6:	cb81                	beqz	a5,1c00fbd6 <pos_alloc+0x22>
1c00fbc8:	4398                	lw	a4,0(a5)
1c00fbca:	43d4                	lw	a3,4(a5)
1c00fbcc:	00b75763          	ble	a1,a4,1c00fbda <pos_alloc+0x26>
1c00fbd0:	863e                	mv	a2,a5
1c00fbd2:	87b6                	mv	a5,a3
1c00fbd4:	fbf5                	bnez	a5,1c00fbc8 <pos_alloc+0x14>
1c00fbd6:	853e                	mv	a0,a5
1c00fbd8:	8082                	ret
1c00fbda:	00b70a63          	beq	a4,a1,1c00fbee <pos_alloc+0x3a>
1c00fbde:	00b78533          	add	a0,a5,a1
1c00fbe2:	8f0d                	sub	a4,a4,a1
1c00fbe4:	c118                	sw	a4,0(a0)
1c00fbe6:	c154                	sw	a3,4(a0)
1c00fbe8:	c248                	sw	a0,4(a2)
1c00fbea:	853e                	mv	a0,a5
1c00fbec:	8082                	ret
1c00fbee:	c254                	sw	a3,4(a2)
1c00fbf0:	853e                	mv	a0,a5
1c00fbf2:	8082                	ret
1c00fbf4:	00e58b63          	beq	a1,a4,1c00fc0a <pos_alloc+0x56>
1c00fbf8:	00b606b3          	add	a3,a2,a1
1c00fbfc:	8f0d                	sub	a4,a4,a1
1c00fbfe:	c2dc                	sw	a5,4(a3)
1c00fc00:	c298                	sw	a4,0(a3)
1c00fc02:	87b2                	mv	a5,a2
1c00fc04:	c114                	sw	a3,0(a0)
1c00fc06:	853e                	mv	a0,a5
1c00fc08:	8082                	ret
1c00fc0a:	c11c                	sw	a5,0(a0)
1c00fc0c:	87b2                	mv	a5,a2
1c00fc0e:	b7e1                	j	1c00fbd6 <pos_alloc+0x22>
1c00fc10:	4781                	li	a5,0
1c00fc12:	b7d1                	j	1c00fbd6 <pos_alloc+0x22>

1c00fc14 <pos_allocs_init>:
1c00fc14:	1141                	addi	sp,sp,-16
1c00fc16:	1c00d5b7          	lui	a1,0x1c00d
1c00fc1a:	c606                	sw	ra,12(sp)
1c00fc1c:	c422                	sw	s0,8(sp)
1c00fc1e:	26c58793          	addi	a5,a1,620 # 1c00d26c <__l2_priv0_end>
1c00fc22:	1c008637          	lui	a2,0x1c008
1c00fc26:	04c7c363          	blt	a5,a2,1c00fc6c <pos_allocs_init+0x58>
1c00fc2a:	4581                	li	a1,0
1c00fc2c:	4601                	li	a2,0
1c00fc2e:	1c00d437          	lui	s0,0x1c00d
1c00fc32:	24440513          	addi	a0,s0,580 # 1c00d244 <pos_alloc_l2>
1c00fc36:	3fb9                	jal	1c00fb94 <pos_alloc_init>
1c00fc38:	1c0105b7          	lui	a1,0x1c010
1c00fc3c:	20058793          	addi	a5,a1,512 # 1c010200 <__l2_shared_end>
1c00fc40:	1c080637          	lui	a2,0x1c080
1c00fc44:	1c00d537          	lui	a0,0x1c00d
1c00fc48:	8e1d                	sub	a2,a2,a5
1c00fc4a:	20058593          	addi	a1,a1,512
1c00fc4e:	24850513          	addi	a0,a0,584 # 1c00d248 <pos_alloc_l2+0x4>
1c00fc52:	3789                	jal	1c00fb94 <pos_alloc_init>
1c00fc54:	24440513          	addi	a0,s0,580
1c00fc58:	4591                	li	a1,4
1c00fc5a:	3fa9                	jal	1c00fbb4 <pos_alloc>
1c00fc5c:	40b2                	lw	ra,12(sp)
1c00fc5e:	4422                	lw	s0,8(sp)
1c00fc60:	1c00d7b7          	lui	a5,0x1c00d
1c00fc64:	24a7a023          	sw	a0,576(a5) # 1c00d240 <pos_alloc_l1>
1c00fc68:	0141                	addi	sp,sp,16
1c00fc6a:	8082                	ret
1c00fc6c:	8e1d                	sub	a2,a2,a5
1c00fc6e:	26c58593          	addi	a1,a1,620
1c00fc72:	bf75                	j	1c00fc2e <pos_allocs_init+0x1a>

1c00fc74 <pos_irq_set_handler>:
1c00fc74:	f14027f3          	csrr	a5,mhartid
1c00fc78:	477d                	li	a4,31
1c00fc7a:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fc7e:	02e78d63          	beq	a5,a4,1c00fcb8 <pos_irq_set_handler+0x44>
1c00fc82:	002007b7          	lui	a5,0x200
1c00fc86:	43b8                	lw	a4,64(a5)
1c00fc88:	050a                	slli	a0,a0,0x2
1c00fc8a:	8d89                	sub	a1,a1,a0
1c00fc8c:	8d99                	sub	a1,a1,a4
1c00fc8e:	c14586b3          	p.extract	a3,a1,0,20
1c00fc92:	06f00793          	li	a5,111
1c00fc96:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00fc9a:	d21586b3          	p.extract	a3,a1,9,1
1c00fc9e:	d356a7b3          	p.insert	a5,a3,9,21
1c00fca2:	c0b586b3          	p.extract	a3,a1,0,11
1c00fca6:	c146a7b3          	p.insert	a5,a3,0,20
1c00fcaa:	cec585b3          	p.extract	a1,a1,7,12
1c00fcae:	cec5a7b3          	p.insert	a5,a1,7,12
1c00fcb2:	00f56723          	p.sw	a5,a4(a0)
1c00fcb6:	8082                	ret
1c00fcb8:	30502773          	csrr	a4,mtvec
1c00fcbc:	c0073733          	p.bclr	a4,a4,0,0
1c00fcc0:	b7e1                	j	1c00fc88 <pos_irq_set_handler+0x14>

1c00fcc2 <pos_irq_init>:
1c00fcc2:	f1402773          	csrr	a4,mhartid
1c00fcc6:	1a10a7b7          	lui	a5,0x1a10a
1c00fcca:	56fd                	li	a3,-1
1c00fccc:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00fcd0:	ca571733          	p.extractu	a4,a4,5,5
1c00fcd4:	1c00d7b7          	lui	a5,0x1c00d
1c00fcd8:	46fd                	li	a3,31
1c00fcda:	30078793          	addi	a5,a5,768 # 1c00d300 <__irq_vector_base>
1c00fcde:	00d70663          	beq	a4,a3,1c00fcea <pos_irq_init+0x28>
1c00fce2:	00200737          	lui	a4,0x200
1c00fce6:	c33c                	sw	a5,64(a4)
1c00fce8:	8082                	ret
1c00fcea:	c007c7b3          	p.bset	a5,a5,0,0
1c00fcee:	30579073          	csrw	mtvec,a5
1c00fcf2:	8082                	ret

1c00fcf4 <pos_soc_event_init>:
1c00fcf4:	1a1067b7          	lui	a5,0x1a106
1c00fcf8:	1141                	addi	sp,sp,-16
1c00fcfa:	c606                	sw	ra,12(sp)
1c00fcfc:	577d                	li	a4,-1
1c00fcfe:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c00fd02:	c298                	sw	a4,0(a3)
1c00fd04:	00878693          	addi	a3,a5,8
1c00fd08:	c298                	sw	a4,0(a3)
1c00fd0a:	00c78693          	addi	a3,a5,12
1c00fd0e:	c298                	sw	a4,0(a3)
1c00fd10:	01078693          	addi	a3,a5,16
1c00fd14:	c298                	sw	a4,0(a3)
1c00fd16:	01478693          	addi	a3,a5,20
1c00fd1a:	c298                	sw	a4,0(a3)
1c00fd1c:	01878693          	addi	a3,a5,24
1c00fd20:	c298                	sw	a4,0(a3)
1c00fd22:	01c78693          	addi	a3,a5,28
1c00fd26:	c298                	sw	a4,0(a3)
1c00fd28:	02078793          	addi	a5,a5,32
1c00fd2c:	1c0105b7          	lui	a1,0x1c010
1c00fd30:	c398                	sw	a4,0(a5)
1c00fd32:	fec58593          	addi	a1,a1,-20 # 1c00ffec <pos_soc_event_handler_asm>
1c00fd36:	4569                	li	a0,26
1c00fd38:	3f35                	jal	1c00fc74 <pos_irq_set_handler>
1c00fd3a:	40b2                	lw	ra,12(sp)
1c00fd3c:	1a10a7b7          	lui	a5,0x1a10a
1c00fd40:	04000737          	lui	a4,0x4000
1c00fd44:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c00fd48:	0141                	addi	sp,sp,16
1c00fd4a:	8082                	ret

1c00fd4c <pos_time_poweroff>:
1c00fd4c:	1a10b7b7          	lui	a5,0x1a10b
1c00fd50:	0791                	addi	a5,a5,4
1c00fd52:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd56:	1c001737          	lui	a4,0x1c001
1c00fd5a:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c00fd5e:	4501                	li	a0,0
1c00fd60:	8082                	ret

1c00fd62 <pos_time_poweron>:
1c00fd62:	1c0017b7          	lui	a5,0x1c001
1c00fd66:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c00fd6a:	1a10b7b7          	lui	a5,0x1a10b
1c00fd6e:	0791                	addi	a5,a5,4
1c00fd70:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd74:	4501                	li	a0,0
1c00fd76:	8082                	ret

1c00fd78 <pos_time_timer_handler>:
1c00fd78:	1c0018b7          	lui	a7,0x1c001
1c00fd7c:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c00fd80:	0048a783          	lw	a5,4(a7)
1c00fd84:	1a10b637          	lui	a2,0x1a10b
1c00fd88:	0611                	addi	a2,a2,4
1c00fd8a:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00fd8e:	cba9                	beqz	a5,1c00fde0 <pos_time_timer_handler+0x68>
1c00fd90:	5fd8                	lw	a4,60(a5)
1c00fd92:	800005b7          	lui	a1,0x80000
1c00fd96:	40e60733          	sub	a4,a2,a4
1c00fd9a:	ffe5c593          	xori	a1,a1,-2
1c00fd9e:	0ae5e763          	bltu	a1,a4,1c00fe4c <pos_time_timer_handler+0xd4>
1c00fda2:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c00fda6:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c00fdaa:	4398                	lw	a4,0(a5)
1c00fdac:	0007a023          	sw	zero,0(a5)
1c00fdb0:	4301                	li	t1,0
1c00fdb2:	02080063          	beqz	a6,1c00fdd2 <pos_time_timer_handler+0x5a>
1c00fdb6:	c11c                	sw	a5,0(a0)
1c00fdb8:	c305                	beqz	a4,1c00fdd8 <pos_time_timer_handler+0x60>
1c00fdba:	5f54                	lw	a3,60(a4)
1c00fdbc:	853e                	mv	a0,a5
1c00fdbe:	40d606b3          	sub	a3,a2,a3
1c00fdc2:	04d5e763          	bltu	a1,a3,1c00fe10 <pos_time_timer_handler+0x98>
1c00fdc6:	87ba                	mv	a5,a4
1c00fdc8:	4398                	lw	a4,0(a5)
1c00fdca:	0007a023          	sw	zero,0(a5)
1c00fdce:	fe0814e3          	bnez	a6,1c00fdb6 <pos_time_timer_handler+0x3e>
1c00fdd2:	883e                	mv	a6,a5
1c00fdd4:	4305                	li	t1,1
1c00fdd6:	f375                	bnez	a4,1c00fdba <pos_time_timer_handler+0x42>
1c00fdd8:	06031c63          	bnez	t1,1c00fe50 <pos_time_timer_handler+0xd8>
1c00fddc:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fde0:	1a10b7b7          	lui	a5,0x1a10b
1c00fde4:	08100713          	li	a4,129
1c00fde8:	0791                	addi	a5,a5,4
1c00fdea:	0008a223          	sw	zero,4(a7)
1c00fdee:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fdf2:	f14027f3          	csrr	a5,mhartid
1c00fdf6:	477d                	li	a4,31
1c00fdf8:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fdfc:	04e78063          	beq	a5,a4,1c00fe3c <pos_time_timer_handler+0xc4>
1c00fe00:	6785                	lui	a5,0x1
1c00fe02:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe06:	00204737          	lui	a4,0x204
1c00fe0a:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c00fe0e:	8082                	ret
1c00fe10:	04031363          	bnez	t1,1c00fe56 <pos_time_timer_handler+0xde>
1c00fe14:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fe18:	1a10b7b7          	lui	a5,0x1a10b
1c00fe1c:	0791                	addi	a5,a5,4
1c00fe1e:	00e8a223          	sw	a4,4(a7)
1c00fe22:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fe26:	5f58                	lw	a4,60(a4)
1c00fe28:	40c70633          	sub	a2,a4,a2
1c00fe2c:	9636                	add	a2,a2,a3
1c00fe2e:	00c7a823          	sw	a2,16(a5)
1c00fe32:	08500713          	li	a4,133
1c00fe36:	00e7a023          	sw	a4,0(a5)
1c00fe3a:	8082                	ret
1c00fe3c:	6785                	lui	a5,0x1
1c00fe3e:	1a10a737          	lui	a4,0x1a10a
1c00fe42:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe46:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c00fe4a:	8082                	ret
1c00fe4c:	873e                	mv	a4,a5
1c00fe4e:	b7e9                	j	1c00fe18 <pos_time_timer_handler+0xa0>
1c00fe50:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe54:	b761                	j	1c00fddc <pos_time_timer_handler+0x64>
1c00fe56:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe5a:	bf6d                	j	1c00fe14 <pos_time_timer_handler+0x9c>

1c00fe5c <pos_time_init>:
1c00fe5c:	1141                	addi	sp,sp,-16
1c00fe5e:	c422                	sw	s0,8(sp)
1c00fe60:	1a10b7b7          	lui	a5,0x1a10b
1c00fe64:	1c001437          	lui	s0,0x1c001
1c00fe68:	c606                	sw	ra,12(sp)
1c00fe6a:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c00fe6e:	08300713          	li	a4,131
1c00fe72:	0791                	addi	a5,a5,4
1c00fe74:	00042223          	sw	zero,4(s0)
1c00fe78:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fe7c:	1c0105b7          	lui	a1,0x1c010
1c00fe80:	fc858593          	addi	a1,a1,-56 # 1c00ffc8 <pos_time_timer_handler_asm>
1c00fe84:	452d                	li	a0,11
1c00fe86:	33fd                	jal	1c00fc74 <pos_irq_set_handler>
1c00fe88:	6785                	lui	a5,0x1
1c00fe8a:	1a10a737          	lui	a4,0x1a10a
1c00fe8e:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe92:	1c010637          	lui	a2,0x1c010
1c00fe96:	00840513          	addi	a0,s0,8
1c00fe9a:	4681                	li	a3,0
1c00fe9c:	d4c60613          	addi	a2,a2,-692 # 1c00fd4c <pos_time_poweroff>
1c00fea0:	4589                	li	a1,2
1c00fea2:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c00fea6:	31f9                	jal	1c00fb74 <pos_cbsys_add>
1c00fea8:	01840513          	addi	a0,s0,24
1c00feac:	4422                	lw	s0,8(sp)
1c00feae:	40b2                	lw	ra,12(sp)
1c00feb0:	1c010637          	lui	a2,0x1c010
1c00feb4:	4681                	li	a3,0
1c00feb6:	d6260613          	addi	a2,a2,-670 # 1c00fd62 <pos_time_poweron>
1c00feba:	458d                	li	a1,3
1c00febc:	0141                	addi	sp,sp,16
1c00febe:	b95d                	j	1c00fb74 <pos_cbsys_add>

1c00fec0 <pos_uart_init>:
1c00fec0:	1c0107b7          	lui	a5,0x1c010
1c00fec4:	1a07a823          	sw	zero,432(a5) # 1c0101b0 <__cluster_text_end>
1c00fec8:	8082                	ret

1c00feca <pos_init_entry>:
1c00feca:	7a101073          	csrw	pcmr,zero
1c00fece:	f1402573          	csrr	a0,mhartid
1c00fed2:	01f57593          	andi	a1,a0,31
1c00fed6:	8115                	srli	a0,a0,0x5
1c00fed8:	467d                	li	a2,31
1c00feda:	00c50463          	beq	a0,a2,1c00fee2 <pos_init_entry+0x18>
1c00fede:	1820006f          	j	1c010060 <__l2_priv1_end>
1c00fee2:	ffff1297          	auipc	t0,0xffff1
1c00fee6:	35e28293          	addi	t0,t0,862 # 1c001240 <_edata>
1c00feea:	ffffd317          	auipc	t1,0xffffd
1c00feee:	38230313          	addi	t1,t1,898 # 1c00d26c <__l2_priv0_end>
1c00fef2:	0002a023          	sw	zero,0(t0)
1c00fef6:	0291                	addi	t0,t0,4
1c00fef8:	fe62ede3          	bltu	t0,t1,1c00fef2 <pos_init_entry+0x28>
1c00fefc:	ffff1117          	auipc	sp,0xffff1
1c00ff00:	30410113          	addi	sp,sp,772 # 1c001200 <stack>
1c00ff04:	00000297          	auipc	t0,0x0
1c00ff08:	c1028293          	addi	t0,t0,-1008 # 1c00fb14 <pos_init_start>
1c00ff0c:	000280e7          	jalr	t0
1c00ff10:	00000513          	li	a0,0
1c00ff14:	00000593          	li	a1,0
1c00ff18:	ffffe397          	auipc	t2,0xffffe
1c00ff1c:	d4638393          	addi	t2,t2,-698 # 1c00dc5e <main>
1c00ff20:	000380e7          	jalr	t2
1c00ff24:	842a                	mv	s0,a0
1c00ff26:	8522                	mv	a0,s0
1c00ff28:	ffffe297          	auipc	t0,0xffffe
1c00ff2c:	fe028293          	addi	t0,t0,-32 # 1c00df08 <exit>
1c00ff30:	000280e7          	jalr	t0

1c00ff34 <pos_irq_call_external_c_function>:
1c00ff34:	7119                	addi	sp,sp,-128
1c00ff36:	c006                	sw	ra,0(sp)
1c00ff38:	c20e                	sw	gp,4(sp)
1c00ff3a:	c412                	sw	tp,8(sp)
1c00ff3c:	c616                	sw	t0,12(sp)
1c00ff3e:	c81a                	sw	t1,16(sp)
1c00ff40:	ca1e                	sw	t2,20(sp)
1c00ff42:	d236                	sw	a3,36(sp)
1c00ff44:	d43a                	sw	a4,40(sp)
1c00ff46:	d63e                	sw	a5,44(sp)
1c00ff48:	d842                	sw	a6,48(sp)
1c00ff4a:	da46                	sw	a7,52(sp)
1c00ff4c:	dc72                	sw	t3,56(sp)
1c00ff4e:	de76                	sw	t4,60(sp)
1c00ff50:	c0fa                	sw	t5,64(sp)
1c00ff52:	c6fe                	sw	t6,76(sp)
1c00ff54:	000600e7          	jalr	a2
1c00ff58:	4082                	lw	ra,0(sp)
1c00ff5a:	4192                	lw	gp,4(sp)
1c00ff5c:	4222                	lw	tp,8(sp)
1c00ff5e:	42b2                	lw	t0,12(sp)
1c00ff60:	4342                	lw	t1,16(sp)
1c00ff62:	43d2                	lw	t2,20(sp)
1c00ff64:	5692                	lw	a3,36(sp)
1c00ff66:	5722                	lw	a4,40(sp)
1c00ff68:	57b2                	lw	a5,44(sp)
1c00ff6a:	5842                	lw	a6,48(sp)
1c00ff6c:	58d2                	lw	a7,52(sp)
1c00ff6e:	5e62                	lw	t3,56(sp)
1c00ff70:	5ef2                	lw	t4,60(sp)
1c00ff72:	4f06                	lw	t5,64(sp)
1c00ff74:	4fb6                	lw	t6,76(sp)
1c00ff76:	6109                	addi	sp,sp,128
1c00ff78:	8482                	jr	s1

1c00ff7a <pos_irq_call_external_c_function_full>:
1c00ff7a:	7119                	addi	sp,sp,-128
1c00ff7c:	c006                	sw	ra,0(sp)
1c00ff7e:	c20e                	sw	gp,4(sp)
1c00ff80:	c412                	sw	tp,8(sp)
1c00ff82:	c616                	sw	t0,12(sp)
1c00ff84:	c81a                	sw	t1,16(sp)
1c00ff86:	ca1e                	sw	t2,20(sp)
1c00ff88:	cc2a                	sw	a0,24(sp)
1c00ff8a:	ce2e                	sw	a1,28(sp)
1c00ff8c:	d236                	sw	a3,36(sp)
1c00ff8e:	d43a                	sw	a4,40(sp)
1c00ff90:	d63e                	sw	a5,44(sp)
1c00ff92:	d842                	sw	a6,48(sp)
1c00ff94:	da46                	sw	a7,52(sp)
1c00ff96:	dc72                	sw	t3,56(sp)
1c00ff98:	de76                	sw	t4,60(sp)
1c00ff9a:	c0fa                	sw	t5,64(sp)
1c00ff9c:	c6fe                	sw	t6,76(sp)
1c00ff9e:	000600e7          	jalr	a2
1c00ffa2:	4082                	lw	ra,0(sp)
1c00ffa4:	4192                	lw	gp,4(sp)
1c00ffa6:	4222                	lw	tp,8(sp)
1c00ffa8:	42b2                	lw	t0,12(sp)
1c00ffaa:	4342                	lw	t1,16(sp)
1c00ffac:	43d2                	lw	t2,20(sp)
1c00ffae:	4562                	lw	a0,24(sp)
1c00ffb0:	45f2                	lw	a1,28(sp)
1c00ffb2:	5692                	lw	a3,36(sp)
1c00ffb4:	5722                	lw	a4,40(sp)
1c00ffb6:	57b2                	lw	a5,44(sp)
1c00ffb8:	5842                	lw	a6,48(sp)
1c00ffba:	58d2                	lw	a7,52(sp)
1c00ffbc:	5e62                	lw	t3,56(sp)
1c00ffbe:	5ef2                	lw	t4,60(sp)
1c00ffc0:	4f06                	lw	t5,64(sp)
1c00ffc2:	4fb6                	lw	t6,76(sp)
1c00ffc4:	6109                	addi	sp,sp,128
1c00ffc6:	8482                	jr	s1

1c00ffc8 <pos_time_timer_handler_asm>:
1c00ffc8:	1161                	addi	sp,sp,-8
1c00ffca:	c032                	sw	a2,0(sp)
1c00ffcc:	c226                	sw	s1,4(sp)
1c00ffce:	00000617          	auipc	a2,0x0
1c00ffd2:	daa60613          	addi	a2,a2,-598 # 1c00fd78 <pos_time_timer_handler>
1c00ffd6:	00000497          	auipc	s1,0x0
1c00ffda:	00c48493          	addi	s1,s1,12 # 1c00ffe2 <pos_time_timer_handler_asm_ret>
1c00ffde:	f9dff06f          	j	1c00ff7a <pos_irq_call_external_c_function_full>

1c00ffe2 <pos_time_timer_handler_asm_ret>:
1c00ffe2:	4492                	lw	s1,4(sp)
1c00ffe4:	4602                	lw	a2,0(sp)
1c00ffe6:	0121                	addi	sp,sp,8
1c00ffe8:	30200073          	mret

1c00ffec <pos_soc_event_handler_asm>:
1c00ffec:	7119                	addi	sp,sp,-128
1c00ffee:	c022                	sw	s0,0(sp)
1c00fff0:	c226                	sw	s1,4(sp)
1c00fff2:	c42a                	sw	a0,8(sp)
1c00fff4:	c62e                	sw	a1,12(sp)
1c00fff6:	c832                	sw	a2,16(sp)
1c00fff8:	1a10a437          	lui	s0,0x1a10a
1c00fffc:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c010000:	5048                	lw	a0,36(s0)
1c010002:	00251593          	slli	a1,a0,0x2
1c010006:	e3ff0297          	auipc	t0,0xe3ff0
1c01000a:	44228293          	addi	t0,t0,1090 # 448 <pos_soc_event_callback>
1c01000e:	2055f603          	p.lw	a2,t0(a1)
1c010012:	e3ff0297          	auipc	t0,0xe3ff0
1c010016:	03628293          	addi	t0,t0,54 # 48 <pos_soc_event_callback_arg>
1c01001a:	2055f583          	p.lw	a1,t0(a1)
1c01001e:	00000497          	auipc	s1,0x0
1c010022:	03048493          	addi	s1,s1,48 # 1c01004e <pos_soc_event_handler_end_asm>
1c010026:	f0fff06f          	j	1c00ff34 <pos_irq_call_external_c_function>

1c01002a <pos_soc_event_no_udma_asm>:
1c01002a:	00555593          	srli	a1,a0,0x5
1c01002e:	058a                	slli	a1,a1,0x2
1c010030:	e3ff0297          	auipc	t0,0xe3ff0
1c010034:	ff828293          	addi	t0,t0,-8 # 28 <pos_soc_event_status>
1c010038:	2055f603          	p.lw	a2,t0(a1)
1c01003c:	897d                	andi	a0,a0,31
1c01003e:	80a64633          	p.bsetr	a2,a2,a0
1c010042:	e3ff0297          	auipc	t0,0xe3ff0
1c010046:	fe628293          	addi	t0,t0,-26 # 28 <pos_soc_event_status>
1c01004a:	00c5e2a3          	p.sw	a2,t0(a1)

1c01004e <pos_soc_event_handler_end_asm>:
1c01004e:	4402                	lw	s0,0(sp)
1c010050:	4492                	lw	s1,4(sp)
1c010052:	4522                	lw	a0,8(sp)
1c010054:	45b2                	lw	a1,12(sp)
1c010056:	4642                	lw	a2,16(sp)
1c010058:	6109                	addi	sp,sp,128
1c01005a:	30200073          	mret

1c01005e <_endtext>:
	...

Déassemblage de la section .l2_data :

1c010060 <__cluster_text_start>:
1c010060:	f1402573          	csrr	a0,mhartid
1c010064:	01f57593          	andi	a1,a0,31
1c010068:	8115                	srli	a0,a0,0x5
1c01006a:	000702b7          	lui	t0,0x70
1c01006e:	00204337          	lui	t1,0x204
1c010072:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c010076:	4381                	li	t2,0
1c010078:	0e759463          	bne	a1,t2,1c010160 <pos_slave_start>
1c01007c:	20000293          	li	t0,512
1c010080:	00204337          	lui	t1,0x204
1c010084:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c010088:	e3ff0417          	auipc	s0,0xe3ff0
1c01008c:	f7c40413          	addi	s0,s0,-132 # 4 <pos_fll_freq>
1c010090:	002049b7          	lui	s3,0x204
1c010094:	4a09                	li	s4,2
1c010096:	00000a97          	auipc	s5,0x0
1c01009a:	038a8a93          	addi	s5,s5,56 # 1c0100ce <pos_master_event>
1c01009e:	ffffdb97          	auipc	s7,0xffffd
1c0100a2:	1aeb8b93          	addi	s7,s7,430 # 1c00d24c <pos_cluster>
1c0100a6:	02c00393          	li	t2,44
1c0100aa:	02a383b3          	mul	t2,t2,a0
1c0100ae:	9b9e                	add	s7,s7,t2
1c0100b0:	0bd1                	addi	s7,s7,20
1c0100b2:	1a10acb7          	lui	s9,0x1a10a
1c0100b6:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c0100ba:	4c09                	li	s8,2
1c0100bc:	00000d17          	auipc	s10,0x0
1c0100c0:	0e2d0d13          	addi	s10,s10,226 # 1c01019e <pos_set_slave_stack>
1c0100c4:	001d6d13          	ori	s10,s10,1
1c0100c8:	30045073          	csrwi	mstatus,8
1c0100cc:	a829                	j	1c0100e6 <pos_master_loop>

1c0100ce <pos_master_event>:
1c0100ce:	018b2b03          	lw	s6,24(s6)
1c0100d2:	000b0a63          	beqz	s6,1c0100e6 <pos_master_loop>

1c0100d6 <pos_push_event_to_fc_retry>:
1c0100d6:	000ba283          	lw	t0,0(s7)
1c0100da:	06029c63          	bnez	t0,1c010152 <pos_push_event_to_fc_wait>
1c0100de:	016ba023          	sw	s6,0(s7)
1c0100e2:	018ca023          	sw	s8,0(s9)

1c0100e6 <pos_master_loop>:
1c0100e6:	00042b03          	lw	s6,0(s0)
1c0100ea:	040b0d63          	beqz	s6,1c010144 <pos_master_sleep>

1c0100ee <pos_master_loop_update_next>:
1c0100ee:	020b2e83          	lw	t4,32(s6)
1c0100f2:	01d42023          	sw	t4,0(s0)
1c0100f6:	020b2f03          	lw	t5,32(s6)
1c0100fa:	ffee9ae3          	bne	t4,t5,1c0100ee <pos_master_loop_update_next>

1c0100fe <pos_master_loop_exec_task>:
1c0100fe:	004b2503          	lw	a0,4(s6)
1c010102:	000b2283          	lw	t0,0(s6)
1c010106:	008b2103          	lw	sp,8(s6)
1c01010a:	00cb2303          	lw	t1,12(s6)
1c01010e:	010b2383          	lw	t2,16(s6)
1c010112:	024b2f03          	lw	t5,36(s6)
1c010116:	014b2f83          	lw	t6,20(s6)
1c01011a:	80d6                	mv	ra,s5
1c01011c:	911a                	add	sp,sp,t1
1c01011e:	e3ff0e17          	auipc	t3,0xe3ff0
1c010122:	effe2d23          	sw	t6,-262(t3) # 18 <_l1_preload_size>

1c010126 <pos_no_stack_check>:
1c010126:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c01012a:	21e9a023          	sw	t5,512(s3)
1c01012e:	21e9a623          	sw	t5,524(s3)

1c010132 <pos_master_no_slave_barrier>:
1c010132:	000f2863          	p.beqimm	t5,0,1c010142 <pos_master_loop_no_slave>
1c010136:	09a9a023          	sw	s10,128(s3)
1c01013a:	0879a023          	sw	t2,128(s3)
1c01013e:	0829a023          	sw	sp,128(s3)

1c010142 <pos_master_loop_no_slave>:
1c010142:	8282                	jr	t0

1c010144 <pos_master_sleep>:
1c010144:	0149a423          	sw	s4,8(s3)
1c010148:	03c9e003          	p.elw	zero,60(s3)
1c01014c:	0149a223          	sw	s4,4(s3)
1c010150:	bf59                	j	1c0100e6 <pos_master_loop>

1c010152 <pos_push_event_to_fc_wait>:
1c010152:	0149a423          	sw	s4,8(s3)
1c010156:	03c9e003          	p.elw	zero,60(s3)
1c01015a:	0149a223          	sw	s4,4(s3)
1c01015e:	bfa5                	j	1c0100d6 <pos_push_event_to_fc_retry>

1c010160 <pos_slave_start>:
1c010160:	00204937          	lui	s2,0x204
1c010164:	f14029f3          	csrr	s3,mhartid
1c010168:	01f9f993          	andi	s3,s3,31
1c01016c:	00000a17          	auipc	s4,0x0
1c010170:	012a0a13          	addi	s4,s4,18 # 1c01017e <pos_fork_return>
1c010174:	00000a97          	auipc	s5,0x0
1c010178:	00ea8a93          	addi	s5,s5,14 # 1c010182 <pos_wait_for_dispatch>
1c01017c:	a019                	j	1c010182 <pos_wait_for_dispatch>

1c01017e <pos_fork_return>:
1c01017e:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c010182 <pos_wait_for_dispatch>:
1c010182:	08096283          	p.elw	t0,128(s2)
1c010186:	08096503          	p.elw	a0,128(s2)
1c01018a:	0012f313          	andi	t1,t0,1
1c01018e:	00031563          	bnez	t1,1c010198 <pos_other_entry>

1c010192 <pos_fork_entry>:
1c010192:	000a00b3          	add	ra,s4,zero
1c010196:	8282                	jr	t0

1c010198 <pos_other_entry>:
1c010198:	000a80b3          	add	ra,s5,zero
1c01019c:	8282                	jr	t0

1c01019e <pos_set_slave_stack>:
1c01019e:	08096283          	p.elw	t0,128(s2)
1c0101a2:	00098f13          	mv	t5,s3
1c0101a6:	02af0eb3          	mul	t4,t5,a0
1c0101aa:	005e8133          	add	sp,t4,t0
1c0101ae:	8082                	ret

1c0101b0 <__cluster_text_end>:
	...
