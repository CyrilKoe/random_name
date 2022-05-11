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
1c00d384:	b5450513          	addi	a0,a0,-1196 # 1c00fed4 <pos_init_entry>
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

1c00dc04 <task_matMult>:
1c00dc04:	6291                	lui	t0,0x4
1c00dc06:	8e09                	sub	a2,a2,a0
1c00dc08:	08028293          	addi	t0,t0,128 # 4080 <pos_soc_event_callback+0x3c38>
1c00dc0c:	8f2a                	mv	t5,a0
1c00dc0e:	08050f93          	addi	t6,a0,128
1c00dc12:	92aa                	add	t0,t0,a0
1c00dc14:	f8060393          	addi	t2,a2,-128
1c00dc18:	8eae                	mv	t4,a1
1c00dc1a:	01f38333          	add	t1,t2,t6
1c00dc1e:	40760e33          	sub	t3,a2,t2
1c00dc22:	015e407b          	lp.setup	x0,t3,1c00dc4c <task_matMult+0x48>
1c00dc26:	000300ab          	p.sb	zero,1(t1!)
1c00dc2a:	8576                	mv	a0,t4
1c00dc2c:	86fa                	mv	a3,t5
1c00dc2e:	4781                	li	a5,0
1c00dc30:	41ef8733          	sub	a4,t6,t5
1c00dc34:	00a740fb          	lp.setup	x1,a4,1c00dc48 <task_matMult+0x44>
1c00dc38:	0016c88b          	p.lbu	a7,1(a3!) # 400001 <__l1_heap_size+0x3f001d> # a7 = sext(mem8(a3)) ; a7 += 1
1c00dc3c:	0805080b          	p.lb	a6,128(a0!) # a6 = sext(mem8(a0)) ; a0 += 128 
1c00dc40:	430887b3          	p.mac	a5,a7,a6
1c00dc44:	0ff7f793          	andi	a5,a5,255
1c00dc48:	fef30fa3          	sb	a5,-1(t1)
1c00dc4c:	0e85                	addi	t4,t4,1
1c00dc4e:	08068f93          	addi	t6,a3,128
1c00dc52:	080f0f13          	addi	t5,t5,128
1c00dc56:	fc5f91e3          	bne	t6,t0,1c00dc18 <task_matMult+0x14>
1c00dc5a:	8082                	ret

1c00dc5c <main>:
1c00dc5c:	1141                	addi	sp,sp,-16
1c00dc5e:	1c001537          	lui	a0,0x1c001
1c00dc62:	1c0055b7          	lui	a1,0x1c005
1c00dc66:	c606                	sw	ra,12(sp)
1c00dc68:	c422                	sw	s0,8(sp)
1c00dc6a:	c226                	sw	s1,4(sp)
1c00dc6c:	4881                	li	a7,0
1c00dc6e:	4e01                	li	t3,0
1c00dc70:	24050f13          	addi	t5,a0,576 # 1c001240 <_edata>
1c00dc74:	24058e93          	addi	t4,a1,576 # 1c005240 <B>
1c00dc78:	080b507b          	lp.setupi	x0,128,1c00dca4 <main+0x48>
1c00dc7c:	0ff8f793          	andi	a5,a7,255
1c00dc80:	011f0833          	add	a6,t5,a7
1c00dc84:	0ffe7693          	andi	a3,t3,255
1c00dc88:	011e8633          	add	a2,t4,a7
1c00dc8c:	0804d0fb          	lp.setupi	x1,128,1c00dc9e <main+0x42>
1c00dc90:	00f800ab          	p.sb	a5,1(a6!)
1c00dc94:	00d600ab          	p.sb	a3,1(a2!)
1c00dc98:	0785                	addi	a5,a5,1
1c00dc9a:	0ff7f793          	andi	a5,a5,255
1c00dc9e:	0806c693          	xori	a3,a3,128
1c00dca2:	0e05                	addi	t3,t3,1
1c00dca4:	08088893          	addi	a7,a7,128
1c00dca8:	000207b7          	lui	a5,0x20
1c00dcac:	0789                	addi	a5,a5,2
1c00dcae:	cc079073          	csrw	0xcc0,a5
1c00dcb2:	f1402473          	csrr	s0,mhartid
1c00dcb6:	47fd                	li	a5,31
1c00dcb8:	ca541733          	p.extractu	a4,s0,5,5
1c00dcbc:	0af70663          	beq	a4,a5,1c00dd68 <main+0x10c>
1c00dcc0:	102007b7          	lui	a5,0x10200
1c00dcc4:	4705                	li	a4,1
1c00dcc6:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dcca:	02e7a023          	sw	a4,32(a5)
1c00dcce:	4781                	li	a5,0
1c00dcd0:	79f79073          	csrw	pccr31,a5
1c00dcd4:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dcd8:	477d                	li	a4,31
1c00dcda:	0ae78d63          	beq	a5,a4,1c00dd94 <main+0x138>
1c00dcde:	102007b7          	lui	a5,0x10200
1c00dce2:	4705                	li	a4,1
1c00dce4:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dce8:	00e7ac23          	sw	a4,24(a5)
1c00dcec:	478d                	li	a5,3
1c00dcee:	cc179073          	csrw	0xcc1,a5
1c00dcf2:	1c009637          	lui	a2,0x1c009
1c00dcf6:	24060613          	addi	a2,a2,576 # 1c009240 <tempC>
1c00dcfa:	24058593          	addi	a1,a1,576
1c00dcfe:	24050513          	addi	a0,a0,576
1c00dd02:	3709                	jal	1c00dc04 <task_matMult>
1c00dd04:	ca5417b3          	p.extractu	a5,s0,5,5
1c00dd08:	477d                	li	a4,31
1c00dd0a:	06e78d63          	beq	a5,a4,1c00dd84 <main+0x128>
1c00dd0e:	102007b7          	lui	a5,0x10200
1c00dd12:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd16:	0007a023          	sw	zero,0(a5)
1c00dd1a:	4781                	li	a5,0
1c00dd1c:	cc179073          	csrw	0xcc1,a5
1c00dd20:	4505                	li	a0,1
1c00dd22:	3361                	jal	1c00daaa <cpu_perf_get>
1c00dd24:	ca541433          	p.extractu	s0,s0,5,5
1c00dd28:	47fd                	li	a5,31
1c00dd2a:	84aa                	mv	s1,a0
1c00dd2c:	04f40763          	beq	s0,a5,1c00dd7a <main+0x11e>
1c00dd30:	10200637          	lui	a2,0x10200
1c00dd34:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c00dd38:	00862403          	lw	s0,8(a2)
1c00dd3c:	d014f7d3          	fcvt.s.wu	a5,s1
1c00dd40:	d0147553          	fcvt.s.wu	a0,s0
1c00dd44:	18f57553          	fdiv.s	a0,a0,a5
1c00dd48:	397d                	jal	1c00da06 <__extendsfdf2>
1c00dd4a:	872a                	mv	a4,a0
1c00dd4c:	1c001537          	lui	a0,0x1c001
1c00dd50:	87ae                	mv	a5,a1
1c00dd52:	8622                	mv	a2,s0
1c00dd54:	85a6                	mv	a1,s1
1c00dd56:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c00dd5a:	22f5                	jal	1c00df46 <printf>
1c00dd5c:	40b2                	lw	ra,12(sp)
1c00dd5e:	4422                	lw	s0,8(sp)
1c00dd60:	4492                	lw	s1,4(sp)
1c00dd62:	4501                	li	a0,0
1c00dd64:	0141                	addi	sp,sp,16
1c00dd66:	8082                	ret
1c00dd68:	4785                	li	a5,1
1c00dd6a:	1a10b737          	lui	a4,0x1a10b
1c00dd6e:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c00dd72:	4781                	li	a5,0
1c00dd74:	79f79073          	csrw	pccr31,a5
1c00dd78:	bfb1                	j	1c00dcd4 <main+0x78>
1c00dd7a:	1a10b637          	lui	a2,0x1a10b
1c00dd7e:	00862403          	lw	s0,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00dd82:	bf6d                	j	1c00dd3c <main+0xe0>
1c00dd84:	1a10b7b7          	lui	a5,0x1a10b
1c00dd88:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00dd8c:	4781                	li	a5,0
1c00dd8e:	cc179073          	csrw	0xcc1,a5
1c00dd92:	b779                	j	1c00dd20 <main+0xc4>
1c00dd94:	4785                	li	a5,1
1c00dd96:	1a10b737          	lui	a4,0x1a10b
1c00dd9a:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c00dd9e:	478d                	li	a5,3
1c00dda0:	cc179073          	csrw	0xcc1,a5
1c00dda4:	b7b9                	j	1c00dcf2 <main+0x96>

1c00dda6 <pos_fll_init>:
1c00dda6:	00451593          	slli	a1,a0,0x4
1c00ddaa:	832a                	mv	t1,a0
1c00ddac:	00458e13          	addi	t3,a1,4
1c00ddb0:	1a100637          	lui	a2,0x1a100
1c00ddb4:	21c67703          	p.lw	a4,t3(a2)
1c00ddb8:	86ba                	mv	a3,a4
1c00ddba:	04074163          	bltz	a4,1c00ddfc <pos_fll_init+0x56>
1c00ddbe:	00858793          	addi	a5,a1,8
1c00ddc2:	20f67883          	p.lw	a7,a5(a2)
1c00ddc6:	4519                	li	a0,6
1c00ddc8:	caa528b3          	p.insert	a7,a0,5,10
1c00ddcc:	05000513          	li	a0,80
1c00ddd0:	d70528b3          	p.insert	a7,a0,11,16
1c00ddd4:	1a100837          	lui	a6,0x1a100
1c00ddd8:	011867a3          	p.sw	a7,a5(a6)
1c00dddc:	05b1                	addi	a1,a1,12
1c00ddde:	20b67603          	p.lw	a2,a1(a2)
1c00dde2:	14c00793          	li	a5,332
1c00dde6:	d307a633          	p.insert	a2,a5,9,16
1c00ddea:	00c865a3          	p.sw	a2,a1(a6)
1c00ddee:	4785                	li	a5,1
1c00ddf0:	c1e7a6b3          	p.insert	a3,a5,0,30
1c00ddf4:	c1f7a6b3          	p.insert	a3,a5,0,31
1c00ddf8:	00d86e23          	p.sw	a3,t3(a6)
1c00ddfc:	00400793          	li	a5,4
1c00de00:	00231613          	slli	a2,t1,0x2
1c00de04:	963e                	add	a2,a2,a5
1c00de06:	4208                	lw	a0,0(a2)
1c00de08:	ed19                	bnez	a0,1c00de26 <pos_fll_init+0x80>
1c00de0a:	10075733          	p.exthz	a4,a4
1c00de0e:	c7a696b3          	p.extractu	a3,a3,3,26
1c00de12:	073e                	slli	a4,a4,0xf
1c00de14:	16fd                	addi	a3,a3,-1
1c00de16:	00d75533          	srl	a0,a4,a3
1c00de1a:	c208                	sw	a0,0(a2)
1c00de1c:	979a                	add	a5,a5,t1
1c00de1e:	4705                	li	a4,1
1c00de20:	00e78623          	sb	a4,12(a5)
1c00de24:	8082                	ret
1c00de26:	46f5                	li	a3,29
1c00de28:	10051733          	p.fl1	a4,a0
1c00de2c:	4585                	li	a1,1
1c00de2e:	82e6b75b          	p.subun	a4,a3,a4,1
1c00de32:	04e5e733          	p.max	a4,a1,a4
1c00de36:	fff70693          	addi	a3,a4,-1
1c00de3a:	00e51833          	sll	a6,a0,a4
1c00de3e:	00d595b3          	sll	a1,a1,a3
1c00de42:	dc0838b3          	p.bclr	a7,a6,14,0
1c00de46:	006786b3          	add	a3,a5,t1
1c00de4a:	c0e8a5db          	p.addunr	a1,a7,a4
1c00de4e:	00c6c683          	lbu	a3,12(a3)
1c00de52:	c20c                	sw	a1,0(a2)
1c00de54:	d6e1                	beqz	a3,1c00de1c <pos_fll_init+0x76>
1c00de56:	1a100637          	lui	a2,0x1a100
1c00de5a:	21c67683          	p.lw	a3,t3(a2)
1c00de5e:	00f85813          	srli	a6,a6,0xf
1c00de62:	de0826b3          	p.insert	a3,a6,15,0
1c00de66:	0705                	addi	a4,a4,1
1c00de68:	c7a726b3          	p.insert	a3,a4,3,26
1c00de6c:	00d66e23          	p.sw	a3,t3(a2)
1c00de70:	979a                	add	a5,a5,t1
1c00de72:	4705                	li	a4,1
1c00de74:	00e78623          	sb	a4,12(a5)
1c00de78:	8082                	ret

1c00de7a <pos_fll_constructor>:
1c00de7a:	00400793          	li	a5,4
1c00de7e:	0007a023          	sw	zero,0(a5)
1c00de82:	0007a223          	sw	zero,4(a5)
1c00de86:	0007a423          	sw	zero,8(a5)
1c00de8a:	00079623          	sh	zero,12(a5)
1c00de8e:	00078723          	sb	zero,14(a5)
1c00de92:	8082                	ret

1c00de94 <pos_soc_init>:
1c00de94:	1141                	addi	sp,sp,-16
1c00de96:	c606                	sw	ra,12(sp)
1c00de98:	c422                	sw	s0,8(sp)
1c00de9a:	37c5                	jal	1c00de7a <pos_fll_constructor>
1c00de9c:	4501                	li	a0,0
1c00de9e:	3721                	jal	1c00dda6 <pos_fll_init>
1c00dea0:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c00dea4:	4505                	li	a0,1
1c00dea6:	3701                	jal	1c00dda6 <pos_fll_init>
1c00dea8:	01400413          	li	s0,20
1c00deac:	c408                	sw	a0,8(s0)
1c00deae:	4509                	li	a0,2
1c00deb0:	3ddd                	jal	1c00dda6 <pos_fll_init>
1c00deb2:	c048                	sw	a0,4(s0)
1c00deb4:	40b2                	lw	ra,12(sp)
1c00deb6:	4422                	lw	s0,8(sp)
1c00deb8:	0141                	addi	sp,sp,16
1c00deba:	8082                	ret

1c00debc <strchr>:
1c00debc:	00054783          	lbu	a5,0(a0)
1c00dec0:	0ff5f593          	andi	a1,a1,255
1c00dec4:	00b78c63          	beq	a5,a1,1c00dedc <strchr+0x20>
1c00dec8:	cb99                	beqz	a5,1c00dede <strchr+0x22>
1c00deca:	00150793          	addi	a5,a0,1
1c00dece:	a011                	j	1c00ded2 <strchr+0x16>
1c00ded0:	c719                	beqz	a4,1c00dede <strchr+0x22>
1c00ded2:	853e                	mv	a0,a5
1c00ded4:	0017c70b          	p.lbu	a4,1(a5!)
1c00ded8:	feb71ce3          	bne	a4,a1,1c00ded0 <strchr+0x14>
1c00dedc:	8082                	ret
1c00dede:	0015b593          	seqz	a1,a1
1c00dee2:	40b005b3          	neg	a1,a1
1c00dee6:	8d6d                	and	a0,a0,a1
1c00dee8:	8082                	ret

1c00deea <pos_libc_fputc_locked>:
1c00deea:	f14027f3          	csrr	a5,mhartid
1c00deee:	1a10f6b7          	lui	a3,0x1a10f
1c00def2:	ca5797b3          	p.extractu	a5,a5,5,5
1c00def6:	f1402773          	csrr	a4,mhartid
1c00defa:	079e                	slli	a5,a5,0x7
1c00defc:	070e                	slli	a4,a4,0x3
1c00defe:	0ff57513          	andi	a0,a0,255
1c00df02:	ee873733          	p.bclr	a4,a4,23,8
1c00df06:	97b6                	add	a5,a5,a3
1c00df08:	00a767a3          	p.sw	a0,a5(a4)
1c00df0c:	4501                	li	a0,0
1c00df0e:	8082                	ret

1c00df10 <pos_libc_prf_locked>:
1c00df10:	a095                	j	1c00df74 <pos_libc_prf>

1c00df12 <exit>:
1c00df12:	1141                	addi	sp,sp,-16
1c00df14:	c422                	sw	s0,8(sp)
1c00df16:	c606                	sw	ra,12(sp)
1c00df18:	842a                	mv	s0,a0
1c00df1a:	43d010ef          	jal	ra,1c00fb56 <pos_init_stop>
1c00df1e:	c1f44533          	p.bset	a0,s0,0,31
1c00df22:	1a1047b7          	lui	a5,0x1a104
1c00df26:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c00df2a:	1a10a7b7          	lui	a5,0x1a10a
1c00df2e:	577d                	li	a4,-1
1c00df30:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00df34:	10500073          	wfi
1c00df38:	10500073          	wfi
1c00df3c:	bfe5                	j	1c00df34 <exit+0x22>

1c00df3e <pos_io_start>:
1c00df3e:	4501                	li	a0,0
1c00df40:	8082                	ret

1c00df42 <pos_io_stop>:
1c00df42:	4501                	li	a0,0
1c00df44:	8082                	ret

1c00df46 <printf>:
1c00df46:	7139                	addi	sp,sp,-64
1c00df48:	02410313          	addi	t1,sp,36
1c00df4c:	d432                	sw	a2,40(sp)
1c00df4e:	862a                	mv	a2,a0
1c00df50:	1c00e537          	lui	a0,0x1c00e
1c00df54:	d22e                	sw	a1,36(sp)
1c00df56:	d636                	sw	a3,44(sp)
1c00df58:	4589                	li	a1,2
1c00df5a:	869a                	mv	a3,t1
1c00df5c:	eea50513          	addi	a0,a0,-278 # 1c00deea <pos_libc_fputc_locked>
1c00df60:	ce06                	sw	ra,28(sp)
1c00df62:	d83a                	sw	a4,48(sp)
1c00df64:	da3e                	sw	a5,52(sp)
1c00df66:	dc42                	sw	a6,56(sp)
1c00df68:	de46                	sw	a7,60(sp)
1c00df6a:	c61a                	sw	t1,12(sp)
1c00df6c:	3755                	jal	1c00df10 <pos_libc_prf_locked>
1c00df6e:	40f2                	lw	ra,28(sp)
1c00df70:	6121                	addi	sp,sp,64
1c00df72:	8082                	ret

