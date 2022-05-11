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
1c00d384:	b5050513          	addi	a0,a0,-1200 # 1c00fed0 <pos_init_entry>
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

1c00dc04 <task_matMultAutoVectorization>:
1c00dc04:	6f91                	lui	t6,0x4
1c00dc06:	f8060293          	addi	t0,a2,-128
1c00dc0a:	080f8f93          	addi	t6,t6,128 # 4080 <pos_soc_event_callback+0x3c38>
1c00dc0e:	8eaa                	mv	t4,a0
1c00dc10:	08050f13          	addi	t5,a0,128
1c00dc14:	9faa                	add	t6,t6,a0
1c00dc16:	40a603b3          	sub	t2,a2,a0
1c00dc1a:	40a282b3          	sub	t0,t0,a0
1c00dc1e:	8e2e                	mv	t3,a1
1c00dc20:	01e28333          	add	t1,t0,t5
1c00dc24:	405388b3          	sub	a7,t2,t0
1c00dc28:	0158c07b          	lp.setup	x0,a7,1c00dc52 <task_matMultAutoVectorization+0x4e>
1c00dc2c:	000300ab          	p.sb	zero,1(t1!)
1c00dc30:	8672                	mv	a2,t3
1c00dc32:	86f6                	mv	a3,t4
1c00dc34:	4781                	li	a5,0
1c00dc36:	41df0733          	sub	a4,t5,t4
1c00dc3a:	008740fb          	lp.setup	x1,a4,1c00dc4a <task_matMultAutoVectorization+0x46>
1c00dc3e:	0016c80b          	p.lbu	a6,1(a3!) # 400001 <__l1_heap_size+0x3f001d> # a7 = sext(mem8(a3)) ; a7 += 1
1c00dc42:	0016450b          	p.lbu	a0,1(a2!) # LBU LOAD JUST ONE BYTE ! # a6 = sext(mem8(a0)) ; a6 += 1
1c00dc46:	42a807b3          	p.mac	a5,a6,a0
1c00dc4a:	0ff7f793          	andi	a5,a5,255
1c00dc4e:	fef30fa3          	sb	a5,-1(t1)
1c00dc52:	080e0e13          	addi	t3,t3,128
1c00dc56:	080f0f13          	addi	t5,t5,128
1c00dc5a:	080e8e93          	addi	t4,t4,128
1c00dc5e:	fdff10e3          	bne	t5,t6,1c00dc1e <task_matMultAutoVectorization+0x1a>
1c00dc62:	8082                	ret

1c00dc64 <main>:
1c00dc64:	1141                	addi	sp,sp,-16
1c00dc66:	1c001537          	lui	a0,0x1c001
1c00dc6a:	1c0055b7          	lui	a1,0x1c005
1c00dc6e:	c606                	sw	ra,12(sp)
1c00dc70:	c422                	sw	s0,8(sp)
1c00dc72:	c226                	sw	s1,4(sp)
1c00dc74:	4801                	li	a6,0
1c00dc76:	24050e13          	addi	t3,a0,576 # 1c001240 <_edata>
1c00dc7a:	24058313          	addi	t1,a1,576 # 1c005240 <B>
1c00dc7e:	0808d07b          	lp.setupi	x0,128,1c00dca0 <main+0x3c>
1c00dc82:	0ff87793          	andi	a5,a6,255
1c00dc86:	010e0633          	add	a2,t3,a6
1c00dc8a:	010306b3          	add	a3,t1,a6
1c00dc8e:	0803d0fb          	lp.setupi	x1,128,1c00dc9c <main+0x38>
1c00dc92:	00f600ab          	p.sb	a5,1(a2!)
1c00dc96:	00f680ab          	p.sb	a5,1(a3!)
1c00dc9a:	0785                	addi	a5,a5,1
1c00dc9c:	0ff7f793          	andi	a5,a5,255
1c00dca0:	08080813          	addi	a6,a6,128
1c00dca4:	000207b7          	lui	a5,0x20
1c00dca8:	0789                	addi	a5,a5,2
1c00dcaa:	cc079073          	csrw	0xcc0,a5
1c00dcae:	f1402473          	csrr	s0,mhartid
1c00dcb2:	47fd                	li	a5,31
1c00dcb4:	ca541733          	p.extractu	a4,s0,5,5
1c00dcb8:	0af70663          	beq	a4,a5,1c00dd64 <main+0x100>
1c00dcbc:	102007b7          	lui	a5,0x10200
1c00dcc0:	4705                	li	a4,1
1c00dcc2:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dcc6:	02e7a023          	sw	a4,32(a5)
1c00dcca:	4781                	li	a5,0
1c00dccc:	79f79073          	csrw	pccr31,a5
1c00dcd0:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dcd4:	477d                	li	a4,31
1c00dcd6:	0ae78d63          	beq	a5,a4,1c00dd90 <main+0x12c>
1c00dcda:	102007b7          	lui	a5,0x10200
1c00dcde:	4705                	li	a4,1
1c00dce0:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dce4:	00e7ac23          	sw	a4,24(a5)
1c00dce8:	478d                	li	a5,3
1c00dcea:	cc179073          	csrw	0xcc1,a5
1c00dcee:	1c009637          	lui	a2,0x1c009
1c00dcf2:	24060613          	addi	a2,a2,576 # 1c009240 <tempC>
1c00dcf6:	24058593          	addi	a1,a1,576
1c00dcfa:	24050513          	addi	a0,a0,576
1c00dcfe:	3719                	jal	1c00dc04 <task_matMultAutoVectorization>
1c00dd00:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dd04:	477d                	li	a4,31
1c00dd06:	06e78d63          	beq	a5,a4,1c00dd80 <main+0x11c>
1c00dd0a:	102007b7          	lui	a5,0x10200
1c00dd0e:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd12:	0007a023          	sw	zero,0(a5)
1c00dd16:	4781                	li	a5,0
1c00dd18:	cc179073          	csrw	0xcc1,a5
1c00dd1c:	4505                	li	a0,1
1c00dd1e:	3371                	jal	1c00daaa <cpu_perf_get>
1c00dd20:	ca541433          	p.extractu	s0,s0,5,5
1c00dd24:	47fd                	li	a5,31
1c00dd26:	84aa                	mv	s1,a0
1c00dd28:	04f40763          	beq	s0,a5,1c00dd76 <main+0x112>
1c00dd2c:	10200637          	lui	a2,0x10200
1c00dd30:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd34:	00862403          	lw	s0,8(a2)
1c00dd38:	d014f7d3          	fcvt.s.wu	a5,s1
1c00dd3c:	d0147553          	fcvt.s.wu	a0,s0
1c00dd40:	18f57553          	fdiv.s	a0,a0,a5
1c00dd44:	31c9                	jal	1c00da06 <__extendsfdf2>
1c00dd46:	872a                	mv	a4,a0
1c00dd48:	1c001537          	lui	a0,0x1c001
1c00dd4c:	87ae                	mv	a5,a1
1c00dd4e:	8622                	mv	a2,s0
1c00dd50:	85a6                	mv	a1,s1
1c00dd52:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c00dd56:	22f5                	jal	1c00df42 <printf>
1c00dd58:	40b2                	lw	ra,12(sp)
1c00dd5a:	4422                	lw	s0,8(sp)
1c00dd5c:	4492                	lw	s1,4(sp)
1c00dd5e:	4501                	li	a0,0
1c00dd60:	0141                	addi	sp,sp,16
1c00dd62:	8082                	ret
1c00dd64:	4785                	li	a5,1
1c00dd66:	1a10b737          	lui	a4,0x1a10b
1c00dd6a:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c00dd6e:	4781                	li	a5,0
1c00dd70:	79f79073          	csrw	pccr31,a5
1c00dd74:	bfb1                	j	1c00dcd0 <main+0x6c>
1c00dd76:	1a10b637          	lui	a2,0x1a10b
1c00dd7a:	00862403          	lw	s0,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00dd7e:	bf6d                	j	1c00dd38 <main+0xd4>
1c00dd80:	1a10b7b7          	lui	a5,0x1a10b
1c00dd84:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00dd88:	4781                	li	a5,0
1c00dd8a:	cc179073          	csrw	0xcc1,a5
1c00dd8e:	b779                	j	1c00dd1c <main+0xb8>
1c00dd90:	4785                	li	a5,1
1c00dd92:	1a10b737          	lui	a4,0x1a10b
1c00dd96:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c00dd9a:	478d                	li	a5,3
1c00dd9c:	cc179073          	csrw	0xcc1,a5
1c00dda0:	b7b9                	j	1c00dcee <main+0x8a>

1c00dda2 <pos_fll_init>:
1c00dda2:	00451593          	slli	a1,a0,0x4
1c00dda6:	832a                	mv	t1,a0
1c00dda8:	00458e13          	addi	t3,a1,4
1c00ddac:	1a100637          	lui	a2,0x1a100
1c00ddb0:	21c67703          	p.lw	a4,t3(a2)
1c00ddb4:	86ba                	mv	a3,a4
1c00ddb6:	04074163          	bltz	a4,1c00ddf8 <pos_fll_init+0x56>
1c00ddba:	00858793          	addi	a5,a1,8
1c00ddbe:	20f67883          	p.lw	a7,a5(a2)
1c00ddc2:	4519                	li	a0,6
1c00ddc4:	caa528b3          	p.insert	a7,a0,5,10
1c00ddc8:	05000513          	li	a0,80
1c00ddcc:	d70528b3          	p.insert	a7,a0,11,16
1c00ddd0:	1a100837          	lui	a6,0x1a100
1c00ddd4:	011867a3          	p.sw	a7,a5(a6)
1c00ddd8:	05b1                	addi	a1,a1,12
1c00ddda:	20b67603          	p.lw	a2,a1(a2)
1c00ddde:	14c00793          	li	a5,332
1c00dde2:	d307a633          	p.insert	a2,a5,9,16
1c00dde6:	00c865a3          	p.sw	a2,a1(a6)
1c00ddea:	4785                	li	a5,1
1c00ddec:	c1e7a6b3          	p.insert	a3,a5,0,30
1c00ddf0:	c1f7a6b3          	p.insert	a3,a5,0,31
1c00ddf4:	00d86e23          	p.sw	a3,t3(a6)
1c00ddf8:	00400793          	li	a5,4
1c00ddfc:	00231613          	slli	a2,t1,0x2
1c00de00:	963e                	add	a2,a2,a5
1c00de02:	4208                	lw	a0,0(a2)
1c00de04:	ed19                	bnez	a0,1c00de22 <pos_fll_init+0x80>
1c00de06:	10075733          	p.exthz	a4,a4
1c00de0a:	c7a696b3          	p.extractu	a3,a3,3,26
1c00de0e:	073e                	slli	a4,a4,0xf
1c00de10:	16fd                	addi	a3,a3,-1
1c00de12:	00d75533          	srl	a0,a4,a3
1c00de16:	c208                	sw	a0,0(a2)
1c00de18:	979a                	add	a5,a5,t1
1c00de1a:	4705                	li	a4,1
1c00de1c:	00e78623          	sb	a4,12(a5)
1c00de20:	8082                	ret
1c00de22:	46f5                	li	a3,29
1c00de24:	10051733          	p.fl1	a4,a0
1c00de28:	4585                	li	a1,1
1c00de2a:	82e6b75b          	p.subun	a4,a3,a4,1
1c00de2e:	04e5e733          	p.max	a4,a1,a4
1c00de32:	fff70693          	addi	a3,a4,-1
1c00de36:	00e51833          	sll	a6,a0,a4
1c00de3a:	00d595b3          	sll	a1,a1,a3
1c00de3e:	dc0838b3          	p.bclr	a7,a6,14,0
1c00de42:	006786b3          	add	a3,a5,t1
1c00de46:	c0e8a5db          	p.addunr	a1,a7,a4
1c00de4a:	00c6c683          	lbu	a3,12(a3)
1c00de4e:	c20c                	sw	a1,0(a2)
1c00de50:	d6e1                	beqz	a3,1c00de18 <pos_fll_init+0x76>
1c00de52:	1a100637          	lui	a2,0x1a100
1c00de56:	21c67683          	p.lw	a3,t3(a2)
1c00de5a:	00f85813          	srli	a6,a6,0xf
1c00de5e:	de0826b3          	p.insert	a3,a6,15,0
1c00de62:	0705                	addi	a4,a4,1
1c00de64:	c7a726b3          	p.insert	a3,a4,3,26
1c00de68:	00d66e23          	p.sw	a3,t3(a2)
1c00de6c:	979a                	add	a5,a5,t1
1c00de6e:	4705                	li	a4,1
1c00de70:	00e78623          	sb	a4,12(a5)
1c00de74:	8082                	ret

1c00de76 <pos_fll_constructor>:
1c00de76:	00400793          	li	a5,4
1c00de7a:	0007a023          	sw	zero,0(a5)
1c00de7e:	0007a223          	sw	zero,4(a5)
1c00de82:	0007a423          	sw	zero,8(a5)
1c00de86:	00079623          	sh	zero,12(a5)
1c00de8a:	00078723          	sb	zero,14(a5)
1c00de8e:	8082                	ret

1c00de90 <pos_soc_init>:
1c00de90:	1141                	addi	sp,sp,-16
1c00de92:	c606                	sw	ra,12(sp)
1c00de94:	c422                	sw	s0,8(sp)
1c00de96:	37c5                	jal	1c00de76 <pos_fll_constructor>
1c00de98:	4501                	li	a0,0
1c00de9a:	3721                	jal	1c00dda2 <pos_fll_init>
1c00de9c:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c00dea0:	4505                	li	a0,1
1c00dea2:	3701                	jal	1c00dda2 <pos_fll_init>
1c00dea4:	01400413          	li	s0,20
1c00dea8:	c408                	sw	a0,8(s0)
1c00deaa:	4509                	li	a0,2
1c00deac:	3ddd                	jal	1c00dda2 <pos_fll_init>
1c00deae:	c048                	sw	a0,4(s0)
1c00deb0:	40b2                	lw	ra,12(sp)
1c00deb2:	4422                	lw	s0,8(sp)
1c00deb4:	0141                	addi	sp,sp,16
1c00deb6:	8082                	ret

1c00deb8 <strchr>:
1c00deb8:	00054783          	lbu	a5,0(a0)
1c00debc:	0ff5f593          	andi	a1,a1,255
1c00dec0:	00b78c63          	beq	a5,a1,1c00ded8 <strchr+0x20>
1c00dec4:	cb99                	beqz	a5,1c00deda <strchr+0x22>
1c00dec6:	00150793          	addi	a5,a0,1
1c00deca:	a011                	j	1c00dece <strchr+0x16>
1c00decc:	c719                	beqz	a4,1c00deda <strchr+0x22>
1c00dece:	853e                	mv	a0,a5
1c00ded0:	0017c70b          	p.lbu	a4,1(a5!)
1c00ded4:	feb71ce3          	bne	a4,a1,1c00decc <strchr+0x14>
1c00ded8:	8082                	ret
1c00deda:	0015b593          	seqz	a1,a1
1c00dede:	40b005b3          	neg	a1,a1
1c00dee2:	8d6d                	and	a0,a0,a1
1c00dee4:	8082                	ret

1c00dee6 <pos_libc_fputc_locked>:
1c00dee6:	f14027f3          	csrr	a5,mhartid
1c00deea:	1a10f6b7          	lui	a3,0x1a10f
1c00deee:	ca5797b3          	p.extractu	a5,a5,5,5
1c00def2:	f1402773          	csrr	a4,mhartid
1c00def6:	079e                	slli	a5,a5,0x7
1c00def8:	070e                	slli	a4,a4,0x3
1c00defa:	0ff57513          	andi	a0,a0,255
1c00defe:	ee873733          	p.bclr	a4,a4,23,8
1c00df02:	97b6                	add	a5,a5,a3
1c00df04:	00a767a3          	p.sw	a0,a5(a4)
1c00df08:	4501                	li	a0,0
1c00df0a:	8082                	ret

1c00df0c <pos_libc_prf_locked>:
1c00df0c:	a095                	j	1c00df70 <pos_libc_prf>

1c00df0e <exit>:
1c00df0e:	1141                	addi	sp,sp,-16
1c00df10:	c422                	sw	s0,8(sp)
1c00df12:	c606                	sw	ra,12(sp)
1c00df14:	842a                	mv	s0,a0
1c00df16:	43d010ef          	jal	ra,1c00fb52 <pos_init_stop>
1c00df1a:	c1f44533          	p.bset	a0,s0,0,31
1c00df1e:	1a1047b7          	lui	a5,0x1a104
1c00df22:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c00df26:	1a10a7b7          	lui	a5,0x1a10a
1c00df2a:	577d                	li	a4,-1
1c00df2c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00df30:	10500073          	wfi
1c00df34:	10500073          	wfi
1c00df38:	bfe5                	j	1c00df30 <exit+0x22>

1c00df3a <pos_io_start>:
1c00df3a:	4501                	li	a0,0
1c00df3c:	8082                	ret

1c00df3e <pos_io_stop>:
1c00df3e:	4501                	li	a0,0
1c00df40:	8082                	ret

1c00df42 <printf>:
1c00df42:	7139                	addi	sp,sp,-64
1c00df44:	02410313          	addi	t1,sp,36
1c00df48:	d432                	sw	a2,40(sp)
1c00df4a:	862a                	mv	a2,a0
1c00df4c:	1c00e537          	lui	a0,0x1c00e
1c00df50:	d22e                	sw	a1,36(sp)
1c00df52:	d636                	sw	a3,44(sp)
1c00df54:	4589                	li	a1,2
1c00df56:	869a                	mv	a3,t1
1c00df58:	ee650513          	addi	a0,a0,-282 # 1c00dee6 <pos_libc_fputc_locked>
1c00df5c:	ce06                	sw	ra,28(sp)
1c00df5e:	d83a                	sw	a4,48(sp)
1c00df60:	da3e                	sw	a5,52(sp)
1c00df62:	dc42                	sw	a6,56(sp)
1c00df64:	de46                	sw	a7,60(sp)
1c00df66:	c61a                	sw	t1,12(sp)
1c00df68:	3755                	jal	1c00df0c <pos_libc_prf_locked>
1c00df6a:	40f2                	lw	ra,28(sp)
1c00df6c:	6121                	addi	sp,sp,64
1c00df6e:	8082                	ret

