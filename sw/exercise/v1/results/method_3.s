riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/ckoenig/Documents/phd/interview/sw/exercise/v1/BUILD/PULP/GCC_RISCV//test/test

/home/ckoenig/Documents/phd/interview/sw/exercise/v1/BUILD/PULP/GCC_RISCV//test/test:     format de fichier elf32-littleriscv


Déassemblage de la section .vectors :

1c019300 <__irq_vector_base>:
1c019300:	08c0006f          	j	1c01938c <pos_illegal_instr>
1c019304:	08c0006f          	j	1c019390 <pos_no_irq_handler>
1c019308:	0880006f          	j	1c019390 <pos_no_irq_handler>
1c01930c:	0840006f          	j	1c019390 <pos_no_irq_handler>
1c019310:	0800006f          	j	1c019390 <pos_no_irq_handler>
1c019314:	07c0006f          	j	1c019390 <pos_no_irq_handler>
1c019318:	0780006f          	j	1c019390 <pos_no_irq_handler>
1c01931c:	0740006f          	j	1c019390 <pos_no_irq_handler>
1c019320:	0700006f          	j	1c019390 <pos_no_irq_handler>
1c019324:	06c0006f          	j	1c019390 <pos_no_irq_handler>
1c019328:	0680006f          	j	1c019390 <pos_no_irq_handler>
1c01932c:	0640006f          	j	1c019390 <pos_no_irq_handler>
1c019330:	0600006f          	j	1c019390 <pos_no_irq_handler>
1c019334:	05c0006f          	j	1c019390 <pos_no_irq_handler>
1c019338:	0580006f          	j	1c019390 <pos_no_irq_handler>
1c01933c:	0540006f          	j	1c019390 <pos_no_irq_handler>
1c019340:	0500006f          	j	1c019390 <pos_no_irq_handler>
1c019344:	04c0006f          	j	1c019390 <pos_no_irq_handler>
1c019348:	0480006f          	j	1c019390 <pos_no_irq_handler>
1c01934c:	0440006f          	j	1c019390 <pos_no_irq_handler>
1c019350:	0400006f          	j	1c019390 <pos_no_irq_handler>
1c019354:	03c0006f          	j	1c019390 <pos_no_irq_handler>
1c019358:	0380006f          	j	1c019390 <pos_no_irq_handler>
1c01935c:	0340006f          	j	1c019390 <pos_no_irq_handler>
1c019360:	0300006f          	j	1c019390 <pos_no_irq_handler>
1c019364:	02c0006f          	j	1c019390 <pos_no_irq_handler>
1c019368:	0280006f          	j	1c019390 <pos_no_irq_handler>
1c01936c:	0240006f          	j	1c019390 <pos_no_irq_handler>
1c019370:	0200006f          	j	1c019390 <pos_no_irq_handler>
1c019374:	01c0006f          	j	1c019390 <pos_no_irq_handler>
1c019378:	0180006f          	j	1c019390 <pos_no_irq_handler>
1c01937c:	0140006f          	j	1c019390 <pos_no_irq_handler>

1c019380 <_start>:
1c019380:	00003517          	auipc	a0,0x3
1c019384:	b3e50513          	addi	a0,a0,-1218 # 1c01bebe <pos_init_entry>
1c019388:	00050067          	jr	a0

1c01938c <pos_illegal_instr>:
1c01938c:	0000006f          	j	1c01938c <pos_illegal_instr>

1c019390 <pos_no_irq_handler>:
1c019390:	30200073          	mret

1c019394 <pos_semihosting_call>:
1c019394:	00100073          	ebreak
1c019398:	00008067          	ret

Déassemblage de la section .text :

1c01939c <__udivdi3>:
1c01939c:	87b2                	mv	a5,a2
1c01939e:	8736                	mv	a4,a3
1c0193a0:	88aa                	mv	a7,a0
1c0193a2:	882e                	mv	a6,a1
1c0193a4:	1e069d63          	bnez	a3,1c01959e <__udivdi3+0x202>
1c0193a8:	1c001337          	lui	t1,0x1c001
1c0193ac:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0193b0:	0ac5fd63          	bleu	a2,a1,1c01946a <__udivdi3+0xce>
1c0193b4:	6741                	lui	a4,0x10
1c0193b6:	0ae67363          	bleu	a4,a2,1c01945c <__udivdi3+0xc0>
1c0193ba:	0ff00693          	li	a3,255
1c0193be:	00c6b6b3          	sltu	a3,a3,a2
1c0193c2:	068e                	slli	a3,a3,0x3
1c0193c4:	00d65733          	srl	a4,a2,a3
1c0193c8:	933a                	add	t1,t1,a4
1c0193ca:	00034703          	lbu	a4,0(t1)
1c0193ce:	02000313          	li	t1,32
1c0193d2:	96ba                	add	a3,a3,a4
1c0193d4:	40d30333          	sub	t1,t1,a3
1c0193d8:	00030c63          	beqz	t1,1c0193f0 <__udivdi3+0x54>
1c0193dc:	00659733          	sll	a4,a1,t1
1c0193e0:	00d556b3          	srl	a3,a0,a3
1c0193e4:	006617b3          	sll	a5,a2,t1
1c0193e8:	00e6e833          	or	a6,a3,a4
1c0193ec:	006518b3          	sll	a7,a0,t1
1c0193f0:	0107d513          	srli	a0,a5,0x10
1c0193f4:	02a87633          	remu	a2,a6,a0
1c0193f8:	02a85733          	divu	a4,a6,a0
1c0193fc:	0642                	slli	a2,a2,0x10
1c0193fe:	1007d5b3          	p.exthz	a1,a5
1c019402:	0108d693          	srli	a3,a7,0x10
1c019406:	8ed1                	or	a3,a3,a2
1c019408:	02e58833          	mul	a6,a1,a4
1c01940c:	863a                	mv	a2,a4
1c01940e:	0106fc63          	bleu	a6,a3,1c019426 <__udivdi3+0x8a>
1c019412:	96be                	add	a3,a3,a5
1c019414:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x1b>
1c019418:	00f6e763          	bltu	a3,a5,1c019426 <__udivdi3+0x8a>
1c01941c:	0106f563          	bleu	a6,a3,1c019426 <__udivdi3+0x8a>
1c019420:	ffe70613          	addi	a2,a4,-2
1c019424:	96be                	add	a3,a3,a5
1c019426:	410686b3          	sub	a3,a3,a6
1c01942a:	02a6f833          	remu	a6,a3,a0
1c01942e:	02a6d6b3          	divu	a3,a3,a0
1c019432:	df0828b3          	p.insert	a7,a6,15,16
1c019436:	02d58733          	mul	a4,a1,a3
1c01943a:	8536                	mv	a0,a3
1c01943c:	00e8fb63          	bleu	a4,a7,1c019452 <__udivdi3+0xb6>
1c019440:	98be                	add	a7,a7,a5
1c019442:	fff68513          	addi	a0,a3,-1
1c019446:	00f8e663          	bltu	a7,a5,1c019452 <__udivdi3+0xb6>
1c01944a:	00e8f463          	bleu	a4,a7,1c019452 <__udivdi3+0xb6>
1c01944e:	ffe68513          	addi	a0,a3,-2
1c019452:	01061793          	slli	a5,a2,0x10
1c019456:	8fc9                	or	a5,a5,a0
1c019458:	4801                	li	a6,0
1c01945a:	a06d                	j	1c019504 <__udivdi3+0x168>
1c01945c:	01000737          	lui	a4,0x1000
1c019460:	46c1                	li	a3,16
1c019462:	f6e661e3          	bltu	a2,a4,1c0193c4 <__udivdi3+0x28>
1c019466:	46e1                	li	a3,24
1c019468:	bfb1                	j	1c0193c4 <__udivdi3+0x28>
1c01946a:	e601                	bnez	a2,1c019472 <__udivdi3+0xd6>
1c01946c:	4685                	li	a3,1
1c01946e:	02c6d7b3          	divu	a5,a3,a2
1c019472:	66c1                	lui	a3,0x10
1c019474:	08d7fb63          	bleu	a3,a5,1c01950a <__udivdi3+0x16e>
1c019478:	0ff00693          	li	a3,255
1c01947c:	00f6f363          	bleu	a5,a3,1c019482 <__udivdi3+0xe6>
1c019480:	4721                	li	a4,8
1c019482:	00e7d6b3          	srl	a3,a5,a4
1c019486:	9336                	add	t1,t1,a3
1c019488:	00034683          	lbu	a3,0(t1)
1c01948c:	02000613          	li	a2,32
1c019490:	96ba                	add	a3,a3,a4
1c019492:	8e15                	sub	a2,a2,a3
1c019494:	e251                	bnez	a2,1c019518 <__udivdi3+0x17c>
1c019496:	40f58733          	sub	a4,a1,a5
1c01949a:	4805                	li	a6,1
1c01949c:	0107d513          	srli	a0,a5,0x10
1c0194a0:	02a77633          	remu	a2,a4,a0
1c0194a4:	02a75733          	divu	a4,a4,a0
1c0194a8:	0642                	slli	a2,a2,0x10
1c0194aa:	1007d5b3          	p.exthz	a1,a5
1c0194ae:	0108d693          	srli	a3,a7,0x10
1c0194b2:	8ed1                	or	a3,a3,a2
1c0194b4:	02e58333          	mul	t1,a1,a4
1c0194b8:	863a                	mv	a2,a4
1c0194ba:	0066fc63          	bleu	t1,a3,1c0194d2 <__udivdi3+0x136>
1c0194be:	96be                	add	a3,a3,a5
1c0194c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff001b>
1c0194c4:	00f6e763          	bltu	a3,a5,1c0194d2 <__udivdi3+0x136>
1c0194c8:	0066f563          	bleu	t1,a3,1c0194d2 <__udivdi3+0x136>
1c0194cc:	ffe70613          	addi	a2,a4,-2
1c0194d0:	96be                	add	a3,a3,a5
1c0194d2:	406686b3          	sub	a3,a3,t1
1c0194d6:	02a6f333          	remu	t1,a3,a0
1c0194da:	02a6d6b3          	divu	a3,a3,a0
1c0194de:	df0328b3          	p.insert	a7,t1,15,16
1c0194e2:	02d58733          	mul	a4,a1,a3
1c0194e6:	8536                	mv	a0,a3
1c0194e8:	00e8fb63          	bleu	a4,a7,1c0194fe <__udivdi3+0x162>
1c0194ec:	98be                	add	a7,a7,a5
1c0194ee:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x1b>
1c0194f2:	00f8e663          	bltu	a7,a5,1c0194fe <__udivdi3+0x162>
1c0194f6:	00e8f463          	bleu	a4,a7,1c0194fe <__udivdi3+0x162>
1c0194fa:	ffe68513          	addi	a0,a3,-2
1c0194fe:	01061793          	slli	a5,a2,0x10
1c019502:	8fc9                	or	a5,a5,a0
1c019504:	853e                	mv	a0,a5
1c019506:	85c2                	mv	a1,a6
1c019508:	8082                	ret
1c01950a:	010006b7          	lui	a3,0x1000
1c01950e:	4741                	li	a4,16
1c019510:	f6d7e9e3          	bltu	a5,a3,1c019482 <__udivdi3+0xe6>
1c019514:	4761                	li	a4,24
1c019516:	b7b5                	j	1c019482 <__udivdi3+0xe6>
1c019518:	00c797b3          	sll	a5,a5,a2
1c01951c:	00d5d333          	srl	t1,a1,a3
1c019520:	0107de13          	srli	t3,a5,0x10
1c019524:	00c59733          	sll	a4,a1,a2
1c019528:	00c518b3          	sll	a7,a0,a2
1c01952c:	03c37633          	remu	a2,t1,t3
1c019530:	00d555b3          	srl	a1,a0,a3
1c019534:	03c35533          	divu	a0,t1,t3
1c019538:	8dd9                	or	a1,a1,a4
1c01953a:	0642                	slli	a2,a2,0x10
1c01953c:	1007d733          	p.exthz	a4,a5
1c019540:	0105d693          	srli	a3,a1,0x10
1c019544:	02a70333          	mul	t1,a4,a0
1c019548:	8ed1                	or	a3,a3,a2
1c01954a:	882a                	mv	a6,a0
1c01954c:	0066fc63          	bleu	t1,a3,1c019564 <__udivdi3+0x1c8>
1c019550:	96be                	add	a3,a3,a5
1c019552:	fff50813          	addi	a6,a0,-1
1c019556:	00f6e763          	bltu	a3,a5,1c019564 <__udivdi3+0x1c8>
1c01955a:	0066f563          	bleu	t1,a3,1c019564 <__udivdi3+0x1c8>
1c01955e:	ffe50813          	addi	a6,a0,-2
1c019562:	96be                	add	a3,a3,a5
1c019564:	406686b3          	sub	a3,a3,t1
1c019568:	03c6f633          	remu	a2,a3,t3
1c01956c:	03c6d6b3          	divu	a3,a3,t3
1c019570:	df0625b3          	p.insert	a1,a2,15,16
1c019574:	02d70733          	mul	a4,a4,a3
1c019578:	8636                	mv	a2,a3
1c01957a:	00e5fc63          	bleu	a4,a1,1c019592 <__udivdi3+0x1f6>
1c01957e:	95be                	add	a1,a1,a5
1c019580:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff001b>
1c019584:	00f5e763          	bltu	a1,a5,1c019592 <__udivdi3+0x1f6>
1c019588:	00e5f563          	bleu	a4,a1,1c019592 <__udivdi3+0x1f6>
1c01958c:	ffe68613          	addi	a2,a3,-2
1c019590:	95be                	add	a1,a1,a5
1c019592:	0842                	slli	a6,a6,0x10
1c019594:	40e58733          	sub	a4,a1,a4
1c019598:	00c86833          	or	a6,a6,a2
1c01959c:	b701                	j	1c01949c <__udivdi3+0x100>
1c01959e:	12d5ea63          	bltu	a1,a3,1c0196d2 <__udivdi3+0x336>
1c0195a2:	67c1                	lui	a5,0x10
1c0195a4:	02f6fd63          	bleu	a5,a3,1c0195de <__udivdi3+0x242>
1c0195a8:	0ff00793          	li	a5,255
1c0195ac:	00d7b8b3          	sltu	a7,a5,a3
1c0195b0:	088e                	slli	a7,a7,0x3
1c0195b2:	1c001737          	lui	a4,0x1c001
1c0195b6:	0116d7b3          	srl	a5,a3,a7
1c0195ba:	86870713          	addi	a4,a4,-1944 # 1c000868 <__DTOR_END__>
1c0195be:	97ba                	add	a5,a5,a4
1c0195c0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x1c>
1c0195c4:	02000813          	li	a6,32
1c0195c8:	97c6                	add	a5,a5,a7
1c0195ca:	40f80833          	sub	a6,a6,a5
1c0195ce:	00081f63          	bnez	a6,1c0195ec <__udivdi3+0x250>
1c0195d2:	4785                	li	a5,1
1c0195d4:	f2b6e8e3          	bltu	a3,a1,1c019504 <__udivdi3+0x168>
1c0195d8:	04a637b3          	p.sletu	a5,a2,a0
1c0195dc:	b725                	j	1c019504 <__udivdi3+0x168>
1c0195de:	010007b7          	lui	a5,0x1000
1c0195e2:	48c1                	li	a7,16
1c0195e4:	fcf6e7e3          	bltu	a3,a5,1c0195b2 <__udivdi3+0x216>
1c0195e8:	48e1                	li	a7,24
1c0195ea:	b7e1                	j	1c0195b2 <__udivdi3+0x216>
1c0195ec:	00f658b3          	srl	a7,a2,a5
1c0195f0:	010696b3          	sll	a3,a3,a6
1c0195f4:	00d8e6b3          	or	a3,a7,a3
1c0195f8:	00f5d333          	srl	t1,a1,a5
1c0195fc:	0106de13          	srli	t3,a3,0x10
1c019600:	00f55733          	srl	a4,a0,a5
1c019604:	03c377b3          	remu	a5,t1,t3
1c019608:	010595b3          	sll	a1,a1,a6
1c01960c:	03c35333          	divu	t1,t1,t3
1c019610:	8f4d                	or	a4,a4,a1
1c019612:	07c2                	slli	a5,a5,0x10
1c019614:	1006d8b3          	p.exthz	a7,a3
1c019618:	01075593          	srli	a1,a4,0x10
1c01961c:	8ddd                	or	a1,a1,a5
1c01961e:	02688eb3          	mul	t4,a7,t1
1c019622:	01061633          	sll	a2,a2,a6
1c019626:	879a                	mv	a5,t1
1c019628:	01d5fc63          	bleu	t4,a1,1c019640 <__udivdi3+0x2a4>
1c01962c:	95b6                	add	a1,a1,a3
1c01962e:	fff30793          	addi	a5,t1,-1
1c019632:	00d5e763          	bltu	a1,a3,1c019640 <__udivdi3+0x2a4>
1c019636:	01d5f563          	bleu	t4,a1,1c019640 <__udivdi3+0x2a4>
1c01963a:	ffe30793          	addi	a5,t1,-2
1c01963e:	95b6                	add	a1,a1,a3
1c019640:	41d585b3          	sub	a1,a1,t4
1c019644:	03c5f333          	remu	t1,a1,t3
1c019648:	03c5d5b3          	divu	a1,a1,t3
1c01964c:	df032733          	p.insert	a4,t1,15,16
1c019650:	02b888b3          	mul	a7,a7,a1
1c019654:	832e                	mv	t1,a1
1c019656:	01177c63          	bleu	a7,a4,1c01966e <__udivdi3+0x2d2>
1c01965a:	9736                	add	a4,a4,a3
1c01965c:	fff58313          	addi	t1,a1,-1
1c019660:	00d76763          	bltu	a4,a3,1c01966e <__udivdi3+0x2d2>
1c019664:	01177563          	bleu	a7,a4,1c01966e <__udivdi3+0x2d2>
1c019668:	ffe58313          	addi	t1,a1,-2
1c01966c:	9736                	add	a4,a4,a3
1c01966e:	07c2                	slli	a5,a5,0x10
1c019670:	6e41                	lui	t3,0x10
1c019672:	0067e7b3          	or	a5,a5,t1
1c019676:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x1b>
1c01967a:	00b7f6b3          	and	a3,a5,a1
1c01967e:	41170733          	sub	a4,a4,a7
1c019682:	8df1                	and	a1,a1,a2
1c019684:	0107d893          	srli	a7,a5,0x10
1c019688:	02b68333          	mul	t1,a3,a1
1c01968c:	02b885b3          	mul	a1,a7,a1
1c019690:	8241                	srli	a2,a2,0x10
1c019692:	8eae                	mv	t4,a1
1c019694:	42c68eb3          	p.mac	t4,a3,a2
1c019698:	01035693          	srli	a3,t1,0x10
1c01969c:	96f6                	add	a3,a3,t4
1c01969e:	02c888b3          	mul	a7,a7,a2
1c0196a2:	00b6f363          	bleu	a1,a3,1c0196a8 <__udivdi3+0x30c>
1c0196a6:	98f2                	add	a7,a7,t3
1c0196a8:	0106d613          	srli	a2,a3,0x10
1c0196ac:	98b2                	add	a7,a7,a2
1c0196ae:	03176063          	bltu	a4,a7,1c0196ce <__udivdi3+0x332>
1c0196b2:	db1713e3          	bne	a4,a7,1c019458 <__udivdi3+0xbc>
1c0196b6:	6741                	lui	a4,0x10
1c0196b8:	177d                	addi	a4,a4,-1
1c0196ba:	8ef9                	and	a3,a3,a4
1c0196bc:	06c2                	slli	a3,a3,0x10
1c0196be:	00e37333          	and	t1,t1,a4
1c0196c2:	01051533          	sll	a0,a0,a6
1c0196c6:	969a                	add	a3,a3,t1
1c0196c8:	4801                	li	a6,0
1c0196ca:	e2d57de3          	bleu	a3,a0,1c019504 <__udivdi3+0x168>
1c0196ce:	17fd                	addi	a5,a5,-1
1c0196d0:	b361                	j	1c019458 <__udivdi3+0xbc>
1c0196d2:	4801                	li	a6,0
1c0196d4:	4781                	li	a5,0
1c0196d6:	b53d                	j	1c019504 <__udivdi3+0x168>

1c0196d8 <__umoddi3>:
1c0196d8:	88b2                	mv	a7,a2
1c0196da:	8736                	mv	a4,a3
1c0196dc:	87aa                	mv	a5,a0
1c0196de:	882e                	mv	a6,a1
1c0196e0:	1a069963          	bnez	a3,1c019892 <__umoddi3+0x1ba>
1c0196e4:	1c0016b7          	lui	a3,0x1c001
1c0196e8:	86868693          	addi	a3,a3,-1944 # 1c000868 <__DTOR_END__>
1c0196ec:	0ac5f463          	bleu	a2,a1,1c019794 <__umoddi3+0xbc>
1c0196f0:	6341                	lui	t1,0x10
1c0196f2:	08667a63          	bleu	t1,a2,1c019786 <__umoddi3+0xae>
1c0196f6:	0ff00313          	li	t1,255
1c0196fa:	00c37363          	bleu	a2,t1,1c019700 <__umoddi3+0x28>
1c0196fe:	4721                	li	a4,8
1c019700:	00e65333          	srl	t1,a2,a4
1c019704:	969a                	add	a3,a3,t1
1c019706:	0006c683          	lbu	a3,0(a3)
1c01970a:	02000313          	li	t1,32
1c01970e:	9736                	add	a4,a4,a3
1c019710:	40e30333          	sub	t1,t1,a4
1c019714:	00030c63          	beqz	t1,1c01972c <__umoddi3+0x54>
1c019718:	006595b3          	sll	a1,a1,t1
1c01971c:	00e55733          	srl	a4,a0,a4
1c019720:	006618b3          	sll	a7,a2,t1
1c019724:	00b76833          	or	a6,a4,a1
1c019728:	006517b3          	sll	a5,a0,t1
1c01972c:	0108d613          	srli	a2,a7,0x10
1c019730:	02c87733          	remu	a4,a6,a2
1c019734:	02c85833          	divu	a6,a6,a2
1c019738:	1008d533          	p.exthz	a0,a7
1c01973c:	0742                	slli	a4,a4,0x10
1c01973e:	0107d693          	srli	a3,a5,0x10
1c019742:	03050833          	mul	a6,a0,a6
1c019746:	8ed9                	or	a3,a3,a4
1c019748:	0106f863          	bleu	a6,a3,1c019758 <__umoddi3+0x80>
1c01974c:	96c6                	add	a3,a3,a7
1c01974e:	0116e563          	bltu	a3,a7,1c019758 <__umoddi3+0x80>
1c019752:	0106f363          	bleu	a6,a3,1c019758 <__umoddi3+0x80>
1c019756:	96c6                	add	a3,a3,a7
1c019758:	410686b3          	sub	a3,a3,a6
1c01975c:	02c6f733          	remu	a4,a3,a2
1c019760:	02c6d6b3          	divu	a3,a3,a2
1c019764:	df0727b3          	p.insert	a5,a4,15,16
1c019768:	02d506b3          	mul	a3,a0,a3
1c01976c:	00d7f863          	bleu	a3,a5,1c01977c <__umoddi3+0xa4>
1c019770:	97c6                	add	a5,a5,a7
1c019772:	0117e563          	bltu	a5,a7,1c01977c <__umoddi3+0xa4>
1c019776:	00d7f363          	bleu	a3,a5,1c01977c <__umoddi3+0xa4>
1c01977a:	97c6                	add	a5,a5,a7
1c01977c:	8f95                	sub	a5,a5,a3
1c01977e:	0067d533          	srl	a0,a5,t1
1c019782:	4581                	li	a1,0
1c019784:	8082                	ret
1c019786:	01000337          	lui	t1,0x1000
1c01978a:	4741                	li	a4,16
1c01978c:	f6666ae3          	bltu	a2,t1,1c019700 <__umoddi3+0x28>
1c019790:	4761                	li	a4,24
1c019792:	b7bd                	j	1c019700 <__umoddi3+0x28>
1c019794:	e601                	bnez	a2,1c01979c <__umoddi3+0xc4>
1c019796:	4605                	li	a2,1
1c019798:	031658b3          	divu	a7,a2,a7
1c01979c:	6641                	lui	a2,0x10
1c01979e:	06c8ff63          	bleu	a2,a7,1c01981c <__umoddi3+0x144>
1c0197a2:	0ff00613          	li	a2,255
1c0197a6:	01167363          	bleu	a7,a2,1c0197ac <__umoddi3+0xd4>
1c0197aa:	4721                	li	a4,8
1c0197ac:	00e8d633          	srl	a2,a7,a4
1c0197b0:	96b2                	add	a3,a3,a2
1c0197b2:	0006c603          	lbu	a2,0(a3)
1c0197b6:	02000313          	li	t1,32
1c0197ba:	963a                	add	a2,a2,a4
1c0197bc:	40c30333          	sub	t1,t1,a2
1c0197c0:	06031563          	bnez	t1,1c01982a <__umoddi3+0x152>
1c0197c4:	411585b3          	sub	a1,a1,a7
1c0197c8:	0108d713          	srli	a4,a7,0x10
1c0197cc:	02e5f6b3          	remu	a3,a1,a4
1c0197d0:	02e5d5b3          	divu	a1,a1,a4
1c0197d4:	1008d533          	p.exthz	a0,a7
1c0197d8:	06c2                	slli	a3,a3,0x10
1c0197da:	0107d613          	srli	a2,a5,0x10
1c0197de:	02b505b3          	mul	a1,a0,a1
1c0197e2:	8ed1                	or	a3,a3,a2
1c0197e4:	00b6f863          	bleu	a1,a3,1c0197f4 <__umoddi3+0x11c>
1c0197e8:	96c6                	add	a3,a3,a7
1c0197ea:	0116e563          	bltu	a3,a7,1c0197f4 <__umoddi3+0x11c>
1c0197ee:	00b6f363          	bleu	a1,a3,1c0197f4 <__umoddi3+0x11c>
1c0197f2:	96c6                	add	a3,a3,a7
1c0197f4:	40b685b3          	sub	a1,a3,a1
1c0197f8:	02e5f6b3          	remu	a3,a1,a4
1c0197fc:	02e5d5b3          	divu	a1,a1,a4
1c019800:	df06a7b3          	p.insert	a5,a3,15,16
1c019804:	02b505b3          	mul	a1,a0,a1
1c019808:	00b7f863          	bleu	a1,a5,1c019818 <__umoddi3+0x140>
1c01980c:	97c6                	add	a5,a5,a7
1c01980e:	0117e563          	bltu	a5,a7,1c019818 <__umoddi3+0x140>
1c019812:	00b7f363          	bleu	a1,a5,1c019818 <__umoddi3+0x140>
1c019816:	97c6                	add	a5,a5,a7
1c019818:	8f8d                	sub	a5,a5,a1
1c01981a:	b795                	j	1c01977e <__umoddi3+0xa6>
1c01981c:	01000637          	lui	a2,0x1000
1c019820:	4741                	li	a4,16
1c019822:	f8c8e5e3          	bltu	a7,a2,1c0197ac <__umoddi3+0xd4>
1c019826:	4761                	li	a4,24
1c019828:	b751                	j	1c0197ac <__umoddi3+0xd4>
1c01982a:	006898b3          	sll	a7,a7,t1
1c01982e:	00c5d733          	srl	a4,a1,a2
1c019832:	006517b3          	sll	a5,a0,t1
1c019836:	00c55633          	srl	a2,a0,a2
1c01983a:	006595b3          	sll	a1,a1,t1
1c01983e:	0108d513          	srli	a0,a7,0x10
1c019842:	8dd1                	or	a1,a1,a2
1c019844:	02a77633          	remu	a2,a4,a0
1c019848:	02a75733          	divu	a4,a4,a0
1c01984c:	1008d833          	p.exthz	a6,a7
1c019850:	0642                	slli	a2,a2,0x10
1c019852:	0105d693          	srli	a3,a1,0x10
1c019856:	02e80733          	mul	a4,a6,a4
1c01985a:	8ed1                	or	a3,a3,a2
1c01985c:	00e6f863          	bleu	a4,a3,1c01986c <__umoddi3+0x194>
1c019860:	96c6                	add	a3,a3,a7
1c019862:	0116e563          	bltu	a3,a7,1c01986c <__umoddi3+0x194>
1c019866:	00e6f363          	bleu	a4,a3,1c01986c <__umoddi3+0x194>
1c01986a:	96c6                	add	a3,a3,a7
1c01986c:	8e99                	sub	a3,a3,a4
1c01986e:	02a6f733          	remu	a4,a3,a0
1c019872:	02a6d6b3          	divu	a3,a3,a0
1c019876:	df0725b3          	p.insert	a1,a4,15,16
1c01987a:	02d806b3          	mul	a3,a6,a3
1c01987e:	00d5f863          	bleu	a3,a1,1c01988e <__umoddi3+0x1b6>
1c019882:	95c6                	add	a1,a1,a7
1c019884:	0115e563          	bltu	a1,a7,1c01988e <__umoddi3+0x1b6>
1c019888:	00d5f363          	bleu	a3,a1,1c01988e <__umoddi3+0x1b6>
1c01988c:	95c6                	add	a1,a1,a7
1c01988e:	8d95                	sub	a1,a1,a3
1c019890:	bf25                	j	1c0197c8 <__umoddi3+0xf0>
1c019892:	eed5e9e3          	bltu	a1,a3,1c019784 <__umoddi3+0xac>
1c019896:	6741                	lui	a4,0x10
1c019898:	04e6f563          	bleu	a4,a3,1c0198e2 <__umoddi3+0x20a>
1c01989c:	0ff00e93          	li	t4,255
1c0198a0:	00deb733          	sltu	a4,t4,a3
1c0198a4:	070e                	slli	a4,a4,0x3
1c0198a6:	1c001337          	lui	t1,0x1c001
1c0198aa:	00e6d8b3          	srl	a7,a3,a4
1c0198ae:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0198b2:	989a                	add	a7,a7,t1
1c0198b4:	0008ce83          	lbu	t4,0(a7)
1c0198b8:	02000e13          	li	t3,32
1c0198bc:	9eba                	add	t4,t4,a4
1c0198be:	41de0e33          	sub	t3,t3,t4
1c0198c2:	020e1763          	bnez	t3,1c0198f0 <__umoddi3+0x218>
1c0198c6:	00b6e463          	bltu	a3,a1,1c0198ce <__umoddi3+0x1f6>
1c0198ca:	00c56963          	bltu	a0,a2,1c0198dc <__umoddi3+0x204>
1c0198ce:	40c507b3          	sub	a5,a0,a2
1c0198d2:	8d95                	sub	a1,a1,a3
1c0198d4:	00f53533          	sltu	a0,a0,a5
1c0198d8:	40a58833          	sub	a6,a1,a0
1c0198dc:	853e                	mv	a0,a5
1c0198de:	85c2                	mv	a1,a6
1c0198e0:	b555                	j	1c019784 <__umoddi3+0xac>
1c0198e2:	010008b7          	lui	a7,0x1000
1c0198e6:	4741                	li	a4,16
1c0198e8:	fb16efe3          	bltu	a3,a7,1c0198a6 <__umoddi3+0x1ce>
1c0198ec:	4761                	li	a4,24
1c0198ee:	bf65                	j	1c0198a6 <__umoddi3+0x1ce>
1c0198f0:	01d65733          	srl	a4,a2,t4
1c0198f4:	01c696b3          	sll	a3,a3,t3
1c0198f8:	8ed9                	or	a3,a3,a4
1c0198fa:	01d5d7b3          	srl	a5,a1,t4
1c0198fe:	0106d813          	srli	a6,a3,0x10
1c019902:	0307f333          	remu	t1,a5,a6
1c019906:	01d558b3          	srl	a7,a0,t4
1c01990a:	0307d7b3          	divu	a5,a5,a6
1c01990e:	01c595b3          	sll	a1,a1,t3
1c019912:	00b8e5b3          	or	a1,a7,a1
1c019916:	0342                	slli	t1,t1,0x10
1c019918:	1006d733          	p.exthz	a4,a3
1c01991c:	0105d893          	srli	a7,a1,0x10
1c019920:	011368b3          	or	a7,t1,a7
1c019924:	02f70f33          	mul	t5,a4,a5
1c019928:	01c61633          	sll	a2,a2,t3
1c01992c:	01c51533          	sll	a0,a0,t3
1c019930:	833e                	mv	t1,a5
1c019932:	01e8fc63          	bleu	t5,a7,1c01994a <__umoddi3+0x272>
1c019936:	98b6                	add	a7,a7,a3
1c019938:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff001b>
1c01993c:	00d8e763          	bltu	a7,a3,1c01994a <__umoddi3+0x272>
1c019940:	01e8f563          	bleu	t5,a7,1c01994a <__umoddi3+0x272>
1c019944:	ffe78313          	addi	t1,a5,-2
1c019948:	98b6                	add	a7,a7,a3
1c01994a:	41e888b3          	sub	a7,a7,t5
1c01994e:	0308f7b3          	remu	a5,a7,a6
1c019952:	0308d8b3          	divu	a7,a7,a6
1c019956:	df07a5b3          	p.insert	a1,a5,15,16
1c01995a:	03170733          	mul	a4,a4,a7
1c01995e:	87c6                	mv	a5,a7
1c019960:	00e5fc63          	bleu	a4,a1,1c019978 <__umoddi3+0x2a0>
1c019964:	95b6                	add	a1,a1,a3
1c019966:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff001b>
1c01996a:	00d5e763          	bltu	a1,a3,1c019978 <__umoddi3+0x2a0>
1c01996e:	00e5f563          	bleu	a4,a1,1c019978 <__umoddi3+0x2a0>
1c019972:	ffe88793          	addi	a5,a7,-2
1c019976:	95b6                	add	a1,a1,a3
1c019978:	0342                	slli	t1,t1,0x10
1c01997a:	6f41                	lui	t5,0x10
1c01997c:	00f36333          	or	t1,t1,a5
1c019980:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x1b>
1c019984:	00f37833          	and	a6,t1,a5
1c019988:	01035313          	srli	t1,t1,0x10
1c01998c:	8ff1                	and	a5,a5,a2
1c01998e:	02f808b3          	mul	a7,a6,a5
1c019992:	02f307b3          	mul	a5,t1,a5
1c019996:	8d99                	sub	a1,a1,a4
1c019998:	8fbe                	mv	t6,a5
1c01999a:	01065713          	srli	a4,a2,0x10
1c01999e:	42e80fb3          	p.mac	t6,a6,a4
1c0199a2:	0108d813          	srli	a6,a7,0x10
1c0199a6:	987e                	add	a6,a6,t6
1c0199a8:	02e30333          	mul	t1,t1,a4
1c0199ac:	00f87363          	bleu	a5,a6,1c0199b2 <__umoddi3+0x2da>
1c0199b0:	937a                	add	t1,t1,t5
1c0199b2:	01085713          	srli	a4,a6,0x10
1c0199b6:	933a                	add	t1,t1,a4
1c0199b8:	6741                	lui	a4,0x10
1c0199ba:	177d                	addi	a4,a4,-1
1c0199bc:	00e87833          	and	a6,a6,a4
1c0199c0:	0842                	slli	a6,a6,0x10
1c0199c2:	00e8f733          	and	a4,a7,a4
1c0199c6:	9742                	add	a4,a4,a6
1c0199c8:	0065e663          	bltu	a1,t1,1c0199d4 <__umoddi3+0x2fc>
1c0199cc:	00659d63          	bne	a1,t1,1c0199e6 <__umoddi3+0x30e>
1c0199d0:	00e57b63          	bleu	a4,a0,1c0199e6 <__umoddi3+0x30e>
1c0199d4:	40c70633          	sub	a2,a4,a2
1c0199d8:	00c73733          	sltu	a4,a4,a2
1c0199dc:	40d30333          	sub	t1,t1,a3
1c0199e0:	40e30333          	sub	t1,t1,a4
1c0199e4:	8732                	mv	a4,a2
1c0199e6:	40e50733          	sub	a4,a0,a4
1c0199ea:	00e53533          	sltu	a0,a0,a4
1c0199ee:	406585b3          	sub	a1,a1,t1
1c0199f2:	8d89                	sub	a1,a1,a0
1c0199f4:	01d597b3          	sll	a5,a1,t4
1c0199f8:	01c75733          	srl	a4,a4,t3
1c0199fc:	00e7e533          	or	a0,a5,a4
1c019a00:	01c5d5b3          	srl	a1,a1,t3
1c019a04:	b341                	j	1c019784 <__umoddi3+0xac>