1c00df74 <pos_libc_prf>:
1c00df74:	7119                	addi	sp,sp,-128
1c00df76:	dca2                	sw	s0,120(sp)
1c00df78:	1058                	addi	a4,sp,36
1c00df7a:	4401                	li	s0,0
1c00df7c:	d6ce                	sw	s3,108(sp)
1c00df7e:	d4d2                	sw	s4,104(sp)
1c00df80:	d2d6                	sw	s5,100(sp)
1c00df82:	cede                	sw	s7,92(sp)
1c00df84:	cce2                	sw	s8,88(sp)
1c00df86:	c8ea                	sw	s10,80(sp)
1c00df88:	de86                	sw	ra,124(sp)
1c00df8a:	daa6                	sw	s1,116(sp)
1c00df8c:	d8ca                	sw	s2,112(sp)
1c00df8e:	d0da                	sw	s6,96(sp)
1c00df90:	cae6                	sw	s9,84(sp)
1c00df92:	c6ee                	sw	s11,76(sp)
1c00df94:	89aa                	mv	s3,a0
1c00df96:	8bae                	mv	s7,a1
1c00df98:	8d32                	mv	s10,a2
1c00df9a:	8a36                	mv	s4,a3
1c00df9c:	1c001c37          	lui	s8,0x1c001
1c00dfa0:	c03a                	sw	a4,0(sp)
1c00dfa2:	8aa2                	mv	s5,s0
1c00dfa4:	a039                	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00dfa6:	85de                	mv	a1,s7
1c00dfa8:	9982                	jalr	s3
1c00dfaa:	15f52063          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00dfae:	0a85                	addi	s5,s5,1
1c00dfb0:	8d22                	mv	s10,s0
1c00dfb2:	000d4503          	lbu	a0,0(s10)
1c00dfb6:	001d0413          	addi	s0,s10,1
1c00dfba:	c979                	beqz	a0,1c00e090 <pos_libc_prf+0x11c>
1c00dfbc:	02500793          	li	a5,37
1c00dfc0:	fef513e3          	bne	a0,a5,1c00dfa6 <pos_libc_prf+0x32>
1c00dfc4:	ca02                	sw	zero,20(sp)
1c00dfc6:	c802                	sw	zero,16(sp)
1c00dfc8:	c602                	sw	zero,12(sp)
1c00dfca:	c402                	sw	zero,8(sp)
1c00dfcc:	c202                	sw	zero,4(sp)
1c00dfce:	02300493          	li	s1,35
1c00dfd2:	02d00b13          	li	s6,45
1c00dfd6:	00044c83          	lbu	s9,0(s0)
1c00dfda:	00140913          	addi	s2,s0,1
1c00dfde:	85e6                	mv	a1,s9
1c00dfe0:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c00dfe4:	8d4a                	mv	s10,s2
1c00dfe6:	8de6                	mv	s11,s9
1c00dfe8:	3dd1                	jal	1c00debc <strchr>
1c00dfea:	c91d                	beqz	a0,1c00e020 <pos_libc_prf+0xac>
1c00dfec:	109c8963          	beq	s9,s1,1c00e0fe <pos_libc_prf+0x18a>
1c00dff0:	0194fe63          	bleu	s9,s1,1c00e00c <pos_libc_prf+0x98>
1c00dff4:	116c8163          	beq	s9,s6,1c00e0f6 <pos_libc_prf+0x182>
1c00dff8:	03000713          	li	a4,48
1c00dffc:	0eec8963          	beq	s9,a4,1c00e0ee <pos_libc_prf+0x17a>
1c00e000:	02b00793          	li	a5,43
1c00e004:	0afc8763          	beq	s9,a5,1c00e0b2 <pos_libc_prf+0x13e>
1c00e008:	844a                	mv	s0,s2
1c00e00a:	b7f1                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e00c:	080c8263          	beqz	s9,1c00e090 <pos_libc_prf+0x11c>
1c00e010:	02000793          	li	a5,32
1c00e014:	fefc9ae3          	bne	s9,a5,1c00e008 <pos_libc_prf+0x94>
1c00e018:	4785                	li	a5,1
1c00e01a:	c83e                	sw	a5,16(sp)
1c00e01c:	844a                	mv	s0,s2
1c00e01e:	bf65                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e020:	02a00693          	li	a3,42
1c00e024:	2edc8263          	beq	s9,a3,1c00e308 <pos_libc_prf+0x394>
1c00e028:	fd0c8693          	addi	a3,s9,-48
1c00e02c:	45a5                	li	a1,9
1c00e02e:	4b01                	li	s6,0
1c00e030:	0cd5fd63          	bleu	a3,a1,1c00e10a <pos_libc_prf+0x196>
1c00e034:	02e00793          	li	a5,46
1c00e038:	28fd8663          	beq	s11,a5,1c00e2c4 <pos_libc_prf+0x350>
1c00e03c:	846e                	mv	s0,s11
1c00e03e:	54fd                	li	s1,-1
1c00e040:	1c001737          	lui	a4,0x1c001
1c00e044:	85ee                	mv	a1,s11
1c00e046:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c00e04a:	3d8d                	jal	1c00debc <strchr>
1c00e04c:	4781                	li	a5,0
1c00e04e:	cd19                	beqz	a0,1c00e06c <pos_libc_prf+0xf8>
1c00e050:	06c00793          	li	a5,108
1c00e054:	001d0693          	addi	a3,s10,1
1c00e058:	000d4d83          	lbu	s11,0(s10)
1c00e05c:	3af40563          	beq	s0,a5,1c00e406 <pos_libc_prf+0x492>
1c00e060:	06800793          	li	a5,104
1c00e064:	3af40563          	beq	s0,a5,1c00e40e <pos_libc_prf+0x49a>
1c00e068:	8d36                	mv	s10,a3
1c00e06a:	87a2                	mv	a5,s0
1c00e06c:	06700693          	li	a3,103
1c00e070:	0bb6ee63          	bltu	a3,s11,1c00e12c <pos_libc_prf+0x1b8>
1c00e074:	06500693          	li	a3,101
1c00e078:	3addf2e3          	bleu	a3,s11,1c00ec1c <pos_libc_prf+0xca8>
1c00e07c:	04700693          	li	a3,71
1c00e080:	39b6ed63          	bltu	a3,s11,1c00e41a <pos_libc_prf+0x4a6>
1c00e084:	04500793          	li	a5,69
1c00e088:	38fdfae3          	bleu	a5,s11,1c00ec1c <pos_libc_prf+0xca8>
1c00e08c:	2e0d9863          	bnez	s11,1c00e37c <pos_libc_prf+0x408>
1c00e090:	8456                	mv	s0,s5
1c00e092:	8522                	mv	a0,s0
1c00e094:	50f6                	lw	ra,124(sp)
1c00e096:	5466                	lw	s0,120(sp)
1c00e098:	54d6                	lw	s1,116(sp)
1c00e09a:	5946                	lw	s2,112(sp)
1c00e09c:	59b6                	lw	s3,108(sp)
1c00e09e:	5a26                	lw	s4,104(sp)
1c00e0a0:	5a96                	lw	s5,100(sp)
1c00e0a2:	5b06                	lw	s6,96(sp)
1c00e0a4:	4bf6                	lw	s7,92(sp)
1c00e0a6:	4c66                	lw	s8,88(sp)
1c00e0a8:	4cd6                	lw	s9,84(sp)
1c00e0aa:	4d46                	lw	s10,80(sp)
1c00e0ac:	4db6                	lw	s11,76(sp)
1c00e0ae:	6109                	addi	sp,sp,128
1c00e0b0:	8082                	ret
1c00e0b2:	4705                	li	a4,1
1c00e0b4:	c63a                	sw	a4,12(sp)
1c00e0b6:	844a                	mv	s0,s2
1c00e0b8:	bf39                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e0ba:	00044503          	lbu	a0,0(s0)
1c00e0be:	47a5                	li	a5,9
1c00e0c0:	fd050693          	addi	a3,a0,-48
1c00e0c4:	72d7e9e3          	bltu	a5,a3,1c00eff6 <pos_libc_prf+0x1082>
1c00e0c8:	00140793          	addi	a5,s0,1
1c00e0cc:	8dbe                	mv	s11,a5
1c00e0ce:	a809                	j	1c00e0e0 <pos_libc_prf+0x16c>
1c00e0d0:	001dc50b          	p.lbu	a0,1(s11!)
1c00e0d4:	4725                	li	a4,9
1c00e0d6:	fd050793          	addi	a5,a0,-48
1c00e0da:	197d                	addi	s2,s2,-1
1c00e0dc:	70f76ee3          	bltu	a4,a5,1c00eff8 <pos_libc_prf+0x1084>
1c00e0e0:	85de                	mv	a1,s7
1c00e0e2:	846e                	mv	s0,s11
1c00e0e4:	9982                	jalr	s3
1c00e0e6:	fff535e3          	p.bneimm	a0,-1,1c00e0d0 <pos_libc_prf+0x15c>
1c00e0ea:	547d                	li	s0,-1
1c00e0ec:	b75d                	j	1c00e092 <pos_libc_prf+0x11e>
1c00e0ee:	4785                	li	a5,1
1c00e0f0:	ca3e                	sw	a5,20(sp)
1c00e0f2:	844a                	mv	s0,s2
1c00e0f4:	b5cd                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e0f6:	4705                	li	a4,1
1c00e0f8:	c43a                	sw	a4,8(sp)
1c00e0fa:	844a                	mv	s0,s2
1c00e0fc:	bde9                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e0fe:	4705                	li	a4,1
1c00e100:	c23a                	sw	a4,4(sp)
1c00e102:	844a                	mv	s0,s2
1c00e104:	bdc9                	j	1c00dfd6 <pos_libc_prf+0x62>
1c00e106:	844a                	mv	s0,s2
1c00e108:	0905                	addi	s2,s2,1
1c00e10a:	002b1793          	slli	a5,s6,0x2
1c00e10e:	00094d83          	lbu	s11,0(s2)
1c00e112:	97da                	add	a5,a5,s6
1c00e114:	0786                	slli	a5,a5,0x1
1c00e116:	97e6                	add	a5,a5,s9
1c00e118:	fd0d8713          	addi	a4,s11,-48
1c00e11c:	fd078b13          	addi	s6,a5,-48
1c00e120:	8cee                	mv	s9,s11
1c00e122:	fee5f2e3          	bleu	a4,a1,1c00e106 <pos_libc_prf+0x192>
1c00e126:	00240d13          	addi	s10,s0,2
1c00e12a:	b729                	j	1c00e034 <pos_libc_prf+0xc0>
1c00e12c:	07000693          	li	a3,112
1c00e130:	24dd85e3          	beq	s11,a3,1c00eb7a <pos_libc_prf+0xc06>
1c00e134:	1fb6e463          	bltu	a3,s11,1c00e31c <pos_libc_prf+0x3a8>
1c00e138:	06e00693          	li	a3,110
1c00e13c:	20dd8ae3          	beq	s11,a3,1c00eb50 <pos_libc_prf+0xbdc>
1c00e140:	2fb6e763          	bltu	a3,s11,1c00e42e <pos_libc_prf+0x4ba>
1c00e144:	06900693          	li	a3,105
1c00e148:	2add9ce3          	bne	s11,a3,1c00ec00 <pos_libc_prf+0xc8c>
1c00e14c:	06c00693          	li	a3,108
1c00e150:	00d78a63          	beq	a5,a3,1c00e164 <pos_libc_prf+0x1f0>
1c00e154:	07a00693          	li	a3,122
1c00e158:	00d78663          	beq	a5,a3,1c00e164 <pos_libc_prf+0x1f0>
1c00e15c:	04c00693          	li	a3,76
1c00e160:	5ed78de3          	beq	a5,a3,1c00ef5a <pos_libc_prf+0xfe6>
1c00e164:	000a2783          	lw	a5,0(s4)
1c00e168:	0a11                	addi	s4,s4,4
1c00e16a:	41f7d713          	srai	a4,a5,0x1f
1c00e16e:	ce52                	sw	s4,28(sp)
1c00e170:	c23a                	sw	a4,4(sp)
1c00e172:	4e0741e3          	bltz	a4,1c00ee54 <pos_libc_prf+0xee0>
1c00e176:	4732                	lw	a4,12(sp)
1c00e178:	440709e3          	beqz	a4,1c00edca <pos_libc_prf+0xe56>
1c00e17c:	02b00693          	li	a3,43
1c00e180:	4c92                	lw	s9,4(sp)
1c00e182:	02d10223          	sb	a3,36(sp)
1c00e186:	02510a13          	addi	s4,sp,37
1c00e18a:	843e                	mv	s0,a5
1c00e18c:	8dd2                	mv	s11,s4
1c00e18e:	a011                	j	1c00e192 <pos_libc_prf+0x21e>
1c00e190:	8dca                	mv	s11,s2
1c00e192:	4629                	li	a2,10
1c00e194:	4681                	li	a3,0
1c00e196:	8522                	mv	a0,s0
1c00e198:	85e6                	mv	a1,s9
1c00e19a:	d3eff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e19e:	892a                	mv	s2,a0
1c00e1a0:	85e6                	mv	a1,s9
1c00e1a2:	8522                	mv	a0,s0
1c00e1a4:	4629                	li	a2,10
1c00e1a6:	4681                	li	a3,0
1c00e1a8:	9f4ff0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e1ac:	03090913          	addi	s2,s2,48
1c00e1b0:	012d8023          	sb	s2,0(s11)
1c00e1b4:	00a5e7b3          	or	a5,a1,a0
1c00e1b8:	001d8913          	addi	s2,s11,1
1c00e1bc:	842a                	mv	s0,a0
1c00e1be:	8cae                	mv	s9,a1
1c00e1c0:	fbe1                	bnez	a5,1c00e190 <pos_libc_prf+0x21c>
1c00e1c2:	00090023          	sb	zero,0(s2)
1c00e1c6:	01ba7d63          	bleu	s11,s4,1c00e1e0 <pos_libc_prf+0x26c>
1c00e1ca:	87ee                	mv	a5,s11
1c00e1cc:	000a4683          	lbu	a3,0(s4)
1c00e1d0:	0007c703          	lbu	a4,0(a5)
1c00e1d4:	fed78fab          	p.sb	a3,-1(a5!)
1c00e1d8:	00ea00ab          	p.sb	a4,1(s4!)
1c00e1dc:	fefa68e3          	bltu	s4,a5,1c00e1cc <pos_libc_prf+0x258>
1c00e1e0:	4782                	lw	a5,0(sp)
1c00e1e2:	4732                	lw	a4,12(sp)
1c00e1e4:	40f90933          	sub	s2,s2,a5
1c00e1e8:	3c071de3          	bnez	a4,1c00edc2 <pos_libc_prf+0xe4e>
1c00e1ec:	47c2                	lw	a5,16(sp)
1c00e1ee:	3c079ae3          	bnez	a5,1c00edc2 <pos_libc_prf+0xe4e>
1c00e1f2:	4712                	lw	a4,4(sp)
1c00e1f4:	837d                	srli	a4,a4,0x1f
1c00e1f6:	c23a                	sw	a4,4(sp)
1c00e1f8:	3404c463          	bltz	s1,1c00e540 <pos_libc_prf+0x5cc>
1c00e1fc:	4712                	lw	a4,4(sp)
1c00e1fe:	412484b3          	sub	s1,s1,s2
1c00e202:	94ba                	add	s1,s1,a4
1c00e204:	0404e4b3          	p.max	s1,s1,zero
1c00e208:	009907b3          	add	a5,s2,s1
1c00e20c:	40fb0b33          	sub	s6,s6,a5
1c00e210:	1040                	addi	s0,sp,36
1c00e212:	4c81                	li	s9,0
1c00e214:	cc02                	sw	zero,24(sp)
1c00e216:	4a01                	li	s4,0
1c00e218:	4722                	lw	a4,8(sp)
1c00e21a:	e305                	bnez	a4,1c00e23a <pos_libc_prf+0x2c6>
1c00e21c:	01605f63          	blez	s6,1c00e23a <pos_libc_prf+0x2c6>
1c00e220:	fffb0d93          	addi	s11,s6,-1
1c00e224:	85de                	mv	a1,s7
1c00e226:	02000513          	li	a0,32
1c00e22a:	9982                	jalr	s3
1c00e22c:	1dfd                	addi	s11,s11,-1
1c00e22e:	ebf52ee3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e232:	fffdb9e3          	p.bneimm	s11,-1,1c00e224 <pos_libc_prf+0x2b0>
1c00e236:	9ada                	add	s5,s5,s6
1c00e238:	5b7d                	li	s6,-1
1c00e23a:	4792                	lw	a5,4(sp)
1c00e23c:	00f40db3          	add	s11,s0,a5
1c00e240:	a031                	j	1c00e24c <pos_libc_prf+0x2d8>
1c00e242:	0014450b          	p.lbu	a0,1(s0!)
1c00e246:	9982                	jalr	s3
1c00e248:	ebf521e3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e24c:	85de                	mv	a1,s7
1c00e24e:	ffb41ae3          	bne	s0,s11,1c00e242 <pos_libc_prf+0x2ce>
1c00e252:	8da6                	mv	s11,s1
1c00e254:	a021                	j	1c00e25c <pos_libc_prf+0x2e8>
1c00e256:	9982                	jalr	s3
1c00e258:	e9f529e3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e25c:	1dfd                	addi	s11,s11,-1
1c00e25e:	85de                	mv	a1,s7
1c00e260:	03000513          	li	a0,48
1c00e264:	fffdb9e3          	p.bneimm	s11,-1,1c00e256 <pos_libc_prf+0x2e2>
1c00e268:	4712                	lw	a4,4(sp)
1c00e26a:	40e90933          	sub	s2,s2,a4
1c00e26e:	c44a                	sw	s2,8(sp)
1c00e270:	e40a15e3          	bnez	s4,1c00e0ba <pos_libc_prf+0x146>
1c00e274:	47e2                	lw	a5,24(sp)
1c00e276:	16079763          	bnez	a5,1c00e3e4 <pos_libc_prf+0x470>
1c00e27a:	120c8863          	beqz	s9,1c00e3aa <pos_libc_prf+0x436>
1c00e27e:	00044783          	lbu	a5,0(s0)
1c00e282:	4a25                	li	s4,9
1c00e284:	02e00d93          	li	s11,46
1c00e288:	a801                	j	1c00e298 <pos_libc_prf+0x324>
1c00e28a:	0405                	addi	s0,s0,1
1c00e28c:	9982                	jalr	s3
1c00e28e:	e5f52ee3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e292:	00044783          	lbu	a5,0(s0)
1c00e296:	197d                	addi	s2,s2,-1
1c00e298:	fd078713          	addi	a4,a5,-48
1c00e29c:	853e                	mv	a0,a5
1c00e29e:	85de                	mv	a1,s7
1c00e2a0:	feea75e3          	bleu	a4,s4,1c00e28a <pos_libc_prf+0x316>
1c00e2a4:	ffb783e3          	beq	a5,s11,1c00e28a <pos_libc_prf+0x316>
1c00e2a8:	8a66                	mv	s4,s9
1c00e2aa:	85de                	mv	a1,s7
1c00e2ac:	03000513          	li	a0,48
1c00e2b0:	01404463          	bgtz	s4,1c00e2b8 <pos_libc_prf+0x344>
1c00e2b4:	0010106f          	j	1c00fab4 <pos_libc_prf+0x1b40>
1c00e2b8:	9982                	jalr	s3
1c00e2ba:	1a7d                	addi	s4,s4,-1
1c00e2bc:	fff537e3          	p.bneimm	a0,-1,1c00e2aa <pos_libc_prf+0x336>
1c00e2c0:	547d                	li	s0,-1
1c00e2c2:	bbc1                	j	1c00e092 <pos_libc_prf+0x11e>
1c00e2c4:	000d4d83          	lbu	s11,0(s10)
1c00e2c8:	02a00793          	li	a5,42
1c00e2cc:	001d0513          	addi	a0,s10,1
1c00e2d0:	08fd8e63          	beq	s11,a5,1c00e36c <pos_libc_prf+0x3f8>
1c00e2d4:	fd0d8793          	addi	a5,s11,-48
1c00e2d8:	4825                	li	a6,9
1c00e2da:	846e                	mv	s0,s11
1c00e2dc:	86aa                	mv	a3,a0
1c00e2de:	4481                	li	s1,0
1c00e2e0:	45a5                	li	a1,9
1c00e2e2:	8d2a                	mv	s10,a0
1c00e2e4:	d4f86ee3          	bltu	a6,a5,1c00e040 <pos_libc_prf+0xcc>
1c00e2e8:	00249793          	slli	a5,s1,0x2
1c00e2ec:	97a6                	add	a5,a5,s1
1c00e2ee:	0786                	slli	a5,a5,0x1
1c00e2f0:	97ee                	add	a5,a5,s11
1c00e2f2:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c00e2f6:	fd078493          	addi	s1,a5,-48
1c00e2fa:	fd0d8793          	addi	a5,s11,-48
1c00e2fe:	846e                	mv	s0,s11
1c00e300:	fef5f4e3          	bleu	a5,a1,1c00e2e8 <pos_libc_prf+0x374>
1c00e304:	8d36                	mv	s10,a3
1c00e306:	bb2d                	j	1c00e040 <pos_libc_prf+0xcc>
1c00e308:	000a2b03          	lw	s6,0(s4)
1c00e30c:	0a11                	addi	s4,s4,4
1c00e30e:	080b4363          	bltz	s6,1c00e394 <pos_libc_prf+0x420>
1c00e312:	00094d83          	lbu	s11,0(s2)
1c00e316:	00240d13          	addi	s10,s0,2
1c00e31a:	bb29                	j	1c00e034 <pos_libc_prf+0xc0>
1c00e31c:	07500693          	li	a3,117
1c00e320:	10dd8763          	beq	s11,a3,1c00e42e <pos_libc_prf+0x4ba>
1c00e324:	07800693          	li	a3,120
1c00e328:	10dd8363          	beq	s11,a3,1c00e42e <pos_libc_prf+0x4ba>
1c00e32c:	07300793          	li	a5,115
1c00e330:	0cfd98e3          	bne	s11,a5,1c00ec00 <pos_libc_prf+0xc8c>
1c00e334:	004a0713          	addi	a4,s4,4
1c00e338:	ce3a                	sw	a4,28(sp)
1c00e33a:	000a2403          	lw	s0,0(s4)
1c00e33e:	3c04c2e3          	bltz	s1,1c00ef02 <pos_libc_prf+0xf8e>
1c00e342:	460481e3          	beqz	s1,1c00efa4 <pos_libc_prf+0x1030>
1c00e346:	00044783          	lbu	a5,0(s0)
1c00e34a:	44078ce3          	beqz	a5,1c00efa2 <pos_libc_prf+0x102e>
1c00e34e:	00140793          	addi	a5,s0,1
1c00e352:	4901                	li	s2,0
1c00e354:	a021                	j	1c00e35c <pos_libc_prf+0x3e8>
1c00e356:	0017c70b          	p.lbu	a4,1(a5!)
1c00e35a:	c701                	beqz	a4,1c00e362 <pos_libc_prf+0x3ee>
1c00e35c:	0905                	addi	s2,s2,1
1c00e35e:	fe994ce3          	blt	s2,s1,1c00e356 <pos_libc_prf+0x3e2>
1c00e362:	412b0b33          	sub	s6,s6,s2
1c00e366:	4481                	li	s1,0
1c00e368:	c202                	sw	zero,4(sp)
1c00e36a:	b565                	j	1c00e212 <pos_libc_prf+0x29e>
1c00e36c:	001d4d83          	lbu	s11,1(s10)
1c00e370:	000a2483          	lw	s1,0(s4)
1c00e374:	846e                	mv	s0,s11
1c00e376:	0d09                	addi	s10,s10,2
1c00e378:	0a11                	addi	s4,s4,4
1c00e37a:	b1d9                	j	1c00e040 <pos_libc_prf+0xcc>
1c00e37c:	02500793          	li	a5,37
1c00e380:	08fd90e3          	bne	s11,a5,1c00ec00 <pos_libc_prf+0xc8c>
1c00e384:	85de                	mv	a1,s7
1c00e386:	02500513          	li	a0,37
1c00e38a:	9982                	jalr	s3
1c00e38c:	d5f52fe3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e390:	0a85                	addi	s5,s5,1
1c00e392:	b105                	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00e394:	4785                	li	a5,1
1c00e396:	41600b33          	neg	s6,s6
1c00e39a:	c43e                	sw	a5,8(sp)
1c00e39c:	bf9d                	j	1c00e312 <pos_libc_prf+0x39e>
1c00e39e:	0014450b          	p.lbu	a0,1(s0!)
1c00e3a2:	197d                	addi	s2,s2,-1
1c00e3a4:	9982                	jalr	s3
1c00e3a6:	d5f522e3          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00e3aa:	85de                	mv	a1,s7
1c00e3ac:	ff2049e3          	bgtz	s2,1c00e39e <pos_libc_prf+0x42a>
1c00e3b0:	4792                	lw	a5,4(sp)
1c00e3b2:	4a72                	lw	s4,28(sp)
1c00e3b4:	00fa8733          	add	a4,s5,a5
1c00e3b8:	47a2                	lw	a5,8(sp)
1c00e3ba:	9726                	add	a4,a4,s1
1c00e3bc:	00e78ab3          	add	s5,a5,a4
1c00e3c0:	bf6059e3          	blez	s6,1c00dfb2 <pos_libc_prf+0x3e>
1c00e3c4:	9ada                	add	s5,s5,s6
1c00e3c6:	1b7d                	addi	s6,s6,-1
1c00e3c8:	a029                	j	1c00e3d2 <pos_libc_prf+0x45e>
1c00e3ca:	01fb3463          	p.bneimm	s6,-1,1c00e3d2 <pos_libc_prf+0x45e>
1c00e3ce:	5fe0106f          	j	1c00f9cc <pos_libc_prf+0x1a58>
1c00e3d2:	85de                	mv	a1,s7
1c00e3d4:	02000513          	li	a0,32
1c00e3d8:	9982                	jalr	s3
1c00e3da:	1b7d                	addi	s6,s6,-1
1c00e3dc:	fff537e3          	p.bneimm	a0,-1,1c00e3ca <pos_libc_prf+0x456>
1c00e3e0:	547d                	li	s0,-1
1c00e3e2:	b945                	j	1c00e092 <pos_libc_prf+0x11e>
1c00e3e4:	02e00a13          	li	s4,46
1c00e3e8:	a031                	j	1c00e3f4 <pos_libc_prf+0x480>
1c00e3ea:	197d                	addi	s2,s2,-1
1c00e3ec:	014d9463          	bne	s11,s4,1c00e3f4 <pos_libc_prf+0x480>
1c00e3f0:	5320106f          	j	1c00f922 <pos_libc_prf+0x19ae>
1c00e3f4:	00144d8b          	p.lbu	s11,1(s0!)
1c00e3f8:	85de                	mv	a1,s7
1c00e3fa:	856e                	mv	a0,s11
1c00e3fc:	9982                	jalr	s3
1c00e3fe:	fff536e3          	p.bneimm	a0,-1,1c00e3ea <pos_libc_prf+0x476>
1c00e402:	547d                	li	s0,-1
1c00e404:	b179                	j	1c00e092 <pos_libc_prf+0x11e>
1c00e406:	188d83e3          	beq	s11,s0,1c00ed8c <pos_libc_prf+0xe18>
1c00e40a:	8d36                	mv	s10,a3
1c00e40c:	b185                	j	1c00e06c <pos_libc_prf+0xf8>
1c00e40e:	188d86e3          	beq	s11,s0,1c00ed9a <pos_libc_prf+0xe26>
1c00e412:	8d36                	mv	s10,a3
1c00e414:	06800793          	li	a5,104
1c00e418:	b991                	j	1c00e06c <pos_libc_prf+0xf8>
1c00e41a:	06300693          	li	a3,99
1c00e41e:	70dd8c63          	beq	s11,a3,1c00eb36 <pos_libc_prf+0xbc2>
1c00e422:	d3b6e5e3          	bltu	a3,s11,1c00e14c <pos_libc_prf+0x1d8>
1c00e426:	05800693          	li	a3,88
1c00e42a:	7cdd9b63          	bne	s11,a3,1c00ec00 <pos_libc_prf+0xc8c>
1c00e42e:	06c00693          	li	a3,108
1c00e432:	18d780e3          	beq	a5,a3,1c00edb2 <pos_libc_prf+0xe3e>
1c00e436:	07a00693          	li	a3,122
1c00e43a:	16d78ce3          	beq	a5,a3,1c00edb2 <pos_libc_prf+0xe3e>
1c00e43e:	04c00693          	li	a3,76
1c00e442:	2cd78ee3          	beq	a5,a3,1c00ef1e <pos_libc_prf+0xfaa>
1c00e446:	000a2403          	lw	s0,0(s4)
1c00e44a:	0a11                	addi	s4,s4,4
1c00e44c:	ce52                	sw	s4,28(sp)
1c00e44e:	4c81                	li	s9,0
1c00e450:	06f00793          	li	a5,111
1c00e454:	3cfd81e3          	beq	s11,a5,1c00f016 <pos_libc_prf+0x10a2>
1c00e458:	07500793          	li	a5,117
1c00e45c:	02410a13          	addi	s4,sp,36
1c00e460:	04fd8763          	beq	s11,a5,1c00e4ae <pos_libc_prf+0x53a>
1c00e464:	4712                	lw	a4,4(sp)
1c00e466:	2a0708e3          	beqz	a4,1c00ef16 <pos_libc_prf+0xfa2>
1c00e46a:	77e1                	lui	a5,0xffff8
1c00e46c:	8307c793          	xori	a5,a5,-2000
1c00e470:	02f11223          	sh	a5,36(sp)
1c00e474:	4909                	li	s2,2
1c00e476:	02610693          	addi	a3,sp,38
1c00e47a:	87b6                	mv	a5,a3
1c00e47c:	4e25                	li	t3,9
1c00e47e:	f6443733          	p.bclr	a4,s0,27,4
1c00e482:	01cc9613          	slli	a2,s9,0x1c
1c00e486:	8011                	srli	s0,s0,0x4
1c00e488:	8c51                	or	s0,s0,a2
1c00e48a:	004cdc93          	srli	s9,s9,0x4
1c00e48e:	05770813          	addi	a6,a4,87
1c00e492:	03070593          	addi	a1,a4,48
1c00e496:	01946533          	or	a0,s0,s9
1c00e49a:	06ee7663          	bleu	a4,t3,1c00e506 <pos_libc_prf+0x592>
1c00e49e:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c00e4a2:	00178593          	addi	a1,a5,1
1c00e4a6:	c52d                	beqz	a0,1c00e510 <pos_libc_prf+0x59c>
1c00e4a8:	87ae                	mv	a5,a1
1c00e4aa:	bfd1                	j	1c00e47e <pos_libc_prf+0x50a>
1c00e4ac:	8a4a                	mv	s4,s2
1c00e4ae:	4629                	li	a2,10
1c00e4b0:	4681                	li	a3,0
1c00e4b2:	8522                	mv	a0,s0
1c00e4b4:	85e6                	mv	a1,s9
1c00e4b6:	a22ff0ef          	jal	ra,1c00d6d8 <__umoddi3>
1c00e4ba:	892a                	mv	s2,a0
1c00e4bc:	85e6                	mv	a1,s9
1c00e4be:	8522                	mv	a0,s0
1c00e4c0:	4629                	li	a2,10
1c00e4c2:	4681                	li	a3,0
1c00e4c4:	ed9fe0ef          	jal	ra,1c00d39c <__udivdi3>
1c00e4c8:	03090913          	addi	s2,s2,48
1c00e4cc:	012a0023          	sb	s2,0(s4)
1c00e4d0:	00a5e7b3          	or	a5,a1,a0
1c00e4d4:	001a0913          	addi	s2,s4,1
1c00e4d8:	842a                	mv	s0,a0
1c00e4da:	8cae                	mv	s9,a1
1c00e4dc:	fbe1                	bnez	a5,1c00e4ac <pos_libc_prf+0x538>
1c00e4de:	4782                	lw	a5,0(sp)
1c00e4e0:	00090023          	sb	zero,0(s2)
1c00e4e4:	40f90933          	sub	s2,s2,a5
1c00e4e8:	0147fd63          	bleu	s4,a5,1c00e502 <pos_libc_prf+0x58e>
1c00e4ec:	105c                	addi	a5,sp,36
1c00e4ee:	0007c683          	lbu	a3,0(a5)
1c00e4f2:	000a4703          	lbu	a4,0(s4)
1c00e4f6:	feda0fab          	p.sb	a3,-1(s4!)
1c00e4fa:	00e780ab          	p.sb	a4,1(a5!)
1c00e4fe:	ff47e8e3          	bltu	a5,s4,1c00e4ee <pos_libc_prf+0x57a>
1c00e502:	c202                	sw	zero,4(sp)
1c00e504:	b9d5                	j	1c00e1f8 <pos_libc_prf+0x284>
1c00e506:	00b78023          	sb	a1,0(a5)
1c00e50a:	00178593          	addi	a1,a5,1
1c00e50e:	fd49                	bnez	a0,1c00e4a8 <pos_libc_prf+0x534>
1c00e510:	00058023          	sb	zero,0(a1)
1c00e514:	8d95                	sub	a1,a1,a3
1c00e516:	00f6fc63          	bleu	a5,a3,1c00e52e <pos_libc_prf+0x5ba>
1c00e51a:	0006c603          	lbu	a2,0(a3)
1c00e51e:	0007c703          	lbu	a4,0(a5)
1c00e522:	fec78fab          	p.sb	a2,-1(a5!)
1c00e526:	00e680ab          	p.sb	a4,1(a3!)
1c00e52a:	fef6e8e3          	bltu	a3,a5,1c00e51a <pos_libc_prf+0x5a6>
1c00e52e:	05800793          	li	a5,88
1c00e532:	28fd82e3          	beq	s11,a5,1c00efb6 <pos_libc_prf+0x1042>
1c00e536:	4712                	lw	a4,4(sp)
1c00e538:	992e                	add	s2,s2,a1
1c00e53a:	0706                	slli	a4,a4,0x1
1c00e53c:	c23a                	sw	a4,4(sp)
1c00e53e:	b96d                	j	1c00e1f8 <pos_libc_prf+0x284>
1c00e540:	4c81                	li	s9,0
1c00e542:	cc02                	sw	zero,24(sp)
1c00e544:	4a01                	li	s4,0
1c00e546:	47d2                	lw	a5,20(sp)
1c00e548:	5e078163          	beqz	a5,1c00eb2a <pos_libc_prf+0xbb6>
1c00e54c:	412b04b3          	sub	s1,s6,s2
1c00e550:	0404e4b3          	p.max	s1,s1,zero
1c00e554:	009907b3          	add	a5,s2,s1
1c00e558:	40fb0b33          	sub	s6,s6,a5
1c00e55c:	1040                	addi	s0,sp,36
1c00e55e:	b96d                	j	1c00e218 <pos_libc_prf+0x2a4>
1c00e560:	4881                	li	a7,0
1c00e562:	4801                	li	a6,0
1c00e564:	4581                	li	a1,0
1c00e566:	4501                	li	a0,0
1c00e568:	4f11                	li	t5,4
1c00e56a:	410f0f33          	sub	t5,t5,a6
1c00e56e:	012f40fb          	lp.setup	x1,t5,1c00e592 <pos_libc_prf+0x61e>
1c00e572:	01f51713          	slli	a4,a0,0x1f
1c00e576:	0015d793          	srli	a5,a1,0x1
1c00e57a:	8fd9                	or	a5,a5,a4
1c00e57c:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e580:	00f58eb3          	add	t4,a1,a5
1c00e584:	8105                	srli	a0,a0,0x1
1c00e586:	00beb5b3          	sltu	a1,t4,a1
1c00e58a:	00a587b3          	add	a5,a1,a0
1c00e58e:	853e                	mv	a0,a5
1c00e590:	85f6                	mv	a1,t4
1c00e592:	0805                	addi	a6,a6,1
1c00e594:	0004d363          	bgez	s1,1c00e59a <pos_libc_prf+0x626>
1c00e598:	4499                	li	s1,6
1c00e59a:	04700693          	li	a3,71
1c00e59e:	0cde0be3          	beq	t3,a3,1c00ee74 <pos_libc_prf+0xf00>
1c00e5a2:	06600693          	li	a3,102
1c00e5a6:	4f81                	li	t6,0
1c00e5a8:	0edd84e3          	beq	s11,a3,1c00ee90 <pos_libc_prf+0xf1c>
1c00e5ac:	00148f13          	addi	t5,s1,1
1c00e5b0:	4741                	li	a4,16
1c00e5b2:	04ef4f33          	p.min	t5,t5,a4
1c00e5b6:	1f7d                	addi	t5,t5,-1
1c00e5b8:	4501                	li	a0,0
1c00e5ba:	080006b7          	lui	a3,0x8000
1c00e5be:	4295                	li	t0,5
1c00e5c0:	0f05                	addi	t5,t5,1
1c00e5c2:	030f40fb          	lp.setup	x1,t5,1c00e622 <pos_libc_prf+0x6ae>
1c00e5c6:	00250613          	addi	a2,a0,2
1c00e5ca:	00a63733          	sltu	a4,a2,a0
1c00e5ce:	9736                	add	a4,a4,a3
1c00e5d0:	02575533          	divu	a0,a4,t0
1c00e5d4:	00251693          	slli	a3,a0,0x2
1c00e5d8:	96aa                	add	a3,a3,a0
1c00e5da:	8f15                	sub	a4,a4,a3
1c00e5dc:	0776                	slli	a4,a4,0x1d
1c00e5de:	00365593          	srli	a1,a2,0x3
1c00e5e2:	8dd9                	or	a1,a1,a4
1c00e5e4:	0255d5b3          	divu	a1,a1,t0
1c00e5e8:	00359693          	slli	a3,a1,0x3
1c00e5ec:	00559713          	slli	a4,a1,0x5
1c00e5f0:	9736                	add	a4,a4,a3
1c00e5f2:	40e60733          	sub	a4,a2,a4
1c00e5f6:	02575733          	divu	a4,a4,t0
1c00e5fa:	81f5                	srli	a1,a1,0x1d
1c00e5fc:	00d70633          	add	a2,a4,a3
1c00e600:	95aa                	add	a1,a1,a0
1c00e602:	00e63733          	sltu	a4,a2,a4
1c00e606:	00b706b3          	add	a3,a4,a1
1c00e60a:	01f69593          	slli	a1,a3,0x1f
1c00e60e:	00165713          	srli	a4,a2,0x1
1c00e612:	8f4d                	or	a4,a4,a1
1c00e614:	fc163633          	p.bclr	a2,a2,30,1
1c00e618:	00e60533          	add	a0,a2,a4
1c00e61c:	8285                	srli	a3,a3,0x1
1c00e61e:	00c53633          	sltu	a2,a0,a2
1c00e622:	96b2                	add	a3,a3,a2
1c00e624:	00ae85b3          	add	a1,t4,a0
1c00e628:	96be                	add	a3,a3,a5
1c00e62a:	01d5beb3          	sltu	t4,a1,t4
1c00e62e:	96f6                	add	a3,a3,t4
1c00e630:	f606b533          	p.bclr	a0,a3,27,0
1c00e634:	87ae                	mv	a5,a1
1c00e636:	c125                	beqz	a0,1c00e696 <pos_libc_prf+0x722>
1c00e638:	00258513          	addi	a0,a1,2
1c00e63c:	00b537b3          	sltu	a5,a0,a1
1c00e640:	96be                	add	a3,a3,a5
1c00e642:	4e95                	li	t4,5
1c00e644:	03d6de33          	divu	t3,a3,t4
1c00e648:	002e1793          	slli	a5,t3,0x2
1c00e64c:	97f2                	add	a5,a5,t3
1c00e64e:	8e9d                	sub	a3,a3,a5
1c00e650:	01d69793          	slli	a5,a3,0x1d
1c00e654:	00355693          	srli	a3,a0,0x3
1c00e658:	8edd                	or	a3,a3,a5
1c00e65a:	03d6d6b3          	divu	a3,a3,t4
1c00e65e:	00369593          	slli	a1,a3,0x3
1c00e662:	00569793          	slli	a5,a3,0x5
1c00e666:	97ae                	add	a5,a5,a1
1c00e668:	40f507b3          	sub	a5,a0,a5
1c00e66c:	03d7d7b3          	divu	a5,a5,t4
1c00e670:	82f5                	srli	a3,a3,0x1d
1c00e672:	95be                	add	a1,a1,a5
1c00e674:	00f5b7b3          	sltu	a5,a1,a5
1c00e678:	96f2                	add	a3,a3,t3
1c00e67a:	96be                	add	a3,a3,a5
1c00e67c:	01f69513          	slli	a0,a3,0x1f
1c00e680:	0015d793          	srli	a5,a1,0x1
1c00e684:	8fc9                	or	a5,a5,a0
1c00e686:	fc15b5b3          	p.bclr	a1,a1,30,1
1c00e68a:	97ae                	add	a5,a5,a1
1c00e68c:	8285                	srli	a3,a3,0x1
1c00e68e:	00b7b5b3          	sltu	a1,a5,a1
1c00e692:	96ae                	add	a3,a3,a1
1c00e694:	0885                	addi	a7,a7,1
1c00e696:	06600593          	li	a1,102
1c00e69a:	00130513          	addi	a0,t1,1
1c00e69e:	1ebd82e3          	beq	s11,a1,1c00f082 <pos_libc_prf+0x110e>
1c00e6a2:	01e7de13          	srli	t3,a5,0x1e
1c00e6a6:	00279593          	slli	a1,a5,0x2
1c00e6aa:	00269813          	slli	a6,a3,0x2
1c00e6ae:	97ae                	add	a5,a5,a1
1c00e6b0:	010e6833          	or	a6,t3,a6
1c00e6b4:	00b7b5b3          	sltu	a1,a5,a1
1c00e6b8:	96c2                	add	a3,a3,a6
1c00e6ba:	96ae                	add	a3,a3,a1
1c00e6bc:	0686                	slli	a3,a3,0x1
1c00e6be:	01f7d593          	srli	a1,a5,0x1f
1c00e6c2:	8ecd                	or	a3,a3,a1
1c00e6c4:	01c6d593          	srli	a1,a3,0x1c
1c00e6c8:	882e                	mv	a6,a1
1c00e6ca:	4712                	lw	a4,4(sp)
1c00e6cc:	03058593          	addi	a1,a1,48
1c00e6d0:	01003833          	snez	a6,a6
1c00e6d4:	00b30023          	sb	a1,0(t1)
1c00e6d8:	c7c6be33          	p.bclr	t3,a3,3,28
1c00e6dc:	00179593          	slli	a1,a5,0x1
1c00e6e0:	410888b3          	sub	a7,a7,a6
1c00e6e4:	0a0714e3          	bnez	a4,1c00ef8c <pos_libc_prf+0x1018>
1c00e6e8:	8ca6                	mv	s9,s1
1c00e6ea:	3c905d63          	blez	s1,1c00eac4 <pos_libc_prf+0xb50>
1c00e6ee:	02e00693          	li	a3,46
1c00e6f2:	00230793          	addi	a5,t1,2
1c00e6f6:	00d300a3          	sb	a3,1(t1)
1c00e6fa:	00259693          	slli	a3,a1,0x2
1c00e6fe:	01e5d813          	srli	a6,a1,0x1e
1c00e702:	002e1513          	slli	a0,t3,0x2
1c00e706:	95b6                	add	a1,a1,a3
1c00e708:	00a86533          	or	a0,a6,a0
1c00e70c:	00d5b833          	sltu	a6,a1,a3
1c00e710:	01c506b3          	add	a3,a0,t3
1c00e714:	9836                	add	a6,a6,a3
1c00e716:	0806                	slli	a6,a6,0x1
1c00e718:	01f5d693          	srli	a3,a1,0x1f
1c00e71c:	0106e833          	or	a6,a3,a6
1c00e720:	01c85313          	srli	t1,a6,0x1c
1c00e724:	03030313          	addi	t1,t1,48
1c00e728:	100006b7          	lui	a3,0x10000
1c00e72c:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e730:	00678023          	sb	t1,0(a5)
1c00e734:	00159e13          	slli	t3,a1,0x1
1c00e738:	00a87833          	and	a6,a6,a0
1c00e73c:	0014b463          	p.bneimm	s1,1,1c00e744 <pos_libc_prf+0x7d0>
1c00e740:	3d40106f          	j	1c00fb14 <pos_libc_prf+0x1ba0>
1c00e744:	00359693          	slli	a3,a1,0x3
1c00e748:	00281313          	slli	t1,a6,0x2
1c00e74c:	01ee5e93          	srli	t4,t3,0x1e
1c00e750:	01c685b3          	add	a1,a3,t3
1c00e754:	006ee333          	or	t1,t4,t1
1c00e758:	981a                	add	a6,a6,t1
1c00e75a:	00d5b6b3          	sltu	a3,a1,a3
1c00e75e:	96c2                	add	a3,a3,a6
1c00e760:	0686                	slli	a3,a3,0x1
1c00e762:	01f5d813          	srli	a6,a1,0x1f
1c00e766:	00d866b3          	or	a3,a6,a3
1c00e76a:	01c6d813          	srli	a6,a3,0x1c
1c00e76e:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c00e772:	010780a3          	sb	a6,1(a5)
1c00e776:	ffe48c93          	addi	s9,s1,-2
1c00e77a:	00159313          	slli	t1,a1,0x1
1c00e77e:	8ee9                	and	a3,a3,a0
1c00e780:	01904463          	bgtz	s9,1c00e788 <pos_libc_prf+0x814>
1c00e784:	3880106f          	j	1c00fb0c <pos_libc_prf+0x1b98>
1c00e788:	01e35e13          	srli	t3,t1,0x1e
1c00e78c:	058e                	slli	a1,a1,0x3
1c00e78e:	00269813          	slli	a6,a3,0x2
1c00e792:	932e                	add	t1,t1,a1
1c00e794:	010e6833          	or	a6,t3,a6
1c00e798:	96c2                	add	a3,a3,a6
1c00e79a:	00b335b3          	sltu	a1,t1,a1
1c00e79e:	95b6                	add	a1,a1,a3
1c00e7a0:	0586                	slli	a1,a1,0x1
1c00e7a2:	01f35693          	srli	a3,t1,0x1f
1c00e7a6:	8dd5                	or	a1,a1,a3
1c00e7a8:	01c5d693          	srli	a3,a1,0x1c
1c00e7ac:	03068693          	addi	a3,a3,48
1c00e7b0:	00d78123          	sb	a3,2(a5)
1c00e7b4:	ffd48c93          	addi	s9,s1,-3
1c00e7b8:	00131e13          	slli	t3,t1,0x1
1c00e7bc:	8de9                	and	a1,a1,a0
1c00e7be:	01904463          	bgtz	s9,1c00e7c6 <pos_libc_prf+0x852>
1c00e7c2:	3420106f          	j	1c00fb04 <pos_libc_prf+0x1b90>
1c00e7c6:	00331693          	slli	a3,t1,0x3
1c00e7ca:	00259813          	slli	a6,a1,0x2
1c00e7ce:	01ee5313          	srli	t1,t3,0x1e
1c00e7d2:	01036833          	or	a6,t1,a6
1c00e7d6:	9e36                	add	t3,t3,a3
1c00e7d8:	95c2                	add	a1,a1,a6
1c00e7da:	00de36b3          	sltu	a3,t3,a3
1c00e7de:	96ae                	add	a3,a3,a1
1c00e7e0:	0686                	slli	a3,a3,0x1
1c00e7e2:	01fe5593          	srli	a1,t3,0x1f
1c00e7e6:	8ecd                	or	a3,a3,a1
1c00e7e8:	01c6d593          	srli	a1,a3,0x1c
1c00e7ec:	03058593          	addi	a1,a1,48
1c00e7f0:	00b781a3          	sb	a1,3(a5)
1c00e7f4:	ffc48c93          	addi	s9,s1,-4
1c00e7f8:	001e1313          	slli	t1,t3,0x1
1c00e7fc:	8ee9                	and	a3,a3,a0
1c00e7fe:	01904463          	bgtz	s9,1c00e806 <pos_libc_prf+0x892>
1c00e802:	2fa0106f          	j	1c00fafc <pos_libc_prf+0x1b88>
1c00e806:	003e1593          	slli	a1,t3,0x3
1c00e80a:	00269813          	slli	a6,a3,0x2
1c00e80e:	01e35e13          	srli	t3,t1,0x1e
1c00e812:	010e6833          	or	a6,t3,a6
1c00e816:	932e                	add	t1,t1,a1
1c00e818:	96c2                	add	a3,a3,a6
1c00e81a:	00b335b3          	sltu	a1,t1,a1
1c00e81e:	95b6                	add	a1,a1,a3
1c00e820:	0586                	slli	a1,a1,0x1
1c00e822:	01f35693          	srli	a3,t1,0x1f
1c00e826:	8dd5                	or	a1,a1,a3
1c00e828:	01c5d693          	srli	a3,a1,0x1c
1c00e82c:	03068693          	addi	a3,a3,48
1c00e830:	00d78223          	sb	a3,4(a5)
1c00e834:	ffb48c93          	addi	s9,s1,-5
1c00e838:	00131e13          	slli	t3,t1,0x1
1c00e83c:	8de9                	and	a1,a1,a0
1c00e83e:	01904463          	bgtz	s9,1c00e846 <pos_libc_prf+0x8d2>
1c00e842:	2b20106f          	j	1c00faf4 <pos_libc_prf+0x1b80>
1c00e846:	00331693          	slli	a3,t1,0x3
1c00e84a:	00259813          	slli	a6,a1,0x2
1c00e84e:	01ee5313          	srli	t1,t3,0x1e
1c00e852:	01036833          	or	a6,t1,a6
1c00e856:	9e36                	add	t3,t3,a3
1c00e858:	95c2                	add	a1,a1,a6
1c00e85a:	00de36b3          	sltu	a3,t3,a3
1c00e85e:	96ae                	add	a3,a3,a1
1c00e860:	0686                	slli	a3,a3,0x1
1c00e862:	01fe5593          	srli	a1,t3,0x1f
1c00e866:	8ecd                	or	a3,a3,a1
1c00e868:	01c6d593          	srli	a1,a3,0x1c
1c00e86c:	03058593          	addi	a1,a1,48
1c00e870:	00b782a3          	sb	a1,5(a5)
1c00e874:	ffa48c93          	addi	s9,s1,-6
1c00e878:	001e1313          	slli	t1,t3,0x1
1c00e87c:	8ee9                	and	a3,a3,a0
1c00e87e:	01904463          	bgtz	s9,1c00e886 <pos_libc_prf+0x912>
1c00e882:	26a0106f          	j	1c00faec <pos_libc_prf+0x1b78>
1c00e886:	003e1593          	slli	a1,t3,0x3
1c00e88a:	00269813          	slli	a6,a3,0x2
1c00e88e:	01e35e13          	srli	t3,t1,0x1e
1c00e892:	010e6833          	or	a6,t3,a6
1c00e896:	932e                	add	t1,t1,a1
1c00e898:	96c2                	add	a3,a3,a6
1c00e89a:	00b335b3          	sltu	a1,t1,a1
1c00e89e:	95b6                	add	a1,a1,a3
1c00e8a0:	0586                	slli	a1,a1,0x1
1c00e8a2:	01f35693          	srli	a3,t1,0x1f
1c00e8a6:	8dd5                	or	a1,a1,a3
1c00e8a8:	01c5d693          	srli	a3,a1,0x1c
1c00e8ac:	03068693          	addi	a3,a3,48
1c00e8b0:	00d78323          	sb	a3,6(a5)
1c00e8b4:	ff948c93          	addi	s9,s1,-7
1c00e8b8:	00131e13          	slli	t3,t1,0x1
1c00e8bc:	8de9                	and	a1,a1,a0
1c00e8be:	01904463          	bgtz	s9,1c00e8c6 <pos_libc_prf+0x952>
1c00e8c2:	2220106f          	j	1c00fae4 <pos_libc_prf+0x1b70>
1c00e8c6:	00331693          	slli	a3,t1,0x3
1c00e8ca:	00259813          	slli	a6,a1,0x2
1c00e8ce:	01ee5313          	srli	t1,t3,0x1e
1c00e8d2:	01036833          	or	a6,t1,a6
1c00e8d6:	9e36                	add	t3,t3,a3
1c00e8d8:	95c2                	add	a1,a1,a6
1c00e8da:	00de36b3          	sltu	a3,t3,a3
1c00e8de:	96ae                	add	a3,a3,a1
1c00e8e0:	0686                	slli	a3,a3,0x1
1c00e8e2:	01fe5593          	srli	a1,t3,0x1f
1c00e8e6:	8ecd                	or	a3,a3,a1
1c00e8e8:	01c6d593          	srli	a1,a3,0x1c
1c00e8ec:	03058593          	addi	a1,a1,48
1c00e8f0:	00b783a3          	sb	a1,7(a5)
1c00e8f4:	ff848c93          	addi	s9,s1,-8
1c00e8f8:	001e1313          	slli	t1,t3,0x1
1c00e8fc:	8ee9                	and	a3,a3,a0
1c00e8fe:	01904463          	bgtz	s9,1c00e906 <pos_libc_prf+0x992>
1c00e902:	1da0106f          	j	1c00fadc <pos_libc_prf+0x1b68>
1c00e906:	003e1593          	slli	a1,t3,0x3
1c00e90a:	00269813          	slli	a6,a3,0x2
1c00e90e:	01e35e13          	srli	t3,t1,0x1e
1c00e912:	010e6833          	or	a6,t3,a6
1c00e916:	932e                	add	t1,t1,a1
1c00e918:	96c2                	add	a3,a3,a6
1c00e91a:	00b335b3          	sltu	a1,t1,a1
1c00e91e:	95b6                	add	a1,a1,a3
1c00e920:	0586                	slli	a1,a1,0x1
1c00e922:	01f35693          	srli	a3,t1,0x1f
1c00e926:	8dd5                	or	a1,a1,a3
1c00e928:	01c5d693          	srli	a3,a1,0x1c
1c00e92c:	03068693          	addi	a3,a3,48
1c00e930:	00d78423          	sb	a3,8(a5)
1c00e934:	ff748c93          	addi	s9,s1,-9
1c00e938:	00131e13          	slli	t3,t1,0x1
1c00e93c:	8de9                	and	a1,a1,a0
1c00e93e:	01904463          	bgtz	s9,1c00e946 <pos_libc_prf+0x9d2>
1c00e942:	1920106f          	j	1c00fad4 <pos_libc_prf+0x1b60>
1c00e946:	00331693          	slli	a3,t1,0x3
1c00e94a:	00259813          	slli	a6,a1,0x2
1c00e94e:	01ee5e93          	srli	t4,t3,0x1e
1c00e952:	01c68333          	add	t1,a3,t3
1c00e956:	010ee833          	or	a6,t4,a6
1c00e95a:	982e                	add	a6,a6,a1
1c00e95c:	00d336b3          	sltu	a3,t1,a3
1c00e960:	96c2                	add	a3,a3,a6
1c00e962:	01f35593          	srli	a1,t1,0x1f
1c00e966:	0686                	slli	a3,a3,0x1
1c00e968:	8ecd                	or	a3,a3,a1
1c00e96a:	01c6d593          	srli	a1,a3,0x1c
1c00e96e:	03058593          	addi	a1,a1,48
1c00e972:	00b784a3          	sb	a1,9(a5)
1c00e976:	ff648c93          	addi	s9,s1,-10
1c00e97a:	8ee9                	and	a3,a3,a0
1c00e97c:	00131593          	slli	a1,t1,0x1
1c00e980:	00a78513          	addi	a0,a5,10
1c00e984:	15905063          	blez	s9,1c00eac4 <pos_libc_prf+0xb50>
1c00e988:	00259513          	slli	a0,a1,0x2
1c00e98c:	01e5d813          	srli	a6,a1,0x1e
1c00e990:	00269313          	slli	t1,a3,0x2
1c00e994:	95aa                	add	a1,a1,a0
1c00e996:	00686333          	or	t1,a6,t1
1c00e99a:	969a                	add	a3,a3,t1
1c00e99c:	00a5b833          	sltu	a6,a1,a0
1c00e9a0:	9836                	add	a6,a6,a3
1c00e9a2:	0806                	slli	a6,a6,0x1
1c00e9a4:	01f5d693          	srli	a3,a1,0x1f
1c00e9a8:	0106e833          	or	a6,a3,a6
1c00e9ac:	01c85313          	srli	t1,a6,0x1c
1c00e9b0:	03030313          	addi	t1,t1,48
1c00e9b4:	100006b7          	lui	a3,0x10000
1c00e9b8:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c00e9bc:	00678523          	sb	t1,10(a5)
1c00e9c0:	ff548c93          	addi	s9,s1,-11
1c00e9c4:	00159e13          	slli	t3,a1,0x1
1c00e9c8:	00a87833          	and	a6,a6,a0
1c00e9cc:	01904463          	bgtz	s9,1c00e9d4 <pos_libc_prf+0xa60>
1c00e9d0:	0fc0106f          	j	1c00facc <pos_libc_prf+0x1b58>
1c00e9d4:	00359693          	slli	a3,a1,0x3
1c00e9d8:	00281313          	slli	t1,a6,0x2
1c00e9dc:	01ee5e93          	srli	t4,t3,0x1e
1c00e9e0:	01c685b3          	add	a1,a3,t3
1c00e9e4:	006ee333          	or	t1,t4,t1
1c00e9e8:	981a                	add	a6,a6,t1
1c00e9ea:	00d5b6b3          	sltu	a3,a1,a3
1c00e9ee:	96c2                	add	a3,a3,a6
1c00e9f0:	0686                	slli	a3,a3,0x1
1c00e9f2:	01f5d813          	srli	a6,a1,0x1f
1c00e9f6:	00d866b3          	or	a3,a6,a3
1c00e9fa:	01c6d813          	srli	a6,a3,0x1c
1c00e9fe:	03080813          	addi	a6,a6,48
1c00ea02:	010785a3          	sb	a6,11(a5)
1c00ea06:	ff448c93          	addi	s9,s1,-12
1c00ea0a:	00159313          	slli	t1,a1,0x1
1c00ea0e:	8ee9                	and	a3,a3,a0
1c00ea10:	01904463          	bgtz	s9,1c00ea18 <pos_libc_prf+0xaa4>
1c00ea14:	0b00106f          	j	1c00fac4 <pos_libc_prf+0x1b50>
1c00ea18:	058e                	slli	a1,a1,0x3
1c00ea1a:	01e35e13          	srli	t3,t1,0x1e
1c00ea1e:	00269813          	slli	a6,a3,0x2
1c00ea22:	932e                	add	t1,t1,a1
1c00ea24:	010e6833          	or	a6,t3,a6
1c00ea28:	96c2                	add	a3,a3,a6
1c00ea2a:	00b335b3          	sltu	a1,t1,a1
1c00ea2e:	95b6                	add	a1,a1,a3
1c00ea30:	0586                	slli	a1,a1,0x1
1c00ea32:	01f35693          	srli	a3,t1,0x1f
1c00ea36:	8dd5                	or	a1,a1,a3
1c00ea38:	01c5d693          	srli	a3,a1,0x1c
1c00ea3c:	03068693          	addi	a3,a3,48
1c00ea40:	00d78623          	sb	a3,12(a5)
1c00ea44:	ff348c93          	addi	s9,s1,-13
1c00ea48:	00131813          	slli	a6,t1,0x1
1c00ea4c:	01904463          	bgtz	s9,1c00ea54 <pos_libc_prf+0xae0>
1c00ea50:	06c0106f          	j	1c00fabc <pos_libc_prf+0x1b48>
1c00ea54:	8de9                	and	a1,a1,a0
1c00ea56:	00331693          	slli	a3,t1,0x3
1c00ea5a:	01e85e13          	srli	t3,a6,0x1e
1c00ea5e:	00259313          	slli	t1,a1,0x2
1c00ea62:	9836                	add	a6,a6,a3
1c00ea64:	006e6333          	or	t1,t3,t1
1c00ea68:	959a                	add	a1,a1,t1
1c00ea6a:	00d836b3          	sltu	a3,a6,a3
1c00ea6e:	96ae                	add	a3,a3,a1
1c00ea70:	0686                	slli	a3,a3,0x1
1c00ea72:	01f85593          	srli	a1,a6,0x1f
1c00ea76:	8ecd                	or	a3,a3,a1
1c00ea78:	01c6d593          	srli	a1,a3,0x1c
1c00ea7c:	03058593          	addi	a1,a1,48
1c00ea80:	00b786a3          	sb	a1,13(a5)
1c00ea84:	ff248c93          	addi	s9,s1,-14
1c00ea88:	8ee9                	and	a3,a3,a0
1c00ea8a:	00181593          	slli	a1,a6,0x1
1c00ea8e:	00e78513          	addi	a0,a5,14
1c00ea92:	03905963          	blez	s9,1c00eac4 <pos_libc_prf+0xb50>
1c00ea96:	00381513          	slli	a0,a6,0x3
1c00ea9a:	01e5d313          	srli	t1,a1,0x1e
1c00ea9e:	00269813          	slli	a6,a3,0x2
1c00eaa2:	95aa                	add	a1,a1,a0
1c00eaa4:	01036833          	or	a6,t1,a6
1c00eaa8:	00a5b5b3          	sltu	a1,a1,a0
1c00eaac:	96c2                	add	a3,a3,a6
1c00eaae:	96ae                	add	a3,a3,a1
1c00eab0:	0686                	slli	a3,a3,0x1
1c00eab2:	82f1                	srli	a3,a3,0x1c
1c00eab4:	03068693          	addi	a3,a3,48
1c00eab8:	00f78513          	addi	a0,a5,15
1c00eabc:	00d78723          	sb	a3,14(a5)
1c00eac0:	ff148c93          	addi	s9,s1,-15
1c00eac4:	440f8563          	beqz	t6,1c00ef0e <pos_libc_prf+0xf9a>
1c00eac8:	4581                	li	a1,0
1c00eaca:	cc02                	sw	zero,24(sp)
1c00eacc:	4a01                	li	s4,0
1c00eace:	03000813          	li	a6,48
1c00ead2:	a011                	j	1c00ead6 <pos_libc_prf+0xb62>
1c00ead4:	853e                	mv	a0,a5
1c00ead6:	fff50793          	addi	a5,a0,-1
1c00eada:	0007c683          	lbu	a3,0(a5)
1c00eade:	ff068be3          	beq	a3,a6,1c00ead4 <pos_libc_prf+0xb60>
1c00eae2:	02e00813          	li	a6,46
1c00eae6:	4c81                	li	s9,0
1c00eae8:	01069363          	bne	a3,a6,1c00eaee <pos_libc_prf+0xb7a>
1c00eaec:	853e                	mv	a0,a5
1c00eaee:	0dfdf793          	andi	a5,s11,223
1c00eaf2:	04500693          	li	a3,69
1c00eaf6:	3ad78e63          	beq	a5,a3,1c00eeb2 <pos_libc_prf+0xf3e>
1c00eafa:	4782                	lw	a5,0(sp)
1c00eafc:	00050023          	sb	zero,0(a0)
1c00eb00:	8d1d                	sub	a0,a0,a5
1c00eb02:	4732                	lw	a4,12(sp)
1c00eb04:	2a071263          	bnez	a4,1c00eda8 <pos_libc_prf+0xe34>
1c00eb08:	47c2                	lw	a5,16(sp)
1c00eb0a:	28079f63          	bnez	a5,1c00eda8 <pos_libc_prf+0xe34>
1c00eb0e:	02414783          	lbu	a5,36(sp)
1c00eb12:	02d00693          	li	a3,45
1c00eb16:	c202                	sw	zero,4(sp)
1c00eb18:	28d78863          	beq	a5,a3,1c00eda8 <pos_libc_prf+0xe34>
1c00eb1c:	fd078793          	addi	a5,a5,-48
1c00eb20:	46a5                	li	a3,9
1c00eb22:	00b50933          	add	s2,a0,a1
1c00eb26:	a2f6f0e3          	bleu	a5,a3,1c00e546 <pos_libc_prf+0x5d2>
1c00eb2a:	412b0b33          	sub	s6,s6,s2
1c00eb2e:	1040                	addi	s0,sp,36
1c00eb30:	4481                	li	s1,0
1c00eb32:	ee6ff06f          	j	1c00e218 <pos_libc_prf+0x2a4>
1c00eb36:	000a2783          	lw	a5,0(s4)
1c00eb3a:	0a11                	addi	s4,s4,4
1c00eb3c:	ce52                	sw	s4,28(sp)
1c00eb3e:	02f10223          	sb	a5,36(sp)
1c00eb42:	1b7d                	addi	s6,s6,-1
1c00eb44:	4481                	li	s1,0
1c00eb46:	c202                	sw	zero,4(sp)
1c00eb48:	4905                	li	s2,1
1c00eb4a:	1040                	addi	s0,sp,36
1c00eb4c:	ec6ff06f          	j	1c00e212 <pos_libc_prf+0x29e>
1c00eb50:	04c00613          	li	a2,76
1c00eb54:	004a268b          	p.lw	a3,4(s4!)
1c00eb58:	5ac78ee3          	beq	a5,a2,1c00f914 <pos_libc_prf+0x19a0>
1c00eb5c:	28f65363          	ble	a5,a2,1c00ede2 <pos_libc_prf+0xe6e>
1c00eb60:	06800613          	li	a2,104
1c00eb64:	00c78663          	beq	a5,a2,1c00eb70 <pos_libc_prf+0xbfc>
1c00eb68:	0156a023          	sw	s5,0(a3)
1c00eb6c:	c46ff06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00eb70:	87d6                	mv	a5,s5
1c00eb72:	00f69023          	sh	a5,0(a3)
1c00eb76:	c3cff06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00eb7a:	004a0793          	addi	a5,s4,4
1c00eb7e:	7761                	lui	a4,0xffff8
1c00eb80:	02610593          	addi	a1,sp,38
1c00eb84:	ce3e                	sw	a5,28(sp)
1c00eb86:	83074713          	xori	a4,a4,-2000
1c00eb8a:	000a2783          	lw	a5,0(s4)
1c00eb8e:	4601                	li	a2,0
1c00eb90:	02e11223          	sh	a4,36(sp)
1c00eb94:	86ae                	mv	a3,a1
1c00eb96:	4ea5                	li	t4,9
1c00eb98:	f647b733          	p.bclr	a4,a5,27,4
1c00eb9c:	01c61513          	slli	a0,a2,0x1c
1c00eba0:	8391                	srli	a5,a5,0x4
1c00eba2:	8fc9                	or	a5,a5,a0
1c00eba4:	8211                	srli	a2,a2,0x4
1c00eba6:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c00ebaa:	03070893          	addi	a7,a4,48
1c00ebae:	00c7e333          	or	t1,a5,a2
1c00ebb2:	00eefa63          	bleu	a4,t4,1c00ebc6 <pos_libc_prf+0xc52>
1c00ebb6:	01c68023          	sb	t3,0(a3)
1c00ebba:	00168513          	addi	a0,a3,1
1c00ebbe:	00030a63          	beqz	t1,1c00ebd2 <pos_libc_prf+0xc5e>
1c00ebc2:	86aa                	mv	a3,a0
1c00ebc4:	bfd1                	j	1c00eb98 <pos_libc_prf+0xc24>
1c00ebc6:	01168023          	sb	a7,0(a3)
1c00ebca:	00168513          	addi	a0,a3,1
1c00ebce:	fe031ae3          	bnez	t1,1c00ebc2 <pos_libc_prf+0xc4e>
1c00ebd2:	00050023          	sb	zero,0(a0)
1c00ebd6:	8d0d                	sub	a0,a0,a1
1c00ebd8:	00d5fe63          	bleu	a3,a1,1c00ebf4 <pos_libc_prf+0xc80>
1c00ebdc:	87b6                	mv	a5,a3
1c00ebde:	86ae                	mv	a3,a1
1c00ebe0:	0006c603          	lbu	a2,0(a3)
1c00ebe4:	0007c703          	lbu	a4,0(a5)
1c00ebe8:	fec78fab          	p.sb	a2,-1(a5!)
1c00ebec:	00e680ab          	p.sb	a4,1(a3!)
1c00ebf0:	fef6e8e3          	bltu	a3,a5,1c00ebe0 <pos_libc_prf+0xc6c>
1c00ebf4:	4789                	li	a5,2
1c00ebf6:	00250913          	addi	s2,a0,2
1c00ebfa:	c23e                	sw	a5,4(sp)
1c00ebfc:	dfcff06f          	j	1c00e1f8 <pos_libc_prf+0x284>
1c00ec00:	85de                	mv	a1,s7
1c00ec02:	02500513          	li	a0,37
1c00ec06:	9982                	jalr	s3
1c00ec08:	cff52163          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00ec0c:	85de                	mv	a1,s7
1c00ec0e:	856e                	mv	a0,s11
1c00ec10:	9982                	jalr	s3
1c00ec12:	cdf52c63          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00ec16:	0a89                	addi	s5,s5,2
1c00ec18:	b9aff06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00ec1c:	007a0893          	addi	a7,s4,7
1c00ec20:	c408b8b3          	p.bclr	a7,a7,2,0
1c00ec24:	0008a783          	lw	a5,0(a7)
1c00ec28:	0048a303          	lw	t1,4(a7)
1c00ec2c:	0157d693          	srli	a3,a5,0x15
1c00ec30:	00b31513          	slli	a0,t1,0xb
1c00ec34:	08a1                	addi	a7,a7,8
1c00ec36:	01435813          	srli	a6,t1,0x14
1c00ec3a:	8d55                	or	a0,a0,a3
1c00ec3c:	ce46                	sw	a7,28(sp)
1c00ec3e:	e8b83833          	p.bclr	a6,a6,20,11
1c00ec42:	00b79593          	slli	a1,a5,0xb
1c00ec46:	c1f53533          	p.bclr	a0,a0,0,31
1c00ec4a:	1e034e63          	bltz	t1,1c00ee46 <pos_libc_prf+0xed2>
1c00ec4e:	47b2                	lw	a5,12(sp)
1c00ec50:	1c078f63          	beqz	a5,1c00ee2e <pos_libc_prf+0xeba>
1c00ec54:	02b00793          	li	a5,43
1c00ec58:	02f10223          	sb	a5,36(sp)
1c00ec5c:	02510313          	addi	t1,sp,37
1c00ec60:	7ff00793          	li	a5,2047
1c00ec64:	18f80863          	beq	a6,a5,1c00edf4 <pos_libc_prf+0xe80>
1c00ec68:	04600793          	li	a5,70
1c00ec6c:	0dfdfe13          	andi	t3,s11,223
1c00ec70:	32fd8e63          	beq	s11,a5,1c00efac <pos_libc_prf+0x1038>
1c00ec74:	41f85693          	srai	a3,a6,0x1f
1c00ec78:	00b867b3          	or	a5,a6,a1
1c00ec7c:	8ec9                	or	a3,a3,a0
1c00ec7e:	8fd5                	or	a5,a5,a3
1c00ec80:	8e0780e3          	beqz	a5,1c00e560 <pos_libc_prf+0x5ec>
1c00ec84:	02081363          	bnez	a6,1c00ecaa <pos_libc_prf+0xd36>
1c00ec88:	01f5d793          	srli	a5,a1,0x1f
1c00ec8c:	00151693          	slli	a3,a0,0x1
1c00ec90:	00d7e533          	or	a0,a5,a3
1c00ec94:	0586                	slli	a1,a1,0x1
1c00ec96:	5a054fe3          	bltz	a0,1c00fa54 <pos_libc_prf+0x1ae0>
1c00ec9a:	01f5d793          	srli	a5,a1,0x1f
1c00ec9e:	0506                	slli	a0,a0,0x1
1c00eca0:	8d5d                	or	a0,a0,a5
1c00eca2:	187d                	addi	a6,a6,-1
1c00eca4:	0586                	slli	a1,a1,0x1
1c00eca6:	fe055ae3          	bgez	a0,1c00ec9a <pos_libc_prf+0xd26>
1c00ecaa:	c0280813          	addi	a6,a6,-1022
1c00ecae:	57f9                	li	a5,-2
1c00ecb0:	c1f54533          	p.bset	a0,a0,0,31
1c00ecb4:	4881                	li	a7,0
1c00ecb6:	06f85763          	ble	a5,a6,1c00ed24 <pos_libc_prf+0xdb0>
1c00ecba:	33333eb7          	lui	t4,0x33333
1c00ecbe:	80000f37          	lui	t5,0x80000
1c00ecc2:	4881                	li	a7,0
1c00ecc4:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x1732312a>
1c00ecc8:	ffff4f13          	not	t5,t5
1c00eccc:	5ff9                	li	t6,-2
1c00ecce:	a011                	j	1c00ecd2 <pos_libc_prf+0xd5e>
1c00ecd0:	883e                	mv	a6,a5
1c00ecd2:	01f51693          	slli	a3,a0,0x1f
1c00ecd6:	0015d713          	srli	a4,a1,0x1
1c00ecda:	fc15b7b3          	p.bclr	a5,a1,30,1
1c00ecde:	8f55                	or	a4,a4,a3
1c00ece0:	00e785b3          	add	a1,a5,a4
1c00ece4:	00f5b7b3          	sltu	a5,a1,a5
1c00ece8:	8105                	srli	a0,a0,0x1
1c00ecea:	953e                	add	a0,a0,a5
1c00ecec:	00180793          	addi	a5,a6,1
1c00ecf0:	feaee0e3          	bltu	t4,a0,1c00ecd0 <pos_libc_prf+0xd5c>
1c00ecf4:	00259693          	slli	a3,a1,0x2
1c00ecf8:	01e5d613          	srli	a2,a1,0x1e
1c00ecfc:	00251713          	slli	a4,a0,0x2
1c00ed00:	95b6                	add	a1,a1,a3
1c00ed02:	8f51                	or	a4,a4,a2
1c00ed04:	953a                	add	a0,a0,a4
1c00ed06:	00d5b6b3          	sltu	a3,a1,a3
1c00ed0a:	9536                	add	a0,a0,a3
1c00ed0c:	01f5d713          	srli	a4,a1,0x1f
1c00ed10:	0809                	addi	a6,a6,2
1c00ed12:	18fd                	addi	a7,a7,-1
1c00ed14:	01e51663          	bne	a0,t5,1c00ed20 <pos_libc_prf+0xdac>
1c00ed18:	0586                	slli	a1,a1,0x1
1c00ed1a:	fc174533          	p.bset	a0,a4,30,1
1c00ed1e:	883e                	mv	a6,a5
1c00ed20:	fbf849e3          	blt	a6,t6,1c00ecd2 <pos_libc_prf+0xd5e>
1c00ed24:	80000f37          	lui	t5,0x80000
1c00ed28:	4f95                	li	t6,5
1c00ed2a:	ffff4f13          	not	t5,t5
1c00ed2e:	83005de3          	blez	a6,1c00e568 <pos_libc_prf+0x5f4>
1c00ed32:	00258693          	addi	a3,a1,2
1c00ed36:	00b6b5b3          	sltu	a1,a3,a1
1c00ed3a:	952e                	add	a0,a0,a1
1c00ed3c:	03f557b3          	divu	a5,a0,t6
1c00ed40:	00279713          	slli	a4,a5,0x2
1c00ed44:	973e                	add	a4,a4,a5
1c00ed46:	8d19                	sub	a0,a0,a4
1c00ed48:	01d51713          	slli	a4,a0,0x1d
1c00ed4c:	0036d613          	srli	a2,a3,0x3
1c00ed50:	8e59                	or	a2,a2,a4
1c00ed52:	03f65633          	divu	a2,a2,t6
1c00ed56:	00361593          	slli	a1,a2,0x3
1c00ed5a:	00561713          	slli	a4,a2,0x5
1c00ed5e:	972e                	add	a4,a4,a1
1c00ed60:	40e68733          	sub	a4,a3,a4
1c00ed64:	03f75733          	divu	a4,a4,t6
1c00ed68:	8275                	srli	a2,a2,0x1d
1c00ed6a:	95ba                	add	a1,a1,a4
1c00ed6c:	97b2                	add	a5,a5,a2
1c00ed6e:	00e5b733          	sltu	a4,a1,a4
1c00ed72:	00f70533          	add	a0,a4,a5
1c00ed76:	187d                	addi	a6,a6,-1
1c00ed78:	0885                	addi	a7,a7,1
1c00ed7a:	01f5d793          	srli	a5,a1,0x1f
1c00ed7e:	0506                	slli	a0,a0,0x1
1c00ed80:	8d5d                	or	a0,a0,a5
1c00ed82:	0586                	slli	a1,a1,0x1
1c00ed84:	187d                	addi	a6,a6,-1
1c00ed86:	feaf7ae3          	bleu	a0,t5,1c00ed7a <pos_libc_prf+0xe06>
1c00ed8a:	b755                	j	1c00ed2e <pos_libc_prf+0xdba>
1c00ed8c:	001d4d83          	lbu	s11,1(s10)
1c00ed90:	04c00793          	li	a5,76
1c00ed94:	0d09                	addi	s10,s10,2
1c00ed96:	ad6ff06f          	j	1c00e06c <pos_libc_prf+0xf8>
1c00ed9a:	001d4d83          	lbu	s11,1(s10)
1c00ed9e:	04800793          	li	a5,72
1c00eda2:	0d09                	addi	s10,s10,2
1c00eda4:	ac8ff06f          	j	1c00e06c <pos_libc_prf+0xf8>
1c00eda8:	4705                	li	a4,1
1c00edaa:	02514783          	lbu	a5,37(sp)
1c00edae:	c23a                	sw	a4,4(sp)
1c00edb0:	b3b5                	j	1c00eb1c <pos_libc_prf+0xba8>
1c00edb2:	004a0793          	addi	a5,s4,4
1c00edb6:	ce3e                	sw	a5,28(sp)
1c00edb8:	000a2403          	lw	s0,0(s4)
1c00edbc:	4c81                	li	s9,0
1c00edbe:	e92ff06f          	j	1c00e450 <pos_libc_prf+0x4dc>
1c00edc2:	4785                	li	a5,1
1c00edc4:	c23e                	sw	a5,4(sp)
1c00edc6:	c32ff06f          	j	1c00e1f8 <pos_libc_prf+0x284>
1c00edca:	4742                	lw	a4,16(sp)
1c00edcc:	22070063          	beqz	a4,1c00efec <pos_libc_prf+0x1078>
1c00edd0:	02000693          	li	a3,32
1c00edd4:	02d10223          	sb	a3,36(sp)
1c00edd8:	4c92                	lw	s9,4(sp)
1c00edda:	02510a13          	addi	s4,sp,37
1c00edde:	bacff06f          	j	1c00e18a <pos_libc_prf+0x216>
1c00ede2:	04800613          	li	a2,72
1c00ede6:	d8c791e3          	bne	a5,a2,1c00eb68 <pos_libc_prf+0xbf4>
1c00edea:	87d6                	mv	a5,s5
1c00edec:	00f68023          	sb	a5,0(a3)
1c00edf0:	9c2ff06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00edf4:	00a5e6b3          	or	a3,a1,a0
1c00edf8:	fbfd8613          	addi	a2,s11,-65
1c00edfc:	00330513          	addi	a0,t1,3
1c00ee00:	47e5                	li	a5,25
1c00ee02:	16069963          	bnez	a3,1c00ef74 <pos_libc_prf+0x1000>
1c00ee06:	3ec7e1e3          	bltu	a5,a2,1c00f9e8 <pos_libc_prf+0x1a74>
1c00ee0a:	6795                	lui	a5,0x5
1c00ee0c:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c00ee10:	00f31023          	sh	a5,0(t1)
1c00ee14:	04600793          	li	a5,70
1c00ee18:	00f30123          	sb	a5,2(t1)
1c00ee1c:	4782                	lw	a5,0(sp)
1c00ee1e:	000301a3          	sb	zero,3(t1)
1c00ee22:	8d1d                	sub	a0,a0,a5
1c00ee24:	4581                	li	a1,0
1c00ee26:	4c81                	li	s9,0
1c00ee28:	cc02                	sw	zero,24(sp)
1c00ee2a:	4a01                	li	s4,0
1c00ee2c:	b9d9                	j	1c00eb02 <pos_libc_prf+0xb8e>
1c00ee2e:	4742                	lw	a4,16(sp)
1c00ee30:	02410313          	addi	t1,sp,36
1c00ee34:	e20706e3          	beqz	a4,1c00ec60 <pos_libc_prf+0xcec>
1c00ee38:	02000793          	li	a5,32
1c00ee3c:	02f10223          	sb	a5,36(sp)
1c00ee40:	02510313          	addi	t1,sp,37
1c00ee44:	bd31                	j	1c00ec60 <pos_libc_prf+0xcec>
1c00ee46:	02d00793          	li	a5,45
1c00ee4a:	02f10223          	sb	a5,36(sp)
1c00ee4e:	02510313          	addi	t1,sp,37
1c00ee52:	b539                	j	1c00ec60 <pos_libc_prf+0xcec>
1c00ee54:	40f007b3          	neg	a5,a5
1c00ee58:	00f036b3          	snez	a3,a5
1c00ee5c:	40e00cb3          	neg	s9,a4
1c00ee60:	02d00613          	li	a2,45
1c00ee64:	02c10223          	sb	a2,36(sp)
1c00ee68:	40dc8cb3          	sub	s9,s9,a3
1c00ee6c:	02510a13          	addi	s4,sp,37
1c00ee70:	b1aff06f          	j	1c00e18a <pos_libc_prf+0x216>
1c00ee74:	56f5                	li	a3,-3
1c00ee76:	0cd8c063          	blt	a7,a3,1c00ef36 <pos_libc_prf+0xfc2>
1c00ee7a:	0b14ce63          	blt	s1,a7,1c00ef36 <pos_libc_prf+0xfc2>
1c00ee7e:	4712                	lw	a4,4(sp)
1c00ee80:	411484b3          	sub	s1,s1,a7
1c00ee84:	4f81                	li	t6,0
1c00ee86:	e709                	bnez	a4,1c00ee90 <pos_libc_prf+0xf1c>
1c00ee88:	00902fb3          	sgtz	t6,s1
1c00ee8c:	0fffff93          	andi	t6,t6,255
1c00ee90:	009886b3          	add	a3,a7,s1
1c00ee94:	2e06cae3          	bltz	a3,1c00f988 <pos_libc_prf+0x1a14>
1c00ee98:	4741                	li	a4,16
1c00ee9a:	04e6cf33          	p.min	t5,a3,a4
1c00ee9e:	1f7d                	addi	t5,t5,-1
1c00eea0:	06600d93          	li	s11,102
1c00eea4:	f0069a63          	bnez	a3,1c00e5b8 <pos_libc_prf+0x644>
1c00eea8:	4501                	li	a0,0
1c00eeaa:	080006b7          	lui	a3,0x8000
1c00eeae:	f76ff06f          	j	1c00e624 <pos_libc_prf+0x6b0>
1c00eeb2:	86aa                	mv	a3,a0
1c00eeb4:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c00eeb8:	2408c6e3          	bltz	a7,1c00f904 <pos_libc_prf+0x1990>
1c00eebc:	02b00793          	li	a5,43
1c00eec0:	00f500a3          	sb	a5,1(a0)
1c00eec4:	06300793          	li	a5,99
1c00eec8:	0117de63          	ble	a7,a5,1c00eee4 <pos_libc_prf+0xf70>
1c00eecc:	06400693          	li	a3,100
1c00eed0:	02d8c7b3          	div	a5,a7,a3
1c00eed4:	03078793          	addi	a5,a5,48
1c00eed8:	02d8e8b3          	rem	a7,a7,a3
1c00eedc:	00f50123          	sb	a5,2(a0)
1c00eee0:	00350693          	addi	a3,a0,3
1c00eee4:	47a9                	li	a5,10
1c00eee6:	02f8c633          	div	a2,a7,a5
1c00eeea:	02f8e7b3          	rem	a5,a7,a5
1c00eeee:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c00eef2:	8536                	mv	a0,a3
1c00eef4:	00c5012b          	p.sb	a2,2(a0!)
1c00eef8:	03078793          	addi	a5,a5,48
1c00eefc:	00f680a3          	sb	a5,1(a3)
1c00ef00:	beed                	j	1c00eafa <pos_libc_prf+0xb86>
1c00ef02:	800004b7          	lui	s1,0x80000
1c00ef06:	fff4c493          	not	s1,s1
1c00ef0a:	c3cff06f          	j	1c00e346 <pos_libc_prf+0x3d2>
1c00ef0e:	85e6                	mv	a1,s9
1c00ef10:	cc02                	sw	zero,24(sp)
1c00ef12:	4a01                	li	s4,0
1c00ef14:	bee9                	j	1c00eaee <pos_libc_prf+0xb7a>
1c00ef16:	4901                	li	s2,0
1c00ef18:	1054                	addi	a3,sp,36
1c00ef1a:	d60ff06f          	j	1c00e47a <pos_libc_prf+0x506>
1c00ef1e:	007a0793          	addi	a5,s4,7
1c00ef22:	c407b7b3          	p.bclr	a5,a5,2,0
1c00ef26:	00878713          	addi	a4,a5,8
1c00ef2a:	ce3a                	sw	a4,28(sp)
1c00ef2c:	4380                	lw	s0,0(a5)
1c00ef2e:	0047ac83          	lw	s9,4(a5)
1c00ef32:	d1eff06f          	j	1c00e450 <pos_libc_prf+0x4dc>
1c00ef36:	ffed8613          	addi	a2,s11,-2
1c00ef3a:	0ff67d93          	andi	s11,a2,255
1c00ef3e:	220486e3          	beqz	s1,1c00f96a <pos_libc_prf+0x19f6>
1c00ef42:	4712                	lw	a4,4(sp)
1c00ef44:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c00ef48:	1e071fe3          	bnez	a4,1c00f946 <pos_libc_prf+0x19d2>
1c00ef4c:	00d02fb3          	sgtz	t6,a3
1c00ef50:	0fffff93          	andi	t6,t6,255
1c00ef54:	84b6                	mv	s1,a3
1c00ef56:	e56ff06f          	j	1c00e5ac <pos_libc_prf+0x638>
1c00ef5a:	007a0693          	addi	a3,s4,7
1c00ef5e:	c406b6b3          	p.bclr	a3,a3,2,0
1c00ef62:	00868793          	addi	a5,a3,8
1c00ef66:	ce3e                	sw	a5,28(sp)
1c00ef68:	429c                	lw	a5,0(a3)
1c00ef6a:	42d4                	lw	a3,4(a3)
1c00ef6c:	c236                	sw	a3,4(sp)
1c00ef6e:	8736                	mv	a4,a3
1c00ef70:	a02ff06f          	j	1c00e172 <pos_libc_prf+0x1fe>
1c00ef74:	24c7efe3          	bltu	a5,a2,1c00f9d2 <pos_libc_prf+0x1a5e>
1c00ef78:	6791                	lui	a5,0x4
1c00ef7a:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c00ef7e:	00f31023          	sh	a5,0(t1)
1c00ef82:	04e00793          	li	a5,78
1c00ef86:	00f30123          	sb	a5,2(t1)
1c00ef8a:	bd49                	j	1c00ee1c <pos_libc_prf+0xea8>
1c00ef8c:	02e00793          	li	a5,46
1c00ef90:	00f300a3          	sb	a5,1(t1)
1c00ef94:	00230793          	addi	a5,t1,2
1c00ef98:	f6904163          	bgtz	s1,1c00e6fa <pos_libc_prf+0x786>
1c00ef9c:	8ca6                	mv	s9,s1
1c00ef9e:	853e                	mv	a0,a5
1c00efa0:	b615                	j	1c00eac4 <pos_libc_prf+0xb50>
1c00efa2:	4481                	li	s1,0
1c00efa4:	c202                	sw	zero,4(sp)
1c00efa6:	4901                	li	s2,0
1c00efa8:	a6aff06f          	j	1c00e212 <pos_libc_prf+0x29e>
1c00efac:	04600e13          	li	t3,70
1c00efb0:	06600d93          	li	s11,102
1c00efb4:	b1c1                	j	1c00ec74 <pos_libc_prf+0xd00>
1c00efb6:	105c                	addi	a5,sp,36
1c00efb8:	4565                	li	a0,25
1c00efba:	0017c70b          	p.lbu	a4,1(a5!)
1c00efbe:	f9f70693          	addi	a3,a4,-97
1c00efc2:	0ff6f693          	andi	a3,a3,255
1c00efc6:	fe070613          	addi	a2,a4,-32
1c00efca:	00d56e63          	bltu	a0,a3,1c00efe6 <pos_libc_prf+0x1072>
1c00efce:	fec78fa3          	sb	a2,-1(a5)
1c00efd2:	0017c70b          	p.lbu	a4,1(a5!)
1c00efd6:	f9f70693          	addi	a3,a4,-97
1c00efda:	0ff6f693          	andi	a3,a3,255
1c00efde:	fe070613          	addi	a2,a4,-32
1c00efe2:	fed576e3          	bleu	a3,a0,1c00efce <pos_libc_prf+0x105a>
1c00efe6:	fb71                	bnez	a4,1c00efba <pos_libc_prf+0x1046>
1c00efe8:	d4eff06f          	j	1c00e536 <pos_libc_prf+0x5c2>
1c00efec:	4c92                	lw	s9,4(sp)
1c00efee:	02410a13          	addi	s4,sp,36
1c00eff2:	998ff06f          	j	1c00e18a <pos_libc_prf+0x216>
1c00eff6:	4922                	lw	s2,8(sp)
1c00eff8:	8dd2                	mv	s11,s4
1c00effa:	a029                	j	1c00f004 <pos_libc_prf+0x1090>
1c00effc:	9982                	jalr	s3
1c00effe:	1dfd                	addi	s11,s11,-1
1c00f000:	8ff52563          	p.beqimm	a0,-1,1c00e0ea <pos_libc_prf+0x176>
1c00f004:	85de                	mv	a1,s7
1c00f006:	03000513          	li	a0,48
1c00f00a:	ffb049e3          	bgtz	s11,1c00effc <pos_libc_prf+0x1088>
1c00f00e:	41490933          	sub	s2,s2,s4
1c00f012:	a62ff06f          	j	1c00e274 <pos_libc_prf+0x300>
1c00f016:	4712                	lw	a4,4(sp)
1c00f018:	12070fe3          	beqz	a4,1c00f956 <pos_libc_prf+0x19e2>
1c00f01c:	03000793          	li	a5,48
1c00f020:	02f10223          	sb	a5,36(sp)
1c00f024:	019467b3          	or	a5,s0,s9
1c00f028:	14078ae3          	beqz	a5,1c00f97c <pos_libc_prf+0x1a08>
1c00f02c:	02510593          	addi	a1,sp,37
1c00f030:	4905                	li	s2,1
1c00f032:	86ae                	mv	a3,a1
1c00f034:	87b6                	mv	a5,a3
1c00f036:	a011                	j	1c00f03a <pos_libc_prf+0x10c6>
1c00f038:	87b2                	mv	a5,a2
1c00f03a:	01dc9613          	slli	a2,s9,0x1d
1c00f03e:	f8343733          	p.bclr	a4,s0,28,3
1c00f042:	800d                	srli	s0,s0,0x3
1c00f044:	8c51                	or	s0,s0,a2
1c00f046:	03070713          	addi	a4,a4,48
1c00f04a:	003cdc93          	srli	s9,s9,0x3
1c00f04e:	00e78023          	sb	a4,0(a5)
1c00f052:	01946733          	or	a4,s0,s9
1c00f056:	00178613          	addi	a2,a5,1
1c00f05a:	ff79                	bnez	a4,1c00f038 <pos_libc_prf+0x10c4>
1c00f05c:	00060023          	sb	zero,0(a2)
1c00f060:	8e0d                	sub	a2,a2,a1
1c00f062:	00f6fc63          	bleu	a5,a3,1c00f07a <pos_libc_prf+0x1106>
1c00f066:	0006c583          	lbu	a1,0(a3)
1c00f06a:	0007c703          	lbu	a4,0(a5)
1c00f06e:	feb78fab          	p.sb	a1,-1(a5!)
1c00f072:	00e680ab          	p.sb	a4,1(a3!)
1c00f076:	fef6e8e3          	bltu	a3,a5,1c00f066 <pos_libc_prf+0x10f2>
1c00f07a:	9932                	add	s2,s2,a2
1c00f07c:	c202                	sw	zero,4(sp)
1c00f07e:	97aff06f          	j	1c00e1f8 <pos_libc_prf+0x284>
1c00f082:	111057e3          	blez	a7,1c00f990 <pos_libc_prf+0x1a1c>
1c00f086:	00279e13          	slli	t3,a5,0x2
1c00f08a:	01e7df13          	srli	t5,a5,0x1e
1c00f08e:	00269e93          	slli	t4,a3,0x2
1c00f092:	00fe05b3          	add	a1,t3,a5
1c00f096:	01df6eb3          	or	t4,t5,t4
1c00f09a:	9eb6                	add	t4,t4,a3
1c00f09c:	01c5b6b3          	sltu	a3,a1,t3
1c00f0a0:	96f6                	add	a3,a3,t4
1c00f0a2:	01f5d793          	srli	a5,a1,0x1f
1c00f0a6:	0686                	slli	a3,a3,0x1
1c00f0a8:	8edd                	or	a3,a3,a5
1c00f0aa:	01c6d793          	srli	a5,a3,0x1c
1c00f0ae:	03078793          	addi	a5,a5,48
1c00f0b2:	10000e37          	lui	t3,0x10000
1c00f0b6:	1e7d                	addi	t3,t3,-1
1c00f0b8:	00f30023          	sb	a5,0(t1)
1c00f0bc:	01c6f6b3          	and	a3,a3,t3
1c00f0c0:	00159793          	slli	a5,a1,0x1
1c00f0c4:	1618aee3          	p.beqimm	a7,1,1c00fa40 <pos_libc_prf+0x1acc>
1c00f0c8:	01e7df13          	srli	t5,a5,0x1e
1c00f0cc:	00269e93          	slli	t4,a3,0x2
1c00f0d0:	058e                	slli	a1,a1,0x3
1c00f0d2:	00f58533          	add	a0,a1,a5
1c00f0d6:	01df6eb3          	or	t4,t5,t4
1c00f0da:	9eb6                	add	t4,t4,a3
1c00f0dc:	00b536b3          	sltu	a3,a0,a1
1c00f0e0:	96f6                	add	a3,a3,t4
1c00f0e2:	01f55793          	srli	a5,a0,0x1f
1c00f0e6:	0686                	slli	a3,a3,0x1
1c00f0e8:	8edd                	or	a3,a3,a5
1c00f0ea:	01c6d793          	srli	a5,a3,0x1c
1c00f0ee:	03078793          	addi	a5,a5,48
1c00f0f2:	00f300a3          	sb	a5,1(t1)
1c00f0f6:	01c6f6b3          	and	a3,a3,t3
1c00f0fa:	00151793          	slli	a5,a0,0x1
1c00f0fe:	1628a3e3          	p.beqimm	a7,2,1c00fa64 <pos_libc_prf+0x1af0>
1c00f102:	01e7df13          	srli	t5,a5,0x1e
1c00f106:	00269e93          	slli	t4,a3,0x2
1c00f10a:	050e                	slli	a0,a0,0x3
1c00f10c:	00f505b3          	add	a1,a0,a5
1c00f110:	01df6eb3          	or	t4,t5,t4
1c00f114:	9eb6                	add	t4,t4,a3
1c00f116:	00a5b6b3          	sltu	a3,a1,a0
1c00f11a:	96f6                	add	a3,a3,t4
1c00f11c:	01f5d793          	srli	a5,a1,0x1f
1c00f120:	0686                	slli	a3,a3,0x1
1c00f122:	8edd                	or	a3,a3,a5
1c00f124:	01c6d793          	srli	a5,a3,0x1c
1c00f128:	03078793          	addi	a5,a5,48
1c00f12c:	00f30123          	sb	a5,2(t1)
1c00f130:	ffd88a13          	addi	s4,a7,-3
1c00f134:	00159793          	slli	a5,a1,0x1
1c00f138:	01c6f6b3          	and	a3,a3,t3
1c00f13c:	134050e3          	blez	s4,1c00fa5c <pos_libc_prf+0x1ae8>
1c00f140:	01e7df13          	srli	t5,a5,0x1e
1c00f144:	00269e93          	slli	t4,a3,0x2
1c00f148:	058e                	slli	a1,a1,0x3
1c00f14a:	00f58533          	add	a0,a1,a5
1c00f14e:	01df6eb3          	or	t4,t5,t4
1c00f152:	9eb6                	add	t4,t4,a3
1c00f154:	00b536b3          	sltu	a3,a0,a1
1c00f158:	96f6                	add	a3,a3,t4
1c00f15a:	01f55793          	srli	a5,a0,0x1f
1c00f15e:	0686                	slli	a3,a3,0x1
1c00f160:	8edd                	or	a3,a3,a5
1c00f162:	01c6d793          	srli	a5,a3,0x1c
1c00f166:	03078793          	addi	a5,a5,48
1c00f16a:	00f301a3          	sb	a5,3(t1)
1c00f16e:	ffc88a13          	addi	s4,a7,-4
1c00f172:	00151793          	slli	a5,a0,0x1
1c00f176:	01c6f6b3          	and	a3,a3,t3
1c00f17a:	134056e3          	blez	s4,1c00faa6 <pos_libc_prf+0x1b32>
1c00f17e:	01e7df13          	srli	t5,a5,0x1e
1c00f182:	00269e93          	slli	t4,a3,0x2
1c00f186:	050e                	slli	a0,a0,0x3
1c00f188:	00f505b3          	add	a1,a0,a5
1c00f18c:	01df6eb3          	or	t4,t5,t4
1c00f190:	9eb6                	add	t4,t4,a3
1c00f192:	00a5b6b3          	sltu	a3,a1,a0
1c00f196:	96f6                	add	a3,a3,t4
1c00f198:	01f5d793          	srli	a5,a1,0x1f
1c00f19c:	0686                	slli	a3,a3,0x1
1c00f19e:	8edd                	or	a3,a3,a5
1c00f1a0:	01c6d793          	srli	a5,a3,0x1c
1c00f1a4:	03078793          	addi	a5,a5,48
1c00f1a8:	00f30223          	sb	a5,4(t1)
1c00f1ac:	ffb88a13          	addi	s4,a7,-5
1c00f1b0:	00159793          	slli	a5,a1,0x1
1c00f1b4:	01c6f6b3          	and	a3,a3,t3
1c00f1b8:	0f4053e3          	blez	s4,1c00fa9e <pos_libc_prf+0x1b2a>
1c00f1bc:	01e7df13          	srli	t5,a5,0x1e
1c00f1c0:	00269e93          	slli	t4,a3,0x2
1c00f1c4:	058e                	slli	a1,a1,0x3
1c00f1c6:	00f58533          	add	a0,a1,a5
1c00f1ca:	01df6eb3          	or	t4,t5,t4
1c00f1ce:	9eb6                	add	t4,t4,a3
1c00f1d0:	00b536b3          	sltu	a3,a0,a1
1c00f1d4:	96f6                	add	a3,a3,t4
1c00f1d6:	01f55793          	srli	a5,a0,0x1f
1c00f1da:	0686                	slli	a3,a3,0x1
1c00f1dc:	8edd                	or	a3,a3,a5
1c00f1de:	01c6d793          	srli	a5,a3,0x1c
1c00f1e2:	03078793          	addi	a5,a5,48
1c00f1e6:	00f302a3          	sb	a5,5(t1)
1c00f1ea:	ffa88a13          	addi	s4,a7,-6
1c00f1ee:	00151793          	slli	a5,a0,0x1
1c00f1f2:	01c6f6b3          	and	a3,a3,t3
1c00f1f6:	0b4050e3          	blez	s4,1c00fa96 <pos_libc_prf+0x1b22>
1c00f1fa:	01e7df13          	srli	t5,a5,0x1e
1c00f1fe:	00269e93          	slli	t4,a3,0x2
1c00f202:	050e                	slli	a0,a0,0x3
1c00f204:	00f505b3          	add	a1,a0,a5
1c00f208:	01df6eb3          	or	t4,t5,t4
1c00f20c:	9eb6                	add	t4,t4,a3
1c00f20e:	00a5b6b3          	sltu	a3,a1,a0
1c00f212:	96f6                	add	a3,a3,t4
1c00f214:	01f5d793          	srli	a5,a1,0x1f
1c00f218:	0686                	slli	a3,a3,0x1
1c00f21a:	8edd                	or	a3,a3,a5
1c00f21c:	01c6d793          	srli	a5,a3,0x1c
1c00f220:	03078793          	addi	a5,a5,48
1c00f224:	00f30323          	sb	a5,6(t1)
1c00f228:	ff988a13          	addi	s4,a7,-7
1c00f22c:	00159793          	slli	a5,a1,0x1
1c00f230:	01c6f6b3          	and	a3,a3,t3
1c00f234:	05405de3          	blez	s4,1c00fa8e <pos_libc_prf+0x1b1a>
1c00f238:	058e                	slli	a1,a1,0x3
1c00f23a:	01e7de93          	srli	t4,a5,0x1e
1c00f23e:	00269513          	slli	a0,a3,0x2
1c00f242:	97ae                	add	a5,a5,a1
1c00f244:	00aee533          	or	a0,t4,a0
1c00f248:	9536                	add	a0,a0,a3
1c00f24a:	00b7b6b3          	sltu	a3,a5,a1
1c00f24e:	96aa                	add	a3,a3,a0
1c00f250:	01f7d593          	srli	a1,a5,0x1f
1c00f254:	0686                	slli	a3,a3,0x1
1c00f256:	8ecd                	or	a3,a3,a1
1c00f258:	01c6d593          	srli	a1,a3,0x1c
1c00f25c:	03058593          	addi	a1,a1,48
1c00f260:	0786                	slli	a5,a5,0x1
1c00f262:	00b303a3          	sb	a1,7(t1)
1c00f266:	ff888a13          	addi	s4,a7,-8
1c00f26a:	85be                	mv	a1,a5
1c00f26c:	01c6f6b3          	and	a3,a3,t3
1c00f270:	01405be3          	blez	s4,1c00fa86 <pos_libc_prf+0x1b12>
1c00f274:	078a                	slli	a5,a5,0x2
1c00f276:	01e5de13          	srli	t3,a1,0x1e
1c00f27a:	00269513          	slli	a0,a3,0x2
1c00f27e:	95be                	add	a1,a1,a5
1c00f280:	00ae6533          	or	a0,t3,a0
1c00f284:	9536                	add	a0,a0,a3
1c00f286:	00f5b6b3          	sltu	a3,a1,a5
1c00f28a:	96aa                	add	a3,a3,a0
1c00f28c:	01f5d793          	srli	a5,a1,0x1f
1c00f290:	0686                	slli	a3,a3,0x1
1c00f292:	8edd                	or	a3,a3,a5
1c00f294:	01c6d793          	srli	a5,a3,0x1c
1c00f298:	03078793          	addi	a5,a5,48
1c00f29c:	10000e37          	lui	t3,0x10000
1c00f2a0:	1e7d                	addi	t3,t3,-1
1c00f2a2:	00f30423          	sb	a5,8(t1)
1c00f2a6:	ff788a13          	addi	s4,a7,-9
1c00f2aa:	00159793          	slli	a5,a1,0x1
1c00f2ae:	01c6f6b3          	and	a3,a3,t3
1c00f2b2:	7d405663          	blez	s4,1c00fa7e <pos_libc_prf+0x1b0a>
1c00f2b6:	01e7df13          	srli	t5,a5,0x1e
1c00f2ba:	00269e93          	slli	t4,a3,0x2
1c00f2be:	058e                	slli	a1,a1,0x3
1c00f2c0:	00f58533          	add	a0,a1,a5
1c00f2c4:	01df6eb3          	or	t4,t5,t4
1c00f2c8:	9eb6                	add	t4,t4,a3
1c00f2ca:	00b536b3          	sltu	a3,a0,a1
1c00f2ce:	96f6                	add	a3,a3,t4
1c00f2d0:	01f55793          	srli	a5,a0,0x1f
1c00f2d4:	0686                	slli	a3,a3,0x1
1c00f2d6:	8edd                	or	a3,a3,a5
1c00f2d8:	01c6d793          	srli	a5,a3,0x1c
1c00f2dc:	03078793          	addi	a5,a5,48
1c00f2e0:	00f304a3          	sb	a5,9(t1)
1c00f2e4:	ff688a13          	addi	s4,a7,-10
1c00f2e8:	00151793          	slli	a5,a0,0x1
1c00f2ec:	01c6f6b3          	and	a3,a3,t3
1c00f2f0:	79405363          	blez	s4,1c00fa76 <pos_libc_prf+0x1b02>
1c00f2f4:	01e7df13          	srli	t5,a5,0x1e
1c00f2f8:	00269e93          	slli	t4,a3,0x2
1c00f2fc:	050e                	slli	a0,a0,0x3
1c00f2fe:	00f505b3          	add	a1,a0,a5
1c00f302:	01df6eb3          	or	t4,t5,t4
1c00f306:	9eb6                	add	t4,t4,a3
1c00f308:	00a5b6b3          	sltu	a3,a1,a0
1c00f30c:	96f6                	add	a3,a3,t4
1c00f30e:	01f5d793          	srli	a5,a1,0x1f
1c00f312:	0686                	slli	a3,a3,0x1
1c00f314:	8edd                	or	a3,a3,a5
1c00f316:	01c6d793          	srli	a5,a3,0x1c
1c00f31a:	03078793          	addi	a5,a5,48
1c00f31e:	00f30523          	sb	a5,10(t1)
1c00f322:	ff588a13          	addi	s4,a7,-11
1c00f326:	00159793          	slli	a5,a1,0x1
1c00f32a:	01c6f6b3          	and	a3,a3,t3
1c00f32e:	75405063          	blez	s4,1c00fa6e <pos_libc_prf+0x1afa>
1c00f332:	01e7df13          	srli	t5,a5,0x1e
1c00f336:	00269e93          	slli	t4,a3,0x2
1c00f33a:	058e                	slli	a1,a1,0x3
1c00f33c:	00f58533          	add	a0,a1,a5
1c00f340:	01df6eb3          	or	t4,t5,t4
1c00f344:	9eb6                	add	t4,t4,a3
1c00f346:	00b536b3          	sltu	a3,a0,a1
1c00f34a:	96f6                	add	a3,a3,t4
1c00f34c:	01f55793          	srli	a5,a0,0x1f
1c00f350:	0686                	slli	a3,a3,0x1
1c00f352:	8edd                	or	a3,a3,a5
1c00f354:	01c6d793          	srli	a5,a3,0x1c
1c00f358:	03078793          	addi	a5,a5,48
1c00f35c:	00f305a3          	sb	a5,11(t1)
1c00f360:	ff488a13          	addi	s4,a7,-12
1c00f364:	00151793          	slli	a5,a0,0x1
1c00f368:	01c6f6b3          	and	a3,a3,t3
1c00f36c:	6f405163          	blez	s4,1c00fa4e <pos_libc_prf+0x1ada>
1c00f370:	050e                	slli	a0,a0,0x3
1c00f372:	01e7de93          	srli	t4,a5,0x1e
1c00f376:	00269813          	slli	a6,a3,0x2
1c00f37a:	00f505b3          	add	a1,a0,a5
1c00f37e:	010ee833          	or	a6,t4,a6
1c00f382:	9836                	add	a6,a6,a3
1c00f384:	00a5b6b3          	sltu	a3,a1,a0
1c00f388:	96c2                	add	a3,a3,a6
1c00f38a:	01f5d793          	srli	a5,a1,0x1f
1c00f38e:	0686                	slli	a3,a3,0x1
1c00f390:	8edd                	or	a3,a3,a5
1c00f392:	01c6d793          	srli	a5,a3,0x1c
1c00f396:	03078793          	addi	a5,a5,48
1c00f39a:	00f30623          	sb	a5,12(t1)
1c00f39e:	ff388a13          	addi	s4,a7,-13
1c00f3a2:	00159793          	slli	a5,a1,0x1
1c00f3a6:	01c6f6b3          	and	a3,a3,t3
1c00f3aa:	00d30513          	addi	a0,t1,13
1c00f3ae:	480d                	li	a6,3
1c00f3b0:	0d405163          	blez	s4,1c00f472 <pos_libc_prf+0x14fe>
1c00f3b4:	01e7de93          	srli	t4,a5,0x1e
1c00f3b8:	00269813          	slli	a6,a3,0x2
1c00f3bc:	058e                	slli	a1,a1,0x3
1c00f3be:	00f58533          	add	a0,a1,a5
1c00f3c2:	010ee833          	or	a6,t4,a6
1c00f3c6:	9836                	add	a6,a6,a3
1c00f3c8:	00b536b3          	sltu	a3,a0,a1
1c00f3cc:	96c2                	add	a3,a3,a6
1c00f3ce:	01f55793          	srli	a5,a0,0x1f
1c00f3d2:	0686                	slli	a3,a3,0x1
1c00f3d4:	8edd                	or	a3,a3,a5
1c00f3d6:	01c6d793          	srli	a5,a3,0x1c
1c00f3da:	03078793          	addi	a5,a5,48
1c00f3de:	00f306a3          	sb	a5,13(t1)
1c00f3e2:	ff288a13          	addi	s4,a7,-14
1c00f3e6:	00151793          	slli	a5,a0,0x1
1c00f3ea:	01c6f6b3          	and	a3,a3,t3
1c00f3ee:	65405c63          	blez	s4,1c00fa46 <pos_libc_prf+0x1ad2>
1c00f3f2:	050e                	slli	a0,a0,0x3
1c00f3f4:	01e7de93          	srli	t4,a5,0x1e
1c00f3f8:	00269813          	slli	a6,a3,0x2
1c00f3fc:	00f505b3          	add	a1,a0,a5
1c00f400:	010ee833          	or	a6,t4,a6
1c00f404:	9836                	add	a6,a6,a3
1c00f406:	00a5b6b3          	sltu	a3,a1,a0
1c00f40a:	96c2                	add	a3,a3,a6
1c00f40c:	01f5d793          	srli	a5,a1,0x1f
1c00f410:	0686                	slli	a3,a3,0x1
1c00f412:	8edd                	or	a3,a3,a5
1c00f414:	01c6d793          	srli	a5,a3,0x1c
1c00f418:	03078793          	addi	a5,a5,48
1c00f41c:	00f30723          	sb	a5,14(t1)
1c00f420:	ff188a13          	addi	s4,a7,-15
1c00f424:	00159793          	slli	a5,a1,0x1
1c00f428:	01c6f6b3          	and	a3,a3,t3
1c00f42c:	00f30513          	addi	a0,t1,15
1c00f430:	4805                	li	a6,1
1c00f432:	05405063          	blez	s4,1c00f472 <pos_libc_prf+0x14fe>
1c00f436:	01e7d813          	srli	a6,a5,0x1e
1c00f43a:	058e                	slli	a1,a1,0x3
1c00f43c:	00269513          	slli	a0,a3,0x2
1c00f440:	97ae                	add	a5,a5,a1
1c00f442:	00a86533          	or	a0,a6,a0
1c00f446:	9536                	add	a0,a0,a3
1c00f448:	00b7b6b3          	sltu	a3,a5,a1
1c00f44c:	96aa                	add	a3,a3,a0
1c00f44e:	01f7d593          	srli	a1,a5,0x1f
1c00f452:	0686                	slli	a3,a3,0x1
1c00f454:	8ecd                	or	a3,a3,a1
1c00f456:	01c6d593          	srli	a1,a3,0x1c
1c00f45a:	03058593          	addi	a1,a1,48
1c00f45e:	01030513          	addi	a0,t1,16
1c00f462:	0786                	slli	a5,a5,0x1
1c00f464:	01c6f6b3          	and	a3,a3,t3
1c00f468:	00b307a3          	sb	a1,15(t1)
1c00f46c:	ff088a13          	addi	s4,a7,-16
1c00f470:	4801                	li	a6,0
1c00f472:	4712                	lw	a4,4(sp)
1c00f474:	4e070663          	beqz	a4,1c00f960 <pos_libc_prf+0x19ec>
1c00f478:	02e00893          	li	a7,46
1c00f47c:	01150023          	sb	a7,0(a0)
1c00f480:	8326                	mv	t1,s1
1c00f482:	cc02                	sw	zero,24(sp)
1c00f484:	00150593          	addi	a1,a0,1
1c00f488:	4881                	li	a7,0
1c00f48a:	62605263          	blez	t1,1c00faae <pos_libc_prf+0x1b3a>
1c00f48e:	62080063          	beqz	a6,1c00faae <pos_libc_prf+0x1b3a>
1c00f492:	00279513          	slli	a0,a5,0x2
1c00f496:	01e7de93          	srli	t4,a5,0x1e
1c00f49a:	00269e13          	slli	t3,a3,0x2
1c00f49e:	97aa                	add	a5,a5,a0
1c00f4a0:	01ceee33          	or	t3,t4,t3
1c00f4a4:	96f2                	add	a3,a3,t3
1c00f4a6:	00a7beb3          	sltu	t4,a5,a0
1c00f4aa:	9eb6                	add	t4,t4,a3
1c00f4ac:	0e86                	slli	t4,t4,0x1
1c00f4ae:	01f7d693          	srli	a3,a5,0x1f
1c00f4b2:	01d6eeb3          	or	t4,a3,t4
1c00f4b6:	01ced693          	srli	a3,t4,0x1c
1c00f4ba:	03068693          	addi	a3,a3,48
1c00f4be:	00d58023          	sb	a3,0(a1)
1c00f4c2:	fff30493          	addi	s1,t1,-1
1c00f4c6:	00158513          	addi	a0,a1,1
1c00f4ca:	00179693          	slli	a3,a5,0x1
1c00f4ce:	42048263          	beqz	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f4d2:	42182063          	p.beqimm	a6,1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f4d6:	10000e37          	lui	t3,0x10000
1c00f4da:	1e7d                	addi	t3,t3,-1
1c00f4dc:	01cefeb3          	and	t4,t4,t3
1c00f4e0:	078e                	slli	a5,a5,0x3
1c00f4e2:	01e6df13          	srli	t5,a3,0x1e
1c00f4e6:	002e9513          	slli	a0,t4,0x2
1c00f4ea:	96be                	add	a3,a3,a5
1c00f4ec:	00af6533          	or	a0,t5,a0
1c00f4f0:	9eaa                	add	t4,t4,a0
1c00f4f2:	00f6b7b3          	sltu	a5,a3,a5
1c00f4f6:	97f6                	add	a5,a5,t4
1c00f4f8:	01f6d513          	srli	a0,a3,0x1f
1c00f4fc:	0786                	slli	a5,a5,0x1
1c00f4fe:	8fc9                	or	a5,a5,a0
1c00f500:	01c7d513          	srli	a0,a5,0x1c
1c00f504:	03050513          	addi	a0,a0,48
1c00f508:	00a580a3          	sb	a0,1(a1)
1c00f50c:	ffe30493          	addi	s1,t1,-2
1c00f510:	00258513          	addi	a0,a1,2
1c00f514:	00169e93          	slli	t4,a3,0x1
1c00f518:	01c7f7b3          	and	a5,a5,t3
1c00f51c:	3c048b63          	beqz	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f520:	3c282963          	p.beqimm	a6,2,1c00f8f2 <pos_libc_prf+0x197e>
1c00f524:	01eedf13          	srli	t5,t4,0x1e
1c00f528:	068e                	slli	a3,a3,0x3
1c00f52a:	00279513          	slli	a0,a5,0x2
1c00f52e:	9eb6                	add	t4,t4,a3
1c00f530:	00af6533          	or	a0,t5,a0
1c00f534:	00deb6b3          	sltu	a3,t4,a3
1c00f538:	97aa                	add	a5,a5,a0
1c00f53a:	97b6                	add	a5,a5,a3
1c00f53c:	0786                	slli	a5,a5,0x1
1c00f53e:	01fed693          	srli	a3,t4,0x1f
1c00f542:	8fd5                	or	a5,a5,a3
1c00f544:	01c7d693          	srli	a3,a5,0x1c
1c00f548:	03068693          	addi	a3,a3,48
1c00f54c:	00d58123          	sb	a3,2(a1)
1c00f550:	ffd30493          	addi	s1,t1,-3
1c00f554:	00358513          	addi	a0,a1,3
1c00f558:	001e9693          	slli	a3,t4,0x1
1c00f55c:	01c7ff33          	and	t5,a5,t3
1c00f560:	38905963          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f564:	38382763          	p.beqimm	a6,3,1c00f8f2 <pos_libc_prf+0x197e>
1c00f568:	003e9513          	slli	a0,t4,0x3
1c00f56c:	01e6d793          	srli	a5,a3,0x1e
1c00f570:	002f1e93          	slli	t4,t5,0x2
1c00f574:	96aa                	add	a3,a3,a0
1c00f576:	01d7eeb3          	or	t4,a5,t4
1c00f57a:	9efa                	add	t4,t4,t5
1c00f57c:	00a6b7b3          	sltu	a5,a3,a0
1c00f580:	97f6                	add	a5,a5,t4
1c00f582:	01f6d513          	srli	a0,a3,0x1f
1c00f586:	0786                	slli	a5,a5,0x1
1c00f588:	8fc9                	or	a5,a5,a0
1c00f58a:	01c7d513          	srli	a0,a5,0x1c
1c00f58e:	03050513          	addi	a0,a0,48
1c00f592:	00a581a3          	sb	a0,3(a1)
1c00f596:	ffc30493          	addi	s1,t1,-4
1c00f59a:	00458513          	addi	a0,a1,4
1c00f59e:	00169e93          	slli	t4,a3,0x1
1c00f5a2:	01c7fe33          	and	t3,a5,t3
1c00f5a6:	34905663          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f5aa:	34482463          	p.beqimm	a6,4,1c00f8f2 <pos_libc_prf+0x197e>
1c00f5ae:	068e                	slli	a3,a3,0x3
1c00f5b0:	01eed793          	srli	a5,t4,0x1e
1c00f5b4:	002e1513          	slli	a0,t3,0x2
1c00f5b8:	9eb6                	add	t4,t4,a3
1c00f5ba:	8d5d                	or	a0,a0,a5
1c00f5bc:	9e2a                	add	t3,t3,a0
1c00f5be:	00deb7b3          	sltu	a5,t4,a3
1c00f5c2:	97f2                	add	a5,a5,t3
1c00f5c4:	01fed693          	srli	a3,t4,0x1f
1c00f5c8:	0786                	slli	a5,a5,0x1
1c00f5ca:	8fd5                	or	a5,a5,a3
1c00f5cc:	01c7d693          	srli	a3,a5,0x1c
1c00f5d0:	03068693          	addi	a3,a3,48
1c00f5d4:	00d58223          	sb	a3,4(a1)
1c00f5d8:	ffb30493          	addi	s1,t1,-5
1c00f5dc:	00558513          	addi	a0,a1,5
1c00f5e0:	001e9693          	slli	a3,t4,0x1
1c00f5e4:	30905763          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f5e8:	30582563          	p.beqimm	a6,5,1c00f8f2 <pos_libc_prf+0x197e>
1c00f5ec:	10000e37          	lui	t3,0x10000
1c00f5f0:	1e7d                	addi	t3,t3,-1
1c00f5f2:	01c7f7b3          	and	a5,a5,t3
1c00f5f6:	01e6de93          	srli	t4,a3,0x1e
1c00f5fa:	00269513          	slli	a0,a3,0x2
1c00f5fe:	00279f13          	slli	t5,a5,0x2
1c00f602:	96aa                	add	a3,a3,a0
1c00f604:	01eeef33          	or	t5,t4,t5
1c00f608:	00a6b533          	sltu	a0,a3,a0
1c00f60c:	97fa                	add	a5,a5,t5
1c00f60e:	97aa                	add	a5,a5,a0
1c00f610:	00179e93          	slli	t4,a5,0x1
1c00f614:	01f6d513          	srli	a0,a3,0x1f
1c00f618:	01d56eb3          	or	t4,a0,t4
1c00f61c:	01ced793          	srli	a5,t4,0x1c
1c00f620:	03078793          	addi	a5,a5,48
1c00f624:	00f582a3          	sb	a5,5(a1)
1c00f628:	ffa30493          	addi	s1,t1,-6
1c00f62c:	00658513          	addi	a0,a1,6
1c00f630:	00169793          	slli	a5,a3,0x1
1c00f634:	01cefeb3          	and	t4,t4,t3
1c00f638:	2a905d63          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f63c:	2a682b63          	p.beqimm	a6,6,1c00f8f2 <pos_libc_prf+0x197e>
1c00f640:	068e                	slli	a3,a3,0x3
1c00f642:	01e7df13          	srli	t5,a5,0x1e
1c00f646:	002e9513          	slli	a0,t4,0x2
1c00f64a:	97b6                	add	a5,a5,a3
1c00f64c:	00af6533          	or	a0,t5,a0
1c00f650:	9eaa                	add	t4,t4,a0
1c00f652:	00d7b6b3          	sltu	a3,a5,a3
1c00f656:	96f6                	add	a3,a3,t4
1c00f658:	01f7d513          	srli	a0,a5,0x1f
1c00f65c:	00169e93          	slli	t4,a3,0x1
1c00f660:	01d56eb3          	or	t4,a0,t4
1c00f664:	01ced693          	srli	a3,t4,0x1c
1c00f668:	03068693          	addi	a3,a3,48
1c00f66c:	00d58323          	sb	a3,6(a1)
1c00f670:	ff930493          	addi	s1,t1,-7
1c00f674:	00758513          	addi	a0,a1,7
1c00f678:	00179693          	slli	a3,a5,0x1
1c00f67c:	01cefeb3          	and	t4,t4,t3
1c00f680:	26905963          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f684:	26782763          	p.beqimm	a6,7,1c00f8f2 <pos_libc_prf+0x197e>
1c00f688:	078e                	slli	a5,a5,0x3
1c00f68a:	01e6df13          	srli	t5,a3,0x1e
1c00f68e:	002e9513          	slli	a0,t4,0x2
1c00f692:	96be                	add	a3,a3,a5
1c00f694:	00af6533          	or	a0,t5,a0
1c00f698:	9eaa                	add	t4,t4,a0
1c00f69a:	00f6b7b3          	sltu	a5,a3,a5
1c00f69e:	97f6                	add	a5,a5,t4
1c00f6a0:	01f6d513          	srli	a0,a3,0x1f
1c00f6a4:	00179e93          	slli	t4,a5,0x1
1c00f6a8:	01d56eb3          	or	t4,a0,t4
1c00f6ac:	01ced793          	srli	a5,t4,0x1c
1c00f6b0:	03078793          	addi	a5,a5,48
1c00f6b4:	00f583a3          	sb	a5,7(a1)
1c00f6b8:	ff830493          	addi	s1,t1,-8
1c00f6bc:	00858513          	addi	a0,a1,8
1c00f6c0:	00169793          	slli	a5,a3,0x1
1c00f6c4:	01cefeb3          	and	t4,t4,t3
1c00f6c8:	22905563          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f6cc:	22882363          	p.beqimm	a6,8,1c00f8f2 <pos_libc_prf+0x197e>
1c00f6d0:	01e7df13          	srli	t5,a5,0x1e
1c00f6d4:	068e                	slli	a3,a3,0x3
1c00f6d6:	002e9513          	slli	a0,t4,0x2
1c00f6da:	97b6                	add	a5,a5,a3
1c00f6dc:	00af6533          	or	a0,t5,a0
1c00f6e0:	9eaa                	add	t4,t4,a0
1c00f6e2:	00d7b6b3          	sltu	a3,a5,a3
1c00f6e6:	96f6                	add	a3,a3,t4
1c00f6e8:	01f7d513          	srli	a0,a5,0x1f
1c00f6ec:	0686                	slli	a3,a3,0x1
1c00f6ee:	8ec9                	or	a3,a3,a0
1c00f6f0:	01c6d513          	srli	a0,a3,0x1c
1c00f6f4:	03050513          	addi	a0,a0,48
1c00f6f8:	00a58423          	sb	a0,8(a1)
1c00f6fc:	ff730493          	addi	s1,t1,-9
1c00f700:	00958513          	addi	a0,a1,9
1c00f704:	00179f13          	slli	t5,a5,0x1
1c00f708:	01c6feb3          	and	t4,a3,t3
1c00f70c:	1e905363          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f710:	1e982163          	p.beqimm	a6,9,1c00f8f2 <pos_libc_prf+0x197e>
1c00f714:	078e                	slli	a5,a5,0x3
1c00f716:	01ef5293          	srli	t0,t5,0x1e
1c00f71a:	002e9513          	slli	a0,t4,0x2
1c00f71e:	01e786b3          	add	a3,a5,t5
1c00f722:	00a2e533          	or	a0,t0,a0
1c00f726:	00f6b7b3          	sltu	a5,a3,a5
1c00f72a:	9576                	add	a0,a0,t4
1c00f72c:	97aa                	add	a5,a5,a0
1c00f72e:	0786                	slli	a5,a5,0x1
1c00f730:	01f6d513          	srli	a0,a3,0x1f
1c00f734:	8fc9                	or	a5,a5,a0
1c00f736:	01c7d513          	srli	a0,a5,0x1c
1c00f73a:	03050513          	addi	a0,a0,48
1c00f73e:	00a584a3          	sb	a0,9(a1)
1c00f742:	ff630493          	addi	s1,t1,-10
1c00f746:	00a58513          	addi	a0,a1,10
1c00f74a:	0686                	slli	a3,a3,0x1
1c00f74c:	01c7f7b3          	and	a5,a5,t3
1c00f750:	1a905163          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f754:	18a82f63          	p.beqimm	a6,10,1c00f8f2 <pos_libc_prf+0x197e>
1c00f758:	01e6de93          	srli	t4,a3,0x1e
1c00f75c:	00269513          	slli	a0,a3,0x2
1c00f760:	00279e13          	slli	t3,a5,0x2
1c00f764:	96aa                	add	a3,a3,a0
1c00f766:	01ceee33          	or	t3,t4,t3
1c00f76a:	00a6b533          	sltu	a0,a3,a0
1c00f76e:	97f2                	add	a5,a5,t3
1c00f770:	97aa                	add	a5,a5,a0
1c00f772:	00179e93          	slli	t4,a5,0x1
1c00f776:	01f6d513          	srli	a0,a3,0x1f
1c00f77a:	01d56eb3          	or	t4,a0,t4
1c00f77e:	01ced793          	srli	a5,t4,0x1c
1c00f782:	03078793          	addi	a5,a5,48
1c00f786:	10000e37          	lui	t3,0x10000
1c00f78a:	1e7d                	addi	t3,t3,-1
1c00f78c:	00f58523          	sb	a5,10(a1)
1c00f790:	ff530493          	addi	s1,t1,-11
1c00f794:	00b58513          	addi	a0,a1,11
1c00f798:	00169793          	slli	a5,a3,0x1
1c00f79c:	01cefeb3          	and	t4,t4,t3
1c00f7a0:	14905963          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f7a4:	14b82763          	p.beqimm	a6,11,1c00f8f2 <pos_libc_prf+0x197e>
1c00f7a8:	068e                	slli	a3,a3,0x3
1c00f7aa:	01e7df13          	srli	t5,a5,0x1e
1c00f7ae:	002e9513          	slli	a0,t4,0x2
1c00f7b2:	97b6                	add	a5,a5,a3
1c00f7b4:	00af6533          	or	a0,t5,a0
1c00f7b8:	9eaa                	add	t4,t4,a0
1c00f7ba:	00d7b6b3          	sltu	a3,a5,a3
1c00f7be:	96f6                	add	a3,a3,t4
1c00f7c0:	01f7d513          	srli	a0,a5,0x1f
1c00f7c4:	0686                	slli	a3,a3,0x1
1c00f7c6:	8ec9                	or	a3,a3,a0
1c00f7c8:	01c6d513          	srli	a0,a3,0x1c
1c00f7cc:	03050513          	addi	a0,a0,48
1c00f7d0:	00a585a3          	sb	a0,11(a1)
1c00f7d4:	ff430493          	addi	s1,t1,-12
1c00f7d8:	00c58513          	addi	a0,a1,12
1c00f7dc:	00179e93          	slli	t4,a5,0x1
1c00f7e0:	10905963          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f7e4:	10c82763          	p.beqimm	a6,12,1c00f8f2 <pos_libc_prf+0x197e>
1c00f7e8:	01c6f6b3          	and	a3,a3,t3
1c00f7ec:	01eedf13          	srli	t5,t4,0x1e
1c00f7f0:	078e                	slli	a5,a5,0x3
1c00f7f2:	00269513          	slli	a0,a3,0x2
1c00f7f6:	9ebe                	add	t4,t4,a5
1c00f7f8:	00af6533          	or	a0,t5,a0
1c00f7fc:	96aa                	add	a3,a3,a0
1c00f7fe:	00feb7b3          	sltu	a5,t4,a5
1c00f802:	97b6                	add	a5,a5,a3
1c00f804:	01fed513          	srli	a0,t4,0x1f
1c00f808:	00179693          	slli	a3,a5,0x1
1c00f80c:	8ec9                	or	a3,a3,a0
1c00f80e:	01c6d793          	srli	a5,a3,0x1c
1c00f812:	03078793          	addi	a5,a5,48
1c00f816:	00f58623          	sb	a5,12(a1)
1c00f81a:	ff330493          	addi	s1,t1,-13
1c00f81e:	00d58513          	addi	a0,a1,13
1c00f822:	001e9793          	slli	a5,t4,0x1
1c00f826:	01c6ff33          	and	t5,a3,t3
1c00f82a:	0c905463          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f82e:	0cd82263          	p.beqimm	a6,13,1c00f8f2 <pos_libc_prf+0x197e>
1c00f832:	003e9693          	slli	a3,t4,0x3
1c00f836:	002f1513          	slli	a0,t5,0x2
1c00f83a:	01e7de93          	srli	t4,a5,0x1e
1c00f83e:	00aee533          	or	a0,t4,a0
1c00f842:	97b6                	add	a5,a5,a3
1c00f844:	957a                	add	a0,a0,t5
1c00f846:	00d7b6b3          	sltu	a3,a5,a3
1c00f84a:	96aa                	add	a3,a3,a0
1c00f84c:	0686                	slli	a3,a3,0x1
1c00f84e:	01f7d513          	srli	a0,a5,0x1f
1c00f852:	8ec9                	or	a3,a3,a0
1c00f854:	01c6d513          	srli	a0,a3,0x1c
1c00f858:	03050513          	addi	a0,a0,48
1c00f85c:	00a586a3          	sb	a0,13(a1)
1c00f860:	ff230493          	addi	s1,t1,-14
1c00f864:	00e58513          	addi	a0,a1,14
1c00f868:	00179f13          	slli	t5,a5,0x1
1c00f86c:	01c6feb3          	and	t4,a3,t3
1c00f870:	08905163          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f874:	06e82f63          	p.beqimm	a6,14,1c00f8f2 <pos_libc_prf+0x197e>
1c00f878:	078e                	slli	a5,a5,0x3
1c00f87a:	002e9513          	slli	a0,t4,0x2
1c00f87e:	01ef5293          	srli	t0,t5,0x1e
1c00f882:	01e786b3          	add	a3,a5,t5
1c00f886:	00a2e533          	or	a0,t0,a0
1c00f88a:	9576                	add	a0,a0,t4
1c00f88c:	00f6b7b3          	sltu	a5,a3,a5
1c00f890:	97aa                	add	a5,a5,a0
1c00f892:	00179e93          	slli	t4,a5,0x1
1c00f896:	01f6d513          	srli	a0,a3,0x1f
1c00f89a:	01d56eb3          	or	t4,a0,t4
1c00f89e:	01ced793          	srli	a5,t4,0x1c
1c00f8a2:	03078793          	addi	a5,a5,48
1c00f8a6:	00f58723          	sb	a5,14(a1)
1c00f8aa:	ff130493          	addi	s1,t1,-15
1c00f8ae:	00f58513          	addi	a0,a1,15
1c00f8b2:	00169793          	slli	a5,a3,0x1
1c00f8b6:	01cefe33          	and	t3,t4,t3
1c00f8ba:	02905c63          	blez	s1,1c00f8f2 <pos_libc_prf+0x197e>
1c00f8be:	46c1                	li	a3,16
1c00f8c0:	02d81963          	bne	a6,a3,1c00f8f2 <pos_libc_prf+0x197e>
1c00f8c4:	00279513          	slli	a0,a5,0x2
1c00f8c8:	01e7d813          	srli	a6,a5,0x1e
1c00f8cc:	002e1693          	slli	a3,t3,0x2
1c00f8d0:	97aa                	add	a5,a5,a0
1c00f8d2:	00d866b3          	or	a3,a6,a3
1c00f8d6:	00a7b7b3          	sltu	a5,a5,a0
1c00f8da:	9e36                	add	t3,t3,a3
1c00f8dc:	97f2                	add	a5,a5,t3
1c00f8de:	0786                	slli	a5,a5,0x1
1c00f8e0:	83f1                	srli	a5,a5,0x1c
1c00f8e2:	03078793          	addi	a5,a5,48
1c00f8e6:	01058513          	addi	a0,a1,16
1c00f8ea:	00f587a3          	sb	a5,15(a1)
1c00f8ee:	ff030493          	addi	s1,t1,-16
1c00f8f2:	47e2                	lw	a5,24(sp)
1c00f8f4:	014785b3          	add	a1,a5,s4
1c00f8f8:	9c0f9b63          	bnez	t6,1c00eace <pos_libc_prf+0xb5a>
1c00f8fc:	95a6                	add	a1,a1,s1
1c00f8fe:	8ca6                	mv	s9,s1
1c00f900:	9faff06f          	j	1c00eafa <pos_libc_prf+0xb86>
1c00f904:	02d00793          	li	a5,45
1c00f908:	411008b3          	neg	a7,a7
1c00f90c:	00f500a3          	sb	a5,1(a0)
1c00f910:	db4ff06f          	j	1c00eec4 <pos_libc_prf+0xf50>
1c00f914:	41fad793          	srai	a5,s5,0x1f
1c00f918:	0156a023          	sw	s5,0(a3)
1c00f91c:	c2dc                	sw	a5,4(a3)
1c00f91e:	e94fe06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00f922:	4a62                	lw	s4,24(sp)
1c00f924:	a039                	j	1c00f932 <pos_libc_prf+0x19be>
1c00f926:	9982                	jalr	s3
1c00f928:	1a7d                	addi	s4,s4,-1
1c00f92a:	01f53463          	p.bneimm	a0,-1,1c00f932 <pos_libc_prf+0x19be>
1c00f92e:	fbcfe06f          	j	1c00e0ea <pos_libc_prf+0x176>
1c00f932:	85de                	mv	a1,s7
1c00f934:	03000513          	li	a0,48
1c00f938:	ff4047e3          	bgtz	s4,1c00f926 <pos_libc_prf+0x19b2>
1c00f93c:	4762                	lw	a4,24(sp)
1c00f93e:	40e90933          	sub	s2,s2,a4
1c00f942:	939fe06f          	j	1c00e27a <pos_libc_prf+0x306>
1c00f946:	4741                	li	a4,16
1c00f948:	04e4cf33          	p.min	t5,s1,a4
1c00f94c:	1f7d                	addi	t5,t5,-1
1c00f94e:	84b6                	mv	s1,a3
1c00f950:	4f81                	li	t6,0
1c00f952:	c67fe06f          	j	1c00e5b8 <pos_libc_prf+0x644>
1c00f956:	104c                	addi	a1,sp,36
1c00f958:	4901                	li	s2,0
1c00f95a:	86ae                	mv	a3,a1
1c00f95c:	ed8ff06f          	j	1c00f034 <pos_libc_prf+0x10c0>
1c00f960:	0c904463          	bgtz	s1,1c00fa28 <pos_libc_prf+0x1ab4>
1c00f964:	4881                	li	a7,0
1c00f966:	cc02                	sw	zero,24(sp)
1c00f968:	b769                	j	1c00f8f2 <pos_libc_prf+0x197e>
1c00f96a:	4712                	lw	a4,4(sp)
1c00f96c:	4f81                	li	t6,0
1c00f96e:	e319                	bnez	a4,1c00f974 <pos_libc_prf+0x1a00>
1c00f970:	c3dfe06f          	j	1c00e5ac <pos_libc_prf+0x638>
1c00f974:	4f01                	li	t5,0
1c00f976:	4f81                	li	t6,0
1c00f978:	c41fe06f          	j	1c00e5b8 <pos_libc_prf+0x644>
1c00f97c:	020102a3          	sb	zero,37(sp)
1c00f980:	c202                	sw	zero,4(sp)
1c00f982:	4905                	li	s2,1
1c00f984:	875fe06f          	j	1c00e1f8 <pos_libc_prf+0x284>
1c00f988:	06600d93          	li	s11,102
1c00f98c:	d1cff06f          	j	1c00eea8 <pos_libc_prf+0xf34>
1c00f990:	03000593          	li	a1,48
1c00f994:	4712                	lw	a4,4(sp)
1c00f996:	00b30023          	sb	a1,0(t1)
1c00f99a:	e335                	bnez	a4,1c00f9fe <pos_libc_prf+0x1a8a>
1c00f99c:	06905b63          	blez	s1,1c00fa12 <pos_libc_prf+0x1a9e>
1c00f9a0:	02e00593          	li	a1,46
1c00f9a4:	00b300a3          	sb	a1,1(t1)
1c00f9a8:	00230513          	addi	a0,t1,2
1c00f9ac:	4841                	li	a6,16
1c00f9ae:	08088363          	beqz	a7,1c00fa34 <pos_libc_prf+0x1ac0>
1c00f9b2:	41100733          	neg	a4,a7
1c00f9b6:	04974733          	p.min	a4,a4,s1
1c00f9ba:	cc3a                	sw	a4,24(sp)
1c00f9bc:	40e48333          	sub	t1,s1,a4
1c00f9c0:	85aa                	mv	a1,a0
1c00f9c2:	4a01                	li	s4,0
1c00f9c4:	4841                	li	a6,16
1c00f9c6:	ac6044e3          	bgtz	t1,1c00f48e <pos_libc_prf+0x151a>
1c00f9ca:	a0d5                	j	1c00faae <pos_libc_prf+0x1b3a>
1c00f9cc:	4a72                	lw	s4,28(sp)
1c00f9ce:	de4fe06f          	j	1c00dfb2 <pos_libc_prf+0x3e>
1c00f9d2:	6799                	lui	a5,0x6
1c00f9d4:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c00f9d8:	00f31023          	sh	a5,0(t1)
1c00f9dc:	06e00793          	li	a5,110
1c00f9e0:	00f30123          	sb	a5,2(t1)
1c00f9e4:	c38ff06f          	j	1c00ee1c <pos_libc_prf+0xea8>
1c00f9e8:	679d                	lui	a5,0x7
1c00f9ea:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c00f9ee:	00f31023          	sh	a5,0(t1)
1c00f9f2:	06600793          	li	a5,102
1c00f9f6:	00f30123          	sb	a5,2(t1)
1c00f9fa:	c22ff06f          	j	1c00ee1c <pos_libc_prf+0xea8>
1c00f9fe:	02e00593          	li	a1,46
1c00fa02:	00b300a3          	sb	a1,1(t1)
1c00fa06:	00230513          	addi	a0,t1,2
1c00fa0a:	00088763          	beqz	a7,1c00fa18 <pos_libc_prf+0x1aa4>
1c00fa0e:	fa9042e3          	bgtz	s1,1c00f9b2 <pos_libc_prf+0x1a3e>
1c00fa12:	4a01                	li	s4,0
1c00fa14:	cc02                	sw	zero,24(sp)
1c00fa16:	bdf1                	j	1c00f8f2 <pos_libc_prf+0x197e>
1c00fa18:	fe905de3          	blez	s1,1c00fa12 <pos_libc_prf+0x1a9e>
1c00fa1c:	85aa                	mv	a1,a0
1c00fa1e:	4a01                	li	s4,0
1c00fa20:	cc02                	sw	zero,24(sp)
1c00fa22:	8326                	mv	t1,s1
1c00fa24:	4841                	li	a6,16
1c00fa26:	b4b5                	j	1c00f492 <pos_libc_prf+0x151e>
1c00fa28:	02e00593          	li	a1,46
1c00fa2c:	00b50023          	sb	a1,0(a0)
1c00fa30:	88d2                	mv	a7,s4
1c00fa32:	0505                	addi	a0,a0,1
1c00fa34:	8a46                	mv	s4,a7
1c00fa36:	85aa                	mv	a1,a0
1c00fa38:	8326                	mv	t1,s1
1c00fa3a:	cc02                	sw	zero,24(sp)
1c00fa3c:	4881                	li	a7,0
1c00fa3e:	bc81                	j	1c00f48e <pos_libc_prf+0x151a>
1c00fa40:	4a01                	li	s4,0
1c00fa42:	483d                	li	a6,15
1c00fa44:	b43d                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa46:	00e30513          	addi	a0,t1,14
1c00fa4a:	4809                	li	a6,2
1c00fa4c:	b41d                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa4e:	00c30513          	addi	a0,t1,12
1c00fa52:	b405                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa54:	c0200813          	li	a6,-1022
1c00fa58:	a62ff06f          	j	1c00ecba <pos_libc_prf+0xd46>
1c00fa5c:	00330513          	addi	a0,t1,3
1c00fa60:	4835                	li	a6,13
1c00fa62:	bc01                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa64:	00230513          	addi	a0,t1,2
1c00fa68:	4a01                	li	s4,0
1c00fa6a:	4839                	li	a6,14
1c00fa6c:	b419                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa6e:	00b30513          	addi	a0,t1,11
1c00fa72:	4815                	li	a6,5
1c00fa74:	bafd                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa76:	00a30513          	addi	a0,t1,10
1c00fa7a:	4819                	li	a6,6
1c00fa7c:	badd                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa7e:	00930513          	addi	a0,t1,9
1c00fa82:	481d                	li	a6,7
1c00fa84:	b2fd                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa86:	00830513          	addi	a0,t1,8
1c00fa8a:	4821                	li	a6,8
1c00fa8c:	b2dd                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa8e:	00730513          	addi	a0,t1,7
1c00fa92:	4825                	li	a6,9
1c00fa94:	baf9                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa96:	00630513          	addi	a0,t1,6
1c00fa9a:	4829                	li	a6,10
1c00fa9c:	bad9                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00fa9e:	00530513          	addi	a0,t1,5
1c00faa2:	482d                	li	a6,11
1c00faa4:	b2f9                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00faa6:	00430513          	addi	a0,t1,4
1c00faaa:	4831                	li	a6,12
1c00faac:	b2d9                	j	1c00f472 <pos_libc_prf+0x14fe>
1c00faae:	849a                	mv	s1,t1
1c00fab0:	852e                	mv	a0,a1
1c00fab2:	b581                	j	1c00f8f2 <pos_libc_prf+0x197e>
1c00fab4:	41990933          	sub	s2,s2,s9
1c00fab8:	8f3fe06f          	j	1c00e3aa <pos_libc_prf+0x436>
1c00fabc:	00d78513          	addi	a0,a5,13
1c00fac0:	804ff06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fac4:	00c78513          	addi	a0,a5,12
1c00fac8:	ffdfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00facc:	00b78513          	addi	a0,a5,11
1c00fad0:	ff5fe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fad4:	00978513          	addi	a0,a5,9
1c00fad8:	fedfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fadc:	00878513          	addi	a0,a5,8
1c00fae0:	fe5fe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fae4:	00778513          	addi	a0,a5,7
1c00fae8:	fddfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00faec:	00678513          	addi	a0,a5,6
1c00faf0:	fd5fe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00faf4:	00578513          	addi	a0,a5,5
1c00faf8:	fcdfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fafc:	00478513          	addi	a0,a5,4
1c00fb00:	fc5fe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fb04:	00378513          	addi	a0,a5,3
1c00fb08:	fbdfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fb0c:	00278513          	addi	a0,a5,2
1c00fb10:	fb5fe06f          	j	1c00eac4 <pos_libc_prf+0xb50>
1c00fb14:	00178513          	addi	a0,a5,1
1c00fb18:	4c81                	li	s9,0
1c00fb1a:	fabfe06f          	j	1c00eac4 <pos_libc_prf+0xb50>