1c00df70 <pos_libc_prf>:
1c00df70:	7119                	addi	sp,sp,-128
1c00df72:	dca2                	sw	s0,120(sp)
1c00df74:	1058                	addi	a4,sp,36
1c00df76:	4401                	li	s0,0
1c00df78:	d6ce                	sw	s3,108(sp)
1c00df7a:	d4d2                	sw	s4,104(sp)
1c00df7c:	d2d6                	sw	s5,100(sp)
1c00df7e:	cede                	sw	s7,92(sp)
1c00df80:	cce2                	sw	s8,88(sp)
1c00df82:	c8ea                	sw	s10,80(sp)
1c00df84:	de86                	sw	ra,124(sp)
1c00df86:	daa6                	sw	s1,116(sp)
1c00df88:	d8ca                	sw	s2,112(sp)
1c00df8a:	d0da                	sw	s6,96(sp)
1c00df8c:	cae6                	sw	s9,84(sp)
1c00df8e:	c6ee                	sw	s11,76(sp)
1c00df90:	89aa                	mv	s3,a0
1c00df92:	8bae                	mv	s7,a1
1c00df94:	8d32                	mv	s10,a2
1c00df96:	8a36                	mv	s4,a3
1c00df98:	1c001c37          	lui	s8,0x1c001
1c00df9c:	c03a                	sw	a4,0(sp)
1c00df9e:	8aa2                	mv	s5,s0
1c00dfa0:	a039                	j	1c00dfae <pos_libc_prf+0x3e>
1c00dfa2:	85de                	mv	a1,s7
1c00dfa4:	9982                	jalr	s3
1c00dfa6:	15f52063          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00dfaa:	0a85                	addi	s5,s5,1
1c00dfac:	8d22                	mv	s10,s0
1c00dfae:	000d4503          	lbu	a0,0(s10)
1c00dfb2:	001d0413          	addi	s0,s10,1
1c00dfb6:	c979                	beqz	a0,1c00e08c <pos_libc_prf+0x11c>
1c00dfb8:	02500793          	li	a5,37
1c00dfbc:	fef513e3          	bne	a0,a5,1c00dfa2 <pos_libc_prf+0x32>
1c00dfc0:	ca02                	sw	zero,20(sp)
1c00dfc2:	c802                	sw	zero,16(sp)
1c00dfc4:	c602                	sw	zero,12(sp)
1c00dfc6:	c402                	sw	zero,8(sp)
1c00dfc8:	c202                	sw	zero,4(sp)
1c00dfca:	02300493          	li	s1,35
1c00dfce:	02d00b13          	li	s6,45
1c00dfd2:	00044c83          	lbu	s9,0(s0)
1c00dfd6:	00140913          	addi	s2,s0,1
1c00dfda:	85e6                	mv	a1,s9
1c00dfdc:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c00dfe0:	8d4a                	mv	s10,s2
1c00dfe2:	8de6                	mv	s11,s9
1c00dfe4:	3dd1                	jal	1c00deb8 <strchr>
1c00dfe6:	c91d                	beqz	a0,1c00e01c <pos_libc_prf+0xac>
1c00dfe8:	109c8963          	beq	s9,s1,1c00e0fa <pos_libc_prf+0x18a>
1c00dfec:	0194fe63          	bleu	s9,s1,1c00e008 <pos_libc_prf+0x98>
1c00dff0:	116c8163          	beq	s9,s6,1c00e0f2 <pos_libc_prf+0x182>
1c00dff4:	03000713          	li	a4,48
1c00dff8:	0eec8963          	beq	s9,a4,1c00e0ea <pos_libc_prf+0x17a>
1c00dffc:	02b00793          	li	a5,43
1c00e000:	0afc8763          	beq	s9,a5,1c00e0ae <pos_libc_prf+0x13e>
1c00e004:	844a                	mv	s0,s2
1c00e006:	b7f1                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e008:	080c8263          	beqz	s9,1c00e08c <pos_libc_prf+0x11c>
1c00e00c:	02000793          	li	a5,32
1c00e010:	fefc9ae3          	bne	s9,a5,1c00e004 <pos_libc_prf+0x94>
1c00e014:	4785                	li	a5,1
1c00e016:	c83e                	sw	a5,16(sp)
1c00e018:	844a                	mv	s0,s2
1c00e01a:	bf65                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e01c:	02a00693          	li	a3,42
1c00e020:	2edc8263          	beq	s9,a3,1c00e304 <pos_libc_prf+0x394>
1c00e024:	fd0c8693          	addi	a3,s9,-48
1c00e028:	45a5                	li	a1,9
1c00e02a:	4b01                	li	s6,0
1c00e02c:	0cd5fd63          	bleu	a3,a1,1c00e106 <pos_libc_prf+0x196>
1c00e030:	02e00793          	li	a5,46
1c00e034:	28fd8663          	beq	s11,a5,1c00e2c0 <pos_libc_prf+0x350>
1c00e038:	846e                	mv	s0,s11
1c00e03a:	54fd                	li	s1,-1
1c00e03c:	1c001737          	lui	a4,0x1c001
1c00e040:	85ee                	mv	a1,s11
1c00e042:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c00e046:	3d8d                	jal	1c00deb8 <strchr>
1c00e048:	4781                	li	a5,0
1c00e04a:	cd19                	beqz	a0,1c00e068 <pos_libc_prf+0xf8>
1c00e04c:	06c00793          	li	a5,108
1c00e050:	001d0693          	addi	a3,s10,1
1c00e054:	000d4d83          	lbu	s11,0(s10)
1c00e058:	3af40563          	beq	s0,a5,1c00e402 <pos_libc_prf+0x492>
1c00e05c:	06800793          	li	a5,104
1c00e060:	3af40563          	beq	s0,a5,1c00e40a <pos_libc_prf+0x49a>
1c00e064:	8d36                	mv	s10,a3
1c00e066:	87a2                	mv	a5,s0
1c00e068:	06700693          	li	a3,103
1c00e06c:	0bb6ee63          	bltu	a3,s11,1c00e128 <pos_libc_prf+0x1b8>
1c00e070:	06500693          	li	a3,101
1c00e074:	3addf2e3          	bleu	a3,s11,1c00ec18 <pos_libc_prf+0xca8>
1c00e078:	04700693          	li	a3,71
1c00e07c:	39b6ed63          	bltu	a3,s11,1c00e416 <pos_libc_prf+0x4a6>
1c00e080:	04500793          	li	a5,69
1c00e084:	38fdfae3          	bleu	a5,s11,1c00ec18 <pos_libc_prf+0xca8>
1c00e088:	2e0d9863          	bnez	s11,1c00e378 <pos_libc_prf+0x408>
1c00e08c:	8456                	mv	s0,s5
1c00e08e:	8522                	mv	a0,s0
1c00e090:	50f6                	lw	ra,124(sp)
1c00e092:	5466                	lw	s0,120(sp)
1c00e094:	54d6                	lw	s1,116(sp)
1c00e096:	5946                	lw	s2,112(sp)
1c00e098:	59b6                	lw	s3,108(sp)
1c00e09a:	5a26                	lw	s4,104(sp)
1c00e09c:	5a96                	lw	s5,100(sp)
1c00e09e:	5b06                	lw	s6,96(sp)
1c00e0a0:	4bf6                	lw	s7,92(sp)
1c00e0a2:	4c66                	lw	s8,88(sp)
1c00e0a4:	4cd6                	lw	s9,84(sp)
1c00e0a6:	4d46                	lw	s10,80(sp)
1c00e0a8:	4db6                	lw	s11,76(sp)
1c00e0aa:	6109                	addi	sp,sp,128
1c00e0ac:	8082                	ret
1c00e0ae:	4705                	li	a4,1
1c00e0b0:	c63a                	sw	a4,12(sp)
1c00e0b2:	844a                	mv	s0,s2
1c00e0b4:	bf39                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e0b6:	00044503          	lbu	a0,0(s0)
1c00e0ba:	47a5                	li	a5,9
1c00e0bc:	fd050693          	addi	a3,a0,-48
1c00e0c0:	72d7e9e3          	bltu	a5,a3,1c00eff2 <pos_libc_prf+0x1082>
1c00e0c4:	00140793          	addi	a5,s0,1
1c00e0c8:	8dbe                	mv	s11,a5
1c00e0ca:	a809                	j	1c00e0dc <pos_libc_prf+0x16c>
1c00e0cc:	001dc50b          	p.lbu	a0,1(s11!)
1c00e0d0:	4725                	li	a4,9
1c00e0d2:	fd050793          	addi	a5,a0,-48
1c00e0d6:	197d                	addi	s2,s2,-1
1c00e0d8:	70f76ee3          	bltu	a4,a5,1c00eff4 <pos_libc_prf+0x1084>
1c00e0dc:	85de                	mv	a1,s7
1c00e0de:	846e                	mv	s0,s11
1c00e0e0:	9982                	jalr	s3
1c00e0e2:	fff535e3          	p.bneimm	a0,-1,1c00e0cc <pos_libc_prf+0x15c>
1c00e0e6:	547d                	li	s0,-1
1c00e0e8:	b75d                	j	1c00e08e <pos_libc_prf+0x11e>
1c00e0ea:	4785                	li	a5,1
1c00e0ec:	ca3e                	sw	a5,20(sp)
1c00e0ee:	844a                	mv	s0,s2
1c00e0f0:	b5cd                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e0f2:	4705                	li	a4,1
1c00e0f4:	c43a                	sw	a4,8(sp)
1c00e0f6:	844a                	mv	s0,s2
1c00e0f8:	bde9                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e0fa:	4705                	li	a4,1
1c00e0fc:	c23a                	sw	a4,4(sp)
1c00e0fe:	844a                	mv	s0,s2
1c00e100:	bdc9                	j	1c00dfd2 <pos_libc_prf+0x62>
1c00e102:	844a                	mv	s0,s2
1c00e104:	0905                	addi	s2,s2,1
1c00e106:	002b1793          	slli	a5,s6,0x2
1c00e10a:	00094d83          	lbu	s11,0(s2)
1c00e10e:	97da                	add	a5,a5,s6
1c00e110:	0786                	slli	a5,a5,0x1
1c00e112:	97e6                	add	a5,a5,s9
1c00e114:	fd0d8713          	addi	a4,s11,-48
1c00e118:	fd078b13          	addi	s6,a5,-48
1c00e11c:	8cee                	mv	s9,s11
1c00e11e:	fee5f2e3          	bleu	a4,a1,1c00e102 <pos_libc_prf+0x192>
1c00e122:	00240d13          	addi	s10,s0,2
1c00e126:	b729                	j	1c00e030 <pos_libc_prf+0xc0>
1c00e128:	07000693          	li	a3,112
1c00e12c:	24dd85e3          	beq	s11,a3,1c00eb76 <pos_libc_prf+0xc06>
1c00e130:	1fb6e463          	bltu	a3,s11,1c00e318 <pos_libc_prf+0x3a8>
1c00e134:	06e00693          	li	a3,110
1c00e138:	20dd8ae3          	beq	s11,a3,1c00eb4c <pos_libc_prf+0xbdc>
1c00e13c:	2fb6e763          	bltu	a3,s11,1c00e42a <pos_libc_prf+0x4ba>
1c00e140:	06900693          	li	a3,105
1c00e144:	2add9ce3          	bne	s11,a3,1c00ebfc <pos_libc_prf+0xc8c>
1c00e148:	06c00693          	li	a3,108
1c00e14c:	00d78a63          	beq	a5,a3,1c00e160 <pos_libc_prf+0x1f0>
1c00e150:	07a00693          	li	a3,122
1c00e154:	00d78663          	beq	a5,a3,1c00e160 <pos_libc_prf+0x1f0>
1c00e158:	04c00693          	li	a3,76
1c00e15c:	5ed78de3          	beq	a5,a3,1c00ef56 <pos_libc_prf+0xfe6>
1c00e160:	000a2783          	lw	a5,0(s4)
1c00e164:	0a11                	addi	s4,s4,4
1c00e166:	41f7d713          	srai	a4,a5,0x1f
1c00e16a:	ce52                	sw	s4,28(sp)
1c00e16c:	c23a                	sw	a4,4(sp)
1c00e16e:	4e0741e3          	bltz	a4,1c00ee50 <pos_libc_prf+0xee0>
1c00e172:	4732                	lw	a4,12(sp)
1c00e174:	440709e3          	beqz	a4,1c00edc6 <pos_libc_prf+0xe56>
1c00e178:	02b00693          	li	a3,43
1c00e17c:	4c92                	lw	s9,4(sp)
1c00e17e:	02d10223          	sb	a3,36(sp)
1c00e182:	02510a13          	addi	s4,sp,37
1c00e186:	843e                	mv	s0,a5
1c00e188:	8dd2                	mv	s11,s4
1c00e18a:	a011                	j	1c00e18e <pos_libc_prf+0x21e>
1c00e18c:	8dca                	mv	s11,s2
1c00e18e:	4629                	li	a2,10
1c00e190:	4681                	li	a3,0
1c00e192:	8522                	mv	a0,s0
1c00e194:	85e6                	mv	a1,s9
1c00e196:	d42ff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e19a:	892a                	mv	s2,a0
1c00e19c:	85e6                	mv	a1,s9
1c00e19e:	8522                	mv	a0,s0
1c00e1a0:	4629                	li	a2,10
1c00e1a2:	4681                	li	a3,0
1c00e1a4:	9f8ff0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e1a8:	03090913          	addi	s2,s2,48
1c00e1ac:	012d8023          	sb	s2,0(s11)
1c00e1b0:	00a5e7b3          	or	a5,a1,a0
1c00e1b4:	001d8913          	addi	s2,s11,1
1c00e1b8:	842a                	mv	s0,a0
1c00e1ba:	8cae                	mv	s9,a1
1c00e1bc:	fbe1                	bnez	a5,1c00e18c <pos_libc_prf+0x21c>
1c00e1be:	00090023          	sb	zero,0(s2)
1c00e1c2:	01ba7d63          	bleu	s11,s4,1c00e1dc <pos_libc_prf+0x26c>
1c00e1c6:	87ee                	mv	a5,s11
1c00e1c8:	000a4683          	lbu	a3,0(s4)
1c00e1cc:	0007c703          	lbu	a4,0(a5)
1c00e1d0:	fed78fab          	p.sb	a3,-1(a5!)
1c00e1d4:	00ea00ab          	p.sb	a4,1(s4!)
1c00e1d8:	fefa68e3          	bltu	s4,a5,1c00e1c8 <pos_libc_prf+0x258>
1c00e1dc:	4782                	lw	a5,0(sp)
1c00e1de:	4732                	lw	a4,12(sp)
1c00e1e0:	40f90933          	sub	s2,s2,a5
1c00e1e4:	3c071de3          	bnez	a4,1c00edbe <pos_libc_prf+0xe4e>
1c00e1e8:	47c2                	lw	a5,16(sp)
1c00e1ea:	3c079ae3          	bnez	a5,1c00edbe <pos_libc_prf+0xe4e>
1c00e1ee:	4712                	lw	a4,4(sp)
1c00e1f0:	837d                	srli	a4,a4,0x1f
1c00e1f2:	c23a                	sw	a4,4(sp)
1c00e1f4:	3404c463          	bltz	s1,1c00e53c <pos_libc_prf+0x5cc>
1c00e1f8:	4712                	lw	a4,4(sp)
1c00e1fa:	412484b3          	sub	s1,s1,s2
1c00e1fe:	94ba                	add	s1,s1,a4
1c00e200:	0404e4b3          	p.max	s1,s1,zero
1c00e204:	009907b3          	add	a5,s2,s1
1c00e208:	40fb0b33          	sub	s6,s6,a5
1c00e20c:	1040                	addi	s0,sp,36
1c00e20e:	4c81                	li	s9,0
1c00e210:	cc02                	sw	zero,24(sp)
1c00e212:	4a01                	li	s4,0
1c00e214:	4722                	lw	a4,8(sp)
1c00e216:	e305                	bnez	a4,1c00e236 <pos_libc_prf+0x2c6>
1c00e218:	01605f63          	blez	s6,1c00e236 <pos_libc_prf+0x2c6>
1c00e21c:	fffb0d93          	addi	s11,s6,-1
1c00e220:	85de                	mv	a1,s7
1c00e222:	02000513          	li	a0,32
1c00e226:	9982                	jalr	s3
1c00e228:	1dfd                	addi	s11,s11,-1
1c00e22a:	ebf52ee3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e22e:	fffdb9e3          	p.bneimm	s11,-1,1c00e220 <pos_libc_prf+0x2b0>
1c00e232:	9ada                	add	s5,s5,s6
1c00e234:	5b7d                	li	s6,-1
1c00e236:	4792                	lw	a5,4(sp)
1c00e238:	00f40db3          	add	s11,s0,a5
1c00e23c:	a031                	j	1c00e248 <pos_libc_prf+0x2d8>
1c00e23e:	0014450b          	p.lbu	a0,1(s0!)
1c00e242:	9982                	jalr	s3
1c00e244:	ebf521e3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e248:	85de                	mv	a1,s7
1c00e24a:	ffb41ae3          	bne	s0,s11,1c00e23e <pos_libc_prf+0x2ce>
1c00e24e:	8da6                	mv	s11,s1
1c00e250:	a021                	j	1c00e258 <pos_libc_prf+0x2e8>
1c00e252:	9982                	jalr	s3
1c00e254:	e9f529e3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e258:	1dfd                	addi	s11,s11,-1
1c00e25a:	85de                	mv	a1,s7
1c00e25c:	03000513          	li	a0,48
1c00e260:	fffdb9e3          	p.bneimm	s11,-1,1c00e252 <pos_libc_prf+0x2e2>
1c00e264:	4712                	lw	a4,4(sp)
1c00e266:	40e90933          	sub	s2,s2,a4
1c00e26a:	c44a                	sw	s2,8(sp)
1c00e26c:	e40a15e3          	bnez	s4,1c00e0b6 <pos_libc_prf+0x146>
1c00e270:	47e2                	lw	a5,24(sp)
1c00e272:	16079763          	bnez	a5,1c00e3e0 <pos_libc_prf+0x470>
1c00e276:	120c8863          	beqz	s9,1c00e3a6 <pos_libc_prf+0x436>
1c00e27a:	00044783          	lbu	a5,0(s0)
1c00e27e:	4a25                	li	s4,9
1c00e280:	02e00d93          	li	s11,46
1c00e284:	a801                	j	1c00e294 <pos_libc_prf+0x324>
1c00e286:	0405                	addi	s0,s0,1
1c00e288:	9982                	jalr	s3
1c00e28a:	e5f52ee3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e28e:	00044783          	lbu	a5,0(s0)
1c00e292:	197d                	addi	s2,s2,-1
1c00e294:	fd078713          	addi	a4,a5,-48
1c00e298:	853e                	mv	a0,a5
1c00e29a:	85de                	mv	a1,s7
1c00e29c:	feea75e3          	bleu	a4,s4,1c00e286 <pos_libc_prf+0x316>
1c00e2a0:	ffb783e3          	beq	a5,s11,1c00e286 <pos_libc_prf+0x316>
1c00e2a4:	8a66                	mv	s4,s9
1c00e2a6:	85de                	mv	a1,s7
1c00e2a8:	03000513          	li	a0,48
1c00e2ac:	01404463          	bgtz	s4,1c00e2b4 <pos_libc_prf+0x344>
1c00e2b0:	0010106f          	j	1c00fab0 <pos_libc_prf+0x1b40>
1c00e2b4:	9982                	jalr	s3
1c00e2b6:	1a7d                	addi	s4,s4,-1
1c00e2b8:	fff537e3          	p.bneimm	a0,-1,1c00e2a6 <pos_libc_prf+0x336>
1c00e2bc:	547d                	li	s0,-1
1c00e2be:	bbc1                	j	1c00e08e <pos_libc_prf+0x11e>
1c00e2c0:	000d4d83          	lbu	s11,0(s10)
1c00e2c4:	02a00793          	li	a5,42
1c00e2c8:	001d0513          	addi	a0,s10,1
1c00e2cc:	08fd8e63          	beq	s11,a5,1c00e368 <pos_libc_prf+0x3f8>
1c00e2d0:	fd0d8793          	addi	a5,s11,-48
1c00e2d4:	4825                	li	a6,9
1c00e2d6:	846e                	mv	s0,s11
1c00e2d8:	86aa                	mv	a3,a0
1c00e2da:	4481                	li	s1,0
1c00e2dc:	45a5                	li	a1,9
1c00e2de:	8d2a                	mv	s10,a0
1c00e2e0:	d4f86ee3          	bltu	a6,a5,1c00e03c <pos_libc_prf+0xcc>
1c00e2e4:	00249793          	slli	a5,s1,0x2
1c00e2e8:	97a6                	add	a5,a5,s1
1c00e2ea:	0786                	slli	a5,a5,0x1
1c00e2ec:	97ee                	add	a5,a5,s11
1c00e2ee:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c00e2f2:	fd078493          	addi	s1,a5,-48
1c00e2f6:	fd0d8793          	addi	a5,s11,-48
1c00e2fa:	846e                	mv	s0,s11
1c00e2fc:	fef5f4e3          	bleu	a5,a1,1c00e2e4 <pos_libc_prf+0x374>
1c00e300:	8d36                	mv	s10,a3
1c00e302:	bb2d                	j	1c00e03c <pos_libc_prf+0xcc>
1c00e304:	000a2b03          	lw	s6,0(s4)
1c00e308:	0a11                	addi	s4,s4,4
1c00e30a:	080b4363          	bltz	s6,1c00e390 <pos_libc_prf+0x420>
1c00e30e:	00094d83          	lbu	s11,0(s2)
1c00e312:	00240d13          	addi	s10,s0,2
1c00e316:	bb29                	j	1c00e030 <pos_libc_prf+0xc0>
1c00e318:	07500693          	li	a3,117
1c00e31c:	10dd8763          	beq	s11,a3,1c00e42a <pos_libc_prf+0x4ba>
1c00e320:	07800693          	li	a3,120
1c00e324:	10dd8363          	beq	s11,a3,1c00e42a <pos_libc_prf+0x4ba>
1c00e328:	07300793          	li	a5,115
1c00e32c:	0cfd98e3          	bne	s11,a5,1c00ebfc <pos_libc_prf+0xc8c>
1c00e330:	004a0713          	addi	a4,s4,4
1c00e334:	ce3a                	sw	a4,28(sp)
1c00e336:	000a2403          	lw	s0,0(s4)
1c00e33a:	3c04c2e3          	bltz	s1,1c00eefe <pos_libc_prf+0xf8e>
1c00e33e:	460481e3          	beqz	s1,1c00efa0 <pos_libc_prf+0x1030>
1c00e342:	00044783          	lbu	a5,0(s0)
1c00e346:	44078ce3          	beqz	a5,1c00ef9e <pos_libc_prf+0x102e>
1c00e34a:	00140793          	addi	a5,s0,1
1c00e34e:	4901                	li	s2,0
1c00e350:	a021                	j	1c00e358 <pos_libc_prf+0x3e8>
1c00e352:	0017c70b          	p.lbu	a4,1(a5!)
1c00e356:	c701                	beqz	a4,1c00e35e <pos_libc_prf+0x3ee>
1c00e358:	0905                	addi	s2,s2,1
1c00e35a:	fe994ce3          	blt	s2,s1,1c00e352 <pos_libc_prf+0x3e2>
1c00e35e:	412b0b33          	sub	s6,s6,s2
1c00e362:	4481                	li	s1,0
1c00e364:	c202                	sw	zero,4(sp)
1c00e366:	b565                	j	1c00e20e <pos_libc_prf+0x29e>
1c00e368:	001d4d83          	lbu	s11,1(s10)
1c00e36c:	000a2483          	lw	s1,0(s4)
1c00e370:	846e                	mv	s0,s11
1c00e372:	0d09                	addi	s10,s10,2
1c00e374:	0a11                	addi	s4,s4,4
1c00e376:	b1d9                	j	1c00e03c <pos_libc_prf+0xcc>
1c00e378:	02500793          	li	a5,37
1c00e37c:	08fd90e3          	bne	s11,a5,1c00ebfc <pos_libc_prf+0xc8c>
1c00e380:	85de                	mv	a1,s7
1c00e382:	02500513          	li	a0,37
1c00e386:	9982                	jalr	s3
1c00e388:	d5f52fe3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e38c:	0a85                	addi	s5,s5,1
1c00e38e:	b105                	j	1c00dfae <pos_libc_prf+0x3e>
1c00e390:	4785                	li	a5,1
1c00e392:	41600b33          	neg	s6,s6
1c00e396:	c43e                	sw	a5,8(sp)
1c00e398:	bf9d                	j	1c00e30e <pos_libc_prf+0x39e>
1c00e39a:	0014450b          	p.lbu	a0,1(s0!)
1c00e39e:	197d                	addi	s2,s2,-1
1c00e3a0:	9982                	jalr	s3
1c00e3a2:	d5f522e3          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00e3a6:	85de                	mv	a1,s7
1c00e3a8:	ff2049e3          	bgtz	s2,1c00e39a <pos_libc_prf+0x42a>
1c00e3ac:	4792                	lw	a5,4(sp)
1c00e3ae:	4a72                	lw	s4,28(sp)
1c00e3b0:	00fa8733          	add	a4,s5,a5
1c00e3b4:	47a2                	lw	a5,8(sp)
1c00e3b6:	9726                	add	a4,a4,s1
1c00e3b8:	00e78ab3          	add	s5,a5,a4
1c00e3bc:	bf6059e3          	blez	s6,1c00dfae <pos_libc_prf+0x3e>
1c00e3c0:	9ada                	add	s5,s5,s6
1c00e3c2:	1b7d                	addi	s6,s6,-1
1c00e3c4:	a029                	j	1c00e3ce <pos_libc_prf+0x45e>
1c00e3c6:	01fb3463          	p.bneimm	s6,-1,1c00e3ce <pos_libc_prf+0x45e>
1c00e3ca:	5fe0106f          	j	1c00f9c8 <pos_libc_prf+0x1a58>
1c00e3ce:	85de                	mv	a1,s7
1c00e3d0:	02000513          	li	a0,32
1c00e3d4:	9982                	jalr	s3
1c00e3d6:	1b7d                	addi	s6,s6,-1
1c00e3d8:	fff537e3          	p.bneimm	a0,-1,1c00e3c6 <pos_libc_prf+0x456>
1c00e3dc:	547d                	li	s0,-1
1c00e3de:	b945                	j	1c00e08e <pos_libc_prf+0x11e>
1c00e3e0:	02e00a13          	li	s4,46
1c00e3e4:	a031                	j	1c00e3f0 <pos_libc_prf+0x480>
1c00e3e6:	197d                	addi	s2,s2,-1
1c00e3e8:	014d9463          	bne	s11,s4,1c00e3f0 <pos_libc_prf+0x480>
1c00e3ec:	5320106f          	j	1c00f91e <pos_libc_prf+0x19ae>
1c00e3f0:	00144d8b          	p.lbu	s11,1(s0!)
1c00e3f4:	85de                	mv	a1,s7
1c00e3f6:	856e                	mv	a0,s11
1c00e3f8:	9982                	jalr	s3
1c00e3fa:	fff536e3          	p.bneimm	a0,-1,1c00e3e6 <pos_libc_prf+0x476>
1c00e3fe:	547d                	li	s0,-1
1c00e400:	b179                	j	1c00e08e <pos_libc_prf+0x11e>
1c00e402:	188d83e3          	beq	s11,s0,1c00ed88 <pos_libc_prf+0xe18>
1c00e406:	8d36                	mv	s10,a3
1c00e408:	b185                	j	1c00e068 <pos_libc_prf+0xf8>
1c00e40a:	188d86e3          	beq	s11,s0,1c00ed96 <pos_libc_prf+0xe26>
1c00e40e:	8d36                	mv	s10,a3
1c00e410:	06800793          	li	a5,104
1c00e414:	b991                	j	1c00e068 <pos_libc_prf+0xf8>
1c00e416:	06300693          	li	a3,99
1c00e41a:	70dd8c63          	beq	s11,a3,1c00eb32 <pos_libc_prf+0xbc2>
1c00e41e:	d3b6e5e3          	bltu	a3,s11,1c00e148 <pos_libc_prf+0x1d8>
1c00e422:	05800693          	li	a3,88
1c00e426:	7cdd9b63          	bne	s11,a3,1c00ebfc <pos_libc_prf+0xc8c>
1c00e42a:	06c00693          	li	a3,108
1c00e42e:	18d780e3          	beq	a5,a3,1c00edae <pos_libc_prf+0xe3e>
1c00e432:	07a00693          	li	a3,122
1c00e436:	16d78ce3          	beq	a5,a3,1c00edae <pos_libc_prf+0xe3e>
1c00e43a:	04c00693          	li	a3,76
1c00e43e:	2cd78ee3          	beq	a5,a3,1c00ef1a <pos_libc_prf+0xfaa>
1c00e442:	000a2403          	lw	s0,0(s4)
1c00e446:	0a11                	addi	s4,s4,4
1c00e448:	ce52                	sw	s4,28(sp)
1c00e44a:	4c81                	li	s9,0
1c00e44c:	06f00793          	li	a5,111
1c00e450:	3cfd81e3          	beq	s11,a5,1c00f012 <pos_libc_prf+0x10a2>
1c00e454:	07500793          	li	a5,117
1c00e458:	02410a13          	addi	s4,sp,36
1c00e45c:	04fd8763          	beq	s11,a5,1c00e4aa <pos_libc_prf+0x53a>
1c00e460:	4712                	lw	a4,4(sp)
1c00e462:	2a0708e3          	beqz	a4,1c00ef12 <pos_libc_prf+0xfa2>
1c00e466:	77e1                	lui	a5,0xffff8
1c00e468:	8307c793          	xori	a5,a5,-2000
1c00e46c:	02f11223          	sh	a5,36(sp)
1c00e470:	4909                	li	s2,2
1c00e472:	02610693          	addi	a3,sp,38
1c00e476:	87b6                	mv	a5,a3
1c00e478:	4e25                	li	t3,9
1c00e47a:	f6443733          	p.bclr	a4,s0,27,4
1c00e47e:	01cc9613          	slli	a2,s9,0x1c
1c00e482:	8011                	srli	s0,s0,0x4
1c00e484:	8c51                	or	s0,s0,a2
1c00e486:	004cdc93          	srli	s9,s9,0x4
1c00e48a:	05770813          	addi	a6,a4,87
1c00e48e:	03070593          	addi	a1,a4,48
1c00e492:	01946533          	or	a0,s0,s9
1c00e496:	06ee7663          	bleu	a4,t3,1c00e502 <pos_libc_prf+0x592>
1c00e49a:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c00e49e:	00178593          	addi	a1,a5,1
1c00e4a2:	c52d                	beqz	a0,1c00e50c <pos_libc_prf+0x59c>
1c00e4a4:	87ae                	mv	a5,a1
1c00e4a6:	bfd1                	j	1c00e47a <pos_libc_prf+0x50a>
1c00e4a8:	8a4a                	mv	s4,s2
1c00e4aa:	4629                	li	a2,10
1c00e4ac:	4681                	li	a3,0
1c00e4ae:	8522                	mv	a0,s0
1c00e4b0:	85e6                	mv	a1,s9
1c00e4b2:	a26ff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e4b6:	892a                	mv	s2,a0
1c00e4b8:	85e6                	mv	a1,s9
1c00e4ba:	8522                	mv	a0,s0
1c00e4bc:	4629                	li	a2,10
1c00e4be:	4681                	li	a3,0
1c00e4c0:	eddfe0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e4c4:	03090913          	addi	s2,s2,48
1c00e4c8:	012a0023          	sb	s2,0(s4)
1c00e4cc:	00a5e7b3          	or	a5,a1,a0
1c00e4d0:	001a0913          	addi	s2,s4,1
1c00e4d4:	842a                	mv	s0,a0
1c00e4d6:	8cae                	mv	s9,a1
1c00e4d8:	fbe1                	bnez	a5,1c00e4a8 <pos_libc_prf+0x538>
1c00e4da:	4782                	lw	a5,0(sp)
1c00e4dc:	00090023          	sb	zero,0(s2)
1c00e4e0:	40f90933          	sub	s2,s2,a5
1c00e4e4:	0147fd63          	bleu	s4,a5,1c00e4fe <pos_libc_prf+0x58e>
1c00e4e8:	105c                	addi	a5,sp,36
1c00e4ea:	0007c683          	lbu	a3,0(a5)
1c00e4ee:	000a4703          	lbu	a4,0(s4)
1c00e4f2:	feda0fab          	p.sb	a3,-1(s4!)
1c00e4f6:	00e780ab          	p.sb	a4,1(a5!)
1c00e4fa:	ff47e8e3          	bltu	a5,s4,1c00e4ea <pos_libc_prf+0x57a>
1c00e4fe:	c202                	sw	zero,4(sp)
1c00e500:	b9d5                	j	1c00e1f4 <pos_libc_prf+0x284>
1c00e502:	00b78023          	sb	a1,0(a5)
1c00e506:	00178593          	addi	a1,a5,1
1c00e50a:	fd49                	bnez	a0,1c00e4a4 <pos_libc_prf+0x534>
1c00e50c:	00058023          	sb	zero,0(a1)
1c00e510:	8d95                	sub	a1,a1,a3
1c00e512:	00f6fc63          	bleu	a5,a3,1c00e52a <pos_libc_prf+0x5ba>
1c00e516:	0006c603          	lbu	a2,0(a3)
1c00e51a:	0007c703          	lbu	a4,0(a5)
1c00e51e:	fec78fab          	p.sb	a2,-1(a5!)
1c00e522:	00e680ab          	p.sb	a4,1(a3!)
1c00e526:	fef6e8e3          	bltu	a3,a5,1c00e516 <pos_libc_prf+0x5a6>
1c00e52a:	05800793          	li	a5,88
1c00e52e:	28fd82e3          	beq	s11,a5,1c00efb2 <pos_libc_prf+0x1042>
1c00e532:	4712                	lw	a4,4(sp)
1c00e534:	992e                	add	s2,s2,a1
1c00e536:	0706                	slli	a4,a4,0x1
1c00e538:	c23a                	sw	a4,4(sp)
1c00e53a:	b96d                	j	1c00e1f4 <pos_libc_prf+0x284>
1c00e53c:	4c81                	li	s9,0
1c00e53e:	cc02                	sw	zero,24(sp)
1c00e540:	4a01                	li	s4,0
1c00e542:	47d2                	lw	a5,20(sp)
1c00e544:	5e078163          	beqz	a5,1c00eb26 <pos_libc_prf+0xbb6>
1c00e548:	412b04b3          	sub	s1,s6,s2
1c00e54c:	0404e4b3          	p.max	s1,s1,zero
1c00e550:	009907b3          	add	a5,s2,s1
1c00e554:	40fb0b33          	sub	s6,s6,a5
1c00e558:	1040                	addi	s0,sp,36
1c00e55a:	b96d                	j	1c00e214 <pos_libc_prf+0x2a4>
1c00e55c:	4881                	li	a7,0
1c00e55e:	4801                	li	a6,0
1c00e560:	4581                	li	a1,0
1c00e562:	4501                	li	a0,0
1c00e564:	4f11                	li	t5,4
1c00e566:	410f0f33          	sub	t5,t5,a6
1c00e56a:	012f40fb          	lp.setup	x1,t5,1c00e58e <pos_libc_prf+0x61e>
1c00e56e:	01f51713          	slli	a4,a0,0x1f
1c00e572:	0015d793          	srli	a5,a1,0x1
1c00e576:	8fd9                	or	a5,a5,a4
1c00e578:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e57c:	00f58eb3          	add	t4,a1,a5
1c00e580:	8105                	srli	a0,a0,0x1
1c00e582:	00beb5b3          	sltu	a1,t4,a1
1c00e586:	00a587b3          	add	a5,a1,a0
1c00e58a:	853e                	mv	a0,a5
1c00e58c:	85f6                	mv	a1,t4
1c00e58e:	0805                	addi	a6,a6,1
1c00e590:	0004d363          	bgez	s1,1c00e596 <pos_libc_prf+0x626>
1c00e594:	4499                	li	s1,6
1c00e596:	04700693          	li	a3,71
1c00e59a:	0cde0be3          	beq	t3,a3,1c00ee70 <pos_libc_prf+0xf00>
1c00e59e:	06600693          	li	a3,102
1c00e5a2:	4f81                	li	t6,0
1c00e5a4:	0edd84e3          	beq	s11,a3,1c00ee8c <pos_libc_prf+0xf1c>
1c00e5a8:	00148f13          	addi	t5,s1,1
1c00e5ac:	4741                	li	a4,16
1c00e5ae:	04ef4f33          	p.min	t5,t5,a4
1c00e5b2:	1f7d                	addi	t5,t5,-1
1c00e5b4:	4501                	li	a0,0
1c00e5b6:	080006b7          	lui	a3,0x8000
1c00e5ba:	4295                	li	t0,5
1c00e5bc:	0f05                	addi	t5,t5,1
1c00e5be:	030f40fb          	lp.setup	x1,t5,1c00e61e <pos_libc_prf+0x6ae>
1c00e5c2:	00250613          	addi	a2,a0,2
1c00e5c6:	00a63733          	sltu	a4,a2,a0
1c00e5ca:	9736                	add	a4,a4,a3
1c00e5cc:	02575533          	divu	a0,a4,t0
1c00e5d0:	00251693          	slli	a3,a0,0x2
1c00e5d4:	96aa                	add	a3,a3,a0
1c00e5d6:	8f15                	sub	a4,a4,a3
1c00e5d8:	0776                	slli	a4,a4,0x1d
1c00e5da:	00365593          	srli	a1,a2,0x3
1c00e5de:	8dd9                	or	a1,a1,a4
1c00e5e0:	0255d5b3          	divu	a1,a1,t0
1c00e5e4:	00359693          	slli	a3,a1,0x3
1c00e5e8:	00559713          	slli	a4,a1,0x5
1c00e5ec:	9736                	add	a4,a4,a3
1c00e5ee:	40e60733          	sub	a4,a2,a4
1c00e5f2:	02575733          	divu	a4,a4,t0
1c00e5f6:	81f5                	srli	a1,a1,0x1d
1c00e5f8:	00d70633          	add	a2,a4,a3
1c00e5fc:	95aa                	add	a1,a1,a0
1c00e5fe:	00e63733          	sltu	a4,a2,a4
1c00e602:	00b706b3          	add	a3,a4,a1
1c00e606:	01f69593          	slli	a1,a3,0x1f
1c00e60a:	00165713          	srli	a4,a2,0x1
1c00e60e:	8f4d                	or	a4,a4,a1
1c00e610:	fc163633          	p.bclr	a2,a2,30,1
1c00e614:	00e60533          	add	a0,a2,a4
1c00e618:	8285                	srli	a3,a3,0x1
1c00e61a:	00c53633          	sltu	a2,a0,a2
1c00e61e:	96b2                	add	a3,a3,a2
1c00e620:	00ae85b3          	add	a1,t4,a0
1c00e624:	96be                	add	a3,a3,a5
1c00e626:	01d5beb3          	sltu	t4,a1,t4
1c00e62a:	96f6                	add	a3,a3,t4
1c00e62c:	f606b533          	p.bclr	a0,a3,27,0
1c00e630:	87ae                	mv	a5,a1
1c00e632:	c125                	beqz	a0,1c00e692 <pos_libc_prf+0x722>
1c00e634:	00258513          	addi	a0,a1,2
1c00e638:	00b537b3          	sltu	a5,a0,a1
1c00e63c:	96be                	add	a3,a3,a5
1c00e63e:	4e95                	li	t4,5
1c00e640:	03d6de33          	divu	t3,a3,t4
1c00e644:	002e1793          	slli	a5,t3,0x2
1c00e648:	97f2                	add	a5,a5,t3
1c00e64a:	8e9d                	sub	a3,a3,a5
1c00e64c:	01d69793          	slli	a5,a3,0x1d
1c00e650:	00355693          	srli	a3,a0,0x3
1c00e654:	8edd                	or	a3,a3,a5
1c00e656:	03d6d6b3          	divu	a3,a3,t4
1c00e65a:	00369593          	slli	a1,a3,0x3
1c00e65e:	00569793          	slli	a5,a3,0x5
1c00e662:	97ae                	add	a5,a5,a1
1c00e664:	40f507b3          	sub	a5,a0,a5
1c00e668:	03d7d7b3          	divu	a5,a5,t4
1c00e66c:	82f5                	srli	a3,a3,0x1d
1c00e66e:	95be                	add	a1,a1,a5
1c00e670:	00f5b7b3          	sltu	a5,a1,a5
1c00e674:	96f2                	add	a3,a3,t3
1c00e676:	96be                	add	a3,a3,a5
1c00e678:	01f69513          	slli	a0,a3,0x1f
1c00e67c:	0015d793          	srli	a5,a1,0x1
1c00e680:	8fc9                	or	a5,a5,a0
1c00e682:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e686:	97ae                	add	a5,a5,a1
1c00e688:	8285                	srli	a3,a3,0x1
1c00e68a:	00b7b5b3          	sltu	a1,a5,a1
1c00e68e:	96ae                	add	a3,a3,a1
1c00e690:	0885                	addi	a7,a7,1
1c00e692:	06600593          	li	a1,102
1c00e696:	00130513          	addi	a0,t1,1
1c00e69a:	1ebd82e3          	beq	s11,a1,1c00f07e <pos_libc_prf+0x110e>
1c00e69e:	01e7de13          	srli	t3,a5,0x1e
1c00e6a2:	00279593          	slli	a1,a5,0x2
1c00e6a6:	00269813          	slli	a6,a3,0x2
1c00e6aa:	97ae                	add	a5,a5,a1
1c00e6ac:	010e6833          	or	a6,t3,a6
1c00e6b0:	00b7b5b3          	sltu	a1,a5,a1
1c00e6b4:	96c2                	add	a3,a3,a6
1c00e6b6:	96ae                	add	a3,a3,a1
1c00e6b8:	0686                	slli	a3,a3,0x1
1c00e6ba:	01f7d593          	srli	a1,a5,0x1f
1c00e6be:	8ecd                	or	a3,a3,a1
1c00e6c0:	01c6d593          	srli	a1,a3,0x1c
1c00e6c4:	882e                	mv	a6,a1
1c00e6c6:	4712                	lw	a4,4(sp)
1c00e6c8:	03058593          	addi	a1,a1,48
1c00e6cc:	01003833          	snez	a6,a6
1c00e6d0:	00b30023          	sb	a1,0(t1)
1c00e6d4:	c7c6be33          	p.bclr	t3,a3,3,28
1c00e6d8:	00179593          	slli	a1,a5,0x1
1c00e6dc:	410888b3          	sub	a7,a7,a6
1c00e6e0:	0a0714e3          	bnez	a4,1c00ef88 <pos_libc_prf+0x1018>
1c00e6e4:	8ca6                	mv	s9,s1
1c00e6e6:	3c905d63          	blez	s1,1c00eac0 <pos_libc_prf+0xb50>
1c00e6ea:	02e00693          	li	a3,46
1c00e6ee:	00230793          	addi	a5,t1,2
1c00e6f2:	00d300a3          	sb	a3,1(t1)
1c00e6f6:	00259693          	slli	a3,a1,0x2
1c00e6fa:	01e5d813          	srli	a6,a1,0x1e
1c00e6fe:	002e1513          	slli	a0,t3,0x2
1c00e702:	95b6                	add	a1,a1,a3
1c00e704:	00a86533          	or	a0,a6,a0
1c00e708:	00d5b833          	sltu	a6,a1,a3
1c00e70c:	01c506b3          	add	a3,a0,t3
1c00e710:	9836                	add	a6,a6,a3
1c00e712:	0806                	slli	a6,a6,0x1
1c00e714:	01f5d693          	srli	a3,a1,0x1f
1c00e718:	0106e833          	or	a6,a3,a6
1c00e71c:	01c85313          	srli	t1,a6,0x1c
1c00e720:	03030313          	addi	t1,t1,48
1c00e724:	100006b7          	lui	a3,0x10000
1c00e728:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e72c:	00678023          	sb	t1,0(a5)
1c00e730:	00159e13          	slli	t3,a1,0x1
1c00e734:	00a87833          	and	a6,a6,a0
1c00e738:	0014b463          	p.bneimm	s1,1,1c00e740 <pos_libc_prf+0x7d0>
1c00e73c:	3d40106f          	j	1c00fb10 <pos_libc_prf+0x1ba0>
1c00e740:	00359693          	slli	a3,a1,0x3
1c00e744:	00281313          	slli	t1,a6,0x2
1c00e748:	01ee5e93          	srli	t4,t3,0x1e
1c00e74c:	01c685b3          	add	a1,a3,t3
1c00e750:	006ee333          	or	t1,t4,t1
1c00e754:	981a                	add	a6,a6,t1
1c00e756:	00d5b6b3          	sltu	a3,a1,a3
1c00e75a:	96c2                	add	a3,a3,a6
1c00e75c:	0686                	slli	a3,a3,0x1
1c00e75e:	01f5d813          	srli	a6,a1,0x1f
1c00e762:	00d866b3          	or	a3,a6,a3
1c00e766:	01c6d813          	srli	a6,a3,0x1c
1c00e76a:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c00e76e:	010780a3          	sb	a6,1(a5)
1c00e772:	ffe48c93          	addi	s9,s1,-2
1c00e776:	00159313          	slli	t1,a1,0x1
1c00e77a:	8ee9                	and	a3,a3,a0
1c00e77c:	01904463          	bgtz	s9,1c00e784 <pos_libc_prf+0x814>
1c00e780:	3880106f          	j	1c00fb08 <pos_libc_prf+0x1b98>
1c00e784:	01e35e13          	srli	t3,t1,0x1e
1c00e788:	058e                	slli	a1,a1,0x3
1c00e78a:	00269813          	slli	a6,a3,0x2
1c00e78e:	932e                	add	t1,t1,a1
1c00e790:	010e6833          	or	a6,t3,a6
1c00e794:	96c2                	add	a3,a3,a6
1c00e796:	00b335b3          	sltu	a1,t1,a1
1c00e79a:	95b6                	add	a1,a1,a3
1c00e79c:	0586                	slli	a1,a1,0x1
1c00e79e:	01f35693          	srli	a3,t1,0x1f
1c00e7a2:	8dd5                	or	a1,a1,a3
1c00e7a4:	01c5d693          	srli	a3,a1,0x1c
1c00e7a8:	03068693          	addi	a3,a3,48
1c00e7ac:	00d78123          	sb	a3,2(a5)
1c00e7b0:	ffd48c93          	addi	s9,s1,-3
1c00e7b4:	00131e13          	slli	t3,t1,0x1
1c00e7b8:	8de9                	and	a1,a1,a0
1c00e7ba:	01904463          	bgtz	s9,1c00e7c2 <pos_libc_prf+0x852>
1c00e7be:	3420106f          	j	1c00fb00 <pos_libc_prf+0x1b90>
1c00e7c2:	00331693          	slli	a3,t1,0x3
1c00e7c6:	00259813          	slli	a6,a1,0x2
1c00e7ca:	01ee5313          	srli	t1,t3,0x1e
1c00e7ce:	01036833          	or	a6,t1,a6
1c00e7d2:	9e36                	add	t3,t3,a3
1c00e7d4:	95c2                	add	a1,a1,a6
1c00e7d6:	00de36b3          	sltu	a3,t3,a3
1c00e7da:	96ae                	add	a3,a3,a1
1c00e7dc:	0686                	slli	a3,a3,0x1
1c00e7de:	01fe5593          	srli	a1,t3,0x1f
1c00e7e2:	8ecd                	or	a3,a3,a1
1c00e7e4:	01c6d593          	srli	a1,a3,0x1c
1c00e7e8:	03058593          	addi	a1,a1,48
1c00e7ec:	00b781a3          	sb	a1,3(a5)
1c00e7f0:	ffc48c93          	addi	s9,s1,-4
1c00e7f4:	001e1313          	slli	t1,t3,0x1
1c00e7f8:	8ee9                	and	a3,a3,a0
1c00e7fa:	01904463          	bgtz	s9,1c00e802 <pos_libc_prf+0x892>
1c00e7fe:	2fa0106f          	j	1c00faf8 <pos_libc_prf+0x1b88>
1c00e802:	003e1593          	slli	a1,t3,0x3
1c00e806:	00269813          	slli	a6,a3,0x2
1c00e80a:	01e35e13          	srli	t3,t1,0x1e
1c00e80e:	010e6833          	or	a6,t3,a6
1c00e812:	932e                	add	t1,t1,a1
1c00e814:	96c2                	add	a3,a3,a6
1c00e816:	00b335b3          	sltu	a1,t1,a1
1c00e81a:	95b6                	add	a1,a1,a3
1c00e81c:	0586                	slli	a1,a1,0x1
1c00e81e:	01f35693          	srli	a3,t1,0x1f
1c00e822:	8dd5                	or	a1,a1,a3
1c00e824:	01c5d693          	srli	a3,a1,0x1c
1c00e828:	03068693          	addi	a3,a3,48
1c00e82c:	00d78223          	sb	a3,4(a5)
1c00e830:	ffb48c93          	addi	s9,s1,-5
1c00e834:	00131e13          	slli	t3,t1,0x1
1c00e838:	8de9                	and	a1,a1,a0
1c00e83a:	01904463          	bgtz	s9,1c00e842 <pos_libc_prf+0x8d2>
1c00e83e:	2b20106f          	j	1c00faf0 <pos_libc_prf+0x1b80>
1c00e842:	00331693          	slli	a3,t1,0x3
1c00e846:	00259813          	slli	a6,a1,0x2
1c00e84a:	01ee5313          	srli	t1,t3,0x1e
1c00e84e:	01036833          	or	a6,t1,a6
1c00e852:	9e36                	add	t3,t3,a3
1c00e854:	95c2                	add	a1,a1,a6
1c00e856:	00de36b3          	sltu	a3,t3,a3
1c00e85a:	96ae                	add	a3,a3,a1
1c00e85c:	0686                	slli	a3,a3,0x1
1c00e85e:	01fe5593          	srli	a1,t3,0x1f
1c00e862:	8ecd                	or	a3,a3,a1
1c00e864:	01c6d593          	srli	a1,a3,0x1c
1c00e868:	03058593          	addi	a1,a1,48
1c00e86c:	00b782a3          	sb	a1,5(a5)
1c00e870:	ffa48c93          	addi	s9,s1,-6
1c00e874:	001e1313          	slli	t1,t3,0x1
1c00e878:	8ee9                	and	a3,a3,a0
1c00e87a:	01904463          	bgtz	s9,1c00e882 <pos_libc_prf+0x912>
1c00e87e:	26a0106f          	j	1c00fae8 <pos_libc_prf+0x1b78>
1c00e882:	003e1593          	slli	a1,t3,0x3
1c00e886:	00269813          	slli	a6,a3,0x2
1c00e88a:	01e35e13          	srli	t3,t1,0x1e
1c00e88e:	010e6833          	or	a6,t3,a6
1c00e892:	932e                	add	t1,t1,a1
1c00e894:	96c2                	add	a3,a3,a6
1c00e896:	00b335b3          	sltu	a1,t1,a1
1c00e89a:	95b6                	add	a1,a1,a3
1c00e89c:	0586                	slli	a1,a1,0x1
1c00e89e:	01f35693          	srli	a3,t1,0x1f
1c00e8a2:	8dd5                	or	a1,a1,a3
1c00e8a4:	01c5d693          	srli	a3,a1,0x1c
1c00e8a8:	03068693          	addi	a3,a3,48
1c00e8ac:	00d78323          	sb	a3,6(a5)
1c00e8b0:	ff948c93          	addi	s9,s1,-7
1c00e8b4:	00131e13          	slli	t3,t1,0x1
1c00e8b8:	8de9                	and	a1,a1,a0
1c00e8ba:	01904463          	bgtz	s9,1c00e8c2 <pos_libc_prf+0x952>
1c00e8be:	2220106f          	j	1c00fae0 <pos_libc_prf+0x1b70>
1c00e8c2:	00331693          	slli	a3,t1,0x3
1c00e8c6:	00259813          	slli	a6,a1,0x2
1c00e8ca:	01ee5313          	srli	t1,t3,0x1e
1c00e8ce:	01036833          	or	a6,t1,a6
1c00e8d2:	9e36                	add	t3,t3,a3
1c00e8d4:	95c2                	add	a1,a1,a6
1c00e8d6:	00de36b3          	sltu	a3,t3,a3
1c00e8da:	96ae                	add	a3,a3,a1
1c00e8dc:	0686                	slli	a3,a3,0x1
1c00e8de:	01fe5593          	srli	a1,t3,0x1f
1c00e8e2:	8ecd                	or	a3,a3,a1
1c00e8e4:	01c6d593          	srli	a1,a3,0x1c
1c00e8e8:	03058593          	addi	a1,a1,48
1c00e8ec:	00b783a3          	sb	a1,7(a5)
1c00e8f0:	ff848c93          	addi	s9,s1,-8
1c00e8f4:	001e1313          	slli	t1,t3,0x1
1c00e8f8:	8ee9                	and	a3,a3,a0
1c00e8fa:	01904463          	bgtz	s9,1c00e902 <pos_libc_prf+0x992>
1c00e8fe:	1da0106f          	j	1c00fad8 <pos_libc_prf+0x1b68>
1c00e902:	003e1593          	slli	a1,t3,0x3
1c00e906:	00269813          	slli	a6,a3,0x2
1c00e90a:	01e35e13          	srli	t3,t1,0x1e
1c00e90e:	010e6833          	or	a6,t3,a6
1c00e912:	932e                	add	t1,t1,a1
1c00e914:	96c2                	add	a3,a3,a6
1c00e916:	00b335b3          	sltu	a1,t1,a1
1c00e91a:	95b6                	add	a1,a1,a3
1c00e91c:	0586                	slli	a1,a1,0x1
1c00e91e:	01f35693          	srli	a3,t1,0x1f
1c00e922:	8dd5                	or	a1,a1,a3
1c00e924:	01c5d693          	srli	a3,a1,0x1c
1c00e928:	03068693          	addi	a3,a3,48
1c00e92c:	00d78423          	sb	a3,8(a5)
1c00e930:	ff748c93          	addi	s9,s1,-9
1c00e934:	00131e13          	slli	t3,t1,0x1
1c00e938:	8de9                	and	a1,a1,a0
1c00e93a:	01904463          	bgtz	s9,1c00e942 <pos_libc_prf+0x9d2>
1c00e93e:	1920106f          	j	1c00fad0 <pos_libc_prf+0x1b60>
1c00e942:	00331693          	slli	a3,t1,0x3
1c00e946:	00259813          	slli	a6,a1,0x2
1c00e94a:	01ee5e93          	srli	t4,t3,0x1e
1c00e94e:	01c68333          	add	t1,a3,t3
1c00e952:	010ee833          	or	a6,t4,a6
1c00e956:	982e                	add	a6,a6,a1
1c00e958:	00d336b3          	sltu	a3,t1,a3
1c00e95c:	96c2                	add	a3,a3,a6
1c00e95e:	01f35593          	srli	a1,t1,0x1f
1c00e962:	0686                	slli	a3,a3,0x1
1c00e964:	8ecd                	or	a3,a3,a1
1c00e966:	01c6d593          	srli	a1,a3,0x1c
1c00e96a:	03058593          	addi	a1,a1,48
1c00e96e:	00b784a3          	sb	a1,9(a5)
1c00e972:	ff648c93          	addi	s9,s1,-10
1c00e976:	8ee9                	and	a3,a3,a0
1c00e978:	00131593          	slli	a1,t1,0x1
1c00e97c:	00a78513          	addi	a0,a5,10
1c00e980:	15905063          	blez	s9,1c00eac0 <pos_libc_prf+0xb50>
1c00e984:	00259513          	slli	a0,a1,0x2
1c00e988:	01e5d813          	srli	a6,a1,0x1e
1c00e98c:	00269313          	slli	t1,a3,0x2
1c00e990:	95aa                	add	a1,a1,a0
1c00e992:	00686333          	or	t1,a6,t1
1c00e996:	969a                	add	a3,a3,t1
1c00e998:	00a5b833          	sltu	a6,a1,a0
1c00e99c:	9836                	add	a6,a6,a3
1c00e99e:	0806                	slli	a6,a6,0x1
1c00e9a0:	01f5d693          	srli	a3,a1,0x1f
1c00e9a4:	0106e833          	or	a6,a3,a6
1c00e9a8:	01c85313          	srli	t1,a6,0x1c
1c00e9ac:	03030313          	addi	t1,t1,48
1c00e9b0:	100006b7          	lui	a3,0x10000
1c00e9b4:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e9b8:	00678523          	sb	t1,10(a5)
1c00e9bc:	ff548c93          	addi	s9,s1,-11
1c00e9c0:	00159e13          	slli	t3,a1,0x1
1c00e9c4:	00a87833          	and	a6,a6,a0
1c00e9c8:	01904463          	bgtz	s9,1c00e9d0 <pos_libc_prf+0xa60>
1c00e9cc:	0fc0106f          	j	1c00fac8 <pos_libc_prf+0x1b58>
1c00e9d0:	00359693          	slli	a3,a1,0x3
1c00e9d4:	00281313          	slli	t1,a6,0x2
1c00e9d8:	01ee5e93          	srli	t4,t3,0x1e
1c00e9dc:	01c685b3          	add	a1,a3,t3
1c00e9e0:	006ee333          	or	t1,t4,t1
1c00e9e4:	981a                	add	a6,a6,t1
1c00e9e6:	00d5b6b3          	sltu	a3,a1,a3
1c00e9ea:	96c2                	add	a3,a3,a6
1c00e9ec:	0686                	slli	a3,a3,0x1
1c00e9ee:	01f5d813          	srli	a6,a1,0x1f
1c00e9f2:	00d866b3          	or	a3,a6,a3
1c00e9f6:	01c6d813          	srli	a6,a3,0x1c
1c00e9fa:	03080813          	addi	a6,a6,48
1c00e9fe:	010785a3          	sb	a6,11(a5)
1c00ea02:	ff448c93          	addi	s9,s1,-12
1c00ea06:	00159313          	slli	t1,a1,0x1
1c00ea0a:	8ee9                	and	a3,a3,a0
1c00ea0c:	01904463          	bgtz	s9,1c00ea14 <pos_libc_prf+0xaa4>
1c00ea10:	0b00106f          	j	1c00fac0 <pos_libc_prf+0x1b50>
1c00ea14:	058e                	slli	a1,a1,0x3
1c00ea16:	01e35e13          	srli	t3,t1,0x1e
1c00ea1a:	00269813          	slli	a6,a3,0x2
1c00ea1e:	932e                	add	t1,t1,a1
1c00ea20:	010e6833          	or	a6,t3,a6
1c00ea24:	96c2                	add	a3,a3,a6
1c00ea26:	00b335b3          	sltu	a1,t1,a1
1c00ea2a:	95b6                	add	a1,a1,a3
1c00ea2c:	0586                	slli	a1,a1,0x1
1c00ea2e:	01f35693          	srli	a3,t1,0x1f
1c00ea32:	8dd5                	or	a1,a1,a3
1c00ea34:	01c5d693          	srli	a3,a1,0x1c
1c00ea38:	03068693          	addi	a3,a3,48
1c00ea3c:	00d78623          	sb	a3,12(a5)
1c00ea40:	ff348c93          	addi	s9,s1,-13
1c00ea44:	00131813          	slli	a6,t1,0x1
1c00ea48:	01904463          	bgtz	s9,1c00ea50 <pos_libc_prf+0xae0>
1c00ea4c:	06c0106f          	j	1c00fab8 <pos_libc_prf+0x1b48>
1c00ea50:	8de9                	and	a1,a1,a0
1c00ea52:	00331693          	slli	a3,t1,0x3
1c00ea56:	01e85e13          	srli	t3,a6,0x1e
1c00ea5a:	00259313          	slli	t1,a1,0x2
1c00ea5e:	9836                	add	a6,a6,a3
1c00ea60:	006e6333          	or	t1,t3,t1
1c00ea64:	959a                	add	a1,a1,t1
1c00ea66:	00d836b3          	sltu	a3,a6,a3
1c00ea6a:	96ae                	add	a3,a3,a1
1c00ea6c:	0686                	slli	a3,a3,0x1
1c00ea6e:	01f85593          	srli	a1,a6,0x1f
1c00ea72:	8ecd                	or	a3,a3,a1
1c00ea74:	01c6d593          	srli	a1,a3,0x1c
1c00ea78:	03058593          	addi	a1,a1,48
1c00ea7c:	00b786a3          	sb	a1,13(a5)
1c00ea80:	ff248c93          	addi	s9,s1,-14
1c00ea84:	8ee9                	and	a3,a3,a0
1c00ea86:	00181593          	slli	a1,a6,0x1
1c00ea8a:	00e78513          	addi	a0,a5,14
1c00ea8e:	03905963          	blez	s9,1c00eac0 <pos_libc_prf+0xb50>
1c00ea92:	00381513          	slli	a0,a6,0x3
1c00ea96:	01e5d313          	srli	t1,a1,0x1e
1c00ea9a:	00269813          	slli	a6,a3,0x2
1c00ea9e:	95aa                	add	a1,a1,a0
1c00eaa0:	01036833          	or	a6,t1,a6
1c00eaa4:	00a5b5b3          	sltu	a1,a1,a0
1c00eaa8:	96c2                	add	a3,a3,a6
1c00eaaa:	96ae                	add	a3,a3,a1
1c00eaac:	0686                	slli	a3,a3,0x1
1c00eaae:	82f1                	srli	a3,a3,0x1c
1c00eab0:	03068693          	addi	a3,a3,48
1c00eab4:	00f78513          	addi	a0,a5,15
1c00eab8:	00d78723          	sb	a3,14(a5)
1c00eabc:	ff148c93          	addi	s9,s1,-15
1c00eac0:	440f8563          	beqz	t6,1c00ef0a <pos_libc_prf+0xf9a>
1c00eac4:	4581                	li	a1,0
1c00eac6:	cc02                	sw	zero,24(sp)
1c00eac8:	4a01                	li	s4,0
1c00eaca:	03000813          	li	a6,48
1c00eace:	a011                	j	1c00ead2 <pos_libc_prf+0xb62>
1c00ead0:	853e                	mv	a0,a5
1c00ead2:	fff50793          	addi	a5,a0,-1
1c00ead6:	0007c683          	lbu	a3,0(a5)
1c00eada:	ff068be3          	beq	a3,a6,1c00ead0 <pos_libc_prf+0xb60>
1c00eade:	02e00813          	li	a6,46
1c00eae2:	4c81                	li	s9,0
1c00eae4:	01069363          	bne	a3,a6,1c00eaea <pos_libc_prf+0xb7a>
1c00eae8:	853e                	mv	a0,a5
1c00eaea:	0dfdf793          	andi	a5,s11,223
1c00eaee:	04500693          	li	a3,69
1c00eaf2:	3ad78e63          	beq	a5,a3,1c00eeae <pos_libc_prf+0xf3e>
1c00eaf6:	4782                	lw	a5,0(sp)
1c00eaf8:	00050023          	sb	zero,0(a0)
1c00eafc:	8d1d                	sub	a0,a0,a5
1c00eafe:	4732                	lw	a4,12(sp)
1c00eb00:	2a071263          	bnez	a4,1c00eda4 <pos_libc_prf+0xe34>
1c00eb04:	47c2                	lw	a5,16(sp)
1c00eb06:	28079f63          	bnez	a5,1c00eda4 <pos_libc_prf+0xe34>
1c00eb0a:	02414783          	lbu	a5,36(sp)
1c00eb0e:	02d00693          	li	a3,45
1c00eb12:	c202                	sw	zero,4(sp)
1c00eb14:	28d78863          	beq	a5,a3,1c00eda4 <pos_libc_prf+0xe34>
1c00eb18:	fd078793          	addi	a5,a5,-48
1c00eb1c:	46a5                	li	a3,9
1c00eb1e:	00b50933          	add	s2,a0,a1
1c00eb22:	a2f6f0e3          	bleu	a5,a3,1c00e542 <pos_libc_prf+0x5d2>
1c00eb26:	412b0b33          	sub	s6,s6,s2
1c00eb2a:	1040                	addi	s0,sp,36
1c00eb2c:	4481                	li	s1,0
1c00eb2e:	ee6ff06f          	j	1c00e214 <pos_libc_prf+0x2a4>
1c00eb32:	000a2783          	lw	a5,0(s4)
1c00eb36:	0a11                	addi	s4,s4,4
1c00eb38:	ce52                	sw	s4,28(sp)
1c00eb3a:	02f10223          	sb	a5,36(sp)
1c00eb3e:	1b7d                	addi	s6,s6,-1
1c00eb40:	4481                	li	s1,0
1c00eb42:	c202                	sw	zero,4(sp)
1c00eb44:	4905                	li	s2,1
1c00eb46:	1040                	addi	s0,sp,36
1c00eb48:	ec6ff06f          	j	1c00e20e <pos_libc_prf+0x29e>
1c00eb4c:	04c00613          	li	a2,76
1c00eb50:	004a268b          	p.lw	a3,4(s4!)
1c00eb54:	5ac78ee3          	beq	a5,a2,1c00f910 <pos_libc_prf+0x19a0>
1c00eb58:	28f65363          	ble	a5,a2,1c00edde <pos_libc_prf+0xe6e>
1c00eb5c:	06800613          	li	a2,104
1c00eb60:	00c78663          	beq	a5,a2,1c00eb6c <pos_libc_prf+0xbfc>
1c00eb64:	0156a023          	sw	s5,0(a3)
1c00eb68:	c46ff06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00eb6c:	87d6                	mv	a5,s5
1c00eb6e:	00f69023          	sh	a5,0(a3)
1c00eb72:	c3cff06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00eb76:	004a0793          	addi	a5,s4,4
1c00eb7a:	7761                	lui	a4,0xffff8
1c00eb7c:	02610593          	addi	a1,sp,38
1c00eb80:	ce3e                	sw	a5,28(sp)
1c00eb82:	83074713          	xori	a4,a4,-2000
1c00eb86:	000a2783          	lw	a5,0(s4)
1c00eb8a:	4601                	li	a2,0
1c00eb8c:	02e11223          	sh	a4,36(sp)
1c00eb90:	86ae                	mv	a3,a1
1c00eb92:	4ea5                	li	t4,9
1c00eb94:	f647b733          	p.bclr	a4,a5,27,4
1c00eb98:	01c61513          	slli	a0,a2,0x1c
1c00eb9c:	8391                	srli	a5,a5,0x4
1c00eb9e:	8fc9                	or	a5,a5,a0
1c00eba0:	8211                	srli	a2,a2,0x4
1c00eba2:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c00eba6:	03070893          	addi	a7,a4,48
1c00ebaa:	00c7e333          	or	t1,a5,a2
1c00ebae:	00eefa63          	bleu	a4,t4,1c00ebc2 <pos_libc_prf+0xc52>
1c00ebb2:	01c68023          	sb	t3,0(a3)
1c00ebb6:	00168513          	addi	a0,a3,1
1c00ebba:	00030a63          	beqz	t1,1c00ebce <pos_libc_prf+0xc5e>
1c00ebbe:	86aa                	mv	a3,a0
1c00ebc0:	bfd1                	j	1c00eb94 <pos_libc_prf+0xc24>
1c00ebc2:	01168023          	sb	a7,0(a3)
1c00ebc6:	00168513          	addi	a0,a3,1
1c00ebca:	fe031ae3          	bnez	t1,1c00ebbe <pos_libc_prf+0xc4e>
1c00ebce:	00050023          	sb	zero,0(a0)
1c00ebd2:	8d0d                	sub	a0,a0,a1
1c00ebd4:	00d5fe63          	bleu	a3,a1,1c00ebf0 <pos_libc_prf+0xc80>
1c00ebd8:	87b6                	mv	a5,a3
1c00ebda:	86ae                	mv	a3,a1
1c00ebdc:	0006c603          	lbu	a2,0(a3)
1c00ebe0:	0007c703          	lbu	a4,0(a5)
1c00ebe4:	fec78fab          	p.sb	a2,-1(a5!)
1c00ebe8:	00e680ab          	p.sb	a4,1(a3!)
1c00ebec:	fef6e8e3          	bltu	a3,a5,1c00ebdc <pos_libc_prf+0xc6c>
1c00ebf0:	4789                	li	a5,2
1c00ebf2:	00250913          	addi	s2,a0,2
1c00ebf6:	c23e                	sw	a5,4(sp)
1c00ebf8:	dfcff06f          	j	1c00e1f4 <pos_libc_prf+0x284>
1c00ebfc:	85de                	mv	a1,s7
1c00ebfe:	02500513          	li	a0,37
1c00ec02:	9982                	jalr	s3
1c00ec04:	cff52163          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00ec08:	85de                	mv	a1,s7
1c00ec0a:	856e                	mv	a0,s11
1c00ec0c:	9982                	jalr	s3
1c00ec0e:	cdf52c63          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00ec12:	0a89                	addi	s5,s5,2
1c00ec14:	b9aff06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00ec18:	007a0893          	addi	a7,s4,7
1c00ec1c:	c408b8b3          	p.bclr	a7,a7,2,0
1c00ec20:	0008a783          	lw	a5,0(a7)
1c00ec24:	0048a303          	lw	t1,4(a7)
1c00ec28:	0157d693          	srli	a3,a5,0x15
1c00ec2c:	00b31513          	slli	a0,t1,0xb
1c00ec30:	08a1                	addi	a7,a7,8
1c00ec32:	01435813          	srli	a6,t1,0x14
1c00ec36:	8d55                	or	a0,a0,a3
1c00ec38:	ce46                	sw	a7,28(sp)
1c00ec3a:	e8b83833          	p.bclr	a6,a6,20,11
1c00ec3e:	00b79593          	slli	a1,a5,0xb
1c00ec42:	c1f53533          	p.bclr	a0,a0,0,31
1c00ec46:	1e034e63          	bltz	t1,1c00ee42 <pos_libc_prf+0xed2>
1c00ec4a:	47b2                	lw	a5,12(sp)
1c00ec4c:	1c078f63          	beqz	a5,1c00ee2a <pos_libc_prf+0xeba>
1c00ec50:	02b00793          	li	a5,43
1c00ec54:	02f10223          	sb	a5,36(sp)
1c00ec58:	02510313          	addi	t1,sp,37
1c00ec5c:	7ff00793          	li	a5,2047
1c00ec60:	18f80863          	beq	a6,a5,1c00edf0 <pos_libc_prf+0xe80>
1c00ec64:	04600793          	li	a5,70
1c00ec68:	0dfdfe13          	andi	t3,s11,223
1c00ec6c:	32fd8e63          	beq	s11,a5,1c00efa8 <pos_libc_prf+0x1038>
1c00ec70:	41f85693          	srai	a3,a6,0x1f
1c00ec74:	00b867b3          	or	a5,a6,a1
1c00ec78:	8ec9                	or	a3,a3,a0
1c00ec7a:	8fd5                	or	a5,a5,a3
1c00ec7c:	8e0780e3          	beqz	a5,1c00e55c <pos_libc_prf+0x5ec>
1c00ec80:	02081363          	bnez	a6,1c00eca6 <pos_libc_prf+0xd36>
1c00ec84:	01f5d793          	srli	a5,a1,0x1f
1c00ec88:	00151693          	slli	a3,a0,0x1
1c00ec8c:	00d7e533          	or	a0,a5,a3
1c00ec90:	0586                	slli	a1,a1,0x1
1c00ec92:	5a054fe3          	bltz	a0,1c00fa50 <pos_libc_prf+0x1ae0>
1c00ec96:	01f5d793          	srli	a5,a1,0x1f
1c00ec9a:	0506                	slli	a0,a0,0x1
1c00ec9c:	8d5d                	or	a0,a0,a5
1c00ec9e:	187d                	addi	a6,a6,-1
1c00eca0:	0586                	slli	a1,a1,0x1
1c00eca2:	fe055ae3          	bgez	a0,1c00ec96 <pos_libc_prf+0xd26>
1c00eca6:	c0280813          	addi	a6,a6,-1022
1c00ecaa:	57f9                	li	a5,-2
1c00ecac:	c1f54533          	p.bset	a0,a0,0,31
1c00ecb0:	4881                	li	a7,0
1c00ecb2:	06f85763          	ble	a5,a6,1c00ed20 <pos_libc_prf+0xdb0>
1c00ecb6:	33333eb7          	lui	t4,0x33333
1c00ecba:	80000f37          	lui	t5,0x80000
1c00ecbe:	4881                	li	a7,0
1c00ecc0:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x1732312e>
1c00ecc4:	ffff4f13          	not	t5,t5
1c00ecc8:	5ff9                	li	t6,-2
1c00ecca:	a011                	j	1c00ecce <pos_libc_prf+0xd5e>
1c00eccc:	883e                	mv	a6,a5
1c00ecce:	01f51693          	slli	a3,a0,0x1f
1c00ecd2:	0015d713          	srli	a4,a1,0x1
1c00ecd6:	fc15b7b3          	p.bclr	a5,a1,30,1
1c00ecda:	8f55                	or	a4,a4,a3
1c00ecdc:	00e785b3          	add	a1,a5,a4
1c00ece0:	00f5b7b3          	sltu	a5,a1,a5
1c00ece4:	8105                	srli	a0,a0,0x1
1c00ece6:	953e                	add	a0,a0,a5
1c00ece8:	00180793          	addi	a5,a6,1
1c00ecec:	feaee0e3          	bltu	t4,a0,1c00eccc <pos_libc_prf+0xd5c>
1c00ecf0:	00259693          	slli	a3,a1,0x2
1c00ecf4:	01e5d613          	srli	a2,a1,0x1e
1c00ecf8:	00251713          	slli	a4,a0,0x2
1c00ecfc:	95b6                	add	a1,a1,a3
1c00ecfe:	8f51                	or	a4,a4,a2
1c00ed00:	953a                	add	a0,a0,a4
1c00ed02:	00d5b6b3          	sltu	a3,a1,a3
1c00ed06:	9536                	add	a0,a0,a3
1c00ed08:	01f5d713          	srli	a4,a1,0x1f
1c00ed0c:	0809                	addi	a6,a6,2
1c00ed0e:	18fd                	addi	a7,a7,-1
1c00ed10:	01e51663          	bne	a0,t5,1c00ed1c <pos_libc_prf+0xdac>
1c00ed14:	0586                	slli	a1,a1,0x1
1c00ed16:	fc174533          	p.bset	a0,a4,30,1
1c00ed1a:	883e                	mv	a6,a5
1c00ed1c:	fbf849e3          	blt	a6,t6,1c00ecce <pos_libc_prf+0xd5e>
1c00ed20:	80000f37          	lui	t5,0x80000
1c00ed24:	4f95                	li	t6,5
1c00ed26:	ffff4f13          	not	t5,t5
1c00ed2a:	83005de3          	blez	a6,1c00e564 <pos_libc_prf+0x5f4>
1c00ed2e:	00258693          	addi	a3,a1,2
1c00ed32:	00b6b5b3          	sltu	a1,a3,a1
1c00ed36:	952e                	add	a0,a0,a1
1c00ed38:	03f557b3          	divu	a5,a0,t6
1c00ed3c:	00279713          	slli	a4,a5,0x2
1c00ed40:	973e                	add	a4,a4,a5
1c00ed42:	8d19                	sub	a0,a0,a4
1c00ed44:	01d51713          	slli	a4,a0,0x1d
1c00ed48:	0036d613          	srli	a2,a3,0x3
1c00ed4c:	8e59                	or	a2,a2,a4
1c00ed4e:	03f65633          	divu	a2,a2,t6
1c00ed52:	00361593          	slli	a1,a2,0x3
1c00ed56:	00561713          	slli	a4,a2,0x5
1c00ed5a:	972e                	add	a4,a4,a1
1c00ed5c:	40e68733          	sub	a4,a3,a4
1c00ed60:	03f75733          	divu	a4,a4,t6
1c00ed64:	8275                	srli	a2,a2,0x1d
1c00ed66:	95ba                	add	a1,a1,a4
1c00ed68:	97b2                	add	a5,a5,a2
1c00ed6a:	00e5b733          	sltu	a4,a1,a4
1c00ed6e:	00f70533          	add	a0,a4,a5
1c00ed72:	187d                	addi	a6,a6,-1
1c00ed74:	0885                	addi	a7,a7,1
1c00ed76:	01f5d793          	srli	a5,a1,0x1f
1c00ed7a:	0506                	slli	a0,a0,0x1
1c00ed7c:	8d5d                	or	a0,a0,a5
1c00ed7e:	0586                	slli	a1,a1,0x1
1c00ed80:	187d                	addi	a6,a6,-1
1c00ed82:	feaf7ae3          	bleu	a0,t5,1c00ed76 <pos_libc_prf+0xe06>
1c00ed86:	b755                	j	1c00ed2a <pos_libc_prf+0xdba>
1c00ed88:	001d4d83          	lbu	s11,1(s10)
1c00ed8c:	04c00793          	li	a5,76
1c00ed90:	0d09                	addi	s10,s10,2
1c00ed92:	ad6ff06f          	j	1c00e068 <pos_libc_prf+0xf8>
1c00ed96:	001d4d83          	lbu	s11,1(s10)
1c00ed9a:	04800793          	li	a5,72
1c00ed9e:	0d09                	addi	s10,s10,2
1c00eda0:	ac8ff06f          	j	1c00e068 <pos_libc_prf+0xf8>
1c00eda4:	4705                	li	a4,1
1c00eda6:	02514783          	lbu	a5,37(sp)
1c00edaa:	c23a                	sw	a4,4(sp)
1c00edac:	b3b5                	j	1c00eb18 <pos_libc_prf+0xba8>
1c00edae:	004a0793          	addi	a5,s4,4
1c00edb2:	ce3e                	sw	a5,28(sp)
1c00edb4:	000a2403          	lw	s0,0(s4)
1c00edb8:	4c81                	li	s9,0
1c00edba:	e92ff06f          	j	1c00e44c <pos_libc_prf+0x4dc>
1c00edbe:	4785                	li	a5,1
1c00edc0:	c23e                	sw	a5,4(sp)
1c00edc2:	c32ff06f          	j	1c00e1f4 <pos_libc_prf+0x284>
1c00edc6:	4742                	lw	a4,16(sp)
1c00edc8:	22070063          	beqz	a4,1c00efe8 <pos_libc_prf+0x1078>
1c00edcc:	02000693          	li	a3,32
1c00edd0:	02d10223          	sb	a3,36(sp)
1c00edd4:	4c92                	lw	s9,4(sp)
1c00edd6:	02510a13          	addi	s4,sp,37
1c00edda:	bacff06f          	j	1c00e186 <pos_libc_prf+0x216>
1c00edde:	04800613          	li	a2,72
1c00ede2:	d8c791e3          	bne	a5,a2,1c00eb64 <pos_libc_prf+0xbf4>
1c00ede6:	87d6                	mv	a5,s5
1c00ede8:	00f68023          	sb	a5,0(a3)
1c00edec:	9c2ff06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00edf0:	00a5e6b3          	or	a3,a1,a0
1c00edf4:	fbfd8613          	addi	a2,s11,-65
1c00edf8:	00330513          	addi	a0,t1,3
1c00edfc:	47e5                	li	a5,25
1c00edfe:	16069963          	bnez	a3,1c00ef70 <pos_libc_prf+0x1000>
1c00ee02:	3ec7e1e3          	bltu	a5,a2,1c00f9e4 <pos_libc_prf+0x1a74>
1c00ee06:	6795                	lui	a5,0x5
1c00ee08:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c00ee0c:	00f31023          	sh	a5,0(t1)
1c00ee10:	04600793          	li	a5,70
1c00ee14:	00f30123          	sb	a5,2(t1)
1c00ee18:	4782                	lw	a5,0(sp)
1c00ee1a:	000301a3          	sb	zero,3(t1)
1c00ee1e:	8d1d                	sub	a0,a0,a5
1c00ee20:	4581                	li	a1,0
1c00ee22:	4c81                	li	s9,0
1c00ee24:	cc02                	sw	zero,24(sp)
1c00ee26:	4a01                	li	s4,0
1c00ee28:	b9d9                	j	1c00eafe <pos_libc_prf+0xb8e>
1c00ee2a:	4742                	lw	a4,16(sp)
1c00ee2c:	02410313          	addi	t1,sp,36
1c00ee30:	e20706e3          	beqz	a4,1c00ec5c <pos_libc_prf+0xcec>
1c00ee34:	02000793          	li	a5,32
1c00ee38:	02f10223          	sb	a5,36(sp)
1c00ee3c:	02510313          	addi	t1,sp,37
1c00ee40:	bd31                	j	1c00ec5c <pos_libc_prf+0xcec>
1c00ee42:	02d00793          	li	a5,45
1c00ee46:	02f10223          	sb	a5,36(sp)
1c00ee4a:	02510313          	addi	t1,sp,37
1c00ee4e:	b539                	j	1c00ec5c <pos_libc_prf+0xcec>
1c00ee50:	40f007b3          	neg	a5,a5
1c00ee54:	00f036b3          	snez	a3,a5
1c00ee58:	40e00cb3          	neg	s9,a4
1c00ee5c:	02d00613          	li	a2,45
1c00ee60:	02c10223          	sb	a2,36(sp)
1c00ee64:	40dc8cb3          	sub	s9,s9,a3
1c00ee68:	02510a13          	addi	s4,sp,37
1c00ee6c:	b1aff06f          	j	1c00e186 <pos_libc_prf+0x216>
1c00ee70:	56f5                	li	a3,-3
1c00ee72:	0cd8c063          	blt	a7,a3,1c00ef32 <pos_libc_prf+0xfc2>
1c00ee76:	0b14ce63          	blt	s1,a7,1c00ef32 <pos_libc_prf+0xfc2>
1c00ee7a:	4712                	lw	a4,4(sp)
1c00ee7c:	411484b3          	sub	s1,s1,a7
1c00ee80:	4f81                	li	t6,0
1c00ee82:	e709                	bnez	a4,1c00ee8c <pos_libc_prf+0xf1c>
1c00ee84:	00902fb3          	sgtz	t6,s1
1c00ee88:	0fffff93          	andi	t6,t6,255
1c00ee8c:	009886b3          	add	a3,a7,s1
1c00ee90:	2e06cae3          	bltz	a3,1c00f984 <pos_libc_prf+0x1a14>
1c00ee94:	4741                	li	a4,16
1c00ee96:	04e6cf33          	p.min	t5,a3,a4
1c00ee9a:	1f7d                	addi	t5,t5,-1
1c00ee9c:	06600d93          	li	s11,102
1c00eea0:	f0069a63          	bnez	a3,1c00e5b4 <pos_libc_prf+0x644>
1c00eea4:	4501                	li	a0,0
1c00eea6:	080006b7          	lui	a3,0x8000
1c00eeaa:	f76ff06f          	j	1c00e620 <pos_libc_prf+0x6b0>
1c00eeae:	86aa                	mv	a3,a0
1c00eeb0:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c00eeb4:	2408c6e3          	bltz	a7,1c00f900 <pos_libc_prf+0x1990>
1c00eeb8:	02b00793          	li	a5,43
1c00eebc:	00f500a3          	sb	a5,1(a0)
1c00eec0:	06300793          	li	a5,99
1c00eec4:	0117de63          	ble	a7,a5,1c00eee0 <pos_libc_prf+0xf70>
1c00eec8:	06400693          	li	a3,100
1c00eecc:	02d8c7b3          	div	a5,a7,a3
1c00eed0:	03078793          	addi	a5,a5,48
1c00eed4:	02d8e8b3          	rem	a7,a7,a3
1c00eed8:	00f50123          	sb	a5,2(a0)
1c00eedc:	00350693          	addi	a3,a0,3
1c00eee0:	47a9                	li	a5,10
1c00eee2:	02f8c633          	div	a2,a7,a5
1c00eee6:	02f8e7b3          	rem	a5,a7,a5
1c00eeea:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c00eeee:	8536                	mv	a0,a3
1c00eef0:	00c5012b          	p.sb	a2,2(a0!)
1c00eef4:	03078793          	addi	a5,a5,48
1c00eef8:	00f680a3          	sb	a5,1(a3)
1c00eefc:	beed                	j	1c00eaf6 <pos_libc_prf+0xb86>
1c00eefe:	800004b7          	lui	s1,0x80000
1c00ef02:	fff4c493          	not	s1,s1
1c00ef06:	c3cff06f          	j	1c00e342 <pos_libc_prf+0x3d2>
1c00ef0a:	85e6                	mv	a1,s9
1c00ef0c:	cc02                	sw	zero,24(sp)
1c00ef0e:	4a01                	li	s4,0
1c00ef10:	bee9                	j	1c00eaea <pos_libc_prf+0xb7a>
1c00ef12:	4901                	li	s2,0
1c00ef14:	1054                	addi	a3,sp,36
1c00ef16:	d60ff06f          	j	1c00e476 <pos_libc_prf+0x506>
1c00ef1a:	007a0793          	addi	a5,s4,7
1c00ef1e:	c407b7b3          	p.bclr	a5,a5,2,0
1c00ef22:	00878713          	addi	a4,a5,8
1c00ef26:	ce3a                	sw	a4,28(sp)
1c00ef28:	4380                	lw	s0,0(a5)
1c00ef2a:	0047ac83          	lw	s9,4(a5)
1c00ef2e:	d1eff06f          	j	1c00e44c <pos_libc_prf+0x4dc>
1c00ef32:	ffed8613          	addi	a2,s11,-2
1c00ef36:	0ff67d93          	andi	s11,a2,255
1c00ef3a:	220486e3          	beqz	s1,1c00f966 <pos_libc_prf+0x19f6>
1c00ef3e:	4712                	lw	a4,4(sp)
1c00ef40:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c00ef44:	1e071fe3          	bnez	a4,1c00f942 <pos_libc_prf+0x19d2>
1c00ef48:	00d02fb3          	sgtz	t6,a3
1c00ef4c:	0fffff93          	andi	t6,t6,255
1c00ef50:	84b6                	mv	s1,a3
1c00ef52:	e56ff06f          	j	1c00e5a8 <pos_libc_prf+0x638>
1c00ef56:	007a0693          	addi	a3,s4,7
1c00ef5a:	c406b6b3          	p.bclr	a3,a3,2,0
1c00ef5e:	00868793          	addi	a5,a3,8
1c00ef62:	ce3e                	sw	a5,28(sp)
1c00ef64:	429c                	lw	a5,0(a3)
1c00ef66:	42d4                	lw	a3,4(a3)
1c00ef68:	c236                	sw	a3,4(sp)
1c00ef6a:	8736                	mv	a4,a3
1c00ef6c:	a02ff06f          	j	1c00e16e <pos_libc_prf+0x1fe>
1c00ef70:	24c7efe3          	bltu	a5,a2,1c00f9ce <pos_libc_prf+0x1a5e>
1c00ef74:	6791                	lui	a5,0x4
1c00ef76:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c00ef7a:	00f31023          	sh	a5,0(t1)
1c00ef7e:	04e00793          	li	a5,78
1c00ef82:	00f30123          	sb	a5,2(t1)
1c00ef86:	bd49                	j	1c00ee18 <pos_libc_prf+0xea8>
1c00ef88:	02e00793          	li	a5,46
1c00ef8c:	00f300a3          	sb	a5,1(t1)
1c00ef90:	00230793          	addi	a5,t1,2
1c00ef94:	f6904163          	bgtz	s1,1c00e6f6 <pos_libc_prf+0x786>
1c00ef98:	8ca6                	mv	s9,s1
1c00ef9a:	853e                	mv	a0,a5
1c00ef9c:	b615                	j	1c00eac0 <pos_libc_prf+0xb50>
1c00ef9e:	4481                	li	s1,0
1c00efa0:	c202                	sw	zero,4(sp)
1c00efa2:	4901                	li	s2,0
1c00efa4:	a6aff06f          	j	1c00e20e <pos_libc_prf+0x29e>
1c00efa8:	04600e13          	li	t3,70
1c00efac:	06600d93          	li	s11,102
1c00efb0:	b1c1                	j	1c00ec70 <pos_libc_prf+0xd00>
1c00efb2:	105c                	addi	a5,sp,36
1c00efb4:	4565                	li	a0,25
1c00efb6:	0017c70b          	p.lbu	a4,1(a5!)
1c00efba:	f9f70693          	addi	a3,a4,-97
1c00efbe:	0ff6f693          	andi	a3,a3,255
1c00efc2:	fe070613          	addi	a2,a4,-32
1c00efc6:	00d56e63          	bltu	a0,a3,1c00efe2 <pos_libc_prf+0x1072>
1c00efca:	fec78fa3          	sb	a2,-1(a5)
1c00efce:	0017c70b          	p.lbu	a4,1(a5!)
1c00efd2:	f9f70693          	addi	a3,a4,-97
1c00efd6:	0ff6f693          	andi	a3,a3,255
1c00efda:	fe070613          	addi	a2,a4,-32
1c00efde:	fed576e3          	bleu	a3,a0,1c00efca <pos_libc_prf+0x105a>
1c00efe2:	fb71                	bnez	a4,1c00efb6 <pos_libc_prf+0x1046>
1c00efe4:	d4eff06f          	j	1c00e532 <pos_libc_prf+0x5c2>
1c00efe8:	4c92                	lw	s9,4(sp)
1c00efea:	02410a13          	addi	s4,sp,36
1c00efee:	998ff06f          	j	1c00e186 <pos_libc_prf+0x216>
1c00eff2:	4922                	lw	s2,8(sp)
1c00eff4:	8dd2                	mv	s11,s4
1c00eff6:	a029                	j	1c00f000 <pos_libc_prf+0x1090>
1c00eff8:	9982                	jalr	s3
1c00effa:	1dfd                	addi	s11,s11,-1
1c00effc:	8ff52563          	p.beqimm	a0,-1,1c00e0e6 <pos_libc_prf+0x176>
1c00f000:	85de                	mv	a1,s7
1c00f002:	03000513          	li	a0,48
1c00f006:	ffb049e3          	bgtz	s11,1c00eff8 <pos_libc_prf+0x1088>
1c00f00a:	41490933          	sub	s2,s2,s4
1c00f00e:	a62ff06f          	j	1c00e270 <pos_libc_prf+0x300>
1c00f012:	4712                	lw	a4,4(sp)
1c00f014:	12070fe3          	beqz	a4,1c00f952 <pos_libc_prf+0x19e2>
1c00f018:	03000793          	li	a5,48
1c00f01c:	02f10223          	sb	a5,36(sp)
1c00f020:	019467b3          	or	a5,s0,s9
1c00f024:	14078ae3          	beqz	a5,1c00f978 <pos_libc_prf+0x1a08>
1c00f028:	02510593          	addi	a1,sp,37
1c00f02c:	4905                	li	s2,1
1c00f02e:	86ae                	mv	a3,a1
1c00f030:	87b6                	mv	a5,a3
1c00f032:	a011                	j	1c00f036 <pos_libc_prf+0x10c6>
1c00f034:	87b2                	mv	a5,a2
1c00f036:	01dc9613          	slli	a2,s9,0x1d
1c00f03a:	f8343733          	p.bclr	a4,s0,28,3
1c00f03e:	800d                	srli	s0,s0,0x3
1c00f040:	8c51                	or	s0,s0,a2
1c00f042:	03070713          	addi	a4,a4,48
1c00f046:	003cdc93          	srli	s9,s9,0x3
1c00f04a:	00e78023          	sb	a4,0(a5)
1c00f04e:	01946733          	or	a4,s0,s9
1c00f052:	00178613          	addi	a2,a5,1
1c00f056:	ff79                	bnez	a4,1c00f034 <pos_libc_prf+0x10c4>
1c00f058:	00060023          	sb	zero,0(a2)
1c00f05c:	8e0d                	sub	a2,a2,a1
1c00f05e:	00f6fc63          	bleu	a5,a3,1c00f076 <pos_libc_prf+0x1106>
1c00f062:	0006c583          	lbu	a1,0(a3)
1c00f066:	0007c703          	lbu	a4,0(a5)
1c00f06a:	feb78fab          	p.sb	a1,-1(a5!)
1c00f06e:	00e680ab          	p.sb	a4,1(a3!)
1c00f072:	fef6e8e3          	bltu	a3,a5,1c00f062 <pos_libc_prf+0x10f2>
1c00f076:	9932                	add	s2,s2,a2
1c00f078:	c202                	sw	zero,4(sp)
1c00f07a:	97aff06f          	j	1c00e1f4 <pos_libc_prf+0x284>
1c00f07e:	111057e3          	blez	a7,1c00f98c <pos_libc_prf+0x1a1c>
1c00f082:	00279e13          	slli	t3,a5,0x2
1c00f086:	01e7df13          	srli	t5,a5,0x1e
1c00f08a:	00269e93          	slli	t4,a3,0x2
1c00f08e:	00fe05b3          	add	a1,t3,a5
1c00f092:	01df6eb3          	or	t4,t5,t4
1c00f096:	9eb6                	add	t4,t4,a3
1c00f098:	01c5b6b3          	sltu	a3,a1,t3
1c00f09c:	96f6                	add	a3,a3,t4
1c00f09e:	01f5d793          	srli	a5,a1,0x1f
1c00f0a2:	0686                	slli	a3,a3,0x1
1c00f0a4:	8edd                	or	a3,a3,a5
1c00f0a6:	01c6d793          	srli	a5,a3,0x1c
1c00f0aa:	03078793          	addi	a5,a5,48
1c00f0ae:	10000e37          	lui	t3,0x10000
1c00f0b2:	1e7d                	addi	t3,t3,-1
1c00f0b4:	00f30023          	sb	a5,0(t1)
1c00f0b8:	01c6f6b3          	and	a3,a3,t3
1c00f0bc:	00159793          	slli	a5,a1,0x1
1c00f0c0:	1618aee3          	p.beqimm	a7,1,1c00fa3c <pos_libc_prf+0x1acc>
1c00f0c4:	01e7df13          	srli	t5,a5,0x1e
1c00f0c8:	00269e93          	slli	t4,a3,0x2
1c00f0cc:	058e                	slli	a1,a1,0x3
1c00f0ce:	00f58533          	add	a0,a1,a5
1c00f0d2:	01df6eb3          	or	t4,t5,t4
1c00f0d6:	9eb6                	add	t4,t4,a3
1c00f0d8:	00b536b3          	sltu	a3,a0,a1
1c00f0dc:	96f6                	add	a3,a3,t4
1c00f0de:	01f55793          	srli	a5,a0,0x1f
1c00f0e2:	0686                	slli	a3,a3,0x1
1c00f0e4:	8edd                	or	a3,a3,a5
1c00f0e6:	01c6d793          	srli	a5,a3,0x1c
1c00f0ea:	03078793          	addi	a5,a5,48
1c00f0ee:	00f300a3          	sb	a5,1(t1)
1c00f0f2:	01c6f6b3          	and	a3,a3,t3
1c00f0f6:	00151793          	slli	a5,a0,0x1
1c00f0fa:	1628a3e3          	p.beqimm	a7,2,1c00fa60 <pos_libc_prf+0x1af0>
1c00f0fe:	01e7df13          	srli	t5,a5,0x1e
1c00f102:	00269e93          	slli	t4,a3,0x2
1c00f106:	050e                	slli	a0,a0,0x3
1c00f108:	00f505b3          	add	a1,a0,a5
1c00f10c:	01df6eb3          	or	t4,t5,t4
1c00f110:	9eb6                	add	t4,t4,a3
1c00f112:	00a5b6b3          	sltu	a3,a1,a0
1c00f116:	96f6                	add	a3,a3,t4
1c00f118:	01f5d793          	srli	a5,a1,0x1f
1c00f11c:	0686                	slli	a3,a3,0x1
1c00f11e:	8edd                	or	a3,a3,a5
1c00f120:	01c6d793          	srli	a5,a3,0x1c
1c00f124:	03078793          	addi	a5,a5,48
1c00f128:	00f30123          	sb	a5,2(t1)
1c00f12c:	ffd88a13          	addi	s4,a7,-3
1c00f130:	00159793          	slli	a5,a1,0x1
1c00f134:	01c6f6b3          	and	a3,a3,t3
1c00f138:	134050e3          	blez	s4,1c00fa58 <pos_libc_prf+0x1ae8>
1c00f13c:	01e7df13          	srli	t5,a5,0x1e
1c00f140:	00269e93          	slli	t4,a3,0x2
1c00f144:	058e                	slli	a1,a1,0x3
1c00f146:	00f58533          	add	a0,a1,a5
1c00f14a:	01df6eb3          	or	t4,t5,t4
1c00f14e:	9eb6                	add	t4,t4,a3
1c00f150:	00b536b3          	sltu	a3,a0,a1
1c00f154:	96f6                	add	a3,a3,t4
1c00f156:	01f55793          	srli	a5,a0,0x1f
1c00f15a:	0686                	slli	a3,a3,0x1
1c00f15c:	8edd                	or	a3,a3,a5
1c00f15e:	01c6d793          	srli	a5,a3,0x1c
1c00f162:	03078793          	addi	a5,a5,48
1c00f166:	00f301a3          	sb	a5,3(t1)
1c00f16a:	ffc88a13          	addi	s4,a7,-4
1c00f16e:	00151793          	slli	a5,a0,0x1
1c00f172:	01c6f6b3          	and	a3,a3,t3
1c00f176:	134056e3          	blez	s4,1c00faa2 <pos_libc_prf+0x1b32>
1c00f17a:	01e7df13          	srli	t5,a5,0x1e
1c00f17e:	00269e93          	slli	t4,a3,0x2
1c00f182:	050e                	slli	a0,a0,0x3
1c00f184:	00f505b3          	add	a1,a0,a5
1c00f188:	01df6eb3          	or	t4,t5,t4
1c00f18c:	9eb6                	add	t4,t4,a3
1c00f18e:	00a5b6b3          	sltu	a3,a1,a0
1c00f192:	96f6                	add	a3,a3,t4
1c00f194:	01f5d793          	srli	a5,a1,0x1f
1c00f198:	0686                	slli	a3,a3,0x1
1c00f19a:	8edd                	or	a3,a3,a5
1c00f19c:	01c6d793          	srli	a5,a3,0x1c
1c00f1a0:	03078793          	addi	a5,a5,48
1c00f1a4:	00f30223          	sb	a5,4(t1)
1c00f1a8:	ffb88a13          	addi	s4,a7,-5
1c00f1ac:	00159793          	slli	a5,a1,0x1
1c00f1b0:	01c6f6b3          	and	a3,a3,t3
1c00f1b4:	0f4053e3          	blez	s4,1c00fa9a <pos_libc_prf+0x1b2a>
1c00f1b8:	01e7df13          	srli	t5,a5,0x1e
1c00f1bc:	00269e93          	slli	t4,a3,0x2
1c00f1c0:	058e                	slli	a1,a1,0x3
1c00f1c2:	00f58533          	add	a0,a1,a5
1c00f1c6:	01df6eb3          	or	t4,t5,t4
1c00f1ca:	9eb6                	add	t4,t4,a3
1c00f1cc:	00b536b3          	sltu	a3,a0,a1
1c00f1d0:	96f6                	add	a3,a3,t4
1c00f1d2:	01f55793          	srli	a5,a0,0x1f
1c00f1d6:	0686                	slli	a3,a3,0x1
1c00f1d8:	8edd                	or	a3,a3,a5
1c00f1da:	01c6d793          	srli	a5,a3,0x1c
1c00f1de:	03078793          	addi	a5,a5,48
1c00f1e2:	00f302a3          	sb	a5,5(t1)
1c00f1e6:	ffa88a13          	addi	s4,a7,-6
1c00f1ea:	00151793          	slli	a5,a0,0x1
1c00f1ee:	01c6f6b3          	and	a3,a3,t3
1c00f1f2:	0b4050e3          	blez	s4,1c00fa92 <pos_libc_prf+0x1b22>
1c00f1f6:	01e7df13          	srli	t5,a5,0x1e
1c00f1fa:	00269e93          	slli	t4,a3,0x2
1c00f1fe:	050e                	slli	a0,a0,0x3
1c00f200:	00f505b3          	add	a1,a0,a5
1c00f204:	01df6eb3          	or	t4,t5,t4
1c00f208:	9eb6                	add	t4,t4,a3
1c00f20a:	00a5b6b3          	sltu	a3,a1,a0
1c00f20e:	96f6                	add	a3,a3,t4
1c00f210:	01f5d793          	srli	a5,a1,0x1f
1c00f214:	0686                	slli	a3,a3,0x1
1c00f216:	8edd                	or	a3,a3,a5
1c00f218:	01c6d793          	srli	a5,a3,0x1c
1c00f21c:	03078793          	addi	a5,a5,48
1c00f220:	00f30323          	sb	a5,6(t1)
1c00f224:	ff988a13          	addi	s4,a7,-7
1c00f228:	00159793          	slli	a5,a1,0x1
1c00f22c:	01c6f6b3          	and	a3,a3,t3
1c00f230:	05405de3          	blez	s4,1c00fa8a <pos_libc_prf+0x1b1a>
1c00f234:	058e                	slli	a1,a1,0x3
1c00f236:	01e7de93          	srli	t4,a5,0x1e
1c00f23a:	00269513          	slli	a0,a3,0x2
1c00f23e:	97ae                	add	a5,a5,a1
1c00f240:	00aee533          	or	a0,t4,a0
1c00f244:	9536                	add	a0,a0,a3
1c00f246:	00b7b6b3          	sltu	a3,a5,a1
1c00f24a:	96aa                	add	a3,a3,a0
1c00f24c:	01f7d593          	srli	a1,a5,0x1f
1c00f250:	0686                	slli	a3,a3,0x1
1c00f252:	8ecd                	or	a3,a3,a1
1c00f254:	01c6d593          	srli	a1,a3,0x1c
1c00f258:	03058593          	addi	a1,a1,48
1c00f25c:	0786                	slli	a5,a5,0x1
1c00f25e:	00b303a3          	sb	a1,7(t1)
1c00f262:	ff888a13          	addi	s4,a7,-8
1c00f266:	85be                	mv	a1,a5
1c00f268:	01c6f6b3          	and	a3,a3,t3
1c00f26c:	01405be3          	blez	s4,1c00fa82 <pos_libc_prf+0x1b12>
1c00f270:	078a                	slli	a5,a5,0x2
1c00f272:	01e5de13          	srli	t3,a1,0x1e
1c00f276:	00269513          	slli	a0,a3,0x2
1c00f27a:	95be                	add	a1,a1,a5
1c00f27c:	00ae6533          	or	a0,t3,a0
1c00f280:	9536                	add	a0,a0,a3
1c00f282:	00f5b6b3          	sltu	a3,a1,a5
1c00f286:	96aa                	add	a3,a3,a0
1c00f288:	01f5d793          	srli	a5,a1,0x1f
1c00f28c:	0686                	slli	a3,a3,0x1
1c00f28e:	8edd                	or	a3,a3,a5
1c00f290:	01c6d793          	srli	a5,a3,0x1c
1c00f294:	03078793          	addi	a5,a5,48
1c00f298:	10000e37          	lui	t3,0x10000
1c00f29c:	1e7d                	addi	t3,t3,-1
1c00f29e:	00f30423          	sb	a5,8(t1)
1c00f2a2:	ff788a13          	addi	s4,a7,-9
1c00f2a6:	00159793          	slli	a5,a1,0x1
1c00f2aa:	01c6f6b3          	and	a3,a3,t3
1c00f2ae:	7d405663          	blez	s4,1c00fa7a <pos_libc_prf+0x1b0a>
1c00f2b2:	01e7df13          	srli	t5,a5,0x1e
1c00f2b6:	00269e93          	slli	t4,a3,0x2
1c00f2ba:	058e                	slli	a1,a1,0x3
1c00f2bc:	00f58533          	add	a0,a1,a5
1c00f2c0:	01df6eb3          	or	t4,t5,t4
1c00f2c4:	9eb6                	add	t4,t4,a3
1c00f2c6:	00b536b3          	sltu	a3,a0,a1
1c00f2ca:	96f6                	add	a3,a3,t4
1c00f2cc:	01f55793          	srli	a5,a0,0x1f
1c00f2d0:	0686                	slli	a3,a3,0x1
1c00f2d2:	8edd                	or	a3,a3,a5
1c00f2d4:	01c6d793          	srli	a5,a3,0x1c
1c00f2d8:	03078793          	addi	a5,a5,48
1c00f2dc:	00f304a3          	sb	a5,9(t1)
1c00f2e0:	ff688a13          	addi	s4,a7,-10
1c00f2e4:	00151793          	slli	a5,a0,0x1
1c00f2e8:	01c6f6b3          	and	a3,a3,t3
1c00f2ec:	79405363          	blez	s4,1c00fa72 <pos_libc_prf+0x1b02>
1c00f2f0:	01e7df13          	srli	t5,a5,0x1e
1c00f2f4:	00269e93          	slli	t4,a3,0x2
1c00f2f8:	050e                	slli	a0,a0,0x3
1c00f2fa:	00f505b3          	add	a1,a0,a5
1c00f2fe:	01df6eb3          	or	t4,t5,t4
1c00f302:	9eb6                	add	t4,t4,a3
1c00f304:	00a5b6b3          	sltu	a3,a1,a0
1c00f308:	96f6                	add	a3,a3,t4
1c00f30a:	01f5d793          	srli	a5,a1,0x1f
1c00f30e:	0686                	slli	a3,a3,0x1
1c00f310:	8edd                	or	a3,a3,a5
1c00f312:	01c6d793          	srli	a5,a3,0x1c
1c00f316:	03078793          	addi	a5,a5,48
1c00f31a:	00f30523          	sb	a5,10(t1)
1c00f31e:	ff588a13          	addi	s4,a7,-11
1c00f322:	00159793          	slli	a5,a1,0x1
1c00f326:	01c6f6b3          	and	a3,a3,t3
1c00f32a:	75405063          	blez	s4,1c00fa6a <pos_libc_prf+0x1afa>
1c00f32e:	01e7df13          	srli	t5,a5,0x1e
1c00f332:	00269e93          	slli	t4,a3,0x2
1c00f336:	058e                	slli	a1,a1,0x3
1c00f338:	00f58533          	add	a0,a1,a5
1c00f33c:	01df6eb3          	or	t4,t5,t4
1c00f340:	9eb6                	add	t4,t4,a3
1c00f342:	00b536b3          	sltu	a3,a0,a1
1c00f346:	96f6                	add	a3,a3,t4
1c00f348:	01f55793          	srli	a5,a0,0x1f
1c00f34c:	0686                	slli	a3,a3,0x1
1c00f34e:	8edd                	or	a3,a3,a5
1c00f350:	01c6d793          	srli	a5,a3,0x1c
1c00f354:	03078793          	addi	a5,a5,48
1c00f358:	00f305a3          	sb	a5,11(t1)
1c00f35c:	ff488a13          	addi	s4,a7,-12
1c00f360:	00151793          	slli	a5,a0,0x1
1c00f364:	01c6f6b3          	and	a3,a3,t3
1c00f368:	6f405163          	blez	s4,1c00fa4a <pos_libc_prf+0x1ada>
1c00f36c:	050e                	slli	a0,a0,0x3
1c00f36e:	01e7de93          	srli	t4,a5,0x1e
1c00f372:	00269813          	slli	a6,a3,0x2
1c00f376:	00f505b3          	add	a1,a0,a5
1c00f37a:	010ee833          	or	a6,t4,a6
1c00f37e:	9836                	add	a6,a6,a3
1c00f380:	00a5b6b3          	sltu	a3,a1,a0
1c00f384:	96c2                	add	a3,a3,a6
1c00f386:	01f5d793          	srli	a5,a1,0x1f
1c00f38a:	0686                	slli	a3,a3,0x1
1c00f38c:	8edd                	or	a3,a3,a5
1c00f38e:	01c6d793          	srli	a5,a3,0x1c
1c00f392:	03078793          	addi	a5,a5,48
1c00f396:	00f30623          	sb	a5,12(t1)
1c00f39a:	ff388a13          	addi	s4,a7,-13
1c00f39e:	00159793          	slli	a5,a1,0x1
1c00f3a2:	01c6f6b3          	and	a3,a3,t3
1c00f3a6:	00d30513          	addi	a0,t1,13
1c00f3aa:	480d                	li	a6,3
1c00f3ac:	0d405163          	blez	s4,1c00f46e <pos_libc_prf+0x14fe>
1c00f3b0:	01e7de93          	srli	t4,a5,0x1e
1c00f3b4:	00269813          	slli	a6,a3,0x2
1c00f3b8:	058e                	slli	a1,a1,0x3
1c00f3ba:	00f58533          	add	a0,a1,a5
1c00f3be:	010ee833          	or	a6,t4,a6
1c00f3c2:	9836                	add	a6,a6,a3
1c00f3c4:	00b536b3          	sltu	a3,a0,a1
1c00f3c8:	96c2                	add	a3,a3,a6
1c00f3ca:	01f55793          	srli	a5,a0,0x1f
1c00f3ce:	0686                	slli	a3,a3,0x1
1c00f3d0:	8edd                	or	a3,a3,a5
1c00f3d2:	01c6d793          	srli	a5,a3,0x1c
1c00f3d6:	03078793          	addi	a5,a5,48
1c00f3da:	00f306a3          	sb	a5,13(t1)
1c00f3de:	ff288a13          	addi	s4,a7,-14
1c00f3e2:	00151793          	slli	a5,a0,0x1
1c00f3e6:	01c6f6b3          	and	a3,a3,t3
1c00f3ea:	65405c63          	blez	s4,1c00fa42 <pos_libc_prf+0x1ad2>
1c00f3ee:	050e                	slli	a0,a0,0x3
1c00f3f0:	01e7de93          	srli	t4,a5,0x1e
1c00f3f4:	00269813          	slli	a6,a3,0x2
1c00f3f8:	00f505b3          	add	a1,a0,a5
1c00f3fc:	010ee833          	or	a6,t4,a6
1c00f400:	9836                	add	a6,a6,a3
1c00f402:	00a5b6b3          	sltu	a3,a1,a0
1c00f406:	96c2                	add	a3,a3,a6
1c00f408:	01f5d793          	srli	a5,a1,0x1f
1c00f40c:	0686                	slli	a3,a3,0x1
1c00f40e:	8edd                	or	a3,a3,a5
1c00f410:	01c6d793          	srli	a5,a3,0x1c
1c00f414:	03078793          	addi	a5,a5,48
1c00f418:	00f30723          	sb	a5,14(t1)
1c00f41c:	ff188a13          	addi	s4,a7,-15
1c00f420:	00159793          	slli	a5,a1,0x1
1c00f424:	01c6f6b3          	and	a3,a3,t3
1c00f428:	00f30513          	addi	a0,t1,15
1c00f42c:	4805                	li	a6,1
1c00f42e:	05405063          	blez	s4,1c00f46e <pos_libc_prf+0x14fe>
1c00f432:	01e7d813          	srli	a6,a5,0x1e
1c00f436:	058e                	slli	a1,a1,0x3
1c00f438:	00269513          	slli	a0,a3,0x2
1c00f43c:	97ae                	add	a5,a5,a1
1c00f43e:	00a86533          	or	a0,a6,a0
1c00f442:	9536                	add	a0,a0,a3
1c00f444:	00b7b6b3          	sltu	a3,a5,a1
1c00f448:	96aa                	add	a3,a3,a0
1c00f44a:	01f7d593          	srli	a1,a5,0x1f
1c00f44e:	0686                	slli	a3,a3,0x1
1c00f450:	8ecd                	or	a3,a3,a1
1c00f452:	01c6d593          	srli	a1,a3,0x1c
1c00f456:	03058593          	addi	a1,a1,48
1c00f45a:	01030513          	addi	a0,t1,16
1c00f45e:	0786                	slli	a5,a5,0x1
1c00f460:	01c6f6b3          	and	a3,a3,t3
1c00f464:	00b307a3          	sb	a1,15(t1)
1c00f468:	ff088a13          	addi	s4,a7,-16
1c00f46c:	4801                	li	a6,0
1c00f46e:	4712                	lw	a4,4(sp)
1c00f470:	4e070663          	beqz	a4,1c00f95c <pos_libc_prf+0x19ec>
1c00f474:	02e00893          	li	a7,46
1c00f478:	01150023          	sb	a7,0(a0)
1c00f47c:	8326                	mv	t1,s1
1c00f47e:	cc02                	sw	zero,24(sp)
1c00f480:	00150593          	addi	a1,a0,1
1c00f484:	4881                	li	a7,0
1c00f486:	62605263          	blez	t1,1c00faaa <pos_libc_prf+0x1b3a>
1c00f48a:	62080063          	beqz	a6,1c00faaa <pos_libc_prf+0x1b3a>
1c00f48e:	00279513          	slli	a0,a5,0x2
1c00f492:	01e7de93          	srli	t4,a5,0x1e
1c00f496:	00269e13          	slli	t3,a3,0x2
1c00f49a:	97aa                	add	a5,a5,a0
1c00f49c:	01ceee33          	or	t3,t4,t3
1c00f4a0:	96f2                	add	a3,a3,t3
1c00f4a2:	00a7beb3          	sltu	t4,a5,a0
1c00f4a6:	9eb6                	add	t4,t4,a3
1c00f4a8:	0e86                	slli	t4,t4,0x1
1c00f4aa:	01f7d693          	srli	a3,a5,0x1f
1c00f4ae:	01d6eeb3          	or	t4,a3,t4
1c00f4b2:	01ced693          	srli	a3,t4,0x1c
1c00f4b6:	03068693          	addi	a3,a3,48
1c00f4ba:	00d58023          	sb	a3,0(a1)
1c00f4be:	fff30493          	addi	s1,t1,-1
1c00f4c2:	00158513          	addi	a0,a1,1
1c00f4c6:	00179693          	slli	a3,a5,0x1
1c00f4ca:	42048263          	beqz	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f4ce:	42182063          	p.beqimm	a6,1,1c00f8ee <pos_libc_prf+0x197e>
1c00f4d2:	10000e37          	lui	t3,0x10000
1c00f4d6:	1e7d                	addi	t3,t3,-1
1c00f4d8:	01cefeb3          	and	t4,t4,t3
1c00f4dc:	078e                	slli	a5,a5,0x3
1c00f4de:	01e6df13          	srli	t5,a3,0x1e
1c00f4e2:	002e9513          	slli	a0,t4,0x2
1c00f4e6:	96be                	add	a3,a3,a5
1c00f4e8:	00af6533          	or	a0,t5,a0
1c00f4ec:	9eaa                	add	t4,t4,a0
1c00f4ee:	00f6b7b3          	sltu	a5,a3,a5
1c00f4f2:	97f6                	add	a5,a5,t4
1c00f4f4:	01f6d513          	srli	a0,a3,0x1f
1c00f4f8:	0786                	slli	a5,a5,0x1
1c00f4fa:	8fc9                	or	a5,a5,a0
1c00f4fc:	01c7d513          	srli	a0,a5,0x1c
1c00f500:	03050513          	addi	a0,a0,48
1c00f504:	00a580a3          	sb	a0,1(a1)
1c00f508:	ffe30493          	addi	s1,t1,-2
1c00f50c:	00258513          	addi	a0,a1,2
1c00f510:	00169e93          	slli	t4,a3,0x1
1c00f514:	01c7f7b3          	and	a5,a5,t3
1c00f518:	3c048b63          	beqz	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f51c:	3c282963          	p.beqimm	a6,2,1c00f8ee <pos_libc_prf+0x197e>
1c00f520:	01eedf13          	srli	t5,t4,0x1e
1c00f524:	068e                	slli	a3,a3,0x3
1c00f526:	00279513          	slli	a0,a5,0x2
1c00f52a:	9eb6                	add	t4,t4,a3
1c00f52c:	00af6533          	or	a0,t5,a0
1c00f530:	00deb6b3          	sltu	a3,t4,a3
1c00f534:	97aa                	add	a5,a5,a0
1c00f536:	97b6                	add	a5,a5,a3
1c00f538:	0786                	slli	a5,a5,0x1
1c00f53a:	01fed693          	srli	a3,t4,0x1f
1c00f53e:	8fd5                	or	a5,a5,a3
1c00f540:	01c7d693          	srli	a3,a5,0x1c
1c00f544:	03068693          	addi	a3,a3,48
1c00f548:	00d58123          	sb	a3,2(a1)
1c00f54c:	ffd30493          	addi	s1,t1,-3
1c00f550:	00358513          	addi	a0,a1,3
1c00f554:	001e9693          	slli	a3,t4,0x1
1c00f558:	01c7ff33          	and	t5,a5,t3
1c00f55c:	38905963          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f560:	38382763          	p.beqimm	a6,3,1c00f8ee <pos_libc_prf+0x197e>
1c00f564:	003e9513          	slli	a0,t4,0x3
1c00f568:	01e6d793          	srli	a5,a3,0x1e
1c00f56c:	002f1e93          	slli	t4,t5,0x2
1c00f570:	96aa                	add	a3,a3,a0
1c00f572:	01d7eeb3          	or	t4,a5,t4
1c00f576:	9efa                	add	t4,t4,t5
1c00f578:	00a6b7b3          	sltu	a5,a3,a0
1c00f57c:	97f6                	add	a5,a5,t4
1c00f57e:	01f6d513          	srli	a0,a3,0x1f
1c00f582:	0786                	slli	a5,a5,0x1
1c00f584:	8fc9                	or	a5,a5,a0
1c00f586:	01c7d513          	srli	a0,a5,0x1c
1c00f58a:	03050513          	addi	a0,a0,48
1c00f58e:	00a581a3          	sb	a0,3(a1)
1c00f592:	ffc30493          	addi	s1,t1,-4
1c00f596:	00458513          	addi	a0,a1,4
1c00f59a:	00169e93          	slli	t4,a3,0x1
1c00f59e:	01c7fe33          	and	t3,a5,t3
1c00f5a2:	34905663          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f5a6:	34482463          	p.beqimm	a6,4,1c00f8ee <pos_libc_prf+0x197e>
1c00f5aa:	068e                	slli	a3,a3,0x3
1c00f5ac:	01eed793          	srli	a5,t4,0x1e
1c00f5b0:	002e1513          	slli	a0,t3,0x2
1c00f5b4:	9eb6                	add	t4,t4,a3
1c00f5b6:	8d5d                	or	a0,a0,a5
1c00f5b8:	9e2a                	add	t3,t3,a0
1c00f5ba:	00deb7b3          	sltu	a5,t4,a3
1c00f5be:	97f2                	add	a5,a5,t3
1c00f5c0:	01fed693          	srli	a3,t4,0x1f
1c00f5c4:	0786                	slli	a5,a5,0x1
1c00f5c6:	8fd5                	or	a5,a5,a3
1c00f5c8:	01c7d693          	srli	a3,a5,0x1c
1c00f5cc:	03068693          	addi	a3,a3,48
1c00f5d0:	00d58223          	sb	a3,4(a1)
1c00f5d4:	ffb30493          	addi	s1,t1,-5
1c00f5d8:	00558513          	addi	a0,a1,5
1c00f5dc:	001e9693          	slli	a3,t4,0x1
1c00f5e0:	30905763          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f5e4:	30582563          	p.beqimm	a6,5,1c00f8ee <pos_libc_prf+0x197e>
1c00f5e8:	10000e37          	lui	t3,0x10000
1c00f5ec:	1e7d                	addi	t3,t3,-1
1c00f5ee:	01c7f7b3          	and	a5,a5,t3
1c00f5f2:	01e6de93          	srli	t4,a3,0x1e
1c00f5f6:	00269513          	slli	a0,a3,0x2
1c00f5fa:	00279f13          	slli	t5,a5,0x2
1c00f5fe:	96aa                	add	a3,a3,a0
1c00f600:	01eeef33          	or	t5,t4,t5
1c00f604:	00a6b533          	sltu	a0,a3,a0
1c00f608:	97fa                	add	a5,a5,t5
1c00f60a:	97aa                	add	a5,a5,a0
1c00f60c:	00179e93          	slli	t4,a5,0x1
1c00f610:	01f6d513          	srli	a0,a3,0x1f
1c00f614:	01d56eb3          	or	t4,a0,t4
1c00f618:	01ced793          	srli	a5,t4,0x1c
1c00f61c:	03078793          	addi	a5,a5,48
1c00f620:	00f582a3          	sb	a5,5(a1)
1c00f624:	ffa30493          	addi	s1,t1,-6
1c00f628:	00658513          	addi	a0,a1,6
1c00f62c:	00169793          	slli	a5,a3,0x1
1c00f630:	01cefeb3          	and	t4,t4,t3
1c00f634:	2a905d63          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f638:	2a682b63          	p.beqimm	a6,6,1c00f8ee <pos_libc_prf+0x197e>
1c00f63c:	068e                	slli	a3,a3,0x3
1c00f63e:	01e7df13          	srli	t5,a5,0x1e
1c00f642:	002e9513          	slli	a0,t4,0x2
1c00f646:	97b6                	add	a5,a5,a3
1c00f648:	00af6533          	or	a0,t5,a0
1c00f64c:	9eaa                	add	t4,t4,a0
1c00f64e:	00d7b6b3          	sltu	a3,a5,a3
1c00f652:	96f6                	add	a3,a3,t4
1c00f654:	01f7d513          	srli	a0,a5,0x1f
1c00f658:	00169e93          	slli	t4,a3,0x1
1c00f65c:	01d56eb3          	or	t4,a0,t4
1c00f660:	01ced693          	srli	a3,t4,0x1c
1c00f664:	03068693          	addi	a3,a3,48
1c00f668:	00d58323          	sb	a3,6(a1)
1c00f66c:	ff930493          	addi	s1,t1,-7
1c00f670:	00758513          	addi	a0,a1,7
1c00f674:	00179693          	slli	a3,a5,0x1
1c00f678:	01cefeb3          	and	t4,t4,t3
1c00f67c:	26905963          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f680:	26782763          	p.beqimm	a6,7,1c00f8ee <pos_libc_prf+0x197e>
1c00f684:	078e                	slli	a5,a5,0x3
1c00f686:	01e6df13          	srli	t5,a3,0x1e
1c00f68a:	002e9513          	slli	a0,t4,0x2
1c00f68e:	96be                	add	a3,a3,a5
1c00f690:	00af6533          	or	a0,t5,a0
1c00f694:	9eaa                	add	t4,t4,a0
1c00f696:	00f6b7b3          	sltu	a5,a3,a5
1c00f69a:	97f6                	add	a5,a5,t4
1c00f69c:	01f6d513          	srli	a0,a3,0x1f
1c00f6a0:	00179e93          	slli	t4,a5,0x1
1c00f6a4:	01d56eb3          	or	t4,a0,t4
1c00f6a8:	01ced793          	srli	a5,t4,0x1c
1c00f6ac:	03078793          	addi	a5,a5,48
1c00f6b0:	00f583a3          	sb	a5,7(a1)
1c00f6b4:	ff830493          	addi	s1,t1,-8
1c00f6b8:	00858513          	addi	a0,a1,8
1c00f6bc:	00169793          	slli	a5,a3,0x1
1c00f6c0:	01cefeb3          	and	t4,t4,t3
1c00f6c4:	22905563          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f6c8:	22882363          	p.beqimm	a6,8,1c00f8ee <pos_libc_prf+0x197e>
1c00f6cc:	01e7df13          	srli	t5,a5,0x1e
1c00f6d0:	068e                	slli	a3,a3,0x3
1c00f6d2:	002e9513          	slli	a0,t4,0x2
1c00f6d6:	97b6                	add	a5,a5,a3
1c00f6d8:	00af6533          	or	a0,t5,a0
1c00f6dc:	9eaa                	add	t4,t4,a0
1c00f6de:	00d7b6b3          	sltu	a3,a5,a3
1c00f6e2:	96f6                	add	a3,a3,t4
1c00f6e4:	01f7d513          	srli	a0,a5,0x1f
1c00f6e8:	0686                	slli	a3,a3,0x1
1c00f6ea:	8ec9                	or	a3,a3,a0
1c00f6ec:	01c6d513          	srli	a0,a3,0x1c
1c00f6f0:	03050513          	addi	a0,a0,48
1c00f6f4:	00a58423          	sb	a0,8(a1)
1c00f6f8:	ff730493          	addi	s1,t1,-9
1c00f6fc:	00958513          	addi	a0,a1,9
1c00f700:	00179f13          	slli	t5,a5,0x1
1c00f704:	01c6feb3          	and	t4,a3,t3
1c00f708:	1e905363          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f70c:	1e982163          	p.beqimm	a6,9,1c00f8ee <pos_libc_prf+0x197e>
1c00f710:	078e                	slli	a5,a5,0x3
1c00f712:	01ef5293          	srli	t0,t5,0x1e
1c00f716:	002e9513          	slli	a0,t4,0x2
1c00f71a:	01e786b3          	add	a3,a5,t5
1c00f71e:	00a2e533          	or	a0,t0,a0
1c00f722:	00f6b7b3          	sltu	a5,a3,a5
1c00f726:	9576                	add	a0,a0,t4
1c00f728:	97aa                	add	a5,a5,a0
1c00f72a:	0786                	slli	a5,a5,0x1
1c00f72c:	01f6d513          	srli	a0,a3,0x1f
1c00f730:	8fc9                	or	a5,a5,a0
1c00f732:	01c7d513          	srli	a0,a5,0x1c
1c00f736:	03050513          	addi	a0,a0,48
1c00f73a:	00a584a3          	sb	a0,9(a1)
1c00f73e:	ff630493          	addi	s1,t1,-10
1c00f742:	00a58513          	addi	a0,a1,10
1c00f746:	0686                	slli	a3,a3,0x1
1c00f748:	01c7f7b3          	and	a5,a5,t3
1c00f74c:	1a905163          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f750:	18a82f63          	p.beqimm	a6,10,1c00f8ee <pos_libc_prf+0x197e>
1c00f754:	01e6de93          	srli	t4,a3,0x1e
1c00f758:	00269513          	slli	a0,a3,0x2
1c00f75c:	00279e13          	slli	t3,a5,0x2
1c00f760:	96aa                	add	a3,a3,a0
1c00f762:	01ceee33          	or	t3,t4,t3
1c00f766:	00a6b533          	sltu	a0,a3,a0
1c00f76a:	97f2                	add	a5,a5,t3
1c00f76c:	97aa                	add	a5,a5,a0
1c00f76e:	00179e93          	slli	t4,a5,0x1
1c00f772:	01f6d513          	srli	a0,a3,0x1f
1c00f776:	01d56eb3          	or	t4,a0,t4
1c00f77a:	01ced793          	srli	a5,t4,0x1c
1c00f77e:	03078793          	addi	a5,a5,48
1c00f782:	10000e37          	lui	t3,0x10000
1c00f786:	1e7d                	addi	t3,t3,-1
1c00f788:	00f58523          	sb	a5,10(a1)
1c00f78c:	ff530493          	addi	s1,t1,-11
1c00f790:	00b58513          	addi	a0,a1,11
1c00f794:	00169793          	slli	a5,a3,0x1
1c00f798:	01cefeb3          	and	t4,t4,t3
1c00f79c:	14905963          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f7a0:	14b82763          	p.beqimm	a6,11,1c00f8ee <pos_libc_prf+0x197e>
1c00f7a4:	068e                	slli	a3,a3,0x3
1c00f7a6:	01e7df13          	srli	t5,a5,0x1e
1c00f7aa:	002e9513          	slli	a0,t4,0x2
1c00f7ae:	97b6                	add	a5,a5,a3
1c00f7b0:	00af6533          	or	a0,t5,a0
1c00f7b4:	9eaa                	add	t4,t4,a0
1c00f7b6:	00d7b6b3          	sltu	a3,a5,a3
1c00f7ba:	96f6                	add	a3,a3,t4
1c00f7bc:	01f7d513          	srli	a0,a5,0x1f
1c00f7c0:	0686                	slli	a3,a3,0x1
1c00f7c2:	8ec9                	or	a3,a3,a0
1c00f7c4:	01c6d513          	srli	a0,a3,0x1c
1c00f7c8:	03050513          	addi	a0,a0,48
1c00f7cc:	00a585a3          	sb	a0,11(a1)
1c00f7d0:	ff430493          	addi	s1,t1,-12
1c00f7d4:	00c58513          	addi	a0,a1,12
1c00f7d8:	00179e93          	slli	t4,a5,0x1
1c00f7dc:	10905963          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f7e0:	10c82763          	p.beqimm	a6,12,1c00f8ee <pos_libc_prf+0x197e>
1c00f7e4:	01c6f6b3          	and	a3,a3,t3
1c00f7e8:	01eedf13          	srli	t5,t4,0x1e
1c00f7ec:	078e                	slli	a5,a5,0x3
1c00f7ee:	00269513          	slli	a0,a3,0x2
1c00f7f2:	9ebe                	add	t4,t4,a5
1c00f7f4:	00af6533          	or	a0,t5,a0
1c00f7f8:	96aa                	add	a3,a3,a0
1c00f7fa:	00feb7b3          	sltu	a5,t4,a5
1c00f7fe:	97b6                	add	a5,a5,a3
1c00f800:	01fed513          	srli	a0,t4,0x1f
1c00f804:	00179693          	slli	a3,a5,0x1
1c00f808:	8ec9                	or	a3,a3,a0
1c00f80a:	01c6d793          	srli	a5,a3,0x1c
1c00f80e:	03078793          	addi	a5,a5,48
1c00f812:	00f58623          	sb	a5,12(a1)
1c00f816:	ff330493          	addi	s1,t1,-13
1c00f81a:	00d58513          	addi	a0,a1,13
1c00f81e:	001e9793          	slli	a5,t4,0x1
1c00f822:	01c6ff33          	and	t5,a3,t3
1c00f826:	0c905463          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f82a:	0cd82263          	p.beqimm	a6,13,1c00f8ee <pos_libc_prf+0x197e>
1c00f82e:	003e9693          	slli	a3,t4,0x3
1c00f832:	002f1513          	slli	a0,t5,0x2
1c00f836:	01e7de93          	srli	t4,a5,0x1e
1c00f83a:	00aee533          	or	a0,t4,a0
1c00f83e:	97b6                	add	a5,a5,a3
1c00f840:	957a                	add	a0,a0,t5
1c00f842:	00d7b6b3          	sltu	a3,a5,a3
1c00f846:	96aa                	add	a3,a3,a0
1c00f848:	0686                	slli	a3,a3,0x1
1c00f84a:	01f7d513          	srli	a0,a5,0x1f
1c00f84e:	8ec9                	or	a3,a3,a0
1c00f850:	01c6d513          	srli	a0,a3,0x1c
1c00f854:	03050513          	addi	a0,a0,48
1c00f858:	00a586a3          	sb	a0,13(a1)
1c00f85c:	ff230493          	addi	s1,t1,-14
1c00f860:	00e58513          	addi	a0,a1,14
1c00f864:	00179f13          	slli	t5,a5,0x1
1c00f868:	01c6feb3          	and	t4,a3,t3
1c00f86c:	08905163          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f870:	06e82f63          	p.beqimm	a6,14,1c00f8ee <pos_libc_prf+0x197e>
1c00f874:	078e                	slli	a5,a5,0x3
1c00f876:	002e9513          	slli	a0,t4,0x2
1c00f87a:	01ef5293          	srli	t0,t5,0x1e
1c00f87e:	01e786b3          	add	a3,a5,t5
1c00f882:	00a2e533          	or	a0,t0,a0
1c00f886:	9576                	add	a0,a0,t4
1c00f888:	00f6b7b3          	sltu	a5,a3,a5
1c00f88c:	97aa                	add	a5,a5,a0
1c00f88e:	00179e93          	slli	t4,a5,0x1
1c00f892:	01f6d513          	srli	a0,a3,0x1f
1c00f896:	01d56eb3          	or	t4,a0,t4
1c00f89a:	01ced793          	srli	a5,t4,0x1c
1c00f89e:	03078793          	addi	a5,a5,48
1c00f8a2:	00f58723          	sb	a5,14(a1)
1c00f8a6:	ff130493          	addi	s1,t1,-15
1c00f8aa:	00f58513          	addi	a0,a1,15
1c00f8ae:	00169793          	slli	a5,a3,0x1
1c00f8b2:	01cefe33          	and	t3,t4,t3
1c00f8b6:	02905c63          	blez	s1,1c00f8ee <pos_libc_prf+0x197e>
1c00f8ba:	46c1                	li	a3,16
1c00f8bc:	02d81963          	bne	a6,a3,1c00f8ee <pos_libc_prf+0x197e>
1c00f8c0:	00279513          	slli	a0,a5,0x2
1c00f8c4:	01e7d813          	srli	a6,a5,0x1e
1c00f8c8:	002e1693          	slli	a3,t3,0x2
1c00f8cc:	97aa                	add	a5,a5,a0
1c00f8ce:	00d866b3          	or	a3,a6,a3
1c00f8d2:	00a7b7b3          	sltu	a5,a5,a0
1c00f8d6:	9e36                	add	t3,t3,a3
1c00f8d8:	97f2                	add	a5,a5,t3
1c00f8da:	0786                	slli	a5,a5,0x1
1c00f8dc:	83f1                	srli	a5,a5,0x1c
1c00f8de:	03078793          	addi	a5,a5,48
1c00f8e2:	01058513          	addi	a0,a1,16
1c00f8e6:	00f587a3          	sb	a5,15(a1)
1c00f8ea:	ff030493          	addi	s1,t1,-16
1c00f8ee:	47e2                	lw	a5,24(sp)
1c00f8f0:	014785b3          	add	a1,a5,s4
1c00f8f4:	9c0f9b63          	bnez	t6,1c00eaca <pos_libc_prf+0xb5a>
1c00f8f8:	95a6                	add	a1,a1,s1
1c00f8fa:	8ca6                	mv	s9,s1
1c00f8fc:	9faff06f          	j	1c00eaf6 <pos_libc_prf+0xb86>
1c00f900:	02d00793          	li	a5,45
1c00f904:	411008b3          	neg	a7,a7
1c00f908:	00f500a3          	sb	a5,1(a0)
1c00f90c:	db4ff06f          	j	1c00eec0 <pos_libc_prf+0xf50>
1c00f910:	41fad793          	srai	a5,s5,0x1f
1c00f914:	0156a023          	sw	s5,0(a3)
1c00f918:	c2dc                	sw	a5,4(a3)
1c00f91a:	e94fe06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00f91e:	4a62                	lw	s4,24(sp)
1c00f920:	a039                	j	1c00f92e <pos_libc_prf+0x19be>
1c00f922:	9982                	jalr	s3
1c00f924:	1a7d                	addi	s4,s4,-1
1c00f926:	01f53463          	p.bneimm	a0,-1,1c00f92e <pos_libc_prf+0x19be>
1c00f92a:	fbcfe06f          	j	1c00e0e6 <pos_libc_prf+0x176>
1c00f92e:	85de                	mv	a1,s7
1c00f930:	03000513          	li	a0,48
1c00f934:	ff4047e3          	bgtz	s4,1c00f922 <pos_libc_prf+0x19b2>
1c00f938:	4762                	lw	a4,24(sp)
1c00f93a:	40e90933          	sub	s2,s2,a4
1c00f93e:	939fe06f          	j	1c00e276 <pos_libc_prf+0x306>
1c00f942:	4741                	li	a4,16
1c00f944:	04e4cf33          	p.min	t5,s1,a4
1c00f948:	1f7d                	addi	t5,t5,-1
1c00f94a:	84b6                	mv	s1,a3
1c00f94c:	4f81                	li	t6,0
1c00f94e:	c67fe06f          	j	1c00e5b4 <pos_libc_prf+0x644>
1c00f952:	104c                	addi	a1,sp,36
1c00f954:	4901                	li	s2,0
1c00f956:	86ae                	mv	a3,a1
1c00f958:	ed8ff06f          	j	1c00f030 <pos_libc_prf+0x10c0>
1c00f95c:	0c904463          	bgtz	s1,1c00fa24 <pos_libc_prf+0x1ab4>
1c00f960:	4881                	li	a7,0
1c00f962:	cc02                	sw	zero,24(sp)
1c00f964:	b769                	j	1c00f8ee <pos_libc_prf+0x197e>
1c00f966:	4712                	lw	a4,4(sp)
1c00f968:	4f81                	li	t6,0
1c00f96a:	e319                	bnez	a4,1c00f970 <pos_libc_prf+0x1a00>
1c00f96c:	c3dfe06f          	j	1c00e5a8 <pos_libc_prf+0x638>
1c00f970:	4f01                	li	t5,0
1c00f972:	4f81                	li	t6,0
1c00f974:	c41fe06f          	j	1c00e5b4 <pos_libc_prf+0x644>
1c00f978:	020102a3          	sb	zero,37(sp)
1c00f97c:	c202                	sw	zero,4(sp)
1c00f97e:	4905                	li	s2,1
1c00f980:	875fe06f          	j	1c00e1f4 <pos_libc_prf+0x284>
1c00f984:	06600d93          	li	s11,102
1c00f988:	d1cff06f          	j	1c00eea4 <pos_libc_prf+0xf34>
1c00f98c:	03000593          	li	a1,48
1c00f990:	4712                	lw	a4,4(sp)
1c00f992:	00b30023          	sb	a1,0(t1)
1c00f996:	e335                	bnez	a4,1c00f9fa <pos_libc_prf+0x1a8a>
1c00f998:	06905b63          	blez	s1,1c00fa0e <pos_libc_prf+0x1a9e>
1c00f99c:	02e00593          	li	a1,46
1c00f9a0:	00b300a3          	sb	a1,1(t1)
1c00f9a4:	00230513          	addi	a0,t1,2
1c00f9a8:	4841                	li	a6,16
1c00f9aa:	08088363          	beqz	a7,1c00fa30 <pos_libc_prf+0x1ac0>
1c00f9ae:	41100733          	neg	a4,a7
1c00f9b2:	04974733          	p.min	a4,a4,s1
1c00f9b6:	cc3a                	sw	a4,24(sp)
1c00f9b8:	40e48333          	sub	t1,s1,a4
1c00f9bc:	85aa                	mv	a1,a0
1c00f9be:	4a01                	li	s4,0
1c00f9c0:	4841                	li	a6,16
1c00f9c2:	ac6044e3          	bgtz	t1,1c00f48a <pos_libc_prf+0x151a>
1c00f9c6:	a0d5                	j	1c00faaa <pos_libc_prf+0x1b3a>
1c00f9c8:	4a72                	lw	s4,28(sp)
1c00f9ca:	de4fe06f          	j	1c00dfae <pos_libc_prf+0x3e>
1c00f9ce:	6799                	lui	a5,0x6
1c00f9d0:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c00f9d4:	00f31023          	sh	a5,0(t1)
1c00f9d8:	06e00793          	li	a5,110
1c00f9dc:	00f30123          	sb	a5,2(t1)
1c00f9e0:	c38ff06f          	j	1c00ee18 <pos_libc_prf+0xea8>
1c00f9e4:	679d                	lui	a5,0x7
1c00f9e6:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c00f9ea:	00f31023          	sh	a5,0(t1)
1c00f9ee:	06600793          	li	a5,102
1c00f9f2:	00f30123          	sb	a5,2(t1)
1c00f9f6:	c22ff06f          	j	1c00ee18 <pos_libc_prf+0xea8>
1c00f9fa:	02e00593          	li	a1,46
1c00f9fe:	00b300a3          	sb	a1,1(t1)
1c00fa02:	00230513          	addi	a0,t1,2
1c00fa06:	00088763          	beqz	a7,1c00fa14 <pos_libc_prf+0x1aa4>
1c00fa0a:	fa9042e3          	bgtz	s1,1c00f9ae <pos_libc_prf+0x1a3e>
1c00fa0e:	4a01                	li	s4,0
1c00fa10:	cc02                	sw	zero,24(sp)
1c00fa12:	bdf1                	j	1c00f8ee <pos_libc_prf+0x197e>
1c00fa14:	fe905de3          	blez	s1,1c00fa0e <pos_libc_prf+0x1a9e>
1c00fa18:	85aa                	mv	a1,a0
1c00fa1a:	4a01                	li	s4,0
1c00fa1c:	cc02                	sw	zero,24(sp)
1c00fa1e:	8326                	mv	t1,s1
1c00fa20:	4841                	li	a6,16
1c00fa22:	b4b5                	j	1c00f48e <pos_libc_prf+0x151e>
1c00fa24:	02e00593          	li	a1,46
1c00fa28:	00b50023          	sb	a1,0(a0)
1c00fa2c:	88d2                	mv	a7,s4
1c00fa2e:	0505                	addi	a0,a0,1
1c00fa30:	8a46                	mv	s4,a7
1c00fa32:	85aa                	mv	a1,a0
1c00fa34:	8326                	mv	t1,s1
1c00fa36:	cc02                	sw	zero,24(sp)
1c00fa38:	4881                	li	a7,0
1c00fa3a:	bc81                	j	1c00f48a <pos_libc_prf+0x151a>
1c00fa3c:	4a01                	li	s4,0
1c00fa3e:	483d                	li	a6,15
1c00fa40:	b43d                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa42:	00e30513          	addi	a0,t1,14
1c00fa46:	4809                	li	a6,2
1c00fa48:	b41d                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa4a:	00c30513          	addi	a0,t1,12
1c00fa4e:	b405                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa50:	c0200813          	li	a6,-1022
1c00fa54:	a62ff06f          	j	1c00ecb6 <pos_libc_prf+0xd46>
1c00fa58:	00330513          	addi	a0,t1,3
1c00fa5c:	4835                	li	a6,13
1c00fa5e:	bc01                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa60:	00230513          	addi	a0,t1,2
1c00fa64:	4a01                	li	s4,0
1c00fa66:	4839                	li	a6,14
1c00fa68:	b419                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa6a:	00b30513          	addi	a0,t1,11
1c00fa6e:	4815                	li	a6,5
1c00fa70:	bafd                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa72:	00a30513          	addi	a0,t1,10
1c00fa76:	4819                	li	a6,6
1c00fa78:	badd                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa7a:	00930513          	addi	a0,t1,9
1c00fa7e:	481d                	li	a6,7
1c00fa80:	b2fd                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa82:	00830513          	addi	a0,t1,8
1c00fa86:	4821                	li	a6,8
1c00fa88:	b2dd                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa8a:	00730513          	addi	a0,t1,7
1c00fa8e:	4825                	li	a6,9
1c00fa90:	baf9                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa92:	00630513          	addi	a0,t1,6
1c00fa96:	4829                	li	a6,10
1c00fa98:	bad9                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00fa9a:	00530513          	addi	a0,t1,5
1c00fa9e:	482d                	li	a6,11
1c00faa0:	b2f9                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00faa2:	00430513          	addi	a0,t1,4
1c00faa6:	4831                	li	a6,12
1c00faa8:	b2d9                	j	1c00f46e <pos_libc_prf+0x14fe>
1c00faaa:	849a                	mv	s1,t1
1c00faac:	852e                	mv	a0,a1
1c00faae:	b581                	j	1c00f8ee <pos_libc_prf+0x197e>
1c00fab0:	41990933          	sub	s2,s2,s9
1c00fab4:	8f3fe06f          	j	1c00e3a6 <pos_libc_prf+0x436>
1c00fab8:	00d78513          	addi	a0,a5,13
1c00fabc:	804ff06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fac0:	00c78513          	addi	a0,a5,12
1c00fac4:	ffdfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fac8:	00b78513          	addi	a0,a5,11
1c00facc:	ff5fe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fad0:	00978513          	addi	a0,a5,9
1c00fad4:	fedfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fad8:	00878513          	addi	a0,a5,8
1c00fadc:	fe5fe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fae0:	00778513          	addi	a0,a5,7
1c00fae4:	fddfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fae8:	00678513          	addi	a0,a5,6
1c00faec:	fd5fe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00faf0:	00578513          	addi	a0,a5,5
1c00faf4:	fcdfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00faf8:	00478513          	addi	a0,a5,4
1c00fafc:	fc5fe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fb00:	00378513          	addi	a0,a5,3
1c00fb04:	fbdfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fb08:	00278513          	addi	a0,a5,2
1c00fb0c:	fb5fe06f          	j	1c00eac0 <pos_libc_prf+0xb50>
1c00fb10:	00178513          	addi	a0,a5,1
1c00fb14:	4c81                	li	s9,0
1c00fb16:	fabfe06f          	j	1c00eac0 <pos_libc_prf+0xb50>