1c019a06 <__extendsfdf2>:
1c019a06:	002027f3          	csrr	a5,0x2
1c019a0a:	cf751633          	p.extractu	a2,a0,7,23
1c019a0e:	00160713          	addi	a4,a2,1 # 1000001 <__l1_heap_size+0xff001d>
1c019a12:	ee873733          	p.bclr	a4,a4,23,8
1c019a16:	4685                	li	a3,1
1c019a18:	ec0517b3          	p.extractu	a5,a0,22,0
1c019a1c:	817d                	srli	a0,a0,0x1f
1c019a1e:	00e6d963          	ble	a4,a3,1c019a30 <__extendsfdf2+0x2a>
1c019a22:	0037d713          	srli	a4,a5,0x3
1c019a26:	38060613          	addi	a2,a2,896
1c019a2a:	07f6                	slli	a5,a5,0x1d
1c019a2c:	4681                	li	a3,0
1c019a2e:	a899                	j	1c019a84 <__extendsfdf2+0x7e>
1c019a30:	ee05                	bnez	a2,1c019a68 <__extendsfdf2+0x62>
1c019a32:	c7ad                	beqz	a5,1c019a9c <__extendsfdf2+0x96>
1c019a34:	477d                	li	a4,31
1c019a36:	100796b3          	p.fl1	a3,a5
1c019a3a:	40d706b3          	sub	a3,a4,a3
1c019a3e:	4729                	li	a4,10
1c019a40:	00d74e63          	blt	a4,a3,1c019a5c <__extendsfdf2+0x56>
1c019a44:	472d                	li	a4,11
1c019a46:	8f15                	sub	a4,a4,a3
1c019a48:	01568613          	addi	a2,a3,21
1c019a4c:	00e7d733          	srl	a4,a5,a4
1c019a50:	00c797b3          	sll	a5,a5,a2
1c019a54:	38900613          	li	a2,905
1c019a58:	8e15                	sub	a2,a2,a3
1c019a5a:	bfc9                	j	1c019a2c <__extendsfdf2+0x26>
1c019a5c:	ff568713          	addi	a4,a3,-11
1c019a60:	00e79733          	sll	a4,a5,a4
1c019a64:	4781                	li	a5,0
1c019a66:	b7fd                	j	1c019a54 <__extendsfdf2+0x4e>
1c019a68:	cf8d                	beqz	a5,1c019aa2 <__extendsfdf2+0x9c>
1c019a6a:	004006b7          	lui	a3,0x400
1c019a6e:	8efd                	and	a3,a3,a5
1c019a70:	0037d713          	srli	a4,a5,0x3
1c019a74:	0016b693          	seqz	a3,a3
1c019a78:	0692                	slli	a3,a3,0x4
1c019a7a:	c1374733          	p.bset	a4,a4,0,19
1c019a7e:	07f6                	slli	a5,a5,0x1d
1c019a80:	7ff00613          	li	a2,2047
1c019a84:	4581                	li	a1,0
1c019a86:	e60725b3          	p.insert	a1,a4,19,0
1c019a8a:	d54625b3          	p.insert	a1,a2,10,20
1c019a8e:	c1f525b3          	p.insert	a1,a0,0,31
1c019a92:	853e                	mv	a0,a5
1c019a94:	c299                	beqz	a3,1c019a9a <__extendsfdf2+0x94>
1c019a96:	0016a073          	csrs	0x1,a3
1c019a9a:	8082                	ret
1c019a9c:	4701                	li	a4,0
1c019a9e:	4601                	li	a2,0
1c019aa0:	b771                	j	1c019a2c <__extendsfdf2+0x26>
1c019aa2:	4701                	li	a4,0
1c019aa4:	7ff00613          	li	a2,2047
1c019aa8:	b751                	j	1c019a2c <__extendsfdf2+0x26>

1c019aaa <cpu_perf_get>:
1c019aaa:	14f52563          	p.beqimm	a0,15,1c019bf4 <cpu_perf_get+0x14a>
1c019aae:	47bd                	li	a5,15
1c019ab0:	02a7e463          	bltu	a5,a0,1c019ad8 <cpu_perf_get+0x2e>
1c019ab4:	14752363          	p.beqimm	a0,7,1c019bfa <cpu_perf_get+0x150>
1c019ab8:	479d                	li	a5,7
1c019aba:	04a7e163          	bltu	a5,a0,1c019afc <cpu_perf_get+0x52>
1c019abe:	0e352763          	p.beqimm	a0,3,1c019bac <cpu_perf_get+0x102>
1c019ac2:	478d                	li	a5,3
1c019ac4:	06a7ee63          	bltu	a5,a0,1c019b40 <cpu_perf_get+0x96>
1c019ac8:	10152a63          	p.beqimm	a0,1,1c019bdc <cpu_perf_get+0x132>
1c019acc:	4785                	li	a5,1
1c019ace:	0aa7ea63          	bltu	a5,a0,1c019b82 <cpu_perf_get+0xd8>
1c019ad2:	78002573          	csrr	a0,pccr0
1c019ad6:	8082                	ret
1c019ad8:	47dd                	li	a5,23
1c019ada:	10f50463          	beq	a0,a5,1c019be2 <cpu_perf_get+0x138>
1c019ade:	02a7ec63          	bltu	a5,a0,1c019b16 <cpu_perf_get+0x6c>
1c019ae2:	47cd                	li	a5,19
1c019ae4:	0af50863          	beq	a0,a5,1c019b94 <cpu_perf_get+0xea>
1c019ae8:	06a7ef63          	bltu	a5,a0,1c019b66 <cpu_perf_get+0xbc>
1c019aec:	47c5                	li	a5,17
1c019aee:	0ef50163          	beq	a0,a5,1c019bd0 <cpu_perf_get+0x126>
1c019af2:	0ca7e063          	bltu	a5,a0,1c019bb2 <cpu_perf_get+0x108>
1c019af6:	79002573          	csrr	a0,pccr16
1c019afa:	8082                	ret
1c019afc:	08b52f63          	p.beqimm	a0,11,1c019b9a <cpu_perf_get+0xf0>
1c019b00:	47ad                	li	a5,11
1c019b02:	02a7e763          	bltu	a5,a0,1c019b30 <cpu_perf_get+0x86>
1c019b06:	0e952463          	p.beqimm	a0,9,1c019bee <cpu_perf_get+0x144>
1c019b0a:	47a5                	li	a5,9
1c019b0c:	06a7e863          	bltu	a5,a0,1c019b7c <cpu_perf_get+0xd2>
1c019b10:	78802573          	csrr	a0,pccr8
1c019b14:	8082                	ret
1c019b16:	47ed                	li	a5,27
1c019b18:	08f50763          	beq	a0,a5,1c019ba6 <cpu_perf_get+0xfc>
1c019b1c:	02a7ea63          	bltu	a5,a0,1c019b50 <cpu_perf_get+0xa6>
1c019b20:	47e5                	li	a5,25
1c019b22:	0af50463          	beq	a0,a5,1c019bca <cpu_perf_get+0x120>
1c019b26:	06a7e463          	bltu	a5,a0,1c019b8e <cpu_perf_get+0xe4>
1c019b2a:	79802573          	csrr	a0,pccr24
1c019b2e:	8082                	ret
1c019b30:	0ad52c63          	p.beqimm	a0,13,1c019be8 <cpu_perf_get+0x13e>
1c019b34:	47b5                	li	a5,13
1c019b36:	04a7e063          	bltu	a5,a0,1c019b76 <cpu_perf_get+0xcc>
1c019b3a:	78c02573          	csrr	a0,pccr12
1c019b3e:	8082                	ret
1c019b40:	06552f63          	p.beqimm	a0,5,1c019bbe <cpu_perf_get+0x114>
1c019b44:	4795                	li	a5,5
1c019b46:	04a7e163          	bltu	a5,a0,1c019b88 <cpu_perf_get+0xde>
1c019b4a:	78402573          	csrr	a0,pccr4
1c019b4e:	8082                	ret
1c019b50:	47f5                	li	a5,29
1c019b52:	06f50963          	beq	a0,a5,1c019bc4 <cpu_perf_get+0x11a>
1c019b56:	04f56563          	bltu	a0,a5,1c019ba0 <cpu_perf_get+0xf6>
1c019b5a:	47f9                	li	a5,30
1c019b5c:	0af51263          	bne	a0,a5,1c019c00 <cpu_perf_get+0x156>
1c019b60:	79e02573          	csrr	a0,pccr30
1c019b64:	8082                	ret
1c019b66:	47d5                	li	a5,21
1c019b68:	06f50763          	beq	a0,a5,1c019bd6 <cpu_perf_get+0x12c>
1c019b6c:	04a7e663          	bltu	a5,a0,1c019bb8 <cpu_perf_get+0x10e>
1c019b70:	79402573          	csrr	a0,pccr20
1c019b74:	8082                	ret
1c019b76:	78e02573          	csrr	a0,pccr14
1c019b7a:	8082                	ret
1c019b7c:	78a02573          	csrr	a0,pccr10
1c019b80:	8082                	ret
1c019b82:	78202573          	csrr	a0,pccr2
1c019b86:	8082                	ret
1c019b88:	78602573          	csrr	a0,pccr6
1c019b8c:	8082                	ret
1c019b8e:	79a02573          	csrr	a0,pccr26
1c019b92:	8082                	ret
1c019b94:	79302573          	csrr	a0,pccr19
1c019b98:	8082                	ret
1c019b9a:	78b02573          	csrr	a0,pccr11
1c019b9e:	8082                	ret
1c019ba0:	79c02573          	csrr	a0,pccr28
1c019ba4:	8082                	ret
1c019ba6:	79b02573          	csrr	a0,pccr27
1c019baa:	8082                	ret
1c019bac:	78302573          	csrr	a0,pccr3
1c019bb0:	8082                	ret
1c019bb2:	79202573          	csrr	a0,pccr18
1c019bb6:	8082                	ret
1c019bb8:	79602573          	csrr	a0,pccr22
1c019bbc:	8082                	ret
1c019bbe:	78502573          	csrr	a0,pccr5
1c019bc2:	8082                	ret
1c019bc4:	79d02573          	csrr	a0,pccr29
1c019bc8:	8082                	ret
1c019bca:	79902573          	csrr	a0,pccr25
1c019bce:	8082                	ret
1c019bd0:	79102573          	csrr	a0,pccr17
1c019bd4:	8082                	ret
1c019bd6:	79502573          	csrr	a0,pccr21
1c019bda:	8082                	ret
1c019bdc:	78102573          	csrr	a0,pccr1
1c019be0:	8082                	ret
1c019be2:	79702573          	csrr	a0,pccr23
1c019be6:	8082                	ret
1c019be8:	78d02573          	csrr	a0,pccr13
1c019bec:	8082                	ret
1c019bee:	78902573          	csrr	a0,pccr9
1c019bf2:	8082                	ret
1c019bf4:	78f02573          	csrr	a0,pccr15
1c019bf8:	8082                	ret
1c019bfa:	78702573          	csrr	a0,pccr7
1c019bfe:	8082                	ret
1c019c00:	4501                	li	a0,0
1c019c02:	8082                	ret

1c019c04 <task_matMultAutoVectorization>:
1c019c04:	6291                	lui	t0,0x4
1c019c06:	20060613          	addi	a2,a2,512
1c019c0a:	08050f93          	addi	t6,a0,128
1c019c0e:	92aa                	add	t0,t0,a0
1c019c10:	e0060f13          	addi	t5,a2,-512
1c019c14:	8eae                	mv	t4,a1
1c019c16:	0809d07b          	lp.setupi	x0,128,1c019c3c <task_matMultAutoVectorization+0x38>
1c019c1a:	000f222b          	p.sw	zero,4(t5!)
1c019c1e:	8876                	mv	a6,t4
1c019c20:	86aa                	mv	a3,a0
1c019c22:	4701                	li	a4,0
1c019c24:	40af87b3          	sub	a5,t6,a0
1c019c28:	0067c0fb          	lp.setup	x1,a5,1c019c34 <task_matMultAutoVectorization+0x30>
1c019c2c:	0016c30b          	p.lbu	t1,1(a3!) # 400001 <__l1_heap_size+0x3f001d>
1c019c30:	0018488b          	p.lbu	a7,1(a6!)
1c019c34:	43130733          	p.mac	a4,t1,a7
1c019c38:	feef2e23          	sw	a4,-4(t5)
1c019c3c:	080e8e93          	addi	t4,t4,128
1c019c40:	08050513          	addi	a0,a0,128
1c019c44:	20060613          	addi	a2,a2,512
1c019c48:	080f8f93          	addi	t6,t6,128
1c019c4c:	fca292e3          	bne	t0,a0,1c019c10 <task_matMultAutoVectorization+0xc>
1c019c50:	8082                	ret

1c019c52 <main>:
1c019c52:	1141                	addi	sp,sp,-16
1c019c54:	1c001537          	lui	a0,0x1c001
1c019c58:	1c0055b7          	lui	a1,0x1c005
1c019c5c:	c606                	sw	ra,12(sp)
1c019c5e:	c422                	sw	s0,8(sp)
1c019c60:	c226                	sw	s1,4(sp)
1c019c62:	4801                	li	a6,0
1c019c64:	24050e13          	addi	t3,a0,576 # 1c001240 <_edata>
1c019c68:	24058313          	addi	t1,a1,576 # 1c005240 <B>
1c019c6c:	0808d07b          	lp.setupi	x0,128,1c019c8e <main+0x3c>
1c019c70:	0ff87793          	andi	a5,a6,255
1c019c74:	010e0633          	add	a2,t3,a6
1c019c78:	010306b3          	add	a3,t1,a6
1c019c7c:	0803d0fb          	lp.setupi	x1,128,1c019c8a <main+0x38>
1c019c80:	00f600ab          	p.sb	a5,1(a2!)
1c019c84:	00f680ab          	p.sb	a5,1(a3!)
1c019c88:	0785                	addi	a5,a5,1
1c019c8a:	0ff7f793          	andi	a5,a5,255
1c019c8e:	08080813          	addi	a6,a6,128
1c019c92:	000207b7          	lui	a5,0x20
1c019c96:	0789                	addi	a5,a5,2
1c019c98:	cc079073          	csrw	0xcc0,a5
1c019c9c:	f1402473          	csrr	s0,mhartid
1c019ca0:	47fd                	li	a5,31
1c019ca2:	ca541733          	p.extractu	a4,s0,5,5
1c019ca6:	0af70663          	beq	a4,a5,1c019d52 <main+0x100>
1c019caa:	102007b7          	lui	a5,0x10200
1c019cae:	4705                	li	a4,1
1c019cb0:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019cb4:	02e7a023          	sw	a4,32(a5)
1c019cb8:	4781                	li	a5,0
1c019cba:	79f79073          	csrw	pccr31,a5
1c019cbe:	ca5417b3          	p.extractu	a5,s0,5,5
1c019cc2:	477d                	li	a4,31
1c019cc4:	0ae78d63          	beq	a5,a4,1c019d7e <main+0x12c>
1c019cc8:	102007b7          	lui	a5,0x10200
1c019ccc:	4705                	li	a4,1
1c019cce:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019cd2:	00e7ac23          	sw	a4,24(a5)
1c019cd6:	478d                	li	a5,3
1c019cd8:	cc179073          	csrw	0xcc1,a5
1c019cdc:	1c009637          	lui	a2,0x1c009
1c019ce0:	24060613          	addi	a2,a2,576 # 1c009240 <tempC>
1c019ce4:	24058593          	addi	a1,a1,576
1c019ce8:	24050513          	addi	a0,a0,576
1c019cec:	3f21                	jal	1c019c04 <task_matMultAutoVectorization>
1c019cee:	ca5417b3          	p.extractu	a5,s0,5,5
1c019cf2:	477d                	li	a4,31
1c019cf4:	06e78d63          	beq	a5,a4,1c019d6e <main+0x11c>
1c019cf8:	102007b7          	lui	a5,0x10200
1c019cfc:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019d00:	0007a023          	sw	zero,0(a5)
1c019d04:	4781                	li	a5,0
1c019d06:	cc179073          	csrw	0xcc1,a5
1c019d0a:	4505                	li	a0,1
1c019d0c:	3b79                	jal	1c019aaa <cpu_perf_get>
1c019d0e:	ca541433          	p.extractu	s0,s0,5,5
1c019d12:	47fd                	li	a5,31
1c019d14:	84aa                	mv	s1,a0
1c019d16:	04f40763          	beq	s0,a5,1c019d64 <main+0x112>
1c019d1a:	10200637          	lui	a2,0x10200
1c019d1e:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c019d22:	00862403          	lw	s0,8(a2)
1c019d26:	d014f7d3          	fcvt.s.wu	a5,s1
1c019d2a:	d0147553          	fcvt.s.wu	a0,s0
1c019d2e:	18f57553          	fdiv.s	a0,a0,a5
1c019d32:	39d1                	jal	1c019a06 <__extendsfdf2>
1c019d34:	872a                	mv	a4,a0
1c019d36:	1c001537          	lui	a0,0x1c001
1c019d3a:	87ae                	mv	a5,a1
1c019d3c:	8622                	mv	a2,s0
1c019d3e:	85a6                	mv	a1,s1
1c019d40:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c019d44:	22f5                	jal	1c019f30 <printf>
1c019d46:	40b2                	lw	ra,12(sp)
1c019d48:	4422                	lw	s0,8(sp)
1c019d4a:	4492                	lw	s1,4(sp)
1c019d4c:	4501                	li	a0,0
1c019d4e:	0141                	addi	sp,sp,16
1c019d50:	8082                	ret
1c019d52:	4785                	li	a5,1
1c019d54:	1a10b737          	lui	a4,0x1a10b
1c019d58:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c019d5c:	4781                	li	a5,0
1c019d5e:	79f79073          	csrw	pccr31,a5
1c019d62:	bfb1                	j	1c019cbe <main+0x6c>
1c019d64:	1a10b637          	lui	a2,0x1a10b
1c019d68:	00862403          	lw	s0,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c019d6c:	bf6d                	j	1c019d26 <main+0xd4>
1c019d6e:	1a10b7b7          	lui	a5,0x1a10b
1c019d72:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c019d76:	4781                	li	a5,0
1c019d78:	cc179073          	csrw	0xcc1,a5
1c019d7c:	b779                	j	1c019d0a <main+0xb8>
1c019d7e:	4785                	li	a5,1
1c019d80:	1a10b737          	lui	a4,0x1a10b
1c019d84:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c019d88:	478d                	li	a5,3
1c019d8a:	cc179073          	csrw	0xcc1,a5
1c019d8e:	b7b9                	j	1c019cdc <main+0x8a>

1c019d90 <pos_fll_init>:
1c019d90:	00451593          	slli	a1,a0,0x4
1c019d94:	832a                	mv	t1,a0
1c019d96:	00458e13          	addi	t3,a1,4
1c019d9a:	1a100637          	lui	a2,0x1a100
1c019d9e:	21c67703          	p.lw	a4,t3(a2)
1c019da2:	86ba                	mv	a3,a4
1c019da4:	04074163          	bltz	a4,1c019de6 <pos_fll_init+0x56>
1c019da8:	00858793          	addi	a5,a1,8
1c019dac:	20f67883          	p.lw	a7,a5(a2)
1c019db0:	4519                	li	a0,6
1c019db2:	caa528b3          	p.insert	a7,a0,5,10
1c019db6:	05000513          	li	a0,80
1c019dba:	d70528b3          	p.insert	a7,a0,11,16
1c019dbe:	1a100837          	lui	a6,0x1a100
1c019dc2:	011867a3          	p.sw	a7,a5(a6)
1c019dc6:	05b1                	addi	a1,a1,12
1c019dc8:	20b67603          	p.lw	a2,a1(a2)
1c019dcc:	14c00793          	li	a5,332
1c019dd0:	d307a633          	p.insert	a2,a5,9,16
1c019dd4:	00c865a3          	p.sw	a2,a1(a6)
1c019dd8:	4785                	li	a5,1
1c019dda:	c1e7a6b3          	p.insert	a3,a5,0,30
1c019dde:	c1f7a6b3          	p.insert	a3,a5,0,31
1c019de2:	00d86e23          	p.sw	a3,t3(a6)
1c019de6:	00400793          	li	a5,4
1c019dea:	00231613          	slli	a2,t1,0x2
1c019dee:	963e                	add	a2,a2,a5
1c019df0:	4208                	lw	a0,0(a2)
1c019df2:	ed19                	bnez	a0,1c019e10 <pos_fll_init+0x80>
1c019df4:	10075733          	p.exthz	a4,a4
1c019df8:	c7a696b3          	p.extractu	a3,a3,3,26
1c019dfc:	073e                	slli	a4,a4,0xf
1c019dfe:	16fd                	addi	a3,a3,-1
1c019e00:	00d75533          	srl	a0,a4,a3
1c019e04:	c208                	sw	a0,0(a2)
1c019e06:	979a                	add	a5,a5,t1
1c019e08:	4705                	li	a4,1
1c019e0a:	00e78623          	sb	a4,12(a5)
1c019e0e:	8082                	ret
1c019e10:	46f5                	li	a3,29
1c019e12:	10051733          	p.fl1	a4,a0
1c019e16:	4585                	li	a1,1
1c019e18:	82e6b75b          	p.subun	a4,a3,a4,1
1c019e1c:	04e5e733          	p.max	a4,a1,a4
1c019e20:	fff70693          	addi	a3,a4,-1
1c019e24:	00e51833          	sll	a6,a0,a4
1c019e28:	00d595b3          	sll	a1,a1,a3
1c019e2c:	dc0838b3          	p.bclr	a7,a6,14,0
1c019e30:	006786b3          	add	a3,a5,t1
1c019e34:	c0e8a5db          	p.addunr	a1,a7,a4
1c019e38:	00c6c683          	lbu	a3,12(a3)
1c019e3c:	c20c                	sw	a1,0(a2)
1c019e3e:	d6e1                	beqz	a3,1c019e06 <pos_fll_init+0x76>
1c019e40:	1a100637          	lui	a2,0x1a100
1c019e44:	21c67683          	p.lw	a3,t3(a2)
1c019e48:	00f85813          	srli	a6,a6,0xf
1c019e4c:	de0826b3          	p.insert	a3,a6,15,0
1c019e50:	0705                	addi	a4,a4,1
1c019e52:	c7a726b3          	p.insert	a3,a4,3,26
1c019e56:	00d66e23          	p.sw	a3,t3(a2)
1c019e5a:	979a                	add	a5,a5,t1
1c019e5c:	4705                	li	a4,1
1c019e5e:	00e78623          	sb	a4,12(a5)
1c019e62:	8082                	ret

1c019e64 <pos_fll_constructor>:
1c019e64:	00400793          	li	a5,4
1c019e68:	0007a023          	sw	zero,0(a5)
1c019e6c:	0007a223          	sw	zero,4(a5)
1c019e70:	0007a423          	sw	zero,8(a5)
1c019e74:	00079623          	sh	zero,12(a5)
1c019e78:	00078723          	sb	zero,14(a5)
1c019e7c:	8082                	ret

1c019e7e <pos_soc_init>:
1c019e7e:	1141                	addi	sp,sp,-16
1c019e80:	c606                	sw	ra,12(sp)
1c019e82:	c422                	sw	s0,8(sp)
1c019e84:	37c5                	jal	1c019e64 <pos_fll_constructor>
1c019e86:	4501                	li	a0,0
1c019e88:	3721                	jal	1c019d90 <pos_fll_init>
1c019e8a:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c019e8e:	4505                	li	a0,1
1c019e90:	3701                	jal	1c019d90 <pos_fll_init>
1c019e92:	01400413          	li	s0,20
1c019e96:	c408                	sw	a0,8(s0)
1c019e98:	4509                	li	a0,2
1c019e9a:	3ddd                	jal	1c019d90 <pos_fll_init>
1c019e9c:	c048                	sw	a0,4(s0)
1c019e9e:	40b2                	lw	ra,12(sp)
1c019ea0:	4422                	lw	s0,8(sp)
1c019ea2:	0141                	addi	sp,sp,16
1c019ea4:	8082                	ret

1c019ea6 <strchr>:
1c019ea6:	00054783          	lbu	a5,0(a0)
1c019eaa:	0ff5f593          	andi	a1,a1,255
1c019eae:	00b78c63          	beq	a5,a1,1c019ec6 <strchr+0x20>
1c019eb2:	cb99                	beqz	a5,1c019ec8 <strchr+0x22>
1c019eb4:	00150793          	addi	a5,a0,1
1c019eb8:	a011                	j	1c019ebc <strchr+0x16>
1c019eba:	c719                	beqz	a4,1c019ec8 <strchr+0x22>
1c019ebc:	853e                	mv	a0,a5
1c019ebe:	0017c70b          	p.lbu	a4,1(a5!)
1c019ec2:	feb71ce3          	bne	a4,a1,1c019eba <strchr+0x14>
1c019ec6:	8082                	ret
1c019ec8:	0015b593          	seqz	a1,a1
1c019ecc:	40b005b3          	neg	a1,a1
1c019ed0:	8d6d                	and	a0,a0,a1
1c019ed2:	8082                	ret

1c019ed4 <pos_libc_fputc_locked>:
1c019ed4:	f14027f3          	csrr	a5,mhartid
1c019ed8:	1a10f6b7          	lui	a3,0x1a10f
1c019edc:	ca5797b3          	p.extractu	a5,a5,5,5
1c019ee0:	f1402773          	csrr	a4,mhartid
1c019ee4:	079e                	slli	a5,a5,0x7
1c019ee6:	070e                	slli	a4,a4,0x3
1c019ee8:	0ff57513          	andi	a0,a0,255
1c019eec:	ee873733          	p.bclr	a4,a4,23,8
1c019ef0:	97b6                	add	a5,a5,a3
1c019ef2:	00a767a3          	p.sw	a0,a5(a4)
1c019ef6:	4501                	li	a0,0
1c019ef8:	8082                	ret

