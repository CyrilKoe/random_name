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
1c019384:	b4850513          	addi	a0,a0,-1208 # 1c01bec8 <pos_init_entry>
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

1c019c04 <task_matMult>:
1c019c04:	6f91                	lui	t6,0x4
1c019c06:	20060313          	addi	t1,a2,512
1c019c0a:	08050f13          	addi	t5,a0,128
1c019c0e:	9faa                	add	t6,t6,a0
1c019c10:	e0030313          	addi	t1,t1,-512
1c019c14:	8eae                	mv	t4,a1
1c019c16:	0809d07b          	lp.setupi	x0,128,1c019c3c <task_matMult+0x38>
1c019c1a:	0003222b          	p.sw	zero,4(t1!)
1c019c1e:	8676                	mv	a2,t4
1c019c20:	86aa                	mv	a3,a0
1c019c22:	4701                	li	a4,0
1c019c24:	40af07b3          	sub	a5,t5,a0
1c019c28:	0087c0fb          	lp.setup	x1,a5,1c019c38 <task_matMult+0x34>
1c019c2c:	0016c88b          	p.lbu	a7,1(a3!) # 400001 <__l1_heap_size+0x3f001d>
1c019c30:	0806080b          	p.lb	a6,128(a2!)
1c019c34:	43088733          	p.mac	a4,a7,a6
1c019c38:	fee32e23          	sw	a4,-4(t1)
1c019c3c:	0e85                	addi	t4,t4,1
1c019c3e:	08050513          	addi	a0,a0,128
1c019c42:	20030313          	addi	t1,t1,512
1c019c46:	080f0f13          	addi	t5,t5,128
1c019c4a:	fdf513e3          	bne	a0,t6,1c019c10 <task_matMult+0xc>
1c019c4e:	8082                	ret

1c019c50 <main>:
1c019c50:	1141                	addi	sp,sp,-16
1c019c52:	1c001537          	lui	a0,0x1c001
1c019c56:	1c0055b7          	lui	a1,0x1c005
1c019c5a:	c606                	sw	ra,12(sp)
1c019c5c:	c422                	sw	s0,8(sp)
1c019c5e:	c226                	sw	s1,4(sp)
1c019c60:	4881                	li	a7,0
1c019c62:	4e01                	li	t3,0
1c019c64:	24050f13          	addi	t5,a0,576 # 1c001240 <_edata>
1c019c68:	24058e93          	addi	t4,a1,576 # 1c005240 <B>
1c019c6c:	080b507b          	lp.setupi	x0,128,1c019c98 <main+0x48>
1c019c70:	0ff8f793          	andi	a5,a7,255
1c019c74:	011f0833          	add	a6,t5,a7
1c019c78:	0ffe7693          	andi	a3,t3,255
1c019c7c:	011e8633          	add	a2,t4,a7
1c019c80:	0804d0fb          	lp.setupi	x1,128,1c019c92 <main+0x42>
1c019c84:	00f800ab          	p.sb	a5,1(a6!)
1c019c88:	00d600ab          	p.sb	a3,1(a2!)
1c019c8c:	0785                	addi	a5,a5,1
1c019c8e:	0ff7f793          	andi	a5,a5,255
1c019c92:	0806c693          	xori	a3,a3,128
1c019c96:	0e05                	addi	t3,t3,1
1c019c98:	08088893          	addi	a7,a7,128
1c019c9c:	000207b7          	lui	a5,0x20
1c019ca0:	0789                	addi	a5,a5,2
1c019ca2:	cc079073          	csrw	0xcc0,a5
1c019ca6:	f1402473          	csrr	s0,mhartid
1c019caa:	47fd                	li	a5,31
1c019cac:	ca541733          	p.extractu	a4,s0,5,5
1c019cb0:	0af70663          	beq	a4,a5,1c019d5c <main+0x10c>
1c019cb4:	102007b7          	lui	a5,0x10200
1c019cb8:	4705                	li	a4,1
1c019cba:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019cbe:	02e7a023          	sw	a4,32(a5)
1c019cc2:	4781                	li	a5,0
1c019cc4:	79f79073          	csrw	pccr31,a5
1c019cc8:	ca5417b3          	p.extractu	a5,s0,5,5
1c019ccc:	477d                	li	a4,31
1c019cce:	0ae78d63          	beq	a5,a4,1c019d88 <main+0x138>
1c019cd2:	102007b7          	lui	a5,0x10200
1c019cd6:	4705                	li	a4,1
1c019cd8:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019cdc:	00e7ac23          	sw	a4,24(a5)
1c019ce0:	478d                	li	a5,3
1c019ce2:	cc179073          	csrw	0xcc1,a5
1c019ce6:	1c009637          	lui	a2,0x1c009
1c019cea:	24060613          	addi	a2,a2,576 # 1c009240 <tempC>
1c019cee:	24058593          	addi	a1,a1,576
1c019cf2:	24050513          	addi	a0,a0,576
1c019cf6:	3739                	jal	1c019c04 <task_matMult>
1c019cf8:	ca5417b3          	p.extractu	a5,s0,5,5
1c019cfc:	477d                	li	a4,31
1c019cfe:	06e78d63          	beq	a5,a4,1c019d78 <main+0x128>
1c019d02:	102007b7          	lui	a5,0x10200
1c019d06:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c019d0a:	0007a023          	sw	zero,0(a5)
1c019d0e:	4781                	li	a5,0
1c019d10:	cc179073          	csrw	0xcc1,a5
1c019d14:	4505                	li	a0,1
1c019d16:	3b51                	jal	1c019aaa <cpu_perf_get>
1c019d18:	ca541433          	p.extractu	s0,s0,5,5
1c019d1c:	47fd                	li	a5,31
1c019d1e:	84aa                	mv	s1,a0
1c019d20:	04f40763          	beq	s0,a5,1c019d6e <main+0x11e>
1c019d24:	10200637          	lui	a2,0x10200
1c019d28:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c019d2c:	00862403          	lw	s0,8(a2)
1c019d30:	d014f7d3          	fcvt.s.wu	a5,s1
1c019d34:	d0147553          	fcvt.s.wu	a0,s0
1c019d38:	18f57553          	fdiv.s	a0,a0,a5
1c019d3c:	31e9                	jal	1c019a06 <__extendsfdf2>
1c019d3e:	872a                	mv	a4,a0
1c019d40:	1c001537          	lui	a0,0x1c001
1c019d44:	87ae                	mv	a5,a1
1c019d46:	8622                	mv	a2,s0
1c019d48:	85a6                	mv	a1,s1
1c019d4a:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c019d4e:	22f5                	jal	1c019f3a <printf>
1c019d50:	40b2                	lw	ra,12(sp)
1c019d52:	4422                	lw	s0,8(sp)
1c019d54:	4492                	lw	s1,4(sp)
1c019d56:	4501                	li	a0,0
1c019d58:	0141                	addi	sp,sp,16
1c019d5a:	8082                	ret
1c019d5c:	4785                	li	a5,1
1c019d5e:	1a10b737          	lui	a4,0x1a10b
1c019d62:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c019d66:	4781                	li	a5,0
1c019d68:	79f79073          	csrw	pccr31,a5
1c019d6c:	bfb1                	j	1c019cc8 <main+0x78>
1c019d6e:	1a10b637          	lui	a2,0x1a10b
1c019d72:	00862403          	lw	s0,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c019d76:	bf6d                	j	1c019d30 <main+0xe0>
1c019d78:	1a10b7b7          	lui	a5,0x1a10b
1c019d7c:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c019d80:	4781                	li	a5,0
1c019d82:	cc179073          	csrw	0xcc1,a5
1c019d86:	b779                	j	1c019d14 <main+0xc4>
1c019d88:	4785                	li	a5,1
1c019d8a:	1a10b737          	lui	a4,0x1a10b
1c019d8e:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c019d92:	478d                	li	a5,3
1c019d94:	cc179073          	csrw	0xcc1,a5
1c019d98:	b7b9                	j	1c019ce6 <main+0x96>

1c019d9a <pos_fll_init>:
1c019d9a:	00451593          	slli	a1,a0,0x4
1c019d9e:	832a                	mv	t1,a0
1c019da0:	00458e13          	addi	t3,a1,4
1c019da4:	1a100637          	lui	a2,0x1a100
1c019da8:	21c67703          	p.lw	a4,t3(a2)
1c019dac:	86ba                	mv	a3,a4
1c019dae:	04074163          	bltz	a4,1c019df0 <pos_fll_init+0x56>
1c019db2:	00858793          	addi	a5,a1,8
1c019db6:	20f67883          	p.lw	a7,a5(a2)
1c019dba:	4519                	li	a0,6
1c019dbc:	caa528b3          	p.insert	a7,a0,5,10
1c019dc0:	05000513          	li	a0,80
1c019dc4:	d70528b3          	p.insert	a7,a0,11,16
1c019dc8:	1a100837          	lui	a6,0x1a100
1c019dcc:	011867a3          	p.sw	a7,a5(a6)
1c019dd0:	05b1                	addi	a1,a1,12
1c019dd2:	20b67603          	p.lw	a2,a1(a2)
1c019dd6:	14c00793          	li	a5,332
1c019dda:	d307a633          	p.insert	a2,a5,9,16
1c019dde:	00c865a3          	p.sw	a2,a1(a6)
1c019de2:	4785                	li	a5,1
1c019de4:	c1e7a6b3          	p.insert	a3,a5,0,30
1c019de8:	c1f7a6b3          	p.insert	a3,a5,0,31
1c019dec:	00d86e23          	p.sw	a3,t3(a6)
1c019df0:	00400793          	li	a5,4
1c019df4:	00231613          	slli	a2,t1,0x2
1c019df8:	963e                	add	a2,a2,a5
1c019dfa:	4208                	lw	a0,0(a2)
1c019dfc:	ed19                	bnez	a0,1c019e1a <pos_fll_init+0x80>
1c019dfe:	10075733          	p.exthz	a4,a4
1c019e02:	c7a696b3          	p.extractu	a3,a3,3,26
1c019e06:	073e                	slli	a4,a4,0xf
1c019e08:	16fd                	addi	a3,a3,-1
1c019e0a:	00d75533          	srl	a0,a4,a3
1c019e0e:	c208                	sw	a0,0(a2)
1c019e10:	979a                	add	a5,a5,t1
1c019e12:	4705                	li	a4,1
1c019e14:	00e78623          	sb	a4,12(a5)
1c019e18:	8082                	ret
1c019e1a:	46f5                	li	a3,29
1c019e1c:	10051733          	p.fl1	a4,a0
1c019e20:	4585                	li	a1,1
1c019e22:	82e6b75b          	p.subun	a4,a3,a4,1
1c019e26:	04e5e733          	p.max	a4,a1,a4
1c019e2a:	fff70693          	addi	a3,a4,-1
1c019e2e:	00e51833          	sll	a6,a0,a4
1c019e32:	00d595b3          	sll	a1,a1,a3
1c019e36:	dc0838b3          	p.bclr	a7,a6,14,0
1c019e3a:	006786b3          	add	a3,a5,t1
1c019e3e:	c0e8a5db          	p.addunr	a1,a7,a4
1c019e42:	00c6c683          	lbu	a3,12(a3)
1c019e46:	c20c                	sw	a1,0(a2)
1c019e48:	d6e1                	beqz	a3,1c019e10 <pos_fll_init+0x76>
1c019e4a:	1a100637          	lui	a2,0x1a100
1c019e4e:	21c67683          	p.lw	a3,t3(a2)
1c019e52:	00f85813          	srli	a6,a6,0xf
1c019e56:	de0826b3          	p.insert	a3,a6,15,0
1c019e5a:	0705                	addi	a4,a4,1
1c019e5c:	c7a726b3          	p.insert	a3,a4,3,26
1c019e60:	00d66e23          	p.sw	a3,t3(a2)
1c019e64:	979a                	add	a5,a5,t1
1c019e66:	4705                	li	a4,1
1c019e68:	00e78623          	sb	a4,12(a5)
1c019e6c:	8082                	ret

1c019e6e <pos_fll_constructor>:
1c019e6e:	00400793          	li	a5,4
1c019e72:	0007a023          	sw	zero,0(a5)
1c019e76:	0007a223          	sw	zero,4(a5)
1c019e7a:	0007a423          	sw	zero,8(a5)
1c019e7e:	00079623          	sh	zero,12(a5)
1c019e82:	00078723          	sb	zero,14(a5)
1c019e86:	8082                	ret

1c019e88 <pos_soc_init>:
1c019e88:	1141                	addi	sp,sp,-16
1c019e8a:	c606                	sw	ra,12(sp)
1c019e8c:	c422                	sw	s0,8(sp)
1c019e8e:	37c5                	jal	1c019e6e <pos_fll_constructor>
1c019e90:	4501                	li	a0,0
1c019e92:	3721                	jal	1c019d9a <pos_fll_init>
1c019e94:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c019e98:	4505                	li	a0,1
1c019e9a:	3701                	jal	1c019d9a <pos_fll_init>
1c019e9c:	01400413          	li	s0,20
1c019ea0:	c408                	sw	a0,8(s0)
1c019ea2:	4509                	li	a0,2
1c019ea4:	3ddd                	jal	1c019d9a <pos_fll_init>
1c019ea6:	c048                	sw	a0,4(s0)
1c019ea8:	40b2                	lw	ra,12(sp)
1c019eaa:	4422                	lw	s0,8(sp)
1c019eac:	0141                	addi	sp,sp,16
1c019eae:	8082                	ret

1c019eb0 <strchr>:
1c019eb0:	00054783          	lbu	a5,0(a0)
1c019eb4:	0ff5f593          	andi	a1,a1,255
1c019eb8:	00b78c63          	beq	a5,a1,1c019ed0 <strchr+0x20>
1c019ebc:	cb99                	beqz	a5,1c019ed2 <strchr+0x22>
1c019ebe:	00150793          	addi	a5,a0,1
1c019ec2:	a011                	j	1c019ec6 <strchr+0x16>
1c019ec4:	c719                	beqz	a4,1c019ed2 <strchr+0x22>
1c019ec6:	853e                	mv	a0,a5
1c019ec8:	0017c70b          	p.lbu	a4,1(a5!)
1c019ecc:	feb71ce3          	bne	a4,a1,1c019ec4 <strchr+0x14>
1c019ed0:	8082                	ret
1c019ed2:	0015b593          	seqz	a1,a1
1c019ed6:	40b005b3          	neg	a1,a1
1c019eda:	8d6d                	and	a0,a0,a1
1c019edc:	8082                	ret

1c019ede <pos_libc_fputc_locked>:
1c019ede:	f14027f3          	csrr	a5,mhartid
1c019ee2:	1a10f6b7          	lui	a3,0x1a10f
1c019ee6:	ca5797b3          	p.extractu	a5,a5,5,5
1c019eea:	f1402773          	csrr	a4,mhartid
1c019eee:	079e                	slli	a5,a5,0x7
1c019ef0:	070e                	slli	a4,a4,0x3
1c019ef2:	0ff57513          	andi	a0,a0,255
1c019ef6:	ee873733          	p.bclr	a4,a4,23,8
1c019efa:	97b6                	add	a5,a5,a3
1c019efc:	00a767a3          	p.sw	a0,a5(a4)
1c019f00:	4501                	li	a0,0
1c019f02:	8082                	ret

1c019f04 <pos_libc_prf_locked>:
1c019f04:	a095                	j	1c019f68 <pos_libc_prf>

1c019f06 <exit>:
1c019f06:	1141                	addi	sp,sp,-16
1c019f08:	c422                	sw	s0,8(sp)
1c019f0a:	c606                	sw	ra,12(sp)
1c019f0c:	842a                	mv	s0,a0
1c019f0e:	43d010ef          	jal	ra,1c01bb4a <pos_init_stop>
1c019f12:	c1f44533          	p.bset	a0,s0,0,31
1c019f16:	1a1047b7          	lui	a5,0x1a104
1c019f1a:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c019f1e:	1a10a7b7          	lui	a5,0x1a10a
1c019f22:	577d                	li	a4,-1
1c019f24:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c019f28:	10500073          	wfi
1c019f2c:	10500073          	wfi
1c019f30:	bfe5                	j	1c019f28 <exit+0x22>

1c019f32 <pos_io_start>:
1c019f32:	4501                	li	a0,0
1c019f34:	8082                	ret

1c019f36 <pos_io_stop>:
1c019f36:	4501                	li	a0,0
1c019f38:	8082                	ret

1c019f3a <printf>:
1c019f3a:	7139                	addi	sp,sp,-64
1c019f3c:	02410313          	addi	t1,sp,36
1c019f40:	d432                	sw	a2,40(sp)
1c019f42:	862a                	mv	a2,a0
1c019f44:	1c01a537          	lui	a0,0x1c01a
1c019f48:	d22e                	sw	a1,36(sp)
1c019f4a:	d636                	sw	a3,44(sp)
1c019f4c:	4589                	li	a1,2
1c019f4e:	869a                	mv	a3,t1
1c019f50:	ede50513          	addi	a0,a0,-290 # 1c019ede <pos_libc_fputc_locked>
1c019f54:	ce06                	sw	ra,28(sp)
1c019f56:	d83a                	sw	a4,48(sp)
1c019f58:	da3e                	sw	a5,52(sp)
1c019f5a:	dc42                	sw	a6,56(sp)
1c019f5c:	de46                	sw	a7,60(sp)
1c019f5e:	c61a                	sw	t1,12(sp)
1c019f60:	3755                	jal	1c019f04 <pos_libc_prf_locked>
1c019f62:	40f2                	lw	ra,28(sp)
1c019f64:	6121                	addi	sp,sp,64
1c019f66:	8082                	ret