1c00fb1e <pos_init_start>:
1c00fb1e:	1141                	addi	sp,sp,-16
1c00fb20:	c422                	sw	s0,8(sp)
1c00fb22:	1c001437          	lui	s0,0x1c001
1c00fb26:	c606                	sw	ra,12(sp)
1c00fb28:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c00fb2c:	2245                	jal	1c00fccc <pos_irq_init>
1c00fb2e:	b66fe0ef          	jal	ra,1c00de94 <pos_soc_init>
1c00fb32:	22f1                	jal	1c00fcfe <pos_soc_event_init>
1c00fb34:	20ed                	jal	1c00fc1e <pos_allocs_init>
1c00fb36:	208d                	jal	1c00fb98 <pos_sched_init>
1c00fb38:	405c                	lw	a5,4(s0)
1c00fb3a:	c791                	beqz	a5,1c00fb46 <pos_init_start+0x28>
1c00fb3c:	0421                	addi	s0,s0,8
1c00fb3e:	9782                	jalr	a5
1c00fb40:	0044278b          	p.lw	a5,4(s0!)
1c00fb44:	ffed                	bnez	a5,1c00fb3e <pos_init_start+0x20>
1c00fb46:	bf8fe0ef          	jal	ra,1c00df3e <pos_io_start>
1c00fb4a:	300467f3          	csrrsi	a5,mstatus,8
1c00fb4e:	40b2                	lw	ra,12(sp)
1c00fb50:	4422                	lw	s0,8(sp)
1c00fb52:	0141                	addi	sp,sp,16
1c00fb54:	8082                	ret