1c019efa <pos_libc_prf_locked>:
1c019efa:	a095                	j	1c019f5e <pos_libc_prf>

1c019efc <exit>:
1c019efc:	1141                	addi	sp,sp,-16
1c019efe:	c422                	sw	s0,8(sp)
1c019f00:	c606                	sw	ra,12(sp)
1c019f02:	842a                	mv	s0,a0
1c019f04:	43d010ef          	jal	ra,1c01bb40 <pos_init_stop>
1c019f08:	c1f44533          	p.bset	a0,s0,0,31
1c019f0c:	1a1047b7          	lui	a5,0x1a104
1c019f10:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c019f14:	1a10a7b7          	lui	a5,0x1a10a
1c019f18:	577d                	li	a4,-1
1c019f1a:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c019f1e:	10500073          	wfi
1c019f22:	10500073          	wfi
1c019f26:	bfe5                	j	1c019f1e <exit+0x22>

1c019f28 <pos_io_start>:
1c019f28:	4501                	li	a0,0
1c019f2a:	8082                	ret

1c019f2c <pos_io_stop>:
1c019f2c:	4501                	li	a0,0
1c019f2e:	8082                	ret

1c019f30 <printf>:
1c019f30:	7139                	addi	sp,sp,-64
1c019f32:	02410313          	addi	t1,sp,36
1c019f36:	d432                	sw	a2,40(sp)
1c019f38:	862a                	mv	a2,a0
1c019f3a:	1c01a537          	lui	a0,0x1c01a
1c019f3e:	d22e                	sw	a1,36(sp)
1c019f40:	d636                	sw	a3,44(sp)
1c019f42:	4589                	li	a1,2
1c019f44:	869a                	mv	a3,t1
1c019f46:	ed450513          	addi	a0,a0,-300 # 1c019ed4 <pos_libc_fputc_locked>
1c019f4a:	ce06                	sw	ra,28(sp)
1c019f4c:	d83a                	sw	a4,48(sp)
1c019f4e:	da3e                	sw	a5,52(sp)
1c019f50:	dc42                	sw	a6,56(sp)
1c019f52:	de46                	sw	a7,60(sp)
1c019f54:	c61a                	sw	t1,12(sp)
1c019f56:	3755                	jal	1c019efa <pos_libc_prf_locked>
1c019f58:	40f2                	lw	ra,28(sp)
1c019f5a:	6121                	addi	sp,sp,64
1c019f5c:	8082                	ret