1c00fb1a <pos_init_start>:
1c00fb1a:	1141                	addi	sp,sp,-16
1c00fb1c:	c422                	sw	s0,8(sp)
1c00fb1e:	1c001437          	lui	s0,0x1c001
1c00fb22:	c606                	sw	ra,12(sp)
1c00fb24:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c00fb28:	2245                	jal	1c00fcc8 <pos_irq_init>
1c00fb2a:	b66fe0ef          	jal	ra,1c00de90 <pos_soc_init>
1c00fb2e:	22f1                	jal	1c00fcfa <pos_soc_event_init>
1c00fb30:	20ed                	jal	1c00fc1a <pos_allocs_init>
1c00fb32:	208d                	jal	1c00fb94 <pos_sched_init>
1c00fb34:	405c                	lw	a5,4(s0)
1c00fb36:	c791                	beqz	a5,1c00fb42 <pos_init_start+0x28>
1c00fb38:	0421                	addi	s0,s0,8
1c00fb3a:	9782                	jalr	a5
1c00fb3c:	0044278b          	p.lw	a5,4(s0!)
1c00fb40:	ffed                	bnez	a5,1c00fb3a <pos_init_start+0x20>
1c00fb42:	bf8fe0ef          	jal	ra,1c00df3a <pos_io_start>
1c00fb46:	300467f3          	csrrsi	a5,mstatus,8
1c00fb4a:	40b2                	lw	ra,12(sp)
1c00fb4c:	4422                	lw	s0,8(sp)
1c00fb4e:	0141                	addi	sp,sp,16
1c00fb50:	8082                	ret