1c00fb56 <pos_init_stop>:
1c00fb56:	1141                	addi	sp,sp,-16
1c00fb58:	c422                	sw	s0,8(sp)
1c00fb5a:	1c001437          	lui	s0,0x1c001
1c00fb5e:	c606                	sw	ra,12(sp)
1c00fb60:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c00fb64:	bdefe0ef          	jal	ra,1c00df42 <pos_io_stop>
1c00fb68:	405c                	lw	a5,4(s0)
1c00fb6a:	c791                	beqz	a5,1c00fb76 <pos_init_stop+0x20>
1c00fb6c:	0421                	addi	s0,s0,8
1c00fb6e:	9782                	jalr	a5
1c00fb70:	0044278b          	p.lw	a5,4(s0!)
1c00fb74:	ffed                	bnez	a5,1c00fb6e <pos_init_stop+0x18>
1c00fb76:	40b2                	lw	ra,12(sp)
1c00fb78:	4422                	lw	s0,8(sp)
1c00fb7a:	0141                	addi	sp,sp,16
1c00fb7c:	8082                	ret

1c00fb7e <pos_cbsys_add>:
1c00fb7e:	00259793          	slli	a5,a1,0x2
1c00fb82:	1c0015b7          	lui	a1,0x1c001
1c00fb86:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c00fb8a:	95be                	add	a1,a1,a5
1c00fb8c:	419c                	lw	a5,0(a1)
1c00fb8e:	c110                	sw	a2,0(a0)
1c00fb90:	c154                	sw	a3,4(a0)
1c00fb92:	c51c                	sw	a5,8(a0)
1c00fb94:	c188                	sw	a0,0(a1)
1c00fb96:	8082                	ret