1c019f5e <pos_libc_prf>:
1c019f5e:	7119                	addi	sp,sp,-128
1c019f60:	dca2                	sw	s0,120(sp)
1c019f62:	1058                	addi	a4,sp,36
1c019f64:	4401                	li	s0,0
1c019f66:	d6ce                	sw	s3,108(sp)
1c019f68:	d4d2                	sw	s4,104(sp)
1c019f6a:	d2d6                	sw	s5,100(sp)
1c019f6c:	cede                	sw	s7,92(sp)
1c019f6e:	cce2                	sw	s8,88(sp)
1c019f70:	c8ea                	sw	s10,80(sp)
1c019f72:	de86                	sw	ra,124(sp)
1c019f74:	daa6                	sw	s1,116(sp)
1c019f76:	d8ca                	sw	s2,112(sp)
1c019f78:	d0da                	sw	s6,96(sp)
1c019f7a:	cae6                	sw	s9,84(sp)
1c019f7c:	c6ee                	sw	s11,76(sp)
1c019f7e:	89aa                	mv	s3,a0
1c019f80:	8bae                	mv	s7,a1
1c019f82:	8d32                	mv	s10,a2
1c019f84:	8a36                	mv	s4,a3
1c019f86:	1c001c37          	lui	s8,0x1c001
1c019f8a:	c03a                	sw	a4,0(sp)
1c019f8c:	8aa2                	mv	s5,s0
1c019f8e:	a039                	j	1c019f9c <pos_libc_prf+0x3e>
1c019f90:	85de                	mv	a1,s7
1c019f92:	9982                	jalr	s3
1c019f94:	15f52063          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c019f98:	0a85                	addi	s5,s5,1
1c019f9a:	8d22                	mv	s10,s0
1c019f9c:	000d4503          	lbu	a0,0(s10)
1c019fa0:	001d0413          	addi	s0,s10,1
1c019fa4:	c979                	beqz	a0,1c01a07a <pos_libc_prf+0x11c>
1c019fa6:	02500793          	li	a5,37
1c019faa:	fef513e3          	bne	a0,a5,1c019f90 <pos_libc_prf+0x32>
1c019fae:	ca02                	sw	zero,20(sp)
1c019fb0:	c802                	sw	zero,16(sp)
1c019fb2:	c602                	sw	zero,12(sp)
1c019fb4:	c402                	sw	zero,8(sp)
1c019fb6:	c202                	sw	zero,4(sp)
1c019fb8:	02300493          	li	s1,35
1c019fbc:	02d00b13          	li	s6,45
1c019fc0:	00044c83          	lbu	s9,0(s0)
1c019fc4:	00140913          	addi	s2,s0,1
1c019fc8:	85e6                	mv	a1,s9
1c019fca:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c019fce:	8d4a                	mv	s10,s2
1c019fd0:	8de6                	mv	s11,s9
1c019fd2:	3dd1                	jal	1c019ea6 <strchr>
1c019fd4:	c91d                	beqz	a0,1c01a00a <pos_libc_prf+0xac>
1c019fd6:	109c8963          	beq	s9,s1,1c01a0e8 <pos_libc_prf+0x18a>
1c019fda:	0194fe63          	bleu	s9,s1,1c019ff6 <pos_libc_prf+0x98>
1c019fde:	116c8163          	beq	s9,s6,1c01a0e0 <pos_libc_prf+0x182>
1c019fe2:	03000713          	li	a4,48
1c019fe6:	0eec8963          	beq	s9,a4,1c01a0d8 <pos_libc_prf+0x17a>
1c019fea:	02b00793          	li	a5,43
1c019fee:	0afc8763          	beq	s9,a5,1c01a09c <pos_libc_prf+0x13e>
1c019ff2:	844a                	mv	s0,s2
1c019ff4:	b7f1                	j	1c019fc0 <pos_libc_prf+0x62>
1c019ff6:	080c8263          	beqz	s9,1c01a07a <pos_libc_prf+0x11c>
1c019ffa:	02000793          	li	a5,32
1c019ffe:	fefc9ae3          	bne	s9,a5,1c019ff2 <pos_libc_prf+0x94>
1c01a002:	4785                	li	a5,1
1c01a004:	c83e                	sw	a5,16(sp)
1c01a006:	844a                	mv	s0,s2
1c01a008:	bf65                	j	1c019fc0 <pos_libc_prf+0x62>
1c01a00a:	02a00693          	li	a3,42
1c01a00e:	2edc8263          	beq	s9,a3,1c01a2f2 <pos_libc_prf+0x394>
1c01a012:	fd0c8693          	addi	a3,s9,-48
1c01a016:	45a5                	li	a1,9
1c01a018:	4b01                	li	s6,0
1c01a01a:	0cd5fd63          	bleu	a3,a1,1c01a0f4 <pos_libc_prf+0x196>
1c01a01e:	02e00793          	li	a5,46
1c01a022:	28fd8663          	beq	s11,a5,1c01a2ae <pos_libc_prf+0x350>
1c01a026:	846e                	mv	s0,s11
1c01a028:	54fd                	li	s1,-1
1c01a02a:	1c001737          	lui	a4,0x1c001
1c01a02e:	85ee                	mv	a1,s11
1c01a030:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c01a034:	3d8d                	jal	1c019ea6 <strchr>
1c01a036:	4781                	li	a5,0
1c01a038:	cd19                	beqz	a0,1c01a056 <pos_libc_prf+0xf8>
1c01a03a:	06c00793          	li	a5,108
1c01a03e:	001d0693          	addi	a3,s10,1
1c01a042:	000d4d83          	lbu	s11,0(s10)
1c01a046:	3af40563          	beq	s0,a5,1c01a3f0 <pos_libc_prf+0x492>
1c01a04a:	06800793          	li	a5,104
1c01a04e:	3af40563          	beq	s0,a5,1c01a3f8 <pos_libc_prf+0x49a>
1c01a052:	8d36                	mv	s10,a3
1c01a054:	87a2                	mv	a5,s0
1c01a056:	06700693          	li	a3,103
1c01a05a:	0bb6ee63          	bltu	a3,s11,1c01a116 <pos_libc_prf+0x1b8>
1c01a05e:	06500693          	li	a3,101
1c01a062:	3addf2e3          	bleu	a3,s11,1c01ac06 <pos_libc_prf+0xca8>
1c01a066:	04700693          	li	a3,71
1c01a06a:	39b6ed63          	bltu	a3,s11,1c01a404 <pos_libc_prf+0x4a6>
1c01a06e:	04500793          	li	a5,69
1c01a072:	38fdfae3          	bleu	a5,s11,1c01ac06 <pos_libc_prf+0xca8>
1c01a076:	2e0d9863          	bnez	s11,1c01a366 <pos_libc_prf+0x408>
1c01a07a:	8456                	mv	s0,s5
1c01a07c:	8522                	mv	a0,s0
1c01a07e:	50f6                	lw	ra,124(sp)
1c01a080:	5466                	lw	s0,120(sp)
1c01a082:	54d6                	lw	s1,116(sp)
1c01a084:	5946                	lw	s2,112(sp)
1c01a086:	59b6                	lw	s3,108(sp)
1c01a088:	5a26                	lw	s4,104(sp)
1c01a08a:	5a96                	lw	s5,100(sp)
1c01a08c:	5b06                	lw	s6,96(sp)
1c01a08e:	4bf6                	lw	s7,92(sp)
1c01a090:	4c66                	lw	s8,88(sp)
1c01a092:	4cd6                	lw	s9,84(sp)
1c01a094:	4d46                	lw	s10,80(sp)
1c01a096:	4db6                	lw	s11,76(sp)
1c01a098:	6109                	addi	sp,sp,128
1c01a09a:	8082                	ret
1c01a09c:	4705                	li	a4,1
1c01a09e:	c63a                	sw	a4,12(sp)
1c01a0a0:	844a                	mv	s0,s2
1c01a0a2:	bf39                	j	1c019fc0 <pos_libc_prf+0x62>
1c01a0a4:	00044503          	lbu	a0,0(s0)
1c01a0a8:	47a5                	li	a5,9
1c01a0aa:	fd050693          	addi	a3,a0,-48
1c01a0ae:	72d7e9e3          	bltu	a5,a3,1c01afe0 <pos_libc_prf+0x1082>
1c01a0b2:	00140793          	addi	a5,s0,1
1c01a0b6:	8dbe                	mv	s11,a5
1c01a0b8:	a809                	j	1c01a0ca <pos_libc_prf+0x16c>
1c01a0ba:	001dc50b          	p.lbu	a0,1(s11!)
1c01a0be:	4725                	li	a4,9
1c01a0c0:	fd050793          	addi	a5,a0,-48
1c01a0c4:	197d                	addi	s2,s2,-1
1c01a0c6:	70f76ee3          	bltu	a4,a5,1c01afe2 <pos_libc_prf+0x1084>
1c01a0ca:	85de                	mv	a1,s7
1c01a0cc:	846e                	mv	s0,s11
1c01a0ce:	9982                	jalr	s3
1c01a0d0:	fff535e3          	p.bneimm	a0,-1,1c01a0ba <pos_libc_prf+0x15c>
1c01a0d4:	547d                	li	s0,-1
1c01a0d6:	b75d                	j	1c01a07c <pos_libc_prf+0x11e>
1c01a0d8:	4785                	li	a5,1
1c01a0da:	ca3e                	sw	a5,20(sp)
1c01a0dc:	844a                	mv	s0,s2
1c01a0de:	b5cd                	j	1c019fc0 <pos_libc_prf+0x62>
1c01a0e0:	4705                	li	a4,1
1c01a0e2:	c43a                	sw	a4,8(sp)
1c01a0e4:	844a                	mv	s0,s2
1c01a0e6:	bde9                	j	1c019fc0 <pos_libc_prf+0x62>
1c01a0e8:	4705                	li	a4,1
1c01a0ea:	c23a                	sw	a4,4(sp)
1c01a0ec:	844a                	mv	s0,s2
1c01a0ee:	bdc9                	j	1c019fc0 <pos_libc_prf+0x62>
1c01a0f0:	844a                	mv	s0,s2
1c01a0f2:	0905                	addi	s2,s2,1
1c01a0f4:	002b1793          	slli	a5,s6,0x2
1c01a0f8:	00094d83          	lbu	s11,0(s2)
1c01a0fc:	97da                	add	a5,a5,s6
1c01a0fe:	0786                	slli	a5,a5,0x1
1c01a100:	97e6                	add	a5,a5,s9
1c01a102:	fd0d8713          	addi	a4,s11,-48
1c01a106:	fd078b13          	addi	s6,a5,-48
1c01a10a:	8cee                	mv	s9,s11
1c01a10c:	fee5f2e3          	bleu	a4,a1,1c01a0f0 <pos_libc_prf+0x192>
1c01a110:	00240d13          	addi	s10,s0,2
1c01a114:	b729                	j	1c01a01e <pos_libc_prf+0xc0>
1c01a116:	07000693          	li	a3,112
1c01a11a:	24dd85e3          	beq	s11,a3,1c01ab64 <pos_libc_prf+0xc06>
1c01a11e:	1fb6e463          	bltu	a3,s11,1c01a306 <pos_libc_prf+0x3a8>
1c01a122:	06e00693          	li	a3,110
1c01a126:	20dd8ae3          	beq	s11,a3,1c01ab3a <pos_libc_prf+0xbdc>
1c01a12a:	2fb6e763          	bltu	a3,s11,1c01a418 <pos_libc_prf+0x4ba>
1c01a12e:	06900693          	li	a3,105
1c01a132:	2add9ce3          	bne	s11,a3,1c01abea <pos_libc_prf+0xc8c>
1c01a136:	06c00693          	li	a3,108
1c01a13a:	00d78a63          	beq	a5,a3,1c01a14e <pos_libc_prf+0x1f0>
1c01a13e:	07a00693          	li	a3,122
1c01a142:	00d78663          	beq	a5,a3,1c01a14e <pos_libc_prf+0x1f0>
1c01a146:	04c00693          	li	a3,76
1c01a14a:	5ed78de3          	beq	a5,a3,1c01af44 <pos_libc_prf+0xfe6>
1c01a14e:	000a2783          	lw	a5,0(s4)
1c01a152:	0a11                	addi	s4,s4,4
1c01a154:	41f7d713          	srai	a4,a5,0x1f
1c01a158:	ce52                	sw	s4,28(sp)
1c01a15a:	c23a                	sw	a4,4(sp)
1c01a15c:	4e0741e3          	bltz	a4,1c01ae3e <pos_libc_prf+0xee0>
1c01a160:	4732                	lw	a4,12(sp)
1c01a162:	440709e3          	beqz	a4,1c01adb4 <pos_libc_prf+0xe56>
1c01a166:	02b00693          	li	a3,43
1c01a16a:	4c92                	lw	s9,4(sp)
1c01a16c:	02d10223          	sb	a3,36(sp)
1c01a170:	02510a13          	addi	s4,sp,37
1c01a174:	843e                	mv	s0,a5
1c01a176:	8dd2                	mv	s11,s4
1c01a178:	a011                	j	1c01a17c <pos_libc_prf+0x21e>
1c01a17a:	8dca                	mv	s11,s2
1c01a17c:	4629                	li	a2,10
1c01a17e:	4681                	li	a3,0
1c01a180:	8522                	mv	a0,s0
1c01a182:	85e6                	mv	a1,s9
1c01a184:	d54ff0ef          	jal	ra,1c0196d8 <__umoddi3>
1c01a188:	892a                	mv	s2,a0
1c01a18a:	85e6                	mv	a1,s9
1c01a18c:	8522                	mv	a0,s0
1c01a18e:	4629                	li	a2,10
1c01a190:	4681                	li	a3,0
1c01a192:	a0aff0ef          	jal	ra,1c01939c <__udivdi3>
1c01a196:	03090913          	addi	s2,s2,48
1c01a19a:	012d8023          	sb	s2,0(s11)
1c01a19e:	00a5e7b3          	or	a5,a1,a0
1c01a1a2:	001d8913          	addi	s2,s11,1
1c01a1a6:	842a                	mv	s0,a0
1c01a1a8:	8cae                	mv	s9,a1
1c01a1aa:	fbe1                	bnez	a5,1c01a17a <pos_libc_prf+0x21c>
1c01a1ac:	00090023          	sb	zero,0(s2)
1c01a1b0:	01ba7d63          	bleu	s11,s4,1c01a1ca <pos_libc_prf+0x26c>
1c01a1b4:	87ee                	mv	a5,s11
1c01a1b6:	000a4683          	lbu	a3,0(s4)
1c01a1ba:	0007c703          	lbu	a4,0(a5)
1c01a1be:	fed78fab          	p.sb	a3,-1(a5!)
1c01a1c2:	00ea00ab          	p.sb	a4,1(s4!)
1c01a1c6:	fefa68e3          	bltu	s4,a5,1c01a1b6 <pos_libc_prf+0x258>
1c01a1ca:	4782                	lw	a5,0(sp)
1c01a1cc:	4732                	lw	a4,12(sp)
1c01a1ce:	40f90933          	sub	s2,s2,a5
1c01a1d2:	3c071de3          	bnez	a4,1c01adac <pos_libc_prf+0xe4e>
1c01a1d6:	47c2                	lw	a5,16(sp)
1c01a1d8:	3c079ae3          	bnez	a5,1c01adac <pos_libc_prf+0xe4e>
1c01a1dc:	4712                	lw	a4,4(sp)
1c01a1de:	837d                	srli	a4,a4,0x1f
1c01a1e0:	c23a                	sw	a4,4(sp)
1c01a1e2:	3404c463          	bltz	s1,1c01a52a <pos_libc_prf+0x5cc>
1c01a1e6:	4712                	lw	a4,4(sp)
1c01a1e8:	412484b3          	sub	s1,s1,s2
1c01a1ec:	94ba                	add	s1,s1,a4
1c01a1ee:	0404e4b3          	p.max	s1,s1,zero
1c01a1f2:	009907b3          	add	a5,s2,s1
1c01a1f6:	40fb0b33          	sub	s6,s6,a5
1c01a1fa:	1040                	addi	s0,sp,36
1c01a1fc:	4c81                	li	s9,0
1c01a1fe:	cc02                	sw	zero,24(sp)
1c01a200:	4a01                	li	s4,0
1c01a202:	4722                	lw	a4,8(sp)
1c01a204:	e305                	bnez	a4,1c01a224 <pos_libc_prf+0x2c6>
1c01a206:	01605f63          	blez	s6,1c01a224 <pos_libc_prf+0x2c6>
1c01a20a:	fffb0d93          	addi	s11,s6,-1
1c01a20e:	85de                	mv	a1,s7
1c01a210:	02000513          	li	a0,32
1c01a214:	9982                	jalr	s3
1c01a216:	1dfd                	addi	s11,s11,-1
1c01a218:	ebf52ee3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a21c:	fffdb9e3          	p.bneimm	s11,-1,1c01a20e <pos_libc_prf+0x2b0>
1c01a220:	9ada                	add	s5,s5,s6
1c01a222:	5b7d                	li	s6,-1
1c01a224:	4792                	lw	a5,4(sp)
1c01a226:	00f40db3          	add	s11,s0,a5
1c01a22a:	a031                	j	1c01a236 <pos_libc_prf+0x2d8>
1c01a22c:	0014450b          	p.lbu	a0,1(s0!)
1c01a230:	9982                	jalr	s3
1c01a232:	ebf521e3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a236:	85de                	mv	a1,s7
1c01a238:	ffb41ae3          	bne	s0,s11,1c01a22c <pos_libc_prf+0x2ce>
1c01a23c:	8da6                	mv	s11,s1
1c01a23e:	a021                	j	1c01a246 <pos_libc_prf+0x2e8>
1c01a240:	9982                	jalr	s3
1c01a242:	e9f529e3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a246:	1dfd                	addi	s11,s11,-1
1c01a248:	85de                	mv	a1,s7
1c01a24a:	03000513          	li	a0,48
1c01a24e:	fffdb9e3          	p.bneimm	s11,-1,1c01a240 <pos_libc_prf+0x2e2>
1c01a252:	4712                	lw	a4,4(sp)
1c01a254:	40e90933          	sub	s2,s2,a4
1c01a258:	c44a                	sw	s2,8(sp)
1c01a25a:	e40a15e3          	bnez	s4,1c01a0a4 <pos_libc_prf+0x146>
1c01a25e:	47e2                	lw	a5,24(sp)
1c01a260:	16079763          	bnez	a5,1c01a3ce <pos_libc_prf+0x470>
1c01a264:	120c8863          	beqz	s9,1c01a394 <pos_libc_prf+0x436>
1c01a268:	00044783          	lbu	a5,0(s0)
1c01a26c:	4a25                	li	s4,9
1c01a26e:	02e00d93          	li	s11,46
1c01a272:	a801                	j	1c01a282 <pos_libc_prf+0x324>
1c01a274:	0405                	addi	s0,s0,1
1c01a276:	9982                	jalr	s3
1c01a278:	e5f52ee3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a27c:	00044783          	lbu	a5,0(s0)
1c01a280:	197d                	addi	s2,s2,-1
1c01a282:	fd078713          	addi	a4,a5,-48
1c01a286:	853e                	mv	a0,a5
1c01a288:	85de                	mv	a1,s7
1c01a28a:	feea75e3          	bleu	a4,s4,1c01a274 <pos_libc_prf+0x316>
1c01a28e:	ffb783e3          	beq	a5,s11,1c01a274 <pos_libc_prf+0x316>
1c01a292:	8a66                	mv	s4,s9
1c01a294:	85de                	mv	a1,s7
1c01a296:	03000513          	li	a0,48
1c01a29a:	01404463          	bgtz	s4,1c01a2a2 <pos_libc_prf+0x344>
1c01a29e:	0010106f          	j	1c01ba9e <pos_libc_prf+0x1b40>
1c01a2a2:	9982                	jalr	s3
1c01a2a4:	1a7d                	addi	s4,s4,-1
1c01a2a6:	fff537e3          	p.bneimm	a0,-1,1c01a294 <pos_libc_prf+0x336>
1c01a2aa:	547d                	li	s0,-1
1c01a2ac:	bbc1                	j	1c01a07c <pos_libc_prf+0x11e>
1c01a2ae:	000d4d83          	lbu	s11,0(s10)
1c01a2b2:	02a00793          	li	a5,42
1c01a2b6:	001d0513          	addi	a0,s10,1
1c01a2ba:	08fd8e63          	beq	s11,a5,1c01a356 <pos_libc_prf+0x3f8>
1c01a2be:	fd0d8793          	addi	a5,s11,-48
1c01a2c2:	4825                	li	a6,9
1c01a2c4:	846e                	mv	s0,s11
1c01a2c6:	86aa                	mv	a3,a0
1c01a2c8:	4481                	li	s1,0
1c01a2ca:	45a5                	li	a1,9
1c01a2cc:	8d2a                	mv	s10,a0
1c01a2ce:	d4f86ee3          	bltu	a6,a5,1c01a02a <pos_libc_prf+0xcc>
1c01a2d2:	00249793          	slli	a5,s1,0x2
1c01a2d6:	97a6                	add	a5,a5,s1
1c01a2d8:	0786                	slli	a5,a5,0x1
1c01a2da:	97ee                	add	a5,a5,s11
1c01a2dc:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c01a2e0:	fd078493          	addi	s1,a5,-48
1c01a2e4:	fd0d8793          	addi	a5,s11,-48
1c01a2e8:	846e                	mv	s0,s11
1c01a2ea:	fef5f4e3          	bleu	a5,a1,1c01a2d2 <pos_libc_prf+0x374>
1c01a2ee:	8d36                	mv	s10,a3
1c01a2f0:	bb2d                	j	1c01a02a <pos_libc_prf+0xcc>
1c01a2f2:	000a2b03          	lw	s6,0(s4)
1c01a2f6:	0a11                	addi	s4,s4,4
1c01a2f8:	080b4363          	bltz	s6,1c01a37e <pos_libc_prf+0x420>
1c01a2fc:	00094d83          	lbu	s11,0(s2)
1c01a300:	00240d13          	addi	s10,s0,2
1c01a304:	bb29                	j	1c01a01e <pos_libc_prf+0xc0>
1c01a306:	07500693          	li	a3,117
1c01a30a:	10dd8763          	beq	s11,a3,1c01a418 <pos_libc_prf+0x4ba>
1c01a30e:	07800693          	li	a3,120
1c01a312:	10dd8363          	beq	s11,a3,1c01a418 <pos_libc_prf+0x4ba>
1c01a316:	07300793          	li	a5,115
1c01a31a:	0cfd98e3          	bne	s11,a5,1c01abea <pos_libc_prf+0xc8c>
1c01a31e:	004a0713          	addi	a4,s4,4
1c01a322:	ce3a                	sw	a4,28(sp)
1c01a324:	000a2403          	lw	s0,0(s4)
1c01a328:	3c04c2e3          	bltz	s1,1c01aeec <pos_libc_prf+0xf8e>
1c01a32c:	460481e3          	beqz	s1,1c01af8e <pos_libc_prf+0x1030>
1c01a330:	00044783          	lbu	a5,0(s0)
1c01a334:	44078ce3          	beqz	a5,1c01af8c <pos_libc_prf+0x102e>
1c01a338:	00140793          	addi	a5,s0,1
1c01a33c:	4901                	li	s2,0
1c01a33e:	a021                	j	1c01a346 <pos_libc_prf+0x3e8>
1c01a340:	0017c70b          	p.lbu	a4,1(a5!)
1c01a344:	c701                	beqz	a4,1c01a34c <pos_libc_prf+0x3ee>
1c01a346:	0905                	addi	s2,s2,1
1c01a348:	fe994ce3          	blt	s2,s1,1c01a340 <pos_libc_prf+0x3e2>
1c01a34c:	412b0b33          	sub	s6,s6,s2
1c01a350:	4481                	li	s1,0
1c01a352:	c202                	sw	zero,4(sp)
1c01a354:	b565                	j	1c01a1fc <pos_libc_prf+0x29e>
1c01a356:	001d4d83          	lbu	s11,1(s10)
1c01a35a:	000a2483          	lw	s1,0(s4)
1c01a35e:	846e                	mv	s0,s11
1c01a360:	0d09                	addi	s10,s10,2
1c01a362:	0a11                	addi	s4,s4,4
1c01a364:	b1d9                	j	1c01a02a <pos_libc_prf+0xcc>
1c01a366:	02500793          	li	a5,37
1c01a36a:	08fd90e3          	bne	s11,a5,1c01abea <pos_libc_prf+0xc8c>
1c01a36e:	85de                	mv	a1,s7
1c01a370:	02500513          	li	a0,37
1c01a374:	9982                	jalr	s3
1c01a376:	d5f52fe3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a37a:	0a85                	addi	s5,s5,1
1c01a37c:	b105                	j	1c019f9c <pos_libc_prf+0x3e>
1c01a37e:	4785                	li	a5,1
1c01a380:	41600b33          	neg	s6,s6
1c01a384:	c43e                	sw	a5,8(sp)
1c01a386:	bf9d                	j	1c01a2fc <pos_libc_prf+0x39e>
1c01a388:	0014450b          	p.lbu	a0,1(s0!)
1c01a38c:	197d                	addi	s2,s2,-1
1c01a38e:	9982                	jalr	s3
1c01a390:	d5f522e3          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01a394:	85de                	mv	a1,s7
1c01a396:	ff2049e3          	bgtz	s2,1c01a388 <pos_libc_prf+0x42a>
1c01a39a:	4792                	lw	a5,4(sp)
1c01a39c:	4a72                	lw	s4,28(sp)
1c01a39e:	00fa8733          	add	a4,s5,a5
1c01a3a2:	47a2                	lw	a5,8(sp)
1c01a3a4:	9726                	add	a4,a4,s1
1c01a3a6:	00e78ab3          	add	s5,a5,a4
1c01a3aa:	bf6059e3          	blez	s6,1c019f9c <pos_libc_prf+0x3e>
1c01a3ae:	9ada                	add	s5,s5,s6
1c01a3b0:	1b7d                	addi	s6,s6,-1
1c01a3b2:	a029                	j	1c01a3bc <pos_libc_prf+0x45e>
1c01a3b4:	01fb3463          	p.bneimm	s6,-1,1c01a3bc <pos_libc_prf+0x45e>
1c01a3b8:	5fe0106f          	j	1c01b9b6 <pos_libc_prf+0x1a58>
1c01a3bc:	85de                	mv	a1,s7
1c01a3be:	02000513          	li	a0,32
1c01a3c2:	9982                	jalr	s3
1c01a3c4:	1b7d                	addi	s6,s6,-1
1c01a3c6:	fff537e3          	p.bneimm	a0,-1,1c01a3b4 <pos_libc_prf+0x456>
1c01a3ca:	547d                	li	s0,-1
1c01a3cc:	b945                	j	1c01a07c <pos_libc_prf+0x11e>
1c01a3ce:	02e00a13          	li	s4,46
1c01a3d2:	a031                	j	1c01a3de <pos_libc_prf+0x480>
1c01a3d4:	197d                	addi	s2,s2,-1
1c01a3d6:	014d9463          	bne	s11,s4,1c01a3de <pos_libc_prf+0x480>
1c01a3da:	5320106f          	j	1c01b90c <pos_libc_prf+0x19ae>
1c01a3de:	00144d8b          	p.lbu	s11,1(s0!)
1c01a3e2:	85de                	mv	a1,s7
1c01a3e4:	856e                	mv	a0,s11
1c01a3e6:	9982                	jalr	s3
1c01a3e8:	fff536e3          	p.bneimm	a0,-1,1c01a3d4 <pos_libc_prf+0x476>
1c01a3ec:	547d                	li	s0,-1
1c01a3ee:	b179                	j	1c01a07c <pos_libc_prf+0x11e>
1c01a3f0:	188d83e3          	beq	s11,s0,1c01ad76 <pos_libc_prf+0xe18>
1c01a3f4:	8d36                	mv	s10,a3
1c01a3f6:	b185                	j	1c01a056 <pos_libc_prf+0xf8>
1c01a3f8:	188d86e3          	beq	s11,s0,1c01ad84 <pos_libc_prf+0xe26>
1c01a3fc:	8d36                	mv	s10,a3
1c01a3fe:	06800793          	li	a5,104
1c01a402:	b991                	j	1c01a056 <pos_libc_prf+0xf8>
1c01a404:	06300693          	li	a3,99
1c01a408:	70dd8c63          	beq	s11,a3,1c01ab20 <pos_libc_prf+0xbc2>
1c01a40c:	d3b6e5e3          	bltu	a3,s11,1c01a136 <pos_libc_prf+0x1d8>
1c01a410:	05800693          	li	a3,88
1c01a414:	7cdd9b63          	bne	s11,a3,1c01abea <pos_libc_prf+0xc8c>
1c01a418:	06c00693          	li	a3,108
1c01a41c:	18d780e3          	beq	a5,a3,1c01ad9c <pos_libc_prf+0xe3e>
1c01a420:	07a00693          	li	a3,122
1c01a424:	16d78ce3          	beq	a5,a3,1c01ad9c <pos_libc_prf+0xe3e>
1c01a428:	04c00693          	li	a3,76
1c01a42c:	2cd78ee3          	beq	a5,a3,1c01af08 <pos_libc_prf+0xfaa>
1c01a430:	000a2403          	lw	s0,0(s4)
1c01a434:	0a11                	addi	s4,s4,4
1c01a436:	ce52                	sw	s4,28(sp)
1c01a438:	4c81                	li	s9,0
1c01a43a:	06f00793          	li	a5,111
1c01a43e:	3cfd81e3          	beq	s11,a5,1c01b000 <pos_libc_prf+0x10a2>
1c01a442:	07500793          	li	a5,117
1c01a446:	02410a13          	addi	s4,sp,36
1c01a44a:	04fd8763          	beq	s11,a5,1c01a498 <pos_libc_prf+0x53a>
1c01a44e:	4712                	lw	a4,4(sp)
1c01a450:	2a0708e3          	beqz	a4,1c01af00 <pos_libc_prf+0xfa2>
1c01a454:	77e1                	lui	a5,0xffff8
1c01a456:	8307c793          	xori	a5,a5,-2000
1c01a45a:	02f11223          	sh	a5,36(sp)
1c01a45e:	4909                	li	s2,2
1c01a460:	02610693          	addi	a3,sp,38
1c01a464:	87b6                	mv	a5,a3
1c01a466:	4e25                	li	t3,9
1c01a468:	f6443733          	p.bclr	a4,s0,27,4
1c01a46c:	01cc9613          	slli	a2,s9,0x1c
1c01a470:	8011                	srli	s0,s0,0x4
1c01a472:	8c51                	or	s0,s0,a2
1c01a474:	004cdc93          	srli	s9,s9,0x4
1c01a478:	05770813          	addi	a6,a4,87
1c01a47c:	03070593          	addi	a1,a4,48
1c01a480:	01946533          	or	a0,s0,s9
1c01a484:	06ee7663          	bleu	a4,t3,1c01a4f0 <pos_libc_prf+0x592>
1c01a488:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c01a48c:	00178593          	addi	a1,a5,1
1c01a490:	c52d                	beqz	a0,1c01a4fa <pos_libc_prf+0x59c>
1c01a492:	87ae                	mv	a5,a1
1c01a494:	bfd1                	j	1c01a468 <pos_libc_prf+0x50a>
1c01a496:	8a4a                	mv	s4,s2
1c01a498:	4629                	li	a2,10
1c01a49a:	4681                	li	a3,0
1c01a49c:	8522                	mv	a0,s0
1c01a49e:	85e6                	mv	a1,s9
1c01a4a0:	a38ff0ef          	jal	ra,1c0196d8 <__umoddi3>
1c01a4a4:	892a                	mv	s2,a0
1c01a4a6:	85e6                	mv	a1,s9
1c01a4a8:	8522                	mv	a0,s0
1c01a4aa:	4629                	li	a2,10
1c01a4ac:	4681                	li	a3,0
1c01a4ae:	eeffe0ef          	jal	ra,1c01939c <__udivdi3>
1c01a4b2:	03090913          	addi	s2,s2,48
1c01a4b6:	012a0023          	sb	s2,0(s4)
1c01a4ba:	00a5e7b3          	or	a5,a1,a0
1c01a4be:	001a0913          	addi	s2,s4,1
1c01a4c2:	842a                	mv	s0,a0
1c01a4c4:	8cae                	mv	s9,a1
1c01a4c6:	fbe1                	bnez	a5,1c01a496 <pos_libc_prf+0x538>
1c01a4c8:	4782                	lw	a5,0(sp)
1c01a4ca:	00090023          	sb	zero,0(s2)
1c01a4ce:	40f90933          	sub	s2,s2,a5
1c01a4d2:	0147fd63          	bleu	s4,a5,1c01a4ec <pos_libc_prf+0x58e>
1c01a4d6:	105c                	addi	a5,sp,36
1c01a4d8:	0007c683          	lbu	a3,0(a5)
1c01a4dc:	000a4703          	lbu	a4,0(s4)
1c01a4e0:	feda0fab          	p.sb	a3,-1(s4!)
1c01a4e4:	00e780ab          	p.sb	a4,1(a5!)
1c01a4e8:	ff47e8e3          	bltu	a5,s4,1c01a4d8 <pos_libc_prf+0x57a>
1c01a4ec:	c202                	sw	zero,4(sp)
1c01a4ee:	b9d5                	j	1c01a1e2 <pos_libc_prf+0x284>
1c01a4f0:	00b78023          	sb	a1,0(a5)
1c01a4f4:	00178593          	addi	a1,a5,1
1c01a4f8:	fd49                	bnez	a0,1c01a492 <pos_libc_prf+0x534>
1c01a4fa:	00058023          	sb	zero,0(a1)
1c01a4fe:	8d95                	sub	a1,a1,a3
1c01a500:	00f6fc63          	bleu	a5,a3,1c01a518 <pos_libc_prf+0x5ba>
1c01a504:	0006c603          	lbu	a2,0(a3)
1c01a508:	0007c703          	lbu	a4,0(a5)
1c01a50c:	fec78fab          	p.sb	a2,-1(a5!)
1c01a510:	00e680ab          	p.sb	a4,1(a3!)
1c01a514:	fef6e8e3          	bltu	a3,a5,1c01a504 <pos_libc_prf+0x5a6>
1c01a518:	05800793          	li	a5,88
1c01a51c:	28fd82e3          	beq	s11,a5,1c01afa0 <pos_libc_prf+0x1042>
1c01a520:	4712                	lw	a4,4(sp)
1c01a522:	992e                	add	s2,s2,a1
1c01a524:	0706                	slli	a4,a4,0x1
1c01a526:	c23a                	sw	a4,4(sp)
1c01a528:	b96d                	j	1c01a1e2 <pos_libc_prf+0x284>
1c01a52a:	4c81                	li	s9,0
1c01a52c:	cc02                	sw	zero,24(sp)
1c01a52e:	4a01                	li	s4,0
1c01a530:	47d2                	lw	a5,20(sp)
1c01a532:	5e078163          	beqz	a5,1c01ab14 <pos_libc_prf+0xbb6>
1c01a536:	412b04b3          	sub	s1,s6,s2
1c01a53a:	0404e4b3          	p.max	s1,s1,zero
1c01a53e:	009907b3          	add	a5,s2,s1
1c01a542:	40fb0b33          	sub	s6,s6,a5
1c01a546:	1040                	addi	s0,sp,36
1c01a548:	b96d                	j	1c01a202 <pos_libc_prf+0x2a4>
1c01a54a:	4881                	li	a7,0
1c01a54c:	4801                	li	a6,0
1c01a54e:	4581                	li	a1,0
1c01a550:	4501                	li	a0,0
1c01a552:	4f11                	li	t5,4
1c01a554:	410f0f33          	sub	t5,t5,a6
1c01a558:	012f40fb          	lp.setup	x1,t5,1c01a57c <pos_libc_prf+0x61e>
1c01a55c:	01f51713          	slli	a4,a0,0x1f
1c01a560:	0015d793          	srli	a5,a1,0x1
1c01a564:	8fd9                	or	a5,a5,a4
1c01a566:	fc15b5b3          	p.bclr	a1,a1,30,1
1c01a56a:	00f58eb3          	add	t4,a1,a5
1c01a56e:	8105                	srli	a0,a0,0x1
1c01a570:	00beb5b3          	sltu	a1,t4,a1
1c01a574:	00a587b3          	add	a5,a1,a0
1c01a578:	853e                	mv	a0,a5
1c01a57a:	85f6                	mv	a1,t4
1c01a57c:	0805                	addi	a6,a6,1
1c01a57e:	0004d363          	bgez	s1,1c01a584 <pos_libc_prf+0x626>
1c01a582:	4499                	li	s1,6
1c01a584:	04700693          	li	a3,71
1c01a588:	0cde0be3          	beq	t3,a3,1c01ae5e <pos_libc_prf+0xf00>
1c01a58c:	06600693          	li	a3,102
1c01a590:	4f81                	li	t6,0
1c01a592:	0edd84e3          	beq	s11,a3,1c01ae7a <pos_libc_prf+0xf1c>
1c01a596:	00148f13          	addi	t5,s1,1
1c01a59a:	4741                	li	a4,16
1c01a59c:	04ef4f33          	p.min	t5,t5,a4
1c01a5a0:	1f7d                	addi	t5,t5,-1
1c01a5a2:	4501                	li	a0,0
1c01a5a4:	080006b7          	lui	a3,0x8000
1c01a5a8:	4295                	li	t0,5
1c01a5aa:	0f05                	addi	t5,t5,1
1c01a5ac:	030f40fb          	lp.setup	x1,t5,1c01a60c <pos_libc_prf+0x6ae>
1c01a5b0:	00250613          	addi	a2,a0,2
1c01a5b4:	00a63733          	sltu	a4,a2,a0
1c01a5b8:	9736                	add	a4,a4,a3
1c01a5ba:	02575533          	divu	a0,a4,t0
1c01a5be:	00251693          	slli	a3,a0,0x2
1c01a5c2:	96aa                	add	a3,a3,a0
1c01a5c4:	8f15                	sub	a4,a4,a3
1c01a5c6:	0776                	slli	a4,a4,0x1d
1c01a5c8:	00365593          	srli	a1,a2,0x3
1c01a5cc:	8dd9                	or	a1,a1,a4
1c01a5ce:	0255d5b3          	divu	a1,a1,t0
1c01a5d2:	00359693          	slli	a3,a1,0x3
1c01a5d6:	00559713          	slli	a4,a1,0x5
1c01a5da:	9736                	add	a4,a4,a3
1c01a5dc:	40e60733          	sub	a4,a2,a4
1c01a5e0:	02575733          	divu	a4,a4,t0
1c01a5e4:	81f5                	srli	a1,a1,0x1d
1c01a5e6:	00d70633          	add	a2,a4,a3
1c01a5ea:	95aa                	add	a1,a1,a0
1c01a5ec:	00e63733          	sltu	a4,a2,a4
1c01a5f0:	00b706b3          	add	a3,a4,a1
1c01a5f4:	01f69593          	slli	a1,a3,0x1f
1c01a5f8:	00165713          	srli	a4,a2,0x1
1c01a5fc:	8f4d                	or	a4,a4,a1
1c01a5fe:	fc163633          	p.bclr	a2,a2,30,1
1c01a602:	00e60533          	add	a0,a2,a4
1c01a606:	8285                	srli	a3,a3,0x1
1c01a608:	00c53633          	sltu	a2,a0,a2
1c01a60c:	96b2                	add	a3,a3,a2
1c01a60e:	00ae85b3          	add	a1,t4,a0
1c01a612:	96be                	add	a3,a3,a5
1c01a614:	01d5beb3          	sltu	t4,a1,t4
1c01a618:	96f6                	add	a3,a3,t4
1c01a61a:	f606b533          	p.bclr	a0,a3,27,0
1c01a61e:	87ae                	mv	a5,a1
1c01a620:	c125                	beqz	a0,1c01a680 <pos_libc_prf+0x722>
1c01a622:	00258513          	addi	a0,a1,2
1c01a626:	00b537b3          	sltu	a5,a0,a1
1c01a62a:	96be                	add	a3,a3,a5
1c01a62c:	4e95                	li	t4,5
1c01a62e:	03d6de33          	divu	t3,a3,t4
1c01a632:	002e1793          	slli	a5,t3,0x2
1c01a636:	97f2                	add	a5,a5,t3
1c01a638:	8e9d                	sub	a3,a3,a5
1c01a63a:	01d69793          	slli	a5,a3,0x1d
1c01a63e:	00355693          	srli	a3,a0,0x3
1c01a642:	8edd                	or	a3,a3,a5
1c01a644:	03d6d6b3          	divu	a3,a3,t4
1c01a648:	00369593          	slli	a1,a3,0x3
1c01a64c:	00569793          	slli	a5,a3,0x5
1c01a650:	97ae                	add	a5,a5,a1
1c01a652:	40f507b3          	sub	a5,a0,a5
1c01a656:	03d7d7b3          	divu	a5,a5,t4
1c01a65a:	82f5                	srli	a3,a3,0x1d
1c01a65c:	95be                	add	a1,a1,a5
1c01a65e:	00f5b7b3          	sltu	a5,a1,a5
1c01a662:	96f2                	add	a3,a3,t3
1c01a664:	96be                	add	a3,a3,a5
1c01a666:	01f69513          	slli	a0,a3,0x1f
1c01a66a:	0015d793          	srli	a5,a1,0x1
1c01a66e:	8fc9                	or	a5,a5,a0
1c01a670:	fc15b5b3          	p.bclr	a1,a1,30,1
1c01a674:	97ae                	add	a5,a5,a1
1c01a676:	8285                	srli	a3,a3,0x1
1c01a678:	00b7b5b3          	sltu	a1,a5,a1
1c01a67c:	96ae                	add	a3,a3,a1
1c01a67e:	0885                	addi	a7,a7,1
1c01a680:	06600593          	li	a1,102
1c01a684:	00130513          	addi	a0,t1,1
1c01a688:	1ebd82e3          	beq	s11,a1,1c01b06c <pos_libc_prf+0x110e>
1c01a68c:	01e7de13          	srli	t3,a5,0x1e
1c01a690:	00279593          	slli	a1,a5,0x2
1c01a694:	00269813          	slli	a6,a3,0x2
1c01a698:	97ae                	add	a5,a5,a1
1c01a69a:	010e6833          	or	a6,t3,a6
1c01a69e:	00b7b5b3          	sltu	a1,a5,a1
1c01a6a2:	96c2                	add	a3,a3,a6
1c01a6a4:	96ae                	add	a3,a3,a1
1c01a6a6:	0686                	slli	a3,a3,0x1
1c01a6a8:	01f7d593          	srli	a1,a5,0x1f
1c01a6ac:	8ecd                	or	a3,a3,a1
1c01a6ae:	01c6d593          	srli	a1,a3,0x1c
1c01a6b2:	882e                	mv	a6,a1
1c01a6b4:	4712                	lw	a4,4(sp)
1c01a6b6:	03058593          	addi	a1,a1,48
1c01a6ba:	01003833          	snez	a6,a6
1c01a6be:	00b30023          	sb	a1,0(t1)
1c01a6c2:	c7c6be33          	p.bclr	t3,a3,3,28
1c01a6c6:	00179593          	slli	a1,a5,0x1
1c01a6ca:	410888b3          	sub	a7,a7,a6
1c01a6ce:	0a0714e3          	bnez	a4,1c01af76 <pos_libc_prf+0x1018>
1c01a6d2:	8ca6                	mv	s9,s1
1c01a6d4:	3c905d63          	blez	s1,1c01aaae <pos_libc_prf+0xb50>
1c01a6d8:	02e00693          	li	a3,46
1c01a6dc:	00230793          	addi	a5,t1,2
1c01a6e0:	00d300a3          	sb	a3,1(t1)
1c01a6e4:	00259693          	slli	a3,a1,0x2
1c01a6e8:	01e5d813          	srli	a6,a1,0x1e
1c01a6ec:	002e1513          	slli	a0,t3,0x2
1c01a6f0:	95b6                	add	a1,a1,a3
1c01a6f2:	00a86533          	or	a0,a6,a0
1c01a6f6:	00d5b833          	sltu	a6,a1,a3
1c01a6fa:	01c506b3          	add	a3,a0,t3
1c01a6fe:	9836                	add	a6,a6,a3
1c01a700:	0806                	slli	a6,a6,0x1
1c01a702:	01f5d693          	srli	a3,a1,0x1f
1c01a706:	0106e833          	or	a6,a3,a6
1c01a70a:	01c85313          	srli	t1,a6,0x1c
1c01a70e:	03030313          	addi	t1,t1,48
1c01a712:	100006b7          	lui	a3,0x10000
1c01a716:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c01a71a:	00678023          	sb	t1,0(a5)
1c01a71e:	00159e13          	slli	t3,a1,0x1
1c01a722:	00a87833          	and	a6,a6,a0
1c01a726:	0014b463          	p.bneimm	s1,1,1c01a72e <pos_libc_prf+0x7d0>
1c01a72a:	3d40106f          	j	1c01bafe <pos_libc_prf+0x1ba0>
1c01a72e:	00359693          	slli	a3,a1,0x3
1c01a732:	00281313          	slli	t1,a6,0x2
1c01a736:	01ee5e93          	srli	t4,t3,0x1e
1c01a73a:	01c685b3          	add	a1,a3,t3
1c01a73e:	006ee333          	or	t1,t4,t1
1c01a742:	981a                	add	a6,a6,t1
1c01a744:	00d5b6b3          	sltu	a3,a1,a3
1c01a748:	96c2                	add	a3,a3,a6
1c01a74a:	0686                	slli	a3,a3,0x1
1c01a74c:	01f5d813          	srli	a6,a1,0x1f
1c01a750:	00d866b3          	or	a3,a6,a3
1c01a754:	01c6d813          	srli	a6,a3,0x1c
1c01a758:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c01a75c:	010780a3          	sb	a6,1(a5)
1c01a760:	ffe48c93          	addi	s9,s1,-2
1c01a764:	00159313          	slli	t1,a1,0x1
1c01a768:	8ee9                	and	a3,a3,a0
1c01a76a:	01904463          	bgtz	s9,1c01a772 <pos_libc_prf+0x814>
1c01a76e:	3880106f          	j	1c01baf6 <pos_libc_prf+0x1b98>
1c01a772:	01e35e13          	srli	t3,t1,0x1e
1c01a776:	058e                	slli	a1,a1,0x3
1c01a778:	00269813          	slli	a6,a3,0x2
1c01a77c:	932e                	add	t1,t1,a1
1c01a77e:	010e6833          	or	a6,t3,a6
1c01a782:	96c2                	add	a3,a3,a6
1c01a784:	00b335b3          	sltu	a1,t1,a1
1c01a788:	95b6                	add	a1,a1,a3
1c01a78a:	0586                	slli	a1,a1,0x1
1c01a78c:	01f35693          	srli	a3,t1,0x1f
1c01a790:	8dd5                	or	a1,a1,a3
1c01a792:	01c5d693          	srli	a3,a1,0x1c
1c01a796:	03068693          	addi	a3,a3,48
1c01a79a:	00d78123          	sb	a3,2(a5)
1c01a79e:	ffd48c93          	addi	s9,s1,-3
1c01a7a2:	00131e13          	slli	t3,t1,0x1
1c01a7a6:	8de9                	and	a1,a1,a0
1c01a7a8:	01904463          	bgtz	s9,1c01a7b0 <pos_libc_prf+0x852>
1c01a7ac:	3420106f          	j	1c01baee <pos_libc_prf+0x1b90>
1c01a7b0:	00331693          	slli	a3,t1,0x3
1c01a7b4:	00259813          	slli	a6,a1,0x2
1c01a7b8:	01ee5313          	srli	t1,t3,0x1e
1c01a7bc:	01036833          	or	a6,t1,a6
1c01a7c0:	9e36                	add	t3,t3,a3
1c01a7c2:	95c2                	add	a1,a1,a6
1c01a7c4:	00de36b3          	sltu	a3,t3,a3
1c01a7c8:	96ae                	add	a3,a3,a1
1c01a7ca:	0686                	slli	a3,a3,0x1
1c01a7cc:	01fe5593          	srli	a1,t3,0x1f
1c01a7d0:	8ecd                	or	a3,a3,a1
1c01a7d2:	01c6d593          	srli	a1,a3,0x1c
1c01a7d6:	03058593          	addi	a1,a1,48
1c01a7da:	00b781a3          	sb	a1,3(a5)
1c01a7de:	ffc48c93          	addi	s9,s1,-4
1c01a7e2:	001e1313          	slli	t1,t3,0x1
1c01a7e6:	8ee9                	and	a3,a3,a0
1c01a7e8:	01904463          	bgtz	s9,1c01a7f0 <pos_libc_prf+0x892>
1c01a7ec:	2fa0106f          	j	1c01bae6 <pos_libc_prf+0x1b88>
1c01a7f0:	003e1593          	slli	a1,t3,0x3
1c01a7f4:	00269813          	slli	a6,a3,0x2
1c01a7f8:	01e35e13          	srli	t3,t1,0x1e
1c01a7fc:	010e6833          	or	a6,t3,a6
1c01a800:	932e                	add	t1,t1,a1
1c01a802:	96c2                	add	a3,a3,a6
1c01a804:	00b335b3          	sltu	a1,t1,a1
1c01a808:	95b6                	add	a1,a1,a3
1c01a80a:	0586                	slli	a1,a1,0x1
1c01a80c:	01f35693          	srli	a3,t1,0x1f
1c01a810:	8dd5                	or	a1,a1,a3
1c01a812:	01c5d693          	srli	a3,a1,0x1c
1c01a816:	03068693          	addi	a3,a3,48
1c01a81a:	00d78223          	sb	a3,4(a5)
1c01a81e:	ffb48c93          	addi	s9,s1,-5
1c01a822:	00131e13          	slli	t3,t1,0x1
1c01a826:	8de9                	and	a1,a1,a0
1c01a828:	01904463          	bgtz	s9,1c01a830 <pos_libc_prf+0x8d2>
1c01a82c:	2b20106f          	j	1c01bade <pos_libc_prf+0x1b80>
1c01a830:	00331693          	slli	a3,t1,0x3
1c01a834:	00259813          	slli	a6,a1,0x2
1c01a838:	01ee5313          	srli	t1,t3,0x1e
1c01a83c:	01036833          	or	a6,t1,a6
1c01a840:	9e36                	add	t3,t3,a3
1c01a842:	95c2                	add	a1,a1,a6
1c01a844:	00de36b3          	sltu	a3,t3,a3
1c01a848:	96ae                	add	a3,a3,a1
1c01a84a:	0686                	slli	a3,a3,0x1
1c01a84c:	01fe5593          	srli	a1,t3,0x1f
1c01a850:	8ecd                	or	a3,a3,a1
1c01a852:	01c6d593          	srli	a1,a3,0x1c
1c01a856:	03058593          	addi	a1,a1,48
1c01a85a:	00b782a3          	sb	a1,5(a5)
1c01a85e:	ffa48c93          	addi	s9,s1,-6
1c01a862:	001e1313          	slli	t1,t3,0x1
1c01a866:	8ee9                	and	a3,a3,a0
1c01a868:	01904463          	bgtz	s9,1c01a870 <pos_libc_prf+0x912>
1c01a86c:	26a0106f          	j	1c01bad6 <pos_libc_prf+0x1b78>
1c01a870:	003e1593          	slli	a1,t3,0x3
1c01a874:	00269813          	slli	a6,a3,0x2
1c01a878:	01e35e13          	srli	t3,t1,0x1e
1c01a87c:	010e6833          	or	a6,t3,a6
1c01a880:	932e                	add	t1,t1,a1
1c01a882:	96c2                	add	a3,a3,a6
1c01a884:	00b335b3          	sltu	a1,t1,a1
1c01a888:	95b6                	add	a1,a1,a3
1c01a88a:	0586                	slli	a1,a1,0x1
1c01a88c:	01f35693          	srli	a3,t1,0x1f
1c01a890:	8dd5                	or	a1,a1,a3
1c01a892:	01c5d693          	srli	a3,a1,0x1c
1c01a896:	03068693          	addi	a3,a3,48
1c01a89a:	00d78323          	sb	a3,6(a5)
1c01a89e:	ff948c93          	addi	s9,s1,-7
1c01a8a2:	00131e13          	slli	t3,t1,0x1
1c01a8a6:	8de9                	and	a1,a1,a0
1c01a8a8:	01904463          	bgtz	s9,1c01a8b0 <pos_libc_prf+0x952>
1c01a8ac:	2220106f          	j	1c01bace <pos_libc_prf+0x1b70>
1c01a8b0:	00331693          	slli	a3,t1,0x3
1c01a8b4:	00259813          	slli	a6,a1,0x2
1c01a8b8:	01ee5313          	srli	t1,t3,0x1e
1c01a8bc:	01036833          	or	a6,t1,a6
1c01a8c0:	9e36                	add	t3,t3,a3
1c01a8c2:	95c2                	add	a1,a1,a6
1c01a8c4:	00de36b3          	sltu	a3,t3,a3
1c01a8c8:	96ae                	add	a3,a3,a1
1c01a8ca:	0686                	slli	a3,a3,0x1
1c01a8cc:	01fe5593          	srli	a1,t3,0x1f
1c01a8d0:	8ecd                	or	a3,a3,a1
1c01a8d2:	01c6d593          	srli	a1,a3,0x1c
1c01a8d6:	03058593          	addi	a1,a1,48
1c01a8da:	00b783a3          	sb	a1,7(a5)
1c01a8de:	ff848c93          	addi	s9,s1,-8
1c01a8e2:	001e1313          	slli	t1,t3,0x1
1c01a8e6:	8ee9                	and	a3,a3,a0
1c01a8e8:	01904463          	bgtz	s9,1c01a8f0 <pos_libc_prf+0x992>
1c01a8ec:	1da0106f          	j	1c01bac6 <pos_libc_prf+0x1b68>
1c01a8f0:	003e1593          	slli	a1,t3,0x3
1c01a8f4:	00269813          	slli	a6,a3,0x2
1c01a8f8:	01e35e13          	srli	t3,t1,0x1e
1c01a8fc:	010e6833          	or	a6,t3,a6
1c01a900:	932e                	add	t1,t1,a1
1c01a902:	96c2                	add	a3,a3,a6
1c01a904:	00b335b3          	sltu	a1,t1,a1
1c01a908:	95b6                	add	a1,a1,a3
1c01a90a:	0586                	slli	a1,a1,0x1
1c01a90c:	01f35693          	srli	a3,t1,0x1f
1c01a910:	8dd5                	or	a1,a1,a3
1c01a912:	01c5d693          	srli	a3,a1,0x1c
1c01a916:	03068693          	addi	a3,a3,48
1c01a91a:	00d78423          	sb	a3,8(a5)
1c01a91e:	ff748c93          	addi	s9,s1,-9
1c01a922:	00131e13          	slli	t3,t1,0x1
1c01a926:	8de9                	and	a1,a1,a0
1c01a928:	01904463          	bgtz	s9,1c01a930 <pos_libc_prf+0x9d2>
1c01a92c:	1920106f          	j	1c01babe <pos_libc_prf+0x1b60>
1c01a930:	00331693          	slli	a3,t1,0x3
1c01a934:	00259813          	slli	a6,a1,0x2
1c01a938:	01ee5e93          	srli	t4,t3,0x1e
1c01a93c:	01c68333          	add	t1,a3,t3
1c01a940:	010ee833          	or	a6,t4,a6
1c01a944:	982e                	add	a6,a6,a1
1c01a946:	00d336b3          	sltu	a3,t1,a3
1c01a94a:	96c2                	add	a3,a3,a6
1c01a94c:	01f35593          	srli	a1,t1,0x1f
1c01a950:	0686                	slli	a3,a3,0x1
1c01a952:	8ecd                	or	a3,a3,a1
1c01a954:	01c6d593          	srli	a1,a3,0x1c
1c01a958:	03058593          	addi	a1,a1,48
1c01a95c:	00b784a3          	sb	a1,9(a5)
1c01a960:	ff648c93          	addi	s9,s1,-10
1c01a964:	8ee9                	and	a3,a3,a0
1c01a966:	00131593          	slli	a1,t1,0x1
1c01a96a:	00a78513          	addi	a0,a5,10
1c01a96e:	15905063          	blez	s9,1c01aaae <pos_libc_prf+0xb50>
1c01a972:	00259513          	slli	a0,a1,0x2
1c01a976:	01e5d813          	srli	a6,a1,0x1e
1c01a97a:	00269313          	slli	t1,a3,0x2
1c01a97e:	95aa                	add	a1,a1,a0
1c01a980:	00686333          	or	t1,a6,t1
1c01a984:	969a                	add	a3,a3,t1
1c01a986:	00a5b833          	sltu	a6,a1,a0
1c01a98a:	9836                	add	a6,a6,a3
1c01a98c:	0806                	slli	a6,a6,0x1
1c01a98e:	01f5d693          	srli	a3,a1,0x1f
1c01a992:	0106e833          	or	a6,a3,a6
1c01a996:	01c85313          	srli	t1,a6,0x1c
1c01a99a:	03030313          	addi	t1,t1,48
1c01a99e:	100006b7          	lui	a3,0x10000
1c01a9a2:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c01a9a6:	00678523          	sb	t1,10(a5)
1c01a9aa:	ff548c93          	addi	s9,s1,-11
1c01a9ae:	00159e13          	slli	t3,a1,0x1
1c01a9b2:	00a87833          	and	a6,a6,a0
1c01a9b6:	01904463          	bgtz	s9,1c01a9be <pos_libc_prf+0xa60>
1c01a9ba:	0fc0106f          	j	1c01bab6 <pos_libc_prf+0x1b58>
1c01a9be:	00359693          	slli	a3,a1,0x3
1c01a9c2:	00281313          	slli	t1,a6,0x2
1c01a9c6:	01ee5e93          	srli	t4,t3,0x1e
1c01a9ca:	01c685b3          	add	a1,a3,t3
1c01a9ce:	006ee333          	or	t1,t4,t1
1c01a9d2:	981a                	add	a6,a6,t1
1c01a9d4:	00d5b6b3          	sltu	a3,a1,a3
1c01a9d8:	96c2                	add	a3,a3,a6
1c01a9da:	0686                	slli	a3,a3,0x1
1c01a9dc:	01f5d813          	srli	a6,a1,0x1f
1c01a9e0:	00d866b3          	or	a3,a6,a3
1c01a9e4:	01c6d813          	srli	a6,a3,0x1c
1c01a9e8:	03080813          	addi	a6,a6,48
1c01a9ec:	010785a3          	sb	a6,11(a5)
1c01a9f0:	ff448c93          	addi	s9,s1,-12
1c01a9f4:	00159313          	slli	t1,a1,0x1
1c01a9f8:	8ee9                	and	a3,a3,a0
1c01a9fa:	01904463          	bgtz	s9,1c01aa02 <pos_libc_prf+0xaa4>
1c01a9fe:	0b00106f          	j	1c01baae <pos_libc_prf+0x1b50>
1c01aa02:	058e                	slli	a1,a1,0x3
1c01aa04:	01e35e13          	srli	t3,t1,0x1e
1c01aa08:	00269813          	slli	a6,a3,0x2
1c01aa0c:	932e                	add	t1,t1,a1
1c01aa0e:	010e6833          	or	a6,t3,a6
1c01aa12:	96c2                	add	a3,a3,a6
1c01aa14:	00b335b3          	sltu	a1,t1,a1
1c01aa18:	95b6                	add	a1,a1,a3
1c01aa1a:	0586                	slli	a1,a1,0x1
1c01aa1c:	01f35693          	srli	a3,t1,0x1f
1c01aa20:	8dd5                	or	a1,a1,a3
1c01aa22:	01c5d693          	srli	a3,a1,0x1c
1c01aa26:	03068693          	addi	a3,a3,48
1c01aa2a:	00d78623          	sb	a3,12(a5)
1c01aa2e:	ff348c93          	addi	s9,s1,-13
1c01aa32:	00131813          	slli	a6,t1,0x1
1c01aa36:	01904463          	bgtz	s9,1c01aa3e <pos_libc_prf+0xae0>
1c01aa3a:	06c0106f          	j	1c01baa6 <pos_libc_prf+0x1b48>
1c01aa3e:	8de9                	and	a1,a1,a0
1c01aa40:	00331693          	slli	a3,t1,0x3
1c01aa44:	01e85e13          	srli	t3,a6,0x1e
1c01aa48:	00259313          	slli	t1,a1,0x2
1c01aa4c:	9836                	add	a6,a6,a3
1c01aa4e:	006e6333          	or	t1,t3,t1
1c01aa52:	959a                	add	a1,a1,t1
1c01aa54:	00d836b3          	sltu	a3,a6,a3
1c01aa58:	96ae                	add	a3,a3,a1
1c01aa5a:	0686                	slli	a3,a3,0x1
1c01aa5c:	01f85593          	srli	a1,a6,0x1f
1c01aa60:	8ecd                	or	a3,a3,a1
1c01aa62:	01c6d593          	srli	a1,a3,0x1c
1c01aa66:	03058593          	addi	a1,a1,48
1c01aa6a:	00b786a3          	sb	a1,13(a5)
1c01aa6e:	ff248c93          	addi	s9,s1,-14
1c01aa72:	8ee9                	and	a3,a3,a0
1c01aa74:	00181593          	slli	a1,a6,0x1
1c01aa78:	00e78513          	addi	a0,a5,14
1c01aa7c:	03905963          	blez	s9,1c01aaae <pos_libc_prf+0xb50>
1c01aa80:	00381513          	slli	a0,a6,0x3
1c01aa84:	01e5d313          	srli	t1,a1,0x1e
1c01aa88:	00269813          	slli	a6,a3,0x2
1c01aa8c:	95aa                	add	a1,a1,a0
1c01aa8e:	01036833          	or	a6,t1,a6
1c01aa92:	00a5b5b3          	sltu	a1,a1,a0
1c01aa96:	96c2                	add	a3,a3,a6
1c01aa98:	96ae                	add	a3,a3,a1
1c01aa9a:	0686                	slli	a3,a3,0x1
1c01aa9c:	82f1                	srli	a3,a3,0x1c
1c01aa9e:	03068693          	addi	a3,a3,48
1c01aaa2:	00f78513          	addi	a0,a5,15
1c01aaa6:	00d78723          	sb	a3,14(a5)
1c01aaaa:	ff148c93          	addi	s9,s1,-15
1c01aaae:	440f8563          	beqz	t6,1c01aef8 <pos_libc_prf+0xf9a>
1c01aab2:	4581                	li	a1,0
1c01aab4:	cc02                	sw	zero,24(sp)
1c01aab6:	4a01                	li	s4,0
1c01aab8:	03000813          	li	a6,48
1c01aabc:	a011                	j	1c01aac0 <pos_libc_prf+0xb62>
1c01aabe:	853e                	mv	a0,a5
1c01aac0:	fff50793          	addi	a5,a0,-1
1c01aac4:	0007c683          	lbu	a3,0(a5)
1c01aac8:	ff068be3          	beq	a3,a6,1c01aabe <pos_libc_prf+0xb60>
1c01aacc:	02e00813          	li	a6,46
1c01aad0:	4c81                	li	s9,0
1c01aad2:	01069363          	bne	a3,a6,1c01aad8 <pos_libc_prf+0xb7a>
1c01aad6:	853e                	mv	a0,a5
1c01aad8:	0dfdf793          	andi	a5,s11,223
1c01aadc:	04500693          	li	a3,69
1c01aae0:	3ad78e63          	beq	a5,a3,1c01ae9c <pos_libc_prf+0xf3e>
1c01aae4:	4782                	lw	a5,0(sp)
1c01aae6:	00050023          	sb	zero,0(a0)
1c01aaea:	8d1d                	sub	a0,a0,a5
1c01aaec:	4732                	lw	a4,12(sp)
1c01aaee:	2a071263          	bnez	a4,1c01ad92 <pos_libc_prf+0xe34>
1c01aaf2:	47c2                	lw	a5,16(sp)
1c01aaf4:	28079f63          	bnez	a5,1c01ad92 <pos_libc_prf+0xe34>
1c01aaf8:	02414783          	lbu	a5,36(sp)
1c01aafc:	02d00693          	li	a3,45
1c01ab00:	c202                	sw	zero,4(sp)
1c01ab02:	28d78863          	beq	a5,a3,1c01ad92 <pos_libc_prf+0xe34>
1c01ab06:	fd078793          	addi	a5,a5,-48
1c01ab0a:	46a5                	li	a3,9
1c01ab0c:	00b50933          	add	s2,a0,a1
1c01ab10:	a2f6f0e3          	bleu	a5,a3,1c01a530 <pos_libc_prf+0x5d2>
1c01ab14:	412b0b33          	sub	s6,s6,s2
1c01ab18:	1040                	addi	s0,sp,36
1c01ab1a:	4481                	li	s1,0
1c01ab1c:	ee6ff06f          	j	1c01a202 <pos_libc_prf+0x2a4>
1c01ab20:	000a2783          	lw	a5,0(s4)
1c01ab24:	0a11                	addi	s4,s4,4
1c01ab26:	ce52                	sw	s4,28(sp)
1c01ab28:	02f10223          	sb	a5,36(sp)
1c01ab2c:	1b7d                	addi	s6,s6,-1
1c01ab2e:	4481                	li	s1,0
1c01ab30:	c202                	sw	zero,4(sp)
1c01ab32:	4905                	li	s2,1
1c01ab34:	1040                	addi	s0,sp,36
1c01ab36:	ec6ff06f          	j	1c01a1fc <pos_libc_prf+0x29e>
1c01ab3a:	04c00613          	li	a2,76
1c01ab3e:	004a268b          	p.lw	a3,4(s4!)
1c01ab42:	5ac78ee3          	beq	a5,a2,1c01b8fe <pos_libc_prf+0x19a0>
1c01ab46:	28f65363          	ble	a5,a2,1c01adcc <pos_libc_prf+0xe6e>
1c01ab4a:	06800613          	li	a2,104
1c01ab4e:	00c78663          	beq	a5,a2,1c01ab5a <pos_libc_prf+0xbfc>
1c01ab52:	0156a023          	sw	s5,0(a3)
1c01ab56:	c46ff06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01ab5a:	87d6                	mv	a5,s5
1c01ab5c:	00f69023          	sh	a5,0(a3)
1c01ab60:	c3cff06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01ab64:	004a0793          	addi	a5,s4,4
1c01ab68:	7761                	lui	a4,0xffff8
1c01ab6a:	02610593          	addi	a1,sp,38
1c01ab6e:	ce3e                	sw	a5,28(sp)
1c01ab70:	83074713          	xori	a4,a4,-2000
1c01ab74:	000a2783          	lw	a5,0(s4)
1c01ab78:	4601                	li	a2,0
1c01ab7a:	02e11223          	sh	a4,36(sp)
1c01ab7e:	86ae                	mv	a3,a1
1c01ab80:	4ea5                	li	t4,9
1c01ab82:	f647b733          	p.bclr	a4,a5,27,4
1c01ab86:	01c61513          	slli	a0,a2,0x1c
1c01ab8a:	8391                	srli	a5,a5,0x4
1c01ab8c:	8fc9                	or	a5,a5,a0
1c01ab8e:	8211                	srli	a2,a2,0x4
1c01ab90:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c01ab94:	03070893          	addi	a7,a4,48
1c01ab98:	00c7e333          	or	t1,a5,a2
1c01ab9c:	00eefa63          	bleu	a4,t4,1c01abb0 <pos_libc_prf+0xc52>
1c01aba0:	01c68023          	sb	t3,0(a3)
1c01aba4:	00168513          	addi	a0,a3,1
1c01aba8:	00030a63          	beqz	t1,1c01abbc <pos_libc_prf+0xc5e>
1c01abac:	86aa                	mv	a3,a0
1c01abae:	bfd1                	j	1c01ab82 <pos_libc_prf+0xc24>
1c01abb0:	01168023          	sb	a7,0(a3)
1c01abb4:	00168513          	addi	a0,a3,1
1c01abb8:	fe031ae3          	bnez	t1,1c01abac <pos_libc_prf+0xc4e>
1c01abbc:	00050023          	sb	zero,0(a0)
1c01abc0:	8d0d                	sub	a0,a0,a1
1c01abc2:	00d5fe63          	bleu	a3,a1,1c01abde <pos_libc_prf+0xc80>
1c01abc6:	87b6                	mv	a5,a3
1c01abc8:	86ae                	mv	a3,a1
1c01abca:	0006c603          	lbu	a2,0(a3)
1c01abce:	0007c703          	lbu	a4,0(a5)
1c01abd2:	fec78fab          	p.sb	a2,-1(a5!)
1c01abd6:	00e680ab          	p.sb	a4,1(a3!)
1c01abda:	fef6e8e3          	bltu	a3,a5,1c01abca <pos_libc_prf+0xc6c>
1c01abde:	4789                	li	a5,2
1c01abe0:	00250913          	addi	s2,a0,2
1c01abe4:	c23e                	sw	a5,4(sp)
1c01abe6:	dfcff06f          	j	1c01a1e2 <pos_libc_prf+0x284>
1c01abea:	85de                	mv	a1,s7
1c01abec:	02500513          	li	a0,37
1c01abf0:	9982                	jalr	s3
1c01abf2:	cff52163          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01abf6:	85de                	mv	a1,s7
1c01abf8:	856e                	mv	a0,s11
1c01abfa:	9982                	jalr	s3
1c01abfc:	cdf52c63          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01ac00:	0a89                	addi	s5,s5,2
1c01ac02:	b9aff06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01ac06:	007a0893          	addi	a7,s4,7
1c01ac0a:	c408b8b3          	p.bclr	a7,a7,2,0
1c01ac0e:	0008a783          	lw	a5,0(a7)
1c01ac12:	0048a303          	lw	t1,4(a7)
1c01ac16:	0157d693          	srli	a3,a5,0x15
1c01ac1a:	00b31513          	slli	a0,t1,0xb
1c01ac1e:	08a1                	addi	a7,a7,8
1c01ac20:	01435813          	srli	a6,t1,0x14
1c01ac24:	8d55                	or	a0,a0,a3
1c01ac26:	ce46                	sw	a7,28(sp)
1c01ac28:	e8b83833          	p.bclr	a6,a6,20,11
1c01ac2c:	00b79593          	slli	a1,a5,0xb
1c01ac30:	c1f53533          	p.bclr	a0,a0,0,31
1c01ac34:	1e034e63          	bltz	t1,1c01ae30 <pos_libc_prf+0xed2>
1c01ac38:	47b2                	lw	a5,12(sp)
1c01ac3a:	1c078f63          	beqz	a5,1c01ae18 <pos_libc_prf+0xeba>
1c01ac3e:	02b00793          	li	a5,43
1c01ac42:	02f10223          	sb	a5,36(sp)
1c01ac46:	02510313          	addi	t1,sp,37
1c01ac4a:	7ff00793          	li	a5,2047
1c01ac4e:	18f80863          	beq	a6,a5,1c01adde <pos_libc_prf+0xe80>
1c01ac52:	04600793          	li	a5,70
1c01ac56:	0dfdfe13          	andi	t3,s11,223
1c01ac5a:	32fd8e63          	beq	s11,a5,1c01af96 <pos_libc_prf+0x1038>
1c01ac5e:	41f85693          	srai	a3,a6,0x1f
1c01ac62:	00b867b3          	or	a5,a6,a1
1c01ac66:	8ec9                	or	a3,a3,a0
1c01ac68:	8fd5                	or	a5,a5,a3
1c01ac6a:	8e0780e3          	beqz	a5,1c01a54a <pos_libc_prf+0x5ec>
1c01ac6e:	02081363          	bnez	a6,1c01ac94 <pos_libc_prf+0xd36>
1c01ac72:	01f5d793          	srli	a5,a1,0x1f
1c01ac76:	00151693          	slli	a3,a0,0x1
1c01ac7a:	00d7e533          	or	a0,a5,a3
1c01ac7e:	0586                	slli	a1,a1,0x1
1c01ac80:	5a054fe3          	bltz	a0,1c01ba3e <pos_libc_prf+0x1ae0>
1c01ac84:	01f5d793          	srli	a5,a1,0x1f
1c01ac88:	0506                	slli	a0,a0,0x1
1c01ac8a:	8d5d                	or	a0,a0,a5
1c01ac8c:	187d                	addi	a6,a6,-1
1c01ac8e:	0586                	slli	a1,a1,0x1
1c01ac90:	fe055ae3          	bgez	a0,1c01ac84 <pos_libc_prf+0xd26>
1c01ac94:	c0280813          	addi	a6,a6,-1022
1c01ac98:	57f9                	li	a5,-2
1c01ac9a:	c1f54533          	p.bset	a0,a0,0,31
1c01ac9e:	4881                	li	a7,0
1c01aca0:	06f85763          	ble	a5,a6,1c01ad0e <pos_libc_prf+0xdb0>
1c01aca4:	33333eb7          	lui	t4,0x33333
1c01aca8:	80000f37          	lui	t5,0x80000
1c01acac:	4881                	li	a7,0
1c01acae:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x1731713e>
1c01acb2:	ffff4f13          	not	t5,t5
1c01acb6:	5ff9                	li	t6,-2
1c01acb8:	a011                	j	1c01acbc <pos_libc_prf+0xd5e>
1c01acba:	883e                	mv	a6,a5
1c01acbc:	01f51693          	slli	a3,a0,0x1f
1c01acc0:	0015d713          	srli	a4,a1,0x1
1c01acc4:	fc15b7b3          	p.bclr	a5,a1,30,1
1c01acc8:	8f55                	or	a4,a4,a3
1c01acca:	00e785b3          	add	a1,a5,a4
1c01acce:	00f5b7b3          	sltu	a5,a1,a5
1c01acd2:	8105                	srli	a0,a0,0x1
1c01acd4:	953e                	add	a0,a0,a5
1c01acd6:	00180793          	addi	a5,a6,1
1c01acda:	feaee0e3          	bltu	t4,a0,1c01acba <pos_libc_prf+0xd5c>
1c01acde:	00259693          	slli	a3,a1,0x2
1c01ace2:	01e5d613          	srli	a2,a1,0x1e
1c01ace6:	00251713          	slli	a4,a0,0x2
1c01acea:	95b6                	add	a1,a1,a3
1c01acec:	8f51                	or	a4,a4,a2
1c01acee:	953a                	add	a0,a0,a4
1c01acf0:	00d5b6b3          	sltu	a3,a1,a3
1c01acf4:	9536                	add	a0,a0,a3
1c01acf6:	01f5d713          	srli	a4,a1,0x1f
1c01acfa:	0809                	addi	a6,a6,2
1c01acfc:	18fd                	addi	a7,a7,-1
1c01acfe:	01e51663          	bne	a0,t5,1c01ad0a <pos_libc_prf+0xdac>
1c01ad02:	0586                	slli	a1,a1,0x1
1c01ad04:	fc174533          	p.bset	a0,a4,30,1
1c01ad08:	883e                	mv	a6,a5
1c01ad0a:	fbf849e3          	blt	a6,t6,1c01acbc <pos_libc_prf+0xd5e>
1c01ad0e:	80000f37          	lui	t5,0x80000
1c01ad12:	4f95                	li	t6,5
1c01ad14:	ffff4f13          	not	t5,t5
1c01ad18:	83005de3          	blez	a6,1c01a552 <pos_libc_prf+0x5f4>
1c01ad1c:	00258693          	addi	a3,a1,2
1c01ad20:	00b6b5b3          	sltu	a1,a3,a1
1c01ad24:	952e                	add	a0,a0,a1
1c01ad26:	03f557b3          	divu	a5,a0,t6
1c01ad2a:	00279713          	slli	a4,a5,0x2
1c01ad2e:	973e                	add	a4,a4,a5
1c01ad30:	8d19                	sub	a0,a0,a4
1c01ad32:	01d51713          	slli	a4,a0,0x1d
1c01ad36:	0036d613          	srli	a2,a3,0x3
1c01ad3a:	8e59                	or	a2,a2,a4
1c01ad3c:	03f65633          	divu	a2,a2,t6
1c01ad40:	00361593          	slli	a1,a2,0x3
1c01ad44:	00561713          	slli	a4,a2,0x5
1c01ad48:	972e                	add	a4,a4,a1
1c01ad4a:	40e68733          	sub	a4,a3,a4
1c01ad4e:	03f75733          	divu	a4,a4,t6
1c01ad52:	8275                	srli	a2,a2,0x1d
1c01ad54:	95ba                	add	a1,a1,a4
1c01ad56:	97b2                	add	a5,a5,a2
1c01ad58:	00e5b733          	sltu	a4,a1,a4
1c01ad5c:	00f70533          	add	a0,a4,a5
1c01ad60:	187d                	addi	a6,a6,-1
1c01ad62:	0885                	addi	a7,a7,1
1c01ad64:	01f5d793          	srli	a5,a1,0x1f
1c01ad68:	0506                	slli	a0,a0,0x1
1c01ad6a:	8d5d                	or	a0,a0,a5
1c01ad6c:	0586                	slli	a1,a1,0x1
1c01ad6e:	187d                	addi	a6,a6,-1
1c01ad70:	feaf7ae3          	bleu	a0,t5,1c01ad64 <pos_libc_prf+0xe06>
1c01ad74:	b755                	j	1c01ad18 <pos_libc_prf+0xdba>
1c01ad76:	001d4d83          	lbu	s11,1(s10)
1c01ad7a:	04c00793          	li	a5,76
1c01ad7e:	0d09                	addi	s10,s10,2
1c01ad80:	ad6ff06f          	j	1c01a056 <pos_libc_prf+0xf8>
1c01ad84:	001d4d83          	lbu	s11,1(s10)
1c01ad88:	04800793          	li	a5,72
1c01ad8c:	0d09                	addi	s10,s10,2
1c01ad8e:	ac8ff06f          	j	1c01a056 <pos_libc_prf+0xf8>
1c01ad92:	4705                	li	a4,1
1c01ad94:	02514783          	lbu	a5,37(sp)
1c01ad98:	c23a                	sw	a4,4(sp)
1c01ad9a:	b3b5                	j	1c01ab06 <pos_libc_prf+0xba8>
1c01ad9c:	004a0793          	addi	a5,s4,4
1c01ada0:	ce3e                	sw	a5,28(sp)
1c01ada2:	000a2403          	lw	s0,0(s4)
1c01ada6:	4c81                	li	s9,0
1c01ada8:	e92ff06f          	j	1c01a43a <pos_libc_prf+0x4dc>
1c01adac:	4785                	li	a5,1
1c01adae:	c23e                	sw	a5,4(sp)
1c01adb0:	c32ff06f          	j	1c01a1e2 <pos_libc_prf+0x284>
1c01adb4:	4742                	lw	a4,16(sp)
1c01adb6:	22070063          	beqz	a4,1c01afd6 <pos_libc_prf+0x1078>
1c01adba:	02000693          	li	a3,32
1c01adbe:	02d10223          	sb	a3,36(sp)
1c01adc2:	4c92                	lw	s9,4(sp)
1c01adc4:	02510a13          	addi	s4,sp,37
1c01adc8:	bacff06f          	j	1c01a174 <pos_libc_prf+0x216>
1c01adcc:	04800613          	li	a2,72
1c01add0:	d8c791e3          	bne	a5,a2,1c01ab52 <pos_libc_prf+0xbf4>
1c01add4:	87d6                	mv	a5,s5
1c01add6:	00f68023          	sb	a5,0(a3)
1c01adda:	9c2ff06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01adde:	00a5e6b3          	or	a3,a1,a0
1c01ade2:	fbfd8613          	addi	a2,s11,-65
1c01ade6:	00330513          	addi	a0,t1,3
1c01adea:	47e5                	li	a5,25
1c01adec:	16069963          	bnez	a3,1c01af5e <pos_libc_prf+0x1000>
1c01adf0:	3ec7e1e3          	bltu	a5,a2,1c01b9d2 <pos_libc_prf+0x1a74>
1c01adf4:	6795                	lui	a5,0x5
1c01adf6:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c01adfa:	00f31023          	sh	a5,0(t1)
1c01adfe:	04600793          	li	a5,70
1c01ae02:	00f30123          	sb	a5,2(t1)
1c01ae06:	4782                	lw	a5,0(sp)
1c01ae08:	000301a3          	sb	zero,3(t1)
1c01ae0c:	8d1d                	sub	a0,a0,a5
1c01ae0e:	4581                	li	a1,0
1c01ae10:	4c81                	li	s9,0
1c01ae12:	cc02                	sw	zero,24(sp)
1c01ae14:	4a01                	li	s4,0
1c01ae16:	b9d9                	j	1c01aaec <pos_libc_prf+0xb8e>
1c01ae18:	4742                	lw	a4,16(sp)
1c01ae1a:	02410313          	addi	t1,sp,36
1c01ae1e:	e20706e3          	beqz	a4,1c01ac4a <pos_libc_prf+0xcec>
1c01ae22:	02000793          	li	a5,32
1c01ae26:	02f10223          	sb	a5,36(sp)
1c01ae2a:	02510313          	addi	t1,sp,37
1c01ae2e:	bd31                	j	1c01ac4a <pos_libc_prf+0xcec>
1c01ae30:	02d00793          	li	a5,45
1c01ae34:	02f10223          	sb	a5,36(sp)
1c01ae38:	02510313          	addi	t1,sp,37
1c01ae3c:	b539                	j	1c01ac4a <pos_libc_prf+0xcec>
1c01ae3e:	40f007b3          	neg	a5,a5
1c01ae42:	00f036b3          	snez	a3,a5
1c01ae46:	40e00cb3          	neg	s9,a4
1c01ae4a:	02d00613          	li	a2,45
1c01ae4e:	02c10223          	sb	a2,36(sp)
1c01ae52:	40dc8cb3          	sub	s9,s9,a3
1c01ae56:	02510a13          	addi	s4,sp,37
1c01ae5a:	b1aff06f          	j	1c01a174 <pos_libc_prf+0x216>
1c01ae5e:	56f5                	li	a3,-3
1c01ae60:	0cd8c063          	blt	a7,a3,1c01af20 <pos_libc_prf+0xfc2>
1c01ae64:	0b14ce63          	blt	s1,a7,1c01af20 <pos_libc_prf+0xfc2>
1c01ae68:	4712                	lw	a4,4(sp)
1c01ae6a:	411484b3          	sub	s1,s1,a7
1c01ae6e:	4f81                	li	t6,0
1c01ae70:	e709                	bnez	a4,1c01ae7a <pos_libc_prf+0xf1c>
1c01ae72:	00902fb3          	sgtz	t6,s1
1c01ae76:	0fffff93          	andi	t6,t6,255
1c01ae7a:	009886b3          	add	a3,a7,s1
1c01ae7e:	2e06cae3          	bltz	a3,1c01b972 <pos_libc_prf+0x1a14>
1c01ae82:	4741                	li	a4,16
1c01ae84:	04e6cf33          	p.min	t5,a3,a4
1c01ae88:	1f7d                	addi	t5,t5,-1
1c01ae8a:	06600d93          	li	s11,102
1c01ae8e:	f0069a63          	bnez	a3,1c01a5a2 <pos_libc_prf+0x644>
1c01ae92:	4501                	li	a0,0
1c01ae94:	080006b7          	lui	a3,0x8000
1c01ae98:	f76ff06f          	j	1c01a60e <pos_libc_prf+0x6b0>
1c01ae9c:	86aa                	mv	a3,a0
1c01ae9e:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c01aea2:	2408c6e3          	bltz	a7,1c01b8ee <pos_libc_prf+0x1990>
1c01aea6:	02b00793          	li	a5,43
1c01aeaa:	00f500a3          	sb	a5,1(a0)
1c01aeae:	06300793          	li	a5,99
1c01aeb2:	0117de63          	ble	a7,a5,1c01aece <pos_libc_prf+0xf70>
1c01aeb6:	06400693          	li	a3,100
1c01aeba:	02d8c7b3          	div	a5,a7,a3
1c01aebe:	03078793          	addi	a5,a5,48
1c01aec2:	02d8e8b3          	rem	a7,a7,a3
1c01aec6:	00f50123          	sb	a5,2(a0)
1c01aeca:	00350693          	addi	a3,a0,3
1c01aece:	47a9                	li	a5,10
1c01aed0:	02f8c633          	div	a2,a7,a5
1c01aed4:	02f8e7b3          	rem	a5,a7,a5
1c01aed8:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c01aedc:	8536                	mv	a0,a3
1c01aede:	00c5012b          	p.sb	a2,2(a0!)
1c01aee2:	03078793          	addi	a5,a5,48
1c01aee6:	00f680a3          	sb	a5,1(a3)
1c01aeea:	beed                	j	1c01aae4 <pos_libc_prf+0xb86>
1c01aeec:	800004b7          	lui	s1,0x80000
1c01aef0:	fff4c493          	not	s1,s1
1c01aef4:	c3cff06f          	j	1c01a330 <pos_libc_prf+0x3d2>
1c01aef8:	85e6                	mv	a1,s9
1c01aefa:	cc02                	sw	zero,24(sp)
1c01aefc:	4a01                	li	s4,0
1c01aefe:	bee9                	j	1c01aad8 <pos_libc_prf+0xb7a>
1c01af00:	4901                	li	s2,0
1c01af02:	1054                	addi	a3,sp,36
1c01af04:	d60ff06f          	j	1c01a464 <pos_libc_prf+0x506>
1c01af08:	007a0793          	addi	a5,s4,7
1c01af0c:	c407b7b3          	p.bclr	a5,a5,2,0
1c01af10:	00878713          	addi	a4,a5,8
1c01af14:	ce3a                	sw	a4,28(sp)
1c01af16:	4380                	lw	s0,0(a5)
1c01af18:	0047ac83          	lw	s9,4(a5)
1c01af1c:	d1eff06f          	j	1c01a43a <pos_libc_prf+0x4dc>
1c01af20:	ffed8613          	addi	a2,s11,-2
1c01af24:	0ff67d93          	andi	s11,a2,255
1c01af28:	220486e3          	beqz	s1,1c01b954 <pos_libc_prf+0x19f6>
1c01af2c:	4712                	lw	a4,4(sp)
1c01af2e:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c01af32:	1e071fe3          	bnez	a4,1c01b930 <pos_libc_prf+0x19d2>
1c01af36:	00d02fb3          	sgtz	t6,a3
1c01af3a:	0fffff93          	andi	t6,t6,255
1c01af3e:	84b6                	mv	s1,a3
1c01af40:	e56ff06f          	j	1c01a596 <pos_libc_prf+0x638>
1c01af44:	007a0693          	addi	a3,s4,7
1c01af48:	c406b6b3          	p.bclr	a3,a3,2,0
1c01af4c:	00868793          	addi	a5,a3,8
1c01af50:	ce3e                	sw	a5,28(sp)
1c01af52:	429c                	lw	a5,0(a3)
1c01af54:	42d4                	lw	a3,4(a3)
1c01af56:	c236                	sw	a3,4(sp)
1c01af58:	8736                	mv	a4,a3
1c01af5a:	a02ff06f          	j	1c01a15c <pos_libc_prf+0x1fe>
1c01af5e:	24c7efe3          	bltu	a5,a2,1c01b9bc <pos_libc_prf+0x1a5e>
1c01af62:	6791                	lui	a5,0x4
1c01af64:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c01af68:	00f31023          	sh	a5,0(t1)
1c01af6c:	04e00793          	li	a5,78
1c01af70:	00f30123          	sb	a5,2(t1)
1c01af74:	bd49                	j	1c01ae06 <pos_libc_prf+0xea8>
1c01af76:	02e00793          	li	a5,46
1c01af7a:	00f300a3          	sb	a5,1(t1)
1c01af7e:	00230793          	addi	a5,t1,2
1c01af82:	f6904163          	bgtz	s1,1c01a6e4 <pos_libc_prf+0x786>
1c01af86:	8ca6                	mv	s9,s1
1c01af88:	853e                	mv	a0,a5
1c01af8a:	b615                	j	1c01aaae <pos_libc_prf+0xb50>
1c01af8c:	4481                	li	s1,0
1c01af8e:	c202                	sw	zero,4(sp)
1c01af90:	4901                	li	s2,0
1c01af92:	a6aff06f          	j	1c01a1fc <pos_libc_prf+0x29e>
1c01af96:	04600e13          	li	t3,70
1c01af9a:	06600d93          	li	s11,102
1c01af9e:	b1c1                	j	1c01ac5e <pos_libc_prf+0xd00>
1c01afa0:	105c                	addi	a5,sp,36
1c01afa2:	4565                	li	a0,25
1c01afa4:	0017c70b          	p.lbu	a4,1(a5!)
1c01afa8:	f9f70693          	addi	a3,a4,-97
1c01afac:	0ff6f693          	andi	a3,a3,255
1c01afb0:	fe070613          	addi	a2,a4,-32
1c01afb4:	00d56e63          	bltu	a0,a3,1c01afd0 <pos_libc_prf+0x1072>
1c01afb8:	fec78fa3          	sb	a2,-1(a5)
1c01afbc:	0017c70b          	p.lbu	a4,1(a5!)
1c01afc0:	f9f70693          	addi	a3,a4,-97
1c01afc4:	0ff6f693          	andi	a3,a3,255
1c01afc8:	fe070613          	addi	a2,a4,-32
1c01afcc:	fed576e3          	bleu	a3,a0,1c01afb8 <pos_libc_prf+0x105a>
1c01afd0:	fb71                	bnez	a4,1c01afa4 <pos_libc_prf+0x1046>
1c01afd2:	d4eff06f          	j	1c01a520 <pos_libc_prf+0x5c2>
1c01afd6:	4c92                	lw	s9,4(sp)
1c01afd8:	02410a13          	addi	s4,sp,36
1c01afdc:	998ff06f          	j	1c01a174 <pos_libc_prf+0x216>
1c01afe0:	4922                	lw	s2,8(sp)
1c01afe2:	8dd2                	mv	s11,s4
1c01afe4:	a029                	j	1c01afee <pos_libc_prf+0x1090>
1c01afe6:	9982                	jalr	s3
1c01afe8:	1dfd                	addi	s11,s11,-1
1c01afea:	8ff52563          	p.beqimm	a0,-1,1c01a0d4 <pos_libc_prf+0x176>
1c01afee:	85de                	mv	a1,s7
1c01aff0:	03000513          	li	a0,48
1c01aff4:	ffb049e3          	bgtz	s11,1c01afe6 <pos_libc_prf+0x1088>
1c01aff8:	41490933          	sub	s2,s2,s4
1c01affc:	a62ff06f          	j	1c01a25e <pos_libc_prf+0x300>
1c01b000:	4712                	lw	a4,4(sp)
1c01b002:	12070fe3          	beqz	a4,1c01b940 <pos_libc_prf+0x19e2>
1c01b006:	03000793          	li	a5,48
1c01b00a:	02f10223          	sb	a5,36(sp)
1c01b00e:	019467b3          	or	a5,s0,s9
1c01b012:	14078ae3          	beqz	a5,1c01b966 <pos_libc_prf+0x1a08>
1c01b016:	02510593          	addi	a1,sp,37
1c01b01a:	4905                	li	s2,1
1c01b01c:	86ae                	mv	a3,a1
1c01b01e:	87b6                	mv	a5,a3
1c01b020:	a011                	j	1c01b024 <pos_libc_prf+0x10c6>
1c01b022:	87b2                	mv	a5,a2
1c01b024:	01dc9613          	slli	a2,s9,0x1d
1c01b028:	f8343733          	p.bclr	a4,s0,28,3
1c01b02c:	800d                	srli	s0,s0,0x3
1c01b02e:	8c51                	or	s0,s0,a2
1c01b030:	03070713          	addi	a4,a4,48
1c01b034:	003cdc93          	srli	s9,s9,0x3
1c01b038:	00e78023          	sb	a4,0(a5)
1c01b03c:	01946733          	or	a4,s0,s9
1c01b040:	00178613          	addi	a2,a5,1
1c01b044:	ff79                	bnez	a4,1c01b022 <pos_libc_prf+0x10c4>
1c01b046:	00060023          	sb	zero,0(a2)
1c01b04a:	8e0d                	sub	a2,a2,a1
1c01b04c:	00f6fc63          	bleu	a5,a3,1c01b064 <pos_libc_prf+0x1106>
1c01b050:	0006c583          	lbu	a1,0(a3)
1c01b054:	0007c703          	lbu	a4,0(a5)
1c01b058:	feb78fab          	p.sb	a1,-1(a5!)
1c01b05c:	00e680ab          	p.sb	a4,1(a3!)
1c01b060:	fef6e8e3          	bltu	a3,a5,1c01b050 <pos_libc_prf+0x10f2>
1c01b064:	9932                	add	s2,s2,a2
1c01b066:	c202                	sw	zero,4(sp)
1c01b068:	97aff06f          	j	1c01a1e2 <pos_libc_prf+0x284>
1c01b06c:	111057e3          	blez	a7,1c01b97a <pos_libc_prf+0x1a1c>
1c01b070:	00279e13          	slli	t3,a5,0x2
1c01b074:	01e7df13          	srli	t5,a5,0x1e
1c01b078:	00269e93          	slli	t4,a3,0x2
1c01b07c:	00fe05b3          	add	a1,t3,a5
1c01b080:	01df6eb3          	or	t4,t5,t4
1c01b084:	9eb6                	add	t4,t4,a3
1c01b086:	01c5b6b3          	sltu	a3,a1,t3
1c01b08a:	96f6                	add	a3,a3,t4
1c01b08c:	01f5d793          	srli	a5,a1,0x1f
1c01b090:	0686                	slli	a3,a3,0x1
1c01b092:	8edd                	or	a3,a3,a5
1c01b094:	01c6d793          	srli	a5,a3,0x1c
1c01b098:	03078793          	addi	a5,a5,48
1c01b09c:	10000e37          	lui	t3,0x10000
1c01b0a0:	1e7d                	addi	t3,t3,-1
1c01b0a2:	00f30023          	sb	a5,0(t1)
1c01b0a6:	01c6f6b3          	and	a3,a3,t3
1c01b0aa:	00159793          	slli	a5,a1,0x1
1c01b0ae:	1618aee3          	p.beqimm	a7,1,1c01ba2a <pos_libc_prf+0x1acc>
1c01b0b2:	01e7df13          	srli	t5,a5,0x1e
1c01b0b6:	00269e93          	slli	t4,a3,0x2
1c01b0ba:	058e                	slli	a1,a1,0x3
1c01b0bc:	00f58533          	add	a0,a1,a5
1c01b0c0:	01df6eb3          	or	t4,t5,t4
1c01b0c4:	9eb6                	add	t4,t4,a3
1c01b0c6:	00b536b3          	sltu	a3,a0,a1
1c01b0ca:	96f6                	add	a3,a3,t4
1c01b0cc:	01f55793          	srli	a5,a0,0x1f
1c01b0d0:	0686                	slli	a3,a3,0x1
1c01b0d2:	8edd                	or	a3,a3,a5
1c01b0d4:	01c6d793          	srli	a5,a3,0x1c
1c01b0d8:	03078793          	addi	a5,a5,48
1c01b0dc:	00f300a3          	sb	a5,1(t1)
1c01b0e0:	01c6f6b3          	and	a3,a3,t3
1c01b0e4:	00151793          	slli	a5,a0,0x1
1c01b0e8:	1628a3e3          	p.beqimm	a7,2,1c01ba4e <pos_libc_prf+0x1af0>
1c01b0ec:	01e7df13          	srli	t5,a5,0x1e
1c01b0f0:	00269e93          	slli	t4,a3,0x2
1c01b0f4:	050e                	slli	a0,a0,0x3
1c01b0f6:	00f505b3          	add	a1,a0,a5
1c01b0fa:	01df6eb3          	or	t4,t5,t4
1c01b0fe:	9eb6                	add	t4,t4,a3
1c01b100:	00a5b6b3          	sltu	a3,a1,a0
1c01b104:	96f6                	add	a3,a3,t4
1c01b106:	01f5d793          	srli	a5,a1,0x1f
1c01b10a:	0686                	slli	a3,a3,0x1
1c01b10c:	8edd                	or	a3,a3,a5
1c01b10e:	01c6d793          	srli	a5,a3,0x1c
1c01b112:	03078793          	addi	a5,a5,48
1c01b116:	00f30123          	sb	a5,2(t1)
1c01b11a:	ffd88a13          	addi	s4,a7,-3
1c01b11e:	00159793          	slli	a5,a1,0x1
1c01b122:	01c6f6b3          	and	a3,a3,t3
1c01b126:	134050e3          	blez	s4,1c01ba46 <pos_libc_prf+0x1ae8>
1c01b12a:	01e7df13          	srli	t5,a5,0x1e
1c01b12e:	00269e93          	slli	t4,a3,0x2
1c01b132:	058e                	slli	a1,a1,0x3
1c01b134:	00f58533          	add	a0,a1,a5
1c01b138:	01df6eb3          	or	t4,t5,t4
1c01b13c:	9eb6                	add	t4,t4,a3
1c01b13e:	00b536b3          	sltu	a3,a0,a1
1c01b142:	96f6                	add	a3,a3,t4
1c01b144:	01f55793          	srli	a5,a0,0x1f
1c01b148:	0686                	slli	a3,a3,0x1
1c01b14a:	8edd                	or	a3,a3,a5
1c01b14c:	01c6d793          	srli	a5,a3,0x1c
1c01b150:	03078793          	addi	a5,a5,48
1c01b154:	00f301a3          	sb	a5,3(t1)
1c01b158:	ffc88a13          	addi	s4,a7,-4
1c01b15c:	00151793          	slli	a5,a0,0x1
1c01b160:	01c6f6b3          	and	a3,a3,t3
1c01b164:	134056e3          	blez	s4,1c01ba90 <pos_libc_prf+0x1b32>
1c01b168:	01e7df13          	srli	t5,a5,0x1e
1c01b16c:	00269e93          	slli	t4,a3,0x2
1c01b170:	050e                	slli	a0,a0,0x3
1c01b172:	00f505b3          	add	a1,a0,a5
1c01b176:	01df6eb3          	or	t4,t5,t4
1c01b17a:	9eb6                	add	t4,t4,a3
1c01b17c:	00a5b6b3          	sltu	a3,a1,a0
1c01b180:	96f6                	add	a3,a3,t4
1c01b182:	01f5d793          	srli	a5,a1,0x1f
1c01b186:	0686                	slli	a3,a3,0x1
1c01b188:	8edd                	or	a3,a3,a5
1c01b18a:	01c6d793          	srli	a5,a3,0x1c
1c01b18e:	03078793          	addi	a5,a5,48
1c01b192:	00f30223          	sb	a5,4(t1)
1c01b196:	ffb88a13          	addi	s4,a7,-5
1c01b19a:	00159793          	slli	a5,a1,0x1
1c01b19e:	01c6f6b3          	and	a3,a3,t3
1c01b1a2:	0f4053e3          	blez	s4,1c01ba88 <pos_libc_prf+0x1b2a>
1c01b1a6:	01e7df13          	srli	t5,a5,0x1e
1c01b1aa:	00269e93          	slli	t4,a3,0x2
1c01b1ae:	058e                	slli	a1,a1,0x3
1c01b1b0:	00f58533          	add	a0,a1,a5
1c01b1b4:	01df6eb3          	or	t4,t5,t4
1c01b1b8:	9eb6                	add	t4,t4,a3
1c01b1ba:	00b536b3          	sltu	a3,a0,a1
1c01b1be:	96f6                	add	a3,a3,t4
1c01b1c0:	01f55793          	srli	a5,a0,0x1f
1c01b1c4:	0686                	slli	a3,a3,0x1
1c01b1c6:	8edd                	or	a3,a3,a5
1c01b1c8:	01c6d793          	srli	a5,a3,0x1c
1c01b1cc:	03078793          	addi	a5,a5,48
1c01b1d0:	00f302a3          	sb	a5,5(t1)
1c01b1d4:	ffa88a13          	addi	s4,a7,-6
1c01b1d8:	00151793          	slli	a5,a0,0x1
1c01b1dc:	01c6f6b3          	and	a3,a3,t3
1c01b1e0:	0b4050e3          	blez	s4,1c01ba80 <pos_libc_prf+0x1b22>
1c01b1e4:	01e7df13          	srli	t5,a5,0x1e
1c01b1e8:	00269e93          	slli	t4,a3,0x2
1c01b1ec:	050e                	slli	a0,a0,0x3
1c01b1ee:	00f505b3          	add	a1,a0,a5
1c01b1f2:	01df6eb3          	or	t4,t5,t4
1c01b1f6:	9eb6                	add	t4,t4,a3
1c01b1f8:	00a5b6b3          	sltu	a3,a1,a0
1c01b1fc:	96f6                	add	a3,a3,t4
1c01b1fe:	01f5d793          	srli	a5,a1,0x1f
1c01b202:	0686                	slli	a3,a3,0x1
1c01b204:	8edd                	or	a3,a3,a5
1c01b206:	01c6d793          	srli	a5,a3,0x1c
1c01b20a:	03078793          	addi	a5,a5,48
1c01b20e:	00f30323          	sb	a5,6(t1)
1c01b212:	ff988a13          	addi	s4,a7,-7
1c01b216:	00159793          	slli	a5,a1,0x1
1c01b21a:	01c6f6b3          	and	a3,a3,t3
1c01b21e:	05405de3          	blez	s4,1c01ba78 <pos_libc_prf+0x1b1a>
1c01b222:	058e                	slli	a1,a1,0x3
1c01b224:	01e7de93          	srli	t4,a5,0x1e
1c01b228:	00269513          	slli	a0,a3,0x2
1c01b22c:	97ae                	add	a5,a5,a1
1c01b22e:	00aee533          	or	a0,t4,a0
1c01b232:	9536                	add	a0,a0,a3
1c01b234:	00b7b6b3          	sltu	a3,a5,a1
1c01b238:	96aa                	add	a3,a3,a0
1c01b23a:	01f7d593          	srli	a1,a5,0x1f
1c01b23e:	0686                	slli	a3,a3,0x1
1c01b240:	8ecd                	or	a3,a3,a1
1c01b242:	01c6d593          	srli	a1,a3,0x1c
1c01b246:	03058593          	addi	a1,a1,48
1c01b24a:	0786                	slli	a5,a5,0x1
1c01b24c:	00b303a3          	sb	a1,7(t1)
1c01b250:	ff888a13          	addi	s4,a7,-8
1c01b254:	85be                	mv	a1,a5
1c01b256:	01c6f6b3          	and	a3,a3,t3
1c01b25a:	01405be3          	blez	s4,1c01ba70 <pos_libc_prf+0x1b12>
1c01b25e:	078a                	slli	a5,a5,0x2
1c01b260:	01e5de13          	srli	t3,a1,0x1e
1c01b264:	00269513          	slli	a0,a3,0x2
1c01b268:	95be                	add	a1,a1,a5
1c01b26a:	00ae6533          	or	a0,t3,a0
1c01b26e:	9536                	add	a0,a0,a3
1c01b270:	00f5b6b3          	sltu	a3,a1,a5
1c01b274:	96aa                	add	a3,a3,a0
1c01b276:	01f5d793          	srli	a5,a1,0x1f
1c01b27a:	0686                	slli	a3,a3,0x1
1c01b27c:	8edd                	or	a3,a3,a5
1c01b27e:	01c6d793          	srli	a5,a3,0x1c
1c01b282:	03078793          	addi	a5,a5,48
1c01b286:	10000e37          	lui	t3,0x10000
1c01b28a:	1e7d                	addi	t3,t3,-1
1c01b28c:	00f30423          	sb	a5,8(t1)
1c01b290:	ff788a13          	addi	s4,a7,-9
1c01b294:	00159793          	slli	a5,a1,0x1
1c01b298:	01c6f6b3          	and	a3,a3,t3
1c01b29c:	7d405663          	blez	s4,1c01ba68 <pos_libc_prf+0x1b0a>
1c01b2a0:	01e7df13          	srli	t5,a5,0x1e
1c01b2a4:	00269e93          	slli	t4,a3,0x2
1c01b2a8:	058e                	slli	a1,a1,0x3
1c01b2aa:	00f58533          	add	a0,a1,a5
1c01b2ae:	01df6eb3          	or	t4,t5,t4
1c01b2b2:	9eb6                	add	t4,t4,a3
1c01b2b4:	00b536b3          	sltu	a3,a0,a1
1c01b2b8:	96f6                	add	a3,a3,t4
1c01b2ba:	01f55793          	srli	a5,a0,0x1f
1c01b2be:	0686                	slli	a3,a3,0x1
1c01b2c0:	8edd                	or	a3,a3,a5
1c01b2c2:	01c6d793          	srli	a5,a3,0x1c
1c01b2c6:	03078793          	addi	a5,a5,48
1c01b2ca:	00f304a3          	sb	a5,9(t1)
1c01b2ce:	ff688a13          	addi	s4,a7,-10
1c01b2d2:	00151793          	slli	a5,a0,0x1
1c01b2d6:	01c6f6b3          	and	a3,a3,t3
1c01b2da:	79405363          	blez	s4,1c01ba60 <pos_libc_prf+0x1b02>
1c01b2de:	01e7df13          	srli	t5,a5,0x1e
1c01b2e2:	00269e93          	slli	t4,a3,0x2
1c01b2e6:	050e                	slli	a0,a0,0x3
1c01b2e8:	00f505b3          	add	a1,a0,a5
1c01b2ec:	01df6eb3          	or	t4,t5,t4
1c01b2f0:	9eb6                	add	t4,t4,a3
1c01b2f2:	00a5b6b3          	sltu	a3,a1,a0
1c01b2f6:	96f6                	add	a3,a3,t4
1c01b2f8:	01f5d793          	srli	a5,a1,0x1f
1c01b2fc:	0686                	slli	a3,a3,0x1
1c01b2fe:	8edd                	or	a3,a3,a5
1c01b300:	01c6d793          	srli	a5,a3,0x1c
1c01b304:	03078793          	addi	a5,a5,48
1c01b308:	00f30523          	sb	a5,10(t1)
1c01b30c:	ff588a13          	addi	s4,a7,-11
1c01b310:	00159793          	slli	a5,a1,0x1
1c01b314:	01c6f6b3          	and	a3,a3,t3
1c01b318:	75405063          	blez	s4,1c01ba58 <pos_libc_prf+0x1afa>
1c01b31c:	01e7df13          	srli	t5,a5,0x1e
1c01b320:	00269e93          	slli	t4,a3,0x2
1c01b324:	058e                	slli	a1,a1,0x3
1c01b326:	00f58533          	add	a0,a1,a5
1c01b32a:	01df6eb3          	or	t4,t5,t4
1c01b32e:	9eb6                	add	t4,t4,a3
1c01b330:	00b536b3          	sltu	a3,a0,a1
1c01b334:	96f6                	add	a3,a3,t4
1c01b336:	01f55793          	srli	a5,a0,0x1f
1c01b33a:	0686                	slli	a3,a3,0x1
1c01b33c:	8edd                	or	a3,a3,a5
1c01b33e:	01c6d793          	srli	a5,a3,0x1c
1c01b342:	03078793          	addi	a5,a5,48
1c01b346:	00f305a3          	sb	a5,11(t1)
1c01b34a:	ff488a13          	addi	s4,a7,-12
1c01b34e:	00151793          	slli	a5,a0,0x1
1c01b352:	01c6f6b3          	and	a3,a3,t3
1c01b356:	6f405163          	blez	s4,1c01ba38 <pos_libc_prf+0x1ada>
1c01b35a:	050e                	slli	a0,a0,0x3
1c01b35c:	01e7de93          	srli	t4,a5,0x1e
1c01b360:	00269813          	slli	a6,a3,0x2
1c01b364:	00f505b3          	add	a1,a0,a5
1c01b368:	010ee833          	or	a6,t4,a6
1c01b36c:	9836                	add	a6,a6,a3
1c01b36e:	00a5b6b3          	sltu	a3,a1,a0
1c01b372:	96c2                	add	a3,a3,a6
1c01b374:	01f5d793          	srli	a5,a1,0x1f
1c01b378:	0686                	slli	a3,a3,0x1
1c01b37a:	8edd                	or	a3,a3,a5
1c01b37c:	01c6d793          	srli	a5,a3,0x1c
1c01b380:	03078793          	addi	a5,a5,48
1c01b384:	00f30623          	sb	a5,12(t1)
1c01b388:	ff388a13          	addi	s4,a7,-13
1c01b38c:	00159793          	slli	a5,a1,0x1
1c01b390:	01c6f6b3          	and	a3,a3,t3
1c01b394:	00d30513          	addi	a0,t1,13
1c01b398:	480d                	li	a6,3
1c01b39a:	0d405163          	blez	s4,1c01b45c <pos_libc_prf+0x14fe>
1c01b39e:	01e7de93          	srli	t4,a5,0x1e
1c01b3a2:	00269813          	slli	a6,a3,0x2
1c01b3a6:	058e                	slli	a1,a1,0x3
1c01b3a8:	00f58533          	add	a0,a1,a5
1c01b3ac:	010ee833          	or	a6,t4,a6
1c01b3b0:	9836                	add	a6,a6,a3
1c01b3b2:	00b536b3          	sltu	a3,a0,a1
1c01b3b6:	96c2                	add	a3,a3,a6
1c01b3b8:	01f55793          	srli	a5,a0,0x1f
1c01b3bc:	0686                	slli	a3,a3,0x1
1c01b3be:	8edd                	or	a3,a3,a5
1c01b3c0:	01c6d793          	srli	a5,a3,0x1c
1c01b3c4:	03078793          	addi	a5,a5,48
1c01b3c8:	00f306a3          	sb	a5,13(t1)
1c01b3cc:	ff288a13          	addi	s4,a7,-14
1c01b3d0:	00151793          	slli	a5,a0,0x1
1c01b3d4:	01c6f6b3          	and	a3,a3,t3
1c01b3d8:	65405c63          	blez	s4,1c01ba30 <pos_libc_prf+0x1ad2>
1c01b3dc:	050e                	slli	a0,a0,0x3
1c01b3de:	01e7de93          	srli	t4,a5,0x1e
1c01b3e2:	00269813          	slli	a6,a3,0x2
1c01b3e6:	00f505b3          	add	a1,a0,a5
1c01b3ea:	010ee833          	or	a6,t4,a6
1c01b3ee:	9836                	add	a6,a6,a3
1c01b3f0:	00a5b6b3          	sltu	a3,a1,a0
1c01b3f4:	96c2                	add	a3,a3,a6
1c01b3f6:	01f5d793          	srli	a5,a1,0x1f
1c01b3fa:	0686                	slli	a3,a3,0x1
1c01b3fc:	8edd                	or	a3,a3,a5
1c01b3fe:	01c6d793          	srli	a5,a3,0x1c
1c01b402:	03078793          	addi	a5,a5,48
1c01b406:	00f30723          	sb	a5,14(t1)
1c01b40a:	ff188a13          	addi	s4,a7,-15
1c01b40e:	00159793          	slli	a5,a1,0x1
1c01b412:	01c6f6b3          	and	a3,a3,t3
1c01b416:	00f30513          	addi	a0,t1,15
1c01b41a:	4805                	li	a6,1
1c01b41c:	05405063          	blez	s4,1c01b45c <pos_libc_prf+0x14fe>
1c01b420:	01e7d813          	srli	a6,a5,0x1e
1c01b424:	058e                	slli	a1,a1,0x3
1c01b426:	00269513          	slli	a0,a3,0x2
1c01b42a:	97ae                	add	a5,a5,a1
1c01b42c:	00a86533          	or	a0,a6,a0
1c01b430:	9536                	add	a0,a0,a3
1c01b432:	00b7b6b3          	sltu	a3,a5,a1
1c01b436:	96aa                	add	a3,a3,a0
1c01b438:	01f7d593          	srli	a1,a5,0x1f
1c01b43c:	0686                	slli	a3,a3,0x1
1c01b43e:	8ecd                	or	a3,a3,a1
1c01b440:	01c6d593          	srli	a1,a3,0x1c
1c01b444:	03058593          	addi	a1,a1,48
1c01b448:	01030513          	addi	a0,t1,16
1c01b44c:	0786                	slli	a5,a5,0x1
1c01b44e:	01c6f6b3          	and	a3,a3,t3
1c01b452:	00b307a3          	sb	a1,15(t1)
1c01b456:	ff088a13          	addi	s4,a7,-16
1c01b45a:	4801                	li	a6,0
1c01b45c:	4712                	lw	a4,4(sp)
1c01b45e:	4e070663          	beqz	a4,1c01b94a <pos_libc_prf+0x19ec>
1c01b462:	02e00893          	li	a7,46
1c01b466:	01150023          	sb	a7,0(a0)
1c01b46a:	8326                	mv	t1,s1
1c01b46c:	cc02                	sw	zero,24(sp)
1c01b46e:	00150593          	addi	a1,a0,1
1c01b472:	4881                	li	a7,0
1c01b474:	62605263          	blez	t1,1c01ba98 <pos_libc_prf+0x1b3a>
1c01b478:	62080063          	beqz	a6,1c01ba98 <pos_libc_prf+0x1b3a>
1c01b47c:	00279513          	slli	a0,a5,0x2
1c01b480:	01e7de93          	srli	t4,a5,0x1e
1c01b484:	00269e13          	slli	t3,a3,0x2
1c01b488:	97aa                	add	a5,a5,a0
1c01b48a:	01ceee33          	or	t3,t4,t3
1c01b48e:	96f2                	add	a3,a3,t3
1c01b490:	00a7beb3          	sltu	t4,a5,a0
1c01b494:	9eb6                	add	t4,t4,a3
1c01b496:	0e86                	slli	t4,t4,0x1
1c01b498:	01f7d693          	srli	a3,a5,0x1f
1c01b49c:	01d6eeb3          	or	t4,a3,t4
1c01b4a0:	01ced693          	srli	a3,t4,0x1c
1c01b4a4:	03068693          	addi	a3,a3,48
1c01b4a8:	00d58023          	sb	a3,0(a1)
1c01b4ac:	fff30493          	addi	s1,t1,-1
1c01b4b0:	00158513          	addi	a0,a1,1
1c01b4b4:	00179693          	slli	a3,a5,0x1
1c01b4b8:	42048263          	beqz	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b4bc:	42182063          	p.beqimm	a6,1,1c01b8dc <pos_libc_prf+0x197e>
1c01b4c0:	10000e37          	lui	t3,0x10000
1c01b4c4:	1e7d                	addi	t3,t3,-1
1c01b4c6:	01cefeb3          	and	t4,t4,t3
1c01b4ca:	078e                	slli	a5,a5,0x3
1c01b4cc:	01e6df13          	srli	t5,a3,0x1e
1c01b4d0:	002e9513          	slli	a0,t4,0x2
1c01b4d4:	96be                	add	a3,a3,a5
1c01b4d6:	00af6533          	or	a0,t5,a0
1c01b4da:	9eaa                	add	t4,t4,a0
1c01b4dc:	00f6b7b3          	sltu	a5,a3,a5
1c01b4e0:	97f6                	add	a5,a5,t4
1c01b4e2:	01f6d513          	srli	a0,a3,0x1f
1c01b4e6:	0786                	slli	a5,a5,0x1
1c01b4e8:	8fc9                	or	a5,a5,a0
1c01b4ea:	01c7d513          	srli	a0,a5,0x1c
1c01b4ee:	03050513          	addi	a0,a0,48
1c01b4f2:	00a580a3          	sb	a0,1(a1)
1c01b4f6:	ffe30493          	addi	s1,t1,-2
1c01b4fa:	00258513          	addi	a0,a1,2
1c01b4fe:	00169e93          	slli	t4,a3,0x1
1c01b502:	01c7f7b3          	and	a5,a5,t3
1c01b506:	3c048b63          	beqz	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b50a:	3c282963          	p.beqimm	a6,2,1c01b8dc <pos_libc_prf+0x197e>
1c01b50e:	01eedf13          	srli	t5,t4,0x1e
1c01b512:	068e                	slli	a3,a3,0x3
1c01b514:	00279513          	slli	a0,a5,0x2
1c01b518:	9eb6                	add	t4,t4,a3
1c01b51a:	00af6533          	or	a0,t5,a0
1c01b51e:	00deb6b3          	sltu	a3,t4,a3
1c01b522:	97aa                	add	a5,a5,a0
1c01b524:	97b6                	add	a5,a5,a3
1c01b526:	0786                	slli	a5,a5,0x1
1c01b528:	01fed693          	srli	a3,t4,0x1f
1c01b52c:	8fd5                	or	a5,a5,a3
1c01b52e:	01c7d693          	srli	a3,a5,0x1c
1c01b532:	03068693          	addi	a3,a3,48
1c01b536:	00d58123          	sb	a3,2(a1)
1c01b53a:	ffd30493          	addi	s1,t1,-3
1c01b53e:	00358513          	addi	a0,a1,3
1c01b542:	001e9693          	slli	a3,t4,0x1
1c01b546:	01c7ff33          	and	t5,a5,t3
1c01b54a:	38905963          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b54e:	38382763          	p.beqimm	a6,3,1c01b8dc <pos_libc_prf+0x197e>
1c01b552:	003e9513          	slli	a0,t4,0x3
1c01b556:	01e6d793          	srli	a5,a3,0x1e
1c01b55a:	002f1e93          	slli	t4,t5,0x2
1c01b55e:	96aa                	add	a3,a3,a0
1c01b560:	01d7eeb3          	or	t4,a5,t4
1c01b564:	9efa                	add	t4,t4,t5
1c01b566:	00a6b7b3          	sltu	a5,a3,a0
1c01b56a:	97f6                	add	a5,a5,t4
1c01b56c:	01f6d513          	srli	a0,a3,0x1f
1c01b570:	0786                	slli	a5,a5,0x1
1c01b572:	8fc9                	or	a5,a5,a0
1c01b574:	01c7d513          	srli	a0,a5,0x1c
1c01b578:	03050513          	addi	a0,a0,48
1c01b57c:	00a581a3          	sb	a0,3(a1)
1c01b580:	ffc30493          	addi	s1,t1,-4
1c01b584:	00458513          	addi	a0,a1,4
1c01b588:	00169e93          	slli	t4,a3,0x1
1c01b58c:	01c7fe33          	and	t3,a5,t3
1c01b590:	34905663          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b594:	34482463          	p.beqimm	a6,4,1c01b8dc <pos_libc_prf+0x197e>
1c01b598:	068e                	slli	a3,a3,0x3
1c01b59a:	01eed793          	srli	a5,t4,0x1e
1c01b59e:	002e1513          	slli	a0,t3,0x2
1c01b5a2:	9eb6                	add	t4,t4,a3
1c01b5a4:	8d5d                	or	a0,a0,a5
1c01b5a6:	9e2a                	add	t3,t3,a0
1c01b5a8:	00deb7b3          	sltu	a5,t4,a3
1c01b5ac:	97f2                	add	a5,a5,t3
1c01b5ae:	01fed693          	srli	a3,t4,0x1f
1c01b5b2:	0786                	slli	a5,a5,0x1
1c01b5b4:	8fd5                	or	a5,a5,a3
1c01b5b6:	01c7d693          	srli	a3,a5,0x1c
1c01b5ba:	03068693          	addi	a3,a3,48
1c01b5be:	00d58223          	sb	a3,4(a1)
1c01b5c2:	ffb30493          	addi	s1,t1,-5
1c01b5c6:	00558513          	addi	a0,a1,5
1c01b5ca:	001e9693          	slli	a3,t4,0x1
1c01b5ce:	30905763          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b5d2:	30582563          	p.beqimm	a6,5,1c01b8dc <pos_libc_prf+0x197e>
1c01b5d6:	10000e37          	lui	t3,0x10000
1c01b5da:	1e7d                	addi	t3,t3,-1
1c01b5dc:	01c7f7b3          	and	a5,a5,t3
1c01b5e0:	01e6de93          	srli	t4,a3,0x1e
1c01b5e4:	00269513          	slli	a0,a3,0x2
1c01b5e8:	00279f13          	slli	t5,a5,0x2
1c01b5ec:	96aa                	add	a3,a3,a0
1c01b5ee:	01eeef33          	or	t5,t4,t5
1c01b5f2:	00a6b533          	sltu	a0,a3,a0
1c01b5f6:	97fa                	add	a5,a5,t5
1c01b5f8:	97aa                	add	a5,a5,a0
1c01b5fa:	00179e93          	slli	t4,a5,0x1
1c01b5fe:	01f6d513          	srli	a0,a3,0x1f
1c01b602:	01d56eb3          	or	t4,a0,t4
1c01b606:	01ced793          	srli	a5,t4,0x1c
1c01b60a:	03078793          	addi	a5,a5,48
1c01b60e:	00f582a3          	sb	a5,5(a1)
1c01b612:	ffa30493          	addi	s1,t1,-6
1c01b616:	00658513          	addi	a0,a1,6
1c01b61a:	00169793          	slli	a5,a3,0x1
1c01b61e:	01cefeb3          	and	t4,t4,t3
1c01b622:	2a905d63          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b626:	2a682b63          	p.beqimm	a6,6,1c01b8dc <pos_libc_prf+0x197e>
1c01b62a:	068e                	slli	a3,a3,0x3
1c01b62c:	01e7df13          	srli	t5,a5,0x1e
1c01b630:	002e9513          	slli	a0,t4,0x2
1c01b634:	97b6                	add	a5,a5,a3
1c01b636:	00af6533          	or	a0,t5,a0
1c01b63a:	9eaa                	add	t4,t4,a0
1c01b63c:	00d7b6b3          	sltu	a3,a5,a3
1c01b640:	96f6                	add	a3,a3,t4
1c01b642:	01f7d513          	srli	a0,a5,0x1f
1c01b646:	00169e93          	slli	t4,a3,0x1
1c01b64a:	01d56eb3          	or	t4,a0,t4
1c01b64e:	01ced693          	srli	a3,t4,0x1c
1c01b652:	03068693          	addi	a3,a3,48
1c01b656:	00d58323          	sb	a3,6(a1)
1c01b65a:	ff930493          	addi	s1,t1,-7
1c01b65e:	00758513          	addi	a0,a1,7
1c01b662:	00179693          	slli	a3,a5,0x1
1c01b666:	01cefeb3          	and	t4,t4,t3
1c01b66a:	26905963          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b66e:	26782763          	p.beqimm	a6,7,1c01b8dc <pos_libc_prf+0x197e>
1c01b672:	078e                	slli	a5,a5,0x3
1c01b674:	01e6df13          	srli	t5,a3,0x1e
1c01b678:	002e9513          	slli	a0,t4,0x2
1c01b67c:	96be                	add	a3,a3,a5
1c01b67e:	00af6533          	or	a0,t5,a0
1c01b682:	9eaa                	add	t4,t4,a0
1c01b684:	00f6b7b3          	sltu	a5,a3,a5
1c01b688:	97f6                	add	a5,a5,t4
1c01b68a:	01f6d513          	srli	a0,a3,0x1f
1c01b68e:	00179e93          	slli	t4,a5,0x1
1c01b692:	01d56eb3          	or	t4,a0,t4
1c01b696:	01ced793          	srli	a5,t4,0x1c
1c01b69a:	03078793          	addi	a5,a5,48
1c01b69e:	00f583a3          	sb	a5,7(a1)
1c01b6a2:	ff830493          	addi	s1,t1,-8
1c01b6a6:	00858513          	addi	a0,a1,8
1c01b6aa:	00169793          	slli	a5,a3,0x1
1c01b6ae:	01cefeb3          	and	t4,t4,t3
1c01b6b2:	22905563          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b6b6:	22882363          	p.beqimm	a6,8,1c01b8dc <pos_libc_prf+0x197e>
1c01b6ba:	01e7df13          	srli	t5,a5,0x1e
1c01b6be:	068e                	slli	a3,a3,0x3
1c01b6c0:	002e9513          	slli	a0,t4,0x2
1c01b6c4:	97b6                	add	a5,a5,a3
1c01b6c6:	00af6533          	or	a0,t5,a0
1c01b6ca:	9eaa                	add	t4,t4,a0
1c01b6cc:	00d7b6b3          	sltu	a3,a5,a3
1c01b6d0:	96f6                	add	a3,a3,t4
1c01b6d2:	01f7d513          	srli	a0,a5,0x1f
1c01b6d6:	0686                	slli	a3,a3,0x1
1c01b6d8:	8ec9                	or	a3,a3,a0
1c01b6da:	01c6d513          	srli	a0,a3,0x1c
1c01b6de:	03050513          	addi	a0,a0,48
1c01b6e2:	00a58423          	sb	a0,8(a1)
1c01b6e6:	ff730493          	addi	s1,t1,-9
1c01b6ea:	00958513          	addi	a0,a1,9
1c01b6ee:	00179f13          	slli	t5,a5,0x1
1c01b6f2:	01c6feb3          	and	t4,a3,t3
1c01b6f6:	1e905363          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b6fa:	1e982163          	p.beqimm	a6,9,1c01b8dc <pos_libc_prf+0x197e>
1c01b6fe:	078e                	slli	a5,a5,0x3
1c01b700:	01ef5293          	srli	t0,t5,0x1e
1c01b704:	002e9513          	slli	a0,t4,0x2
1c01b708:	01e786b3          	add	a3,a5,t5
1c01b70c:	00a2e533          	or	a0,t0,a0
1c01b710:	00f6b7b3          	sltu	a5,a3,a5
1c01b714:	9576                	add	a0,a0,t4
1c01b716:	97aa                	add	a5,a5,a0
1c01b718:	0786                	slli	a5,a5,0x1
1c01b71a:	01f6d513          	srli	a0,a3,0x1f
1c01b71e:	8fc9                	or	a5,a5,a0
1c01b720:	01c7d513          	srli	a0,a5,0x1c
1c01b724:	03050513          	addi	a0,a0,48
1c01b728:	00a584a3          	sb	a0,9(a1)
1c01b72c:	ff630493          	addi	s1,t1,-10
1c01b730:	00a58513          	addi	a0,a1,10
1c01b734:	0686                	slli	a3,a3,0x1
1c01b736:	01c7f7b3          	and	a5,a5,t3
1c01b73a:	1a905163          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b73e:	18a82f63          	p.beqimm	a6,10,1c01b8dc <pos_libc_prf+0x197e>
1c01b742:	01e6de93          	srli	t4,a3,0x1e
1c01b746:	00269513          	slli	a0,a3,0x2
1c01b74a:	00279e13          	slli	t3,a5,0x2
1c01b74e:	96aa                	add	a3,a3,a0
1c01b750:	01ceee33          	or	t3,t4,t3
1c01b754:	00a6b533          	sltu	a0,a3,a0
1c01b758:	97f2                	add	a5,a5,t3
1c01b75a:	97aa                	add	a5,a5,a0
1c01b75c:	00179e93          	slli	t4,a5,0x1
1c01b760:	01f6d513          	srli	a0,a3,0x1f
1c01b764:	01d56eb3          	or	t4,a0,t4
1c01b768:	01ced793          	srli	a5,t4,0x1c
1c01b76c:	03078793          	addi	a5,a5,48
1c01b770:	10000e37          	lui	t3,0x10000
1c01b774:	1e7d                	addi	t3,t3,-1
1c01b776:	00f58523          	sb	a5,10(a1)
1c01b77a:	ff530493          	addi	s1,t1,-11
1c01b77e:	00b58513          	addi	a0,a1,11
1c01b782:	00169793          	slli	a5,a3,0x1
1c01b786:	01cefeb3          	and	t4,t4,t3
1c01b78a:	14905963          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b78e:	14b82763          	p.beqimm	a6,11,1c01b8dc <pos_libc_prf+0x197e>
1c01b792:	068e                	slli	a3,a3,0x3
1c01b794:	01e7df13          	srli	t5,a5,0x1e
1c01b798:	002e9513          	slli	a0,t4,0x2
1c01b79c:	97b6                	add	a5,a5,a3
1c01b79e:	00af6533          	or	a0,t5,a0
1c01b7a2:	9eaa                	add	t4,t4,a0
1c01b7a4:	00d7b6b3          	sltu	a3,a5,a3
1c01b7a8:	96f6                	add	a3,a3,t4
1c01b7aa:	01f7d513          	srli	a0,a5,0x1f
1c01b7ae:	0686                	slli	a3,a3,0x1
1c01b7b0:	8ec9                	or	a3,a3,a0
1c01b7b2:	01c6d513          	srli	a0,a3,0x1c
1c01b7b6:	03050513          	addi	a0,a0,48
1c01b7ba:	00a585a3          	sb	a0,11(a1)
1c01b7be:	ff430493          	addi	s1,t1,-12
1c01b7c2:	00c58513          	addi	a0,a1,12
1c01b7c6:	00179e93          	slli	t4,a5,0x1
1c01b7ca:	10905963          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b7ce:	10c82763          	p.beqimm	a6,12,1c01b8dc <pos_libc_prf+0x197e>
1c01b7d2:	01c6f6b3          	and	a3,a3,t3
1c01b7d6:	01eedf13          	srli	t5,t4,0x1e
1c01b7da:	078e                	slli	a5,a5,0x3
1c01b7dc:	00269513          	slli	a0,a3,0x2
1c01b7e0:	9ebe                	add	t4,t4,a5
1c01b7e2:	00af6533          	or	a0,t5,a0
1c01b7e6:	96aa                	add	a3,a3,a0
1c01b7e8:	00feb7b3          	sltu	a5,t4,a5
1c01b7ec:	97b6                	add	a5,a5,a3
1c01b7ee:	01fed513          	srli	a0,t4,0x1f
1c01b7f2:	00179693          	slli	a3,a5,0x1
1c01b7f6:	8ec9                	or	a3,a3,a0
1c01b7f8:	01c6d793          	srli	a5,a3,0x1c
1c01b7fc:	03078793          	addi	a5,a5,48
1c01b800:	00f58623          	sb	a5,12(a1)
1c01b804:	ff330493          	addi	s1,t1,-13
1c01b808:	00d58513          	addi	a0,a1,13
1c01b80c:	001e9793          	slli	a5,t4,0x1
1c01b810:	01c6ff33          	and	t5,a3,t3
1c01b814:	0c905463          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b818:	0cd82263          	p.beqimm	a6,13,1c01b8dc <pos_libc_prf+0x197e>
1c01b81c:	003e9693          	slli	a3,t4,0x3
1c01b820:	002f1513          	slli	a0,t5,0x2
1c01b824:	01e7de93          	srli	t4,a5,0x1e
1c01b828:	00aee533          	or	a0,t4,a0
1c01b82c:	97b6                	add	a5,a5,a3
1c01b82e:	957a                	add	a0,a0,t5
1c01b830:	00d7b6b3          	sltu	a3,a5,a3
1c01b834:	96aa                	add	a3,a3,a0
1c01b836:	0686                	slli	a3,a3,0x1
1c01b838:	01f7d513          	srli	a0,a5,0x1f
1c01b83c:	8ec9                	or	a3,a3,a0
1c01b83e:	01c6d513          	srli	a0,a3,0x1c
1c01b842:	03050513          	addi	a0,a0,48
1c01b846:	00a586a3          	sb	a0,13(a1)
1c01b84a:	ff230493          	addi	s1,t1,-14
1c01b84e:	00e58513          	addi	a0,a1,14
1c01b852:	00179f13          	slli	t5,a5,0x1
1c01b856:	01c6feb3          	and	t4,a3,t3
1c01b85a:	08905163          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b85e:	06e82f63          	p.beqimm	a6,14,1c01b8dc <pos_libc_prf+0x197e>
1c01b862:	078e                	slli	a5,a5,0x3
1c01b864:	002e9513          	slli	a0,t4,0x2
1c01b868:	01ef5293          	srli	t0,t5,0x1e
1c01b86c:	01e786b3          	add	a3,a5,t5
1c01b870:	00a2e533          	or	a0,t0,a0
1c01b874:	9576                	add	a0,a0,t4
1c01b876:	00f6b7b3          	sltu	a5,a3,a5
1c01b87a:	97aa                	add	a5,a5,a0
1c01b87c:	00179e93          	slli	t4,a5,0x1
1c01b880:	01f6d513          	srli	a0,a3,0x1f
1c01b884:	01d56eb3          	or	t4,a0,t4
1c01b888:	01ced793          	srli	a5,t4,0x1c
1c01b88c:	03078793          	addi	a5,a5,48
1c01b890:	00f58723          	sb	a5,14(a1)
1c01b894:	ff130493          	addi	s1,t1,-15
1c01b898:	00f58513          	addi	a0,a1,15
1c01b89c:	00169793          	slli	a5,a3,0x1
1c01b8a0:	01cefe33          	and	t3,t4,t3
1c01b8a4:	02905c63          	blez	s1,1c01b8dc <pos_libc_prf+0x197e>
1c01b8a8:	46c1                	li	a3,16
1c01b8aa:	02d81963          	bne	a6,a3,1c01b8dc <pos_libc_prf+0x197e>
1c01b8ae:	00279513          	slli	a0,a5,0x2
1c01b8b2:	01e7d813          	srli	a6,a5,0x1e
1c01b8b6:	002e1693          	slli	a3,t3,0x2
1c01b8ba:	97aa                	add	a5,a5,a0
1c01b8bc:	00d866b3          	or	a3,a6,a3
1c01b8c0:	00a7b7b3          	sltu	a5,a5,a0
1c01b8c4:	9e36                	add	t3,t3,a3
1c01b8c6:	97f2                	add	a5,a5,t3
1c01b8c8:	0786                	slli	a5,a5,0x1
1c01b8ca:	83f1                	srli	a5,a5,0x1c
1c01b8cc:	03078793          	addi	a5,a5,48
1c01b8d0:	01058513          	addi	a0,a1,16
1c01b8d4:	00f587a3          	sb	a5,15(a1)
1c01b8d8:	ff030493          	addi	s1,t1,-16
1c01b8dc:	47e2                	lw	a5,24(sp)
1c01b8de:	014785b3          	add	a1,a5,s4
1c01b8e2:	9c0f9b63          	bnez	t6,1c01aab8 <pos_libc_prf+0xb5a>
1c01b8e6:	95a6                	add	a1,a1,s1
1c01b8e8:	8ca6                	mv	s9,s1
1c01b8ea:	9faff06f          	j	1c01aae4 <pos_libc_prf+0xb86>
1c01b8ee:	02d00793          	li	a5,45
1c01b8f2:	411008b3          	neg	a7,a7
1c01b8f6:	00f500a3          	sb	a5,1(a0)
1c01b8fa:	db4ff06f          	j	1c01aeae <pos_libc_prf+0xf50>
1c01b8fe:	41fad793          	srai	a5,s5,0x1f
1c01b902:	0156a023          	sw	s5,0(a3)
1c01b906:	c2dc                	sw	a5,4(a3)
1c01b908:	e94fe06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01b90c:	4a62                	lw	s4,24(sp)
1c01b90e:	a039                	j	1c01b91c <pos_libc_prf+0x19be>
1c01b910:	9982                	jalr	s3
1c01b912:	1a7d                	addi	s4,s4,-1
1c01b914:	01f53463          	p.bneimm	a0,-1,1c01b91c <pos_libc_prf+0x19be>
1c01b918:	fbcfe06f          	j	1c01a0d4 <pos_libc_prf+0x176>
1c01b91c:	85de                	mv	a1,s7
1c01b91e:	03000513          	li	a0,48
1c01b922:	ff4047e3          	bgtz	s4,1c01b910 <pos_libc_prf+0x19b2>
1c01b926:	4762                	lw	a4,24(sp)
1c01b928:	40e90933          	sub	s2,s2,a4
1c01b92c:	939fe06f          	j	1c01a264 <pos_libc_prf+0x306>
1c01b930:	4741                	li	a4,16
1c01b932:	04e4cf33          	p.min	t5,s1,a4
1c01b936:	1f7d                	addi	t5,t5,-1
1c01b938:	84b6                	mv	s1,a3
1c01b93a:	4f81                	li	t6,0
1c01b93c:	c67fe06f          	j	1c01a5a2 <pos_libc_prf+0x644>
1c01b940:	104c                	addi	a1,sp,36
1c01b942:	4901                	li	s2,0
1c01b944:	86ae                	mv	a3,a1
1c01b946:	ed8ff06f          	j	1c01b01e <pos_libc_prf+0x10c0>
1c01b94a:	0c904463          	bgtz	s1,1c01ba12 <pos_libc_prf+0x1ab4>
1c01b94e:	4881                	li	a7,0
1c01b950:	cc02                	sw	zero,24(sp)
1c01b952:	b769                	j	1c01b8dc <pos_libc_prf+0x197e>
1c01b954:	4712                	lw	a4,4(sp)
1c01b956:	4f81                	li	t6,0
1c01b958:	e319                	bnez	a4,1c01b95e <pos_libc_prf+0x1a00>
1c01b95a:	c3dfe06f          	j	1c01a596 <pos_libc_prf+0x638>
1c01b95e:	4f01                	li	t5,0
1c01b960:	4f81                	li	t6,0
1c01b962:	c41fe06f          	j	1c01a5a2 <pos_libc_prf+0x644>
1c01b966:	020102a3          	sb	zero,37(sp)
1c01b96a:	c202                	sw	zero,4(sp)
1c01b96c:	4905                	li	s2,1
1c01b96e:	875fe06f          	j	1c01a1e2 <pos_libc_prf+0x284>
1c01b972:	06600d93          	li	s11,102
1c01b976:	d1cff06f          	j	1c01ae92 <pos_libc_prf+0xf34>
1c01b97a:	03000593          	li	a1,48
1c01b97e:	4712                	lw	a4,4(sp)
1c01b980:	00b30023          	sb	a1,0(t1)
1c01b984:	e335                	bnez	a4,1c01b9e8 <pos_libc_prf+0x1a8a>
1c01b986:	06905b63          	blez	s1,1c01b9fc <pos_libc_prf+0x1a9e>
1c01b98a:	02e00593          	li	a1,46
1c01b98e:	00b300a3          	sb	a1,1(t1)
1c01b992:	00230513          	addi	a0,t1,2
1c01b996:	4841                	li	a6,16
1c01b998:	08088363          	beqz	a7,1c01ba1e <pos_libc_prf+0x1ac0>
1c01b99c:	41100733          	neg	a4,a7
1c01b9a0:	04974733          	p.min	a4,a4,s1
1c01b9a4:	cc3a                	sw	a4,24(sp)
1c01b9a6:	40e48333          	sub	t1,s1,a4
1c01b9aa:	85aa                	mv	a1,a0
1c01b9ac:	4a01                	li	s4,0
1c01b9ae:	4841                	li	a6,16
1c01b9b0:	ac6044e3          	bgtz	t1,1c01b478 <pos_libc_prf+0x151a>
1c01b9b4:	a0d5                	j	1c01ba98 <pos_libc_prf+0x1b3a>
1c01b9b6:	4a72                	lw	s4,28(sp)
1c01b9b8:	de4fe06f          	j	1c019f9c <pos_libc_prf+0x3e>
1c01b9bc:	6799                	lui	a5,0x6
1c01b9be:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c01b9c2:	00f31023          	sh	a5,0(t1)
1c01b9c6:	06e00793          	li	a5,110
1c01b9ca:	00f30123          	sb	a5,2(t1)
1c01b9ce:	c38ff06f          	j	1c01ae06 <pos_libc_prf+0xea8>
1c01b9d2:	679d                	lui	a5,0x7
1c01b9d4:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c01b9d8:	00f31023          	sh	a5,0(t1)
1c01b9dc:	06600793          	li	a5,102
1c01b9e0:	00f30123          	sb	a5,2(t1)
1c01b9e4:	c22ff06f          	j	1c01ae06 <pos_libc_prf+0xea8>
1c01b9e8:	02e00593          	li	a1,46
1c01b9ec:	00b300a3          	sb	a1,1(t1)
1c01b9f0:	00230513          	addi	a0,t1,2
1c01b9f4:	00088763          	beqz	a7,1c01ba02 <pos_libc_prf+0x1aa4>
1c01b9f8:	fa9042e3          	bgtz	s1,1c01b99c <pos_libc_prf+0x1a3e>
1c01b9fc:	4a01                	li	s4,0
1c01b9fe:	cc02                	sw	zero,24(sp)
1c01ba00:	bdf1                	j	1c01b8dc <pos_libc_prf+0x197e>
1c01ba02:	fe905de3          	blez	s1,1c01b9fc <pos_libc_prf+0x1a9e>
1c01ba06:	85aa                	mv	a1,a0
1c01ba08:	4a01                	li	s4,0
1c01ba0a:	cc02                	sw	zero,24(sp)
1c01ba0c:	8326                	mv	t1,s1
1c01ba0e:	4841                	li	a6,16
1c01ba10:	b4b5                	j	1c01b47c <pos_libc_prf+0x151e>
1c01ba12:	02e00593          	li	a1,46
1c01ba16:	00b50023          	sb	a1,0(a0)
1c01ba1a:	88d2                	mv	a7,s4
1c01ba1c:	0505                	addi	a0,a0,1
1c01ba1e:	8a46                	mv	s4,a7
1c01ba20:	85aa                	mv	a1,a0
1c01ba22:	8326                	mv	t1,s1
1c01ba24:	cc02                	sw	zero,24(sp)
1c01ba26:	4881                	li	a7,0
1c01ba28:	bc81                	j	1c01b478 <pos_libc_prf+0x151a>
1c01ba2a:	4a01                	li	s4,0
1c01ba2c:	483d                	li	a6,15
1c01ba2e:	b43d                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba30:	00e30513          	addi	a0,t1,14
1c01ba34:	4809                	li	a6,2
1c01ba36:	b41d                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba38:	00c30513          	addi	a0,t1,12
1c01ba3c:	b405                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba3e:	c0200813          	li	a6,-1022
1c01ba42:	a62ff06f          	j	1c01aca4 <pos_libc_prf+0xd46>
1c01ba46:	00330513          	addi	a0,t1,3
1c01ba4a:	4835                	li	a6,13
1c01ba4c:	bc01                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba4e:	00230513          	addi	a0,t1,2
1c01ba52:	4a01                	li	s4,0
1c01ba54:	4839                	li	a6,14
1c01ba56:	b419                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba58:	00b30513          	addi	a0,t1,11
1c01ba5c:	4815                	li	a6,5
1c01ba5e:	bafd                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba60:	00a30513          	addi	a0,t1,10
1c01ba64:	4819                	li	a6,6
1c01ba66:	badd                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba68:	00930513          	addi	a0,t1,9
1c01ba6c:	481d                	li	a6,7
1c01ba6e:	b2fd                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba70:	00830513          	addi	a0,t1,8
1c01ba74:	4821                	li	a6,8
1c01ba76:	b2dd                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba78:	00730513          	addi	a0,t1,7
1c01ba7c:	4825                	li	a6,9
1c01ba7e:	baf9                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba80:	00630513          	addi	a0,t1,6
1c01ba84:	4829                	li	a6,10
1c01ba86:	bad9                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba88:	00530513          	addi	a0,t1,5
1c01ba8c:	482d                	li	a6,11
1c01ba8e:	b2f9                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba90:	00430513          	addi	a0,t1,4
1c01ba94:	4831                	li	a6,12
1c01ba96:	b2d9                	j	1c01b45c <pos_libc_prf+0x14fe>
1c01ba98:	849a                	mv	s1,t1
1c01ba9a:	852e                	mv	a0,a1
1c01ba9c:	b581                	j	1c01b8dc <pos_libc_prf+0x197e>
1c01ba9e:	41990933          	sub	s2,s2,s9
1c01baa2:	8f3fe06f          	j	1c01a394 <pos_libc_prf+0x436>
1c01baa6:	00d78513          	addi	a0,a5,13
1c01baaa:	804ff06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01baae:	00c78513          	addi	a0,a5,12
1c01bab2:	ffdfe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bab6:	00b78513          	addi	a0,a5,11
1c01baba:	ff5fe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01babe:	00978513          	addi	a0,a5,9
1c01bac2:	fedfe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bac6:	00878513          	addi	a0,a5,8
1c01baca:	fe5fe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bace:	00778513          	addi	a0,a5,7
1c01bad2:	fddfe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bad6:	00678513          	addi	a0,a5,6
1c01bada:	fd5fe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bade:	00578513          	addi	a0,a5,5
1c01bae2:	fcdfe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bae6:	00478513          	addi	a0,a5,4
1c01baea:	fc5fe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01baee:	00378513          	addi	a0,a5,3
1c01baf2:	fbdfe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01baf6:	00278513          	addi	a0,a5,2
1c01bafa:	fb5fe06f          	j	1c01aaae <pos_libc_prf+0xb50>
1c01bafe:	00178513          	addi	a0,a5,1
1c01bb02:	4c81                	li	s9,0
1c01bb04:	fabfe06f          	j	1c01aaae <pos_libc_prf+0xb50>