1c00fb52 <pos_init_stop>:
1c00fb52:	1141                	addi	sp,sp,-16
1c00fb54:	c422                	sw	s0,8(sp)
1c00fb56:	1c001437          	lui	s0,0x1c001
1c00fb5a:	c606                	sw	ra,12(sp)
1c00fb5c:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c00fb60:	bdefe0ef          	jal	ra,1c00df3e <pos_io_stop>
1c00fb64:	405c                	lw	a5,4(s0)
1c00fb66:	c791                	beqz	a5,1c00fb72 <pos_init_stop+0x20>
1c00fb68:	0421                	addi	s0,s0,8
1c00fb6a:	9782                	jalr	a5
1c00fb6c:	0044278b          	p.lw	a5,4(s0!)
1c00fb70:	ffed                	bnez	a5,1c00fb6a <pos_init_stop+0x18>
1c00fb72:	40b2                	lw	ra,12(sp)
1c00fb74:	4422                	lw	s0,8(sp)
1c00fb76:	0141                	addi	sp,sp,16
1c00fb78:	8082                	ret

1c00fb7a <pos_cbsys_add>:
1c00fb7a:	00259793          	slli	a5,a1,0x2
1c00fb7e:	1c0015b7          	lui	a1,0x1c001
1c00fb82:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c00fb86:	95be                	add	a1,a1,a5
1c00fb88:	419c                	lw	a5,0(a1)
1c00fb8a:	c110                	sw	a2,0(a0)
1c00fb8c:	c154                	sw	a3,4(a0)
1c00fb8e:	c51c                	sw	a5,8(a0)
1c00fb90:	c188                	sw	a0,0(a1)
1c00fb92:	8082                	ret