1c019f68 <pos_libc_prf>:
1c019f68:	7119                	addi	sp,sp,-128
1c019f6a:	dca2                	sw	s0,120(sp)
1c019f6c:	1058                	addi	a4,sp,36
1c019f6e:	4401                	li	s0,0
1c019f70:	d6ce                	sw	s3,108(sp)
1c019f72:	d4d2                	sw	s4,104(sp)
1c019f74:	d2d6                	sw	s5,100(sp)
1c019f76:	cede                	sw	s7,92(sp)
1c019f78:	cce2                	sw	s8,88(sp)
1c019f7a:	c8ea                	sw	s10,80(sp)
1c019f7c:	de86                	sw	ra,124(sp)
1c019f7e:	daa6                	sw	s1,116(sp)
1c019f80:	d8ca                	sw	s2,112(sp)
1c019f82:	d0da                	sw	s6,96(sp)
1c019f84:	cae6                	sw	s9,84(sp)
1c019f86:	c6ee                	sw	s11,76(sp)
1c019f88:	89aa                	mv	s3,a0
1c019f8a:	8bae                	mv	s7,a1
1c019f8c:	8d32                	mv	s10,a2
1c019f8e:	8a36                	mv	s4,a3
1c019f90:	1c001c37          	lui	s8,0x1c001
1c019f94:	c03a                	sw	a4,0(sp)
1c019f96:	8aa2                	mv	s5,s0
1c019f98:	a039                	j	1c019fa6 <pos_libc_prf+0x3e>
1c019f9a:	85de                	mv	a1,s7
1c019f9c:	9982                	jalr	s3
1c019f9e:	15f52063          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c019fa2:	0a85                	addi	s5,s5,1
1c019fa4:	8d22                	mv	s10,s0
1c019fa6:	000d4503          	lbu	a0,0(s10)
1c019faa:	001d0413          	addi	s0,s10,1
1c019fae:	c979                	beqz	a0,1c01a084 <pos_libc_prf+0x11c>
1c019fb0:	02500793          	li	a5,37
1c019fb4:	fef513e3          	bne	a0,a5,1c019f9a <pos_libc_prf+0x32>
1c019fb8:	ca02                	sw	zero,20(sp)
1c019fba:	c802                	sw	zero,16(sp)
1c019fbc:	c602                	sw	zero,12(sp)
1c019fbe:	c402                	sw	zero,8(sp)
1c019fc0:	c202                	sw	zero,4(sp)
1c019fc2:	02300493          	li	s1,35
1c019fc6:	02d00b13          	li	s6,45
1c019fca:	00044c83          	lbu	s9,0(s0)
1c019fce:	00140913          	addi	s2,s0,1
1c019fd2:	85e6                	mv	a1,s9
1c019fd4:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c019fd8:	8d4a                	mv	s10,s2
1c019fda:	8de6                	mv	s11,s9
1c019fdc:	3dd1                	jal	1c019eb0 <strchr>
1c019fde:	c91d                	beqz	a0,1c01a014 <pos_libc_prf+0xac>
1c019fe0:	109c8963          	beq	s9,s1,1c01a0f2 <pos_libc_prf+0x18a>
1c019fe4:	0194fe63          	bleu	s9,s1,1c01a000 <pos_libc_prf+0x98>
1c019fe8:	116c8163          	beq	s9,s6,1c01a0ea <pos_libc_prf+0x182>
1c019fec:	03000713          	li	a4,48
1c019ff0:	0eec8963          	beq	s9,a4,1c01a0e2 <pos_libc_prf+0x17a>
1c019ff4:	02b00793          	li	a5,43
1c019ff8:	0afc8763          	beq	s9,a5,1c01a0a6 <pos_libc_prf+0x13e>
1c019ffc:	844a                	mv	s0,s2
1c019ffe:	b7f1                	j	1c019fca <pos_libc_prf+0x62>
1c01a000:	080c8263          	beqz	s9,1c01a084 <pos_libc_prf+0x11c>
1c01a004:	02000793          	li	a5,32
1c01a008:	fefc9ae3          	bne	s9,a5,1c019ffc <pos_libc_prf+0x94>
1c01a00c:	4785                	li	a5,1
1c01a00e:	c83e                	sw	a5,16(sp)
1c01a010:	844a                	mv	s0,s2
1c01a012:	bf65                	j	1c019fca <pos_libc_prf+0x62>
1c01a014:	02a00693          	li	a3,42
1c01a018:	2edc8263          	beq	s9,a3,1c01a2fc <pos_libc_prf+0x394>
1c01a01c:	fd0c8693          	addi	a3,s9,-48
1c01a020:	45a5                	li	a1,9
1c01a022:	4b01                	li	s6,0
1c01a024:	0cd5fd63          	bleu	a3,a1,1c01a0fe <pos_libc_prf+0x196>
1c01a028:	02e00793          	li	a5,46
1c01a02c:	28fd8663          	beq	s11,a5,1c01a2b8 <pos_libc_prf+0x350>
1c01a030:	846e                	mv	s0,s11
1c01a032:	54fd                	li	s1,-1
1c01a034:	1c001737          	lui	a4,0x1c001
1c01a038:	85ee                	mv	a1,s11
1c01a03a:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c01a03e:	3d8d                	jal	1c019eb0 <strchr>
1c01a040:	4781                	li	a5,0
1c01a042:	cd19                	beqz	a0,1c01a060 <pos_libc_prf+0xf8>
1c01a044:	06c00793          	li	a5,108
1c01a048:	001d0693          	addi	a3,s10,1
1c01a04c:	000d4d83          	lbu	s11,0(s10)
1c01a050:	3af40563          	beq	s0,a5,1c01a3fa <pos_libc_prf+0x492>
1c01a054:	06800793          	li	a5,104
1c01a058:	3af40563          	beq	s0,a5,1c01a402 <pos_libc_prf+0x49a>
1c01a05c:	8d36                	mv	s10,a3
1c01a05e:	87a2                	mv	a5,s0
1c01a060:	06700693          	li	a3,103
1c01a064:	0bb6ee63          	bltu	a3,s11,1c01a120 <pos_libc_prf+0x1b8>
1c01a068:	06500693          	li	a3,101
1c01a06c:	3addf2e3          	bleu	a3,s11,1c01ac10 <pos_libc_prf+0xca8>
1c01a070:	04700693          	li	a3,71
1c01a074:	39b6ed63          	bltu	a3,s11,1c01a40e <pos_libc_prf+0x4a6>
1c01a078:	04500793          	li	a5,69
1c01a07c:	38fdfae3          	bleu	a5,s11,1c01ac10 <pos_libc_prf+0xca8>
1c01a080:	2e0d9863          	bnez	s11,1c01a370 <pos_libc_prf+0x408>
1c01a084:	8456                	mv	s0,s5
1c01a086:	8522                	mv	a0,s0
1c01a088:	50f6                	lw	ra,124(sp)
1c01a08a:	5466                	lw	s0,120(sp)
1c01a08c:	54d6                	lw	s1,116(sp)
1c01a08e:	5946                	lw	s2,112(sp)
1c01a090:	59b6                	lw	s3,108(sp)
1c01a092:	5a26                	lw	s4,104(sp)
1c01a094:	5a96                	lw	s5,100(sp)
1c01a096:	5b06                	lw	s6,96(sp)
1c01a098:	4bf6                	lw	s7,92(sp)
1c01a09a:	4c66                	lw	s8,88(sp)
1c01a09c:	4cd6                	lw	s9,84(sp)
1c01a09e:	4d46                	lw	s10,80(sp)
1c01a0a0:	4db6                	lw	s11,76(sp)
1c01a0a2:	6109                	addi	sp,sp,128
1c01a0a4:	8082                	ret
1c01a0a6:	4705                	li	a4,1
1c01a0a8:	c63a                	sw	a4,12(sp)
1c01a0aa:	844a                	mv	s0,s2
1c01a0ac:	bf39                	j	1c019fca <pos_libc_prf+0x62>
1c01a0ae:	00044503          	lbu	a0,0(s0)
1c01a0b2:	47a5                	li	a5,9
1c01a0b4:	fd050693          	addi	a3,a0,-48
1c01a0b8:	72d7e9e3          	bltu	a5,a3,1c01afea <pos_libc_prf+0x1082>
1c01a0bc:	00140793          	addi	a5,s0,1
1c01a0c0:	8dbe                	mv	s11,a5
1c01a0c2:	a809                	j	1c01a0d4 <pos_libc_prf+0x16c>
1c01a0c4:	001dc50b          	p.lbu	a0,1(s11!)
1c01a0c8:	4725                	li	a4,9
1c01a0ca:	fd050793          	addi	a5,a0,-48
1c01a0ce:	197d                	addi	s2,s2,-1
1c01a0d0:	70f76ee3          	bltu	a4,a5,1c01afec <pos_libc_prf+0x1084>
1c01a0d4:	85de                	mv	a1,s7
1c01a0d6:	846e                	mv	s0,s11
1c01a0d8:	9982                	jalr	s3
1c01a0da:	fff535e3          	p.bneimm	a0,-1,1c01a0c4 <pos_libc_prf+0x15c>
1c01a0de:	547d                	li	s0,-1
1c01a0e0:	b75d                	j	1c01a086 <pos_libc_prf+0x11e>
1c01a0e2:	4785                	li	a5,1
1c01a0e4:	ca3e                	sw	a5,20(sp)
1c01a0e6:	844a                	mv	s0,s2
1c01a0e8:	b5cd                	j	1c019fca <pos_libc_prf+0x62>
1c01a0ea:	4705                	li	a4,1
1c01a0ec:	c43a                	sw	a4,8(sp)
1c01a0ee:	844a                	mv	s0,s2
1c01a0f0:	bde9                	j	1c019fca <pos_libc_prf+0x62>
1c01a0f2:	4705                	li	a4,1
1c01a0f4:	c23a                	sw	a4,4(sp)
1c01a0f6:	844a                	mv	s0,s2
1c01a0f8:	bdc9                	j	1c019fca <pos_libc_prf+0x62>
1c01a0fa:	844a                	mv	s0,s2
1c01a0fc:	0905                	addi	s2,s2,1
1c01a0fe:	002b1793          	slli	a5,s6,0x2
1c01a102:	00094d83          	lbu	s11,0(s2)
1c01a106:	97da                	add	a5,a5,s6
1c01a108:	0786                	slli	a5,a5,0x1
1c01a10a:	97e6                	add	a5,a5,s9
1c01a10c:	fd0d8713          	addi	a4,s11,-48
1c01a110:	fd078b13          	addi	s6,a5,-48
1c01a114:	8cee                	mv	s9,s11
1c01a116:	fee5f2e3          	bleu	a4,a1,1c01a0fa <pos_libc_prf+0x192>
1c01a11a:	00240d13          	addi	s10,s0,2
1c01a11e:	b729                	j	1c01a028 <pos_libc_prf+0xc0>
1c01a120:	07000693          	li	a3,112
1c01a124:	24dd85e3          	beq	s11,a3,1c01ab6e <pos_libc_prf+0xc06>
1c01a128:	1fb6e463          	bltu	a3,s11,1c01a310 <pos_libc_prf+0x3a8>
1c01a12c:	06e00693          	li	a3,110
1c01a130:	20dd8ae3          	beq	s11,a3,1c01ab44 <pos_libc_prf+0xbdc>
1c01a134:	2fb6e763          	bltu	a3,s11,1c01a422 <pos_libc_prf+0x4ba>
1c01a138:	06900693          	li	a3,105
1c01a13c:	2add9ce3          	bne	s11,a3,1c01abf4 <pos_libc_prf+0xc8c>
1c01a140:	06c00693          	li	a3,108
1c01a144:	00d78a63          	beq	a5,a3,1c01a158 <pos_libc_prf+0x1f0>
1c01a148:	07a00693          	li	a3,122
1c01a14c:	00d78663          	beq	a5,a3,1c01a158 <pos_libc_prf+0x1f0>
1c01a150:	04c00693          	li	a3,76
1c01a154:	5ed78de3          	beq	a5,a3,1c01af4e <pos_libc_prf+0xfe6>
1c01a158:	000a2783          	lw	a5,0(s4)
1c01a15c:	0a11                	addi	s4,s4,4
1c01a15e:	41f7d713          	srai	a4,a5,0x1f
1c01a162:	ce52                	sw	s4,28(sp)
1c01a164:	c23a                	sw	a4,4(sp)
1c01a166:	4e0741e3          	bltz	a4,1c01ae48 <pos_libc_prf+0xee0>
1c01a16a:	4732                	lw	a4,12(sp)
1c01a16c:	440709e3          	beqz	a4,1c01adbe <pos_libc_prf+0xe56>
1c01a170:	02b00693          	li	a3,43
1c01a174:	4c92                	lw	s9,4(sp)
1c01a176:	02d10223          	sb	a3,36(sp)
1c01a17a:	02510a13          	addi	s4,sp,37
1c01a17e:	843e                	mv	s0,a5
1c01a180:	8dd2                	mv	s11,s4
1c01a182:	a011                	j	1c01a186 <pos_libc_prf+0x21e>
1c01a184:	8dca                	mv	s11,s2
1c01a186:	4629                	li	a2,10
1c01a188:	4681                	li	a3,0
1c01a18a:	8522                	mv	a0,s0
1c01a18c:	85e6                	mv	a1,s9
1c01a18e:	d4aff0ef          	jal	ra,1c0196d8 <__umoddi3>
1c01a192:	892a                	mv	s2,a0
1c01a194:	85e6                	mv	a1,s9
1c01a196:	8522                	mv	a0,s0
1c01a198:	4629                	li	a2,10
1c01a19a:	4681                	li	a3,0
1c01a19c:	a00ff0ef          	jal	ra,1c01939c <__udivdi3>
1c01a1a0:	03090913          	addi	s2,s2,48
1c01a1a4:	012d8023          	sb	s2,0(s11)
1c01a1a8:	00a5e7b3          	or	a5,a1,a0
1c01a1ac:	001d8913          	addi	s2,s11,1
1c01a1b0:	842a                	mv	s0,a0
1c01a1b2:	8cae                	mv	s9,a1
1c01a1b4:	fbe1                	bnez	a5,1c01a184 <pos_libc_prf+0x21c>
1c01a1b6:	00090023          	sb	zero,0(s2)
1c01a1ba:	01ba7d63          	bleu	s11,s4,1c01a1d4 <pos_libc_prf+0x26c>
1c01a1be:	87ee                	mv	a5,s11
1c01a1c0:	000a4683          	lbu	a3,0(s4)
1c01a1c4:	0007c703          	lbu	a4,0(a5)
1c01a1c8:	fed78fab          	p.sb	a3,-1(a5!)
1c01a1cc:	00ea00ab          	p.sb	a4,1(s4!)
1c01a1d0:	fefa68e3          	bltu	s4,a5,1c01a1c0 <pos_libc_prf+0x258>
1c01a1d4:	4782                	lw	a5,0(sp)
1c01a1d6:	4732                	lw	a4,12(sp)
1c01a1d8:	40f90933          	sub	s2,s2,a5
1c01a1dc:	3c071de3          	bnez	a4,1c01adb6 <pos_libc_prf+0xe4e>
1c01a1e0:	47c2                	lw	a5,16(sp)
1c01a1e2:	3c079ae3          	bnez	a5,1c01adb6 <pos_libc_prf+0xe4e>
1c01a1e6:	4712                	lw	a4,4(sp)
1c01a1e8:	837d                	srli	a4,a4,0x1f
1c01a1ea:	c23a                	sw	a4,4(sp)
1c01a1ec:	3404c463          	bltz	s1,1c01a534 <pos_libc_prf+0x5cc>
1c01a1f0:	4712                	lw	a4,4(sp)
1c01a1f2:	412484b3          	sub	s1,s1,s2
1c01a1f6:	94ba                	add	s1,s1,a4
1c01a1f8:	0404e4b3          	p.max	s1,s1,zero
1c01a1fc:	009907b3          	add	a5,s2,s1
1c01a200:	40fb0b33          	sub	s6,s6,a5
1c01a204:	1040                	addi	s0,sp,36
1c01a206:	4c81                	li	s9,0
1c01a208:	cc02                	sw	zero,24(sp)
1c01a20a:	4a01                	li	s4,0
1c01a20c:	4722                	lw	a4,8(sp)
1c01a20e:	e305                	bnez	a4,1c01a22e <pos_libc_prf+0x2c6>
1c01a210:	01605f63          	blez	s6,1c01a22e <pos_libc_prf+0x2c6>
1c01a214:	fffb0d93          	addi	s11,s6,-1
1c01a218:	85de                	mv	a1,s7
1c01a21a:	02000513          	li	a0,32
1c01a21e:	9982                	jalr	s3
1c01a220:	1dfd                	addi	s11,s11,-1
1c01a222:	ebf52ee3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a226:	fffdb9e3          	p.bneimm	s11,-1,1c01a218 <pos_libc_prf+0x2b0>
1c01a22a:	9ada                	add	s5,s5,s6
1c01a22c:	5b7d                	li	s6,-1
1c01a22e:	4792                	lw	a5,4(sp)
1c01a230:	00f40db3          	add	s11,s0,a5
1c01a234:	a031                	j	1c01a240 <pos_libc_prf+0x2d8>
1c01a236:	0014450b          	p.lbu	a0,1(s0!)
1c01a23a:	9982                	jalr	s3
1c01a23c:	ebf521e3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a240:	85de                	mv	a1,s7
1c01a242:	ffb41ae3          	bne	s0,s11,1c01a236 <pos_libc_prf+0x2ce>
1c01a246:	8da6                	mv	s11,s1
1c01a248:	a021                	j	1c01a250 <pos_libc_prf+0x2e8>
1c01a24a:	9982                	jalr	s3
1c01a24c:	e9f529e3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a250:	1dfd                	addi	s11,s11,-1
1c01a252:	85de                	mv	a1,s7
1c01a254:	03000513          	li	a0,48
1c01a258:	fffdb9e3          	p.bneimm	s11,-1,1c01a24a <pos_libc_prf+0x2e2>
1c01a25c:	4712                	lw	a4,4(sp)
1c01a25e:	40e90933          	sub	s2,s2,a4
1c01a262:	c44a                	sw	s2,8(sp)
1c01a264:	e40a15e3          	bnez	s4,1c01a0ae <pos_libc_prf+0x146>
1c01a268:	47e2                	lw	a5,24(sp)
1c01a26a:	16079763          	bnez	a5,1c01a3d8 <pos_libc_prf+0x470>
1c01a26e:	120c8863          	beqz	s9,1c01a39e <pos_libc_prf+0x436>
1c01a272:	00044783          	lbu	a5,0(s0)
1c01a276:	4a25                	li	s4,9
1c01a278:	02e00d93          	li	s11,46
1c01a27c:	a801                	j	1c01a28c <pos_libc_prf+0x324>
1c01a27e:	0405                	addi	s0,s0,1
1c01a280:	9982                	jalr	s3
1c01a282:	e5f52ee3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a286:	00044783          	lbu	a5,0(s0)
1c01a28a:	197d                	addi	s2,s2,-1
1c01a28c:	fd078713          	addi	a4,a5,-48
1c01a290:	853e                	mv	a0,a5
1c01a292:	85de                	mv	a1,s7
1c01a294:	feea75e3          	bleu	a4,s4,1c01a27e <pos_libc_prf+0x316>
1c01a298:	ffb783e3          	beq	a5,s11,1c01a27e <pos_libc_prf+0x316>
1c01a29c:	8a66                	mv	s4,s9
1c01a29e:	85de                	mv	a1,s7
1c01a2a0:	03000513          	li	a0,48
1c01a2a4:	01404463          	bgtz	s4,1c01a2ac <pos_libc_prf+0x344>
1c01a2a8:	0010106f          	j	1c01baa8 <pos_libc_prf+0x1b40>
1c01a2ac:	9982                	jalr	s3
1c01a2ae:	1a7d                	addi	s4,s4,-1
1c01a2b0:	fff537e3          	p.bneimm	a0,-1,1c01a29e <pos_libc_prf+0x336>
1c01a2b4:	547d                	li	s0,-1
1c01a2b6:	bbc1                	j	1c01a086 <pos_libc_prf+0x11e>
1c01a2b8:	000d4d83          	lbu	s11,0(s10)
1c01a2bc:	02a00793          	li	a5,42
1c01a2c0:	001d0513          	addi	a0,s10,1
1c01a2c4:	08fd8e63          	beq	s11,a5,1c01a360 <pos_libc_prf+0x3f8>
1c01a2c8:	fd0d8793          	addi	a5,s11,-48
1c01a2cc:	4825                	li	a6,9
1c01a2ce:	846e                	mv	s0,s11
1c01a2d0:	86aa                	mv	a3,a0
1c01a2d2:	4481                	li	s1,0
1c01a2d4:	45a5                	li	a1,9
1c01a2d6:	8d2a                	mv	s10,a0
1c01a2d8:	d4f86ee3          	bltu	a6,a5,1c01a034 <pos_libc_prf+0xcc>
1c01a2dc:	00249793          	slli	a5,s1,0x2
1c01a2e0:	97a6                	add	a5,a5,s1
1c01a2e2:	0786                	slli	a5,a5,0x1
1c01a2e4:	97ee                	add	a5,a5,s11
1c01a2e6:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c01a2ea:	fd078493          	addi	s1,a5,-48
1c01a2ee:	fd0d8793          	addi	a5,s11,-48
1c01a2f2:	846e                	mv	s0,s11
1c01a2f4:	fef5f4e3          	bleu	a5,a1,1c01a2dc <pos_libc_prf+0x374>
1c01a2f8:	8d36                	mv	s10,a3
1c01a2fa:	bb2d                	j	1c01a034 <pos_libc_prf+0xcc>
1c01a2fc:	000a2b03          	lw	s6,0(s4)
1c01a300:	0a11                	addi	s4,s4,4
1c01a302:	080b4363          	bltz	s6,1c01a388 <pos_libc_prf+0x420>
1c01a306:	00094d83          	lbu	s11,0(s2)
1c01a30a:	00240d13          	addi	s10,s0,2
1c01a30e:	bb29                	j	1c01a028 <pos_libc_prf+0xc0>
1c01a310:	07500693          	li	a3,117
1c01a314:	10dd8763          	beq	s11,a3,1c01a422 <pos_libc_prf+0x4ba>
1c01a318:	07800693          	li	a3,120
1c01a31c:	10dd8363          	beq	s11,a3,1c01a422 <pos_libc_prf+0x4ba>
1c01a320:	07300793          	li	a5,115
1c01a324:	0cfd98e3          	bne	s11,a5,1c01abf4 <pos_libc_prf+0xc8c>
1c01a328:	004a0713          	addi	a4,s4,4
1c01a32c:	ce3a                	sw	a4,28(sp)
1c01a32e:	000a2403          	lw	s0,0(s4)
1c01a332:	3c04c2e3          	bltz	s1,1c01aef6 <pos_libc_prf+0xf8e>
1c01a336:	460481e3          	beqz	s1,1c01af98 <pos_libc_prf+0x1030>
1c01a33a:	00044783          	lbu	a5,0(s0)
1c01a33e:	44078ce3          	beqz	a5,1c01af96 <pos_libc_prf+0x102e>
1c01a342:	00140793          	addi	a5,s0,1
1c01a346:	4901                	li	s2,0
1c01a348:	a021                	j	1c01a350 <pos_libc_prf+0x3e8>
1c01a34a:	0017c70b          	p.lbu	a4,1(a5!)
1c01a34e:	c701                	beqz	a4,1c01a356 <pos_libc_prf+0x3ee>
1c01a350:	0905                	addi	s2,s2,1
1c01a352:	fe994ce3          	blt	s2,s1,1c01a34a <pos_libc_prf+0x3e2>
1c01a356:	412b0b33          	sub	s6,s6,s2
1c01a35a:	4481                	li	s1,0
1c01a35c:	c202                	sw	zero,4(sp)
1c01a35e:	b565                	j	1c01a206 <pos_libc_prf+0x29e>
1c01a360:	001d4d83          	lbu	s11,1(s10)
1c01a364:	000a2483          	lw	s1,0(s4)
1c01a368:	846e                	mv	s0,s11
1c01a36a:	0d09                	addi	s10,s10,2
1c01a36c:	0a11                	addi	s4,s4,4
1c01a36e:	b1d9                	j	1c01a034 <pos_libc_prf+0xcc>
1c01a370:	02500793          	li	a5,37
1c01a374:	08fd90e3          	bne	s11,a5,1c01abf4 <pos_libc_prf+0xc8c>
1c01a378:	85de                	mv	a1,s7
1c01a37a:	02500513          	li	a0,37
1c01a37e:	9982                	jalr	s3
1c01a380:	d5f52fe3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a384:	0a85                	addi	s5,s5,1
1c01a386:	b105                	j	1c019fa6 <pos_libc_prf+0x3e>
1c01a388:	4785                	li	a5,1
1c01a38a:	41600b33          	neg	s6,s6
1c01a38e:	c43e                	sw	a5,8(sp)
1c01a390:	bf9d                	j	1c01a306 <pos_libc_prf+0x39e>
1c01a392:	0014450b          	p.lbu	a0,1(s0!)
1c01a396:	197d                	addi	s2,s2,-1
1c01a398:	9982                	jalr	s3
1c01a39a:	d5f522e3          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01a39e:	85de                	mv	a1,s7
1c01a3a0:	ff2049e3          	bgtz	s2,1c01a392 <pos_libc_prf+0x42a>
1c01a3a4:	4792                	lw	a5,4(sp)
1c01a3a6:	4a72                	lw	s4,28(sp)
1c01a3a8:	00fa8733          	add	a4,s5,a5
1c01a3ac:	47a2                	lw	a5,8(sp)
1c01a3ae:	9726                	add	a4,a4,s1
1c01a3b0:	00e78ab3          	add	s5,a5,a4
1c01a3b4:	bf6059e3          	blez	s6,1c019fa6 <pos_libc_prf+0x3e>
1c01a3b8:	9ada                	add	s5,s5,s6
1c01a3ba:	1b7d                	addi	s6,s6,-1
1c01a3bc:	a029                	j	1c01a3c6 <pos_libc_prf+0x45e>
1c01a3be:	01fb3463          	p.bneimm	s6,-1,1c01a3c6 <pos_libc_prf+0x45e>
1c01a3c2:	5fe0106f          	j	1c01b9c0 <pos_libc_prf+0x1a58>
1c01a3c6:	85de                	mv	a1,s7
1c01a3c8:	02000513          	li	a0,32
1c01a3cc:	9982                	jalr	s3
1c01a3ce:	1b7d                	addi	s6,s6,-1
1c01a3d0:	fff537e3          	p.bneimm	a0,-1,1c01a3be <pos_libc_prf+0x456>
1c01a3d4:	547d                	li	s0,-1
1c01a3d6:	b945                	j	1c01a086 <pos_libc_prf+0x11e>
1c01a3d8:	02e00a13          	li	s4,46
1c01a3dc:	a031                	j	1c01a3e8 <pos_libc_prf+0x480>
1c01a3de:	197d                	addi	s2,s2,-1
1c01a3e0:	014d9463          	bne	s11,s4,1c01a3e8 <pos_libc_prf+0x480>
1c01a3e4:	5320106f          	j	1c01b916 <pos_libc_prf+0x19ae>
1c01a3e8:	00144d8b          	p.lbu	s11,1(s0!)
1c01a3ec:	85de                	mv	a1,s7
1c01a3ee:	856e                	mv	a0,s11
1c01a3f0:	9982                	jalr	s3
1c01a3f2:	fff536e3          	p.bneimm	a0,-1,1c01a3de <pos_libc_prf+0x476>
1c01a3f6:	547d                	li	s0,-1
1c01a3f8:	b179                	j	1c01a086 <pos_libc_prf+0x11e>
1c01a3fa:	188d83e3          	beq	s11,s0,1c01ad80 <pos_libc_prf+0xe18>
1c01a3fe:	8d36                	mv	s10,a3
1c01a400:	b185                	j	1c01a060 <pos_libc_prf+0xf8>
1c01a402:	188d86e3          	beq	s11,s0,1c01ad8e <pos_libc_prf+0xe26>
1c01a406:	8d36                	mv	s10,a3
1c01a408:	06800793          	li	a5,104
1c01a40c:	b991                	j	1c01a060 <pos_libc_prf+0xf8>
1c01a40e:	06300693          	li	a3,99
1c01a412:	70dd8c63          	beq	s11,a3,1c01ab2a <pos_libc_prf+0xbc2>
1c01a416:	d3b6e5e3          	bltu	a3,s11,1c01a140 <pos_libc_prf+0x1d8>
1c01a41a:	05800693          	li	a3,88
1c01a41e:	7cdd9b63          	bne	s11,a3,1c01abf4 <pos_libc_prf+0xc8c>
1c01a422:	06c00693          	li	a3,108
1c01a426:	18d780e3          	beq	a5,a3,1c01ada6 <pos_libc_prf+0xe3e>
1c01a42a:	07a00693          	li	a3,122
1c01a42e:	16d78ce3          	beq	a5,a3,1c01ada6 <pos_libc_prf+0xe3e>
1c01a432:	04c00693          	li	a3,76
1c01a436:	2cd78ee3          	beq	a5,a3,1c01af12 <pos_libc_prf+0xfaa>
1c01a43a:	000a2403          	lw	s0,0(s4)
1c01a43e:	0a11                	addi	s4,s4,4
1c01a440:	ce52                	sw	s4,28(sp)
1c01a442:	4c81                	li	s9,0
1c01a444:	06f00793          	li	a5,111
1c01a448:	3cfd81e3          	beq	s11,a5,1c01b00a <pos_libc_prf+0x10a2>
1c01a44c:	07500793          	li	a5,117
1c01a450:	02410a13          	addi	s4,sp,36
1c01a454:	04fd8763          	beq	s11,a5,1c01a4a2 <pos_libc_prf+0x53a>
1c01a458:	4712                	lw	a4,4(sp)
1c01a45a:	2a0708e3          	beqz	a4,1c01af0a <pos_libc_prf+0xfa2>
1c01a45e:	77e1                	lui	a5,0xffff8
1c01a460:	8307c793          	xori	a5,a5,-2000
1c01a464:	02f11223          	sh	a5,36(sp)
1c01a468:	4909                	li	s2,2
1c01a46a:	02610693          	addi	a3,sp,38
1c01a46e:	87b6                	mv	a5,a3
1c01a470:	4e25                	li	t3,9
1c01a472:	f6443733          	p.bclr	a4,s0,27,4
1c01a476:	01cc9613          	slli	a2,s9,0x1c
1c01a47a:	8011                	srli	s0,s0,0x4
1c01a47c:	8c51                	or	s0,s0,a2
1c01a47e:	004cdc93          	srli	s9,s9,0x4
1c01a482:	05770813          	addi	a6,a4,87
1c01a486:	03070593          	addi	a1,a4,48
1c01a48a:	01946533          	or	a0,s0,s9
1c01a48e:	06ee7663          	bleu	a4,t3,1c01a4fa <pos_libc_prf+0x592>
1c01a492:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c01a496:	00178593          	addi	a1,a5,1
1c01a49a:	c52d                	beqz	a0,1c01a504 <pos_libc_prf+0x59c>
1c01a49c:	87ae                	mv	a5,a1
1c01a49e:	bfd1                	j	1c01a472 <pos_libc_prf+0x50a>
1c01a4a0:	8a4a                	mv	s4,s2
1c01a4a2:	4629                	li	a2,10
1c01a4a4:	4681                	li	a3,0
1c01a4a6:	8522                	mv	a0,s0
1c01a4a8:	85e6                	mv	a1,s9
1c01a4aa:	a2eff0ef          	jal	ra,1c0196d8 <__umoddi3>
1c01a4ae:	892a                	mv	s2,a0
1c01a4b0:	85e6                	mv	a1,s9
1c01a4b2:	8522                	mv	a0,s0
1c01a4b4:	4629                	li	a2,10
1c01a4b6:	4681                	li	a3,0
1c01a4b8:	ee5fe0ef          	jal	ra,1c01939c <__udivdi3>
1c01a4bc:	03090913          	addi	s2,s2,48
1c01a4c0:	012a0023          	sb	s2,0(s4)
1c01a4c4:	00a5e7b3          	or	a5,a1,a0
1c01a4c8:	001a0913          	addi	s2,s4,1
1c01a4cc:	842a                	mv	s0,a0
1c01a4ce:	8cae                	mv	s9,a1
1c01a4d0:	fbe1                	bnez	a5,1c01a4a0 <pos_libc_prf+0x538>
1c01a4d2:	4782                	lw	a5,0(sp)
1c01a4d4:	00090023          	sb	zero,0(s2)
1c01a4d8:	40f90933          	sub	s2,s2,a5
1c01a4dc:	0147fd63          	bleu	s4,a5,1c01a4f6 <pos_libc_prf+0x58e>
1c01a4e0:	105c                	addi	a5,sp,36
1c01a4e2:	0007c683          	lbu	a3,0(a5)
1c01a4e6:	000a4703          	lbu	a4,0(s4)
1c01a4ea:	feda0fab          	p.sb	a3,-1(s4!)
1c01a4ee:	00e780ab          	p.sb	a4,1(a5!)
1c01a4f2:	ff47e8e3          	bltu	a5,s4,1c01a4e2 <pos_libc_prf+0x57a>
1c01a4f6:	c202                	sw	zero,4(sp)
1c01a4f8:	b9d5                	j	1c01a1ec <pos_libc_prf+0x284>
1c01a4fa:	00b78023          	sb	a1,0(a5)
1c01a4fe:	00178593          	addi	a1,a5,1
1c01a502:	fd49                	bnez	a0,1c01a49c <pos_libc_prf+0x534>
1c01a504:	00058023          	sb	zero,0(a1)
1c01a508:	8d95                	sub	a1,a1,a3
1c01a50a:	00f6fc63          	bleu	a5,a3,1c01a522 <pos_libc_prf+0x5ba>
1c01a50e:	0006c603          	lbu	a2,0(a3)
1c01a512:	0007c703          	lbu	a4,0(a5)
1c01a516:	fec78fab          	p.sb	a2,-1(a5!)
1c01a51a:	00e680ab          	p.sb	a4,1(a3!)
1c01a51e:	fef6e8e3          	bltu	a3,a5,1c01a50e <pos_libc_prf+0x5a6>
1c01a522:	05800793          	li	a5,88
1c01a526:	28fd82e3          	beq	s11,a5,1c01afaa <pos_libc_prf+0x1042>
1c01a52a:	4712                	lw	a4,4(sp)
1c01a52c:	992e                	add	s2,s2,a1
1c01a52e:	0706                	slli	a4,a4,0x1
1c01a530:	c23a                	sw	a4,4(sp)
1c01a532:	b96d                	j	1c01a1ec <pos_libc_prf+0x284>
1c01a534:	4c81                	li	s9,0
1c01a536:	cc02                	sw	zero,24(sp)
1c01a538:	4a01                	li	s4,0
1c01a53a:	47d2                	lw	a5,20(sp)
1c01a53c:	5e078163          	beqz	a5,1c01ab1e <pos_libc_prf+0xbb6>
1c01a540:	412b04b3          	sub	s1,s6,s2
1c01a544:	0404e4b3          	p.max	s1,s1,zero
1c01a548:	009907b3          	add	a5,s2,s1
1c01a54c:	40fb0b33          	sub	s6,s6,a5
1c01a550:	1040                	addi	s0,sp,36
1c01a552:	b96d                	j	1c01a20c <pos_libc_prf+0x2a4>
1c01a554:	4881                	li	a7,0
1c01a556:	4801                	li	a6,0
1c01a558:	4581                	li	a1,0
1c01a55a:	4501                	li	a0,0
1c01a55c:	4f11                	li	t5,4
1c01a55e:	410f0f33          	sub	t5,t5,a6
1c01a562:	012f40fb          	lp.setup	x1,t5,1c01a586 <pos_libc_prf+0x61e>
1c01a566:	01f51713          	slli	a4,a0,0x1f
1c01a56a:	0015d793          	srli	a5,a1,0x1
1c01a56e:	8fd9                	or	a5,a5,a4
1c01a570:	fc15b5b3          	p.bclr	a1,a1,30,1
1c01a574:	00f58eb3          	add	t4,a1,a5
1c01a578:	8105                	srli	a0,a0,0x1
1c01a57a:	00beb5b3          	sltu	a1,t4,a1
1c01a57e:	00a587b3          	add	a5,a1,a0
1c01a582:	853e                	mv	a0,a5
1c01a584:	85f6                	mv	a1,t4
1c01a586:	0805                	addi	a6,a6,1
1c01a588:	0004d363          	bgez	s1,1c01a58e <pos_libc_prf+0x626>
1c01a58c:	4499                	li	s1,6
1c01a58e:	04700693          	li	a3,71
1c01a592:	0cde0be3          	beq	t3,a3,1c01ae68 <pos_libc_prf+0xf00>
1c01a596:	06600693          	li	a3,102
1c01a59a:	4f81                	li	t6,0
1c01a59c:	0edd84e3          	beq	s11,a3,1c01ae84 <pos_libc_prf+0xf1c>
1c01a5a0:	00148f13          	addi	t5,s1,1
1c01a5a4:	4741                	li	a4,16
1c01a5a6:	04ef4f33          	p.min	t5,t5,a4
1c01a5aa:	1f7d                	addi	t5,t5,-1
1c01a5ac:	4501                	li	a0,0
1c01a5ae:	080006b7          	lui	a3,0x8000
1c01a5b2:	4295                	li	t0,5
1c01a5b4:	0f05                	addi	t5,t5,1
1c01a5b6:	030f40fb          	lp.setup	x1,t5,1c01a616 <pos_libc_prf+0x6ae>
1c01a5ba:	00250613          	addi	a2,a0,2
1c01a5be:	00a63733          	sltu	a4,a2,a0
1c01a5c2:	9736                	add	a4,a4,a3
1c01a5c4:	02575533          	divu	a0,a4,t0
1c01a5c8:	00251693          	slli	a3,a0,0x2
1c01a5cc:	96aa                	add	a3,a3,a0
1c01a5ce:	8f15                	sub	a4,a4,a3
1c01a5d0:	0776                	slli	a4,a4,0x1d
1c01a5d2:	00365593          	srli	a1,a2,0x3
1c01a5d6:	8dd9                	or	a1,a1,a4
1c01a5d8:	0255d5b3          	divu	a1,a1,t0
1c01a5dc:	00359693          	slli	a3,a1,0x3
1c01a5e0:	00559713          	slli	a4,a1,0x5
1c01a5e4:	9736                	add	a4,a4,a3
1c01a5e6:	40e60733          	sub	a4,a2,a4
1c01a5ea:	02575733          	divu	a4,a4,t0
1c01a5ee:	81f5                	srli	a1,a1,0x1d
1c01a5f0:	00d70633          	add	a2,a4,a3
1c01a5f4:	95aa                	add	a1,a1,a0
1c01a5f6:	00e63733          	sltu	a4,a2,a4
1c01a5fa:	00b706b3          	add	a3,a4,a1
1c01a5fe:	01f69593          	slli	a1,a3,0x1f
1c01a602:	00165713          	srli	a4,a2,0x1
1c01a606:	8f4d                	or	a4,a4,a1
1c01a608:	fc163633          	p.bclr	a2,a2,30,1
1c01a60c:	00e60533          	add	a0,a2,a4
1c01a610:	8285                	srli	a3,a3,0x1
1c01a612:	00c53633          	sltu	a2,a0,a2
1c01a616:	96b2                	add	a3,a3,a2
1c01a618:	00ae85b3          	add	a1,t4,a0
1c01a61c:	96be                	add	a3,a3,a5
1c01a61e:	01d5beb3          	sltu	t4,a1,t4
1c01a622:	96f6                	add	a3,a3,t4
1c01a624:	f606b533          	p.bclr	a0,a3,27,0
1c01a628:	87ae                	mv	a5,a1
1c01a62a:	c125                	beqz	a0,1c01a68a <pos_libc_prf+0x722>
1c01a62c:	00258513          	addi	a0,a1,2
1c01a630:	00b537b3          	sltu	a5,a0,a1
1c01a634:	96be                	add	a3,a3,a5
1c01a636:	4e95                	li	t4,5
1c01a638:	03d6de33          	divu	t3,a3,t4
1c01a63c:	002e1793          	slli	a5,t3,0x2
1c01a640:	97f2                	add	a5,a5,t3
1c01a642:	8e9d                	sub	a3,a3,a5
1c01a644:	01d69793          	slli	a5,a3,0x1d
1c01a648:	00355693          	srli	a3,a0,0x3
1c01a64c:	8edd                	or	a3,a3,a5
1c01a64e:	03d6d6b3          	divu	a3,a3,t4
1c01a652:	00369593          	slli	a1,a3,0x3
1c01a656:	00569793          	slli	a5,a3,0x5
1c01a65a:	97ae                	add	a5,a5,a1
1c01a65c:	40f507b3          	sub	a5,a0,a5
1c01a660:	03d7d7b3          	divu	a5,a5,t4
1c01a664:	82f5                	srli	a3,a3,0x1d
1c01a666:	95be                	add	a1,a1,a5
1c01a668:	00f5b7b3          	sltu	a5,a1,a5
1c01a66c:	96f2                	add	a3,a3,t3
1c01a66e:	96be                	add	a3,a3,a5
1c01a670:	01f69513          	slli	a0,a3,0x1f
1c01a674:	0015d793          	srli	a5,a1,0x1
1c01a678:	8fc9                	or	a5,a5,a0
1c01a67a:	fc15b5b3          	p.bclr	a1,a1,30,1
1c01a67e:	97ae                	add	a5,a5,a1
1c01a680:	8285                	srli	a3,a3,0x1
1c01a682:	00b7b5b3          	sltu	a1,a5,a1
1c01a686:	96ae                	add	a3,a3,a1
1c01a688:	0885                	addi	a7,a7,1
1c01a68a:	06600593          	li	a1,102
1c01a68e:	00130513          	addi	a0,t1,1
1c01a692:	1ebd82e3          	beq	s11,a1,1c01b076 <pos_libc_prf+0x110e>
1c01a696:	01e7de13          	srli	t3,a5,0x1e
1c01a69a:	00279593          	slli	a1,a5,0x2
1c01a69e:	00269813          	slli	a6,a3,0x2
1c01a6a2:	97ae                	add	a5,a5,a1
1c01a6a4:	010e6833          	or	a6,t3,a6
1c01a6a8:	00b7b5b3          	sltu	a1,a5,a1
1c01a6ac:	96c2                	add	a3,a3,a6
1c01a6ae:	96ae                	add	a3,a3,a1
1c01a6b0:	0686                	slli	a3,a3,0x1
1c01a6b2:	01f7d593          	srli	a1,a5,0x1f
1c01a6b6:	8ecd                	or	a3,a3,a1
1c01a6b8:	01c6d593          	srli	a1,a3,0x1c
1c01a6bc:	882e                	mv	a6,a1
1c01a6be:	4712                	lw	a4,4(sp)
1c01a6c0:	03058593          	addi	a1,a1,48
1c01a6c4:	01003833          	snez	a6,a6
1c01a6c8:	00b30023          	sb	a1,0(t1)
1c01a6cc:	c7c6be33          	p.bclr	t3,a3,3,28
1c01a6d0:	00179593          	slli	a1,a5,0x1
1c01a6d4:	410888b3          	sub	a7,a7,a6
1c01a6d8:	0a0714e3          	bnez	a4,1c01af80 <pos_libc_prf+0x1018>
1c01a6dc:	8ca6                	mv	s9,s1
1c01a6de:	3c905d63          	blez	s1,1c01aab8 <pos_libc_prf+0xb50>
1c01a6e2:	02e00693          	li	a3,46
1c01a6e6:	00230793          	addi	a5,t1,2
1c01a6ea:	00d300a3          	sb	a3,1(t1)
1c01a6ee:	00259693          	slli	a3,a1,0x2
1c01a6f2:	01e5d813          	srli	a6,a1,0x1e
1c01a6f6:	002e1513          	slli	a0,t3,0x2
1c01a6fa:	95b6                	add	a1,a1,a3
1c01a6fc:	00a86533          	or	a0,a6,a0
1c01a700:	00d5b833          	sltu	a6,a1,a3
1c01a704:	01c506b3          	add	a3,a0,t3
1c01a708:	9836                	add	a6,a6,a3
1c01a70a:	0806                	slli	a6,a6,0x1
1c01a70c:	01f5d693          	srli	a3,a1,0x1f
1c01a710:	0106e833          	or	a6,a3,a6
1c01a714:	01c85313          	srli	t1,a6,0x1c
1c01a718:	03030313          	addi	t1,t1,48
1c01a71c:	100006b7          	lui	a3,0x10000
1c01a720:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c01a724:	00678023          	sb	t1,0(a5)
1c01a728:	00159e13          	slli	t3,a1,0x1
1c01a72c:	00a87833          	and	a6,a6,a0
1c01a730:	0014b463          	p.bneimm	s1,1,1c01a738 <pos_libc_prf+0x7d0>
1c01a734:	3d40106f          	j	1c01bb08 <pos_libc_prf+0x1ba0>
1c01a738:	00359693          	slli	a3,a1,0x3
1c01a73c:	00281313          	slli	t1,a6,0x2
1c01a740:	01ee5e93          	srli	t4,t3,0x1e
1c01a744:	01c685b3          	add	a1,a3,t3
1c01a748:	006ee333          	or	t1,t4,t1
1c01a74c:	981a                	add	a6,a6,t1
1c01a74e:	00d5b6b3          	sltu	a3,a1,a3
1c01a752:	96c2                	add	a3,a3,a6
1c01a754:	0686                	slli	a3,a3,0x1
1c01a756:	01f5d813          	srli	a6,a1,0x1f
1c01a75a:	00d866b3          	or	a3,a6,a3
1c01a75e:	01c6d813          	srli	a6,a3,0x1c
1c01a762:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c01a766:	010780a3          	sb	a6,1(a5)
1c01a76a:	ffe48c93          	addi	s9,s1,-2
1c01a76e:	00159313          	slli	t1,a1,0x1
1c01a772:	8ee9                	and	a3,a3,a0
1c01a774:	01904463          	bgtz	s9,1c01a77c <pos_libc_prf+0x814>
1c01a778:	3880106f          	j	1c01bb00 <pos_libc_prf+0x1b98>
1c01a77c:	01e35e13          	srli	t3,t1,0x1e
1c01a780:	058e                	slli	a1,a1,0x3
1c01a782:	00269813          	slli	a6,a3,0x2
1c01a786:	932e                	add	t1,t1,a1
1c01a788:	010e6833          	or	a6,t3,a6
1c01a78c:	96c2                	add	a3,a3,a6
1c01a78e:	00b335b3          	sltu	a1,t1,a1
1c01a792:	95b6                	add	a1,a1,a3
1c01a794:	0586                	slli	a1,a1,0x1
1c01a796:	01f35693          	srli	a3,t1,0x1f
1c01a79a:	8dd5                	or	a1,a1,a3
1c01a79c:	01c5d693          	srli	a3,a1,0x1c
1c01a7a0:	03068693          	addi	a3,a3,48
1c01a7a4:	00d78123          	sb	a3,2(a5)
1c01a7a8:	ffd48c93          	addi	s9,s1,-3
1c01a7ac:	00131e13          	slli	t3,t1,0x1
1c01a7b0:	8de9                	and	a1,a1,a0
1c01a7b2:	01904463          	bgtz	s9,1c01a7ba <pos_libc_prf+0x852>
1c01a7b6:	3420106f          	j	1c01baf8 <pos_libc_prf+0x1b90>
1c01a7ba:	00331693          	slli	a3,t1,0x3
1c01a7be:	00259813          	slli	a6,a1,0x2
1c01a7c2:	01ee5313          	srli	t1,t3,0x1e
1c01a7c6:	01036833          	or	a6,t1,a6
1c01a7ca:	9e36                	add	t3,t3,a3
1c01a7cc:	95c2                	add	a1,a1,a6
1c01a7ce:	00de36b3          	sltu	a3,t3,a3
1c01a7d2:	96ae                	add	a3,a3,a1
1c01a7d4:	0686                	slli	a3,a3,0x1
1c01a7d6:	01fe5593          	srli	a1,t3,0x1f
1c01a7da:	8ecd                	or	a3,a3,a1
1c01a7dc:	01c6d593          	srli	a1,a3,0x1c
1c01a7e0:	03058593          	addi	a1,a1,48
1c01a7e4:	00b781a3          	sb	a1,3(a5)
1c01a7e8:	ffc48c93          	addi	s9,s1,-4
1c01a7ec:	001e1313          	slli	t1,t3,0x1
1c01a7f0:	8ee9                	and	a3,a3,a0
1c01a7f2:	01904463          	bgtz	s9,1c01a7fa <pos_libc_prf+0x892>
1c01a7f6:	2fa0106f          	j	1c01baf0 <pos_libc_prf+0x1b88>
1c01a7fa:	003e1593          	slli	a1,t3,0x3
1c01a7fe:	00269813          	slli	a6,a3,0x2
1c01a802:	01e35e13          	srli	t3,t1,0x1e
1c01a806:	010e6833          	or	a6,t3,a6
1c01a80a:	932e                	add	t1,t1,a1
1c01a80c:	96c2                	add	a3,a3,a6
1c01a80e:	00b335b3          	sltu	a1,t1,a1
1c01a812:	95b6                	add	a1,a1,a3
1c01a814:	0586                	slli	a1,a1,0x1
1c01a816:	01f35693          	srli	a3,t1,0x1f
1c01a81a:	8dd5                	or	a1,a1,a3
1c01a81c:	01c5d693          	srli	a3,a1,0x1c
1c01a820:	03068693          	addi	a3,a3,48
1c01a824:	00d78223          	sb	a3,4(a5)
1c01a828:	ffb48c93          	addi	s9,s1,-5
1c01a82c:	00131e13          	slli	t3,t1,0x1
1c01a830:	8de9                	and	a1,a1,a0
1c01a832:	01904463          	bgtz	s9,1c01a83a <pos_libc_prf+0x8d2>
1c01a836:	2b20106f          	j	1c01bae8 <pos_libc_prf+0x1b80>
1c01a83a:	00331693          	slli	a3,t1,0x3
1c01a83e:	00259813          	slli	a6,a1,0x2
1c01a842:	01ee5313          	srli	t1,t3,0x1e
1c01a846:	01036833          	or	a6,t1,a6
1c01a84a:	9e36                	add	t3,t3,a3
1c01a84c:	95c2                	add	a1,a1,a6
1c01a84e:	00de36b3          	sltu	a3,t3,a3
1c01a852:	96ae                	add	a3,a3,a1
1c01a854:	0686                	slli	a3,a3,0x1
1c01a856:	01fe5593          	srli	a1,t3,0x1f
1c01a85a:	8ecd                	or	a3,a3,a1
1c01a85c:	01c6d593          	srli	a1,a3,0x1c
1c01a860:	03058593          	addi	a1,a1,48
1c01a864:	00b782a3          	sb	a1,5(a5)
1c01a868:	ffa48c93          	addi	s9,s1,-6
1c01a86c:	001e1313          	slli	t1,t3,0x1
1c01a870:	8ee9                	and	a3,a3,a0
1c01a872:	01904463          	bgtz	s9,1c01a87a <pos_libc_prf+0x912>
1c01a876:	26a0106f          	j	1c01bae0 <pos_libc_prf+0x1b78>
1c01a87a:	003e1593          	slli	a1,t3,0x3
1c01a87e:	00269813          	slli	a6,a3,0x2
1c01a882:	01e35e13          	srli	t3,t1,0x1e
1c01a886:	010e6833          	or	a6,t3,a6
1c01a88a:	932e                	add	t1,t1,a1
1c01a88c:	96c2                	add	a3,a3,a6
1c01a88e:	00b335b3          	sltu	a1,t1,a1
1c01a892:	95b6                	add	a1,a1,a3
1c01a894:	0586                	slli	a1,a1,0x1
1c01a896:	01f35693          	srli	a3,t1,0x1f
1c01a89a:	8dd5                	or	a1,a1,a3
1c01a89c:	01c5d693          	srli	a3,a1,0x1c
1c01a8a0:	03068693          	addi	a3,a3,48
1c01a8a4:	00d78323          	sb	a3,6(a5)
1c01a8a8:	ff948c93          	addi	s9,s1,-7
1c01a8ac:	00131e13          	slli	t3,t1,0x1
1c01a8b0:	8de9                	and	a1,a1,a0
1c01a8b2:	01904463          	bgtz	s9,1c01a8ba <pos_libc_prf+0x952>
1c01a8b6:	2220106f          	j	1c01bad8 <pos_libc_prf+0x1b70>
1c01a8ba:	00331693          	slli	a3,t1,0x3
1c01a8be:	00259813          	slli	a6,a1,0x2
1c01a8c2:	01ee5313          	srli	t1,t3,0x1e
1c01a8c6:	01036833          	or	a6,t1,a6
1c01a8ca:	9e36                	add	t3,t3,a3
1c01a8cc:	95c2                	add	a1,a1,a6
1c01a8ce:	00de36b3          	sltu	a3,t3,a3
1c01a8d2:	96ae                	add	a3,a3,a1
1c01a8d4:	0686                	slli	a3,a3,0x1
1c01a8d6:	01fe5593          	srli	a1,t3,0x1f
1c01a8da:	8ecd                	or	a3,a3,a1
1c01a8dc:	01c6d593          	srli	a1,a3,0x1c
1c01a8e0:	03058593          	addi	a1,a1,48
1c01a8e4:	00b783a3          	sb	a1,7(a5)
1c01a8e8:	ff848c93          	addi	s9,s1,-8
1c01a8ec:	001e1313          	slli	t1,t3,0x1
1c01a8f0:	8ee9                	and	a3,a3,a0
1c01a8f2:	01904463          	bgtz	s9,1c01a8fa <pos_libc_prf+0x992>
1c01a8f6:	1da0106f          	j	1c01bad0 <pos_libc_prf+0x1b68>
1c01a8fa:	003e1593          	slli	a1,t3,0x3
1c01a8fe:	00269813          	slli	a6,a3,0x2
1c01a902:	01e35e13          	srli	t3,t1,0x1e
1c01a906:	010e6833          	or	a6,t3,a6
1c01a90a:	932e                	add	t1,t1,a1
1c01a90c:	96c2                	add	a3,a3,a6
1c01a90e:	00b335b3          	sltu	a1,t1,a1
1c01a912:	95b6                	add	a1,a1,a3
1c01a914:	0586                	slli	a1,a1,0x1
1c01a916:	01f35693          	srli	a3,t1,0x1f
1c01a91a:	8dd5                	or	a1,a1,a3
1c01a91c:	01c5d693          	srli	a3,a1,0x1c
1c01a920:	03068693          	addi	a3,a3,48
1c01a924:	00d78423          	sb	a3,8(a5)
1c01a928:	ff748c93          	addi	s9,s1,-9
1c01a92c:	00131e13          	slli	t3,t1,0x1
1c01a930:	8de9                	and	a1,a1,a0
1c01a932:	01904463          	bgtz	s9,1c01a93a <pos_libc_prf+0x9d2>
1c01a936:	1920106f          	j	1c01bac8 <pos_libc_prf+0x1b60>
1c01a93a:	00331693          	slli	a3,t1,0x3
1c01a93e:	00259813          	slli	a6,a1,0x2
1c01a942:	01ee5e93          	srli	t4,t3,0x1e
1c01a946:	01c68333          	add	t1,a3,t3
1c01a94a:	010ee833          	or	a6,t4,a6
1c01a94e:	982e                	add	a6,a6,a1
1c01a950:	00d336b3          	sltu	a3,t1,a3
1c01a954:	96c2                	add	a3,a3,a6
1c01a956:	01f35593          	srli	a1,t1,0x1f
1c01a95a:	0686                	slli	a3,a3,0x1
1c01a95c:	8ecd                	or	a3,a3,a1
1c01a95e:	01c6d593          	srli	a1,a3,0x1c
1c01a962:	03058593          	addi	a1,a1,48
1c01a966:	00b784a3          	sb	a1,9(a5)
1c01a96a:	ff648c93          	addi	s9,s1,-10
1c01a96e:	8ee9                	and	a3,a3,a0
1c01a970:	00131593          	slli	a1,t1,0x1
1c01a974:	00a78513          	addi	a0,a5,10
1c01a978:	15905063          	blez	s9,1c01aab8 <pos_libc_prf+0xb50>
1c01a97c:	00259513          	slli	a0,a1,0x2
1c01a980:	01e5d813          	srli	a6,a1,0x1e
1c01a984:	00269313          	slli	t1,a3,0x2
1c01a988:	95aa                	add	a1,a1,a0
1c01a98a:	00686333          	or	t1,a6,t1
1c01a98e:	969a                	add	a3,a3,t1
1c01a990:	00a5b833          	sltu	a6,a1,a0
1c01a994:	9836                	add	a6,a6,a3
1c01a996:	0806                	slli	a6,a6,0x1
1c01a998:	01f5d693          	srli	a3,a1,0x1f
1c01a99c:	0106e833          	or	a6,a3,a6
1c01a9a0:	01c85313          	srli	t1,a6,0x1c
1c01a9a4:	03030313          	addi	t1,t1,48
1c01a9a8:	100006b7          	lui	a3,0x10000
1c01a9ac:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c01a9b0:	00678523          	sb	t1,10(a5)
1c01a9b4:	ff548c93          	addi	s9,s1,-11
1c01a9b8:	00159e13          	slli	t3,a1,0x1
1c01a9bc:	00a87833          	and	a6,a6,a0
1c01a9c0:	01904463          	bgtz	s9,1c01a9c8 <pos_libc_prf+0xa60>
1c01a9c4:	0fc0106f          	j	1c01bac0 <pos_libc_prf+0x1b58>
1c01a9c8:	00359693          	slli	a3,a1,0x3
1c01a9cc:	00281313          	slli	t1,a6,0x2
1c01a9d0:	01ee5e93          	srli	t4,t3,0x1e
1c01a9d4:	01c685b3          	add	a1,a3,t3
1c01a9d8:	006ee333          	or	t1,t4,t1
1c01a9dc:	981a                	add	a6,a6,t1
1c01a9de:	00d5b6b3          	sltu	a3,a1,a3
1c01a9e2:	96c2                	add	a3,a3,a6
1c01a9e4:	0686                	slli	a3,a3,0x1
1c01a9e6:	01f5d813          	srli	a6,a1,0x1f
1c01a9ea:	00d866b3          	or	a3,a6,a3
1c01a9ee:	01c6d813          	srli	a6,a3,0x1c
1c01a9f2:	03080813          	addi	a6,a6,48
1c01a9f6:	010785a3          	sb	a6,11(a5)
1c01a9fa:	ff448c93          	addi	s9,s1,-12
1c01a9fe:	00159313          	slli	t1,a1,0x1
1c01aa02:	8ee9                	and	a3,a3,a0
1c01aa04:	01904463          	bgtz	s9,1c01aa0c <pos_libc_prf+0xaa4>
1c01aa08:	0b00106f          	j	1c01bab8 <pos_libc_prf+0x1b50>
1c01aa0c:	058e                	slli	a1,a1,0x3
1c01aa0e:	01e35e13          	srli	t3,t1,0x1e
1c01aa12:	00269813          	slli	a6,a3,0x2
1c01aa16:	932e                	add	t1,t1,a1
1c01aa18:	010e6833          	or	a6,t3,a6
1c01aa1c:	96c2                	add	a3,a3,a6
1c01aa1e:	00b335b3          	sltu	a1,t1,a1
1c01aa22:	95b6                	add	a1,a1,a3
1c01aa24:	0586                	slli	a1,a1,0x1
1c01aa26:	01f35693          	srli	a3,t1,0x1f
1c01aa2a:	8dd5                	or	a1,a1,a3
1c01aa2c:	01c5d693          	srli	a3,a1,0x1c
1c01aa30:	03068693          	addi	a3,a3,48
1c01aa34:	00d78623          	sb	a3,12(a5)
1c01aa38:	ff348c93          	addi	s9,s1,-13
1c01aa3c:	00131813          	slli	a6,t1,0x1
1c01aa40:	01904463          	bgtz	s9,1c01aa48 <pos_libc_prf+0xae0>
1c01aa44:	06c0106f          	j	1c01bab0 <pos_libc_prf+0x1b48>
1c01aa48:	8de9                	and	a1,a1,a0
1c01aa4a:	00331693          	slli	a3,t1,0x3
1c01aa4e:	01e85e13          	srli	t3,a6,0x1e
1c01aa52:	00259313          	slli	t1,a1,0x2
1c01aa56:	9836                	add	a6,a6,a3
1c01aa58:	006e6333          	or	t1,t3,t1
1c01aa5c:	959a                	add	a1,a1,t1
1c01aa5e:	00d836b3          	sltu	a3,a6,a3
1c01aa62:	96ae                	add	a3,a3,a1
1c01aa64:	0686                	slli	a3,a3,0x1
1c01aa66:	01f85593          	srli	a1,a6,0x1f
1c01aa6a:	8ecd                	or	a3,a3,a1
1c01aa6c:	01c6d593          	srli	a1,a3,0x1c
1c01aa70:	03058593          	addi	a1,a1,48
1c01aa74:	00b786a3          	sb	a1,13(a5)
1c01aa78:	ff248c93          	addi	s9,s1,-14
1c01aa7c:	8ee9                	and	a3,a3,a0
1c01aa7e:	00181593          	slli	a1,a6,0x1
1c01aa82:	00e78513          	addi	a0,a5,14
1c01aa86:	03905963          	blez	s9,1c01aab8 <pos_libc_prf+0xb50>
1c01aa8a:	00381513          	slli	a0,a6,0x3
1c01aa8e:	01e5d313          	srli	t1,a1,0x1e
1c01aa92:	00269813          	slli	a6,a3,0x2
1c01aa96:	95aa                	add	a1,a1,a0
1c01aa98:	01036833          	or	a6,t1,a6
1c01aa9c:	00a5b5b3          	sltu	a1,a1,a0
1c01aaa0:	96c2                	add	a3,a3,a6
1c01aaa2:	96ae                	add	a3,a3,a1
1c01aaa4:	0686                	slli	a3,a3,0x1
1c01aaa6:	82f1                	srli	a3,a3,0x1c
1c01aaa8:	03068693          	addi	a3,a3,48
1c01aaac:	00f78513          	addi	a0,a5,15
1c01aab0:	00d78723          	sb	a3,14(a5)
1c01aab4:	ff148c93          	addi	s9,s1,-15
1c01aab8:	440f8563          	beqz	t6,1c01af02 <pos_libc_prf+0xf9a>
1c01aabc:	4581                	li	a1,0
1c01aabe:	cc02                	sw	zero,24(sp)
1c01aac0:	4a01                	li	s4,0
1c01aac2:	03000813          	li	a6,48
1c01aac6:	a011                	j	1c01aaca <pos_libc_prf+0xb62>
1c01aac8:	853e                	mv	a0,a5
1c01aaca:	fff50793          	addi	a5,a0,-1
1c01aace:	0007c683          	lbu	a3,0(a5)
1c01aad2:	ff068be3          	beq	a3,a6,1c01aac8 <pos_libc_prf+0xb60>
1c01aad6:	02e00813          	li	a6,46
1c01aada:	4c81                	li	s9,0
1c01aadc:	01069363          	bne	a3,a6,1c01aae2 <pos_libc_prf+0xb7a>
1c01aae0:	853e                	mv	a0,a5
1c01aae2:	0dfdf793          	andi	a5,s11,223
1c01aae6:	04500693          	li	a3,69
1c01aaea:	3ad78e63          	beq	a5,a3,1c01aea6 <pos_libc_prf+0xf3e>
1c01aaee:	4782                	lw	a5,0(sp)
1c01aaf0:	00050023          	sb	zero,0(a0)
1c01aaf4:	8d1d                	sub	a0,a0,a5
1c01aaf6:	4732                	lw	a4,12(sp)
1c01aaf8:	2a071263          	bnez	a4,1c01ad9c <pos_libc_prf+0xe34>
1c01aafc:	47c2                	lw	a5,16(sp)
1c01aafe:	28079f63          	bnez	a5,1c01ad9c <pos_libc_prf+0xe34>
1c01ab02:	02414783          	lbu	a5,36(sp)
1c01ab06:	02d00693          	li	a3,45
1c01ab0a:	c202                	sw	zero,4(sp)
1c01ab0c:	28d78863          	beq	a5,a3,1c01ad9c <pos_libc_prf+0xe34>
1c01ab10:	fd078793          	addi	a5,a5,-48
1c01ab14:	46a5                	li	a3,9
1c01ab16:	00b50933          	add	s2,a0,a1
1c01ab1a:	a2f6f0e3          	bleu	a5,a3,1c01a53a <pos_libc_prf+0x5d2>
1c01ab1e:	412b0b33          	sub	s6,s6,s2
1c01ab22:	1040                	addi	s0,sp,36
1c01ab24:	4481                	li	s1,0
1c01ab26:	ee6ff06f          	j	1c01a20c <pos_libc_prf+0x2a4>
1c01ab2a:	000a2783          	lw	a5,0(s4)
1c01ab2e:	0a11                	addi	s4,s4,4
1c01ab30:	ce52                	sw	s4,28(sp)
1c01ab32:	02f10223          	sb	a5,36(sp)
1c01ab36:	1b7d                	addi	s6,s6,-1
1c01ab38:	4481                	li	s1,0
1c01ab3a:	c202                	sw	zero,4(sp)
1c01ab3c:	4905                	li	s2,1
1c01ab3e:	1040                	addi	s0,sp,36
1c01ab40:	ec6ff06f          	j	1c01a206 <pos_libc_prf+0x29e>
1c01ab44:	04c00613          	li	a2,76
1c01ab48:	004a268b          	p.lw	a3,4(s4!)
1c01ab4c:	5ac78ee3          	beq	a5,a2,1c01b908 <pos_libc_prf+0x19a0>
1c01ab50:	28f65363          	ble	a5,a2,1c01add6 <pos_libc_prf+0xe6e>
1c01ab54:	06800613          	li	a2,104
1c01ab58:	00c78663          	beq	a5,a2,1c01ab64 <pos_libc_prf+0xbfc>
1c01ab5c:	0156a023          	sw	s5,0(a3)
1c01ab60:	c46ff06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01ab64:	87d6                	mv	a5,s5
1c01ab66:	00f69023          	sh	a5,0(a3)
1c01ab6a:	c3cff06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01ab6e:	004a0793          	addi	a5,s4,4
1c01ab72:	7761                	lui	a4,0xffff8
1c01ab74:	02610593          	addi	a1,sp,38
1c01ab78:	ce3e                	sw	a5,28(sp)
1c01ab7a:	83074713          	xori	a4,a4,-2000
1c01ab7e:	000a2783          	lw	a5,0(s4)
1c01ab82:	4601                	li	a2,0
1c01ab84:	02e11223          	sh	a4,36(sp)
1c01ab88:	86ae                	mv	a3,a1
1c01ab8a:	4ea5                	li	t4,9
1c01ab8c:	f647b733          	p.bclr	a4,a5,27,4
1c01ab90:	01c61513          	slli	a0,a2,0x1c
1c01ab94:	8391                	srli	a5,a5,0x4
1c01ab96:	8fc9                	or	a5,a5,a0
1c01ab98:	8211                	srli	a2,a2,0x4
1c01ab9a:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c01ab9e:	03070893          	addi	a7,a4,48
1c01aba2:	00c7e333          	or	t1,a5,a2
1c01aba6:	00eefa63          	bleu	a4,t4,1c01abba <pos_libc_prf+0xc52>
1c01abaa:	01c68023          	sb	t3,0(a3)
1c01abae:	00168513          	addi	a0,a3,1
1c01abb2:	00030a63          	beqz	t1,1c01abc6 <pos_libc_prf+0xc5e>
1c01abb6:	86aa                	mv	a3,a0
1c01abb8:	bfd1                	j	1c01ab8c <pos_libc_prf+0xc24>
1c01abba:	01168023          	sb	a7,0(a3)
1c01abbe:	00168513          	addi	a0,a3,1
1c01abc2:	fe031ae3          	bnez	t1,1c01abb6 <pos_libc_prf+0xc4e>
1c01abc6:	00050023          	sb	zero,0(a0)
1c01abca:	8d0d                	sub	a0,a0,a1
1c01abcc:	00d5fe63          	bleu	a3,a1,1c01abe8 <pos_libc_prf+0xc80>
1c01abd0:	87b6                	mv	a5,a3
1c01abd2:	86ae                	mv	a3,a1
1c01abd4:	0006c603          	lbu	a2,0(a3)
1c01abd8:	0007c703          	lbu	a4,0(a5)
1c01abdc:	fec78fab          	p.sb	a2,-1(a5!)
1c01abe0:	00e680ab          	p.sb	a4,1(a3!)
1c01abe4:	fef6e8e3          	bltu	a3,a5,1c01abd4 <pos_libc_prf+0xc6c>
1c01abe8:	4789                	li	a5,2
1c01abea:	00250913          	addi	s2,a0,2
1c01abee:	c23e                	sw	a5,4(sp)
1c01abf0:	dfcff06f          	j	1c01a1ec <pos_libc_prf+0x284>
1c01abf4:	85de                	mv	a1,s7
1c01abf6:	02500513          	li	a0,37
1c01abfa:	9982                	jalr	s3
1c01abfc:	cff52163          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01ac00:	85de                	mv	a1,s7
1c01ac02:	856e                	mv	a0,s11
1c01ac04:	9982                	jalr	s3
1c01ac06:	cdf52c63          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01ac0a:	0a89                	addi	s5,s5,2
1c01ac0c:	b9aff06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01ac10:	007a0893          	addi	a7,s4,7
1c01ac14:	c408b8b3          	p.bclr	a7,a7,2,0
1c01ac18:	0008a783          	lw	a5,0(a7)
1c01ac1c:	0048a303          	lw	t1,4(a7)
1c01ac20:	0157d693          	srli	a3,a5,0x15
1c01ac24:	00b31513          	slli	a0,t1,0xb
1c01ac28:	08a1                	addi	a7,a7,8
1c01ac2a:	01435813          	srli	a6,t1,0x14
1c01ac2e:	8d55                	or	a0,a0,a3
1c01ac30:	ce46                	sw	a7,28(sp)
1c01ac32:	e8b83833          	p.bclr	a6,a6,20,11
1c01ac36:	00b79593          	slli	a1,a5,0xb
1c01ac3a:	c1f53533          	p.bclr	a0,a0,0,31
1c01ac3e:	1e034e63          	bltz	t1,1c01ae3a <pos_libc_prf+0xed2>
1c01ac42:	47b2                	lw	a5,12(sp)
1c01ac44:	1c078f63          	beqz	a5,1c01ae22 <pos_libc_prf+0xeba>
1c01ac48:	02b00793          	li	a5,43
1c01ac4c:	02f10223          	sb	a5,36(sp)
1c01ac50:	02510313          	addi	t1,sp,37
1c01ac54:	7ff00793          	li	a5,2047
1c01ac58:	18f80863          	beq	a6,a5,1c01ade8 <pos_libc_prf+0xe80>
1c01ac5c:	04600793          	li	a5,70
1c01ac60:	0dfdfe13          	andi	t3,s11,223
1c01ac64:	32fd8e63          	beq	s11,a5,1c01afa0 <pos_libc_prf+0x1038>
1c01ac68:	41f85693          	srai	a3,a6,0x1f
1c01ac6c:	00b867b3          	or	a5,a6,a1
1c01ac70:	8ec9                	or	a3,a3,a0
1c01ac72:	8fd5                	or	a5,a5,a3
1c01ac74:	8e0780e3          	beqz	a5,1c01a554 <pos_libc_prf+0x5ec>
1c01ac78:	02081363          	bnez	a6,1c01ac9e <pos_libc_prf+0xd36>
1c01ac7c:	01f5d793          	srli	a5,a1,0x1f
1c01ac80:	00151693          	slli	a3,a0,0x1
1c01ac84:	00d7e533          	or	a0,a5,a3
1c01ac88:	0586                	slli	a1,a1,0x1
1c01ac8a:	5a054fe3          	bltz	a0,1c01ba48 <pos_libc_prf+0x1ae0>
1c01ac8e:	01f5d793          	srli	a5,a1,0x1f
1c01ac92:	0506                	slli	a0,a0,0x1
1c01ac94:	8d5d                	or	a0,a0,a5
1c01ac96:	187d                	addi	a6,a6,-1
1c01ac98:	0586                	slli	a1,a1,0x1
1c01ac9a:	fe055ae3          	bgez	a0,1c01ac8e <pos_libc_prf+0xd26>
1c01ac9e:	c0280813          	addi	a6,a6,-1022
1c01aca2:	57f9                	li	a5,-2
1c01aca4:	c1f54533          	p.bset	a0,a0,0,31
1c01aca8:	4881                	li	a7,0
1c01acaa:	06f85763          	ble	a5,a6,1c01ad18 <pos_libc_prf+0xdb0>
1c01acae:	33333eb7          	lui	t4,0x33333
1c01acb2:	80000f37          	lui	t5,0x80000
1c01acb6:	4881                	li	a7,0
1c01acb8:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x17317136>
1c01acbc:	ffff4f13          	not	t5,t5
1c01acc0:	5ff9                	li	t6,-2
1c01acc2:	a011                	j	1c01acc6 <pos_libc_prf+0xd5e>
1c01acc4:	883e                	mv	a6,a5
1c01acc6:	01f51693          	slli	a3,a0,0x1f
1c01acca:	0015d713          	srli	a4,a1,0x1
1c01acce:	fc15b7b3          	p.bclr	a5,a1,30,1
1c01acd2:	8f55                	or	a4,a4,a3
1c01acd4:	00e785b3          	add	a1,a5,a4
1c01acd8:	00f5b7b3          	sltu	a5,a1,a5
1c01acdc:	8105                	srli	a0,a0,0x1
1c01acde:	953e                	add	a0,a0,a5
1c01ace0:	00180793          	addi	a5,a6,1
1c01ace4:	feaee0e3          	bltu	t4,a0,1c01acc4 <pos_libc_prf+0xd5c>
1c01ace8:	00259693          	slli	a3,a1,0x2
1c01acec:	01e5d613          	srli	a2,a1,0x1e
1c01acf0:	00251713          	slli	a4,a0,0x2
1c01acf4:	95b6                	add	a1,a1,a3
1c01acf6:	8f51                	or	a4,a4,a2
1c01acf8:	953a                	add	a0,a0,a4
1c01acfa:	00d5b6b3          	sltu	a3,a1,a3
1c01acfe:	9536                	add	a0,a0,a3
1c01ad00:	01f5d713          	srli	a4,a1,0x1f
1c01ad04:	0809                	addi	a6,a6,2
1c01ad06:	18fd                	addi	a7,a7,-1
1c01ad08:	01e51663          	bne	a0,t5,1c01ad14 <pos_libc_prf+0xdac>
1c01ad0c:	0586                	slli	a1,a1,0x1
1c01ad0e:	fc174533          	p.bset	a0,a4,30,1
1c01ad12:	883e                	mv	a6,a5
1c01ad14:	fbf849e3          	blt	a6,t6,1c01acc6 <pos_libc_prf+0xd5e>
1c01ad18:	80000f37          	lui	t5,0x80000
1c01ad1c:	4f95                	li	t6,5
1c01ad1e:	ffff4f13          	not	t5,t5
1c01ad22:	83005de3          	blez	a6,1c01a55c <pos_libc_prf+0x5f4>
1c01ad26:	00258693          	addi	a3,a1,2
1c01ad2a:	00b6b5b3          	sltu	a1,a3,a1
1c01ad2e:	952e                	add	a0,a0,a1
1c01ad30:	03f557b3          	divu	a5,a0,t6
1c01ad34:	00279713          	slli	a4,a5,0x2
1c01ad38:	973e                	add	a4,a4,a5
1c01ad3a:	8d19                	sub	a0,a0,a4
1c01ad3c:	01d51713          	slli	a4,a0,0x1d
1c01ad40:	0036d613          	srli	a2,a3,0x3
1c01ad44:	8e59                	or	a2,a2,a4
1c01ad46:	03f65633          	divu	a2,a2,t6
1c01ad4a:	00361593          	slli	a1,a2,0x3
1c01ad4e:	00561713          	slli	a4,a2,0x5
1c01ad52:	972e                	add	a4,a4,a1
1c01ad54:	40e68733          	sub	a4,a3,a4
1c01ad58:	03f75733          	divu	a4,a4,t6
1c01ad5c:	8275                	srli	a2,a2,0x1d
1c01ad5e:	95ba                	add	a1,a1,a4
1c01ad60:	97b2                	add	a5,a5,a2
1c01ad62:	00e5b733          	sltu	a4,a1,a4
1c01ad66:	00f70533          	add	a0,a4,a5
1c01ad6a:	187d                	addi	a6,a6,-1
1c01ad6c:	0885                	addi	a7,a7,1
1c01ad6e:	01f5d793          	srli	a5,a1,0x1f
1c01ad72:	0506                	slli	a0,a0,0x1
1c01ad74:	8d5d                	or	a0,a0,a5
1c01ad76:	0586                	slli	a1,a1,0x1
1c01ad78:	187d                	addi	a6,a6,-1
1c01ad7a:	feaf7ae3          	bleu	a0,t5,1c01ad6e <pos_libc_prf+0xe06>
1c01ad7e:	b755                	j	1c01ad22 <pos_libc_prf+0xdba>
1c01ad80:	001d4d83          	lbu	s11,1(s10)
1c01ad84:	04c00793          	li	a5,76
1c01ad88:	0d09                	addi	s10,s10,2
1c01ad8a:	ad6ff06f          	j	1c01a060 <pos_libc_prf+0xf8>
1c01ad8e:	001d4d83          	lbu	s11,1(s10)
1c01ad92:	04800793          	li	a5,72
1c01ad96:	0d09                	addi	s10,s10,2
1c01ad98:	ac8ff06f          	j	1c01a060 <pos_libc_prf+0xf8>
1c01ad9c:	4705                	li	a4,1
1c01ad9e:	02514783          	lbu	a5,37(sp)
1c01ada2:	c23a                	sw	a4,4(sp)
1c01ada4:	b3b5                	j	1c01ab10 <pos_libc_prf+0xba8>
1c01ada6:	004a0793          	addi	a5,s4,4
1c01adaa:	ce3e                	sw	a5,28(sp)
1c01adac:	000a2403          	lw	s0,0(s4)
1c01adb0:	4c81                	li	s9,0
1c01adb2:	e92ff06f          	j	1c01a444 <pos_libc_prf+0x4dc>
1c01adb6:	4785                	li	a5,1
1c01adb8:	c23e                	sw	a5,4(sp)
1c01adba:	c32ff06f          	j	1c01a1ec <pos_libc_prf+0x284>
1c01adbe:	4742                	lw	a4,16(sp)
1c01adc0:	22070063          	beqz	a4,1c01afe0 <pos_libc_prf+0x1078>
1c01adc4:	02000693          	li	a3,32
1c01adc8:	02d10223          	sb	a3,36(sp)
1c01adcc:	4c92                	lw	s9,4(sp)
1c01adce:	02510a13          	addi	s4,sp,37
1c01add2:	bacff06f          	j	1c01a17e <pos_libc_prf+0x216>
1c01add6:	04800613          	li	a2,72
1c01adda:	d8c791e3          	bne	a5,a2,1c01ab5c <pos_libc_prf+0xbf4>
1c01adde:	87d6                	mv	a5,s5
1c01ade0:	00f68023          	sb	a5,0(a3)
1c01ade4:	9c2ff06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01ade8:	00a5e6b3          	or	a3,a1,a0
1c01adec:	fbfd8613          	addi	a2,s11,-65
1c01adf0:	00330513          	addi	a0,t1,3
1c01adf4:	47e5                	li	a5,25
1c01adf6:	16069963          	bnez	a3,1c01af68 <pos_libc_prf+0x1000>
1c01adfa:	3ec7e1e3          	bltu	a5,a2,1c01b9dc <pos_libc_prf+0x1a74>
1c01adfe:	6795                	lui	a5,0x5
1c01ae00:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c01ae04:	00f31023          	sh	a5,0(t1)
1c01ae08:	04600793          	li	a5,70
1c01ae0c:	00f30123          	sb	a5,2(t1)
1c01ae10:	4782                	lw	a5,0(sp)
1c01ae12:	000301a3          	sb	zero,3(t1)
1c01ae16:	8d1d                	sub	a0,a0,a5
1c01ae18:	4581                	li	a1,0
1c01ae1a:	4c81                	li	s9,0
1c01ae1c:	cc02                	sw	zero,24(sp)
1c01ae1e:	4a01                	li	s4,0
1c01ae20:	b9d9                	j	1c01aaf6 <pos_libc_prf+0xb8e>
1c01ae22:	4742                	lw	a4,16(sp)
1c01ae24:	02410313          	addi	t1,sp,36
1c01ae28:	e20706e3          	beqz	a4,1c01ac54 <pos_libc_prf+0xcec>
1c01ae2c:	02000793          	li	a5,32
1c01ae30:	02f10223          	sb	a5,36(sp)
1c01ae34:	02510313          	addi	t1,sp,37
1c01ae38:	bd31                	j	1c01ac54 <pos_libc_prf+0xcec>
1c01ae3a:	02d00793          	li	a5,45
1c01ae3e:	02f10223          	sb	a5,36(sp)
1c01ae42:	02510313          	addi	t1,sp,37
1c01ae46:	b539                	j	1c01ac54 <pos_libc_prf+0xcec>
1c01ae48:	40f007b3          	neg	a5,a5
1c01ae4c:	00f036b3          	snez	a3,a5
1c01ae50:	40e00cb3          	neg	s9,a4
1c01ae54:	02d00613          	li	a2,45
1c01ae58:	02c10223          	sb	a2,36(sp)
1c01ae5c:	40dc8cb3          	sub	s9,s9,a3
1c01ae60:	02510a13          	addi	s4,sp,37
1c01ae64:	b1aff06f          	j	1c01a17e <pos_libc_prf+0x216>
1c01ae68:	56f5                	li	a3,-3
1c01ae6a:	0cd8c063          	blt	a7,a3,1c01af2a <pos_libc_prf+0xfc2>
1c01ae6e:	0b14ce63          	blt	s1,a7,1c01af2a <pos_libc_prf+0xfc2>
1c01ae72:	4712                	lw	a4,4(sp)
1c01ae74:	411484b3          	sub	s1,s1,a7
1c01ae78:	4f81                	li	t6,0
1c01ae7a:	e709                	bnez	a4,1c01ae84 <pos_libc_prf+0xf1c>
1c01ae7c:	00902fb3          	sgtz	t6,s1
1c01ae80:	0fffff93          	andi	t6,t6,255
1c01ae84:	009886b3          	add	a3,a7,s1
1c01ae88:	2e06cae3          	bltz	a3,1c01b97c <pos_libc_prf+0x1a14>
1c01ae8c:	4741                	li	a4,16
1c01ae8e:	04e6cf33          	p.min	t5,a3,a4
1c01ae92:	1f7d                	addi	t5,t5,-1
1c01ae94:	06600d93          	li	s11,102
1c01ae98:	f0069a63          	bnez	a3,1c01a5ac <pos_libc_prf+0x644>
1c01ae9c:	4501                	li	a0,0
1c01ae9e:	080006b7          	lui	a3,0x8000
1c01aea2:	f76ff06f          	j	1c01a618 <pos_libc_prf+0x6b0>
1c01aea6:	86aa                	mv	a3,a0
1c01aea8:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c01aeac:	2408c6e3          	bltz	a7,1c01b8f8 <pos_libc_prf+0x1990>
1c01aeb0:	02b00793          	li	a5,43
1c01aeb4:	00f500a3          	sb	a5,1(a0)
1c01aeb8:	06300793          	li	a5,99
1c01aebc:	0117de63          	ble	a7,a5,1c01aed8 <pos_libc_prf+0xf70>
1c01aec0:	06400693          	li	a3,100
1c01aec4:	02d8c7b3          	div	a5,a7,a3
1c01aec8:	03078793          	addi	a5,a5,48
1c01aecc:	02d8e8b3          	rem	a7,a7,a3
1c01aed0:	00f50123          	sb	a5,2(a0)
1c01aed4:	00350693          	addi	a3,a0,3
1c01aed8:	47a9                	li	a5,10
1c01aeda:	02f8c633          	div	a2,a7,a5
1c01aede:	02f8e7b3          	rem	a5,a7,a5
1c01aee2:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c01aee6:	8536                	mv	a0,a3
1c01aee8:	00c5012b          	p.sb	a2,2(a0!)
1c01aeec:	03078793          	addi	a5,a5,48
1c01aef0:	00f680a3          	sb	a5,1(a3)
1c01aef4:	beed                	j	1c01aaee <pos_libc_prf+0xb86>
1c01aef6:	800004b7          	lui	s1,0x80000
1c01aefa:	fff4c493          	not	s1,s1
1c01aefe:	c3cff06f          	j	1c01a33a <pos_libc_prf+0x3d2>
1c01af02:	85e6                	mv	a1,s9
1c01af04:	cc02                	sw	zero,24(sp)
1c01af06:	4a01                	li	s4,0
1c01af08:	bee9                	j	1c01aae2 <pos_libc_prf+0xb7a>
1c01af0a:	4901                	li	s2,0
1c01af0c:	1054                	addi	a3,sp,36
1c01af0e:	d60ff06f          	j	1c01a46e <pos_libc_prf+0x506>
1c01af12:	007a0793          	addi	a5,s4,7
1c01af16:	c407b7b3          	p.bclr	a5,a5,2,0
1c01af1a:	00878713          	addi	a4,a5,8
1c01af1e:	ce3a                	sw	a4,28(sp)
1c01af20:	4380                	lw	s0,0(a5)
1c01af22:	0047ac83          	lw	s9,4(a5)
1c01af26:	d1eff06f          	j	1c01a444 <pos_libc_prf+0x4dc>
1c01af2a:	ffed8613          	addi	a2,s11,-2
1c01af2e:	0ff67d93          	andi	s11,a2,255
1c01af32:	220486e3          	beqz	s1,1c01b95e <pos_libc_prf+0x19f6>
1c01af36:	4712                	lw	a4,4(sp)
1c01af38:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c01af3c:	1e071fe3          	bnez	a4,1c01b93a <pos_libc_prf+0x19d2>
1c01af40:	00d02fb3          	sgtz	t6,a3
1c01af44:	0fffff93          	andi	t6,t6,255
1c01af48:	84b6                	mv	s1,a3
1c01af4a:	e56ff06f          	j	1c01a5a0 <pos_libc_prf+0x638>
1c01af4e:	007a0693          	addi	a3,s4,7
1c01af52:	c406b6b3          	p.bclr	a3,a3,2,0
1c01af56:	00868793          	addi	a5,a3,8
1c01af5a:	ce3e                	sw	a5,28(sp)
1c01af5c:	429c                	lw	a5,0(a3)
1c01af5e:	42d4                	lw	a3,4(a3)
1c01af60:	c236                	sw	a3,4(sp)
1c01af62:	8736                	mv	a4,a3
1c01af64:	a02ff06f          	j	1c01a166 <pos_libc_prf+0x1fe>
1c01af68:	24c7efe3          	bltu	a5,a2,1c01b9c6 <pos_libc_prf+0x1a5e>
1c01af6c:	6791                	lui	a5,0x4
1c01af6e:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c01af72:	00f31023          	sh	a5,0(t1)
1c01af76:	04e00793          	li	a5,78
1c01af7a:	00f30123          	sb	a5,2(t1)
1c01af7e:	bd49                	j	1c01ae10 <pos_libc_prf+0xea8>
1c01af80:	02e00793          	li	a5,46
1c01af84:	00f300a3          	sb	a5,1(t1)
1c01af88:	00230793          	addi	a5,t1,2
1c01af8c:	f6904163          	bgtz	s1,1c01a6ee <pos_libc_prf+0x786>
1c01af90:	8ca6                	mv	s9,s1
1c01af92:	853e                	mv	a0,a5
1c01af94:	b615                	j	1c01aab8 <pos_libc_prf+0xb50>
1c01af96:	4481                	li	s1,0
1c01af98:	c202                	sw	zero,4(sp)
1c01af9a:	4901                	li	s2,0
1c01af9c:	a6aff06f          	j	1c01a206 <pos_libc_prf+0x29e>
1c01afa0:	04600e13          	li	t3,70
1c01afa4:	06600d93          	li	s11,102
1c01afa8:	b1c1                	j	1c01ac68 <pos_libc_prf+0xd00>
1c01afaa:	105c                	addi	a5,sp,36
1c01afac:	4565                	li	a0,25
1c01afae:	0017c70b          	p.lbu	a4,1(a5!)
1c01afb2:	f9f70693          	addi	a3,a4,-97
1c01afb6:	0ff6f693          	andi	a3,a3,255
1c01afba:	fe070613          	addi	a2,a4,-32
1c01afbe:	00d56e63          	bltu	a0,a3,1c01afda <pos_libc_prf+0x1072>
1c01afc2:	fec78fa3          	sb	a2,-1(a5)
1c01afc6:	0017c70b          	p.lbu	a4,1(a5!)
1c01afca:	f9f70693          	addi	a3,a4,-97
1c01afce:	0ff6f693          	andi	a3,a3,255
1c01afd2:	fe070613          	addi	a2,a4,-32
1c01afd6:	fed576e3          	bleu	a3,a0,1c01afc2 <pos_libc_prf+0x105a>
1c01afda:	fb71                	bnez	a4,1c01afae <pos_libc_prf+0x1046>
1c01afdc:	d4eff06f          	j	1c01a52a <pos_libc_prf+0x5c2>
1c01afe0:	4c92                	lw	s9,4(sp)
1c01afe2:	02410a13          	addi	s4,sp,36
1c01afe6:	998ff06f          	j	1c01a17e <pos_libc_prf+0x216>
1c01afea:	4922                	lw	s2,8(sp)
1c01afec:	8dd2                	mv	s11,s4
1c01afee:	a029                	j	1c01aff8 <pos_libc_prf+0x1090>
1c01aff0:	9982                	jalr	s3
1c01aff2:	1dfd                	addi	s11,s11,-1
1c01aff4:	8ff52563          	p.beqimm	a0,-1,1c01a0de <pos_libc_prf+0x176>
1c01aff8:	85de                	mv	a1,s7
1c01affa:	03000513          	li	a0,48
1c01affe:	ffb049e3          	bgtz	s11,1c01aff0 <pos_libc_prf+0x1088>
1c01b002:	41490933          	sub	s2,s2,s4
1c01b006:	a62ff06f          	j	1c01a268 <pos_libc_prf+0x300>
1c01b00a:	4712                	lw	a4,4(sp)
1c01b00c:	12070fe3          	beqz	a4,1c01b94a <pos_libc_prf+0x19e2>
1c01b010:	03000793          	li	a5,48
1c01b014:	02f10223          	sb	a5,36(sp)
1c01b018:	019467b3          	or	a5,s0,s9
1c01b01c:	14078ae3          	beqz	a5,1c01b970 <pos_libc_prf+0x1a08>
1c01b020:	02510593          	addi	a1,sp,37
1c01b024:	4905                	li	s2,1
1c01b026:	86ae                	mv	a3,a1
1c01b028:	87b6                	mv	a5,a3
1c01b02a:	a011                	j	1c01b02e <pos_libc_prf+0x10c6>
1c01b02c:	87b2                	mv	a5,a2
1c01b02e:	01dc9613          	slli	a2,s9,0x1d
1c01b032:	f8343733          	p.bclr	a4,s0,28,3
1c01b036:	800d                	srli	s0,s0,0x3
1c01b038:	8c51                	or	s0,s0,a2
1c01b03a:	03070713          	addi	a4,a4,48
1c01b03e:	003cdc93          	srli	s9,s9,0x3
1c01b042:	00e78023          	sb	a4,0(a5)
1c01b046:	01946733          	or	a4,s0,s9
1c01b04a:	00178613          	addi	a2,a5,1
1c01b04e:	ff79                	bnez	a4,1c01b02c <pos_libc_prf+0x10c4>
1c01b050:	00060023          	sb	zero,0(a2)
1c01b054:	8e0d                	sub	a2,a2,a1
1c01b056:	00f6fc63          	bleu	a5,a3,1c01b06e <pos_libc_prf+0x1106>
1c01b05a:	0006c583          	lbu	a1,0(a3)
1c01b05e:	0007c703          	lbu	a4,0(a5)
1c01b062:	feb78fab          	p.sb	a1,-1(a5!)
1c01b066:	00e680ab          	p.sb	a4,1(a3!)
1c01b06a:	fef6e8e3          	bltu	a3,a5,1c01b05a <pos_libc_prf+0x10f2>
1c01b06e:	9932                	add	s2,s2,a2
1c01b070:	c202                	sw	zero,4(sp)
1c01b072:	97aff06f          	j	1c01a1ec <pos_libc_prf+0x284>
1c01b076:	111057e3          	blez	a7,1c01b984 <pos_libc_prf+0x1a1c>
1c01b07a:	00279e13          	slli	t3,a5,0x2
1c01b07e:	01e7df13          	srli	t5,a5,0x1e
1c01b082:	00269e93          	slli	t4,a3,0x2
1c01b086:	00fe05b3          	add	a1,t3,a5
1c01b08a:	01df6eb3          	or	t4,t5,t4
1c01b08e:	9eb6                	add	t4,t4,a3
1c01b090:	01c5b6b3          	sltu	a3,a1,t3
1c01b094:	96f6                	add	a3,a3,t4
1c01b096:	01f5d793          	srli	a5,a1,0x1f
1c01b09a:	0686                	slli	a3,a3,0x1
1c01b09c:	8edd                	or	a3,a3,a5
1c01b09e:	01c6d793          	srli	a5,a3,0x1c
1c01b0a2:	03078793          	addi	a5,a5,48
1c01b0a6:	10000e37          	lui	t3,0x10000
1c01b0aa:	1e7d                	addi	t3,t3,-1
1c01b0ac:	00f30023          	sb	a5,0(t1)
1c01b0b0:	01c6f6b3          	and	a3,a3,t3
1c01b0b4:	00159793          	slli	a5,a1,0x1
1c01b0b8:	1618aee3          	p.beqimm	a7,1,1c01ba34 <pos_libc_prf+0x1acc>
1c01b0bc:	01e7df13          	srli	t5,a5,0x1e
1c01b0c0:	00269e93          	slli	t4,a3,0x2
1c01b0c4:	058e                	slli	a1,a1,0x3
1c01b0c6:	00f58533          	add	a0,a1,a5
1c01b0ca:	01df6eb3          	or	t4,t5,t4
1c01b0ce:	9eb6                	add	t4,t4,a3
1c01b0d0:	00b536b3          	sltu	a3,a0,a1
1c01b0d4:	96f6                	add	a3,a3,t4
1c01b0d6:	01f55793          	srli	a5,a0,0x1f
1c01b0da:	0686                	slli	a3,a3,0x1
1c01b0dc:	8edd                	or	a3,a3,a5
1c01b0de:	01c6d793          	srli	a5,a3,0x1c
1c01b0e2:	03078793          	addi	a5,a5,48
1c01b0e6:	00f300a3          	sb	a5,1(t1)
1c01b0ea:	01c6f6b3          	and	a3,a3,t3
1c01b0ee:	00151793          	slli	a5,a0,0x1
1c01b0f2:	1628a3e3          	p.beqimm	a7,2,1c01ba58 <pos_libc_prf+0x1af0>
1c01b0f6:	01e7df13          	srli	t5,a5,0x1e
1c01b0fa:	00269e93          	slli	t4,a3,0x2
1c01b0fe:	050e                	slli	a0,a0,0x3
1c01b100:	00f505b3          	add	a1,a0,a5
1c01b104:	01df6eb3          	or	t4,t5,t4
1c01b108:	9eb6                	add	t4,t4,a3
1c01b10a:	00a5b6b3          	sltu	a3,a1,a0
1c01b10e:	96f6                	add	a3,a3,t4
1c01b110:	01f5d793          	srli	a5,a1,0x1f
1c01b114:	0686                	slli	a3,a3,0x1
1c01b116:	8edd                	or	a3,a3,a5
1c01b118:	01c6d793          	srli	a5,a3,0x1c
1c01b11c:	03078793          	addi	a5,a5,48
1c01b120:	00f30123          	sb	a5,2(t1)
1c01b124:	ffd88a13          	addi	s4,a7,-3
1c01b128:	00159793          	slli	a5,a1,0x1
1c01b12c:	01c6f6b3          	and	a3,a3,t3
1c01b130:	134050e3          	blez	s4,1c01ba50 <pos_libc_prf+0x1ae8>
1c01b134:	01e7df13          	srli	t5,a5,0x1e
1c01b138:	00269e93          	slli	t4,a3,0x2
1c01b13c:	058e                	slli	a1,a1,0x3
1c01b13e:	00f58533          	add	a0,a1,a5
1c01b142:	01df6eb3          	or	t4,t5,t4
1c01b146:	9eb6                	add	t4,t4,a3
1c01b148:	00b536b3          	sltu	a3,a0,a1
1c01b14c:	96f6                	add	a3,a3,t4
1c01b14e:	01f55793          	srli	a5,a0,0x1f
1c01b152:	0686                	slli	a3,a3,0x1
1c01b154:	8edd                	or	a3,a3,a5
1c01b156:	01c6d793          	srli	a5,a3,0x1c
1c01b15a:	03078793          	addi	a5,a5,48
1c01b15e:	00f301a3          	sb	a5,3(t1)
1c01b162:	ffc88a13          	addi	s4,a7,-4
1c01b166:	00151793          	slli	a5,a0,0x1
1c01b16a:	01c6f6b3          	and	a3,a3,t3
1c01b16e:	134056e3          	blez	s4,1c01ba9a <pos_libc_prf+0x1b32>
1c01b172:	01e7df13          	srli	t5,a5,0x1e
1c01b176:	00269e93          	slli	t4,a3,0x2
1c01b17a:	050e                	slli	a0,a0,0x3
1c01b17c:	00f505b3          	add	a1,a0,a5
1c01b180:	01df6eb3          	or	t4,t5,t4
1c01b184:	9eb6                	add	t4,t4,a3
1c01b186:	00a5b6b3          	sltu	a3,a1,a0
1c01b18a:	96f6                	add	a3,a3,t4
1c01b18c:	01f5d793          	srli	a5,a1,0x1f
1c01b190:	0686                	slli	a3,a3,0x1
1c01b192:	8edd                	or	a3,a3,a5
1c01b194:	01c6d793          	srli	a5,a3,0x1c
1c01b198:	03078793          	addi	a5,a5,48
1c01b19c:	00f30223          	sb	a5,4(t1)
1c01b1a0:	ffb88a13          	addi	s4,a7,-5
1c01b1a4:	00159793          	slli	a5,a1,0x1
1c01b1a8:	01c6f6b3          	and	a3,a3,t3
1c01b1ac:	0f4053e3          	blez	s4,1c01ba92 <pos_libc_prf+0x1b2a>
1c01b1b0:	01e7df13          	srli	t5,a5,0x1e
1c01b1b4:	00269e93          	slli	t4,a3,0x2
1c01b1b8:	058e                	slli	a1,a1,0x3
1c01b1ba:	00f58533          	add	a0,a1,a5
1c01b1be:	01df6eb3          	or	t4,t5,t4
1c01b1c2:	9eb6                	add	t4,t4,a3
1c01b1c4:	00b536b3          	sltu	a3,a0,a1
1c01b1c8:	96f6                	add	a3,a3,t4
1c01b1ca:	01f55793          	srli	a5,a0,0x1f
1c01b1ce:	0686                	slli	a3,a3,0x1
1c01b1d0:	8edd                	or	a3,a3,a5
1c01b1d2:	01c6d793          	srli	a5,a3,0x1c
1c01b1d6:	03078793          	addi	a5,a5,48
1c01b1da:	00f302a3          	sb	a5,5(t1)
1c01b1de:	ffa88a13          	addi	s4,a7,-6
1c01b1e2:	00151793          	slli	a5,a0,0x1
1c01b1e6:	01c6f6b3          	and	a3,a3,t3
1c01b1ea:	0b4050e3          	blez	s4,1c01ba8a <pos_libc_prf+0x1b22>
1c01b1ee:	01e7df13          	srli	t5,a5,0x1e
1c01b1f2:	00269e93          	slli	t4,a3,0x2
1c01b1f6:	050e                	slli	a0,a0,0x3
1c01b1f8:	00f505b3          	add	a1,a0,a5
1c01b1fc:	01df6eb3          	or	t4,t5,t4
1c01b200:	9eb6                	add	t4,t4,a3
1c01b202:	00a5b6b3          	sltu	a3,a1,a0
1c01b206:	96f6                	add	a3,a3,t4
1c01b208:	01f5d793          	srli	a5,a1,0x1f
1c01b20c:	0686                	slli	a3,a3,0x1
1c01b20e:	8edd                	or	a3,a3,a5
1c01b210:	01c6d793          	srli	a5,a3,0x1c
1c01b214:	03078793          	addi	a5,a5,48
1c01b218:	00f30323          	sb	a5,6(t1)
1c01b21c:	ff988a13          	addi	s4,a7,-7
1c01b220:	00159793          	slli	a5,a1,0x1
1c01b224:	01c6f6b3          	and	a3,a3,t3
1c01b228:	05405de3          	blez	s4,1c01ba82 <pos_libc_prf+0x1b1a>
1c01b22c:	058e                	slli	a1,a1,0x3
1c01b22e:	01e7de93          	srli	t4,a5,0x1e
1c01b232:	00269513          	slli	a0,a3,0x2
1c01b236:	97ae                	add	a5,a5,a1
1c01b238:	00aee533          	or	a0,t4,a0
1c01b23c:	9536                	add	a0,a0,a3
1c01b23e:	00b7b6b3          	sltu	a3,a5,a1
1c01b242:	96aa                	add	a3,a3,a0
1c01b244:	01f7d593          	srli	a1,a5,0x1f
1c01b248:	0686                	slli	a3,a3,0x1
1c01b24a:	8ecd                	or	a3,a3,a1
1c01b24c:	01c6d593          	srli	a1,a3,0x1c
1c01b250:	03058593          	addi	a1,a1,48
1c01b254:	0786                	slli	a5,a5,0x1
1c01b256:	00b303a3          	sb	a1,7(t1)
1c01b25a:	ff888a13          	addi	s4,a7,-8
1c01b25e:	85be                	mv	a1,a5
1c01b260:	01c6f6b3          	and	a3,a3,t3
1c01b264:	01405be3          	blez	s4,1c01ba7a <pos_libc_prf+0x1b12>
1c01b268:	078a                	slli	a5,a5,0x2
1c01b26a:	01e5de13          	srli	t3,a1,0x1e
1c01b26e:	00269513          	slli	a0,a3,0x2
1c01b272:	95be                	add	a1,a1,a5
1c01b274:	00ae6533          	or	a0,t3,a0
1c01b278:	9536                	add	a0,a0,a3
1c01b27a:	00f5b6b3          	sltu	a3,a1,a5
1c01b27e:	96aa                	add	a3,a3,a0
1c01b280:	01f5d793          	srli	a5,a1,0x1f
1c01b284:	0686                	slli	a3,a3,0x1
1c01b286:	8edd                	or	a3,a3,a5
1c01b288:	01c6d793          	srli	a5,a3,0x1c
1c01b28c:	03078793          	addi	a5,a5,48
1c01b290:	10000e37          	lui	t3,0x10000
1c01b294:	1e7d                	addi	t3,t3,-1
1c01b296:	00f30423          	sb	a5,8(t1)
1c01b29a:	ff788a13          	addi	s4,a7,-9
1c01b29e:	00159793          	slli	a5,a1,0x1
1c01b2a2:	01c6f6b3          	and	a3,a3,t3
1c01b2a6:	7d405663          	blez	s4,1c01ba72 <pos_libc_prf+0x1b0a>
1c01b2aa:	01e7df13          	srli	t5,a5,0x1e
1c01b2ae:	00269e93          	slli	t4,a3,0x2
1c01b2b2:	058e                	slli	a1,a1,0x3
1c01b2b4:	00f58533          	add	a0,a1,a5
1c01b2b8:	01df6eb3          	or	t4,t5,t4
1c01b2bc:	9eb6                	add	t4,t4,a3
1c01b2be:	00b536b3          	sltu	a3,a0,a1
1c01b2c2:	96f6                	add	a3,a3,t4
1c01b2c4:	01f55793          	srli	a5,a0,0x1f
1c01b2c8:	0686                	slli	a3,a3,0x1
1c01b2ca:	8edd                	or	a3,a3,a5
1c01b2cc:	01c6d793          	srli	a5,a3,0x1c
1c01b2d0:	03078793          	addi	a5,a5,48
1c01b2d4:	00f304a3          	sb	a5,9(t1)
1c01b2d8:	ff688a13          	addi	s4,a7,-10
1c01b2dc:	00151793          	slli	a5,a0,0x1
1c01b2e0:	01c6f6b3          	and	a3,a3,t3
1c01b2e4:	79405363          	blez	s4,1c01ba6a <pos_libc_prf+0x1b02>
1c01b2e8:	01e7df13          	srli	t5,a5,0x1e
1c01b2ec:	00269e93          	slli	t4,a3,0x2
1c01b2f0:	050e                	slli	a0,a0,0x3
1c01b2f2:	00f505b3          	add	a1,a0,a5
1c01b2f6:	01df6eb3          	or	t4,t5,t4
1c01b2fa:	9eb6                	add	t4,t4,a3
1c01b2fc:	00a5b6b3          	sltu	a3,a1,a0
1c01b300:	96f6                	add	a3,a3,t4
1c01b302:	01f5d793          	srli	a5,a1,0x1f
1c01b306:	0686                	slli	a3,a3,0x1
1c01b308:	8edd                	or	a3,a3,a5
1c01b30a:	01c6d793          	srli	a5,a3,0x1c
1c01b30e:	03078793          	addi	a5,a5,48
1c01b312:	00f30523          	sb	a5,10(t1)
1c01b316:	ff588a13          	addi	s4,a7,-11
1c01b31a:	00159793          	slli	a5,a1,0x1
1c01b31e:	01c6f6b3          	and	a3,a3,t3
1c01b322:	75405063          	blez	s4,1c01ba62 <pos_libc_prf+0x1afa>
1c01b326:	01e7df13          	srli	t5,a5,0x1e
1c01b32a:	00269e93          	slli	t4,a3,0x2
1c01b32e:	058e                	slli	a1,a1,0x3
1c01b330:	00f58533          	add	a0,a1,a5
1c01b334:	01df6eb3          	or	t4,t5,t4
1c01b338:	9eb6                	add	t4,t4,a3
1c01b33a:	00b536b3          	sltu	a3,a0,a1
1c01b33e:	96f6                	add	a3,a3,t4
1c01b340:	01f55793          	srli	a5,a0,0x1f
1c01b344:	0686                	slli	a3,a3,0x1
1c01b346:	8edd                	or	a3,a3,a5
1c01b348:	01c6d793          	srli	a5,a3,0x1c
1c01b34c:	03078793          	addi	a5,a5,48
1c01b350:	00f305a3          	sb	a5,11(t1)
1c01b354:	ff488a13          	addi	s4,a7,-12
1c01b358:	00151793          	slli	a5,a0,0x1
1c01b35c:	01c6f6b3          	and	a3,a3,t3
1c01b360:	6f405163          	blez	s4,1c01ba42 <pos_libc_prf+0x1ada>
1c01b364:	050e                	slli	a0,a0,0x3
1c01b366:	01e7de93          	srli	t4,a5,0x1e
1c01b36a:	00269813          	slli	a6,a3,0x2
1c01b36e:	00f505b3          	add	a1,a0,a5
1c01b372:	010ee833          	or	a6,t4,a6
1c01b376:	9836                	add	a6,a6,a3
1c01b378:	00a5b6b3          	sltu	a3,a1,a0
1c01b37c:	96c2                	add	a3,a3,a6
1c01b37e:	01f5d793          	srli	a5,a1,0x1f
1c01b382:	0686                	slli	a3,a3,0x1
1c01b384:	8edd                	or	a3,a3,a5
1c01b386:	01c6d793          	srli	a5,a3,0x1c
1c01b38a:	03078793          	addi	a5,a5,48
1c01b38e:	00f30623          	sb	a5,12(t1)
1c01b392:	ff388a13          	addi	s4,a7,-13
1c01b396:	00159793          	slli	a5,a1,0x1
1c01b39a:	01c6f6b3          	and	a3,a3,t3
1c01b39e:	00d30513          	addi	a0,t1,13
1c01b3a2:	480d                	li	a6,3
1c01b3a4:	0d405163          	blez	s4,1c01b466 <pos_libc_prf+0x14fe>
1c01b3a8:	01e7de93          	srli	t4,a5,0x1e
1c01b3ac:	00269813          	slli	a6,a3,0x2
1c01b3b0:	058e                	slli	a1,a1,0x3
1c01b3b2:	00f58533          	add	a0,a1,a5
1c01b3b6:	010ee833          	or	a6,t4,a6
1c01b3ba:	9836                	add	a6,a6,a3
1c01b3bc:	00b536b3          	sltu	a3,a0,a1
1c01b3c0:	96c2                	add	a3,a3,a6
1c01b3c2:	01f55793          	srli	a5,a0,0x1f
1c01b3c6:	0686                	slli	a3,a3,0x1
1c01b3c8:	8edd                	or	a3,a3,a5
1c01b3ca:	01c6d793          	srli	a5,a3,0x1c
1c01b3ce:	03078793          	addi	a5,a5,48
1c01b3d2:	00f306a3          	sb	a5,13(t1)
1c01b3d6:	ff288a13          	addi	s4,a7,-14
1c01b3da:	00151793          	slli	a5,a0,0x1
1c01b3de:	01c6f6b3          	and	a3,a3,t3
1c01b3e2:	65405c63          	blez	s4,1c01ba3a <pos_libc_prf+0x1ad2>
1c01b3e6:	050e                	slli	a0,a0,0x3
1c01b3e8:	01e7de93          	srli	t4,a5,0x1e
1c01b3ec:	00269813          	slli	a6,a3,0x2
1c01b3f0:	00f505b3          	add	a1,a0,a5
1c01b3f4:	010ee833          	or	a6,t4,a6
1c01b3f8:	9836                	add	a6,a6,a3
1c01b3fa:	00a5b6b3          	sltu	a3,a1,a0
1c01b3fe:	96c2                	add	a3,a3,a6
1c01b400:	01f5d793          	srli	a5,a1,0x1f
1c01b404:	0686                	slli	a3,a3,0x1
1c01b406:	8edd                	or	a3,a3,a5
1c01b408:	01c6d793          	srli	a5,a3,0x1c
1c01b40c:	03078793          	addi	a5,a5,48
1c01b410:	00f30723          	sb	a5,14(t1)
1c01b414:	ff188a13          	addi	s4,a7,-15
1c01b418:	00159793          	slli	a5,a1,0x1
1c01b41c:	01c6f6b3          	and	a3,a3,t3
1c01b420:	00f30513          	addi	a0,t1,15
1c01b424:	4805                	li	a6,1
1c01b426:	05405063          	blez	s4,1c01b466 <pos_libc_prf+0x14fe>
1c01b42a:	01e7d813          	srli	a6,a5,0x1e
1c01b42e:	058e                	slli	a1,a1,0x3
1c01b430:	00269513          	slli	a0,a3,0x2
1c01b434:	97ae                	add	a5,a5,a1
1c01b436:	00a86533          	or	a0,a6,a0
1c01b43a:	9536                	add	a0,a0,a3
1c01b43c:	00b7b6b3          	sltu	a3,a5,a1
1c01b440:	96aa                	add	a3,a3,a0
1c01b442:	01f7d593          	srli	a1,a5,0x1f
1c01b446:	0686                	slli	a3,a3,0x1
1c01b448:	8ecd                	or	a3,a3,a1
1c01b44a:	01c6d593          	srli	a1,a3,0x1c
1c01b44e:	03058593          	addi	a1,a1,48
1c01b452:	01030513          	addi	a0,t1,16
1c01b456:	0786                	slli	a5,a5,0x1
1c01b458:	01c6f6b3          	and	a3,a3,t3
1c01b45c:	00b307a3          	sb	a1,15(t1)
1c01b460:	ff088a13          	addi	s4,a7,-16
1c01b464:	4801                	li	a6,0
1c01b466:	4712                	lw	a4,4(sp)
1c01b468:	4e070663          	beqz	a4,1c01b954 <pos_libc_prf+0x19ec>
1c01b46c:	02e00893          	li	a7,46
1c01b470:	01150023          	sb	a7,0(a0)
1c01b474:	8326                	mv	t1,s1
1c01b476:	cc02                	sw	zero,24(sp)
1c01b478:	00150593          	addi	a1,a0,1
1c01b47c:	4881                	li	a7,0
1c01b47e:	62605263          	blez	t1,1c01baa2 <pos_libc_prf+0x1b3a>
1c01b482:	62080063          	beqz	a6,1c01baa2 <pos_libc_prf+0x1b3a>
1c01b486:	00279513          	slli	a0,a5,0x2
1c01b48a:	01e7de93          	srli	t4,a5,0x1e
1c01b48e:	00269e13          	slli	t3,a3,0x2
1c01b492:	97aa                	add	a5,a5,a0
1c01b494:	01ceee33          	or	t3,t4,t3
1c01b498:	96f2                	add	a3,a3,t3
1c01b49a:	00a7beb3          	sltu	t4,a5,a0
1c01b49e:	9eb6                	add	t4,t4,a3
1c01b4a0:	0e86                	slli	t4,t4,0x1
1c01b4a2:	01f7d693          	srli	a3,a5,0x1f
1c01b4a6:	01d6eeb3          	or	t4,a3,t4
1c01b4aa:	01ced693          	srli	a3,t4,0x1c
1c01b4ae:	03068693          	addi	a3,a3,48
1c01b4b2:	00d58023          	sb	a3,0(a1)
1c01b4b6:	fff30493          	addi	s1,t1,-1
1c01b4ba:	00158513          	addi	a0,a1,1
1c01b4be:	00179693          	slli	a3,a5,0x1
1c01b4c2:	42048263          	beqz	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b4c6:	42182063          	p.beqimm	a6,1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b4ca:	10000e37          	lui	t3,0x10000
1c01b4ce:	1e7d                	addi	t3,t3,-1
1c01b4d0:	01cefeb3          	and	t4,t4,t3
1c01b4d4:	078e                	slli	a5,a5,0x3
1c01b4d6:	01e6df13          	srli	t5,a3,0x1e
1c01b4da:	002e9513          	slli	a0,t4,0x2
1c01b4de:	96be                	add	a3,a3,a5
1c01b4e0:	00af6533          	or	a0,t5,a0
1c01b4e4:	9eaa                	add	t4,t4,a0
1c01b4e6:	00f6b7b3          	sltu	a5,a3,a5
1c01b4ea:	97f6                	add	a5,a5,t4
1c01b4ec:	01f6d513          	srli	a0,a3,0x1f
1c01b4f0:	0786                	slli	a5,a5,0x1
1c01b4f2:	8fc9                	or	a5,a5,a0
1c01b4f4:	01c7d513          	srli	a0,a5,0x1c
1c01b4f8:	03050513          	addi	a0,a0,48
1c01b4fc:	00a580a3          	sb	a0,1(a1)
1c01b500:	ffe30493          	addi	s1,t1,-2
1c01b504:	00258513          	addi	a0,a1,2
1c01b508:	00169e93          	slli	t4,a3,0x1
1c01b50c:	01c7f7b3          	and	a5,a5,t3
1c01b510:	3c048b63          	beqz	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b514:	3c282963          	p.beqimm	a6,2,1c01b8e6 <pos_libc_prf+0x197e>
1c01b518:	01eedf13          	srli	t5,t4,0x1e
1c01b51c:	068e                	slli	a3,a3,0x3
1c01b51e:	00279513          	slli	a0,a5,0x2
1c01b522:	9eb6                	add	t4,t4,a3
1c01b524:	00af6533          	or	a0,t5,a0
1c01b528:	00deb6b3          	sltu	a3,t4,a3
1c01b52c:	97aa                	add	a5,a5,a0
1c01b52e:	97b6                	add	a5,a5,a3
1c01b530:	0786                	slli	a5,a5,0x1
1c01b532:	01fed693          	srli	a3,t4,0x1f
1c01b536:	8fd5                	or	a5,a5,a3
1c01b538:	01c7d693          	srli	a3,a5,0x1c
1c01b53c:	03068693          	addi	a3,a3,48
1c01b540:	00d58123          	sb	a3,2(a1)
1c01b544:	ffd30493          	addi	s1,t1,-3
1c01b548:	00358513          	addi	a0,a1,3
1c01b54c:	001e9693          	slli	a3,t4,0x1
1c01b550:	01c7ff33          	and	t5,a5,t3
1c01b554:	38905963          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b558:	38382763          	p.beqimm	a6,3,1c01b8e6 <pos_libc_prf+0x197e>
1c01b55c:	003e9513          	slli	a0,t4,0x3
1c01b560:	01e6d793          	srli	a5,a3,0x1e
1c01b564:	002f1e93          	slli	t4,t5,0x2
1c01b568:	96aa                	add	a3,a3,a0
1c01b56a:	01d7eeb3          	or	t4,a5,t4
1c01b56e:	9efa                	add	t4,t4,t5
1c01b570:	00a6b7b3          	sltu	a5,a3,a0
1c01b574:	97f6                	add	a5,a5,t4
1c01b576:	01f6d513          	srli	a0,a3,0x1f
1c01b57a:	0786                	slli	a5,a5,0x1
1c01b57c:	8fc9                	or	a5,a5,a0
1c01b57e:	01c7d513          	srli	a0,a5,0x1c
1c01b582:	03050513          	addi	a0,a0,48
1c01b586:	00a581a3          	sb	a0,3(a1)
1c01b58a:	ffc30493          	addi	s1,t1,-4
1c01b58e:	00458513          	addi	a0,a1,4
1c01b592:	00169e93          	slli	t4,a3,0x1
1c01b596:	01c7fe33          	and	t3,a5,t3
1c01b59a:	34905663          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b59e:	34482463          	p.beqimm	a6,4,1c01b8e6 <pos_libc_prf+0x197e>
1c01b5a2:	068e                	slli	a3,a3,0x3
1c01b5a4:	01eed793          	srli	a5,t4,0x1e
1c01b5a8:	002e1513          	slli	a0,t3,0x2
1c01b5ac:	9eb6                	add	t4,t4,a3
1c01b5ae:	8d5d                	or	a0,a0,a5
1c01b5b0:	9e2a                	add	t3,t3,a0
1c01b5b2:	00deb7b3          	sltu	a5,t4,a3
1c01b5b6:	97f2                	add	a5,a5,t3
1c01b5b8:	01fed693          	srli	a3,t4,0x1f
1c01b5bc:	0786                	slli	a5,a5,0x1
1c01b5be:	8fd5                	or	a5,a5,a3
1c01b5c0:	01c7d693          	srli	a3,a5,0x1c
1c01b5c4:	03068693          	addi	a3,a3,48
1c01b5c8:	00d58223          	sb	a3,4(a1)
1c01b5cc:	ffb30493          	addi	s1,t1,-5
1c01b5d0:	00558513          	addi	a0,a1,5
1c01b5d4:	001e9693          	slli	a3,t4,0x1
1c01b5d8:	30905763          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b5dc:	30582563          	p.beqimm	a6,5,1c01b8e6 <pos_libc_prf+0x197e>
1c01b5e0:	10000e37          	lui	t3,0x10000
1c01b5e4:	1e7d                	addi	t3,t3,-1
1c01b5e6:	01c7f7b3          	and	a5,a5,t3
1c01b5ea:	01e6de93          	srli	t4,a3,0x1e
1c01b5ee:	00269513          	slli	a0,a3,0x2
1c01b5f2:	00279f13          	slli	t5,a5,0x2
1c01b5f6:	96aa                	add	a3,a3,a0
1c01b5f8:	01eeef33          	or	t5,t4,t5
1c01b5fc:	00a6b533          	sltu	a0,a3,a0
1c01b600:	97fa                	add	a5,a5,t5
1c01b602:	97aa                	add	a5,a5,a0
1c01b604:	00179e93          	slli	t4,a5,0x1
1c01b608:	01f6d513          	srli	a0,a3,0x1f
1c01b60c:	01d56eb3          	or	t4,a0,t4
1c01b610:	01ced793          	srli	a5,t4,0x1c
1c01b614:	03078793          	addi	a5,a5,48
1c01b618:	00f582a3          	sb	a5,5(a1)
1c01b61c:	ffa30493          	addi	s1,t1,-6
1c01b620:	00658513          	addi	a0,a1,6
1c01b624:	00169793          	slli	a5,a3,0x1
1c01b628:	01cefeb3          	and	t4,t4,t3
1c01b62c:	2a905d63          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b630:	2a682b63          	p.beqimm	a6,6,1c01b8e6 <pos_libc_prf+0x197e>
1c01b634:	068e                	slli	a3,a3,0x3
1c01b636:	01e7df13          	srli	t5,a5,0x1e
1c01b63a:	002e9513          	slli	a0,t4,0x2
1c01b63e:	97b6                	add	a5,a5,a3
1c01b640:	00af6533          	or	a0,t5,a0
1c01b644:	9eaa                	add	t4,t4,a0
1c01b646:	00d7b6b3          	sltu	a3,a5,a3
1c01b64a:	96f6                	add	a3,a3,t4
1c01b64c:	01f7d513          	srli	a0,a5,0x1f
1c01b650:	00169e93          	slli	t4,a3,0x1
1c01b654:	01d56eb3          	or	t4,a0,t4
1c01b658:	01ced693          	srli	a3,t4,0x1c
1c01b65c:	03068693          	addi	a3,a3,48
1c01b660:	00d58323          	sb	a3,6(a1)
1c01b664:	ff930493          	addi	s1,t1,-7
1c01b668:	00758513          	addi	a0,a1,7
1c01b66c:	00179693          	slli	a3,a5,0x1
1c01b670:	01cefeb3          	and	t4,t4,t3
1c01b674:	26905963          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b678:	26782763          	p.beqimm	a6,7,1c01b8e6 <pos_libc_prf+0x197e>
1c01b67c:	078e                	slli	a5,a5,0x3
1c01b67e:	01e6df13          	srli	t5,a3,0x1e
1c01b682:	002e9513          	slli	a0,t4,0x2
1c01b686:	96be                	add	a3,a3,a5
1c01b688:	00af6533          	or	a0,t5,a0
1c01b68c:	9eaa                	add	t4,t4,a0
1c01b68e:	00f6b7b3          	sltu	a5,a3,a5
1c01b692:	97f6                	add	a5,a5,t4
1c01b694:	01f6d513          	srli	a0,a3,0x1f
1c01b698:	00179e93          	slli	t4,a5,0x1
1c01b69c:	01d56eb3          	or	t4,a0,t4
1c01b6a0:	01ced793          	srli	a5,t4,0x1c
1c01b6a4:	03078793          	addi	a5,a5,48
1c01b6a8:	00f583a3          	sb	a5,7(a1)
1c01b6ac:	ff830493          	addi	s1,t1,-8
1c01b6b0:	00858513          	addi	a0,a1,8
1c01b6b4:	00169793          	slli	a5,a3,0x1
1c01b6b8:	01cefeb3          	and	t4,t4,t3
1c01b6bc:	22905563          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b6c0:	22882363          	p.beqimm	a6,8,1c01b8e6 <pos_libc_prf+0x197e>
1c01b6c4:	01e7df13          	srli	t5,a5,0x1e
1c01b6c8:	068e                	slli	a3,a3,0x3
1c01b6ca:	002e9513          	slli	a0,t4,0x2
1c01b6ce:	97b6                	add	a5,a5,a3
1c01b6d0:	00af6533          	or	a0,t5,a0
1c01b6d4:	9eaa                	add	t4,t4,a0
1c01b6d6:	00d7b6b3          	sltu	a3,a5,a3
1c01b6da:	96f6                	add	a3,a3,t4
1c01b6dc:	01f7d513          	srli	a0,a5,0x1f
1c01b6e0:	0686                	slli	a3,a3,0x1
1c01b6e2:	8ec9                	or	a3,a3,a0
1c01b6e4:	01c6d513          	srli	a0,a3,0x1c
1c01b6e8:	03050513          	addi	a0,a0,48
1c01b6ec:	00a58423          	sb	a0,8(a1)
1c01b6f0:	ff730493          	addi	s1,t1,-9
1c01b6f4:	00958513          	addi	a0,a1,9
1c01b6f8:	00179f13          	slli	t5,a5,0x1
1c01b6fc:	01c6feb3          	and	t4,a3,t3
1c01b700:	1e905363          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b704:	1e982163          	p.beqimm	a6,9,1c01b8e6 <pos_libc_prf+0x197e>
1c01b708:	078e                	slli	a5,a5,0x3
1c01b70a:	01ef5293          	srli	t0,t5,0x1e
1c01b70e:	002e9513          	slli	a0,t4,0x2
1c01b712:	01e786b3          	add	a3,a5,t5
1c01b716:	00a2e533          	or	a0,t0,a0
1c01b71a:	00f6b7b3          	sltu	a5,a3,a5
1c01b71e:	9576                	add	a0,a0,t4
1c01b720:	97aa                	add	a5,a5,a0
1c01b722:	0786                	slli	a5,a5,0x1
1c01b724:	01f6d513          	srli	a0,a3,0x1f
1c01b728:	8fc9                	or	a5,a5,a0
1c01b72a:	01c7d513          	srli	a0,a5,0x1c
1c01b72e:	03050513          	addi	a0,a0,48
1c01b732:	00a584a3          	sb	a0,9(a1)
1c01b736:	ff630493          	addi	s1,t1,-10
1c01b73a:	00a58513          	addi	a0,a1,10
1c01b73e:	0686                	slli	a3,a3,0x1
1c01b740:	01c7f7b3          	and	a5,a5,t3
1c01b744:	1a905163          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b748:	18a82f63          	p.beqimm	a6,10,1c01b8e6 <pos_libc_prf+0x197e>
1c01b74c:	01e6de93          	srli	t4,a3,0x1e
1c01b750:	00269513          	slli	a0,a3,0x2
1c01b754:	00279e13          	slli	t3,a5,0x2
1c01b758:	96aa                	add	a3,a3,a0
1c01b75a:	01ceee33          	or	t3,t4,t3
1c01b75e:	00a6b533          	sltu	a0,a3,a0
1c01b762:	97f2                	add	a5,a5,t3
1c01b764:	97aa                	add	a5,a5,a0
1c01b766:	00179e93          	slli	t4,a5,0x1
1c01b76a:	01f6d513          	srli	a0,a3,0x1f
1c01b76e:	01d56eb3          	or	t4,a0,t4
1c01b772:	01ced793          	srli	a5,t4,0x1c
1c01b776:	03078793          	addi	a5,a5,48
1c01b77a:	10000e37          	lui	t3,0x10000
1c01b77e:	1e7d                	addi	t3,t3,-1
1c01b780:	00f58523          	sb	a5,10(a1)
1c01b784:	ff530493          	addi	s1,t1,-11
1c01b788:	00b58513          	addi	a0,a1,11
1c01b78c:	00169793          	slli	a5,a3,0x1
1c01b790:	01cefeb3          	and	t4,t4,t3
1c01b794:	14905963          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b798:	14b82763          	p.beqimm	a6,11,1c01b8e6 <pos_libc_prf+0x197e>
1c01b79c:	068e                	slli	a3,a3,0x3
1c01b79e:	01e7df13          	srli	t5,a5,0x1e
1c01b7a2:	002e9513          	slli	a0,t4,0x2
1c01b7a6:	97b6                	add	a5,a5,a3
1c01b7a8:	00af6533          	or	a0,t5,a0
1c01b7ac:	9eaa                	add	t4,t4,a0
1c01b7ae:	00d7b6b3          	sltu	a3,a5,a3
1c01b7b2:	96f6                	add	a3,a3,t4
1c01b7b4:	01f7d513          	srli	a0,a5,0x1f
1c01b7b8:	0686                	slli	a3,a3,0x1
1c01b7ba:	8ec9                	or	a3,a3,a0
1c01b7bc:	01c6d513          	srli	a0,a3,0x1c
1c01b7c0:	03050513          	addi	a0,a0,48
1c01b7c4:	00a585a3          	sb	a0,11(a1)
1c01b7c8:	ff430493          	addi	s1,t1,-12
1c01b7cc:	00c58513          	addi	a0,a1,12
1c01b7d0:	00179e93          	slli	t4,a5,0x1
1c01b7d4:	10905963          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b7d8:	10c82763          	p.beqimm	a6,12,1c01b8e6 <pos_libc_prf+0x197e>
1c01b7dc:	01c6f6b3          	and	a3,a3,t3
1c01b7e0:	01eedf13          	srli	t5,t4,0x1e
1c01b7e4:	078e                	slli	a5,a5,0x3
1c01b7e6:	00269513          	slli	a0,a3,0x2
1c01b7ea:	9ebe                	add	t4,t4,a5
1c01b7ec:	00af6533          	or	a0,t5,a0
1c01b7f0:	96aa                	add	a3,a3,a0
1c01b7f2:	00feb7b3          	sltu	a5,t4,a5
1c01b7f6:	97b6                	add	a5,a5,a3
1c01b7f8:	01fed513          	srli	a0,t4,0x1f
1c01b7fc:	00179693          	slli	a3,a5,0x1
1c01b800:	8ec9                	or	a3,a3,a0
1c01b802:	01c6d793          	srli	a5,a3,0x1c
1c01b806:	03078793          	addi	a5,a5,48
1c01b80a:	00f58623          	sb	a5,12(a1)
1c01b80e:	ff330493          	addi	s1,t1,-13
1c01b812:	00d58513          	addi	a0,a1,13
1c01b816:	001e9793          	slli	a5,t4,0x1
1c01b81a:	01c6ff33          	and	t5,a3,t3
1c01b81e:	0c905463          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b822:	0cd82263          	p.beqimm	a6,13,1c01b8e6 <pos_libc_prf+0x197e>
1c01b826:	003e9693          	slli	a3,t4,0x3
1c01b82a:	002f1513          	slli	a0,t5,0x2
1c01b82e:	01e7de93          	srli	t4,a5,0x1e
1c01b832:	00aee533          	or	a0,t4,a0
1c01b836:	97b6                	add	a5,a5,a3
1c01b838:	957a                	add	a0,a0,t5
1c01b83a:	00d7b6b3          	sltu	a3,a5,a3
1c01b83e:	96aa                	add	a3,a3,a0
1c01b840:	0686                	slli	a3,a3,0x1
1c01b842:	01f7d513          	srli	a0,a5,0x1f
1c01b846:	8ec9                	or	a3,a3,a0
1c01b848:	01c6d513          	srli	a0,a3,0x1c
1c01b84c:	03050513          	addi	a0,a0,48
1c01b850:	00a586a3          	sb	a0,13(a1)
1c01b854:	ff230493          	addi	s1,t1,-14
1c01b858:	00e58513          	addi	a0,a1,14
1c01b85c:	00179f13          	slli	t5,a5,0x1
1c01b860:	01c6feb3          	and	t4,a3,t3
1c01b864:	08905163          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b868:	06e82f63          	p.beqimm	a6,14,1c01b8e6 <pos_libc_prf+0x197e>
1c01b86c:	078e                	slli	a5,a5,0x3
1c01b86e:	002e9513          	slli	a0,t4,0x2
1c01b872:	01ef5293          	srli	t0,t5,0x1e
1c01b876:	01e786b3          	add	a3,a5,t5
1c01b87a:	00a2e533          	or	a0,t0,a0
1c01b87e:	9576                	add	a0,a0,t4
1c01b880:	00f6b7b3          	sltu	a5,a3,a5
1c01b884:	97aa                	add	a5,a5,a0
1c01b886:	00179e93          	slli	t4,a5,0x1
1c01b88a:	01f6d513          	srli	a0,a3,0x1f
1c01b88e:	01d56eb3          	or	t4,a0,t4
1c01b892:	01ced793          	srli	a5,t4,0x1c
1c01b896:	03078793          	addi	a5,a5,48
1c01b89a:	00f58723          	sb	a5,14(a1)
1c01b89e:	ff130493          	addi	s1,t1,-15
1c01b8a2:	00f58513          	addi	a0,a1,15
1c01b8a6:	00169793          	slli	a5,a3,0x1
1c01b8aa:	01cefe33          	and	t3,t4,t3
1c01b8ae:	02905c63          	blez	s1,1c01b8e6 <pos_libc_prf+0x197e>
1c01b8b2:	46c1                	li	a3,16
1c01b8b4:	02d81963          	bne	a6,a3,1c01b8e6 <pos_libc_prf+0x197e>
1c01b8b8:	00279513          	slli	a0,a5,0x2
1c01b8bc:	01e7d813          	srli	a6,a5,0x1e
1c01b8c0:	002e1693          	slli	a3,t3,0x2
1c01b8c4:	97aa                	add	a5,a5,a0
1c01b8c6:	00d866b3          	or	a3,a6,a3
1c01b8ca:	00a7b7b3          	sltu	a5,a5,a0
1c01b8ce:	9e36                	add	t3,t3,a3
1c01b8d0:	97f2                	add	a5,a5,t3
1c01b8d2:	0786                	slli	a5,a5,0x1
1c01b8d4:	83f1                	srli	a5,a5,0x1c
1c01b8d6:	03078793          	addi	a5,a5,48
1c01b8da:	01058513          	addi	a0,a1,16
1c01b8de:	00f587a3          	sb	a5,15(a1)
1c01b8e2:	ff030493          	addi	s1,t1,-16
1c01b8e6:	47e2                	lw	a5,24(sp)
1c01b8e8:	014785b3          	add	a1,a5,s4
1c01b8ec:	9c0f9b63          	bnez	t6,1c01aac2 <pos_libc_prf+0xb5a>
1c01b8f0:	95a6                	add	a1,a1,s1
1c01b8f2:	8ca6                	mv	s9,s1
1c01b8f4:	9faff06f          	j	1c01aaee <pos_libc_prf+0xb86>
1c01b8f8:	02d00793          	li	a5,45
1c01b8fc:	411008b3          	neg	a7,a7
1c01b900:	00f500a3          	sb	a5,1(a0)
1c01b904:	db4ff06f          	j	1c01aeb8 <pos_libc_prf+0xf50>
1c01b908:	41fad793          	srai	a5,s5,0x1f
1c01b90c:	0156a023          	sw	s5,0(a3)
1c01b910:	c2dc                	sw	a5,4(a3)
1c01b912:	e94fe06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01b916:	4a62                	lw	s4,24(sp)
1c01b918:	a039                	j	1c01b926 <pos_libc_prf+0x19be>
1c01b91a:	9982                	jalr	s3
1c01b91c:	1a7d                	addi	s4,s4,-1
1c01b91e:	01f53463          	p.bneimm	a0,-1,1c01b926 <pos_libc_prf+0x19be>
1c01b922:	fbcfe06f          	j	1c01a0de <pos_libc_prf+0x176>
1c01b926:	85de                	mv	a1,s7
1c01b928:	03000513          	li	a0,48
1c01b92c:	ff4047e3          	bgtz	s4,1c01b91a <pos_libc_prf+0x19b2>
1c01b930:	4762                	lw	a4,24(sp)
1c01b932:	40e90933          	sub	s2,s2,a4
1c01b936:	939fe06f          	j	1c01a26e <pos_libc_prf+0x306>
1c01b93a:	4741                	li	a4,16
1c01b93c:	04e4cf33          	p.min	t5,s1,a4
1c01b940:	1f7d                	addi	t5,t5,-1
1c01b942:	84b6                	mv	s1,a3
1c01b944:	4f81                	li	t6,0
1c01b946:	c67fe06f          	j	1c01a5ac <pos_libc_prf+0x644>
1c01b94a:	104c                	addi	a1,sp,36
1c01b94c:	4901                	li	s2,0
1c01b94e:	86ae                	mv	a3,a1
1c01b950:	ed8ff06f          	j	1c01b028 <pos_libc_prf+0x10c0>
1c01b954:	0c904463          	bgtz	s1,1c01ba1c <pos_libc_prf+0x1ab4>
1c01b958:	4881                	li	a7,0
1c01b95a:	cc02                	sw	zero,24(sp)
1c01b95c:	b769                	j	1c01b8e6 <pos_libc_prf+0x197e>
1c01b95e:	4712                	lw	a4,4(sp)
1c01b960:	4f81                	li	t6,0
1c01b962:	e319                	bnez	a4,1c01b968 <pos_libc_prf+0x1a00>
1c01b964:	c3dfe06f          	j	1c01a5a0 <pos_libc_prf+0x638>
1c01b968:	4f01                	li	t5,0
1c01b96a:	4f81                	li	t6,0
1c01b96c:	c41fe06f          	j	1c01a5ac <pos_libc_prf+0x644>
1c01b970:	020102a3          	sb	zero,37(sp)
1c01b974:	c202                	sw	zero,4(sp)
1c01b976:	4905                	li	s2,1
1c01b978:	875fe06f          	j	1c01a1ec <pos_libc_prf+0x284>
1c01b97c:	06600d93          	li	s11,102
1c01b980:	d1cff06f          	j	1c01ae9c <pos_libc_prf+0xf34>
1c01b984:	03000593          	li	a1,48
1c01b988:	4712                	lw	a4,4(sp)
1c01b98a:	00b30023          	sb	a1,0(t1)
1c01b98e:	e335                	bnez	a4,1c01b9f2 <pos_libc_prf+0x1a8a>
1c01b990:	06905b63          	blez	s1,1c01ba06 <pos_libc_prf+0x1a9e>
1c01b994:	02e00593          	li	a1,46
1c01b998:	00b300a3          	sb	a1,1(t1)
1c01b99c:	00230513          	addi	a0,t1,2
1c01b9a0:	4841                	li	a6,16
1c01b9a2:	08088363          	beqz	a7,1c01ba28 <pos_libc_prf+0x1ac0>
1c01b9a6:	41100733          	neg	a4,a7
1c01b9aa:	04974733          	p.min	a4,a4,s1
1c01b9ae:	cc3a                	sw	a4,24(sp)
1c01b9b0:	40e48333          	sub	t1,s1,a4
1c01b9b4:	85aa                	mv	a1,a0
1c01b9b6:	4a01                	li	s4,0
1c01b9b8:	4841                	li	a6,16
1c01b9ba:	ac6044e3          	bgtz	t1,1c01b482 <pos_libc_prf+0x151a>
1c01b9be:	a0d5                	j	1c01baa2 <pos_libc_prf+0x1b3a>
1c01b9c0:	4a72                	lw	s4,28(sp)
1c01b9c2:	de4fe06f          	j	1c019fa6 <pos_libc_prf+0x3e>
1c01b9c6:	6799                	lui	a5,0x6
1c01b9c8:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c01b9cc:	00f31023          	sh	a5,0(t1)
1c01b9d0:	06e00793          	li	a5,110
1c01b9d4:	00f30123          	sb	a5,2(t1)
1c01b9d8:	c38ff06f          	j	1c01ae10 <pos_libc_prf+0xea8>
1c01b9dc:	679d                	lui	a5,0x7
1c01b9de:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c01b9e2:	00f31023          	sh	a5,0(t1)
1c01b9e6:	06600793          	li	a5,102
1c01b9ea:	00f30123          	sb	a5,2(t1)
1c01b9ee:	c22ff06f          	j	1c01ae10 <pos_libc_prf+0xea8>
1c01b9f2:	02e00593          	li	a1,46
1c01b9f6:	00b300a3          	sb	a1,1(t1)
1c01b9fa:	00230513          	addi	a0,t1,2
1c01b9fe:	00088763          	beqz	a7,1c01ba0c <pos_libc_prf+0x1aa4>
1c01ba02:	fa9042e3          	bgtz	s1,1c01b9a6 <pos_libc_prf+0x1a3e>
1c01ba06:	4a01                	li	s4,0
1c01ba08:	cc02                	sw	zero,24(sp)
1c01ba0a:	bdf1                	j	1c01b8e6 <pos_libc_prf+0x197e>
1c01ba0c:	fe905de3          	blez	s1,1c01ba06 <pos_libc_prf+0x1a9e>
1c01ba10:	85aa                	mv	a1,a0
1c01ba12:	4a01                	li	s4,0
1c01ba14:	cc02                	sw	zero,24(sp)
1c01ba16:	8326                	mv	t1,s1
1c01ba18:	4841                	li	a6,16
1c01ba1a:	b4b5                	j	1c01b486 <pos_libc_prf+0x151e>
1c01ba1c:	02e00593          	li	a1,46
1c01ba20:	00b50023          	sb	a1,0(a0)
1c01ba24:	88d2                	mv	a7,s4
1c01ba26:	0505                	addi	a0,a0,1
1c01ba28:	8a46                	mv	s4,a7
1c01ba2a:	85aa                	mv	a1,a0
1c01ba2c:	8326                	mv	t1,s1
1c01ba2e:	cc02                	sw	zero,24(sp)
1c01ba30:	4881                	li	a7,0
1c01ba32:	bc81                	j	1c01b482 <pos_libc_prf+0x151a>
1c01ba34:	4a01                	li	s4,0
1c01ba36:	483d                	li	a6,15
1c01ba38:	b43d                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba3a:	00e30513          	addi	a0,t1,14
1c01ba3e:	4809                	li	a6,2
1c01ba40:	b41d                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba42:	00c30513          	addi	a0,t1,12
1c01ba46:	b405                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba48:	c0200813          	li	a6,-1022
1c01ba4c:	a62ff06f          	j	1c01acae <pos_libc_prf+0xd46>
1c01ba50:	00330513          	addi	a0,t1,3
1c01ba54:	4835                	li	a6,13
1c01ba56:	bc01                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba58:	00230513          	addi	a0,t1,2
1c01ba5c:	4a01                	li	s4,0
1c01ba5e:	4839                	li	a6,14
1c01ba60:	b419                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba62:	00b30513          	addi	a0,t1,11
1c01ba66:	4815                	li	a6,5
1c01ba68:	bafd                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba6a:	00a30513          	addi	a0,t1,10
1c01ba6e:	4819                	li	a6,6
1c01ba70:	badd                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba72:	00930513          	addi	a0,t1,9
1c01ba76:	481d                	li	a6,7
1c01ba78:	b2fd                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba7a:	00830513          	addi	a0,t1,8
1c01ba7e:	4821                	li	a6,8
1c01ba80:	b2dd                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba82:	00730513          	addi	a0,t1,7
1c01ba86:	4825                	li	a6,9
1c01ba88:	baf9                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba8a:	00630513          	addi	a0,t1,6
1c01ba8e:	4829                	li	a6,10
1c01ba90:	bad9                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba92:	00530513          	addi	a0,t1,5
1c01ba96:	482d                	li	a6,11
1c01ba98:	b2f9                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01ba9a:	00430513          	addi	a0,t1,4
1c01ba9e:	4831                	li	a6,12
1c01baa0:	b2d9                	j	1c01b466 <pos_libc_prf+0x14fe>
1c01baa2:	849a                	mv	s1,t1
1c01baa4:	852e                	mv	a0,a1
1c01baa6:	b581                	j	1c01b8e6 <pos_libc_prf+0x197e>
1c01baa8:	41990933          	sub	s2,s2,s9
1c01baac:	8f3fe06f          	j	1c01a39e <pos_libc_prf+0x436>
1c01bab0:	00d78513          	addi	a0,a5,13
1c01bab4:	804ff06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bab8:	00c78513          	addi	a0,a5,12
1c01babc:	ffdfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bac0:	00b78513          	addi	a0,a5,11
1c01bac4:	ff5fe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bac8:	00978513          	addi	a0,a5,9
1c01bacc:	fedfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bad0:	00878513          	addi	a0,a5,8
1c01bad4:	fe5fe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bad8:	00778513          	addi	a0,a5,7
1c01badc:	fddfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bae0:	00678513          	addi	a0,a5,6
1c01bae4:	fd5fe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bae8:	00578513          	addi	a0,a5,5
1c01baec:	fcdfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01baf0:	00478513          	addi	a0,a5,4
1c01baf4:	fc5fe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01baf8:	00378513          	addi	a0,a5,3
1c01bafc:	fbdfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bb00:	00278513          	addi	a0,a5,2
1c01bb04:	fb5fe06f          	j	1c01aab8 <pos_libc_prf+0xb50>
1c01bb08:	00178513          	addi	a0,a5,1
1c01bb0c:	4c81                	li	s9,0
1c01bb0e:	fabfe06f          	j	1c01aab8 <pos_libc_prf+0xb50>