1c01bb08 <pos_init_start>:
1c01bb08:	1141                	addi	sp,sp,-16
1c01bb0a:	c422                	sw	s0,8(sp)
1c01bb0c:	1c001437          	lui	s0,0x1c001
1c01bb10:	c606                	sw	ra,12(sp)
1c01bb12:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c01bb16:	2245                	jal	1c01bcb6 <pos_irq_init>
1c01bb18:	b66fe0ef          	jal	ra,1c019e7e <pos_soc_init>
1c01bb1c:	22f1                	jal	1c01bce8 <pos_soc_event_init>
1c01bb1e:	20ed                	jal	1c01bc08 <pos_allocs_init>
1c01bb20:	208d                	jal	1c01bb82 <pos_sched_init>
1c01bb22:	405c                	lw	a5,4(s0)
1c01bb24:	c791                	beqz	a5,1c01bb30 <pos_init_start+0x28>
1c01bb26:	0421                	addi	s0,s0,8
1c01bb28:	9782                	jalr	a5
1c01bb2a:	0044278b          	p.lw	a5,4(s0!)
1c01bb2e:	ffed                	bnez	a5,1c01bb28 <pos_init_start+0x20>
1c01bb30:	bf8fe0ef          	jal	ra,1c019f28 <pos_io_start>
1c01bb34:	300467f3          	csrrsi	a5,mstatus,8
1c01bb38:	40b2                	lw	ra,12(sp)
1c01bb3a:	4422                	lw	s0,8(sp)
1c01bb3c:	0141                	addi	sp,sp,16
1c01bb3e:	8082                	ret