1c00fb98 <pos_sched_init>:
1c00fb98:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c00fb9c:	8082                	ret

1c00fb9e <pos_alloc_init>:
1c00fb9e:	00758793          	addi	a5,a1,7
1c00fba2:	c407b7b3          	p.bclr	a5,a5,2,0
1c00fba6:	40b785b3          	sub	a1,a5,a1
1c00fbaa:	c11c                	sw	a5,0(a0)
1c00fbac:	8e0d                	sub	a2,a2,a1
1c00fbae:	00c05763          	blez	a2,1c00fbbc <pos_alloc_init+0x1e>
1c00fbb2:	c4063633          	p.bclr	a2,a2,2,0
1c00fbb6:	c390                	sw	a2,0(a5)
1c00fbb8:	0007a223          	sw	zero,4(a5)
1c00fbbc:	8082                	ret

1c00fbbe <pos_alloc>:
1c00fbbe:	4110                	lw	a2,0(a0)
1c00fbc0:	059d                	addi	a1,a1,7
1c00fbc2:	c405b5b3          	p.bclr	a1,a1,2,0
1c00fbc6:	ca31                	beqz	a2,1c00fc1a <pos_alloc+0x5c>
1c00fbc8:	4218                	lw	a4,0(a2)
1c00fbca:	425c                	lw	a5,4(a2)
1c00fbcc:	02b75963          	ble	a1,a4,1c00fbfe <pos_alloc+0x40>
1c00fbd0:	cb81                	beqz	a5,1c00fbe0 <pos_alloc+0x22>
1c00fbd2:	4398                	lw	a4,0(a5)
1c00fbd4:	43d4                	lw	a3,4(a5)
1c00fbd6:	00b75763          	ble	a1,a4,1c00fbe4 <pos_alloc+0x26>
1c00fbda:	863e                	mv	a2,a5
1c00fbdc:	87b6                	mv	a5,a3
1c00fbde:	fbf5                	bnez	a5,1c00fbd2 <pos_alloc+0x14>
1c00fbe0:	853e                	mv	a0,a5
1c00fbe2:	8082                	ret
1c00fbe4:	00b70a63          	beq	a4,a1,1c00fbf8 <pos_alloc+0x3a>
1c00fbe8:	00b78533          	add	a0,a5,a1
1c00fbec:	8f0d                	sub	a4,a4,a1
1c00fbee:	c118                	sw	a4,0(a0)
1c00fbf0:	c154                	sw	a3,4(a0)
1c00fbf2:	c248                	sw	a0,4(a2)
1c00fbf4:	853e                	mv	a0,a5
1c00fbf6:	8082                	ret
1c00fbf8:	c254                	sw	a3,4(a2)
1c00fbfa:	853e                	mv	a0,a5
1c00fbfc:	8082                	ret
1c00fbfe:	00e58b63          	beq	a1,a4,1c00fc14 <pos_alloc+0x56>
1c00fc02:	00b606b3          	add	a3,a2,a1
1c00fc06:	8f0d                	sub	a4,a4,a1
1c00fc08:	c2dc                	sw	a5,4(a3)
1c00fc0a:	c298                	sw	a4,0(a3)
1c00fc0c:	87b2                	mv	a5,a2
1c00fc0e:	c114                	sw	a3,0(a0)
1c00fc10:	853e                	mv	a0,a5
1c00fc12:	8082                	ret
1c00fc14:	c11c                	sw	a5,0(a0)
1c00fc16:	87b2                	mv	a5,a2
1c00fc18:	b7e1                	j	1c00fbe0 <pos_alloc+0x22>
1c00fc1a:	4781                	li	a5,0
1c00fc1c:	b7d1                	j	1c00fbe0 <pos_alloc+0x22>