1c01bb12 <pos_init_start>:
1c01bb12:	1141                	addi	sp,sp,-16
1c01bb14:	c422                	sw	s0,8(sp)
1c01bb16:	1c001437          	lui	s0,0x1c001
1c01bb1a:	c606                	sw	ra,12(sp)
1c01bb1c:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c01bb20:	2245                	jal	1c01bcc0 <pos_irq_init>
1c01bb22:	b66fe0ef          	jal	ra,1c019e88 <pos_soc_init>
1c01bb26:	22f1                	jal	1c01bcf2 <pos_soc_event_init>
1c01bb28:	20ed                	jal	1c01bc12 <pos_allocs_init>
1c01bb2a:	208d                	jal	1c01bb8c <pos_sched_init>
1c01bb2c:	405c                	lw	a5,4(s0)
1c01bb2e:	c791                	beqz	a5,1c01bb3a <pos_init_start+0x28>
1c01bb30:	0421                	addi	s0,s0,8
1c01bb32:	9782                	jalr	a5
1c01bb34:	0044278b          	p.lw	a5,4(s0!)
1c01bb38:	ffed                	bnez	a5,1c01bb32 <pos_init_start+0x20>
1c01bb3a:	bf8fe0ef          	jal	ra,1c019f32 <pos_io_start>
1c01bb3e:	300467f3          	csrrsi	a5,mstatus,8
1c01bb42:	40b2                	lw	ra,12(sp)
1c01bb44:	4422                	lw	s0,8(sp)
1c01bb46:	0141                	addi	sp,sp,16
1c01bb48:	8082                	ret