1c01bb40 <pos_init_stop>:
1c01bb40:	1141                	addi	sp,sp,-16
1c01bb42:	c422                	sw	s0,8(sp)
1c01bb44:	1c001437          	lui	s0,0x1c001
1c01bb48:	c606                	sw	ra,12(sp)
1c01bb4a:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c01bb4e:	bdefe0ef          	jal	ra,1c019f2c <pos_io_stop>
1c01bb52:	405c                	lw	a5,4(s0)
1c01bb54:	c791                	beqz	a5,1c01bb60 <pos_init_stop+0x20>
1c01bb56:	0421                	addi	s0,s0,8
1c01bb58:	9782                	jalr	a5
1c01bb5a:	0044278b          	p.lw	a5,4(s0!)
1c01bb5e:	ffed                	bnez	a5,1c01bb58 <pos_init_stop+0x18>
1c01bb60:	40b2                	lw	ra,12(sp)
1c01bb62:	4422                	lw	s0,8(sp)
1c01bb64:	0141                	addi	sp,sp,16
1c01bb66:	8082                	ret

1c01bb68 <pos_cbsys_add>:
1c01bb68:	00259793          	slli	a5,a1,0x2
1c01bb6c:	1c0015b7          	lui	a1,0x1c001
1c01bb70:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c01bb74:	95be                	add	a1,a1,a5
1c01bb76:	419c                	lw	a5,0(a1)
1c01bb78:	c110                	sw	a2,0(a0)
1c01bb7a:	c154                	sw	a3,4(a0)
1c01bb7c:	c51c                	sw	a5,8(a0)
1c01bb7e:	c188                	sw	a0,0(a1)
1c01bb80:	8082                	ret