1c00fb94 <pos_sched_init>:
1c00fb94:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c00fb98:	8082                	ret

1c00fb9a <pos_alloc_init>:
1c00fb9a:	00758793          	addi	a5,a1,7
1c00fb9e:	c407b7b3          	p.bclr	a5,a5,2,0
1c00fba2:	40b785b3          	sub	a1,a5,a1
1c00fba6:	c11c                	sw	a5,0(a0)
1c00fba8:	8e0d                	sub	a2,a2,a1
1c00fbaa:	00c05763          	blez	a2,1c00fbb8 <pos_alloc_init+0x1e>
1c00fbae:	c4063633          	p.bclr	a2,a2,2,0
1c00fbb2:	c390                	sw	a2,0(a5)
1c00fbb4:	0007a223          	sw	zero,4(a5)
1c00fbb8:	8082                	ret

1c00fbba <pos_alloc>:
1c00fbba:	4110                	lw	a2,0(a0)
1c00fbbc:	059d                	addi	a1,a1,7
1c00fbbe:	c405b5b3          	p.bclr	a1,a1,2,0
1c00fbc2:	ca31                	beqz	a2,1c00fc16 <pos_alloc+0x5c>
1c00fbc4:	4218                	lw	a4,0(a2)
1c00fbc6:	425c                	lw	a5,4(a2)
1c00fbc8:	02b75963          	ble	a1,a4,1c00fbfa <pos_alloc+0x40>
1c00fbcc:	cb81                	beqz	a5,1c00fbdc <pos_alloc+0x22>
1c00fbce:	4398                	lw	a4,0(a5)
1c00fbd0:	43d4                	lw	a3,4(a5)
1c00fbd2:	00b75763          	ble	a1,a4,1c00fbe0 <pos_alloc+0x26>
1c00fbd6:	863e                	mv	a2,a5
1c00fbd8:	87b6                	mv	a5,a3
1c00fbda:	fbf5                	bnez	a5,1c00fbce <pos_alloc+0x14>
1c00fbdc:	853e                	mv	a0,a5
1c00fbde:	8082                	ret
1c00fbe0:	00b70a63          	beq	a4,a1,1c00fbf4 <pos_alloc+0x3a>
1c00fbe4:	00b78533          	add	a0,a5,a1
1c00fbe8:	8f0d                	sub	a4,a4,a1
1c00fbea:	c118                	sw	a4,0(a0)
1c00fbec:	c154                	sw	a3,4(a0)
1c00fbee:	c248                	sw	a0,4(a2)
1c00fbf0:	853e                	mv	a0,a5
1c00fbf2:	8082                	ret
1c00fbf4:	c254                	sw	a3,4(a2)
1c00fbf6:	853e                	mv	a0,a5
1c00fbf8:	8082                	ret
1c00fbfa:	00e58b63          	beq	a1,a4,1c00fc10 <pos_alloc+0x56>
1c00fbfe:	00b606b3          	add	a3,a2,a1
1c00fc02:	8f0d                	sub	a4,a4,a1
1c00fc04:	c2dc                	sw	a5,4(a3)
1c00fc06:	c298                	sw	a4,0(a3)
1c00fc08:	87b2                	mv	a5,a2
1c00fc0a:	c114                	sw	a3,0(a0)
1c00fc0c:	853e                	mv	a0,a5
1c00fc0e:	8082                	ret
1c00fc10:	c11c                	sw	a5,0(a0)
1c00fc12:	87b2                	mv	a5,a2
1c00fc14:	b7e1                	j	1c00fbdc <pos_alloc+0x22>
1c00fc16:	4781                	li	a5,0
1c00fc18:	b7d1                	j	1c00fbdc <pos_alloc+0x22>