1c01bb4a <pos_init_stop>:
1c01bb4a:	1141                	addi	sp,sp,-16
1c01bb4c:	c422                	sw	s0,8(sp)
1c01bb4e:	1c001437          	lui	s0,0x1c001
1c01bb52:	c606                	sw	ra,12(sp)
1c01bb54:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c01bb58:	bdefe0ef          	jal	ra,1c019f36 <pos_io_stop>
1c01bb5c:	405c                	lw	a5,4(s0)
1c01bb5e:	c791                	beqz	a5,1c01bb6a <pos_init_stop+0x20>
1c01bb60:	0421                	addi	s0,s0,8
1c01bb62:	9782                	jalr	a5
1c01bb64:	0044278b          	p.lw	a5,4(s0!)
1c01bb68:	ffed                	bnez	a5,1c01bb62 <pos_init_stop+0x18>
1c01bb6a:	40b2                	lw	ra,12(sp)
1c01bb6c:	4422                	lw	s0,8(sp)
1c01bb6e:	0141                	addi	sp,sp,16
1c01bb70:	8082                	ret

1c01bb72 <pos_cbsys_add>:
1c01bb72:	00259793          	slli	a5,a1,0x2
1c01bb76:	1c0015b7          	lui	a1,0x1c001
1c01bb7a:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c01bb7e:	95be                	add	a1,a1,a5
1c01bb80:	419c                	lw	a5,0(a1)
1c01bb82:	c110                	sw	a2,0(a0)
1c01bb84:	c154                	sw	a3,4(a0)
1c01bb86:	c51c                	sw	a5,8(a0)
1c01bb88:	c188                	sw	a0,0(a1)
1c01bb8a:	8082                	ret