1c00fc1e <pos_allocs_init>:
1c00fc1e:	1141                	addi	sp,sp,-16
1c00fc20:	1c00d5b7          	lui	a1,0x1c00d
1c00fc24:	c606                	sw	ra,12(sp)
1c00fc26:	c422                	sw	s0,8(sp)
1c00fc28:	26c58793          	addi	a5,a1,620 # 1c00d26c <__l2_priv0_end>
1c00fc2c:	1c008637          	lui	a2,0x1c008
1c00fc30:	04c7c363          	blt	a5,a2,1c00fc76 <pos_allocs_init+0x58>
1c00fc34:	4581                	li	a1,0
1c00fc36:	4601                	li	a2,0
1c00fc38:	1c00d437          	lui	s0,0x1c00d
1c00fc3c:	24440513          	addi	a0,s0,580 # 1c00d244 <pos_alloc_l2>
1c00fc40:	3fb9                	jal	1c00fb9e <pos_alloc_init>
1c00fc42:	1c0105b7          	lui	a1,0x1c010
1c00fc46:	20858793          	addi	a5,a1,520 # 1c010208 <__l2_shared_end>
1c00fc4a:	1c080637          	lui	a2,0x1c080
1c00fc4e:	1c00d537          	lui	a0,0x1c00d
1c00fc52:	8e1d                	sub	a2,a2,a5
1c00fc54:	20858593          	addi	a1,a1,520
1c00fc58:	24850513          	addi	a0,a0,584 # 1c00d248 <pos_alloc_l2+0x4>
1c00fc5c:	3789                	jal	1c00fb9e <pos_alloc_init>
1c00fc5e:	24440513          	addi	a0,s0,580
1c00fc62:	4591                	li	a1,4
1c00fc64:	3fa9                	jal	1c00fbbe <pos_alloc>
1c00fc66:	40b2                	lw	ra,12(sp)
1c00fc68:	4422                	lw	s0,8(sp)
1c00fc6a:	1c00d7b7          	lui	a5,0x1c00d
1c00fc6e:	24a7a023          	sw	a0,576(a5) # 1c00d240 <pos_alloc_l1>
1c00fc72:	0141                	addi	sp,sp,16
1c00fc74:	8082                	ret
1c00fc76:	8e1d                	sub	a2,a2,a5
1c00fc78:	26c58593          	addi	a1,a1,620
1c00fc7c:	bf75                	j	1c00fc38 <pos_allocs_init+0x1a>