1c00fc1a <pos_allocs_init>:
1c00fc1a:	1141                	addi	sp,sp,-16
1c00fc1c:	1c00d5b7          	lui	a1,0x1c00d
1c00fc20:	c606                	sw	ra,12(sp)
1c00fc22:	c422                	sw	s0,8(sp)
1c00fc24:	26c58793          	addi	a5,a1,620 # 1c00d26c <__l2_priv0_end>
1c00fc28:	1c008637          	lui	a2,0x1c008
1c00fc2c:	04c7c363          	blt	a5,a2,1c00fc72 <pos_allocs_init+0x58>
1c00fc30:	4581                	li	a1,0
1c00fc32:	4601                	li	a2,0
1c00fc34:	1c00d437          	lui	s0,0x1c00d
1c00fc38:	24440513          	addi	a0,s0,580 # 1c00d244 <pos_alloc_l2>
1c00fc3c:	3fb9                	jal	1c00fb9a <pos_alloc_init>
1c00fc3e:	1c0105b7          	lui	a1,0x1c010
1c00fc42:	20458793          	addi	a5,a1,516 # 1c010204 <__l2_shared_end>
1c00fc46:	1c080637          	lui	a2,0x1c080
1c00fc4a:	1c00d537          	lui	a0,0x1c00d
1c00fc4e:	8e1d                	sub	a2,a2,a5
1c00fc50:	20458593          	addi	a1,a1,516
1c00fc54:	24850513          	addi	a0,a0,584 # 1c00d248 <pos_alloc_l2+0x4>
1c00fc58:	3789                	jal	1c00fb9a <pos_alloc_init>
1c00fc5a:	24440513          	addi	a0,s0,580
1c00fc5e:	4591                	li	a1,4
1c00fc60:	3fa9                	jal	1c00fbba <pos_alloc>
1c00fc62:	40b2                	lw	ra,12(sp)
1c00fc64:	4422                	lw	s0,8(sp)
1c00fc66:	1c00d7b7          	lui	a5,0x1c00d
1c00fc6a:	24a7a023          	sw	a0,576(a5) # 1c00d240 <pos_alloc_l1>
1c00fc6e:	0141                	addi	sp,sp,16
1c00fc70:	8082                	ret
1c00fc72:	8e1d                	sub	a2,a2,a5
1c00fc74:	26c58593          	addi	a1,a1,620
1c00fc78:	bf75                	j	1c00fc34 <pos_allocs_init+0x1a>