1c01bb8c <pos_sched_init>:
1c01bb8c:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c01bb90:	8082                	ret

1c01bb92 <pos_alloc_init>:
1c01bb92:	00758793          	addi	a5,a1,7
1c01bb96:	c407b7b3          	p.bclr	a5,a5,2,0
1c01bb9a:	40b785b3          	sub	a1,a5,a1
1c01bb9e:	c11c                	sw	a5,0(a0)
1c01bba0:	8e0d                	sub	a2,a2,a1
1c01bba2:	00c05763          	blez	a2,1c01bbb0 <pos_alloc_init+0x1e>
1c01bba6:	c4063633          	p.bclr	a2,a2,2,0
1c01bbaa:	c390                	sw	a2,0(a5)
1c01bbac:	0007a223          	sw	zero,4(a5)
1c01bbb0:	8082                	ret

1c01bbb2 <pos_alloc>:
1c01bbb2:	4110                	lw	a2,0(a0)
1c01bbb4:	059d                	addi	a1,a1,7
1c01bbb6:	c405b5b3          	p.bclr	a1,a1,2,0
1c01bbba:	ca31                	beqz	a2,1c01bc0e <pos_alloc+0x5c>
1c01bbbc:	4218                	lw	a4,0(a2)
1c01bbbe:	425c                	lw	a5,4(a2)
1c01bbc0:	02b75963          	ble	a1,a4,1c01bbf2 <pos_alloc+0x40>
1c01bbc4:	cb81                	beqz	a5,1c01bbd4 <pos_alloc+0x22>
1c01bbc6:	4398                	lw	a4,0(a5)
1c01bbc8:	43d4                	lw	a3,4(a5)
1c01bbca:	00b75763          	ble	a1,a4,1c01bbd8 <pos_alloc+0x26>
1c01bbce:	863e                	mv	a2,a5
1c01bbd0:	87b6                	mv	a5,a3
1c01bbd2:	fbf5                	bnez	a5,1c01bbc6 <pos_alloc+0x14>
1c01bbd4:	853e                	mv	a0,a5
1c01bbd6:	8082                	ret
1c01bbd8:	00b70a63          	beq	a4,a1,1c01bbec <pos_alloc+0x3a>
1c01bbdc:	00b78533          	add	a0,a5,a1
1c01bbe0:	8f0d                	sub	a4,a4,a1
1c01bbe2:	c118                	sw	a4,0(a0)
1c01bbe4:	c154                	sw	a3,4(a0)
1c01bbe6:	c248                	sw	a0,4(a2)
1c01bbe8:	853e                	mv	a0,a5
1c01bbea:	8082                	ret
1c01bbec:	c254                	sw	a3,4(a2)
1c01bbee:	853e                	mv	a0,a5
1c01bbf0:	8082                	ret
1c01bbf2:	00e58b63          	beq	a1,a4,1c01bc08 <pos_alloc+0x56>
1c01bbf6:	00b606b3          	add	a3,a2,a1
1c01bbfa:	8f0d                	sub	a4,a4,a1
1c01bbfc:	c2dc                	sw	a5,4(a3)
1c01bbfe:	c298                	sw	a4,0(a3)
1c01bc00:	87b2                	mv	a5,a2
1c01bc02:	c114                	sw	a3,0(a0)
1c01bc04:	853e                	mv	a0,a5
1c01bc06:	8082                	ret
1c01bc08:	c11c                	sw	a5,0(a0)
1c01bc0a:	87b2                	mv	a5,a2
1c01bc0c:	b7e1                	j	1c01bbd4 <pos_alloc+0x22>
1c01bc0e:	4781                	li	a5,0
1c01bc10:	b7d1                	j	1c01bbd4 <pos_alloc+0x22>