1c00fc7e <pos_irq_set_handler>:
1c00fc7e:	f14027f3          	csrr	a5,mhartid
1c00fc82:	477d                	li	a4,31
1c00fc84:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fc88:	02e78d63          	beq	a5,a4,1c00fcc2 <pos_irq_set_handler+0x44>
1c00fc8c:	002007b7          	lui	a5,0x200
1c00fc90:	43b8                	lw	a4,64(a5)
1c00fc92:	050a                	slli	a0,a0,0x2
1c00fc94:	8d89                	sub	a1,a1,a0
1c00fc96:	8d99                	sub	a1,a1,a4
1c00fc98:	c14586b3          	p.extract	a3,a1,0,20
1c00fc9c:	06f00793          	li	a5,111
1c00fca0:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00fca4:	d21586b3          	p.extract	a3,a1,9,1
1c00fca8:	d356a7b3          	p.insert	a5,a3,9,21
1c00fcac:	c0b586b3          	p.extract	a3,a1,0,11
1c00fcb0:	c146a7b3          	p.insert	a5,a3,0,20
1c00fcb4:	cec585b3          	p.extract	a1,a1,7,12
1c00fcb8:	cec5a7b3          	p.insert	a5,a1,7,12
1c00fcbc:	00f56723          	p.sw	a5,a4(a0)
1c00fcc0:	8082                	ret
1c00fcc2:	30502773          	csrr	a4,mtvec
1c00fcc6:	c0073733          	p.bclr	a4,a4,0,0
1c00fcca:	b7e1                	j	1c00fc92 <pos_irq_set_handler+0x14>

1c00fccc <pos_irq_init>:
1c00fccc:	f1402773          	csrr	a4,mhartid
1c00fcd0:	1a10a7b7          	lui	a5,0x1a10a
1c00fcd4:	56fd                	li	a3,-1
1c00fcd6:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00fcda:	ca571733          	p.extractu	a4,a4,5,5
1c00fcde:	1c00d7b7          	lui	a5,0x1c00d
1c00fce2:	46fd                	li	a3,31
1c00fce4:	30078793          	addi	a5,a5,768 # 1c00d300 <__irq_vector_base>
1c00fce8:	00d70663          	beq	a4,a3,1c00fcf4 <pos_irq_init+0x28>
1c00fcec:	00200737          	lui	a4,0x200
1c00fcf0:	c33c                	sw	a5,64(a4)
1c00fcf2:	8082                	ret
1c00fcf4:	c007c7b3          	p.bset	a5,a5,0,0
1c00fcf8:	30579073          	csrw	mtvec,a5
1c00fcfc:	8082                	ret