1c01bb82 <pos_sched_init>:
1c01bb82:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c01bb86:	8082                	ret

1c01bb88 <pos_alloc_init>:
1c01bb88:	00758793          	addi	a5,a1,7
1c01bb8c:	c407b7b3          	p.bclr	a5,a5,2,0
1c01bb90:	40b785b3          	sub	a1,a5,a1
1c01bb94:	c11c                	sw	a5,0(a0)
1c01bb96:	8e0d                	sub	a2,a2,a1
1c01bb98:	00c05763          	blez	a2,1c01bba6 <pos_alloc_init+0x1e>
1c01bb9c:	c4063633          	p.bclr	a2,a2,2,0
1c01bba0:	c390                	sw	a2,0(a5)
1c01bba2:	0007a223          	sw	zero,4(a5)
1c01bba6:	8082                	ret

1c01bba8 <pos_alloc>:
1c01bba8:	4110                	lw	a2,0(a0)
1c01bbaa:	059d                	addi	a1,a1,7
1c01bbac:	c405b5b3          	p.bclr	a1,a1,2,0
1c01bbb0:	ca31                	beqz	a2,1c01bc04 <pos_alloc+0x5c>
1c01bbb2:	4218                	lw	a4,0(a2)
1c01bbb4:	425c                	lw	a5,4(a2)
1c01bbb6:	02b75963          	ble	a1,a4,1c01bbe8 <pos_alloc+0x40>
1c01bbba:	cb81                	beqz	a5,1c01bbca <pos_alloc+0x22>
1c01bbbc:	4398                	lw	a4,0(a5)
1c01bbbe:	43d4                	lw	a3,4(a5)
1c01bbc0:	00b75763          	ble	a1,a4,1c01bbce <pos_alloc+0x26>
1c01bbc4:	863e                	mv	a2,a5
1c01bbc6:	87b6                	mv	a5,a3
1c01bbc8:	fbf5                	bnez	a5,1c01bbbc <pos_alloc+0x14>
1c01bbca:	853e                	mv	a0,a5
1c01bbcc:	8082                	ret
1c01bbce:	00b70a63          	beq	a4,a1,1c01bbe2 <pos_alloc+0x3a>
1c01bbd2:	00b78533          	add	a0,a5,a1
1c01bbd6:	8f0d                	sub	a4,a4,a1
1c01bbd8:	c118                	sw	a4,0(a0)
1c01bbda:	c154                	sw	a3,4(a0)
1c01bbdc:	c248                	sw	a0,4(a2)
1c01bbde:	853e                	mv	a0,a5
1c01bbe0:	8082                	ret
1c01bbe2:	c254                	sw	a3,4(a2)
1c01bbe4:	853e                	mv	a0,a5
1c01bbe6:	8082                	ret
1c01bbe8:	00e58b63          	beq	a1,a4,1c01bbfe <pos_alloc+0x56>
1c01bbec:	00b606b3          	add	a3,a2,a1
1c01bbf0:	8f0d                	sub	a4,a4,a1
1c01bbf2:	c2dc                	sw	a5,4(a3)
1c01bbf4:	c298                	sw	a4,0(a3)
1c01bbf6:	87b2                	mv	a5,a2
1c01bbf8:	c114                	sw	a3,0(a0)
1c01bbfa:	853e                	mv	a0,a5
1c01bbfc:	8082                	ret
1c01bbfe:	c11c                	sw	a5,0(a0)
1c01bc00:	87b2                	mv	a5,a2
1c01bc02:	b7e1                	j	1c01bbca <pos_alloc+0x22>
1c01bc04:	4781                	li	a5,0
1c01bc06:	b7d1                	j	1c01bbca <pos_alloc+0x22>