1c01bc12 <pos_allocs_init>:
1c01bc12:	1141                	addi	sp,sp,-16
1c01bc14:	1c0195b7          	lui	a1,0x1c019
1c01bc18:	c606                	sw	ra,12(sp)
1c01bc1a:	c422                	sw	s0,8(sp)
1c01bc1c:	26c58793          	addi	a5,a1,620 # 1c01926c <__l2_priv0_end>
1c01bc20:	1c008637          	lui	a2,0x1c008
1c01bc24:	04c7c363          	blt	a5,a2,1c01bc6a <pos_allocs_init+0x58>
1c01bc28:	4581                	li	a1,0
1c01bc2a:	4601                	li	a2,0
1c01bc2c:	1c019437          	lui	s0,0x1c019
1c01bc30:	24440513          	addi	a0,s0,580 # 1c019244 <pos_alloc_l2>
1c01bc34:	3fb9                	jal	1c01bb92 <pos_alloc_init>
1c01bc36:	1c01c5b7          	lui	a1,0x1c01c
1c01bc3a:	1fc58793          	addi	a5,a1,508 # 1c01c1fc <__l2_shared_end>
1c01bc3e:	1c080637          	lui	a2,0x1c080
1c01bc42:	1c019537          	lui	a0,0x1c019
1c01bc46:	8e1d                	sub	a2,a2,a5
1c01bc48:	1fc58593          	addi	a1,a1,508
1c01bc4c:	24850513          	addi	a0,a0,584 # 1c019248 <pos_alloc_l2+0x4>
1c01bc50:	3789                	jal	1c01bb92 <pos_alloc_init>
1c01bc52:	24440513          	addi	a0,s0,580
1c01bc56:	4591                	li	a1,4
1c01bc58:	3fa9                	jal	1c01bbb2 <pos_alloc>
1c01bc5a:	40b2                	lw	ra,12(sp)
1c01bc5c:	4422                	lw	s0,8(sp)
1c01bc5e:	1c0197b7          	lui	a5,0x1c019
1c01bc62:	24a7a023          	sw	a0,576(a5) # 1c019240 <pos_alloc_l1>
1c01bc66:	0141                	addi	sp,sp,16
1c01bc68:	8082                	ret
1c01bc6a:	8e1d                	sub	a2,a2,a5
1c01bc6c:	26c58593          	addi	a1,a1,620
1c01bc70:	bf75                	j	1c01bc2c <pos_allocs_init+0x1a>