1c00fcfe <pos_soc_event_init>:
1c00fcfe:	1a1067b7          	lui	a5,0x1a106
1c00fd02:	1141                	addi	sp,sp,-16
1c00fd04:	c606                	sw	ra,12(sp)
1c00fd06:	577d                	li	a4,-1
1c00fd08:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c00fd0c:	c298                	sw	a4,0(a3)
1c00fd0e:	00878693          	addi	a3,a5,8
1c00fd12:	c298                	sw	a4,0(a3)
1c00fd14:	00c78693          	addi	a3,a5,12
1c00fd18:	c298                	sw	a4,0(a3)
1c00fd1a:	01078693          	addi	a3,a5,16
1c00fd1e:	c298                	sw	a4,0(a3)
1c00fd20:	01478693          	addi	a3,a5,20
1c00fd24:	c298                	sw	a4,0(a3)
1c00fd26:	01878693          	addi	a3,a5,24
1c00fd2a:	c298                	sw	a4,0(a3)
1c00fd2c:	01c78693          	addi	a3,a5,28
1c00fd30:	c298                	sw	a4,0(a3)
1c00fd32:	02078793          	addi	a5,a5,32
1c00fd36:	1c0105b7          	lui	a1,0x1c010
1c00fd3a:	c398                	sw	a4,0(a5)
1c00fd3c:	ff658593          	addi	a1,a1,-10 # 1c00fff6 <pos_soc_event_handler_asm>
1c00fd40:	4569                	li	a0,26
1c00fd42:	3f35                	jal	1c00fc7e <pos_irq_set_handler>
1c00fd44:	40b2                	lw	ra,12(sp)
1c00fd46:	1a10a7b7          	lui	a5,0x1a10a
1c00fd4a:	04000737          	lui	a4,0x4000
1c00fd4e:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c00fd52:	0141                	addi	sp,sp,16
1c00fd54:	8082                	ret

1c00fd56 <pos_time_poweroff>:
1c00fd56:	1a10b7b7          	lui	a5,0x1a10b
1c00fd5a:	0791                	addi	a5,a5,4
1c00fd5c:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd60:	1c001737          	lui	a4,0x1c001
1c00fd64:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c00fd68:	4501                	li	a0,0
1c00fd6a:	8082                	ret

1c00fd6c <pos_time_poweron>:
1c00fd6c:	1c0017b7          	lui	a5,0x1c001
1c00fd70:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c00fd74:	1a10b7b7          	lui	a5,0x1a10b
1c00fd78:	0791                	addi	a5,a5,4
1c00fd7a:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fd7e:	4501                	li	a0,0
1c00fd80:	8082                	ret

1c00fd82 <pos_time_timer_handler>:
1c00fd82:	1c0018b7          	lui	a7,0x1c001
1c00fd86:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c00fd8a:	0048a783          	lw	a5,4(a7)
1c00fd8e:	1a10b637          	lui	a2,0x1a10b
1c00fd92:	0611                	addi	a2,a2,4
1c00fd94:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c00fd98:	cba9                	beqz	a5,1c00fdea <pos_time_timer_handler+0x68>
1c00fd9a:	5fd8                	lw	a4,60(a5)
1c00fd9c:	800005b7          	lui	a1,0x80000
1c00fda0:	40e60733          	sub	a4,a2,a4
1c00fda4:	ffe5c593          	xori	a1,a1,-2
1c00fda8:	0ae5e763          	bltu	a1,a4,1c00fe56 <pos_time_timer_handler+0xd4>
1c00fdac:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c00fdb0:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c00fdb4:	4398                	lw	a4,0(a5)
1c00fdb6:	0007a023          	sw	zero,0(a5)
1c00fdba:	4301                	li	t1,0
1c00fdbc:	02080063          	beqz	a6,1c00fddc <pos_time_timer_handler+0x5a>
1c00fdc0:	c11c                	sw	a5,0(a0)
1c00fdc2:	c305                	beqz	a4,1c00fde2 <pos_time_timer_handler+0x60>
1c00fdc4:	5f54                	lw	a3,60(a4)
1c00fdc6:	853e                	mv	a0,a5
1c00fdc8:	40d606b3          	sub	a3,a2,a3
1c00fdcc:	04d5e763          	bltu	a1,a3,1c00fe1a <pos_time_timer_handler+0x98>
1c00fdd0:	87ba                	mv	a5,a4
1c00fdd2:	4398                	lw	a4,0(a5)
1c00fdd4:	0007a023          	sw	zero,0(a5)
1c00fdd8:	fe0814e3          	bnez	a6,1c00fdc0 <pos_time_timer_handler+0x3e>
1c00fddc:	883e                	mv	a6,a5
1c00fdde:	4305                	li	t1,1
1c00fde0:	f375                	bnez	a4,1c00fdc4 <pos_time_timer_handler+0x42>
1c00fde2:	06031c63          	bnez	t1,1c00fe5a <pos_time_timer_handler+0xd8>
1c00fde6:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fdea:	1a10b7b7          	lui	a5,0x1a10b
1c00fdee:	08100713          	li	a4,129
1c00fdf2:	0791                	addi	a5,a5,4
1c00fdf4:	0008a223          	sw	zero,4(a7)
1c00fdf8:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fdfc:	f14027f3          	csrr	a5,mhartid
1c00fe00:	477d                	li	a4,31
1c00fe02:	ca5797b3          	p.extractu	a5,a5,5,5
1c00fe06:	04e78063          	beq	a5,a4,1c00fe46 <pos_time_timer_handler+0xc4>
1c00fe0a:	6785                	lui	a5,0x1
1c00fe0c:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe10:	00204737          	lui	a4,0x204
1c00fe14:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c00fe18:	8082                	ret
1c00fe1a:	04031363          	bnez	t1,1c00fe60 <pos_time_timer_handler+0xde>
1c00fe1e:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c00fe22:	1a10b7b7          	lui	a5,0x1a10b
1c00fe26:	0791                	addi	a5,a5,4
1c00fe28:	00e8a223          	sw	a4,4(a7)
1c00fe2c:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00fe30:	5f58                	lw	a4,60(a4)
1c00fe32:	40c70633          	sub	a2,a4,a2
1c00fe36:	9636                	add	a2,a2,a3
1c00fe38:	00c7a823          	sw	a2,16(a5)
1c00fe3c:	08500713          	li	a4,133
1c00fe40:	00e7a023          	sw	a4,0(a5)
1c00fe44:	8082                	ret
1c00fe46:	6785                	lui	a5,0x1
1c00fe48:	1a10a737          	lui	a4,0x1a10a
1c00fe4c:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe50:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c00fe54:	8082                	ret
1c00fe56:	873e                	mv	a4,a5
1c00fe58:	b7e9                	j	1c00fe22 <pos_time_timer_handler+0xa0>
1c00fe5a:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe5e:	b761                	j	1c00fde6 <pos_time_timer_handler+0x64>
1c00fe60:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00fe64:	bf6d                	j	1c00fe1e <pos_time_timer_handler+0x9c>

1c00fe66 <pos_time_init>:
1c00fe66:	1141                	addi	sp,sp,-16
1c00fe68:	c422                	sw	s0,8(sp)
1c00fe6a:	1a10b7b7          	lui	a5,0x1a10b
1c00fe6e:	1c001437          	lui	s0,0x1c001
1c00fe72:	c606                	sw	ra,12(sp)
1c00fe74:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c00fe78:	08300713          	li	a4,131
1c00fe7c:	0791                	addi	a5,a5,4
1c00fe7e:	00042223          	sw	zero,4(s0)
1c00fe82:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00fe86:	1c0105b7          	lui	a1,0x1c010
1c00fe8a:	fd258593          	addi	a1,a1,-46 # 1c00ffd2 <pos_time_timer_handler_asm>
1c00fe8e:	452d                	li	a0,11
1c00fe90:	33fd                	jal	1c00fc7e <pos_irq_set_handler>
1c00fe92:	6785                	lui	a5,0x1
1c00fe94:	1a10a737          	lui	a4,0x1a10a
1c00fe98:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00fe9c:	1c010637          	lui	a2,0x1c010
1c00fea0:	00840513          	addi	a0,s0,8
1c00fea4:	4681                	li	a3,0
1c00fea6:	d5660613          	addi	a2,a2,-682 # 1c00fd56 <pos_time_poweroff>
1c00feaa:	4589                	li	a1,2
1c00feac:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c00feb0:	31f9                	jal	1c00fb7e <pos_cbsys_add>
1c00feb2:	01840513          	addi	a0,s0,24
1c00feb6:	4422                	lw	s0,8(sp)
1c00feb8:	40b2                	lw	ra,12(sp)
1c00feba:	1c010637          	lui	a2,0x1c010
1c00febe:	4681                	li	a3,0
1c00fec0:	d6c60613          	addi	a2,a2,-660 # 1c00fd6c <pos_time_poweron>
1c00fec4:	458d                	li	a1,3
1c00fec6:	0141                	addi	sp,sp,16
1c00fec8:	b95d                	j	1c00fb7e <pos_cbsys_add>

1c00feca <pos_uart_init>:
1c00feca:	1c0107b7          	lui	a5,0x1c010
1c00fece:	1a07ac23          	sw	zero,440(a5) # 1c0101b8 <__cluster_text_end>
1c00fed2:	8082                	ret

1c00fed4 <pos_init_entry>:
1c00fed4:	7a101073          	csrw	pcmr,zero
1c00fed8:	f1402573          	csrr	a0,mhartid
1c00fedc:	01f57593          	andi	a1,a0,31
1c00fee0:	8115                	srli	a0,a0,0x5
1c00fee2:	467d                	li	a2,31
1c00fee4:	00c50463          	beq	a0,a2,1c00feec <pos_init_entry+0x18>
1c00fee8:	1800006f          	j	1c010068 <__l2_priv1_end>
1c00feec:	ffff1297          	auipc	t0,0xffff1
1c00fef0:	35428293          	addi	t0,t0,852 # 1c001240 <_edata>
1c00fef4:	ffffd317          	auipc	t1,0xffffd
1c00fef8:	37830313          	addi	t1,t1,888 # 1c00d26c <__l2_priv0_end>
1c00fefc:	0002a023          	sw	zero,0(t0)
1c00ff00:	0291                	addi	t0,t0,4
1c00ff02:	fe62ede3          	bltu	t0,t1,1c00fefc <pos_init_entry+0x28>
1c00ff06:	ffff1117          	auipc	sp,0xffff1
1c00ff0a:	2fa10113          	addi	sp,sp,762 # 1c001200 <stack>
1c00ff0e:	00000297          	auipc	t0,0x0
1c00ff12:	c1028293          	addi	t0,t0,-1008 # 1c00fb1e <pos_init_start>
1c00ff16:	000280e7          	jalr	t0
1c00ff1a:	00000513          	li	a0,0
1c00ff1e:	00000593          	li	a1,0
1c00ff22:	ffffe397          	auipc	t2,0xffffe
1c00ff26:	d3a38393          	addi	t2,t2,-710 # 1c00dc5c <main>
1c00ff2a:	000380e7          	jalr	t2
1c00ff2e:	842a                	mv	s0,a0
1c00ff30:	8522                	mv	a0,s0
1c00ff32:	ffffe297          	auipc	t0,0xffffe
1c00ff36:	fe028293          	addi	t0,t0,-32 # 1c00df12 <exit>
1c00ff3a:	000280e7          	jalr	t0

1c00ff3e <pos_irq_call_external_c_function>:
1c00ff3e:	7119                	addi	sp,sp,-128
1c00ff40:	c006                	sw	ra,0(sp)
1c00ff42:	c20e                	sw	gp,4(sp)
1c00ff44:	c412                	sw	tp,8(sp)
1c00ff46:	c616                	sw	t0,12(sp)
1c00ff48:	c81a                	sw	t1,16(sp)
1c00ff4a:	ca1e                	sw	t2,20(sp)
1c00ff4c:	d236                	sw	a3,36(sp)
1c00ff4e:	d43a                	sw	a4,40(sp)
1c00ff50:	d63e                	sw	a5,44(sp)
1c00ff52:	d842                	sw	a6,48(sp)
1c00ff54:	da46                	sw	a7,52(sp)
1c00ff56:	dc72                	sw	t3,56(sp)
1c00ff58:	de76                	sw	t4,60(sp)
1c00ff5a:	c0fa                	sw	t5,64(sp)
1c00ff5c:	c6fe                	sw	t6,76(sp)
1c00ff5e:	000600e7          	jalr	a2
1c00ff62:	4082                	lw	ra,0(sp)
1c00ff64:	4192                	lw	gp,4(sp)
1c00ff66:	4222                	lw	tp,8(sp)
1c00ff68:	42b2                	lw	t0,12(sp)
1c00ff6a:	4342                	lw	t1,16(sp)
1c00ff6c:	43d2                	lw	t2,20(sp)
1c00ff6e:	5692                	lw	a3,36(sp)
1c00ff70:	5722                	lw	a4,40(sp)
1c00ff72:	57b2                	lw	a5,44(sp)
1c00ff74:	5842                	lw	a6,48(sp)
1c00ff76:	58d2                	lw	a7,52(sp)
1c00ff78:	5e62                	lw	t3,56(sp)
1c00ff7a:	5ef2                	lw	t4,60(sp)
1c00ff7c:	4f06                	lw	t5,64(sp)
1c00ff7e:	4fb6                	lw	t6,76(sp)
1c00ff80:	6109                	addi	sp,sp,128
1c00ff82:	8482                	jr	s1

1c00ff84 <pos_irq_call_external_c_function_full>:
1c00ff84:	7119                	addi	sp,sp,-128
1c00ff86:	c006                	sw	ra,0(sp)
1c00ff88:	c20e                	sw	gp,4(sp)
1c00ff8a:	c412                	sw	tp,8(sp)
1c00ff8c:	c616                	sw	t0,12(sp)
1c00ff8e:	c81a                	sw	t1,16(sp)
1c00ff90:	ca1e                	sw	t2,20(sp)
1c00ff92:	cc2a                	sw	a0,24(sp)
1c00ff94:	ce2e                	sw	a1,28(sp)
1c00ff96:	d236                	sw	a3,36(sp)
1c00ff98:	d43a                	sw	a4,40(sp)
1c00ff9a:	d63e                	sw	a5,44(sp)
1c00ff9c:	d842                	sw	a6,48(sp)
1c00ff9e:	da46                	sw	a7,52(sp)
1c00ffa0:	dc72                	sw	t3,56(sp)
1c00ffa2:	de76                	sw	t4,60(sp)
1c00ffa4:	c0fa                	sw	t5,64(sp)
1c00ffa6:	c6fe                	sw	t6,76(sp)
1c00ffa8:	000600e7          	jalr	a2
1c00ffac:	4082                	lw	ra,0(sp)
1c00ffae:	4192                	lw	gp,4(sp)
1c00ffb0:	4222                	lw	tp,8(sp)
1c00ffb2:	42b2                	lw	t0,12(sp)
1c00ffb4:	4342                	lw	t1,16(sp)
1c00ffb6:	43d2                	lw	t2,20(sp)
1c00ffb8:	4562                	lw	a0,24(sp)
1c00ffba:	45f2                	lw	a1,28(sp)
1c00ffbc:	5692                	lw	a3,36(sp)
1c00ffbe:	5722                	lw	a4,40(sp)
1c00ffc0:	57b2                	lw	a5,44(sp)
1c00ffc2:	5842                	lw	a6,48(sp)
1c00ffc4:	58d2                	lw	a7,52(sp)
1c00ffc6:	5e62                	lw	t3,56(sp)
1c00ffc8:	5ef2                	lw	t4,60(sp)
1c00ffca:	4f06                	lw	t5,64(sp)
1c00ffcc:	4fb6                	lw	t6,76(sp)
1c00ffce:	6109                	addi	sp,sp,128
1c00ffd0:	8482                	jr	s1

1c00ffd2 <pos_time_timer_handler_asm>:
1c00ffd2:	1161                	addi	sp,sp,-8
1c00ffd4:	c032                	sw	a2,0(sp)
1c00ffd6:	c226                	sw	s1,4(sp)
1c00ffd8:	00000617          	auipc	a2,0x0
1c00ffdc:	daa60613          	addi	a2,a2,-598 # 1c00fd82 <pos_time_timer_handler>
1c00ffe0:	00000497          	auipc	s1,0x0
1c00ffe4:	00c48493          	addi	s1,s1,12 # 1c00ffec <pos_time_timer_handler_asm_ret>
1c00ffe8:	f9dff06f          	j	1c00ff84 <pos_irq_call_external_c_function_full>

1c00ffec <pos_time_timer_handler_asm_ret>:
1c00ffec:	4492                	lw	s1,4(sp)
1c00ffee:	4602                	lw	a2,0(sp)
1c00fff0:	0121                	addi	sp,sp,8
1c00fff2:	30200073          	mret

1c00fff6 <pos_soc_event_handler_asm>:
1c00fff6:	7119                	addi	sp,sp,-128
1c00fff8:	c022                	sw	s0,0(sp)
1c00fffa:	c226                	sw	s1,4(sp)
1c00fffc:	c42a                	sw	a0,8(sp)
1c00fffe:	c62e                	sw	a1,12(sp)
1c010000:	c832                	sw	a2,16(sp)
1c010002:	1a10a437          	lui	s0,0x1a10a
1c010006:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c01000a:	5048                	lw	a0,36(s0)
1c01000c:	00251593          	slli	a1,a0,0x2
1c010010:	e3ff0297          	auipc	t0,0xe3ff0
1c010014:	43828293          	addi	t0,t0,1080 # 448 <pos_soc_event_callback>
1c010018:	2055f603          	p.lw	a2,t0(a1)
1c01001c:	e3ff0297          	auipc	t0,0xe3ff0
1c010020:	02c28293          	addi	t0,t0,44 # 48 <pos_soc_event_callback_arg>
1c010024:	2055f583          	p.lw	a1,t0(a1)
1c010028:	00000497          	auipc	s1,0x0
1c01002c:	03048493          	addi	s1,s1,48 # 1c010058 <pos_soc_event_handler_end_asm>
1c010030:	f0fff06f          	j	1c00ff3e <pos_irq_call_external_c_function>

1c010034 <pos_soc_event_no_udma_asm>:
1c010034:	00555593          	srli	a1,a0,0x5
1c010038:	058a                	slli	a1,a1,0x2
1c01003a:	e3ff0297          	auipc	t0,0xe3ff0
1c01003e:	fee28293          	addi	t0,t0,-18 # 28 <pos_soc_event_status>
1c010042:	2055f603          	p.lw	a2,t0(a1)
1c010046:	897d                	andi	a0,a0,31
1c010048:	80a64633          	p.bsetr	a2,a2,a0
1c01004c:	e3ff0297          	auipc	t0,0xe3ff0
1c010050:	fdc28293          	addi	t0,t0,-36 # 28 <pos_soc_event_status>
1c010054:	00c5e2a3          	p.sw	a2,t0(a1)

1c010058 <pos_soc_event_handler_end_asm>:
1c010058:	4402                	lw	s0,0(sp)
1c01005a:	4492                	lw	s1,4(sp)
1c01005c:	4522                	lw	a0,8(sp)
1c01005e:	45b2                	lw	a1,12(sp)
1c010060:	4642                	lw	a2,16(sp)
1c010062:	6109                	addi	sp,sp,128
1c010064:	30200073          	mret

Déassemblage de la section .l2_data :

1c010068 <__cluster_text_start>:
1c010068:	f1402573          	csrr	a0,mhartid
1c01006c:	01f57593          	andi	a1,a0,31
1c010070:	8115                	srli	a0,a0,0x5
1c010072:	000702b7          	lui	t0,0x70
1c010076:	00204337          	lui	t1,0x204
1c01007a:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c01007e:	4381                	li	t2,0
1c010080:	0e759463          	bne	a1,t2,1c010168 <pos_slave_start>
1c010084:	20000293          	li	t0,512
1c010088:	00204337          	lui	t1,0x204
1c01008c:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c010090:	e3ff0417          	auipc	s0,0xe3ff0
1c010094:	f7440413          	addi	s0,s0,-140 # 4 <pos_fll_freq>
1c010098:	002049b7          	lui	s3,0x204
1c01009c:	4a09                	li	s4,2
1c01009e:	00000a97          	auipc	s5,0x0
1c0100a2:	038a8a93          	addi	s5,s5,56 # 1c0100d6 <pos_master_event>
1c0100a6:	ffffdb97          	auipc	s7,0xffffd
1c0100aa:	1a6b8b93          	addi	s7,s7,422 # 1c00d24c <pos_cluster>
1c0100ae:	02c00393          	li	t2,44
1c0100b2:	02a383b3          	mul	t2,t2,a0
1c0100b6:	9b9e                	add	s7,s7,t2
1c0100b8:	0bd1                	addi	s7,s7,20
1c0100ba:	1a10acb7          	lui	s9,0x1a10a
1c0100be:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c0100c2:	4c09                	li	s8,2
1c0100c4:	00000d17          	auipc	s10,0x0
1c0100c8:	0e2d0d13          	addi	s10,s10,226 # 1c0101a6 <pos_set_slave_stack>
1c0100cc:	001d6d13          	ori	s10,s10,1
1c0100d0:	30045073          	csrwi	mstatus,8
1c0100d4:	a829                	j	1c0100ee <pos_master_loop>

1c0100d6 <pos_master_event>:
1c0100d6:	018b2b03          	lw	s6,24(s6)
1c0100da:	000b0a63          	beqz	s6,1c0100ee <pos_master_loop>

1c0100de <pos_push_event_to_fc_retry>:
1c0100de:	000ba283          	lw	t0,0(s7)
1c0100e2:	06029c63          	bnez	t0,1c01015a <pos_push_event_to_fc_wait>
1c0100e6:	016ba023          	sw	s6,0(s7)
1c0100ea:	018ca023          	sw	s8,0(s9)

1c0100ee <pos_master_loop>:
1c0100ee:	00042b03          	lw	s6,0(s0)
1c0100f2:	040b0d63          	beqz	s6,1c01014c <pos_master_sleep>

1c0100f6 <pos_master_loop_update_next>:
1c0100f6:	020b2e83          	lw	t4,32(s6)
1c0100fa:	01d42023          	sw	t4,0(s0)
1c0100fe:	020b2f03          	lw	t5,32(s6)
1c010102:	ffee9ae3          	bne	t4,t5,1c0100f6 <pos_master_loop_update_next>

1c010106 <pos_master_loop_exec_task>:
1c010106:	004b2503          	lw	a0,4(s6)
1c01010a:	000b2283          	lw	t0,0(s6)
1c01010e:	008b2103          	lw	sp,8(s6)
1c010112:	00cb2303          	lw	t1,12(s6)
1c010116:	010b2383          	lw	t2,16(s6)
1c01011a:	024b2f03          	lw	t5,36(s6)
1c01011e:	014b2f83          	lw	t6,20(s6)
1c010122:	80d6                	mv	ra,s5
1c010124:	911a                	add	sp,sp,t1
1c010126:	e3ff0e17          	auipc	t3,0xe3ff0
1c01012a:	effe2923          	sw	t6,-270(t3) # 18 <_l1_preload_size>

1c01012e <pos_no_stack_check>:
1c01012e:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c010132:	21e9a023          	sw	t5,512(s3)
1c010136:	21e9a623          	sw	t5,524(s3)

1c01013a <pos_master_no_slave_barrier>:
1c01013a:	000f2863          	p.beqimm	t5,0,1c01014a <pos_master_loop_no_slave>
1c01013e:	09a9a023          	sw	s10,128(s3)
1c010142:	0879a023          	sw	t2,128(s3)
1c010146:	0829a023          	sw	sp,128(s3)

1c01014a <pos_master_loop_no_slave>:
1c01014a:	8282                	jr	t0

1c01014c <pos_master_sleep>:
1c01014c:	0149a423          	sw	s4,8(s3)
1c010150:	03c9e003          	p.elw	zero,60(s3)
1c010154:	0149a223          	sw	s4,4(s3)
1c010158:	bf59                	j	1c0100ee <pos_master_loop>

1c01015a <pos_push_event_to_fc_wait>:
1c01015a:	0149a423          	sw	s4,8(s3)
1c01015e:	03c9e003          	p.elw	zero,60(s3)
1c010162:	0149a223          	sw	s4,4(s3)
1c010166:	bfa5                	j	1c0100de <pos_push_event_to_fc_retry>

1c010168 <pos_slave_start>:
1c010168:	00204937          	lui	s2,0x204
1c01016c:	f14029f3          	csrr	s3,mhartid
1c010170:	01f9f993          	andi	s3,s3,31
1c010174:	00000a17          	auipc	s4,0x0
1c010178:	012a0a13          	addi	s4,s4,18 # 1c010186 <pos_fork_return>
1c01017c:	00000a97          	auipc	s5,0x0
1c010180:	00ea8a93          	addi	s5,s5,14 # 1c01018a <pos_wait_for_dispatch>
1c010184:	a019                	j	1c01018a <pos_wait_for_dispatch>

1c010186 <pos_fork_return>:
1c010186:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c01018a <pos_wait_for_dispatch>:
1c01018a:	08096283          	p.elw	t0,128(s2)
1c01018e:	08096503          	p.elw	a0,128(s2)
1c010192:	0012f313          	andi	t1,t0,1
1c010196:	00031563          	bnez	t1,1c0101a0 <pos_other_entry>

1c01019a <pos_fork_entry>:
1c01019a:	000a00b3          	add	ra,s4,zero
1c01019e:	8282                	jr	t0

1c0101a0 <pos_other_entry>:
1c0101a0:	000a80b3          	add	ra,s5,zero
1c0101a4:	8282                	jr	t0

1c0101a6 <pos_set_slave_stack>:
1c0101a6:	08096283          	p.elw	t0,128(s2)
1c0101aa:	00098f13          	mv	t5,s3
1c0101ae:	02af0eb3          	mul	t4,t5,a0
1c0101b2:	005e8133          	add	sp,t4,t0
1c0101b6:	8082                	ret

1c0101b8 <__cluster_text_end>:
	...