1c01bc08 <pos_allocs_init>:
1c01bc08:	1141                	addi	sp,sp,-16
1c01bc0a:	1c0195b7          	lui	a1,0x1c019
1c01bc0e:	c606                	sw	ra,12(sp)
1c01bc10:	c422                	sw	s0,8(sp)
1c01bc12:	26c58793          	addi	a5,a1,620 # 1c01926c <__l2_priv0_end>
1c01bc16:	1c008637          	lui	a2,0x1c008
1c01bc1a:	04c7c363          	blt	a5,a2,1c01bc60 <pos_allocs_init+0x58>
1c01bc1e:	4581                	li	a1,0
1c01bc20:	4601                	li	a2,0
1c01bc22:	1c019437          	lui	s0,0x1c019
1c01bc26:	24440513          	addi	a0,s0,580 # 1c019244 <pos_alloc_l2>
1c01bc2a:	3fb9                	jal	1c01bb88 <pos_alloc_init>
1c01bc2c:	1c01c5b7          	lui	a1,0x1c01c
1c01bc30:	1f458793          	addi	a5,a1,500 # 1c01c1f4 <__l2_shared_end>
1c01bc34:	1c080637          	lui	a2,0x1c080
1c01bc38:	1c019537          	lui	a0,0x1c019
1c01bc3c:	8e1d                	sub	a2,a2,a5
1c01bc3e:	1f458593          	addi	a1,a1,500
1c01bc42:	24850513          	addi	a0,a0,584 # 1c019248 <pos_alloc_l2+0x4>
1c01bc46:	3789                	jal	1c01bb88 <pos_alloc_init>
1c01bc48:	24440513          	addi	a0,s0,580
1c01bc4c:	4591                	li	a1,4
1c01bc4e:	3fa9                	jal	1c01bba8 <pos_alloc>
1c01bc50:	40b2                	lw	ra,12(sp)
1c01bc52:	4422                	lw	s0,8(sp)
1c01bc54:	1c0197b7          	lui	a5,0x1c019
1c01bc58:	24a7a023          	sw	a0,576(a5) # 1c019240 <pos_alloc_l1>
1c01bc5c:	0141                	addi	sp,sp,16
1c01bc5e:	8082                	ret
1c01bc60:	8e1d                	sub	a2,a2,a5
1c01bc62:	26c58593          	addi	a1,a1,620
1c01bc66:	bf75                	j	1c01bc22 <pos_allocs_init+0x1a>

1c01bc68 <pos_irq_set_handler>:
1c01bc68:	f14027f3          	csrr	a5,mhartid
1c01bc6c:	477d                	li	a4,31
1c01bc6e:	ca5797b3          	p.extractu	a5,a5,5,5
1c01bc72:	02e78d63          	beq	a5,a4,1c01bcac <pos_irq_set_handler+0x44>
1c01bc76:	002007b7          	lui	a5,0x200
1c01bc7a:	43b8                	lw	a4,64(a5)
1c01bc7c:	050a                	slli	a0,a0,0x2
1c01bc7e:	8d89                	sub	a1,a1,a0
1c01bc80:	8d99                	sub	a1,a1,a4
1c01bc82:	c14586b3          	p.extract	a3,a1,0,20
1c01bc86:	06f00793          	li	a5,111
1c01bc8a:	c1f6a7b3          	p.insert	a5,a3,0,31
1c01bc8e:	d21586b3          	p.extract	a3,a1,9,1
1c01bc92:	d356a7b3          	p.insert	a5,a3,9,21
1c01bc96:	c0b586b3          	p.extract	a3,a1,0,11
1c01bc9a:	c146a7b3          	p.insert	a5,a3,0,20
1c01bc9e:	cec585b3          	p.extract	a1,a1,7,12
1c01bca2:	cec5a7b3          	p.insert	a5,a1,7,12
1c01bca6:	00f56723          	p.sw	a5,a4(a0)
1c01bcaa:	8082                	ret
1c01bcac:	30502773          	csrr	a4,mtvec
1c01bcb0:	c0073733          	p.bclr	a4,a4,0,0
1c01bcb4:	b7e1                	j	1c01bc7c <pos_irq_set_handler+0x14>

1c01bcb6 <pos_irq_init>:
1c01bcb6:	f1402773          	csrr	a4,mhartid
1c01bcba:	1a10a7b7          	lui	a5,0x1a10a
1c01bcbe:	56fd                	li	a3,-1
1c01bcc0:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c01bcc4:	ca571733          	p.extractu	a4,a4,5,5
1c01bcc8:	1c0197b7          	lui	a5,0x1c019
1c01bccc:	46fd                	li	a3,31
1c01bcce:	30078793          	addi	a5,a5,768 # 1c019300 <__irq_vector_base>
1c01bcd2:	00d70663          	beq	a4,a3,1c01bcde <pos_irq_init+0x28>
1c01bcd6:	00200737          	lui	a4,0x200
1c01bcda:	c33c                	sw	a5,64(a4)
1c01bcdc:	8082                	ret
1c01bcde:	c007c7b3          	p.bset	a5,a5,0,0
1c01bce2:	30579073          	csrw	mtvec,a5
1c01bce6:	8082                	ret

1c01bce8 <pos_soc_event_init>:
1c01bce8:	1a1067b7          	lui	a5,0x1a106
1c01bcec:	1141                	addi	sp,sp,-16
1c01bcee:	c606                	sw	ra,12(sp)
1c01bcf0:	577d                	li	a4,-1
1c01bcf2:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c01bcf6:	c298                	sw	a4,0(a3)
1c01bcf8:	00878693          	addi	a3,a5,8
1c01bcfc:	c298                	sw	a4,0(a3)
1c01bcfe:	00c78693          	addi	a3,a5,12
1c01bd02:	c298                	sw	a4,0(a3)
1c01bd04:	01078693          	addi	a3,a5,16
1c01bd08:	c298                	sw	a4,0(a3)
1c01bd0a:	01478693          	addi	a3,a5,20
1c01bd0e:	c298                	sw	a4,0(a3)
1c01bd10:	01878693          	addi	a3,a5,24
1c01bd14:	c298                	sw	a4,0(a3)
1c01bd16:	01c78693          	addi	a3,a5,28
1c01bd1a:	c298                	sw	a4,0(a3)
1c01bd1c:	02078793          	addi	a5,a5,32
1c01bd20:	1c01c5b7          	lui	a1,0x1c01c
1c01bd24:	c398                	sw	a4,0(a5)
1c01bd26:	fe058593          	addi	a1,a1,-32 # 1c01bfe0 <pos_soc_event_handler_asm>
1c01bd2a:	4569                	li	a0,26
1c01bd2c:	3f35                	jal	1c01bc68 <pos_irq_set_handler>
1c01bd2e:	40b2                	lw	ra,12(sp)
1c01bd30:	1a10a7b7          	lui	a5,0x1a10a
1c01bd34:	04000737          	lui	a4,0x4000
1c01bd38:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c01bd3c:	0141                	addi	sp,sp,16
1c01bd3e:	8082                	ret

1c01bd40 <pos_time_poweroff>:
1c01bd40:	1a10b7b7          	lui	a5,0x1a10b
1c01bd44:	0791                	addi	a5,a5,4
1c01bd46:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01bd4a:	1c001737          	lui	a4,0x1c001
1c01bd4e:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c01bd52:	4501                	li	a0,0
1c01bd54:	8082                	ret

1c01bd56 <pos_time_poweron>:
1c01bd56:	1c0017b7          	lui	a5,0x1c001
1c01bd5a:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c01bd5e:	1a10b7b7          	lui	a5,0x1a10b
1c01bd62:	0791                	addi	a5,a5,4
1c01bd64:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01bd68:	4501                	li	a0,0
1c01bd6a:	8082                	ret

1c01bd6c <pos_time_timer_handler>:
1c01bd6c:	1c0018b7          	lui	a7,0x1c001
1c01bd70:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c01bd74:	0048a783          	lw	a5,4(a7)
1c01bd78:	1a10b637          	lui	a2,0x1a10b
1c01bd7c:	0611                	addi	a2,a2,4
1c01bd7e:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c01bd82:	cba9                	beqz	a5,1c01bdd4 <pos_time_timer_handler+0x68>
1c01bd84:	5fd8                	lw	a4,60(a5)
1c01bd86:	800005b7          	lui	a1,0x80000
1c01bd8a:	40e60733          	sub	a4,a2,a4
1c01bd8e:	ffe5c593          	xori	a1,a1,-2
1c01bd92:	0ae5e763          	bltu	a1,a4,1c01be40 <pos_time_timer_handler+0xd4>
1c01bd96:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c01bd9a:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c01bd9e:	4398                	lw	a4,0(a5)
1c01bda0:	0007a023          	sw	zero,0(a5)
1c01bda4:	4301                	li	t1,0
1c01bda6:	02080063          	beqz	a6,1c01bdc6 <pos_time_timer_handler+0x5a>
1c01bdaa:	c11c                	sw	a5,0(a0)
1c01bdac:	c305                	beqz	a4,1c01bdcc <pos_time_timer_handler+0x60>
1c01bdae:	5f54                	lw	a3,60(a4)
1c01bdb0:	853e                	mv	a0,a5
1c01bdb2:	40d606b3          	sub	a3,a2,a3
1c01bdb6:	04d5e763          	bltu	a1,a3,1c01be04 <pos_time_timer_handler+0x98>
1c01bdba:	87ba                	mv	a5,a4
1c01bdbc:	4398                	lw	a4,0(a5)
1c01bdbe:	0007a023          	sw	zero,0(a5)
1c01bdc2:	fe0814e3          	bnez	a6,1c01bdaa <pos_time_timer_handler+0x3e>
1c01bdc6:	883e                	mv	a6,a5
1c01bdc8:	4305                	li	t1,1
1c01bdca:	f375                	bnez	a4,1c01bdae <pos_time_timer_handler+0x42>
1c01bdcc:	06031c63          	bnez	t1,1c01be44 <pos_time_timer_handler+0xd8>
1c01bdd0:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c01bdd4:	1a10b7b7          	lui	a5,0x1a10b
1c01bdd8:	08100713          	li	a4,129
1c01bddc:	0791                	addi	a5,a5,4
1c01bdde:	0008a223          	sw	zero,4(a7)
1c01bde2:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c01bde6:	f14027f3          	csrr	a5,mhartid
1c01bdea:	477d                	li	a4,31
1c01bdec:	ca5797b3          	p.extractu	a5,a5,5,5
1c01bdf0:	04e78063          	beq	a5,a4,1c01be30 <pos_time_timer_handler+0xc4>
1c01bdf4:	6785                	lui	a5,0x1
1c01bdf6:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01bdfa:	00204737          	lui	a4,0x204
1c01bdfe:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c01be02:	8082                	ret
1c01be04:	04031363          	bnez	t1,1c01be4a <pos_time_timer_handler+0xde>
1c01be08:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c01be0c:	1a10b7b7          	lui	a5,0x1a10b
1c01be10:	0791                	addi	a5,a5,4
1c01be12:	00e8a223          	sw	a4,4(a7)
1c01be16:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01be1a:	5f58                	lw	a4,60(a4)
1c01be1c:	40c70633          	sub	a2,a4,a2
1c01be20:	9636                	add	a2,a2,a3
1c01be22:	00c7a823          	sw	a2,16(a5)
1c01be26:	08500713          	li	a4,133
1c01be2a:	00e7a023          	sw	a4,0(a5)
1c01be2e:	8082                	ret
1c01be30:	6785                	lui	a5,0x1
1c01be32:	1a10a737          	lui	a4,0x1a10a
1c01be36:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01be3a:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c01be3e:	8082                	ret
1c01be40:	873e                	mv	a4,a5
1c01be42:	b7e9                	j	1c01be0c <pos_time_timer_handler+0xa0>
1c01be44:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c01be48:	b761                	j	1c01bdd0 <pos_time_timer_handler+0x64>
1c01be4a:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c01be4e:	bf6d                	j	1c01be08 <pos_time_timer_handler+0x9c>

1c01be50 <pos_time_init>:
1c01be50:	1141                	addi	sp,sp,-16
1c01be52:	c422                	sw	s0,8(sp)
1c01be54:	1a10b7b7          	lui	a5,0x1a10b
1c01be58:	1c001437          	lui	s0,0x1c001
1c01be5c:	c606                	sw	ra,12(sp)
1c01be5e:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c01be62:	08300713          	li	a4,131
1c01be66:	0791                	addi	a5,a5,4
1c01be68:	00042223          	sw	zero,4(s0)
1c01be6c:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c01be70:	1c01c5b7          	lui	a1,0x1c01c
1c01be74:	fbc58593          	addi	a1,a1,-68 # 1c01bfbc <pos_time_timer_handler_asm>
1c01be78:	452d                	li	a0,11
1c01be7a:	33fd                	jal	1c01bc68 <pos_irq_set_handler>
1c01be7c:	6785                	lui	a5,0x1
1c01be7e:	1a10a737          	lui	a4,0x1a10a
1c01be82:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01be86:	1c01c637          	lui	a2,0x1c01c
1c01be8a:	00840513          	addi	a0,s0,8
1c01be8e:	4681                	li	a3,0
1c01be90:	d4060613          	addi	a2,a2,-704 # 1c01bd40 <pos_time_poweroff>
1c01be94:	4589                	li	a1,2
1c01be96:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c01be9a:	31f9                	jal	1c01bb68 <pos_cbsys_add>
1c01be9c:	01840513          	addi	a0,s0,24
1c01bea0:	4422                	lw	s0,8(sp)
1c01bea2:	40b2                	lw	ra,12(sp)
1c01bea4:	1c01c637          	lui	a2,0x1c01c
1c01bea8:	4681                	li	a3,0
1c01beaa:	d5660613          	addi	a2,a2,-682 # 1c01bd56 <pos_time_poweron>
1c01beae:	458d                	li	a1,3
1c01beb0:	0141                	addi	sp,sp,16
1c01beb2:	b95d                	j	1c01bb68 <pos_cbsys_add>

1c01beb4 <pos_uart_init>:
1c01beb4:	1c01c7b7          	lui	a5,0x1c01c
1c01beb8:	1a07a223          	sw	zero,420(a5) # 1c01c1a4 <__cluster_text_end>
1c01bebc:	8082                	ret

1c01bebe <pos_init_entry>:
1c01bebe:	7a101073          	csrw	pcmr,zero
1c01bec2:	f1402573          	csrr	a0,mhartid
1c01bec6:	01f57593          	andi	a1,a0,31
1c01beca:	8115                	srli	a0,a0,0x5
1c01becc:	467d                	li	a2,31
1c01bece:	00c50463          	beq	a0,a2,1c01bed6 <pos_init_entry+0x18>
1c01bed2:	1820006f          	j	1c01c054 <__l2_priv1_end>
1c01bed6:	fffe5297          	auipc	t0,0xfffe5
1c01beda:	36a28293          	addi	t0,t0,874 # 1c001240 <_edata>
1c01bede:	ffffd317          	auipc	t1,0xffffd
1c01bee2:	38e30313          	addi	t1,t1,910 # 1c01926c <__l2_priv0_end>
1c01bee6:	0002a023          	sw	zero,0(t0)
1c01beea:	0291                	addi	t0,t0,4
1c01beec:	fe62ede3          	bltu	t0,t1,1c01bee6 <pos_init_entry+0x28>
1c01bef0:	fffe5117          	auipc	sp,0xfffe5
1c01bef4:	31010113          	addi	sp,sp,784 # 1c001200 <stack>
1c01bef8:	00000297          	auipc	t0,0x0
1c01befc:	c1028293          	addi	t0,t0,-1008 # 1c01bb08 <pos_init_start>
1c01bf00:	000280e7          	jalr	t0
1c01bf04:	00000513          	li	a0,0
1c01bf08:	00000593          	li	a1,0
1c01bf0c:	ffffe397          	auipc	t2,0xffffe
1c01bf10:	d4638393          	addi	t2,t2,-698 # 1c019c52 <main>
1c01bf14:	000380e7          	jalr	t2
1c01bf18:	842a                	mv	s0,a0
1c01bf1a:	8522                	mv	a0,s0
1c01bf1c:	ffffe297          	auipc	t0,0xffffe
1c01bf20:	fe028293          	addi	t0,t0,-32 # 1c019efc <exit>
1c01bf24:	000280e7          	jalr	t0

1c01bf28 <pos_irq_call_external_c_function>:
1c01bf28:	7119                	addi	sp,sp,-128
1c01bf2a:	c006                	sw	ra,0(sp)
1c01bf2c:	c20e                	sw	gp,4(sp)
1c01bf2e:	c412                	sw	tp,8(sp)
1c01bf30:	c616                	sw	t0,12(sp)
1c01bf32:	c81a                	sw	t1,16(sp)
1c01bf34:	ca1e                	sw	t2,20(sp)
1c01bf36:	d236                	sw	a3,36(sp)
1c01bf38:	d43a                	sw	a4,40(sp)
1c01bf3a:	d63e                	sw	a5,44(sp)
1c01bf3c:	d842                	sw	a6,48(sp)
1c01bf3e:	da46                	sw	a7,52(sp)
1c01bf40:	dc72                	sw	t3,56(sp)
1c01bf42:	de76                	sw	t4,60(sp)
1c01bf44:	c0fa                	sw	t5,64(sp)
1c01bf46:	c6fe                	sw	t6,76(sp)
1c01bf48:	000600e7          	jalr	a2
1c01bf4c:	4082                	lw	ra,0(sp)
1c01bf4e:	4192                	lw	gp,4(sp)
1c01bf50:	4222                	lw	tp,8(sp)
1c01bf52:	42b2                	lw	t0,12(sp)
1c01bf54:	4342                	lw	t1,16(sp)
1c01bf56:	43d2                	lw	t2,20(sp)
1c01bf58:	5692                	lw	a3,36(sp)
1c01bf5a:	5722                	lw	a4,40(sp)
1c01bf5c:	57b2                	lw	a5,44(sp)
1c01bf5e:	5842                	lw	a6,48(sp)
1c01bf60:	58d2                	lw	a7,52(sp)
1c01bf62:	5e62                	lw	t3,56(sp)
1c01bf64:	5ef2                	lw	t4,60(sp)
1c01bf66:	4f06                	lw	t5,64(sp)
1c01bf68:	4fb6                	lw	t6,76(sp)
1c01bf6a:	6109                	addi	sp,sp,128
1c01bf6c:	8482                	jr	s1

1c01bf6e <pos_irq_call_external_c_function_full>:
1c01bf6e:	7119                	addi	sp,sp,-128
1c01bf70:	c006                	sw	ra,0(sp)
1c01bf72:	c20e                	sw	gp,4(sp)
1c01bf74:	c412                	sw	tp,8(sp)
1c01bf76:	c616                	sw	t0,12(sp)
1c01bf78:	c81a                	sw	t1,16(sp)
1c01bf7a:	ca1e                	sw	t2,20(sp)
1c01bf7c:	cc2a                	sw	a0,24(sp)
1c01bf7e:	ce2e                	sw	a1,28(sp)
1c01bf80:	d236                	sw	a3,36(sp)
1c01bf82:	d43a                	sw	a4,40(sp)
1c01bf84:	d63e                	sw	a5,44(sp)
1c01bf86:	d842                	sw	a6,48(sp)
1c01bf88:	da46                	sw	a7,52(sp)
1c01bf8a:	dc72                	sw	t3,56(sp)
1c01bf8c:	de76                	sw	t4,60(sp)
1c01bf8e:	c0fa                	sw	t5,64(sp)
1c01bf90:	c6fe                	sw	t6,76(sp)
1c01bf92:	000600e7          	jalr	a2
1c01bf96:	4082                	lw	ra,0(sp)
1c01bf98:	4192                	lw	gp,4(sp)
1c01bf9a:	4222                	lw	tp,8(sp)
1c01bf9c:	42b2                	lw	t0,12(sp)
1c01bf9e:	4342                	lw	t1,16(sp)
1c01bfa0:	43d2                	lw	t2,20(sp)
1c01bfa2:	4562                	lw	a0,24(sp)
1c01bfa4:	45f2                	lw	a1,28(sp)
1c01bfa6:	5692                	lw	a3,36(sp)
1c01bfa8:	5722                	lw	a4,40(sp)
1c01bfaa:	57b2                	lw	a5,44(sp)
1c01bfac:	5842                	lw	a6,48(sp)
1c01bfae:	58d2                	lw	a7,52(sp)
1c01bfb0:	5e62                	lw	t3,56(sp)
1c01bfb2:	5ef2                	lw	t4,60(sp)
1c01bfb4:	4f06                	lw	t5,64(sp)
1c01bfb6:	4fb6                	lw	t6,76(sp)
1c01bfb8:	6109                	addi	sp,sp,128
1c01bfba:	8482                	jr	s1

1c01bfbc <pos_time_timer_handler_asm>:
1c01bfbc:	1161                	addi	sp,sp,-8
1c01bfbe:	c032                	sw	a2,0(sp)
1c01bfc0:	c226                	sw	s1,4(sp)
1c01bfc2:	00000617          	auipc	a2,0x0
1c01bfc6:	daa60613          	addi	a2,a2,-598 # 1c01bd6c <pos_time_timer_handler>
1c01bfca:	00000497          	auipc	s1,0x0
1c01bfce:	00c48493          	addi	s1,s1,12 # 1c01bfd6 <pos_time_timer_handler_asm_ret>
1c01bfd2:	f9dff06f          	j	1c01bf6e <pos_irq_call_external_c_function_full>

1c01bfd6 <pos_time_timer_handler_asm_ret>:
1c01bfd6:	4492                	lw	s1,4(sp)
1c01bfd8:	4602                	lw	a2,0(sp)
1c01bfda:	0121                	addi	sp,sp,8
1c01bfdc:	30200073          	mret

1c01bfe0 <pos_soc_event_handler_asm>:
1c01bfe0:	7119                	addi	sp,sp,-128
1c01bfe2:	c022                	sw	s0,0(sp)
1c01bfe4:	c226                	sw	s1,4(sp)
1c01bfe6:	c42a                	sw	a0,8(sp)
1c01bfe8:	c62e                	sw	a1,12(sp)
1c01bfea:	c832                	sw	a2,16(sp)
1c01bfec:	1a10a437          	lui	s0,0x1a10a
1c01bff0:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c01bff4:	5048                	lw	a0,36(s0)
1c01bff6:	00251593          	slli	a1,a0,0x2
1c01bffa:	e3fe4297          	auipc	t0,0xe3fe4
1c01bffe:	44e28293          	addi	t0,t0,1102 # 448 <pos_soc_event_callback>
1c01c002:	2055f603          	p.lw	a2,t0(a1)
1c01c006:	e3fe4297          	auipc	t0,0xe3fe4
1c01c00a:	04228293          	addi	t0,t0,66 # 48 <pos_soc_event_callback_arg>
1c01c00e:	2055f583          	p.lw	a1,t0(a1)
1c01c012:	00000497          	auipc	s1,0x0
1c01c016:	03048493          	addi	s1,s1,48 # 1c01c042 <pos_soc_event_handler_end_asm>
1c01c01a:	f0fff06f          	j	1c01bf28 <pos_irq_call_external_c_function>

1c01c01e <pos_soc_event_no_udma_asm>:
1c01c01e:	00555593          	srli	a1,a0,0x5
1c01c022:	058a                	slli	a1,a1,0x2
1c01c024:	e3fe4297          	auipc	t0,0xe3fe4
1c01c028:	00428293          	addi	t0,t0,4 # 28 <pos_soc_event_status>
1c01c02c:	2055f603          	p.lw	a2,t0(a1)
1c01c030:	897d                	andi	a0,a0,31
1c01c032:	80a64633          	p.bsetr	a2,a2,a0
1c01c036:	e3fe4297          	auipc	t0,0xe3fe4
1c01c03a:	ff228293          	addi	t0,t0,-14 # 28 <pos_soc_event_status>
1c01c03e:	00c5e2a3          	p.sw	a2,t0(a1)

1c01c042 <pos_soc_event_handler_end_asm>:
1c01c042:	4402                	lw	s0,0(sp)
1c01c044:	4492                	lw	s1,4(sp)
1c01c046:	4522                	lw	a0,8(sp)
1c01c048:	45b2                	lw	a1,12(sp)
1c01c04a:	4642                	lw	a2,16(sp)
1c01c04c:	6109                	addi	sp,sp,128
1c01c04e:	30200073          	mret

1c01c052 <_endtext>:
	...

Déassemblage de la section .l2_data :

1c01c054 <__cluster_text_start>:
1c01c054:	f1402573          	csrr	a0,mhartid
1c01c058:	01f57593          	andi	a1,a0,31
1c01c05c:	8115                	srli	a0,a0,0x5
1c01c05e:	000702b7          	lui	t0,0x70
1c01c062:	00204337          	lui	t1,0x204
1c01c066:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c01c06a:	4381                	li	t2,0
1c01c06c:	0e759463          	bne	a1,t2,1c01c154 <pos_slave_start>
1c01c070:	20000293          	li	t0,512
1c01c074:	00204337          	lui	t1,0x204
1c01c078:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c01c07c:	e3fe4417          	auipc	s0,0xe3fe4
1c01c080:	f8840413          	addi	s0,s0,-120 # 4 <pos_fll_freq>
1c01c084:	002049b7          	lui	s3,0x204
1c01c088:	4a09                	li	s4,2
1c01c08a:	00000a97          	auipc	s5,0x0
1c01c08e:	038a8a93          	addi	s5,s5,56 # 1c01c0c2 <pos_master_event>
1c01c092:	ffffdb97          	auipc	s7,0xffffd
1c01c096:	1bab8b93          	addi	s7,s7,442 # 1c01924c <pos_cluster>
1c01c09a:	02c00393          	li	t2,44
1c01c09e:	02a383b3          	mul	t2,t2,a0
1c01c0a2:	9b9e                	add	s7,s7,t2
1c01c0a4:	0bd1                	addi	s7,s7,20
1c01c0a6:	1a10acb7          	lui	s9,0x1a10a
1c01c0aa:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c01c0ae:	4c09                	li	s8,2
1c01c0b0:	00000d17          	auipc	s10,0x0
1c01c0b4:	0e2d0d13          	addi	s10,s10,226 # 1c01c192 <pos_set_slave_stack>
1c01c0b8:	001d6d13          	ori	s10,s10,1
1c01c0bc:	30045073          	csrwi	mstatus,8
1c01c0c0:	a829                	j	1c01c0da <pos_master_loop>

1c01c0c2 <pos_master_event>:
1c01c0c2:	018b2b03          	lw	s6,24(s6)
1c01c0c6:	000b0a63          	beqz	s6,1c01c0da <pos_master_loop>

1c01c0ca <pos_push_event_to_fc_retry>:
1c01c0ca:	000ba283          	lw	t0,0(s7)
1c01c0ce:	06029c63          	bnez	t0,1c01c146 <pos_push_event_to_fc_wait>
1c01c0d2:	016ba023          	sw	s6,0(s7)
1c01c0d6:	018ca023          	sw	s8,0(s9)

1c01c0da <pos_master_loop>:
1c01c0da:	00042b03          	lw	s6,0(s0)
1c01c0de:	040b0d63          	beqz	s6,1c01c138 <pos_master_sleep>

1c01c0e2 <pos_master_loop_update_next>:
1c01c0e2:	020b2e83          	lw	t4,32(s6)
1c01c0e6:	01d42023          	sw	t4,0(s0)
1c01c0ea:	020b2f03          	lw	t5,32(s6)
1c01c0ee:	ffee9ae3          	bne	t4,t5,1c01c0e2 <pos_master_loop_update_next>

1c01c0f2 <pos_master_loop_exec_task>:
1c01c0f2:	004b2503          	lw	a0,4(s6)
1c01c0f6:	000b2283          	lw	t0,0(s6)
1c01c0fa:	008b2103          	lw	sp,8(s6)
1c01c0fe:	00cb2303          	lw	t1,12(s6)
1c01c102:	010b2383          	lw	t2,16(s6)
1c01c106:	024b2f03          	lw	t5,36(s6)
1c01c10a:	014b2f83          	lw	t6,20(s6)
1c01c10e:	80d6                	mv	ra,s5
1c01c110:	911a                	add	sp,sp,t1
1c01c112:	e3fe4e17          	auipc	t3,0xe3fe4
1c01c116:	f1fe2323          	sw	t6,-250(t3) # 18 <_l1_preload_size>

1c01c11a <pos_no_stack_check>:
1c01c11a:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c01c11e:	21e9a023          	sw	t5,512(s3)
1c01c122:	21e9a623          	sw	t5,524(s3)

1c01c126 <pos_master_no_slave_barrier>:
1c01c126:	000f2863          	p.beqimm	t5,0,1c01c136 <pos_master_loop_no_slave>
1c01c12a:	09a9a023          	sw	s10,128(s3)
1c01c12e:	0879a023          	sw	t2,128(s3)
1c01c132:	0829a023          	sw	sp,128(s3)

1c01c136 <pos_master_loop_no_slave>:
1c01c136:	8282                	jr	t0

1c01c138 <pos_master_sleep>:
1c01c138:	0149a423          	sw	s4,8(s3)
1c01c13c:	03c9e003          	p.elw	zero,60(s3)
1c01c140:	0149a223          	sw	s4,4(s3)
1c01c144:	bf59                	j	1c01c0da <pos_master_loop>

1c01c146 <pos_push_event_to_fc_wait>:
1c01c146:	0149a423          	sw	s4,8(s3)
1c01c14a:	03c9e003          	p.elw	zero,60(s3)
1c01c14e:	0149a223          	sw	s4,4(s3)
1c01c152:	bfa5                	j	1c01c0ca <pos_push_event_to_fc_retry>

1c01c154 <pos_slave_start>:
1c01c154:	00204937          	lui	s2,0x204
1c01c158:	f14029f3          	csrr	s3,mhartid
1c01c15c:	01f9f993          	andi	s3,s3,31
1c01c160:	00000a17          	auipc	s4,0x0
1c01c164:	012a0a13          	addi	s4,s4,18 # 1c01c172 <pos_fork_return>
1c01c168:	00000a97          	auipc	s5,0x0
1c01c16c:	00ea8a93          	addi	s5,s5,14 # 1c01c176 <pos_wait_for_dispatch>
1c01c170:	a019                	j	1c01c176 <pos_wait_for_dispatch>

1c01c172 <pos_fork_return>:
1c01c172:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c01c176 <pos_wait_for_dispatch>:
1c01c176:	08096283          	p.elw	t0,128(s2)
1c01c17a:	08096503          	p.elw	a0,128(s2)
1c01c17e:	0012f313          	andi	t1,t0,1
1c01c182:	00031563          	bnez	t1,1c01c18c <pos_other_entry>

1c01c186 <pos_fork_entry>:
1c01c186:	000a00b3          	add	ra,s4,zero
1c01c18a:	8282                	jr	t0

1c01c18c <pos_other_entry>:
1c01c18c:	000a80b3          	add	ra,s5,zero
1c01c190:	8282                	jr	t0

1c01c192 <pos_set_slave_stack>:
1c01c192:	08096283          	p.elw	t0,128(s2)
1c01c196:	00098f13          	mv	t5,s3
1c01c19a:	02af0eb3          	mul	t4,t5,a0
1c01c19e:	005e8133          	add	sp,t4,t0
1c01c1a2:	8082                	ret

1c01c1a4 <__cluster_text_end>:
	...