1c01bc72 <pos_irq_set_handler>:
1c01bc72:	f14027f3          	csrr	a5,mhartid
1c01bc76:	477d                	li	a4,31
1c01bc78:	ca5797b3          	p.extractu	a5,a5,5,5
1c01bc7c:	02e78d63          	beq	a5,a4,1c01bcb6 <pos_irq_set_handler+0x44>
1c01bc80:	002007b7          	lui	a5,0x200
1c01bc84:	43b8                	lw	a4,64(a5)
1c01bc86:	050a                	slli	a0,a0,0x2
1c01bc88:	8d89                	sub	a1,a1,a0
1c01bc8a:	8d99                	sub	a1,a1,a4
1c01bc8c:	c14586b3          	p.extract	a3,a1,0,20
1c01bc90:	06f00793          	li	a5,111
1c01bc94:	c1f6a7b3          	p.insert	a5,a3,0,31
1c01bc98:	d21586b3          	p.extract	a3,a1,9,1
1c01bc9c:	d356a7b3          	p.insert	a5,a3,9,21
1c01bca0:	c0b586b3          	p.extract	a3,a1,0,11
1c01bca4:	c146a7b3          	p.insert	a5,a3,0,20
1c01bca8:	cec585b3          	p.extract	a1,a1,7,12
1c01bcac:	cec5a7b3          	p.insert	a5,a1,7,12
1c01bcb0:	00f56723          	p.sw	a5,a4(a0)
1c01bcb4:	8082                	ret
1c01bcb6:	30502773          	csrr	a4,mtvec
1c01bcba:	c0073733          	p.bclr	a4,a4,0,0
1c01bcbe:	b7e1                	j	1c01bc86 <pos_irq_set_handler+0x14>

1c01bcc0 <pos_irq_init>:
1c01bcc0:	f1402773          	csrr	a4,mhartid
1c01bcc4:	1a10a7b7          	lui	a5,0x1a10a
1c01bcc8:	56fd                	li	a3,-1
1c01bcca:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c01bcce:	ca571733          	p.extractu	a4,a4,5,5
1c01bcd2:	1c0197b7          	lui	a5,0x1c019
1c01bcd6:	46fd                	li	a3,31
1c01bcd8:	30078793          	addi	a5,a5,768 # 1c019300 <__irq_vector_base>
1c01bcdc:	00d70663          	beq	a4,a3,1c01bce8 <pos_irq_init+0x28>
1c01bce0:	00200737          	lui	a4,0x200
1c01bce4:	c33c                	sw	a5,64(a4)
1c01bce6:	8082                	ret
1c01bce8:	c007c7b3          	p.bset	a5,a5,0,0
1c01bcec:	30579073          	csrw	mtvec,a5
1c01bcf0:	8082                	ret

1c01bcf2 <pos_soc_event_init>:
1c01bcf2:	1a1067b7          	lui	a5,0x1a106
1c01bcf6:	1141                	addi	sp,sp,-16
1c01bcf8:	c606                	sw	ra,12(sp)
1c01bcfa:	577d                	li	a4,-1
1c01bcfc:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c01bd00:	c298                	sw	a4,0(a3)
1c01bd02:	00878693          	addi	a3,a5,8
1c01bd06:	c298                	sw	a4,0(a3)
1c01bd08:	00c78693          	addi	a3,a5,12
1c01bd0c:	c298                	sw	a4,0(a3)
1c01bd0e:	01078693          	addi	a3,a5,16
1c01bd12:	c298                	sw	a4,0(a3)
1c01bd14:	01478693          	addi	a3,a5,20
1c01bd18:	c298                	sw	a4,0(a3)
1c01bd1a:	01878693          	addi	a3,a5,24
1c01bd1e:	c298                	sw	a4,0(a3)
1c01bd20:	01c78693          	addi	a3,a5,28
1c01bd24:	c298                	sw	a4,0(a3)
1c01bd26:	02078793          	addi	a5,a5,32
1c01bd2a:	1c01c5b7          	lui	a1,0x1c01c
1c01bd2e:	c398                	sw	a4,0(a5)
1c01bd30:	fea58593          	addi	a1,a1,-22 # 1c01bfea <pos_soc_event_handler_asm>
1c01bd34:	4569                	li	a0,26
1c01bd36:	3f35                	jal	1c01bc72 <pos_irq_set_handler>
1c01bd38:	40b2                	lw	ra,12(sp)
1c01bd3a:	1a10a7b7          	lui	a5,0x1a10a
1c01bd3e:	04000737          	lui	a4,0x4000
1c01bd42:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c01bd46:	0141                	addi	sp,sp,16
1c01bd48:	8082                	ret