1c00fc7a <pos_irq_set_handler>:
1c00fc7a:	f14027f3          	csrr	a5,mhartid
1c00fc7e:	477d                	li	a4,31
1c00fc80:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fc84:	02e78d63          	beq	a5,a4,1c00fcbe <pos_irq_set_handler+0x44>
1c00fc88:	002007b7          	lui	a5,0x200
1c00fc8c:	43b8                	lw	a4,64(a5)
1c00fc8e:	050a                	slli	a0,a0,0x2
1c00fc90:	8d89                	sub	a1,a1,a0
1c00fc92:	8d99                	sub	a1,a1,a4
1c00fc94:	c14586b3          	p.extract	a3,a1,0,20
1c00fc98:	06f00793          	li	a5,111
1c00fc9c:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00fca0:	d21586b3          	p.extract	a3,a1,9,1
1c00fca4:	d356a7b3          	p.insert	a5,a3,9,21
1c00fca8:	c0b586b3          	p.extract	a3,a1,0,11
1c00fcac:	c146a7b3          	p.insert	a5,a3,0,20
1c00fcb0:	cec585b3          	p.extract	a1,a1,7,12
1c00fcb4:	cec5a7b3          	p.insert	a5,a1,7,12
1c00fcb8:	00f56723          	p.sw	a5,a4(a0)
1c00fcbc:	8082                	ret
1c00fcbe:	30502773          	csrr	a4,mtvec
1c00fcc2:	c0073733          	p.bclr	a4,a4,0,0
1c00fcc6:	b7e1                	j	1c00fc8e <pos_irq_set_handler+0x14>

1c00fcc8 <pos_irq_init>:
1c00fcc8:	f1402773          	csrr	a4,mhartid
1c00fccc:	1a10a7b7          	lui	a5,0x1a10a
1c00fcd0:	56fd                	li	a3,-1
1c00fcd2:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00fcd6:	ca571733          	p.extractu	a4,a4,5,5
1c00fcda:	1c00d7b7          	lui	a5,0x1c00d
1c00fcde:	46fd                	li	a3,31
1c00fce0:	30078793          	addi	a5,a5,768 # 1c00d300 <__irq_vector_base>
1c00fce4:	00d70663          	beq	a4,a3,1c00fcf0 <pos_irq_init+0x28>
1c00fce8:	00200737          	lui	a4,0x200
1c00fcec:	c33c                	sw	a5,64(a4)
1c00fcee:	8082                	ret
1c00fcf0:	c007c7b3          	p.bset	a5,a5,0,0
1c00fcf4:	30579073          	csrw	mtvec,a5
1c00fcf8:	8082                	ret