1c01bd4a <pos_time_poweroff>:
1c01bd4a:	1a10b7b7          	lui	a5,0x1a10b
1c01bd4e:	0791                	addi	a5,a5,4
1c01bd50:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01bd54:	1c001737          	lui	a4,0x1c001
1c01bd58:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c01bd5c:	4501                	li	a0,0
1c01bd5e:	8082                	ret

1c01bd60 <pos_time_poweron>:
1c01bd60:	1c0017b7          	lui	a5,0x1c001
1c01bd64:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c01bd68:	1a10b7b7          	lui	a5,0x1a10b
1c01bd6c:	0791                	addi	a5,a5,4
1c01bd6e:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01bd72:	4501                	li	a0,0
1c01bd74:	8082                	ret

1c01bd76 <pos_time_timer_handler>:
1c01bd76:	1c0018b7          	lui	a7,0x1c001
1c01bd7a:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c01bd7e:	0048a783          	lw	a5,4(a7)
1c01bd82:	1a10b637          	lui	a2,0x1a10b
1c01bd86:	0611                	addi	a2,a2,4
1c01bd88:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c01bd8c:	cba9                	beqz	a5,1c01bdde <pos_time_timer_handler+0x68>
1c01bd8e:	5fd8                	lw	a4,60(a5)
1c01bd90:	800005b7          	lui	a1,0x80000
1c01bd94:	40e60733          	sub	a4,a2,a4
1c01bd98:	ffe5c593          	xori	a1,a1,-2
1c01bd9c:	0ae5e763          	bltu	a1,a4,1c01be4a <pos_time_timer_handler+0xd4>
1c01bda0:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c01bda4:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c01bda8:	4398                	lw	a4,0(a5)
1c01bdaa:	0007a023          	sw	zero,0(a5)
1c01bdae:	4301                	li	t1,0
1c01bdb0:	02080063          	beqz	a6,1c01bdd0 <pos_time_timer_handler+0x5a>
1c01bdb4:	c11c                	sw	a5,0(a0)
1c01bdb6:	c305                	beqz	a4,1c01bdd6 <pos_time_timer_handler+0x60>
1c01bdb8:	5f54                	lw	a3,60(a4)
1c01bdba:	853e                	mv	a0,a5
1c01bdbc:	40d606b3          	sub	a3,a2,a3
1c01bdc0:	04d5e763          	bltu	a1,a3,1c01be0e <pos_time_timer_handler+0x98>
1c01bdc4:	87ba                	mv	a5,a4
1c01bdc6:	4398                	lw	a4,0(a5)
1c01bdc8:	0007a023          	sw	zero,0(a5)
1c01bdcc:	fe0814e3          	bnez	a6,1c01bdb4 <pos_time_timer_handler+0x3e>
1c01bdd0:	883e                	mv	a6,a5
1c01bdd2:	4305                	li	t1,1
1c01bdd4:	f375                	bnez	a4,1c01bdb8 <pos_time_timer_handler+0x42>
1c01bdd6:	06031c63          	bnez	t1,1c01be4e <pos_time_timer_handler+0xd8>
1c01bdda:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c01bdde:	1a10b7b7          	lui	a5,0x1a10b
1c01bde2:	08100713          	li	a4,129
1c01bde6:	0791                	addi	a5,a5,4
1c01bde8:	0008a223          	sw	zero,4(a7)
1c01bdec:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c01bdf0:	f14027f3          	csrr	a5,mhartid
1c01bdf4:	477d                	li	a4,31
1c01bdf6:	ca5797b3          	p.extractu	a5,a5,5,5
1c01bdfa:	04e78063          	beq	a5,a4,1c01be3a <pos_time_timer_handler+0xc4>
1c01bdfe:	6785                	lui	a5,0x1
1c01be00:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01be04:	00204737          	lui	a4,0x204
1c01be08:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c01be0c:	8082                	ret
1c01be0e:	04031363          	bnez	t1,1c01be54 <pos_time_timer_handler+0xde>
1c01be12:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c01be16:	1a10b7b7          	lui	a5,0x1a10b
1c01be1a:	0791                	addi	a5,a5,4
1c01be1c:	00e8a223          	sw	a4,4(a7)
1c01be20:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c01be24:	5f58                	lw	a4,60(a4)
1c01be26:	40c70633          	sub	a2,a4,a2
1c01be2a:	9636                	add	a2,a2,a3
1c01be2c:	00c7a823          	sw	a2,16(a5)
1c01be30:	08500713          	li	a4,133
1c01be34:	00e7a023          	sw	a4,0(a5)
1c01be38:	8082                	ret
1c01be3a:	6785                	lui	a5,0x1
1c01be3c:	1a10a737          	lui	a4,0x1a10a
1c01be40:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01be44:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c01be48:	8082                	ret
1c01be4a:	873e                	mv	a4,a5
1c01be4c:	b7e9                	j	1c01be16 <pos_time_timer_handler+0xa0>
1c01be4e:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c01be52:	b761                	j	1c01bdda <pos_time_timer_handler+0x64>
1c01be54:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c01be58:	bf6d                	j	1c01be12 <pos_time_timer_handler+0x9c>

1c01be5a <pos_time_init>:
1c01be5a:	1141                	addi	sp,sp,-16
1c01be5c:	c422                	sw	s0,8(sp)
1c01be5e:	1a10b7b7          	lui	a5,0x1a10b
1c01be62:	1c001437          	lui	s0,0x1c001
1c01be66:	c606                	sw	ra,12(sp)
1c01be68:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c01be6c:	08300713          	li	a4,131
1c01be70:	0791                	addi	a5,a5,4
1c01be72:	00042223          	sw	zero,4(s0)
1c01be76:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c01be7a:	1c01c5b7          	lui	a1,0x1c01c
1c01be7e:	fc658593          	addi	a1,a1,-58 # 1c01bfc6 <pos_time_timer_handler_asm>
1c01be82:	452d                	li	a0,11
1c01be84:	33fd                	jal	1c01bc72 <pos_irq_set_handler>
1c01be86:	6785                	lui	a5,0x1
1c01be88:	1a10a737          	lui	a4,0x1a10a
1c01be8c:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c01be90:	1c01c637          	lui	a2,0x1c01c
1c01be94:	00840513          	addi	a0,s0,8
1c01be98:	4681                	li	a3,0
1c01be9a:	d4a60613          	addi	a2,a2,-694 # 1c01bd4a <pos_time_poweroff>
1c01be9e:	4589                	li	a1,2
1c01bea0:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c01bea4:	31f9                	jal	1c01bb72 <pos_cbsys_add>
1c01bea6:	01840513          	addi	a0,s0,24
1c01beaa:	4422                	lw	s0,8(sp)
1c01beac:	40b2                	lw	ra,12(sp)
1c01beae:	1c01c637          	lui	a2,0x1c01c
1c01beb2:	4681                	li	a3,0
1c01beb4:	d6060613          	addi	a2,a2,-672 # 1c01bd60 <pos_time_poweron>
1c01beb8:	458d                	li	a1,3
1c01beba:	0141                	addi	sp,sp,16
1c01bebc:	b95d                	j	1c01bb72 <pos_cbsys_add>

1c01bebe <pos_uart_init>:
1c01bebe:	1c01c7b7          	lui	a5,0x1c01c
1c01bec2:	1a07a623          	sw	zero,428(a5) # 1c01c1ac <__cluster_text_end>
1c01bec6:	8082                	ret

1c01bec8 <pos_init_entry>:
1c01bec8:	7a101073          	csrw	pcmr,zero
1c01becc:	f1402573          	csrr	a0,mhartid
1c01bed0:	01f57593          	andi	a1,a0,31
1c01bed4:	8115                	srli	a0,a0,0x5
1c01bed6:	467d                	li	a2,31
1c01bed8:	00c50463          	beq	a0,a2,1c01bee0 <pos_init_entry+0x18>
1c01bedc:	1800006f          	j	1c01c05c <__l2_priv1_end>
1c01bee0:	fffe5297          	auipc	t0,0xfffe5
1c01bee4:	36028293          	addi	t0,t0,864 # 1c001240 <_edata>
1c01bee8:	ffffd317          	auipc	t1,0xffffd
1c01beec:	38430313          	addi	t1,t1,900 # 1c01926c <__l2_priv0_end>
1c01bef0:	0002a023          	sw	zero,0(t0)
1c01bef4:	0291                	addi	t0,t0,4
1c01bef6:	fe62ede3          	bltu	t0,t1,1c01bef0 <pos_init_entry+0x28>
1c01befa:	fffe5117          	auipc	sp,0xfffe5
1c01befe:	30610113          	addi	sp,sp,774 # 1c001200 <stack>
1c01bf02:	00000297          	auipc	t0,0x0
1c01bf06:	c1028293          	addi	t0,t0,-1008 # 1c01bb12 <pos_init_start>
1c01bf0a:	000280e7          	jalr	t0
1c01bf0e:	00000513          	li	a0,0
1c01bf12:	00000593          	li	a1,0
1c01bf16:	ffffe397          	auipc	t2,0xffffe
1c01bf1a:	d3a38393          	addi	t2,t2,-710 # 1c019c50 <main>
1c01bf1e:	000380e7          	jalr	t2
1c01bf22:	842a                	mv	s0,a0
1c01bf24:	8522                	mv	a0,s0
1c01bf26:	ffffe297          	auipc	t0,0xffffe
1c01bf2a:	fe028293          	addi	t0,t0,-32 # 1c019f06 <exit>
1c01bf2e:	000280e7          	jalr	t0

1c01bf32 <pos_irq_call_external_c_function>:
1c01bf32:	7119                	addi	sp,sp,-128
1c01bf34:	c006                	sw	ra,0(sp)
1c01bf36:	c20e                	sw	gp,4(sp)
1c01bf38:	c412                	sw	tp,8(sp)
1c01bf3a:	c616                	sw	t0,12(sp)
1c01bf3c:	c81a                	sw	t1,16(sp)
1c01bf3e:	ca1e                	sw	t2,20(sp)
1c01bf40:	d236                	sw	a3,36(sp)
1c01bf42:	d43a                	sw	a4,40(sp)
1c01bf44:	d63e                	sw	a5,44(sp)
1c01bf46:	d842                	sw	a6,48(sp)
1c01bf48:	da46                	sw	a7,52(sp)
1c01bf4a:	dc72                	sw	t3,56(sp)
1c01bf4c:	de76                	sw	t4,60(sp)
1c01bf4e:	c0fa                	sw	t5,64(sp)
1c01bf50:	c6fe                	sw	t6,76(sp)
1c01bf52:	000600e7          	jalr	a2
1c01bf56:	4082                	lw	ra,0(sp)
1c01bf58:	4192                	lw	gp,4(sp)
1c01bf5a:	4222                	lw	tp,8(sp)
1c01bf5c:	42b2                	lw	t0,12(sp)
1c01bf5e:	4342                	lw	t1,16(sp)
1c01bf60:	43d2                	lw	t2,20(sp)
1c01bf62:	5692                	lw	a3,36(sp)
1c01bf64:	5722                	lw	a4,40(sp)
1c01bf66:	57b2                	lw	a5,44(sp)
1c01bf68:	5842                	lw	a6,48(sp)
1c01bf6a:	58d2                	lw	a7,52(sp)
1c01bf6c:	5e62                	lw	t3,56(sp)
1c01bf6e:	5ef2                	lw	t4,60(sp)
1c01bf70:	4f06                	lw	t5,64(sp)
1c01bf72:	4fb6                	lw	t6,76(sp)
1c01bf74:	6109                	addi	sp,sp,128
1c01bf76:	8482                	jr	s1

1c01bf78 <pos_irq_call_external_c_function_full>:
1c01bf78:	7119                	addi	sp,sp,-128
1c01bf7a:	c006                	sw	ra,0(sp)
1c01bf7c:	c20e                	sw	gp,4(sp)
1c01bf7e:	c412                	sw	tp,8(sp)
1c01bf80:	c616                	sw	t0,12(sp)
1c01bf82:	c81a                	sw	t1,16(sp)
1c01bf84:	ca1e                	sw	t2,20(sp)
1c01bf86:	cc2a                	sw	a0,24(sp)
1c01bf88:	ce2e                	sw	a1,28(sp)
1c01bf8a:	d236                	sw	a3,36(sp)
1c01bf8c:	d43a                	sw	a4,40(sp)
1c01bf8e:	d63e                	sw	a5,44(sp)
1c01bf90:	d842                	sw	a6,48(sp)
1c01bf92:	da46                	sw	a7,52(sp)
1c01bf94:	dc72                	sw	t3,56(sp)
1c01bf96:	de76                	sw	t4,60(sp)
1c01bf98:	c0fa                	sw	t5,64(sp)
1c01bf9a:	c6fe                	sw	t6,76(sp)
1c01bf9c:	000600e7          	jalr	a2
1c01bfa0:	4082                	lw	ra,0(sp)
1c01bfa2:	4192                	lw	gp,4(sp)
1c01bfa4:	4222                	lw	tp,8(sp)
1c01bfa6:	42b2                	lw	t0,12(sp)
1c01bfa8:	4342                	lw	t1,16(sp)
1c01bfaa:	43d2                	lw	t2,20(sp)
1c01bfac:	4562                	lw	a0,24(sp)
1c01bfae:	45f2                	lw	a1,28(sp)
1c01bfb0:	5692                	lw	a3,36(sp)
1c01bfb2:	5722                	lw	a4,40(sp)
1c01bfb4:	57b2                	lw	a5,44(sp)
1c01bfb6:	5842                	lw	a6,48(sp)
1c01bfb8:	58d2                	lw	a7,52(sp)
1c01bfba:	5e62                	lw	t3,56(sp)
1c01bfbc:	5ef2                	lw	t4,60(sp)
1c01bfbe:	4f06                	lw	t5,64(sp)
1c01bfc0:	4fb6                	lw	t6,76(sp)
1c01bfc2:	6109                	addi	sp,sp,128
1c01bfc4:	8482                	jr	s1

1c01bfc6 <pos_time_timer_handler_asm>:
1c01bfc6:	1161                	addi	sp,sp,-8
1c01bfc8:	c032                	sw	a2,0(sp)
1c01bfca:	c226                	sw	s1,4(sp)
1c01bfcc:	00000617          	auipc	a2,0x0
1c01bfd0:	daa60613          	addi	a2,a2,-598 # 1c01bd76 <pos_time_timer_handler>
1c01bfd4:	00000497          	auipc	s1,0x0
1c01bfd8:	00c48493          	addi	s1,s1,12 # 1c01bfe0 <pos_time_timer_handler_asm_ret>
1c01bfdc:	f9dff06f          	j	1c01bf78 <pos_irq_call_external_c_function_full>

1c01bfe0 <pos_time_timer_handler_asm_ret>:
1c01bfe0:	4492                	lw	s1,4(sp)
1c01bfe2:	4602                	lw	a2,0(sp)
1c01bfe4:	0121                	addi	sp,sp,8
1c01bfe6:	30200073          	mret

1c01bfea <pos_soc_event_handler_asm>:
1c01bfea:	7119                	addi	sp,sp,-128
1c01bfec:	c022                	sw	s0,0(sp)
1c01bfee:	c226                	sw	s1,4(sp)
1c01bff0:	c42a                	sw	a0,8(sp)
1c01bff2:	c62e                	sw	a1,12(sp)
1c01bff4:	c832                	sw	a2,16(sp)
1c01bff6:	1a10a437          	lui	s0,0x1a10a
1c01bffa:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c01bffe:	5048                	lw	a0,36(s0)
1c01c000:	00251593          	slli	a1,a0,0x2
1c01c004:	e3fe4297          	auipc	t0,0xe3fe4
1c01c008:	44428293          	addi	t0,t0,1092 # 448 <pos_soc_event_callback>
1c01c00c:	2055f603          	p.lw	a2,t0(a1)
1c01c010:	e3fe4297          	auipc	t0,0xe3fe4
1c01c014:	03828293          	addi	t0,t0,56 # 48 <pos_soc_event_callback_arg>
1c01c018:	2055f583          	p.lw	a1,t0(a1)
1c01c01c:	00000497          	auipc	s1,0x0
1c01c020:	03048493          	addi	s1,s1,48 # 1c01c04c <pos_soc_event_handler_end_asm>
1c01c024:	f0fff06f          	j	1c01bf32 <pos_irq_call_external_c_function>

1c01c028 <pos_soc_event_no_udma_asm>:
1c01c028:	00555593          	srli	a1,a0,0x5
1c01c02c:	058a                	slli	a1,a1,0x2
1c01c02e:	e3fe4297          	auipc	t0,0xe3fe4
1c01c032:	ffa28293          	addi	t0,t0,-6 # 28 <pos_soc_event_status>
1c01c036:	2055f603          	p.lw	a2,t0(a1)
1c01c03a:	897d                	andi	a0,a0,31
1c01c03c:	80a64633          	p.bsetr	a2,a2,a0
1c01c040:	e3fe4297          	auipc	t0,0xe3fe4
1c01c044:	fe828293          	addi	t0,t0,-24 # 28 <pos_soc_event_status>
1c01c048:	00c5e2a3          	p.sw	a2,t0(a1)

1c01c04c <pos_soc_event_handler_end_asm>:
1c01c04c:	4402                	lw	s0,0(sp)
1c01c04e:	4492                	lw	s1,4(sp)
1c01c050:	4522                	lw	a0,8(sp)
1c01c052:	45b2                	lw	a1,12(sp)
1c01c054:	4642                	lw	a2,16(sp)
1c01c056:	6109                	addi	sp,sp,128
1c01c058:	30200073          	mret

Déassemblage de la section .l2_data :

1c01c05c <__cluster_text_start>:
1c01c05c:	f1402573          	csrr	a0,mhartid
1c01c060:	01f57593          	andi	a1,a0,31
1c01c064:	8115                	srli	a0,a0,0x5
1c01c066:	000702b7          	lui	t0,0x70
1c01c06a:	00204337          	lui	t1,0x204
1c01c06e:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c01c072:	4381                	li	t2,0
1c01c074:	0e759463          	bne	a1,t2,1c01c15c <pos_slave_start>
1c01c078:	20000293          	li	t0,512
1c01c07c:	00204337          	lui	t1,0x204
1c01c080:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c01c084:	e3fe4417          	auipc	s0,0xe3fe4
1c01c088:	f8040413          	addi	s0,s0,-128 # 4 <pos_fll_freq>
1c01c08c:	002049b7          	lui	s3,0x204
1c01c090:	4a09                	li	s4,2
1c01c092:	00000a97          	auipc	s5,0x0
1c01c096:	038a8a93          	addi	s5,s5,56 # 1c01c0ca <pos_master_event>
1c01c09a:	ffffdb97          	auipc	s7,0xffffd
1c01c09e:	1b2b8b93          	addi	s7,s7,434 # 1c01924c <pos_cluster>
1c01c0a2:	02c00393          	li	t2,44
1c01c0a6:	02a383b3          	mul	t2,t2,a0
1c01c0aa:	9b9e                	add	s7,s7,t2
1c01c0ac:	0bd1                	addi	s7,s7,20
1c01c0ae:	1a10acb7          	lui	s9,0x1a10a
1c01c0b2:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c01c0b6:	4c09                	li	s8,2
1c01c0b8:	00000d17          	auipc	s10,0x0
1c01c0bc:	0e2d0d13          	addi	s10,s10,226 # 1c01c19a <pos_set_slave_stack>
1c01c0c0:	001d6d13          	ori	s10,s10,1
1c01c0c4:	30045073          	csrwi	mstatus,8
1c01c0c8:	a829                	j	1c01c0e2 <pos_master_loop>

1c01c0ca <pos_master_event>:
1c01c0ca:	018b2b03          	lw	s6,24(s6)
1c01c0ce:	000b0a63          	beqz	s6,1c01c0e2 <pos_master_loop>

1c01c0d2 <pos_push_event_to_fc_retry>:
1c01c0d2:	000ba283          	lw	t0,0(s7)
1c01c0d6:	06029c63          	bnez	t0,1c01c14e <pos_push_event_to_fc_wait>
1c01c0da:	016ba023          	sw	s6,0(s7)
1c01c0de:	018ca023          	sw	s8,0(s9)

1c01c0e2 <pos_master_loop>:
1c01c0e2:	00042b03          	lw	s6,0(s0)
1c01c0e6:	040b0d63          	beqz	s6,1c01c140 <pos_master_sleep>

1c01c0ea <pos_master_loop_update_next>:
1c01c0ea:	020b2e83          	lw	t4,32(s6)
1c01c0ee:	01d42023          	sw	t4,0(s0)
1c01c0f2:	020b2f03          	lw	t5,32(s6)
1c01c0f6:	ffee9ae3          	bne	t4,t5,1c01c0ea <pos_master_loop_update_next>

1c01c0fa <pos_master_loop_exec_task>:
1c01c0fa:	004b2503          	lw	a0,4(s6)
1c01c0fe:	000b2283          	lw	t0,0(s6)
1c01c102:	008b2103          	lw	sp,8(s6)
1c01c106:	00cb2303          	lw	t1,12(s6)
1c01c10a:	010b2383          	lw	t2,16(s6)
1c01c10e:	024b2f03          	lw	t5,36(s6)
1c01c112:	014b2f83          	lw	t6,20(s6)
1c01c116:	80d6                	mv	ra,s5
1c01c118:	911a                	add	sp,sp,t1
1c01c11a:	e3fe4e17          	auipc	t3,0xe3fe4
1c01c11e:	effe2f23          	sw	t6,-258(t3) # 18 <_l1_preload_size>

1c01c122 <pos_no_stack_check>:
1c01c122:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c01c126:	21e9a023          	sw	t5,512(s3)
1c01c12a:	21e9a623          	sw	t5,524(s3)

1c01c12e <pos_master_no_slave_barrier>:
1c01c12e:	000f2863          	p.beqimm	t5,0,1c01c13e <pos_master_loop_no_slave>
1c01c132:	09a9a023          	sw	s10,128(s3)
1c01c136:	0879a023          	sw	t2,128(s3)
1c01c13a:	0829a023          	sw	sp,128(s3)

1c01c13e <pos_master_loop_no_slave>:
1c01c13e:	8282                	jr	t0

1c01c140 <pos_master_sleep>:
1c01c140:	0149a423          	sw	s4,8(s3)
1c01c144:	03c9e003          	p.elw	zero,60(s3)
1c01c148:	0149a223          	sw	s4,4(s3)
1c01c14c:	bf59                	j	1c01c0e2 <pos_master_loop>

1c01c14e <pos_push_event_to_fc_wait>:
1c01c14e:	0149a423          	sw	s4,8(s3)
1c01c152:	03c9e003          	p.elw	zero,60(s3)
1c01c156:	0149a223          	sw	s4,4(s3)
1c01c15a:	bfa5                	j	1c01c0d2 <pos_push_event_to_fc_retry>

1c01c15c <pos_slave_start>:
1c01c15c:	00204937          	lui	s2,0x204
1c01c160:	f14029f3          	csrr	s3,mhartid
1c01c164:	01f9f993          	andi	s3,s3,31
1c01c168:	00000a17          	auipc	s4,0x0
1c01c16c:	012a0a13          	addi	s4,s4,18 # 1c01c17a <pos_fork_return>
1c01c170:	00000a97          	auipc	s5,0x0
1c01c174:	00ea8a93          	addi	s5,s5,14 # 1c01c17e <pos_wait_for_dispatch>
1c01c178:	a019                	j	1c01c17e <pos_wait_for_dispatch>

1c01c17a <pos_fork_return>:
1c01c17a:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c01c17e <pos_wait_for_dispatch>:
1c01c17e:	08096283          	p.elw	t0,128(s2)
1c01c182:	08096503          	p.elw	a0,128(s2)
1c01c186:	0012f313          	andi	t1,t0,1
1c01c18a:	00031563          	bnez	t1,1c01c194 <pos_other_entry>

1c01c18e <pos_fork_entry>:
1c01c18e:	000a00b3          	add	ra,s4,zero
1c01c192:	8282                	jr	t0

1c01c194 <pos_other_entry>:
1c01c194:	000a80b3          	add	ra,s5,zero
1c01c198:	8282                	jr	t0

1c01c19a <pos_set_slave_stack>:
1c01c19a:	08096283          	p.elw	t0,128(s2)
1c01c19e:	00098f13          	mv	t5,s3
1c01c1a2:	02af0eb3          	mul	t4,t5,a0
1c01c1a6:	005e8133          	add	sp,t4,t0
1c01c1aa:	8082                	ret

1c01c1ac <__cluster_text_end>:
	...