1c00fcfa <pos_soc_event_init>:
1c00fcfa:	1a1067b7          	lui	a5,0x1a106
1c00fcfe:	1141                	addi	sp,sp,-16
1c00fd00:	c606                	sw	ra,12(sp)
1c00fd02:	577d                	li	a4,-1
1c00fd04:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c00fd08:	c298                	sw	a4,0(a3)
1c00fd0a:	00878693          	addi	a3,a5,8
1c00fd0e:	c298                	sw	a4,0(a3)
1c00fd10:	00c78693          	addi	a3,a5,12
1c00fd14:	c298                	sw	a4,0(a3)
1c00fd16:	01078693          	addi	a3,a5,16
1c00fd1a:	c298                	sw	a4,0(a3)
1c00fd1c:	01478693          	addi	a3,a5,20
1c00fd20:	c298                	sw	a4,0(a3)
1c00fd22:	01878693          	addi	a3,a5,24
1c00fd26:	c298                	sw	a4,0(a3)
1c00fd28:	01c78693          	addi	a3,a5,28
1c00fd2c:	c298                	sw	a4,0(a3)
1c00fd2e:	02078793          	addi	a5,a5,32
1c00fd32:	1c0105b7          	lui	a1,0x1c010
1c00fd36:	c398                	sw	a4,0(a5)
1c00fd38:	ff258593          	addi	a1,a1,-14 # 1c00fff2 <pos_soc_event_handler_asm>
1c00fd3c:	4569                	li	a0,26
1c00fd3e:	3f35                	jal	1c00fc7a <pos_irq_set_handler>
1c00fd40:	40b2                	lw	ra,12(sp)
1c00fd42:	1a10a7b7          	lui	a5,0x1a10a
1c00fd46:	04000737          	lui	a4,0x4000
1c00fd4a:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c00fd4e:	0141                	addi	sp,sp,16
1c00fd50:	8082                	ret

1c00fd52 <pos_time_poweroff>:
1c00fd52:	1a10b7b7          	lui	a5,0x1a10b
1c00fd56:	0791                	addi	a5,a5,4
1c00fd58:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd5c:	1c001737          	lui	a4,0x1c001
1c00fd60:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c00fd64:	4501                	li	a0,0
1c00fd66:	8082                	ret

1c00fd68 <pos_time_poweron>:
1c00fd68:	1c0017b7          	lui	a5,0x1c001
1c00fd6c:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c00fd70:	1a10b7b7          	lui	a5,0x1a10b
1c00fd74:	0791                	addi	a5,a5,4
1c00fd76:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd7a:	4501                	li	a0,0
1c00fd7c:	8082                	ret

1c00fd7e <pos_time_timer_handler>:
1c00fd7e:	1c0018b7          	lui	a7,0x1c001
1c00fd82:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c00fd86:	0048a783          	lw	a5,4(a7)
1c00fd8a:	1a10b637          	lui	a2,0x1a10b
1c00fd8e:	0611                	addi	a2,a2,4
1c00fd90:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00fd94:	cba9                	beqz	a5,1c00fde6 <pos_time_timer_handler+0x68>
1c00fd96:	5fd8                	lw	a4,60(a5)
1c00fd98:	800005b7          	lui	a1,0x80000
1c00fd9c:	40e60733          	sub	a4,a2,a4
1c00fda0:	ffe5c593          	xori	a1,a1,-2
1c00fda4:	0ae5e763          	bltu	a1,a4,1c00fe52 <pos_time_timer_handler+0xd4>
1c00fda8:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c00fdac:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c00fdb0:	4398                	lw	a4,0(a5)
1c00fdb2:	0007a023          	sw	zero,0(a5)
1c00fdb6:	4301                	li	t1,0
1c00fdb8:	02080063          	beqz	a6,1c00fdd8 <pos_time_timer_handler+0x5a>
1c00fdbc:	c11c                	sw	a5,0(a0)
1c00fdbe:	c305                	beqz	a4,1c00fdde <pos_time_timer_handler+0x60>
1c00fdc0:	5f54                	lw	a3,60(a4)
1c00fdc2:	853e                	mv	a0,a5
1c00fdc4:	40d606b3          	sub	a3,a2,a3
1c00fdc8:	04d5e763          	bltu	a1,a3,1c00fe16 <pos_time_timer_handler+0x98>
1c00fdcc:	87ba                	mv	a5,a4
1c00fdce:	4398                	lw	a4,0(a5)
1c00fdd0:	0007a023          	sw	zero,0(a5)
1c00fdd4:	fe0814e3          	bnez	a6,1c00fdbc <pos_time_timer_handler+0x3e>
1c00fdd8:	883e                	mv	a6,a5
1c00fdda:	4305                	li	t1,1
1c00fddc:	f375                	bnez	a4,1c00fdc0 <pos_time_timer_handler+0x42>
1c00fdde:	06031c63          	bnez	t1,1c00fe56 <pos_time_timer_handler+0xd8>
1c00fde2:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fde6:	1a10b7b7          	lui	a5,0x1a10b
1c00fdea:	08100713          	li	a4,129
1c00fdee:	0791                	addi	a5,a5,4
1c00fdf0:	0008a223          	sw	zero,4(a7)
1c00fdf4:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fdf8:	f14027f3          	csrr	a5,mhartid
1c00fdfc:	477d                	li	a4,31
1c00fdfe:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fe02:	04e78063          	beq	a5,a4,1c00fe42 <pos_time_timer_handler+0xc4>
1c00fe06:	6785                	lui	a5,0x1
1c00fe08:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe0c:	00204737          	lui	a4,0x204
1c00fe10:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c00fe14:	8082                	ret
1c00fe16:	04031363          	bnez	t1,1c00fe5c <pos_time_timer_handler+0xde>
1c00fe1a:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fe1e:	1a10b7b7          	lui	a5,0x1a10b
1c00fe22:	0791                	addi	a5,a5,4
1c00fe24:	00e8a223          	sw	a4,4(a7)
1c00fe28:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fe2c:	5f58                	lw	a4,60(a4)
1c00fe2e:	40c70633          	sub	a2,a4,a2
1c00fe32:	9636                	add	a2,a2,a3
1c00fe34:	00c7a823          	sw	a2,16(a5)
1c00fe38:	08500713          	li	a4,133
1c00fe3c:	00e7a023          	sw	a4,0(a5)
1c00fe40:	8082                	ret
1c00fe42:	6785                	lui	a5,0x1
1c00fe44:	1a10a737          	lui	a4,0x1a10a
1c00fe48:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe4c:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c00fe50:	8082                	ret
1c00fe52:	873e                	mv	a4,a5
1c00fe54:	b7e9                	j	1c00fe1e <pos_time_timer_handler+0xa0>
1c00fe56:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe5a:	b761                	j	1c00fde2 <pos_time_timer_handler+0x64>
1c00fe5c:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe60:	bf6d                	j	1c00fe1a <pos_time_timer_handler+0x9c>

1c00fe62 <pos_time_init>:
1c00fe62:	1141                	addi	sp,sp,-16
1c00fe64:	c422                	sw	s0,8(sp)
1c00fe66:	1a10b7b7          	lui	a5,0x1a10b
1c00fe6a:	1c001437          	lui	s0,0x1c001
1c00fe6e:	c606                	sw	ra,12(sp)
1c00fe70:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c00fe74:	08300713          	li	a4,131
1c00fe78:	0791                	addi	a5,a5,4
1c00fe7a:	00042223          	sw	zero,4(s0)
1c00fe7e:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fe82:	1c0105b7          	lui	a1,0x1c010
1c00fe86:	fce58593          	addi	a1,a1,-50 # 1c00ffce <pos_time_timer_handler_asm>
1c00fe8a:	452d                	li	a0,11
1c00fe8c:	33fd                	jal	1c00fc7a <pos_irq_set_handler>
1c00fe8e:	6785                	lui	a5,0x1
1c00fe90:	1a10a737          	lui	a4,0x1a10a
1c00fe94:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe98:	1c010637          	lui	a2,0x1c010
1c00fe9c:	00840513          	addi	a0,s0,8
1c00fea0:	4681                	li	a3,0
1c00fea2:	d5260613          	addi	a2,a2,-686 # 1c00fd52 <pos_time_poweroff>
1c00fea6:	4589                	li	a1,2
1c00fea8:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c00feac:	31f9                	jal	1c00fb7a <pos_cbsys_add>
1c00feae:	01840513          	addi	a0,s0,24
1c00feb2:	4422                	lw	s0,8(sp)
1c00feb4:	40b2                	lw	ra,12(sp)
1c00feb6:	1c010637          	lui	a2,0x1c010
1c00feba:	4681                	li	a3,0
1c00febc:	d6860613          	addi	a2,a2,-664 # 1c00fd68 <pos_time_poweron>
1c00fec0:	458d                	li	a1,3
1c00fec2:	0141                	addi	sp,sp,16
1c00fec4:	b95d                	j	1c00fb7a <pos_cbsys_add>

1c00fec6 <pos_uart_init>:
1c00fec6:	1c0107b7          	lui	a5,0x1c010
1c00feca:	1a07aa23          	sw	zero,436(a5) # 1c0101b4 <__cluster_text_end>
1c00fece:	8082                	ret

1c00fed0 <pos_init_entry>:
1c00fed0:	7a101073          	csrw	pcmr,zero
1c00fed4:	f1402573          	csrr	a0,mhartid
1c00fed8:	01f57593          	andi	a1,a0,31
1c00fedc:	8115                	srli	a0,a0,0x5
1c00fede:	467d                	li	a2,31
1c00fee0:	00c50463          	beq	a0,a2,1c00fee8 <pos_init_entry+0x18>
1c00fee4:	1800006f          	j	1c010064 <__l2_priv1_end>
1c00fee8:	ffff1297          	auipc	t0,0xffff1
1c00feec:	35828293          	addi	t0,t0,856 # 1c001240 <_edata>
1c00fef0:	ffffd317          	auipc	t1,0xffffd
1c00fef4:	37c30313          	addi	t1,t1,892 # 1c00d26c <__l2_priv0_end>
1c00fef8:	0002a023          	sw	zero,0(t0)
1c00fefc:	0291                	addi	t0,t0,4
1c00fefe:	fe62ede3          	bltu	t0,t1,1c00fef8 <pos_init_entry+0x28>
1c00ff02:	ffff1117          	auipc	sp,0xffff1
1c00ff06:	2fe10113          	addi	sp,sp,766 # 1c001200 <stack>
1c00ff0a:	00000297          	auipc	t0,0x0
1c00ff0e:	c1028293          	addi	t0,t0,-1008 # 1c00fb1a <pos_init_start>
1c00ff12:	000280e7          	jalr	t0
1c00ff16:	00000513          	li	a0,0
1c00ff1a:	00000593          	li	a1,0
1c00ff1e:	ffffe397          	auipc	t2,0xffffe
1c00ff22:	d4638393          	addi	t2,t2,-698 # 1c00dc64 <main>
1c00ff26:	000380e7          	jalr	t2
1c00ff2a:	842a                	mv	s0,a0
1c00ff2c:	8522                	mv	a0,s0
1c00ff2e:	ffffe297          	auipc	t0,0xffffe
1c00ff32:	fe028293          	addi	t0,t0,-32 # 1c00df0e <exit>
1c00ff36:	000280e7          	jalr	t0

1c00ff3a <pos_irq_call_external_c_function>:
1c00ff3a:	7119                	addi	sp,sp,-128
1c00ff3c:	c006                	sw	ra,0(sp)
1c00ff3e:	c20e                	sw	gp,4(sp)
1c00ff40:	c412                	sw	tp,8(sp)
1c00ff42:	c616                	sw	t0,12(sp)
1c00ff44:	c81a                	sw	t1,16(sp)
1c00ff46:	ca1e                	sw	t2,20(sp)
1c00ff48:	d236                	sw	a3,36(sp)
1c00ff4a:	d43a                	sw	a4,40(sp)
1c00ff4c:	d63e                	sw	a5,44(sp)
1c00ff4e:	d842                	sw	a6,48(sp)
1c00ff50:	da46                	sw	a7,52(sp)
1c00ff52:	dc72                	sw	t3,56(sp)
1c00ff54:	de76                	sw	t4,60(sp)
1c00ff56:	c0fa                	sw	t5,64(sp)
1c00ff58:	c6fe                	sw	t6,76(sp)
1c00ff5a:	000600e7          	jalr	a2
1c00ff5e:	4082                	lw	ra,0(sp)
1c00ff60:	4192                	lw	gp,4(sp)
1c00ff62:	4222                	lw	tp,8(sp)
1c00ff64:	42b2                	lw	t0,12(sp)
1c00ff66:	4342                	lw	t1,16(sp)
1c00ff68:	43d2                	lw	t2,20(sp)
1c00ff6a:	5692                	lw	a3,36(sp)
1c00ff6c:	5722                	lw	a4,40(sp)
1c00ff6e:	57b2                	lw	a5,44(sp)
1c00ff70:	5842                	lw	a6,48(sp)
1c00ff72:	58d2                	lw	a7,52(sp)
1c00ff74:	5e62                	lw	t3,56(sp)
1c00ff76:	5ef2                	lw	t4,60(sp)
1c00ff78:	4f06                	lw	t5,64(sp)
1c00ff7a:	4fb6                	lw	t6,76(sp)
1c00ff7c:	6109                	addi	sp,sp,128
1c00ff7e:	8482                	jr	s1

1c00ff80 <pos_irq_call_external_c_function_full>:
1c00ff80:	7119                	addi	sp,sp,-128
1c00ff82:	c006                	sw	ra,0(sp)
1c00ff84:	c20e                	sw	gp,4(sp)
1c00ff86:	c412                	sw	tp,8(sp)
1c00ff88:	c616                	sw	t0,12(sp)
1c00ff8a:	c81a                	sw	t1,16(sp)
1c00ff8c:	ca1e                	sw	t2,20(sp)
1c00ff8e:	cc2a                	sw	a0,24(sp)
1c00ff90:	ce2e                	sw	a1,28(sp)
1c00ff92:	d236                	sw	a3,36(sp)
1c00ff94:	d43a                	sw	a4,40(sp)
1c00ff96:	d63e                	sw	a5,44(sp)
1c00ff98:	d842                	sw	a6,48(sp)
1c00ff9a:	da46                	sw	a7,52(sp)
1c00ff9c:	dc72                	sw	t3,56(sp)
1c00ff9e:	de76                	sw	t4,60(sp)
1c00ffa0:	c0fa                	sw	t5,64(sp)
1c00ffa2:	c6fe                	sw	t6,76(sp)
1c00ffa4:	000600e7          	jalr	a2
1c00ffa8:	4082                	lw	ra,0(sp)
1c00ffaa:	4192                	lw	gp,4(sp)
1c00ffac:	4222                	lw	tp,8(sp)
1c00ffae:	42b2                	lw	t0,12(sp)
1c00ffb0:	4342                	lw	t1,16(sp)
1c00ffb2:	43d2                	lw	t2,20(sp)
1c00ffb4:	4562                	lw	a0,24(sp)
1c00ffb6:	45f2                	lw	a1,28(sp)
1c00ffb8:	5692                	lw	a3,36(sp)
1c00ffba:	5722                	lw	a4,40(sp)
1c00ffbc:	57b2                	lw	a5,44(sp)
1c00ffbe:	5842                	lw	a6,48(sp)
1c00ffc0:	58d2                	lw	a7,52(sp)
1c00ffc2:	5e62                	lw	t3,56(sp)
1c00ffc4:	5ef2                	lw	t4,60(sp)
1c00ffc6:	4f06                	lw	t5,64(sp)
1c00ffc8:	4fb6                	lw	t6,76(sp)
1c00ffca:	6109                	addi	sp,sp,128
1c00ffcc:	8482                	jr	s1

1c00ffce <pos_time_timer_handler_asm>:
1c00ffce:	1161                	addi	sp,sp,-8
1c00ffd0:	c032                	sw	a2,0(sp)
1c00ffd2:	c226                	sw	s1,4(sp)
1c00ffd4:	00000617          	auipc	a2,0x0
1c00ffd8:	daa60613          	addi	a2,a2,-598 # 1c00fd7e <pos_time_timer_handler>
1c00ffdc:	00000497          	auipc	s1,0x0
1c00ffe0:	00c48493          	addi	s1,s1,12 # 1c00ffe8 <pos_time_timer_handler_asm_ret>
1c00ffe4:	f9dff06f          	j	1c00ff80 <pos_irq_call_external_c_function_full>

1c00ffe8 <pos_time_timer_handler_asm_ret>:
1c00ffe8:	4492                	lw	s1,4(sp)
1c00ffea:	4602                	lw	a2,0(sp)
1c00ffec:	0121                	addi	sp,sp,8
1c00ffee:	30200073          	mret

1c00fff2 <pos_soc_event_handler_asm>:
1c00fff2:	7119                	addi	sp,sp,-128
1c00fff4:	c022                	sw	s0,0(sp)
1c00fff6:	c226                	sw	s1,4(sp)
1c00fff8:	c42a                	sw	a0,8(sp)
1c00fffa:	c62e                	sw	a1,12(sp)
1c00fffc:	c832                	sw	a2,16(sp)
1c00fffe:	1a10a437          	lui	s0,0x1a10a
1c010002:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c010006:	5048                	lw	a0,36(s0)
1c010008:	00251593          	slli	a1,a0,0x2
1c01000c:	e3ff0297          	auipc	t0,0xe3ff0
1c010010:	43c28293          	addi	t0,t0,1084 # 448 <pos_soc_event_callback>
1c010014:	2055f603          	p.lw	a2,t0(a1)
1c010018:	e3ff0297          	auipc	t0,0xe3ff0
1c01001c:	03028293          	addi	t0,t0,48 # 48 <pos_soc_event_callback_arg>
1c010020:	2055f583          	p.lw	a1,t0(a1)
1c010024:	00000497          	auipc	s1,0x0
1c010028:	03048493          	addi	s1,s1,48 # 1c010054 <pos_soc_event_handler_end_asm>
1c01002c:	f0fff06f          	j	1c00ff3a <pos_irq_call_external_c_function>

1c010030 <pos_soc_event_no_udma_asm>:
1c010030:	00555593          	srli	a1,a0,0x5
1c010034:	058a                	slli	a1,a1,0x2
1c010036:	e3ff0297          	auipc	t0,0xe3ff0
1c01003a:	ff228293          	addi	t0,t0,-14 # 28 <pos_soc_event_status>
1c01003e:	2055f603          	p.lw	a2,t0(a1)
1c010042:	897d                	andi	a0,a0,31
1c010044:	80a64633          	p.bsetr	a2,a2,a0
1c010048:	e3ff0297          	auipc	t0,0xe3ff0
1c01004c:	fe028293          	addi	t0,t0,-32 # 28 <pos_soc_event_status>
1c010050:	00c5e2a3          	p.sw	a2,t0(a1)

1c010054 <pos_soc_event_handler_end_asm>:
1c010054:	4402                	lw	s0,0(sp)
1c010056:	4492                	lw	s1,4(sp)
1c010058:	4522                	lw	a0,8(sp)
1c01005a:	45b2                	lw	a1,12(sp)
1c01005c:	4642                	lw	a2,16(sp)
1c01005e:	6109                	addi	sp,sp,128
1c010060:	30200073          	mret

Déassemblage de la section .l2_data :

1c010064 <__cluster_text_start>:
1c010064:	f1402573          	csrr	a0,mhartid
1c010068:	01f57593          	andi	a1,a0,31
1c01006c:	8115                	srli	a0,a0,0x5
1c01006e:	000702b7          	lui	t0,0x70
1c010072:	00204337          	lui	t1,0x204
1c010076:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c01007a:	4381                	li	t2,0
1c01007c:	0e759463          	bne	a1,t2,1c010164 <pos_slave_start>
1c010080:	20000293          	li	t0,512
1c010084:	00204337          	lui	t1,0x204
1c010088:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c01008c:	e3ff0417          	auipc	s0,0xe3ff0
1c010090:	f7840413          	addi	s0,s0,-136 # 4 <pos_fll_freq>
1c010094:	002049b7          	lui	s3,0x204
1c010098:	4a09                	li	s4,2
1c01009a:	00000a97          	auipc	s5,0x0
1c01009e:	038a8a93          	addi	s5,s5,56 # 1c0100d2 <pos_master_event>
1c0100a2:	ffffdb97          	auipc	s7,0xffffd
1c0100a6:	1aab8b93          	addi	s7,s7,426 # 1c00d24c <pos_cluster>
1c0100aa:	02c00393          	li	t2,44
1c0100ae:	02a383b3          	mul	t2,t2,a0
1c0100b2:	9b9e                	add	s7,s7,t2
1c0100b4:	0bd1                	addi	s7,s7,20
1c0100b6:	1a10acb7          	lui	s9,0x1a10a
1c0100ba:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c0100be:	4c09                	li	s8,2
1c0100c0:	00000d17          	auipc	s10,0x0
1c0100c4:	0e2d0d13          	addi	s10,s10,226 # 1c0101a2 <pos_set_slave_stack>
1c0100c8:	001d6d13          	ori	s10,s10,1
1c0100cc:	30045073          	csrwi	mstatus,8
1c0100d0:	a829                	j	1c0100ea <pos_master_loop>

1c0100d2 <pos_master_event>:
1c0100d2:	018b2b03          	lw	s6,24(s6)
1c0100d6:	000b0a63          	beqz	s6,1c0100ea <pos_master_loop>

1c0100da <pos_push_event_to_fc_retry>:
1c0100da:	000ba283          	lw	t0,0(s7)
1c0100de:	06029c63          	bnez	t0,1c010156 <pos_push_event_to_fc_wait>
1c0100e2:	016ba023          	sw	s6,0(s7)
1c0100e6:	018ca023          	sw	s8,0(s9)

1c0100ea <pos_master_loop>:
1c0100ea:	00042b03          	lw	s6,0(s0)
1c0100ee:	040b0d63          	beqz	s6,1c010148 <pos_master_sleep>

1c0100f2 <pos_master_loop_update_next>:
1c0100f2:	020b2e83          	lw	t4,32(s6)
1c0100f6:	01d42023          	sw	t4,0(s0)
1c0100fa:	020b2f03          	lw	t5,32(s6)
1c0100fe:	ffee9ae3          	bne	t4,t5,1c0100f2 <pos_master_loop_update_next>

1c010102 <pos_master_loop_exec_task>:
1c010102:	004b2503          	lw	a0,4(s6)
1c010106:	000b2283          	lw	t0,0(s6)
1c01010a:	008b2103          	lw	sp,8(s6)
1c01010e:	00cb2303          	lw	t1,12(s6)
1c010112:	010b2383          	lw	t2,16(s6)
1c010116:	024b2f03          	lw	t5,36(s6)
1c01011a:	014b2f83          	lw	t6,20(s6)
1c01011e:	80d6                	mv	ra,s5
1c010120:	911a                	add	sp,sp,t1
1c010122:	e3ff0e17          	auipc	t3,0xe3ff0
1c010126:	effe2b23          	sw	t6,-266(t3) # 18 <_l1_preload_size>

1c01012a <pos_no_stack_check>:
1c01012a:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c01012e:	21e9a023          	sw	t5,512(s3)
1c010132:	21e9a623          	sw	t5,524(s3)

1c010136 <pos_master_no_slave_barrier>:
1c010136:	000f2863          	p.beqimm	t5,0,1c010146 <pos_master_loop_no_slave>
1c01013a:	09a9a023          	sw	s10,128(s3)
1c01013e:	0879a023          	sw	t2,128(s3)
1c010142:	0829a023          	sw	sp,128(s3)

1c010146 <pos_master_loop_no_slave>:
1c010146:	8282                	jr	t0

1c010148 <pos_master_sleep>:
1c010148:	0149a423          	sw	s4,8(s3)
1c01014c:	03c9e003          	p.elw	zero,60(s3)
1c010150:	0149a223          	sw	s4,4(s3)
1c010154:	bf59                	j	1c0100ea <pos_master_loop>

1c010156 <pos_push_event_to_fc_wait>:
1c010156:	0149a423          	sw	s4,8(s3)
1c01015a:	03c9e003          	p.elw	zero,60(s3)
1c01015e:	0149a223          	sw	s4,4(s3)
1c010162:	bfa5                	j	1c0100da <pos_push_event_to_fc_retry>

1c010164 <pos_slave_start>:
1c010164:	00204937          	lui	s2,0x204
1c010168:	f14029f3          	csrr	s3,mhartid
1c01016c:	01f9f993          	andi	s3,s3,31
1c010170:	00000a17          	auipc	s4,0x0
1c010174:	012a0a13          	addi	s4,s4,18 # 1c010182 <pos_fork_return>
1c010178:	00000a97          	auipc	s5,0x0
1c01017c:	00ea8a93          	addi	s5,s5,14 # 1c010186 <pos_wait_for_dispatch>
1c010180:	a019                	j	1c010186 <pos_wait_for_dispatch>

1c010182 <pos_fork_return>:
1c010182:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c010186 <pos_wait_for_dispatch>:
1c010186:	08096283          	p.elw	t0,128(s2)
1c01018a:	08096503          	p.elw	a0,128(s2)
1c01018e:	0012f313          	andi	t1,t0,1
1c010192:	00031563          	bnez	t1,1c01019c <pos_other_entry>

1c010196 <pos_fork_entry>:
1c010196:	000a00b3          	add	ra,s4,zero
1c01019a:	8282                	jr	t0

1c01019c <pos_other_entry>:
1c01019c:	000a80b3          	add	ra,s5,zero
1c0101a0:	8282                	jr	t0

1c0101a2 <pos_set_slave_stack>:
1c0101a2:	08096283          	p.elw	t0,128(s2)
1c0101a6:	00098f13          	mv	t5,s3
1c0101aa:	02af0eb3          	mul	t4,t5,a0
1c0101ae:	005e8133          	add	sp,t4,t0
1c0101b2:	8082                	ret

1c0101b4 <__cluster_text_end>:
	...
