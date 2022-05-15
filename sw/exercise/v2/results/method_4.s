riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/ckoenig/Documents/phd/interview/sw/exercise/v2/BUILD/PULP/GCC_RISCV//test/test

/home/ckoenig/Documents/phd/interview/sw/exercise/v2/BUILD/PULP/GCC_RISCV//test/test:     format de fichier elf32-littleriscv


Déassemblage de la section .vectors :

1c031300 <__irq_vector_base>:
1c031300:	08c0006f          	j	1c03138c <pos_illegal_instr>
1c031304:	08c0006f          	j	1c031390 <pos_no_irq_handler>
1c031308:	0880006f          	j	1c031390 <pos_no_irq_handler>
1c03130c:	0840006f          	j	1c031390 <pos_no_irq_handler>
1c031310:	0800006f          	j	1c031390 <pos_no_irq_handler>
1c031314:	07c0006f          	j	1c031390 <pos_no_irq_handler>
1c031318:	0780006f          	j	1c031390 <pos_no_irq_handler>
1c03131c:	0740006f          	j	1c031390 <pos_no_irq_handler>
1c031320:	0700006f          	j	1c031390 <pos_no_irq_handler>
1c031324:	06c0006f          	j	1c031390 <pos_no_irq_handler>
1c031328:	0680006f          	j	1c031390 <pos_no_irq_handler>
1c03132c:	0640006f          	j	1c031390 <pos_no_irq_handler>
1c031330:	0600006f          	j	1c031390 <pos_no_irq_handler>
1c031334:	05c0006f          	j	1c031390 <pos_no_irq_handler>
1c031338:	0580006f          	j	1c031390 <pos_no_irq_handler>
1c03133c:	0540006f          	j	1c031390 <pos_no_irq_handler>
1c031340:	0500006f          	j	1c031390 <pos_no_irq_handler>
1c031344:	04c0006f          	j	1c031390 <pos_no_irq_handler>
1c031348:	0480006f          	j	1c031390 <pos_no_irq_handler>
1c03134c:	0440006f          	j	1c031390 <pos_no_irq_handler>
1c031350:	0400006f          	j	1c031390 <pos_no_irq_handler>
1c031354:	03c0006f          	j	1c031390 <pos_no_irq_handler>
1c031358:	0380006f          	j	1c031390 <pos_no_irq_handler>
1c03135c:	0340006f          	j	1c031390 <pos_no_irq_handler>
1c031360:	0300006f          	j	1c031390 <pos_no_irq_handler>
1c031364:	02c0006f          	j	1c031390 <pos_no_irq_handler>
1c031368:	0280006f          	j	1c031390 <pos_no_irq_handler>
1c03136c:	0240006f          	j	1c031390 <pos_no_irq_handler>
1c031370:	0200006f          	j	1c031390 <pos_no_irq_handler>
1c031374:	01c0006f          	j	1c031390 <pos_no_irq_handler>
1c031378:	0180006f          	j	1c031390 <pos_no_irq_handler>
1c03137c:	0140006f          	j	1c031390 <pos_no_irq_handler>

1c031380 <_start>:
1c031380:	00003517          	auipc	a0,0x3
1c031384:	bb250513          	addi	a0,a0,-1102 # 1c033f32 <pos_init_entry>
1c031388:	00050067          	jr	a0

1c03138c <pos_illegal_instr>:
1c03138c:	0000006f          	j	1c03138c <pos_illegal_instr>

1c031390 <pos_no_irq_handler>:
1c031390:	30200073          	mret

1c031394 <pos_semihosting_call>:
1c031394:	00100073          	ebreak
1c031398:	00008067          	ret

Déassemblage de la section .text :

1c03139c <__udivdi3>:
1c03139c:	87b2                	mv	a5,a2
1c03139e:	8736                	mv	a4,a3
1c0313a0:	88aa                	mv	a7,a0
1c0313a2:	882e                	mv	a6,a1
1c0313a4:	1e069d63          	bnez	a3,1c03159e <__udivdi3+0x202>
1c0313a8:	1c001337          	lui	t1,0x1c001
1c0313ac:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0313b0:	0ac5fd63          	bleu	a2,a1,1c03146a <__udivdi3+0xce>
1c0313b4:	6741                	lui	a4,0x10
1c0313b6:	0ae67363          	bleu	a4,a2,1c03145c <__udivdi3+0xc0>
1c0313ba:	0ff00693          	li	a3,255
1c0313be:	00c6b6b3          	sltu	a3,a3,a2
1c0313c2:	068e                	slli	a3,a3,0x3
1c0313c4:	00d65733          	srl	a4,a2,a3
1c0313c8:	933a                	add	t1,t1,a4
1c0313ca:	00034703          	lbu	a4,0(t1)
1c0313ce:	02000313          	li	t1,32
1c0313d2:	96ba                	add	a3,a3,a4
1c0313d4:	40d30333          	sub	t1,t1,a3
1c0313d8:	00030c63          	beqz	t1,1c0313f0 <__udivdi3+0x54>
1c0313dc:	00659733          	sll	a4,a1,t1
1c0313e0:	00d556b3          	srl	a3,a0,a3
1c0313e4:	006617b3          	sll	a5,a2,t1
1c0313e8:	00e6e833          	or	a6,a3,a4
1c0313ec:	006518b3          	sll	a7,a0,t1
1c0313f0:	0107d513          	srli	a0,a5,0x10
1c0313f4:	02a87633          	remu	a2,a6,a0
1c0313f8:	02a85733          	divu	a4,a6,a0
1c0313fc:	0642                	slli	a2,a2,0x10
1c0313fe:	1007d5b3          	p.exthz	a1,a5
1c031402:	0108d693          	srli	a3,a7,0x10
1c031406:	8ed1                	or	a3,a3,a2
1c031408:	02e58833          	mul	a6,a1,a4
1c03140c:	863a                	mv	a2,a4
1c03140e:	0106fc63          	bleu	a6,a3,1c031426 <__udivdi3+0x8a>
1c031412:	96be                	add	a3,a3,a5
1c031414:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x1b>
1c031418:	00f6e763          	bltu	a3,a5,1c031426 <__udivdi3+0x8a>
1c03141c:	0106f563          	bleu	a6,a3,1c031426 <__udivdi3+0x8a>
1c031420:	ffe70613          	addi	a2,a4,-2
1c031424:	96be                	add	a3,a3,a5
1c031426:	410686b3          	sub	a3,a3,a6
1c03142a:	02a6f833          	remu	a6,a3,a0
1c03142e:	02a6d6b3          	divu	a3,a3,a0
1c031432:	df0828b3          	p.insert	a7,a6,15,16
1c031436:	02d58733          	mul	a4,a1,a3
1c03143a:	8536                	mv	a0,a3
1c03143c:	00e8fb63          	bleu	a4,a7,1c031452 <__udivdi3+0xb6>
1c031440:	98be                	add	a7,a7,a5
1c031442:	fff68513          	addi	a0,a3,-1
1c031446:	00f8e663          	bltu	a7,a5,1c031452 <__udivdi3+0xb6>
1c03144a:	00e8f463          	bleu	a4,a7,1c031452 <__udivdi3+0xb6>
1c03144e:	ffe68513          	addi	a0,a3,-2
1c031452:	01061793          	slli	a5,a2,0x10
1c031456:	8fc9                	or	a5,a5,a0
1c031458:	4801                	li	a6,0
1c03145a:	a06d                	j	1c031504 <__udivdi3+0x168>
1c03145c:	01000737          	lui	a4,0x1000
1c031460:	46c1                	li	a3,16
1c031462:	f6e661e3          	bltu	a2,a4,1c0313c4 <__udivdi3+0x28>
1c031466:	46e1                	li	a3,24
1c031468:	bfb1                	j	1c0313c4 <__udivdi3+0x28>
1c03146a:	e601                	bnez	a2,1c031472 <__udivdi3+0xd6>
1c03146c:	4685                	li	a3,1
1c03146e:	02c6d7b3          	divu	a5,a3,a2
1c031472:	66c1                	lui	a3,0x10
1c031474:	08d7fb63          	bleu	a3,a5,1c03150a <__udivdi3+0x16e>
1c031478:	0ff00693          	li	a3,255
1c03147c:	00f6f363          	bleu	a5,a3,1c031482 <__udivdi3+0xe6>
1c031480:	4721                	li	a4,8
1c031482:	00e7d6b3          	srl	a3,a5,a4
1c031486:	9336                	add	t1,t1,a3
1c031488:	00034683          	lbu	a3,0(t1)
1c03148c:	02000613          	li	a2,32
1c031490:	96ba                	add	a3,a3,a4
1c031492:	8e15                	sub	a2,a2,a3
1c031494:	e251                	bnez	a2,1c031518 <__udivdi3+0x17c>
1c031496:	40f58733          	sub	a4,a1,a5
1c03149a:	4805                	li	a6,1
1c03149c:	0107d513          	srli	a0,a5,0x10
1c0314a0:	02a77633          	remu	a2,a4,a0
1c0314a4:	02a75733          	divu	a4,a4,a0
1c0314a8:	0642                	slli	a2,a2,0x10
1c0314aa:	1007d5b3          	p.exthz	a1,a5
1c0314ae:	0108d693          	srli	a3,a7,0x10
1c0314b2:	8ed1                	or	a3,a3,a2
1c0314b4:	02e58333          	mul	t1,a1,a4
1c0314b8:	863a                	mv	a2,a4
1c0314ba:	0066fc63          	bleu	t1,a3,1c0314d2 <__udivdi3+0x136>
1c0314be:	96be                	add	a3,a3,a5
1c0314c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff001b>
1c0314c4:	00f6e763          	bltu	a3,a5,1c0314d2 <__udivdi3+0x136>
1c0314c8:	0066f563          	bleu	t1,a3,1c0314d2 <__udivdi3+0x136>
1c0314cc:	ffe70613          	addi	a2,a4,-2
1c0314d0:	96be                	add	a3,a3,a5
1c0314d2:	406686b3          	sub	a3,a3,t1
1c0314d6:	02a6f333          	remu	t1,a3,a0
1c0314da:	02a6d6b3          	divu	a3,a3,a0
1c0314de:	df0328b3          	p.insert	a7,t1,15,16
1c0314e2:	02d58733          	mul	a4,a1,a3
1c0314e6:	8536                	mv	a0,a3
1c0314e8:	00e8fb63          	bleu	a4,a7,1c0314fe <__udivdi3+0x162>
1c0314ec:	98be                	add	a7,a7,a5
1c0314ee:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x1b>
1c0314f2:	00f8e663          	bltu	a7,a5,1c0314fe <__udivdi3+0x162>
1c0314f6:	00e8f463          	bleu	a4,a7,1c0314fe <__udivdi3+0x162>
1c0314fa:	ffe68513          	addi	a0,a3,-2
1c0314fe:	01061793          	slli	a5,a2,0x10
1c031502:	8fc9                	or	a5,a5,a0
1c031504:	853e                	mv	a0,a5
1c031506:	85c2                	mv	a1,a6
1c031508:	8082                	ret
1c03150a:	010006b7          	lui	a3,0x1000
1c03150e:	4741                	li	a4,16
1c031510:	f6d7e9e3          	bltu	a5,a3,1c031482 <__udivdi3+0xe6>
1c031514:	4761                	li	a4,24
1c031516:	b7b5                	j	1c031482 <__udivdi3+0xe6>
1c031518:	00c797b3          	sll	a5,a5,a2
1c03151c:	00d5d333          	srl	t1,a1,a3
1c031520:	0107de13          	srli	t3,a5,0x10
1c031524:	00c59733          	sll	a4,a1,a2
1c031528:	00c518b3          	sll	a7,a0,a2
1c03152c:	03c37633          	remu	a2,t1,t3
1c031530:	00d555b3          	srl	a1,a0,a3
1c031534:	03c35533          	divu	a0,t1,t3
1c031538:	8dd9                	or	a1,a1,a4
1c03153a:	0642                	slli	a2,a2,0x10
1c03153c:	1007d733          	p.exthz	a4,a5
1c031540:	0105d693          	srli	a3,a1,0x10
1c031544:	02a70333          	mul	t1,a4,a0
1c031548:	8ed1                	or	a3,a3,a2
1c03154a:	882a                	mv	a6,a0
1c03154c:	0066fc63          	bleu	t1,a3,1c031564 <__udivdi3+0x1c8>
1c031550:	96be                	add	a3,a3,a5
1c031552:	fff50813          	addi	a6,a0,-1
1c031556:	00f6e763          	bltu	a3,a5,1c031564 <__udivdi3+0x1c8>
1c03155a:	0066f563          	bleu	t1,a3,1c031564 <__udivdi3+0x1c8>
1c03155e:	ffe50813          	addi	a6,a0,-2
1c031562:	96be                	add	a3,a3,a5
1c031564:	406686b3          	sub	a3,a3,t1
1c031568:	03c6f633          	remu	a2,a3,t3
1c03156c:	03c6d6b3          	divu	a3,a3,t3
1c031570:	df0625b3          	p.insert	a1,a2,15,16
1c031574:	02d70733          	mul	a4,a4,a3
1c031578:	8636                	mv	a2,a3
1c03157a:	00e5fc63          	bleu	a4,a1,1c031592 <__udivdi3+0x1f6>
1c03157e:	95be                	add	a1,a1,a5
1c031580:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff001b>
1c031584:	00f5e763          	bltu	a1,a5,1c031592 <__udivdi3+0x1f6>
1c031588:	00e5f563          	bleu	a4,a1,1c031592 <__udivdi3+0x1f6>
1c03158c:	ffe68613          	addi	a2,a3,-2
1c031590:	95be                	add	a1,a1,a5
1c031592:	0842                	slli	a6,a6,0x10
1c031594:	40e58733          	sub	a4,a1,a4
1c031598:	00c86833          	or	a6,a6,a2
1c03159c:	b701                	j	1c03149c <__udivdi3+0x100>
1c03159e:	12d5ea63          	bltu	a1,a3,1c0316d2 <__udivdi3+0x336>
1c0315a2:	67c1                	lui	a5,0x10
1c0315a4:	02f6fd63          	bleu	a5,a3,1c0315de <__udivdi3+0x242>
1c0315a8:	0ff00793          	li	a5,255
1c0315ac:	00d7b8b3          	sltu	a7,a5,a3
1c0315b0:	088e                	slli	a7,a7,0x3
1c0315b2:	1c001737          	lui	a4,0x1c001
1c0315b6:	0116d7b3          	srl	a5,a3,a7
1c0315ba:	86870713          	addi	a4,a4,-1944 # 1c000868 <__DTOR_END__>
1c0315be:	97ba                	add	a5,a5,a4
1c0315c0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x1c>
1c0315c4:	02000813          	li	a6,32
1c0315c8:	97c6                	add	a5,a5,a7
1c0315ca:	40f80833          	sub	a6,a6,a5
1c0315ce:	00081f63          	bnez	a6,1c0315ec <__udivdi3+0x250>
1c0315d2:	4785                	li	a5,1
1c0315d4:	f2b6e8e3          	bltu	a3,a1,1c031504 <__udivdi3+0x168>
1c0315d8:	04a637b3          	p.sletu	a5,a2,a0
1c0315dc:	b725                	j	1c031504 <__udivdi3+0x168>
1c0315de:	010007b7          	lui	a5,0x1000
1c0315e2:	48c1                	li	a7,16
1c0315e4:	fcf6e7e3          	bltu	a3,a5,1c0315b2 <__udivdi3+0x216>
1c0315e8:	48e1                	li	a7,24
1c0315ea:	b7e1                	j	1c0315b2 <__udivdi3+0x216>
1c0315ec:	00f658b3          	srl	a7,a2,a5
1c0315f0:	010696b3          	sll	a3,a3,a6
1c0315f4:	00d8e6b3          	or	a3,a7,a3
1c0315f8:	00f5d333          	srl	t1,a1,a5
1c0315fc:	0106de13          	srli	t3,a3,0x10
1c031600:	00f55733          	srl	a4,a0,a5
1c031604:	03c377b3          	remu	a5,t1,t3
1c031608:	010595b3          	sll	a1,a1,a6
1c03160c:	03c35333          	divu	t1,t1,t3
1c031610:	8f4d                	or	a4,a4,a1
1c031612:	07c2                	slli	a5,a5,0x10
1c031614:	1006d8b3          	p.exthz	a7,a3
1c031618:	01075593          	srli	a1,a4,0x10
1c03161c:	8ddd                	or	a1,a1,a5
1c03161e:	02688eb3          	mul	t4,a7,t1
1c031622:	01061633          	sll	a2,a2,a6
1c031626:	879a                	mv	a5,t1
1c031628:	01d5fc63          	bleu	t4,a1,1c031640 <__udivdi3+0x2a4>
1c03162c:	95b6                	add	a1,a1,a3
1c03162e:	fff30793          	addi	a5,t1,-1
1c031632:	00d5e763          	bltu	a1,a3,1c031640 <__udivdi3+0x2a4>
1c031636:	01d5f563          	bleu	t4,a1,1c031640 <__udivdi3+0x2a4>
1c03163a:	ffe30793          	addi	a5,t1,-2
1c03163e:	95b6                	add	a1,a1,a3
1c031640:	41d585b3          	sub	a1,a1,t4
1c031644:	03c5f333          	remu	t1,a1,t3
1c031648:	03c5d5b3          	divu	a1,a1,t3
1c03164c:	df032733          	p.insert	a4,t1,15,16
1c031650:	02b888b3          	mul	a7,a7,a1
1c031654:	832e                	mv	t1,a1
1c031656:	01177c63          	bleu	a7,a4,1c03166e <__udivdi3+0x2d2>
1c03165a:	9736                	add	a4,a4,a3
1c03165c:	fff58313          	addi	t1,a1,-1
1c031660:	00d76763          	bltu	a4,a3,1c03166e <__udivdi3+0x2d2>
1c031664:	01177563          	bleu	a7,a4,1c03166e <__udivdi3+0x2d2>
1c031668:	ffe58313          	addi	t1,a1,-2
1c03166c:	9736                	add	a4,a4,a3
1c03166e:	07c2                	slli	a5,a5,0x10
1c031670:	6e41                	lui	t3,0x10
1c031672:	0067e7b3          	or	a5,a5,t1
1c031676:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x1b>
1c03167a:	00b7f6b3          	and	a3,a5,a1
1c03167e:	41170733          	sub	a4,a4,a7
1c031682:	8df1                	and	a1,a1,a2
1c031684:	0107d893          	srli	a7,a5,0x10
1c031688:	02b68333          	mul	t1,a3,a1
1c03168c:	02b885b3          	mul	a1,a7,a1
1c031690:	8241                	srli	a2,a2,0x10
1c031692:	8eae                	mv	t4,a1
1c031694:	42c68eb3          	p.mac	t4,a3,a2
1c031698:	01035693          	srli	a3,t1,0x10
1c03169c:	96f6                	add	a3,a3,t4
1c03169e:	02c888b3          	mul	a7,a7,a2
1c0316a2:	00b6f363          	bleu	a1,a3,1c0316a8 <__udivdi3+0x30c>
1c0316a6:	98f2                	add	a7,a7,t3
1c0316a8:	0106d613          	srli	a2,a3,0x10
1c0316ac:	98b2                	add	a7,a7,a2
1c0316ae:	03176063          	bltu	a4,a7,1c0316ce <__udivdi3+0x332>
1c0316b2:	db1713e3          	bne	a4,a7,1c031458 <__udivdi3+0xbc>
1c0316b6:	6741                	lui	a4,0x10
1c0316b8:	177d                	addi	a4,a4,-1
1c0316ba:	8ef9                	and	a3,a3,a4
1c0316bc:	06c2                	slli	a3,a3,0x10
1c0316be:	00e37333          	and	t1,t1,a4
1c0316c2:	01051533          	sll	a0,a0,a6
1c0316c6:	969a                	add	a3,a3,t1
1c0316c8:	4801                	li	a6,0
1c0316ca:	e2d57de3          	bleu	a3,a0,1c031504 <__udivdi3+0x168>
1c0316ce:	17fd                	addi	a5,a5,-1
1c0316d0:	b361                	j	1c031458 <__udivdi3+0xbc>
1c0316d2:	4801                	li	a6,0
1c0316d4:	4781                	li	a5,0
1c0316d6:	b53d                	j	1c031504 <__udivdi3+0x168>

1c0316d8 <__umoddi3>:
1c0316d8:	88b2                	mv	a7,a2
1c0316da:	8736                	mv	a4,a3
1c0316dc:	87aa                	mv	a5,a0
1c0316de:	882e                	mv	a6,a1
1c0316e0:	1a069963          	bnez	a3,1c031892 <__umoddi3+0x1ba>
1c0316e4:	1c0016b7          	lui	a3,0x1c001
1c0316e8:	86868693          	addi	a3,a3,-1944 # 1c000868 <__DTOR_END__>
1c0316ec:	0ac5f463          	bleu	a2,a1,1c031794 <__umoddi3+0xbc>
1c0316f0:	6341                	lui	t1,0x10
1c0316f2:	08667a63          	bleu	t1,a2,1c031786 <__umoddi3+0xae>
1c0316f6:	0ff00313          	li	t1,255
1c0316fa:	00c37363          	bleu	a2,t1,1c031700 <__umoddi3+0x28>
1c0316fe:	4721                	li	a4,8
1c031700:	00e65333          	srl	t1,a2,a4
1c031704:	969a                	add	a3,a3,t1
1c031706:	0006c683          	lbu	a3,0(a3)
1c03170a:	02000313          	li	t1,32
1c03170e:	9736                	add	a4,a4,a3
1c031710:	40e30333          	sub	t1,t1,a4
1c031714:	00030c63          	beqz	t1,1c03172c <__umoddi3+0x54>
1c031718:	006595b3          	sll	a1,a1,t1
1c03171c:	00e55733          	srl	a4,a0,a4
1c031720:	006618b3          	sll	a7,a2,t1
1c031724:	00b76833          	or	a6,a4,a1
1c031728:	006517b3          	sll	a5,a0,t1
1c03172c:	0108d613          	srli	a2,a7,0x10
1c031730:	02c87733          	remu	a4,a6,a2
1c031734:	02c85833          	divu	a6,a6,a2
1c031738:	1008d533          	p.exthz	a0,a7
1c03173c:	0742                	slli	a4,a4,0x10
1c03173e:	0107d693          	srli	a3,a5,0x10
1c031742:	03050833          	mul	a6,a0,a6
1c031746:	8ed9                	or	a3,a3,a4
1c031748:	0106f863          	bleu	a6,a3,1c031758 <__umoddi3+0x80>
1c03174c:	96c6                	add	a3,a3,a7
1c03174e:	0116e563          	bltu	a3,a7,1c031758 <__umoddi3+0x80>
1c031752:	0106f363          	bleu	a6,a3,1c031758 <__umoddi3+0x80>
1c031756:	96c6                	add	a3,a3,a7
1c031758:	410686b3          	sub	a3,a3,a6
1c03175c:	02c6f733          	remu	a4,a3,a2
1c031760:	02c6d6b3          	divu	a3,a3,a2
1c031764:	df0727b3          	p.insert	a5,a4,15,16
1c031768:	02d506b3          	mul	a3,a0,a3
1c03176c:	00d7f863          	bleu	a3,a5,1c03177c <__umoddi3+0xa4>
1c031770:	97c6                	add	a5,a5,a7
1c031772:	0117e563          	bltu	a5,a7,1c03177c <__umoddi3+0xa4>
1c031776:	00d7f363          	bleu	a3,a5,1c03177c <__umoddi3+0xa4>
1c03177a:	97c6                	add	a5,a5,a7
1c03177c:	8f95                	sub	a5,a5,a3
1c03177e:	0067d533          	srl	a0,a5,t1
1c031782:	4581                	li	a1,0
1c031784:	8082                	ret
1c031786:	01000337          	lui	t1,0x1000
1c03178a:	4741                	li	a4,16
1c03178c:	f6666ae3          	bltu	a2,t1,1c031700 <__umoddi3+0x28>
1c031790:	4761                	li	a4,24
1c031792:	b7bd                	j	1c031700 <__umoddi3+0x28>
1c031794:	e601                	bnez	a2,1c03179c <__umoddi3+0xc4>
1c031796:	4605                	li	a2,1
1c031798:	031658b3          	divu	a7,a2,a7
1c03179c:	6641                	lui	a2,0x10
1c03179e:	06c8ff63          	bleu	a2,a7,1c03181c <__umoddi3+0x144>
1c0317a2:	0ff00613          	li	a2,255
1c0317a6:	01167363          	bleu	a7,a2,1c0317ac <__umoddi3+0xd4>
1c0317aa:	4721                	li	a4,8
1c0317ac:	00e8d633          	srl	a2,a7,a4
1c0317b0:	96b2                	add	a3,a3,a2
1c0317b2:	0006c603          	lbu	a2,0(a3)
1c0317b6:	02000313          	li	t1,32
1c0317ba:	963a                	add	a2,a2,a4
1c0317bc:	40c30333          	sub	t1,t1,a2
1c0317c0:	06031563          	bnez	t1,1c03182a <__umoddi3+0x152>
1c0317c4:	411585b3          	sub	a1,a1,a7
1c0317c8:	0108d713          	srli	a4,a7,0x10
1c0317cc:	02e5f6b3          	remu	a3,a1,a4
1c0317d0:	02e5d5b3          	divu	a1,a1,a4
1c0317d4:	1008d533          	p.exthz	a0,a7
1c0317d8:	06c2                	slli	a3,a3,0x10
1c0317da:	0107d613          	srli	a2,a5,0x10
1c0317de:	02b505b3          	mul	a1,a0,a1
1c0317e2:	8ed1                	or	a3,a3,a2
1c0317e4:	00b6f863          	bleu	a1,a3,1c0317f4 <__umoddi3+0x11c>
1c0317e8:	96c6                	add	a3,a3,a7
1c0317ea:	0116e563          	bltu	a3,a7,1c0317f4 <__umoddi3+0x11c>
1c0317ee:	00b6f363          	bleu	a1,a3,1c0317f4 <__umoddi3+0x11c>
1c0317f2:	96c6                	add	a3,a3,a7
1c0317f4:	40b685b3          	sub	a1,a3,a1
1c0317f8:	02e5f6b3          	remu	a3,a1,a4
1c0317fc:	02e5d5b3          	divu	a1,a1,a4
1c031800:	df06a7b3          	p.insert	a5,a3,15,16
1c031804:	02b505b3          	mul	a1,a0,a1
1c031808:	00b7f863          	bleu	a1,a5,1c031818 <__umoddi3+0x140>
1c03180c:	97c6                	add	a5,a5,a7
1c03180e:	0117e563          	bltu	a5,a7,1c031818 <__umoddi3+0x140>
1c031812:	00b7f363          	bleu	a1,a5,1c031818 <__umoddi3+0x140>
1c031816:	97c6                	add	a5,a5,a7
1c031818:	8f8d                	sub	a5,a5,a1
1c03181a:	b795                	j	1c03177e <__umoddi3+0xa6>
1c03181c:	01000637          	lui	a2,0x1000
1c031820:	4741                	li	a4,16
1c031822:	f8c8e5e3          	bltu	a7,a2,1c0317ac <__umoddi3+0xd4>
1c031826:	4761                	li	a4,24
1c031828:	b751                	j	1c0317ac <__umoddi3+0xd4>
1c03182a:	006898b3          	sll	a7,a7,t1
1c03182e:	00c5d733          	srl	a4,a1,a2
1c031832:	006517b3          	sll	a5,a0,t1
1c031836:	00c55633          	srl	a2,a0,a2
1c03183a:	006595b3          	sll	a1,a1,t1
1c03183e:	0108d513          	srli	a0,a7,0x10
1c031842:	8dd1                	or	a1,a1,a2
1c031844:	02a77633          	remu	a2,a4,a0
1c031848:	02a75733          	divu	a4,a4,a0
1c03184c:	1008d833          	p.exthz	a6,a7
1c031850:	0642                	slli	a2,a2,0x10
1c031852:	0105d693          	srli	a3,a1,0x10
1c031856:	02e80733          	mul	a4,a6,a4
1c03185a:	8ed1                	or	a3,a3,a2
1c03185c:	00e6f863          	bleu	a4,a3,1c03186c <__umoddi3+0x194>
1c031860:	96c6                	add	a3,a3,a7
1c031862:	0116e563          	bltu	a3,a7,1c03186c <__umoddi3+0x194>
1c031866:	00e6f363          	bleu	a4,a3,1c03186c <__umoddi3+0x194>
1c03186a:	96c6                	add	a3,a3,a7
1c03186c:	8e99                	sub	a3,a3,a4
1c03186e:	02a6f733          	remu	a4,a3,a0
1c031872:	02a6d6b3          	divu	a3,a3,a0
1c031876:	df0725b3          	p.insert	a1,a4,15,16
1c03187a:	02d806b3          	mul	a3,a6,a3
1c03187e:	00d5f863          	bleu	a3,a1,1c03188e <__umoddi3+0x1b6>
1c031882:	95c6                	add	a1,a1,a7
1c031884:	0115e563          	bltu	a1,a7,1c03188e <__umoddi3+0x1b6>
1c031888:	00d5f363          	bleu	a3,a1,1c03188e <__umoddi3+0x1b6>
1c03188c:	95c6                	add	a1,a1,a7
1c03188e:	8d95                	sub	a1,a1,a3
1c031890:	bf25                	j	1c0317c8 <__umoddi3+0xf0>
1c031892:	eed5e9e3          	bltu	a1,a3,1c031784 <__umoddi3+0xac>
1c031896:	6741                	lui	a4,0x10
1c031898:	04e6f563          	bleu	a4,a3,1c0318e2 <__umoddi3+0x20a>
1c03189c:	0ff00e93          	li	t4,255
1c0318a0:	00deb733          	sltu	a4,t4,a3
1c0318a4:	070e                	slli	a4,a4,0x3
1c0318a6:	1c001337          	lui	t1,0x1c001
1c0318aa:	00e6d8b3          	srl	a7,a3,a4
1c0318ae:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0318b2:	989a                	add	a7,a7,t1
1c0318b4:	0008ce83          	lbu	t4,0(a7)
1c0318b8:	02000e13          	li	t3,32
1c0318bc:	9eba                	add	t4,t4,a4
1c0318be:	41de0e33          	sub	t3,t3,t4
1c0318c2:	020e1763          	bnez	t3,1c0318f0 <__umoddi3+0x218>
1c0318c6:	00b6e463          	bltu	a3,a1,1c0318ce <__umoddi3+0x1f6>
1c0318ca:	00c56963          	bltu	a0,a2,1c0318dc <__umoddi3+0x204>
1c0318ce:	40c507b3          	sub	a5,a0,a2
1c0318d2:	8d95                	sub	a1,a1,a3
1c0318d4:	00f53533          	sltu	a0,a0,a5
1c0318d8:	40a58833          	sub	a6,a1,a0
1c0318dc:	853e                	mv	a0,a5
1c0318de:	85c2                	mv	a1,a6
1c0318e0:	b555                	j	1c031784 <__umoddi3+0xac>
1c0318e2:	010008b7          	lui	a7,0x1000
1c0318e6:	4741                	li	a4,16
1c0318e8:	fb16efe3          	bltu	a3,a7,1c0318a6 <__umoddi3+0x1ce>
1c0318ec:	4761                	li	a4,24
1c0318ee:	bf65                	j	1c0318a6 <__umoddi3+0x1ce>
1c0318f0:	01d65733          	srl	a4,a2,t4
1c0318f4:	01c696b3          	sll	a3,a3,t3
1c0318f8:	8ed9                	or	a3,a3,a4
1c0318fa:	01d5d7b3          	srl	a5,a1,t4
1c0318fe:	0106d813          	srli	a6,a3,0x10
1c031902:	0307f333          	remu	t1,a5,a6
1c031906:	01d558b3          	srl	a7,a0,t4
1c03190a:	0307d7b3          	divu	a5,a5,a6
1c03190e:	01c595b3          	sll	a1,a1,t3
1c031912:	00b8e5b3          	or	a1,a7,a1
1c031916:	0342                	slli	t1,t1,0x10
1c031918:	1006d733          	p.exthz	a4,a3
1c03191c:	0105d893          	srli	a7,a1,0x10
1c031920:	011368b3          	or	a7,t1,a7
1c031924:	02f70f33          	mul	t5,a4,a5
1c031928:	01c61633          	sll	a2,a2,t3
1c03192c:	01c51533          	sll	a0,a0,t3
1c031930:	833e                	mv	t1,a5
1c031932:	01e8fc63          	bleu	t5,a7,1c03194a <__umoddi3+0x272>
1c031936:	98b6                	add	a7,a7,a3
1c031938:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff001b>
1c03193c:	00d8e763          	bltu	a7,a3,1c03194a <__umoddi3+0x272>
1c031940:	01e8f563          	bleu	t5,a7,1c03194a <__umoddi3+0x272>
1c031944:	ffe78313          	addi	t1,a5,-2
1c031948:	98b6                	add	a7,a7,a3
1c03194a:	41e888b3          	sub	a7,a7,t5
1c03194e:	0308f7b3          	remu	a5,a7,a6
1c031952:	0308d8b3          	divu	a7,a7,a6
1c031956:	df07a5b3          	p.insert	a1,a5,15,16
1c03195a:	03170733          	mul	a4,a4,a7
1c03195e:	87c6                	mv	a5,a7
1c031960:	00e5fc63          	bleu	a4,a1,1c031978 <__umoddi3+0x2a0>
1c031964:	95b6                	add	a1,a1,a3
1c031966:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff001b>
1c03196a:	00d5e763          	bltu	a1,a3,1c031978 <__umoddi3+0x2a0>
1c03196e:	00e5f563          	bleu	a4,a1,1c031978 <__umoddi3+0x2a0>
1c031972:	ffe88793          	addi	a5,a7,-2
1c031976:	95b6                	add	a1,a1,a3
1c031978:	0342                	slli	t1,t1,0x10
1c03197a:	6f41                	lui	t5,0x10
1c03197c:	00f36333          	or	t1,t1,a5
1c031980:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x1b>
1c031984:	00f37833          	and	a6,t1,a5
1c031988:	01035313          	srli	t1,t1,0x10
1c03198c:	8ff1                	and	a5,a5,a2
1c03198e:	02f808b3          	mul	a7,a6,a5
1c031992:	02f307b3          	mul	a5,t1,a5
1c031996:	8d99                	sub	a1,a1,a4
1c031998:	8fbe                	mv	t6,a5
1c03199a:	01065713          	srli	a4,a2,0x10
1c03199e:	42e80fb3          	p.mac	t6,a6,a4
1c0319a2:	0108d813          	srli	a6,a7,0x10
1c0319a6:	987e                	add	a6,a6,t6
1c0319a8:	02e30333          	mul	t1,t1,a4
1c0319ac:	00f87363          	bleu	a5,a6,1c0319b2 <__umoddi3+0x2da>
1c0319b0:	937a                	add	t1,t1,t5
1c0319b2:	01085713          	srli	a4,a6,0x10
1c0319b6:	933a                	add	t1,t1,a4
1c0319b8:	6741                	lui	a4,0x10
1c0319ba:	177d                	addi	a4,a4,-1
1c0319bc:	00e87833          	and	a6,a6,a4
1c0319c0:	0842                	slli	a6,a6,0x10
1c0319c2:	00e8f733          	and	a4,a7,a4
1c0319c6:	9742                	add	a4,a4,a6
1c0319c8:	0065e663          	bltu	a1,t1,1c0319d4 <__umoddi3+0x2fc>
1c0319cc:	00659d63          	bne	a1,t1,1c0319e6 <__umoddi3+0x30e>
1c0319d0:	00e57b63          	bleu	a4,a0,1c0319e6 <__umoddi3+0x30e>
1c0319d4:	40c70633          	sub	a2,a4,a2
1c0319d8:	00c73733          	sltu	a4,a4,a2
1c0319dc:	40d30333          	sub	t1,t1,a3
1c0319e0:	40e30333          	sub	t1,t1,a4
1c0319e4:	8732                	mv	a4,a2
1c0319e6:	40e50733          	sub	a4,a0,a4
1c0319ea:	00e53533          	sltu	a0,a0,a4
1c0319ee:	406585b3          	sub	a1,a1,t1
1c0319f2:	8d89                	sub	a1,a1,a0
1c0319f4:	01d597b3          	sll	a5,a1,t4
1c0319f8:	01c75733          	srl	a4,a4,t3
1c0319fc:	00e7e533          	or	a0,a5,a4
1c031a00:	01c5d5b3          	srl	a1,a1,t3
1c031a04:	b341                	j	1c031784 <__umoddi3+0xac>

1c031a06 <__extendsfdf2>:
1c031a06:	002027f3          	csrr	a5,0x2
1c031a0a:	cf751633          	p.extractu	a2,a0,7,23
1c031a0e:	00160713          	addi	a4,a2,1 # 1000001 <__l1_heap_size+0xff001d>
1c031a12:	ee873733          	p.bclr	a4,a4,23,8
1c031a16:	4685                	li	a3,1
1c031a18:	ec0517b3          	p.extractu	a5,a0,22,0
1c031a1c:	817d                	srli	a0,a0,0x1f
1c031a1e:	00e6d963          	ble	a4,a3,1c031a30 <__extendsfdf2+0x2a>
1c031a22:	0037d713          	srli	a4,a5,0x3
1c031a26:	38060613          	addi	a2,a2,896
1c031a2a:	07f6                	slli	a5,a5,0x1d
1c031a2c:	4681                	li	a3,0
1c031a2e:	a899                	j	1c031a84 <__extendsfdf2+0x7e>
1c031a30:	ee05                	bnez	a2,1c031a68 <__extendsfdf2+0x62>
1c031a32:	c7ad                	beqz	a5,1c031a9c <__extendsfdf2+0x96>
1c031a34:	477d                	li	a4,31
1c031a36:	100796b3          	p.fl1	a3,a5
1c031a3a:	40d706b3          	sub	a3,a4,a3
1c031a3e:	4729                	li	a4,10
1c031a40:	00d74e63          	blt	a4,a3,1c031a5c <__extendsfdf2+0x56>
1c031a44:	472d                	li	a4,11
1c031a46:	8f15                	sub	a4,a4,a3
1c031a48:	01568613          	addi	a2,a3,21
1c031a4c:	00e7d733          	srl	a4,a5,a4
1c031a50:	00c797b3          	sll	a5,a5,a2
1c031a54:	38900613          	li	a2,905
1c031a58:	8e15                	sub	a2,a2,a3
1c031a5a:	bfc9                	j	1c031a2c <__extendsfdf2+0x26>
1c031a5c:	ff568713          	addi	a4,a3,-11
1c031a60:	00e79733          	sll	a4,a5,a4
1c031a64:	4781                	li	a5,0
1c031a66:	b7fd                	j	1c031a54 <__extendsfdf2+0x4e>
1c031a68:	cf8d                	beqz	a5,1c031aa2 <__extendsfdf2+0x9c>
1c031a6a:	004006b7          	lui	a3,0x400
1c031a6e:	8efd                	and	a3,a3,a5
1c031a70:	0037d713          	srli	a4,a5,0x3
1c031a74:	0016b693          	seqz	a3,a3
1c031a78:	0692                	slli	a3,a3,0x4
1c031a7a:	c1374733          	p.bset	a4,a4,0,19
1c031a7e:	07f6                	slli	a5,a5,0x1d
1c031a80:	7ff00613          	li	a2,2047
1c031a84:	4581                	li	a1,0
1c031a86:	e60725b3          	p.insert	a1,a4,19,0
1c031a8a:	d54625b3          	p.insert	a1,a2,10,20
1c031a8e:	c1f525b3          	p.insert	a1,a0,0,31
1c031a92:	853e                	mv	a0,a5
1c031a94:	c299                	beqz	a3,1c031a9a <__extendsfdf2+0x94>
1c031a96:	0016a073          	csrs	0x1,a3
1c031a9a:	8082                	ret
1c031a9c:	4701                	li	a4,0
1c031a9e:	4601                	li	a2,0
1c031aa0:	b771                	j	1c031a2c <__extendsfdf2+0x26>
1c031aa2:	4701                	li	a4,0
1c031aa4:	7ff00613          	li	a2,2047
1c031aa8:	b751                	j	1c031a2c <__extendsfdf2+0x26>

1c031aaa <cpu_perf_get>:
1c031aaa:	14f52563          	p.beqimm	a0,15,1c031bf4 <cpu_perf_get+0x14a>
1c031aae:	47bd                	li	a5,15
1c031ab0:	02a7e463          	bltu	a5,a0,1c031ad8 <cpu_perf_get+0x2e>
1c031ab4:	14752363          	p.beqimm	a0,7,1c031bfa <cpu_perf_get+0x150>
1c031ab8:	479d                	li	a5,7
1c031aba:	04a7e163          	bltu	a5,a0,1c031afc <cpu_perf_get+0x52>
1c031abe:	0e352763          	p.beqimm	a0,3,1c031bac <cpu_perf_get+0x102>
1c031ac2:	478d                	li	a5,3
1c031ac4:	06a7ee63          	bltu	a5,a0,1c031b40 <cpu_perf_get+0x96>
1c031ac8:	10152a63          	p.beqimm	a0,1,1c031bdc <cpu_perf_get+0x132>
1c031acc:	4785                	li	a5,1
1c031ace:	0aa7ea63          	bltu	a5,a0,1c031b82 <cpu_perf_get+0xd8>
1c031ad2:	78002573          	csrr	a0,pccr0
1c031ad6:	8082                	ret
1c031ad8:	47dd                	li	a5,23
1c031ada:	10f50463          	beq	a0,a5,1c031be2 <cpu_perf_get+0x138>
1c031ade:	02a7ec63          	bltu	a5,a0,1c031b16 <cpu_perf_get+0x6c>
1c031ae2:	47cd                	li	a5,19
1c031ae4:	0af50863          	beq	a0,a5,1c031b94 <cpu_perf_get+0xea>
1c031ae8:	06a7ef63          	bltu	a5,a0,1c031b66 <cpu_perf_get+0xbc>
1c031aec:	47c5                	li	a5,17
1c031aee:	0ef50163          	beq	a0,a5,1c031bd0 <cpu_perf_get+0x126>
1c031af2:	0ca7e063          	bltu	a5,a0,1c031bb2 <cpu_perf_get+0x108>
1c031af6:	79002573          	csrr	a0,pccr16
1c031afa:	8082                	ret
1c031afc:	08b52f63          	p.beqimm	a0,11,1c031b9a <cpu_perf_get+0xf0>
1c031b00:	47ad                	li	a5,11
1c031b02:	02a7e763          	bltu	a5,a0,1c031b30 <cpu_perf_get+0x86>
1c031b06:	0e952463          	p.beqimm	a0,9,1c031bee <cpu_perf_get+0x144>
1c031b0a:	47a5                	li	a5,9
1c031b0c:	06a7e863          	bltu	a5,a0,1c031b7c <cpu_perf_get+0xd2>
1c031b10:	78802573          	csrr	a0,pccr8
1c031b14:	8082                	ret
1c031b16:	47ed                	li	a5,27
1c031b18:	08f50763          	beq	a0,a5,1c031ba6 <cpu_perf_get+0xfc>
1c031b1c:	02a7ea63          	bltu	a5,a0,1c031b50 <cpu_perf_get+0xa6>
1c031b20:	47e5                	li	a5,25
1c031b22:	0af50463          	beq	a0,a5,1c031bca <cpu_perf_get+0x120>
1c031b26:	06a7e463          	bltu	a5,a0,1c031b8e <cpu_perf_get+0xe4>
1c031b2a:	79802573          	csrr	a0,pccr24
1c031b2e:	8082                	ret
1c031b30:	0ad52c63          	p.beqimm	a0,13,1c031be8 <cpu_perf_get+0x13e>
1c031b34:	47b5                	li	a5,13
1c031b36:	04a7e063          	bltu	a5,a0,1c031b76 <cpu_perf_get+0xcc>
1c031b3a:	78c02573          	csrr	a0,pccr12
1c031b3e:	8082                	ret
1c031b40:	06552f63          	p.beqimm	a0,5,1c031bbe <cpu_perf_get+0x114>
1c031b44:	4795                	li	a5,5
1c031b46:	04a7e163          	bltu	a5,a0,1c031b88 <cpu_perf_get+0xde>
1c031b4a:	78402573          	csrr	a0,pccr4
1c031b4e:	8082                	ret
1c031b50:	47f5                	li	a5,29
1c031b52:	06f50963          	beq	a0,a5,1c031bc4 <cpu_perf_get+0x11a>
1c031b56:	04f56563          	bltu	a0,a5,1c031ba0 <cpu_perf_get+0xf6>
1c031b5a:	47f9                	li	a5,30
1c031b5c:	0af51263          	bne	a0,a5,1c031c00 <cpu_perf_get+0x156>
1c031b60:	79e02573          	csrr	a0,pccr30
1c031b64:	8082                	ret
1c031b66:	47d5                	li	a5,21
1c031b68:	06f50763          	beq	a0,a5,1c031bd6 <cpu_perf_get+0x12c>
1c031b6c:	04a7e663          	bltu	a5,a0,1c031bb8 <cpu_perf_get+0x10e>
1c031b70:	79402573          	csrr	a0,pccr20
1c031b74:	8082                	ret
1c031b76:	78e02573          	csrr	a0,pccr14
1c031b7a:	8082                	ret
1c031b7c:	78a02573          	csrr	a0,pccr10
1c031b80:	8082                	ret
1c031b82:	78202573          	csrr	a0,pccr2
1c031b86:	8082                	ret
1c031b88:	78602573          	csrr	a0,pccr6
1c031b8c:	8082                	ret
1c031b8e:	79a02573          	csrr	a0,pccr26
1c031b92:	8082                	ret
1c031b94:	79302573          	csrr	a0,pccr19
1c031b98:	8082                	ret
1c031b9a:	78b02573          	csrr	a0,pccr11
1c031b9e:	8082                	ret
1c031ba0:	79c02573          	csrr	a0,pccr28
1c031ba4:	8082                	ret
1c031ba6:	79b02573          	csrr	a0,pccr27
1c031baa:	8082                	ret
1c031bac:	78302573          	csrr	a0,pccr3
1c031bb0:	8082                	ret
1c031bb2:	79202573          	csrr	a0,pccr18
1c031bb6:	8082                	ret
1c031bb8:	79602573          	csrr	a0,pccr22
1c031bbc:	8082                	ret
1c031bbe:	78502573          	csrr	a0,pccr5
1c031bc2:	8082                	ret
1c031bc4:	79d02573          	csrr	a0,pccr29
1c031bc8:	8082                	ret
1c031bca:	79902573          	csrr	a0,pccr25
1c031bce:	8082                	ret
1c031bd0:	79102573          	csrr	a0,pccr17
1c031bd4:	8082                	ret
1c031bd6:	79502573          	csrr	a0,pccr21
1c031bda:	8082                	ret
1c031bdc:	78102573          	csrr	a0,pccr1
1c031be0:	8082                	ret
1c031be2:	79702573          	csrr	a0,pccr23
1c031be6:	8082                	ret
1c031be8:	78d02573          	csrr	a0,pccr13
1c031bec:	8082                	ret
1c031bee:	78902573          	csrr	a0,pccr9
1c031bf2:	8082                	ret
1c031bf4:	78f02573          	csrr	a0,pccr15
1c031bf8:	8082                	ret
1c031bfa:	78702573          	csrr	a0,pccr7
1c031bfe:	8082                	ret
1c031c00:	4501                	li	a0,0
1c031c02:	8082                	ret

1c031c04 <task_initMatTransposed>:
1c031c04:	1c001e37          	lui	t3,0x1c001
1c031c08:	1c011337          	lui	t1,0x1c011
1c031c0c:	08000713          	li	a4,128
1c031c10:	4e81                	li	t4,0
1c031c12:	240e0e13          	addi	t3,t3,576 # 1c001240 <_edata>
1c031c16:	24030313          	addi	t1,t1,576 # 1c011240 <B>
1c031c1a:	08000f13          	li	t5,128
1c031c1e:	036f407b          	lp.setup	x0,t5,1c031c8a <task_initMatTransposed+0x86>
1c031c22:	0ffef793          	andi	a5,t4,255
1c031c26:	40f70833          	sub	a6,a4,a5
1c031c2a:	1871                	addi	a6,a6,-4
1c031c2c:	0ff87813          	andi	a6,a6,255
1c031c30:	00285813          	srli	a6,a6,0x2
1c031c34:	88f6                	mv	a7,t4
1c031c36:	0805                	addi	a6,a6,1
1c031c38:	026840fb          	lp.setup	x1,a6,1c031c84 <task_initMatTransposed+0x80>
1c031c3c:	00289713          	slli	a4,a7,0x2
1c031c40:	00178513          	addi	a0,a5,1
1c031c44:	00278593          	addi	a1,a5,2
1c031c48:	00378693          	addi	a3,a5,3
1c031c4c:	00ee0633          	add	a2,t3,a4
1c031c50:	0ff57513          	andi	a0,a0,255
1c031c54:	971a                	add	a4,a4,t1
1c031c56:	0ff5f593          	andi	a1,a1,255
1c031c5a:	0ff6f693          	andi	a3,a3,255
1c031c5e:	00f60023          	sb	a5,0(a2)
1c031c62:	00f70023          	sb	a5,0(a4) # 10000 <__l1_heap_size+0x1c>
1c031c66:	00a600a3          	sb	a0,1(a2)
1c031c6a:	0791                	addi	a5,a5,4
1c031c6c:	00a700a3          	sb	a0,1(a4)
1c031c70:	00b60123          	sb	a1,2(a2)
1c031c74:	00b70123          	sb	a1,2(a4)
1c031c78:	00d601a3          	sb	a3,3(a2)
1c031c7c:	00d701a3          	sb	a3,3(a4)
1c031c80:	0ff7f793          	andi	a5,a5,255
1c031c84:	0891                	addi	a7,a7,4
1c031c86:	080e8e93          	addi	t4,t4,128
1c031c8a:	0807c713          	xori	a4,a5,128
1c031c8e:	8082                	ret

1c031c90 <task_matMultVectorization>:
1c031c90:	62c1                	lui	t0,0x10
1c031c92:	8e09                	sub	a2,a2,a0
1c031c94:	20028293          	addi	t0,t0,512 # 10200 <__l1_heap_size+0x21c>
1c031c98:	8f2a                	mv	t5,a0
1c031c9a:	20050f93          	addi	t6,a0,512
1c031c9e:	92aa                	add	t0,t0,a0
1c031ca0:	e0060393          	addi	t2,a2,-512
1c031ca4:	40760e33          	sub	t3,a2,t2
1c031ca8:	1e71                	addi	t3,t3,-4
1c031caa:	002e5e13          	srli	t3,t3,0x2
1c031cae:	8eae                	mv	t4,a1
1c031cb0:	01f38333          	add	t1,t2,t6
1c031cb4:	0e05                	addi	t3,t3,1
1c031cb6:	016e407b          	lp.setup	x0,t3,1c031ce2 <task_matMultVectorization+0x52>
1c031cba:	41ef86b3          	sub	a3,t6,t5
1c031cbe:	16c1                	addi	a3,a3,-16
1c031cc0:	8291                	srli	a3,a3,0x4
1c031cc2:	0003222b          	p.sw	zero,4(t1!)
1c031cc6:	88f6                	mv	a7,t4
1c031cc8:	887a                	mv	a6,t5
1c031cca:	4501                	li	a0,0
1c031ccc:	0685                	addi	a3,a3,1
1c031cce:	0086c0fb          	lp.setup	x1,a3,1c031cde <task_matMultVectorization+0x4e>
1c031cd2:	0108270b          	p.lw	a4,16(a6!)
1c031cd6:	0108a78b          	p.lw	a5,16(a7!)
1c031cda:	a0f71557          	pv.sdotup.b	a0,a4,a5
1c031cde:	fea32e23          	sw	a0,-4(t1)
1c031ce2:	200e8e93          	addi	t4,t4,512
1c031ce6:	20080f93          	addi	t6,a6,512
1c031cea:	200f0f13          	addi	t5,t5,512
1c031cee:	fbf29be3          	bne	t0,t6,1c031ca4 <task_matMultVectorization+0x14>
1c031cf2:	8082                	ret

1c031cf4 <main>:
1c031cf4:	1141                	addi	sp,sp,-16
1c031cf6:	c606                	sw	ra,12(sp)
1c031cf8:	c422                	sw	s0,8(sp)
1c031cfa:	c226                	sw	s1,4(sp)
1c031cfc:	3721                	jal	1c031c04 <task_initMatTransposed>
1c031cfe:	000207b7          	lui	a5,0x20
1c031d02:	0789                	addi	a5,a5,2
1c031d04:	cc079073          	csrw	0xcc0,a5
1c031d08:	f1402473          	csrr	s0,mhartid
1c031d0c:	47fd                	li	a5,31
1c031d0e:	ca541733          	p.extractu	a4,s0,5,5
1c031d12:	0af70a63          	beq	a4,a5,1c031dc6 <main+0xd2>
1c031d16:	102007b7          	lui	a5,0x10200
1c031d1a:	4705                	li	a4,1
1c031d1c:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c031d20:	02e7a023          	sw	a4,32(a5)
1c031d24:	4781                	li	a5,0
1c031d26:	79f79073          	csrw	pccr31,a5
1c031d2a:	ca5417b3          	p.extractu	a5,s0,5,5
1c031d2e:	477d                	li	a4,31
1c031d30:	0ae78c63          	beq	a5,a4,1c031de8 <main+0xf4>
1c031d34:	102007b7          	lui	a5,0x10200
1c031d38:	4705                	li	a4,1
1c031d3a:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c031d3e:	00e7ac23          	sw	a4,24(a5)
1c031d42:	478d                	li	a5,3
1c031d44:	cc179073          	csrw	0xcc1,a5
1c031d48:	1c021637          	lui	a2,0x1c021
1c031d4c:	1c0115b7          	lui	a1,0x1c011
1c031d50:	1c001537          	lui	a0,0x1c001
1c031d54:	24060613          	addi	a2,a2,576 # 1c021240 <tempC>
1c031d58:	24058593          	addi	a1,a1,576 # 1c011240 <B>
1c031d5c:	24050513          	addi	a0,a0,576 # 1c001240 <_edata>
1c031d60:	3f05                	jal	1c031c90 <task_matMultVectorization>
1c031d62:	ca5417b3          	p.extractu	a5,s0,5,5
1c031d66:	477d                	li	a4,31
1c031d68:	06e78863          	beq	a5,a4,1c031dd8 <main+0xe4>
1c031d6c:	102007b7          	lui	a5,0x10200
1c031d70:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c031d74:	0007a023          	sw	zero,0(a5)
1c031d78:	4781                	li	a5,0
1c031d7a:	cc179073          	csrw	0xcc1,a5
1c031d7e:	4505                	li	a0,1
1c031d80:	332d                	jal	1c031aaa <cpu_perf_get>
1c031d82:	ca541433          	p.extractu	s0,s0,5,5
1c031d86:	47fd                	li	a5,31
1c031d88:	84aa                	mv	s1,a0
1c031d8a:	06f40863          	beq	s0,a5,1c031dfa <main+0x106>
1c031d8e:	10200437          	lui	s0,0x10200
1c031d92:	40040413          	addi	s0,s0,1024 # 10200400 <__l1_end+0x2003e4>
1c031d96:	00842403          	lw	s0,8(s0)
1c031d9a:	d014f7d3          	fcvt.s.wu	a5,s1
1c031d9e:	d0147553          	fcvt.s.wu	a0,s0
1c031da2:	18f57553          	fdiv.s	a0,a0,a5
1c031da6:	3185                	jal	1c031a06 <__extendsfdf2>
1c031da8:	872a                	mv	a4,a0
1c031daa:	1c001537          	lui	a0,0x1c001
1c031dae:	87ae                	mv	a5,a1
1c031db0:	8622                	mv	a2,s0
1c031db2:	85a6                	mv	a1,s1
1c031db4:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c031db8:	22f5                	jal	1c031fa4 <printf>
1c031dba:	40b2                	lw	ra,12(sp)
1c031dbc:	4422                	lw	s0,8(sp)
1c031dbe:	4492                	lw	s1,4(sp)
1c031dc0:	4501                	li	a0,0
1c031dc2:	0141                	addi	sp,sp,16
1c031dc4:	8082                	ret
1c031dc6:	4785                	li	a5,1
1c031dc8:	1a10b737          	lui	a4,0x1a10b
1c031dcc:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c031dd0:	4781                	li	a5,0
1c031dd2:	79f79073          	csrw	pccr31,a5
1c031dd6:	bf91                	j	1c031d2a <main+0x36>
1c031dd8:	1a10b7b7          	lui	a5,0x1a10b
1c031ddc:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c031de0:	4781                	li	a5,0
1c031de2:	cc179073          	csrw	0xcc1,a5
1c031de6:	bf61                	j	1c031d7e <main+0x8a>
1c031de8:	4785                	li	a5,1
1c031dea:	1a10b737          	lui	a4,0x1a10b
1c031dee:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c031df2:	478d                	li	a5,3
1c031df4:	cc179073          	csrw	0xcc1,a5
1c031df8:	bf81                	j	1c031d48 <main+0x54>
1c031dfa:	1a10b437          	lui	s0,0x1a10b
1c031dfe:	00842403          	lw	s0,8(s0) # 1a10b008 <__l1_end+0xa10afec>
1c031e02:	bf61                	j	1c031d9a <main+0xa6>

1c031e04 <pos_fll_init>:
1c031e04:	00451593          	slli	a1,a0,0x4
1c031e08:	832a                	mv	t1,a0
1c031e0a:	00458e13          	addi	t3,a1,4
1c031e0e:	1a100637          	lui	a2,0x1a100
1c031e12:	21c67703          	p.lw	a4,t3(a2)
1c031e16:	86ba                	mv	a3,a4
1c031e18:	04074163          	bltz	a4,1c031e5a <pos_fll_init+0x56>
1c031e1c:	00858793          	addi	a5,a1,8
1c031e20:	20f67883          	p.lw	a7,a5(a2)
1c031e24:	4519                	li	a0,6
1c031e26:	caa528b3          	p.insert	a7,a0,5,10
1c031e2a:	05000513          	li	a0,80
1c031e2e:	d70528b3          	p.insert	a7,a0,11,16
1c031e32:	1a100837          	lui	a6,0x1a100
1c031e36:	011867a3          	p.sw	a7,a5(a6)
1c031e3a:	05b1                	addi	a1,a1,12
1c031e3c:	20b67603          	p.lw	a2,a1(a2)
1c031e40:	14c00793          	li	a5,332
1c031e44:	d307a633          	p.insert	a2,a5,9,16
1c031e48:	00c865a3          	p.sw	a2,a1(a6)
1c031e4c:	4785                	li	a5,1
1c031e4e:	c1e7a6b3          	p.insert	a3,a5,0,30
1c031e52:	c1f7a6b3          	p.insert	a3,a5,0,31
1c031e56:	00d86e23          	p.sw	a3,t3(a6)
1c031e5a:	00400793          	li	a5,4
1c031e5e:	00231613          	slli	a2,t1,0x2
1c031e62:	963e                	add	a2,a2,a5
1c031e64:	4208                	lw	a0,0(a2)
1c031e66:	ed19                	bnez	a0,1c031e84 <pos_fll_init+0x80>
1c031e68:	10075733          	p.exthz	a4,a4
1c031e6c:	c7a696b3          	p.extractu	a3,a3,3,26
1c031e70:	073e                	slli	a4,a4,0xf
1c031e72:	16fd                	addi	a3,a3,-1
1c031e74:	00d75533          	srl	a0,a4,a3
1c031e78:	c208                	sw	a0,0(a2)
1c031e7a:	979a                	add	a5,a5,t1
1c031e7c:	4705                	li	a4,1
1c031e7e:	00e78623          	sb	a4,12(a5)
1c031e82:	8082                	ret
1c031e84:	46f5                	li	a3,29
1c031e86:	10051733          	p.fl1	a4,a0
1c031e8a:	4585                	li	a1,1
1c031e8c:	82e6b75b          	p.subun	a4,a3,a4,1
1c031e90:	04e5e733          	p.max	a4,a1,a4
1c031e94:	fff70693          	addi	a3,a4,-1
1c031e98:	00e51833          	sll	a6,a0,a4
1c031e9c:	00d595b3          	sll	a1,a1,a3
1c031ea0:	dc0838b3          	p.bclr	a7,a6,14,0
1c031ea4:	006786b3          	add	a3,a5,t1
1c031ea8:	c0e8a5db          	p.addunr	a1,a7,a4
1c031eac:	00c6c683          	lbu	a3,12(a3) # 40000c <__l1_heap_size+0x3f0028>
1c031eb0:	c20c                	sw	a1,0(a2)
1c031eb2:	d6e1                	beqz	a3,1c031e7a <pos_fll_init+0x76>
1c031eb4:	1a100637          	lui	a2,0x1a100
1c031eb8:	21c67683          	p.lw	a3,t3(a2)
1c031ebc:	00f85813          	srli	a6,a6,0xf
1c031ec0:	de0826b3          	p.insert	a3,a6,15,0
1c031ec4:	0705                	addi	a4,a4,1
1c031ec6:	c7a726b3          	p.insert	a3,a4,3,26
1c031eca:	00d66e23          	p.sw	a3,t3(a2)
1c031ece:	979a                	add	a5,a5,t1
1c031ed0:	4705                	li	a4,1
1c031ed2:	00e78623          	sb	a4,12(a5)
1c031ed6:	8082                	ret

1c031ed8 <pos_fll_constructor>:
1c031ed8:	00400793          	li	a5,4
1c031edc:	0007a023          	sw	zero,0(a5)
1c031ee0:	0007a223          	sw	zero,4(a5)
1c031ee4:	0007a423          	sw	zero,8(a5)
1c031ee8:	00079623          	sh	zero,12(a5)
1c031eec:	00078723          	sb	zero,14(a5)
1c031ef0:	8082                	ret

1c031ef2 <pos_soc_init>:
1c031ef2:	1141                	addi	sp,sp,-16
1c031ef4:	c606                	sw	ra,12(sp)
1c031ef6:	c422                	sw	s0,8(sp)
1c031ef8:	37c5                	jal	1c031ed8 <pos_fll_constructor>
1c031efa:	4501                	li	a0,0
1c031efc:	3721                	jal	1c031e04 <pos_fll_init>
1c031efe:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c031f02:	4505                	li	a0,1
1c031f04:	3701                	jal	1c031e04 <pos_fll_init>
1c031f06:	01400413          	li	s0,20
1c031f0a:	c408                	sw	a0,8(s0)
1c031f0c:	4509                	li	a0,2
1c031f0e:	3ddd                	jal	1c031e04 <pos_fll_init>
1c031f10:	c048                	sw	a0,4(s0)
1c031f12:	40b2                	lw	ra,12(sp)
1c031f14:	4422                	lw	s0,8(sp)
1c031f16:	0141                	addi	sp,sp,16
1c031f18:	8082                	ret

1c031f1a <strchr>:
1c031f1a:	00054783          	lbu	a5,0(a0)
1c031f1e:	0ff5f593          	andi	a1,a1,255
1c031f22:	00b78c63          	beq	a5,a1,1c031f3a <strchr+0x20>
1c031f26:	cb99                	beqz	a5,1c031f3c <strchr+0x22>
1c031f28:	00150793          	addi	a5,a0,1
1c031f2c:	a011                	j	1c031f30 <strchr+0x16>
1c031f2e:	c719                	beqz	a4,1c031f3c <strchr+0x22>
1c031f30:	853e                	mv	a0,a5
1c031f32:	0017c70b          	p.lbu	a4,1(a5!)
1c031f36:	feb71ce3          	bne	a4,a1,1c031f2e <strchr+0x14>
1c031f3a:	8082                	ret
1c031f3c:	0015b593          	seqz	a1,a1
1c031f40:	40b005b3          	neg	a1,a1
1c031f44:	8d6d                	and	a0,a0,a1
1c031f46:	8082                	ret

1c031f48 <pos_libc_fputc_locked>:
1c031f48:	f14027f3          	csrr	a5,mhartid
1c031f4c:	1a10f6b7          	lui	a3,0x1a10f
1c031f50:	ca5797b3          	p.extractu	a5,a5,5,5
1c031f54:	f1402773          	csrr	a4,mhartid
1c031f58:	079e                	slli	a5,a5,0x7
1c031f5a:	070e                	slli	a4,a4,0x3
1c031f5c:	0ff57513          	andi	a0,a0,255
1c031f60:	ee873733          	p.bclr	a4,a4,23,8
1c031f64:	97b6                	add	a5,a5,a3
1c031f66:	00a767a3          	p.sw	a0,a5(a4)
1c031f6a:	4501                	li	a0,0
1c031f6c:	8082                	ret

1c031f6e <pos_libc_prf_locked>:
1c031f6e:	a095                	j	1c031fd2 <pos_libc_prf>

1c031f70 <exit>:
1c031f70:	1141                	addi	sp,sp,-16
1c031f72:	c422                	sw	s0,8(sp)
1c031f74:	c606                	sw	ra,12(sp)
1c031f76:	842a                	mv	s0,a0
1c031f78:	43d010ef          	jal	ra,1c033bb4 <pos_init_stop>
1c031f7c:	c1f44533          	p.bset	a0,s0,0,31
1c031f80:	1a1047b7          	lui	a5,0x1a104
1c031f84:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c031f88:	1a10a7b7          	lui	a5,0x1a10a
1c031f8c:	577d                	li	a4,-1
1c031f8e:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c031f92:	10500073          	wfi
1c031f96:	10500073          	wfi
1c031f9a:	bfe5                	j	1c031f92 <exit+0x22>

1c031f9c <pos_io_start>:
1c031f9c:	4501                	li	a0,0
1c031f9e:	8082                	ret

1c031fa0 <pos_io_stop>:
1c031fa0:	4501                	li	a0,0
1c031fa2:	8082                	ret

1c031fa4 <printf>:
1c031fa4:	7139                	addi	sp,sp,-64
1c031fa6:	02410313          	addi	t1,sp,36
1c031faa:	d432                	sw	a2,40(sp)
1c031fac:	862a                	mv	a2,a0
1c031fae:	1c032537          	lui	a0,0x1c032
1c031fb2:	d22e                	sw	a1,36(sp)
1c031fb4:	d636                	sw	a3,44(sp)
1c031fb6:	4589                	li	a1,2
1c031fb8:	869a                	mv	a3,t1
1c031fba:	f4850513          	addi	a0,a0,-184 # 1c031f48 <pos_libc_fputc_locked>
1c031fbe:	ce06                	sw	ra,28(sp)
1c031fc0:	d83a                	sw	a4,48(sp)
1c031fc2:	da3e                	sw	a5,52(sp)
1c031fc4:	dc42                	sw	a6,56(sp)
1c031fc6:	de46                	sw	a7,60(sp)
1c031fc8:	c61a                	sw	t1,12(sp)
1c031fca:	3755                	jal	1c031f6e <pos_libc_prf_locked>
1c031fcc:	40f2                	lw	ra,28(sp)
1c031fce:	6121                	addi	sp,sp,64
1c031fd0:	8082                	ret

1c031fd2 <pos_libc_prf>:
1c031fd2:	7119                	addi	sp,sp,-128
1c031fd4:	dca2                	sw	s0,120(sp)
1c031fd6:	1058                	addi	a4,sp,36
1c031fd8:	4401                	li	s0,0
1c031fda:	d6ce                	sw	s3,108(sp)
1c031fdc:	d4d2                	sw	s4,104(sp)
1c031fde:	d2d6                	sw	s5,100(sp)
1c031fe0:	cede                	sw	s7,92(sp)
1c031fe2:	cce2                	sw	s8,88(sp)
1c031fe4:	c8ea                	sw	s10,80(sp)
1c031fe6:	de86                	sw	ra,124(sp)
1c031fe8:	daa6                	sw	s1,116(sp)
1c031fea:	d8ca                	sw	s2,112(sp)
1c031fec:	d0da                	sw	s6,96(sp)
1c031fee:	cae6                	sw	s9,84(sp)
1c031ff0:	c6ee                	sw	s11,76(sp)
1c031ff2:	89aa                	mv	s3,a0
1c031ff4:	8bae                	mv	s7,a1
1c031ff6:	8d32                	mv	s10,a2
1c031ff8:	8a36                	mv	s4,a3
1c031ffa:	1c001c37          	lui	s8,0x1c001
1c031ffe:	c03a                	sw	a4,0(sp)
1c032000:	8aa2                	mv	s5,s0
1c032002:	a039                	j	1c032010 <pos_libc_prf+0x3e>
1c032004:	85de                	mv	a1,s7
1c032006:	9982                	jalr	s3
1c032008:	15f52063          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c03200c:	0a85                	addi	s5,s5,1
1c03200e:	8d22                	mv	s10,s0
1c032010:	000d4503          	lbu	a0,0(s10)
1c032014:	001d0413          	addi	s0,s10,1
1c032018:	c979                	beqz	a0,1c0320ee <pos_libc_prf+0x11c>
1c03201a:	02500793          	li	a5,37
1c03201e:	fef513e3          	bne	a0,a5,1c032004 <pos_libc_prf+0x32>
1c032022:	ca02                	sw	zero,20(sp)
1c032024:	c802                	sw	zero,16(sp)
1c032026:	c602                	sw	zero,12(sp)
1c032028:	c402                	sw	zero,8(sp)
1c03202a:	c202                	sw	zero,4(sp)
1c03202c:	02300493          	li	s1,35
1c032030:	02d00b13          	li	s6,45
1c032034:	00044c83          	lbu	s9,0(s0)
1c032038:	00140913          	addi	s2,s0,1
1c03203c:	85e6                	mv	a1,s9
1c03203e:	9a0c0513          	addi	a0,s8,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c032042:	8d4a                	mv	s10,s2
1c032044:	8de6                	mv	s11,s9
1c032046:	3dd1                	jal	1c031f1a <strchr>
1c032048:	c91d                	beqz	a0,1c03207e <pos_libc_prf+0xac>
1c03204a:	109c8963          	beq	s9,s1,1c03215c <pos_libc_prf+0x18a>
1c03204e:	0194fe63          	bleu	s9,s1,1c03206a <pos_libc_prf+0x98>
1c032052:	116c8163          	beq	s9,s6,1c032154 <pos_libc_prf+0x182>
1c032056:	03000713          	li	a4,48
1c03205a:	0eec8963          	beq	s9,a4,1c03214c <pos_libc_prf+0x17a>
1c03205e:	02b00793          	li	a5,43
1c032062:	0afc8763          	beq	s9,a5,1c032110 <pos_libc_prf+0x13e>
1c032066:	844a                	mv	s0,s2
1c032068:	b7f1                	j	1c032034 <pos_libc_prf+0x62>
1c03206a:	080c8263          	beqz	s9,1c0320ee <pos_libc_prf+0x11c>
1c03206e:	02000793          	li	a5,32
1c032072:	fefc9ae3          	bne	s9,a5,1c032066 <pos_libc_prf+0x94>
1c032076:	4785                	li	a5,1
1c032078:	c83e                	sw	a5,16(sp)
1c03207a:	844a                	mv	s0,s2
1c03207c:	bf65                	j	1c032034 <pos_libc_prf+0x62>
1c03207e:	02a00693          	li	a3,42
1c032082:	2edc8263          	beq	s9,a3,1c032366 <pos_libc_prf+0x394>
1c032086:	fd0c8693          	addi	a3,s9,-48
1c03208a:	45a5                	li	a1,9
1c03208c:	4b01                	li	s6,0
1c03208e:	0cd5fd63          	bleu	a3,a1,1c032168 <pos_libc_prf+0x196>
1c032092:	02e00793          	li	a5,46
1c032096:	28fd8663          	beq	s11,a5,1c032322 <pos_libc_prf+0x350>
1c03209a:	846e                	mv	s0,s11
1c03209c:	54fd                	li	s1,-1
1c03209e:	1c001737          	lui	a4,0x1c001
1c0320a2:	85ee                	mv	a1,s11
1c0320a4:	9a870513          	addi	a0,a4,-1624 # 1c0009a8 <__DTOR_END__+0x140>
1c0320a8:	3d8d                	jal	1c031f1a <strchr>
1c0320aa:	4781                	li	a5,0
1c0320ac:	cd19                	beqz	a0,1c0320ca <pos_libc_prf+0xf8>
1c0320ae:	06c00793          	li	a5,108
1c0320b2:	001d0693          	addi	a3,s10,1
1c0320b6:	000d4d83          	lbu	s11,0(s10)
1c0320ba:	3af40563          	beq	s0,a5,1c032464 <pos_libc_prf+0x492>
1c0320be:	06800793          	li	a5,104
1c0320c2:	3af40563          	beq	s0,a5,1c03246c <pos_libc_prf+0x49a>
1c0320c6:	8d36                	mv	s10,a3
1c0320c8:	87a2                	mv	a5,s0
1c0320ca:	06700693          	li	a3,103
1c0320ce:	0bb6ee63          	bltu	a3,s11,1c03218a <pos_libc_prf+0x1b8>
1c0320d2:	06500693          	li	a3,101
1c0320d6:	3addf2e3          	bleu	a3,s11,1c032c7a <pos_libc_prf+0xca8>
1c0320da:	04700693          	li	a3,71
1c0320de:	39b6ed63          	bltu	a3,s11,1c032478 <pos_libc_prf+0x4a6>
1c0320e2:	04500793          	li	a5,69
1c0320e6:	38fdfae3          	bleu	a5,s11,1c032c7a <pos_libc_prf+0xca8>
1c0320ea:	2e0d9863          	bnez	s11,1c0323da <pos_libc_prf+0x408>
1c0320ee:	8456                	mv	s0,s5
1c0320f0:	8522                	mv	a0,s0
1c0320f2:	50f6                	lw	ra,124(sp)
1c0320f4:	5466                	lw	s0,120(sp)
1c0320f6:	54d6                	lw	s1,116(sp)
1c0320f8:	5946                	lw	s2,112(sp)
1c0320fa:	59b6                	lw	s3,108(sp)
1c0320fc:	5a26                	lw	s4,104(sp)
1c0320fe:	5a96                	lw	s5,100(sp)
1c032100:	5b06                	lw	s6,96(sp)
1c032102:	4bf6                	lw	s7,92(sp)
1c032104:	4c66                	lw	s8,88(sp)
1c032106:	4cd6                	lw	s9,84(sp)
1c032108:	4d46                	lw	s10,80(sp)
1c03210a:	4db6                	lw	s11,76(sp)
1c03210c:	6109                	addi	sp,sp,128
1c03210e:	8082                	ret
1c032110:	4705                	li	a4,1
1c032112:	c63a                	sw	a4,12(sp)
1c032114:	844a                	mv	s0,s2
1c032116:	bf39                	j	1c032034 <pos_libc_prf+0x62>
1c032118:	00044503          	lbu	a0,0(s0)
1c03211c:	47a5                	li	a5,9
1c03211e:	fd050693          	addi	a3,a0,-48
1c032122:	72d7e9e3          	bltu	a5,a3,1c033054 <pos_libc_prf+0x1082>
1c032126:	00140793          	addi	a5,s0,1
1c03212a:	8dbe                	mv	s11,a5
1c03212c:	a809                	j	1c03213e <pos_libc_prf+0x16c>
1c03212e:	001dc50b          	p.lbu	a0,1(s11!)
1c032132:	4725                	li	a4,9
1c032134:	fd050793          	addi	a5,a0,-48
1c032138:	197d                	addi	s2,s2,-1
1c03213a:	70f76ee3          	bltu	a4,a5,1c033056 <pos_libc_prf+0x1084>
1c03213e:	85de                	mv	a1,s7
1c032140:	846e                	mv	s0,s11
1c032142:	9982                	jalr	s3
1c032144:	fff535e3          	p.bneimm	a0,-1,1c03212e <pos_libc_prf+0x15c>
1c032148:	547d                	li	s0,-1
1c03214a:	b75d                	j	1c0320f0 <pos_libc_prf+0x11e>
1c03214c:	4785                	li	a5,1
1c03214e:	ca3e                	sw	a5,20(sp)
1c032150:	844a                	mv	s0,s2
1c032152:	b5cd                	j	1c032034 <pos_libc_prf+0x62>
1c032154:	4705                	li	a4,1
1c032156:	c43a                	sw	a4,8(sp)
1c032158:	844a                	mv	s0,s2
1c03215a:	bde9                	j	1c032034 <pos_libc_prf+0x62>
1c03215c:	4705                	li	a4,1
1c03215e:	c23a                	sw	a4,4(sp)
1c032160:	844a                	mv	s0,s2
1c032162:	bdc9                	j	1c032034 <pos_libc_prf+0x62>
1c032164:	844a                	mv	s0,s2
1c032166:	0905                	addi	s2,s2,1
1c032168:	002b1793          	slli	a5,s6,0x2
1c03216c:	00094d83          	lbu	s11,0(s2)
1c032170:	97da                	add	a5,a5,s6
1c032172:	0786                	slli	a5,a5,0x1
1c032174:	97e6                	add	a5,a5,s9
1c032176:	fd0d8713          	addi	a4,s11,-48
1c03217a:	fd078b13          	addi	s6,a5,-48
1c03217e:	8cee                	mv	s9,s11
1c032180:	fee5f2e3          	bleu	a4,a1,1c032164 <pos_libc_prf+0x192>
1c032184:	00240d13          	addi	s10,s0,2
1c032188:	b729                	j	1c032092 <pos_libc_prf+0xc0>
1c03218a:	07000693          	li	a3,112
1c03218e:	24dd85e3          	beq	s11,a3,1c032bd8 <pos_libc_prf+0xc06>
1c032192:	1fb6e463          	bltu	a3,s11,1c03237a <pos_libc_prf+0x3a8>
1c032196:	06e00693          	li	a3,110
1c03219a:	20dd8ae3          	beq	s11,a3,1c032bae <pos_libc_prf+0xbdc>
1c03219e:	2fb6e763          	bltu	a3,s11,1c03248c <pos_libc_prf+0x4ba>
1c0321a2:	06900693          	li	a3,105
1c0321a6:	2add9ce3          	bne	s11,a3,1c032c5e <pos_libc_prf+0xc8c>
1c0321aa:	06c00693          	li	a3,108
1c0321ae:	00d78a63          	beq	a5,a3,1c0321c2 <pos_libc_prf+0x1f0>
1c0321b2:	07a00693          	li	a3,122
1c0321b6:	00d78663          	beq	a5,a3,1c0321c2 <pos_libc_prf+0x1f0>
1c0321ba:	04c00693          	li	a3,76
1c0321be:	5ed78de3          	beq	a5,a3,1c032fb8 <pos_libc_prf+0xfe6>
1c0321c2:	000a2783          	lw	a5,0(s4)
1c0321c6:	0a11                	addi	s4,s4,4
1c0321c8:	41f7d713          	srai	a4,a5,0x1f
1c0321cc:	ce52                	sw	s4,28(sp)
1c0321ce:	c23a                	sw	a4,4(sp)
1c0321d0:	4e0741e3          	bltz	a4,1c032eb2 <pos_libc_prf+0xee0>
1c0321d4:	4732                	lw	a4,12(sp)
1c0321d6:	440709e3          	beqz	a4,1c032e28 <pos_libc_prf+0xe56>
1c0321da:	02b00693          	li	a3,43
1c0321de:	4c92                	lw	s9,4(sp)
1c0321e0:	02d10223          	sb	a3,36(sp)
1c0321e4:	02510a13          	addi	s4,sp,37
1c0321e8:	843e                	mv	s0,a5
1c0321ea:	8dd2                	mv	s11,s4
1c0321ec:	a011                	j	1c0321f0 <pos_libc_prf+0x21e>
1c0321ee:	8dca                	mv	s11,s2
1c0321f0:	4629                	li	a2,10
1c0321f2:	4681                	li	a3,0
1c0321f4:	8522                	mv	a0,s0
1c0321f6:	85e6                	mv	a1,s9
1c0321f8:	ce0ff0ef          	jal	ra,1c0316d8 <__umoddi3>
1c0321fc:	892a                	mv	s2,a0
1c0321fe:	85e6                	mv	a1,s9
1c032200:	8522                	mv	a0,s0
1c032202:	4629                	li	a2,10
1c032204:	4681                	li	a3,0
1c032206:	996ff0ef          	jal	ra,1c03139c <__udivdi3>
1c03220a:	03090913          	addi	s2,s2,48
1c03220e:	012d8023          	sb	s2,0(s11)
1c032212:	00a5e7b3          	or	a5,a1,a0
1c032216:	001d8913          	addi	s2,s11,1
1c03221a:	842a                	mv	s0,a0
1c03221c:	8cae                	mv	s9,a1
1c03221e:	fbe1                	bnez	a5,1c0321ee <pos_libc_prf+0x21c>
1c032220:	00090023          	sb	zero,0(s2)
1c032224:	01ba7d63          	bleu	s11,s4,1c03223e <pos_libc_prf+0x26c>
1c032228:	87ee                	mv	a5,s11
1c03222a:	000a4683          	lbu	a3,0(s4)
1c03222e:	0007c703          	lbu	a4,0(a5)
1c032232:	fed78fab          	p.sb	a3,-1(a5!)
1c032236:	00ea00ab          	p.sb	a4,1(s4!)
1c03223a:	fefa68e3          	bltu	s4,a5,1c03222a <pos_libc_prf+0x258>
1c03223e:	4782                	lw	a5,0(sp)
1c032240:	4732                	lw	a4,12(sp)
1c032242:	40f90933          	sub	s2,s2,a5
1c032246:	3c071de3          	bnez	a4,1c032e20 <pos_libc_prf+0xe4e>
1c03224a:	47c2                	lw	a5,16(sp)
1c03224c:	3c079ae3          	bnez	a5,1c032e20 <pos_libc_prf+0xe4e>
1c032250:	4712                	lw	a4,4(sp)
1c032252:	837d                	srli	a4,a4,0x1f
1c032254:	c23a                	sw	a4,4(sp)
1c032256:	3404c463          	bltz	s1,1c03259e <pos_libc_prf+0x5cc>
1c03225a:	4712                	lw	a4,4(sp)
1c03225c:	412484b3          	sub	s1,s1,s2
1c032260:	94ba                	add	s1,s1,a4
1c032262:	0404e4b3          	p.max	s1,s1,zero
1c032266:	009907b3          	add	a5,s2,s1
1c03226a:	40fb0b33          	sub	s6,s6,a5
1c03226e:	1040                	addi	s0,sp,36
1c032270:	4c81                	li	s9,0
1c032272:	cc02                	sw	zero,24(sp)
1c032274:	4a01                	li	s4,0
1c032276:	4722                	lw	a4,8(sp)
1c032278:	e305                	bnez	a4,1c032298 <pos_libc_prf+0x2c6>
1c03227a:	01605f63          	blez	s6,1c032298 <pos_libc_prf+0x2c6>
1c03227e:	fffb0d93          	addi	s11,s6,-1
1c032282:	85de                	mv	a1,s7
1c032284:	02000513          	li	a0,32
1c032288:	9982                	jalr	s3
1c03228a:	1dfd                	addi	s11,s11,-1
1c03228c:	ebf52ee3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c032290:	fffdb9e3          	p.bneimm	s11,-1,1c032282 <pos_libc_prf+0x2b0>
1c032294:	9ada                	add	s5,s5,s6
1c032296:	5b7d                	li	s6,-1
1c032298:	4792                	lw	a5,4(sp)
1c03229a:	00f40db3          	add	s11,s0,a5
1c03229e:	a031                	j	1c0322aa <pos_libc_prf+0x2d8>
1c0322a0:	0014450b          	p.lbu	a0,1(s0!)
1c0322a4:	9982                	jalr	s3
1c0322a6:	ebf521e3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c0322aa:	85de                	mv	a1,s7
1c0322ac:	ffb41ae3          	bne	s0,s11,1c0322a0 <pos_libc_prf+0x2ce>
1c0322b0:	8da6                	mv	s11,s1
1c0322b2:	a021                	j	1c0322ba <pos_libc_prf+0x2e8>
1c0322b4:	9982                	jalr	s3
1c0322b6:	e9f529e3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c0322ba:	1dfd                	addi	s11,s11,-1
1c0322bc:	85de                	mv	a1,s7
1c0322be:	03000513          	li	a0,48
1c0322c2:	fffdb9e3          	p.bneimm	s11,-1,1c0322b4 <pos_libc_prf+0x2e2>
1c0322c6:	4712                	lw	a4,4(sp)
1c0322c8:	40e90933          	sub	s2,s2,a4
1c0322cc:	c44a                	sw	s2,8(sp)
1c0322ce:	e40a15e3          	bnez	s4,1c032118 <pos_libc_prf+0x146>
1c0322d2:	47e2                	lw	a5,24(sp)
1c0322d4:	16079763          	bnez	a5,1c032442 <pos_libc_prf+0x470>
1c0322d8:	120c8863          	beqz	s9,1c032408 <pos_libc_prf+0x436>
1c0322dc:	00044783          	lbu	a5,0(s0)
1c0322e0:	4a25                	li	s4,9
1c0322e2:	02e00d93          	li	s11,46
1c0322e6:	a801                	j	1c0322f6 <pos_libc_prf+0x324>
1c0322e8:	0405                	addi	s0,s0,1
1c0322ea:	9982                	jalr	s3
1c0322ec:	e5f52ee3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c0322f0:	00044783          	lbu	a5,0(s0)
1c0322f4:	197d                	addi	s2,s2,-1
1c0322f6:	fd078713          	addi	a4,a5,-48
1c0322fa:	853e                	mv	a0,a5
1c0322fc:	85de                	mv	a1,s7
1c0322fe:	feea75e3          	bleu	a4,s4,1c0322e8 <pos_libc_prf+0x316>
1c032302:	ffb783e3          	beq	a5,s11,1c0322e8 <pos_libc_prf+0x316>
1c032306:	8a66                	mv	s4,s9
1c032308:	85de                	mv	a1,s7
1c03230a:	03000513          	li	a0,48
1c03230e:	01404463          	bgtz	s4,1c032316 <pos_libc_prf+0x344>
1c032312:	0010106f          	j	1c033b12 <pos_libc_prf+0x1b40>
1c032316:	9982                	jalr	s3
1c032318:	1a7d                	addi	s4,s4,-1
1c03231a:	fff537e3          	p.bneimm	a0,-1,1c032308 <pos_libc_prf+0x336>
1c03231e:	547d                	li	s0,-1
1c032320:	bbc1                	j	1c0320f0 <pos_libc_prf+0x11e>
1c032322:	000d4d83          	lbu	s11,0(s10)
1c032326:	02a00793          	li	a5,42
1c03232a:	001d0513          	addi	a0,s10,1
1c03232e:	08fd8e63          	beq	s11,a5,1c0323ca <pos_libc_prf+0x3f8>
1c032332:	fd0d8793          	addi	a5,s11,-48
1c032336:	4825                	li	a6,9
1c032338:	846e                	mv	s0,s11
1c03233a:	86aa                	mv	a3,a0
1c03233c:	4481                	li	s1,0
1c03233e:	45a5                	li	a1,9
1c032340:	8d2a                	mv	s10,a0
1c032342:	d4f86ee3          	bltu	a6,a5,1c03209e <pos_libc_prf+0xcc>
1c032346:	00249793          	slli	a5,s1,0x2
1c03234a:	97a6                	add	a5,a5,s1
1c03234c:	0786                	slli	a5,a5,0x1
1c03234e:	97ee                	add	a5,a5,s11
1c032350:	0016cd8b          	p.lbu	s11,1(a3!) # 1a10f001 <__l1_end+0xa10efe5>
1c032354:	fd078493          	addi	s1,a5,-48
1c032358:	fd0d8793          	addi	a5,s11,-48
1c03235c:	846e                	mv	s0,s11
1c03235e:	fef5f4e3          	bleu	a5,a1,1c032346 <pos_libc_prf+0x374>
1c032362:	8d36                	mv	s10,a3
1c032364:	bb2d                	j	1c03209e <pos_libc_prf+0xcc>
1c032366:	000a2b03          	lw	s6,0(s4)
1c03236a:	0a11                	addi	s4,s4,4
1c03236c:	080b4363          	bltz	s6,1c0323f2 <pos_libc_prf+0x420>
1c032370:	00094d83          	lbu	s11,0(s2)
1c032374:	00240d13          	addi	s10,s0,2
1c032378:	bb29                	j	1c032092 <pos_libc_prf+0xc0>
1c03237a:	07500693          	li	a3,117
1c03237e:	10dd8763          	beq	s11,a3,1c03248c <pos_libc_prf+0x4ba>
1c032382:	07800693          	li	a3,120
1c032386:	10dd8363          	beq	s11,a3,1c03248c <pos_libc_prf+0x4ba>
1c03238a:	07300793          	li	a5,115
1c03238e:	0cfd98e3          	bne	s11,a5,1c032c5e <pos_libc_prf+0xc8c>
1c032392:	004a0713          	addi	a4,s4,4
1c032396:	ce3a                	sw	a4,28(sp)
1c032398:	000a2403          	lw	s0,0(s4)
1c03239c:	3c04c2e3          	bltz	s1,1c032f60 <pos_libc_prf+0xf8e>
1c0323a0:	460481e3          	beqz	s1,1c033002 <pos_libc_prf+0x1030>
1c0323a4:	00044783          	lbu	a5,0(s0)
1c0323a8:	44078ce3          	beqz	a5,1c033000 <pos_libc_prf+0x102e>
1c0323ac:	00140793          	addi	a5,s0,1
1c0323b0:	4901                	li	s2,0
1c0323b2:	a021                	j	1c0323ba <pos_libc_prf+0x3e8>
1c0323b4:	0017c70b          	p.lbu	a4,1(a5!)
1c0323b8:	c701                	beqz	a4,1c0323c0 <pos_libc_prf+0x3ee>
1c0323ba:	0905                	addi	s2,s2,1
1c0323bc:	fe994ce3          	blt	s2,s1,1c0323b4 <pos_libc_prf+0x3e2>
1c0323c0:	412b0b33          	sub	s6,s6,s2
1c0323c4:	4481                	li	s1,0
1c0323c6:	c202                	sw	zero,4(sp)
1c0323c8:	b565                	j	1c032270 <pos_libc_prf+0x29e>
1c0323ca:	001d4d83          	lbu	s11,1(s10)
1c0323ce:	000a2483          	lw	s1,0(s4)
1c0323d2:	846e                	mv	s0,s11
1c0323d4:	0d09                	addi	s10,s10,2
1c0323d6:	0a11                	addi	s4,s4,4
1c0323d8:	b1d9                	j	1c03209e <pos_libc_prf+0xcc>
1c0323da:	02500793          	li	a5,37
1c0323de:	08fd90e3          	bne	s11,a5,1c032c5e <pos_libc_prf+0xc8c>
1c0323e2:	85de                	mv	a1,s7
1c0323e4:	02500513          	li	a0,37
1c0323e8:	9982                	jalr	s3
1c0323ea:	d5f52fe3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c0323ee:	0a85                	addi	s5,s5,1
1c0323f0:	b105                	j	1c032010 <pos_libc_prf+0x3e>
1c0323f2:	4785                	li	a5,1
1c0323f4:	41600b33          	neg	s6,s6
1c0323f8:	c43e                	sw	a5,8(sp)
1c0323fa:	bf9d                	j	1c032370 <pos_libc_prf+0x39e>
1c0323fc:	0014450b          	p.lbu	a0,1(s0!)
1c032400:	197d                	addi	s2,s2,-1
1c032402:	9982                	jalr	s3
1c032404:	d5f522e3          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c032408:	85de                	mv	a1,s7
1c03240a:	ff2049e3          	bgtz	s2,1c0323fc <pos_libc_prf+0x42a>
1c03240e:	4792                	lw	a5,4(sp)
1c032410:	4a72                	lw	s4,28(sp)
1c032412:	00fa8733          	add	a4,s5,a5
1c032416:	47a2                	lw	a5,8(sp)
1c032418:	9726                	add	a4,a4,s1
1c03241a:	00e78ab3          	add	s5,a5,a4
1c03241e:	bf6059e3          	blez	s6,1c032010 <pos_libc_prf+0x3e>
1c032422:	9ada                	add	s5,s5,s6
1c032424:	1b7d                	addi	s6,s6,-1
1c032426:	a029                	j	1c032430 <pos_libc_prf+0x45e>
1c032428:	01fb3463          	p.bneimm	s6,-1,1c032430 <pos_libc_prf+0x45e>
1c03242c:	5fe0106f          	j	1c033a2a <pos_libc_prf+0x1a58>
1c032430:	85de                	mv	a1,s7
1c032432:	02000513          	li	a0,32
1c032436:	9982                	jalr	s3
1c032438:	1b7d                	addi	s6,s6,-1
1c03243a:	fff537e3          	p.bneimm	a0,-1,1c032428 <pos_libc_prf+0x456>
1c03243e:	547d                	li	s0,-1
1c032440:	b945                	j	1c0320f0 <pos_libc_prf+0x11e>
1c032442:	02e00a13          	li	s4,46
1c032446:	a031                	j	1c032452 <pos_libc_prf+0x480>
1c032448:	197d                	addi	s2,s2,-1
1c03244a:	014d9463          	bne	s11,s4,1c032452 <pos_libc_prf+0x480>
1c03244e:	5320106f          	j	1c033980 <pos_libc_prf+0x19ae>
1c032452:	00144d8b          	p.lbu	s11,1(s0!)
1c032456:	85de                	mv	a1,s7
1c032458:	856e                	mv	a0,s11
1c03245a:	9982                	jalr	s3
1c03245c:	fff536e3          	p.bneimm	a0,-1,1c032448 <pos_libc_prf+0x476>
1c032460:	547d                	li	s0,-1
1c032462:	b179                	j	1c0320f0 <pos_libc_prf+0x11e>
1c032464:	188d83e3          	beq	s11,s0,1c032dea <pos_libc_prf+0xe18>
1c032468:	8d36                	mv	s10,a3
1c03246a:	b185                	j	1c0320ca <pos_libc_prf+0xf8>
1c03246c:	188d86e3          	beq	s11,s0,1c032df8 <pos_libc_prf+0xe26>
1c032470:	8d36                	mv	s10,a3
1c032472:	06800793          	li	a5,104
1c032476:	b991                	j	1c0320ca <pos_libc_prf+0xf8>
1c032478:	06300693          	li	a3,99
1c03247c:	70dd8c63          	beq	s11,a3,1c032b94 <pos_libc_prf+0xbc2>
1c032480:	d3b6e5e3          	bltu	a3,s11,1c0321aa <pos_libc_prf+0x1d8>
1c032484:	05800693          	li	a3,88
1c032488:	7cdd9b63          	bne	s11,a3,1c032c5e <pos_libc_prf+0xc8c>
1c03248c:	06c00693          	li	a3,108
1c032490:	18d780e3          	beq	a5,a3,1c032e10 <pos_libc_prf+0xe3e>
1c032494:	07a00693          	li	a3,122
1c032498:	16d78ce3          	beq	a5,a3,1c032e10 <pos_libc_prf+0xe3e>
1c03249c:	04c00693          	li	a3,76
1c0324a0:	2cd78ee3          	beq	a5,a3,1c032f7c <pos_libc_prf+0xfaa>
1c0324a4:	000a2403          	lw	s0,0(s4)
1c0324a8:	0a11                	addi	s4,s4,4
1c0324aa:	ce52                	sw	s4,28(sp)
1c0324ac:	4c81                	li	s9,0
1c0324ae:	06f00793          	li	a5,111
1c0324b2:	3cfd81e3          	beq	s11,a5,1c033074 <pos_libc_prf+0x10a2>
1c0324b6:	07500793          	li	a5,117
1c0324ba:	02410a13          	addi	s4,sp,36
1c0324be:	04fd8763          	beq	s11,a5,1c03250c <pos_libc_prf+0x53a>
1c0324c2:	4712                	lw	a4,4(sp)
1c0324c4:	2a0708e3          	beqz	a4,1c032f74 <pos_libc_prf+0xfa2>
1c0324c8:	77e1                	lui	a5,0xffff8
1c0324ca:	8307c793          	xori	a5,a5,-2000
1c0324ce:	02f11223          	sh	a5,36(sp)
1c0324d2:	4909                	li	s2,2
1c0324d4:	02610693          	addi	a3,sp,38
1c0324d8:	87b6                	mv	a5,a3
1c0324da:	4e25                	li	t3,9
1c0324dc:	f6443733          	p.bclr	a4,s0,27,4
1c0324e0:	01cc9613          	slli	a2,s9,0x1c
1c0324e4:	8011                	srli	s0,s0,0x4
1c0324e6:	8c51                	or	s0,s0,a2
1c0324e8:	004cdc93          	srli	s9,s9,0x4
1c0324ec:	05770813          	addi	a6,a4,87
1c0324f0:	03070593          	addi	a1,a4,48
1c0324f4:	01946533          	or	a0,s0,s9
1c0324f8:	06ee7663          	bleu	a4,t3,1c032564 <pos_libc_prf+0x592>
1c0324fc:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c032500:	00178593          	addi	a1,a5,1
1c032504:	c52d                	beqz	a0,1c03256e <pos_libc_prf+0x59c>
1c032506:	87ae                	mv	a5,a1
1c032508:	bfd1                	j	1c0324dc <pos_libc_prf+0x50a>
1c03250a:	8a4a                	mv	s4,s2
1c03250c:	4629                	li	a2,10
1c03250e:	4681                	li	a3,0
1c032510:	8522                	mv	a0,s0
1c032512:	85e6                	mv	a1,s9
1c032514:	9c4ff0ef          	jal	ra,1c0316d8 <__umoddi3>
1c032518:	892a                	mv	s2,a0
1c03251a:	85e6                	mv	a1,s9
1c03251c:	8522                	mv	a0,s0
1c03251e:	4629                	li	a2,10
1c032520:	4681                	li	a3,0
1c032522:	e7bfe0ef          	jal	ra,1c03139c <__udivdi3>
1c032526:	03090913          	addi	s2,s2,48
1c03252a:	012a0023          	sb	s2,0(s4)
1c03252e:	00a5e7b3          	or	a5,a1,a0
1c032532:	001a0913          	addi	s2,s4,1
1c032536:	842a                	mv	s0,a0
1c032538:	8cae                	mv	s9,a1
1c03253a:	fbe1                	bnez	a5,1c03250a <pos_libc_prf+0x538>
1c03253c:	4782                	lw	a5,0(sp)
1c03253e:	00090023          	sb	zero,0(s2)
1c032542:	40f90933          	sub	s2,s2,a5
1c032546:	0147fd63          	bleu	s4,a5,1c032560 <pos_libc_prf+0x58e>
1c03254a:	105c                	addi	a5,sp,36
1c03254c:	0007c683          	lbu	a3,0(a5)
1c032550:	000a4703          	lbu	a4,0(s4)
1c032554:	feda0fab          	p.sb	a3,-1(s4!)
1c032558:	00e780ab          	p.sb	a4,1(a5!)
1c03255c:	ff47e8e3          	bltu	a5,s4,1c03254c <pos_libc_prf+0x57a>
1c032560:	c202                	sw	zero,4(sp)
1c032562:	b9d5                	j	1c032256 <pos_libc_prf+0x284>
1c032564:	00b78023          	sb	a1,0(a5)
1c032568:	00178593          	addi	a1,a5,1
1c03256c:	fd49                	bnez	a0,1c032506 <pos_libc_prf+0x534>
1c03256e:	00058023          	sb	zero,0(a1)
1c032572:	8d95                	sub	a1,a1,a3
1c032574:	00f6fc63          	bleu	a5,a3,1c03258c <pos_libc_prf+0x5ba>
1c032578:	0006c603          	lbu	a2,0(a3)
1c03257c:	0007c703          	lbu	a4,0(a5)
1c032580:	fec78fab          	p.sb	a2,-1(a5!)
1c032584:	00e680ab          	p.sb	a4,1(a3!)
1c032588:	fef6e8e3          	bltu	a3,a5,1c032578 <pos_libc_prf+0x5a6>
1c03258c:	05800793          	li	a5,88
1c032590:	28fd82e3          	beq	s11,a5,1c033014 <pos_libc_prf+0x1042>
1c032594:	4712                	lw	a4,4(sp)
1c032596:	992e                	add	s2,s2,a1
1c032598:	0706                	slli	a4,a4,0x1
1c03259a:	c23a                	sw	a4,4(sp)
1c03259c:	b96d                	j	1c032256 <pos_libc_prf+0x284>
1c03259e:	4c81                	li	s9,0
1c0325a0:	cc02                	sw	zero,24(sp)
1c0325a2:	4a01                	li	s4,0
1c0325a4:	47d2                	lw	a5,20(sp)
1c0325a6:	5e078163          	beqz	a5,1c032b88 <pos_libc_prf+0xbb6>
1c0325aa:	412b04b3          	sub	s1,s6,s2
1c0325ae:	0404e4b3          	p.max	s1,s1,zero
1c0325b2:	009907b3          	add	a5,s2,s1
1c0325b6:	40fb0b33          	sub	s6,s6,a5
1c0325ba:	1040                	addi	s0,sp,36
1c0325bc:	b96d                	j	1c032276 <pos_libc_prf+0x2a4>
1c0325be:	4881                	li	a7,0
1c0325c0:	4801                	li	a6,0
1c0325c2:	4581                	li	a1,0
1c0325c4:	4501                	li	a0,0
1c0325c6:	4f11                	li	t5,4
1c0325c8:	410f0f33          	sub	t5,t5,a6
1c0325cc:	012f40fb          	lp.setup	x1,t5,1c0325f0 <pos_libc_prf+0x61e>
1c0325d0:	01f51713          	slli	a4,a0,0x1f
1c0325d4:	0015d793          	srli	a5,a1,0x1
1c0325d8:	8fd9                	or	a5,a5,a4
1c0325da:	fc15b5b3          	p.bclr	a1,a1,30,1
1c0325de:	00f58eb3          	add	t4,a1,a5
1c0325e2:	8105                	srli	a0,a0,0x1
1c0325e4:	00beb5b3          	sltu	a1,t4,a1
1c0325e8:	00a587b3          	add	a5,a1,a0
1c0325ec:	853e                	mv	a0,a5
1c0325ee:	85f6                	mv	a1,t4
1c0325f0:	0805                	addi	a6,a6,1
1c0325f2:	0004d363          	bgez	s1,1c0325f8 <pos_libc_prf+0x626>
1c0325f6:	4499                	li	s1,6
1c0325f8:	04700693          	li	a3,71
1c0325fc:	0cde0be3          	beq	t3,a3,1c032ed2 <pos_libc_prf+0xf00>
1c032600:	06600693          	li	a3,102
1c032604:	4f81                	li	t6,0
1c032606:	0edd84e3          	beq	s11,a3,1c032eee <pos_libc_prf+0xf1c>
1c03260a:	00148f13          	addi	t5,s1,1
1c03260e:	4741                	li	a4,16
1c032610:	04ef4f33          	p.min	t5,t5,a4
1c032614:	1f7d                	addi	t5,t5,-1
1c032616:	4501                	li	a0,0
1c032618:	080006b7          	lui	a3,0x8000
1c03261c:	4295                	li	t0,5
1c03261e:	0f05                	addi	t5,t5,1
1c032620:	030f40fb          	lp.setup	x1,t5,1c032680 <pos_libc_prf+0x6ae>
1c032624:	00250613          	addi	a2,a0,2
1c032628:	00a63733          	sltu	a4,a2,a0
1c03262c:	9736                	add	a4,a4,a3
1c03262e:	02575533          	divu	a0,a4,t0
1c032632:	00251693          	slli	a3,a0,0x2
1c032636:	96aa                	add	a3,a3,a0
1c032638:	8f15                	sub	a4,a4,a3
1c03263a:	0776                	slli	a4,a4,0x1d
1c03263c:	00365593          	srli	a1,a2,0x3
1c032640:	8dd9                	or	a1,a1,a4
1c032642:	0255d5b3          	divu	a1,a1,t0
1c032646:	00359693          	slli	a3,a1,0x3
1c03264a:	00559713          	slli	a4,a1,0x5
1c03264e:	9736                	add	a4,a4,a3
1c032650:	40e60733          	sub	a4,a2,a4
1c032654:	02575733          	divu	a4,a4,t0
1c032658:	81f5                	srli	a1,a1,0x1d
1c03265a:	00d70633          	add	a2,a4,a3
1c03265e:	95aa                	add	a1,a1,a0
1c032660:	00e63733          	sltu	a4,a2,a4
1c032664:	00b706b3          	add	a3,a4,a1
1c032668:	01f69593          	slli	a1,a3,0x1f
1c03266c:	00165713          	srli	a4,a2,0x1
1c032670:	8f4d                	or	a4,a4,a1
1c032672:	fc163633          	p.bclr	a2,a2,30,1
1c032676:	00e60533          	add	a0,a2,a4
1c03267a:	8285                	srli	a3,a3,0x1
1c03267c:	00c53633          	sltu	a2,a0,a2
1c032680:	96b2                	add	a3,a3,a2
1c032682:	00ae85b3          	add	a1,t4,a0
1c032686:	96be                	add	a3,a3,a5
1c032688:	01d5beb3          	sltu	t4,a1,t4
1c03268c:	96f6                	add	a3,a3,t4
1c03268e:	f606b533          	p.bclr	a0,a3,27,0
1c032692:	87ae                	mv	a5,a1
1c032694:	c125                	beqz	a0,1c0326f4 <pos_libc_prf+0x722>
1c032696:	00258513          	addi	a0,a1,2
1c03269a:	00b537b3          	sltu	a5,a0,a1
1c03269e:	96be                	add	a3,a3,a5
1c0326a0:	4e95                	li	t4,5
1c0326a2:	03d6de33          	divu	t3,a3,t4
1c0326a6:	002e1793          	slli	a5,t3,0x2
1c0326aa:	97f2                	add	a5,a5,t3
1c0326ac:	8e9d                	sub	a3,a3,a5
1c0326ae:	01d69793          	slli	a5,a3,0x1d
1c0326b2:	00355693          	srli	a3,a0,0x3
1c0326b6:	8edd                	or	a3,a3,a5
1c0326b8:	03d6d6b3          	divu	a3,a3,t4
1c0326bc:	00369593          	slli	a1,a3,0x3
1c0326c0:	00569793          	slli	a5,a3,0x5
1c0326c4:	97ae                	add	a5,a5,a1
1c0326c6:	40f507b3          	sub	a5,a0,a5
1c0326ca:	03d7d7b3          	divu	a5,a5,t4
1c0326ce:	82f5                	srli	a3,a3,0x1d
1c0326d0:	95be                	add	a1,a1,a5
1c0326d2:	00f5b7b3          	sltu	a5,a1,a5
1c0326d6:	96f2                	add	a3,a3,t3
1c0326d8:	96be                	add	a3,a3,a5
1c0326da:	01f69513          	slli	a0,a3,0x1f
1c0326de:	0015d793          	srli	a5,a1,0x1
1c0326e2:	8fc9                	or	a5,a5,a0
1c0326e4:	fc15b5b3          	p.bclr	a1,a1,30,1
1c0326e8:	97ae                	add	a5,a5,a1
1c0326ea:	8285                	srli	a3,a3,0x1
1c0326ec:	00b7b5b3          	sltu	a1,a5,a1
1c0326f0:	96ae                	add	a3,a3,a1
1c0326f2:	0885                	addi	a7,a7,1
1c0326f4:	06600593          	li	a1,102
1c0326f8:	00130513          	addi	a0,t1,1
1c0326fc:	1ebd82e3          	beq	s11,a1,1c0330e0 <pos_libc_prf+0x110e>
1c032700:	01e7de13          	srli	t3,a5,0x1e
1c032704:	00279593          	slli	a1,a5,0x2
1c032708:	00269813          	slli	a6,a3,0x2
1c03270c:	97ae                	add	a5,a5,a1
1c03270e:	010e6833          	or	a6,t3,a6
1c032712:	00b7b5b3          	sltu	a1,a5,a1
1c032716:	96c2                	add	a3,a3,a6
1c032718:	96ae                	add	a3,a3,a1
1c03271a:	0686                	slli	a3,a3,0x1
1c03271c:	01f7d593          	srli	a1,a5,0x1f
1c032720:	8ecd                	or	a3,a3,a1
1c032722:	01c6d593          	srli	a1,a3,0x1c
1c032726:	882e                	mv	a6,a1
1c032728:	4712                	lw	a4,4(sp)
1c03272a:	03058593          	addi	a1,a1,48
1c03272e:	01003833          	snez	a6,a6
1c032732:	00b30023          	sb	a1,0(t1)
1c032736:	c7c6be33          	p.bclr	t3,a3,3,28
1c03273a:	00179593          	slli	a1,a5,0x1
1c03273e:	410888b3          	sub	a7,a7,a6
1c032742:	0a0714e3          	bnez	a4,1c032fea <pos_libc_prf+0x1018>
1c032746:	8ca6                	mv	s9,s1
1c032748:	3c905d63          	blez	s1,1c032b22 <pos_libc_prf+0xb50>
1c03274c:	02e00693          	li	a3,46
1c032750:	00230793          	addi	a5,t1,2
1c032754:	00d300a3          	sb	a3,1(t1)
1c032758:	00259693          	slli	a3,a1,0x2
1c03275c:	01e5d813          	srli	a6,a1,0x1e
1c032760:	002e1513          	slli	a0,t3,0x2
1c032764:	95b6                	add	a1,a1,a3
1c032766:	00a86533          	or	a0,a6,a0
1c03276a:	00d5b833          	sltu	a6,a1,a3
1c03276e:	01c506b3          	add	a3,a0,t3
1c032772:	9836                	add	a6,a6,a3
1c032774:	0806                	slli	a6,a6,0x1
1c032776:	01f5d693          	srli	a3,a1,0x1f
1c03277a:	0106e833          	or	a6,a3,a6
1c03277e:	01c85313          	srli	t1,a6,0x1c
1c032782:	03030313          	addi	t1,t1,48
1c032786:	100006b7          	lui	a3,0x10000
1c03278a:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c03278e:	00678023          	sb	t1,0(a5)
1c032792:	00159e13          	slli	t3,a1,0x1
1c032796:	00a87833          	and	a6,a6,a0
1c03279a:	0014b463          	p.bneimm	s1,1,1c0327a2 <pos_libc_prf+0x7d0>
1c03279e:	3d40106f          	j	1c033b72 <pos_libc_prf+0x1ba0>
1c0327a2:	00359693          	slli	a3,a1,0x3
1c0327a6:	00281313          	slli	t1,a6,0x2
1c0327aa:	01ee5e93          	srli	t4,t3,0x1e
1c0327ae:	01c685b3          	add	a1,a3,t3
1c0327b2:	006ee333          	or	t1,t4,t1
1c0327b6:	981a                	add	a6,a6,t1
1c0327b8:	00d5b6b3          	sltu	a3,a1,a3
1c0327bc:	96c2                	add	a3,a3,a6
1c0327be:	0686                	slli	a3,a3,0x1
1c0327c0:	01f5d813          	srli	a6,a1,0x1f
1c0327c4:	00d866b3          	or	a3,a6,a3
1c0327c8:	01c6d813          	srli	a6,a3,0x1c
1c0327cc:	03080813          	addi	a6,a6,48 # 1a100030 <__l1_end+0xa100014>
1c0327d0:	010780a3          	sb	a6,1(a5)
1c0327d4:	ffe48c93          	addi	s9,s1,-2
1c0327d8:	00159313          	slli	t1,a1,0x1
1c0327dc:	8ee9                	and	a3,a3,a0
1c0327de:	01904463          	bgtz	s9,1c0327e6 <pos_libc_prf+0x814>
1c0327e2:	3880106f          	j	1c033b6a <pos_libc_prf+0x1b98>
1c0327e6:	01e35e13          	srli	t3,t1,0x1e
1c0327ea:	058e                	slli	a1,a1,0x3
1c0327ec:	00269813          	slli	a6,a3,0x2
1c0327f0:	932e                	add	t1,t1,a1
1c0327f2:	010e6833          	or	a6,t3,a6
1c0327f6:	96c2                	add	a3,a3,a6
1c0327f8:	00b335b3          	sltu	a1,t1,a1
1c0327fc:	95b6                	add	a1,a1,a3
1c0327fe:	0586                	slli	a1,a1,0x1
1c032800:	01f35693          	srli	a3,t1,0x1f
1c032804:	8dd5                	or	a1,a1,a3
1c032806:	01c5d693          	srli	a3,a1,0x1c
1c03280a:	03068693          	addi	a3,a3,48
1c03280e:	00d78123          	sb	a3,2(a5)
1c032812:	ffd48c93          	addi	s9,s1,-3
1c032816:	00131e13          	slli	t3,t1,0x1
1c03281a:	8de9                	and	a1,a1,a0
1c03281c:	01904463          	bgtz	s9,1c032824 <pos_libc_prf+0x852>
1c032820:	3420106f          	j	1c033b62 <pos_libc_prf+0x1b90>
1c032824:	00331693          	slli	a3,t1,0x3
1c032828:	00259813          	slli	a6,a1,0x2
1c03282c:	01ee5313          	srli	t1,t3,0x1e
1c032830:	01036833          	or	a6,t1,a6
1c032834:	9e36                	add	t3,t3,a3
1c032836:	95c2                	add	a1,a1,a6
1c032838:	00de36b3          	sltu	a3,t3,a3
1c03283c:	96ae                	add	a3,a3,a1
1c03283e:	0686                	slli	a3,a3,0x1
1c032840:	01fe5593          	srli	a1,t3,0x1f
1c032844:	8ecd                	or	a3,a3,a1
1c032846:	01c6d593          	srli	a1,a3,0x1c
1c03284a:	03058593          	addi	a1,a1,48
1c03284e:	00b781a3          	sb	a1,3(a5)
1c032852:	ffc48c93          	addi	s9,s1,-4
1c032856:	001e1313          	slli	t1,t3,0x1
1c03285a:	8ee9                	and	a3,a3,a0
1c03285c:	01904463          	bgtz	s9,1c032864 <pos_libc_prf+0x892>
1c032860:	2fa0106f          	j	1c033b5a <pos_libc_prf+0x1b88>
1c032864:	003e1593          	slli	a1,t3,0x3
1c032868:	00269813          	slli	a6,a3,0x2
1c03286c:	01e35e13          	srli	t3,t1,0x1e
1c032870:	010e6833          	or	a6,t3,a6
1c032874:	932e                	add	t1,t1,a1
1c032876:	96c2                	add	a3,a3,a6
1c032878:	00b335b3          	sltu	a1,t1,a1
1c03287c:	95b6                	add	a1,a1,a3
1c03287e:	0586                	slli	a1,a1,0x1
1c032880:	01f35693          	srli	a3,t1,0x1f
1c032884:	8dd5                	or	a1,a1,a3
1c032886:	01c5d693          	srli	a3,a1,0x1c
1c03288a:	03068693          	addi	a3,a3,48
1c03288e:	00d78223          	sb	a3,4(a5)
1c032892:	ffb48c93          	addi	s9,s1,-5
1c032896:	00131e13          	slli	t3,t1,0x1
1c03289a:	8de9                	and	a1,a1,a0
1c03289c:	01904463          	bgtz	s9,1c0328a4 <pos_libc_prf+0x8d2>
1c0328a0:	2b20106f          	j	1c033b52 <pos_libc_prf+0x1b80>
1c0328a4:	00331693          	slli	a3,t1,0x3
1c0328a8:	00259813          	slli	a6,a1,0x2
1c0328ac:	01ee5313          	srli	t1,t3,0x1e
1c0328b0:	01036833          	or	a6,t1,a6
1c0328b4:	9e36                	add	t3,t3,a3
1c0328b6:	95c2                	add	a1,a1,a6
1c0328b8:	00de36b3          	sltu	a3,t3,a3
1c0328bc:	96ae                	add	a3,a3,a1
1c0328be:	0686                	slli	a3,a3,0x1
1c0328c0:	01fe5593          	srli	a1,t3,0x1f
1c0328c4:	8ecd                	or	a3,a3,a1
1c0328c6:	01c6d593          	srli	a1,a3,0x1c
1c0328ca:	03058593          	addi	a1,a1,48
1c0328ce:	00b782a3          	sb	a1,5(a5)
1c0328d2:	ffa48c93          	addi	s9,s1,-6
1c0328d6:	001e1313          	slli	t1,t3,0x1
1c0328da:	8ee9                	and	a3,a3,a0
1c0328dc:	01904463          	bgtz	s9,1c0328e4 <pos_libc_prf+0x912>
1c0328e0:	26a0106f          	j	1c033b4a <pos_libc_prf+0x1b78>
1c0328e4:	003e1593          	slli	a1,t3,0x3
1c0328e8:	00269813          	slli	a6,a3,0x2
1c0328ec:	01e35e13          	srli	t3,t1,0x1e
1c0328f0:	010e6833          	or	a6,t3,a6
1c0328f4:	932e                	add	t1,t1,a1
1c0328f6:	96c2                	add	a3,a3,a6
1c0328f8:	00b335b3          	sltu	a1,t1,a1
1c0328fc:	95b6                	add	a1,a1,a3
1c0328fe:	0586                	slli	a1,a1,0x1
1c032900:	01f35693          	srli	a3,t1,0x1f
1c032904:	8dd5                	or	a1,a1,a3
1c032906:	01c5d693          	srli	a3,a1,0x1c
1c03290a:	03068693          	addi	a3,a3,48
1c03290e:	00d78323          	sb	a3,6(a5)
1c032912:	ff948c93          	addi	s9,s1,-7
1c032916:	00131e13          	slli	t3,t1,0x1
1c03291a:	8de9                	and	a1,a1,a0
1c03291c:	01904463          	bgtz	s9,1c032924 <pos_libc_prf+0x952>
1c032920:	2220106f          	j	1c033b42 <pos_libc_prf+0x1b70>
1c032924:	00331693          	slli	a3,t1,0x3
1c032928:	00259813          	slli	a6,a1,0x2
1c03292c:	01ee5313          	srli	t1,t3,0x1e
1c032930:	01036833          	or	a6,t1,a6
1c032934:	9e36                	add	t3,t3,a3
1c032936:	95c2                	add	a1,a1,a6
1c032938:	00de36b3          	sltu	a3,t3,a3
1c03293c:	96ae                	add	a3,a3,a1
1c03293e:	0686                	slli	a3,a3,0x1
1c032940:	01fe5593          	srli	a1,t3,0x1f
1c032944:	8ecd                	or	a3,a3,a1
1c032946:	01c6d593          	srli	a1,a3,0x1c
1c03294a:	03058593          	addi	a1,a1,48
1c03294e:	00b783a3          	sb	a1,7(a5)
1c032952:	ff848c93          	addi	s9,s1,-8
1c032956:	001e1313          	slli	t1,t3,0x1
1c03295a:	8ee9                	and	a3,a3,a0
1c03295c:	01904463          	bgtz	s9,1c032964 <pos_libc_prf+0x992>
1c032960:	1da0106f          	j	1c033b3a <pos_libc_prf+0x1b68>
1c032964:	003e1593          	slli	a1,t3,0x3
1c032968:	00269813          	slli	a6,a3,0x2
1c03296c:	01e35e13          	srli	t3,t1,0x1e
1c032970:	010e6833          	or	a6,t3,a6
1c032974:	932e                	add	t1,t1,a1
1c032976:	96c2                	add	a3,a3,a6
1c032978:	00b335b3          	sltu	a1,t1,a1
1c03297c:	95b6                	add	a1,a1,a3
1c03297e:	0586                	slli	a1,a1,0x1
1c032980:	01f35693          	srli	a3,t1,0x1f
1c032984:	8dd5                	or	a1,a1,a3
1c032986:	01c5d693          	srli	a3,a1,0x1c
1c03298a:	03068693          	addi	a3,a3,48
1c03298e:	00d78423          	sb	a3,8(a5)
1c032992:	ff748c93          	addi	s9,s1,-9
1c032996:	00131e13          	slli	t3,t1,0x1
1c03299a:	8de9                	and	a1,a1,a0
1c03299c:	01904463          	bgtz	s9,1c0329a4 <pos_libc_prf+0x9d2>
1c0329a0:	1920106f          	j	1c033b32 <pos_libc_prf+0x1b60>
1c0329a4:	00331693          	slli	a3,t1,0x3
1c0329a8:	00259813          	slli	a6,a1,0x2
1c0329ac:	01ee5e93          	srli	t4,t3,0x1e
1c0329b0:	01c68333          	add	t1,a3,t3
1c0329b4:	010ee833          	or	a6,t4,a6
1c0329b8:	982e                	add	a6,a6,a1
1c0329ba:	00d336b3          	sltu	a3,t1,a3
1c0329be:	96c2                	add	a3,a3,a6
1c0329c0:	01f35593          	srli	a1,t1,0x1f
1c0329c4:	0686                	slli	a3,a3,0x1
1c0329c6:	8ecd                	or	a3,a3,a1
1c0329c8:	01c6d593          	srli	a1,a3,0x1c
1c0329cc:	03058593          	addi	a1,a1,48
1c0329d0:	00b784a3          	sb	a1,9(a5)
1c0329d4:	ff648c93          	addi	s9,s1,-10
1c0329d8:	8ee9                	and	a3,a3,a0
1c0329da:	00131593          	slli	a1,t1,0x1
1c0329de:	00a78513          	addi	a0,a5,10
1c0329e2:	15905063          	blez	s9,1c032b22 <pos_libc_prf+0xb50>
1c0329e6:	00259513          	slli	a0,a1,0x2
1c0329ea:	01e5d813          	srli	a6,a1,0x1e
1c0329ee:	00269313          	slli	t1,a3,0x2
1c0329f2:	95aa                	add	a1,a1,a0
1c0329f4:	00686333          	or	t1,a6,t1
1c0329f8:	969a                	add	a3,a3,t1
1c0329fa:	00a5b833          	sltu	a6,a1,a0
1c0329fe:	9836                	add	a6,a6,a3
1c032a00:	0806                	slli	a6,a6,0x1
1c032a02:	01f5d693          	srli	a3,a1,0x1f
1c032a06:	0106e833          	or	a6,a3,a6
1c032a0a:	01c85313          	srli	t1,a6,0x1c
1c032a0e:	03030313          	addi	t1,t1,48
1c032a12:	100006b7          	lui	a3,0x10000
1c032a16:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xfff001b>
1c032a1a:	00678523          	sb	t1,10(a5)
1c032a1e:	ff548c93          	addi	s9,s1,-11
1c032a22:	00159e13          	slli	t3,a1,0x1
1c032a26:	00a87833          	and	a6,a6,a0
1c032a2a:	01904463          	bgtz	s9,1c032a32 <pos_libc_prf+0xa60>
1c032a2e:	0fc0106f          	j	1c033b2a <pos_libc_prf+0x1b58>
1c032a32:	00359693          	slli	a3,a1,0x3
1c032a36:	00281313          	slli	t1,a6,0x2
1c032a3a:	01ee5e93          	srli	t4,t3,0x1e
1c032a3e:	01c685b3          	add	a1,a3,t3
1c032a42:	006ee333          	or	t1,t4,t1
1c032a46:	981a                	add	a6,a6,t1
1c032a48:	00d5b6b3          	sltu	a3,a1,a3
1c032a4c:	96c2                	add	a3,a3,a6
1c032a4e:	0686                	slli	a3,a3,0x1
1c032a50:	01f5d813          	srli	a6,a1,0x1f
1c032a54:	00d866b3          	or	a3,a6,a3
1c032a58:	01c6d813          	srli	a6,a3,0x1c
1c032a5c:	03080813          	addi	a6,a6,48
1c032a60:	010785a3          	sb	a6,11(a5)
1c032a64:	ff448c93          	addi	s9,s1,-12
1c032a68:	00159313          	slli	t1,a1,0x1
1c032a6c:	8ee9                	and	a3,a3,a0
1c032a6e:	01904463          	bgtz	s9,1c032a76 <pos_libc_prf+0xaa4>
1c032a72:	0b00106f          	j	1c033b22 <pos_libc_prf+0x1b50>
1c032a76:	058e                	slli	a1,a1,0x3
1c032a78:	01e35e13          	srli	t3,t1,0x1e
1c032a7c:	00269813          	slli	a6,a3,0x2
1c032a80:	932e                	add	t1,t1,a1
1c032a82:	010e6833          	or	a6,t3,a6
1c032a86:	96c2                	add	a3,a3,a6
1c032a88:	00b335b3          	sltu	a1,t1,a1
1c032a8c:	95b6                	add	a1,a1,a3
1c032a8e:	0586                	slli	a1,a1,0x1
1c032a90:	01f35693          	srli	a3,t1,0x1f
1c032a94:	8dd5                	or	a1,a1,a3
1c032a96:	01c5d693          	srli	a3,a1,0x1c
1c032a9a:	03068693          	addi	a3,a3,48
1c032a9e:	00d78623          	sb	a3,12(a5)
1c032aa2:	ff348c93          	addi	s9,s1,-13
1c032aa6:	00131813          	slli	a6,t1,0x1
1c032aaa:	01904463          	bgtz	s9,1c032ab2 <pos_libc_prf+0xae0>
1c032aae:	06c0106f          	j	1c033b1a <pos_libc_prf+0x1b48>
1c032ab2:	8de9                	and	a1,a1,a0
1c032ab4:	00331693          	slli	a3,t1,0x3
1c032ab8:	01e85e13          	srli	t3,a6,0x1e
1c032abc:	00259313          	slli	t1,a1,0x2
1c032ac0:	9836                	add	a6,a6,a3
1c032ac2:	006e6333          	or	t1,t3,t1
1c032ac6:	959a                	add	a1,a1,t1
1c032ac8:	00d836b3          	sltu	a3,a6,a3
1c032acc:	96ae                	add	a3,a3,a1
1c032ace:	0686                	slli	a3,a3,0x1
1c032ad0:	01f85593          	srli	a1,a6,0x1f
1c032ad4:	8ecd                	or	a3,a3,a1
1c032ad6:	01c6d593          	srli	a1,a3,0x1c
1c032ada:	03058593          	addi	a1,a1,48
1c032ade:	00b786a3          	sb	a1,13(a5)
1c032ae2:	ff248c93          	addi	s9,s1,-14
1c032ae6:	8ee9                	and	a3,a3,a0
1c032ae8:	00181593          	slli	a1,a6,0x1
1c032aec:	00e78513          	addi	a0,a5,14
1c032af0:	03905963          	blez	s9,1c032b22 <pos_libc_prf+0xb50>
1c032af4:	00381513          	slli	a0,a6,0x3
1c032af8:	01e5d313          	srli	t1,a1,0x1e
1c032afc:	00269813          	slli	a6,a3,0x2
1c032b00:	95aa                	add	a1,a1,a0
1c032b02:	01036833          	or	a6,t1,a6
1c032b06:	00a5b5b3          	sltu	a1,a1,a0
1c032b0a:	96c2                	add	a3,a3,a6
1c032b0c:	96ae                	add	a3,a3,a1
1c032b0e:	0686                	slli	a3,a3,0x1
1c032b10:	82f1                	srli	a3,a3,0x1c
1c032b12:	03068693          	addi	a3,a3,48
1c032b16:	00f78513          	addi	a0,a5,15
1c032b1a:	00d78723          	sb	a3,14(a5)
1c032b1e:	ff148c93          	addi	s9,s1,-15
1c032b22:	440f8563          	beqz	t6,1c032f6c <pos_libc_prf+0xf9a>
1c032b26:	4581                	li	a1,0
1c032b28:	cc02                	sw	zero,24(sp)
1c032b2a:	4a01                	li	s4,0
1c032b2c:	03000813          	li	a6,48
1c032b30:	a011                	j	1c032b34 <pos_libc_prf+0xb62>
1c032b32:	853e                	mv	a0,a5
1c032b34:	fff50793          	addi	a5,a0,-1
1c032b38:	0007c683          	lbu	a3,0(a5)
1c032b3c:	ff068be3          	beq	a3,a6,1c032b32 <pos_libc_prf+0xb60>
1c032b40:	02e00813          	li	a6,46
1c032b44:	4c81                	li	s9,0
1c032b46:	01069363          	bne	a3,a6,1c032b4c <pos_libc_prf+0xb7a>
1c032b4a:	853e                	mv	a0,a5
1c032b4c:	0dfdf793          	andi	a5,s11,223
1c032b50:	04500693          	li	a3,69
1c032b54:	3ad78e63          	beq	a5,a3,1c032f10 <pos_libc_prf+0xf3e>
1c032b58:	4782                	lw	a5,0(sp)
1c032b5a:	00050023          	sb	zero,0(a0)
1c032b5e:	8d1d                	sub	a0,a0,a5
1c032b60:	4732                	lw	a4,12(sp)
1c032b62:	2a071263          	bnez	a4,1c032e06 <pos_libc_prf+0xe34>
1c032b66:	47c2                	lw	a5,16(sp)
1c032b68:	28079f63          	bnez	a5,1c032e06 <pos_libc_prf+0xe34>
1c032b6c:	02414783          	lbu	a5,36(sp)
1c032b70:	02d00693          	li	a3,45
1c032b74:	c202                	sw	zero,4(sp)
1c032b76:	28d78863          	beq	a5,a3,1c032e06 <pos_libc_prf+0xe34>
1c032b7a:	fd078793          	addi	a5,a5,-48
1c032b7e:	46a5                	li	a3,9
1c032b80:	00b50933          	add	s2,a0,a1
1c032b84:	a2f6f0e3          	bleu	a5,a3,1c0325a4 <pos_libc_prf+0x5d2>
1c032b88:	412b0b33          	sub	s6,s6,s2
1c032b8c:	1040                	addi	s0,sp,36
1c032b8e:	4481                	li	s1,0
1c032b90:	ee6ff06f          	j	1c032276 <pos_libc_prf+0x2a4>
1c032b94:	000a2783          	lw	a5,0(s4)
1c032b98:	0a11                	addi	s4,s4,4
1c032b9a:	ce52                	sw	s4,28(sp)
1c032b9c:	02f10223          	sb	a5,36(sp)
1c032ba0:	1b7d                	addi	s6,s6,-1
1c032ba2:	4481                	li	s1,0
1c032ba4:	c202                	sw	zero,4(sp)
1c032ba6:	4905                	li	s2,1
1c032ba8:	1040                	addi	s0,sp,36
1c032baa:	ec6ff06f          	j	1c032270 <pos_libc_prf+0x29e>
1c032bae:	04c00613          	li	a2,76
1c032bb2:	004a268b          	p.lw	a3,4(s4!)
1c032bb6:	5ac78ee3          	beq	a5,a2,1c033972 <pos_libc_prf+0x19a0>
1c032bba:	28f65363          	ble	a5,a2,1c032e40 <pos_libc_prf+0xe6e>
1c032bbe:	06800613          	li	a2,104
1c032bc2:	00c78663          	beq	a5,a2,1c032bce <pos_libc_prf+0xbfc>
1c032bc6:	0156a023          	sw	s5,0(a3)
1c032bca:	c46ff06f          	j	1c032010 <pos_libc_prf+0x3e>
1c032bce:	87d6                	mv	a5,s5
1c032bd0:	00f69023          	sh	a5,0(a3)
1c032bd4:	c3cff06f          	j	1c032010 <pos_libc_prf+0x3e>
1c032bd8:	004a0793          	addi	a5,s4,4
1c032bdc:	7761                	lui	a4,0xffff8
1c032bde:	02610593          	addi	a1,sp,38
1c032be2:	ce3e                	sw	a5,28(sp)
1c032be4:	83074713          	xori	a4,a4,-2000
1c032be8:	000a2783          	lw	a5,0(s4)
1c032bec:	4601                	li	a2,0
1c032bee:	02e11223          	sh	a4,36(sp)
1c032bf2:	86ae                	mv	a3,a1
1c032bf4:	4ea5                	li	t4,9
1c032bf6:	f647b733          	p.bclr	a4,a5,27,4
1c032bfa:	01c61513          	slli	a0,a2,0x1c
1c032bfe:	8391                	srli	a5,a5,0x4
1c032c00:	8fc9                	or	a5,a5,a0
1c032c02:	8211                	srli	a2,a2,0x4
1c032c04:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c032c08:	03070893          	addi	a7,a4,48
1c032c0c:	00c7e333          	or	t1,a5,a2
1c032c10:	00eefa63          	bleu	a4,t4,1c032c24 <pos_libc_prf+0xc52>
1c032c14:	01c68023          	sb	t3,0(a3)
1c032c18:	00168513          	addi	a0,a3,1
1c032c1c:	00030a63          	beqz	t1,1c032c30 <pos_libc_prf+0xc5e>
1c032c20:	86aa                	mv	a3,a0
1c032c22:	bfd1                	j	1c032bf6 <pos_libc_prf+0xc24>
1c032c24:	01168023          	sb	a7,0(a3)
1c032c28:	00168513          	addi	a0,a3,1
1c032c2c:	fe031ae3          	bnez	t1,1c032c20 <pos_libc_prf+0xc4e>
1c032c30:	00050023          	sb	zero,0(a0)
1c032c34:	8d0d                	sub	a0,a0,a1
1c032c36:	00d5fe63          	bleu	a3,a1,1c032c52 <pos_libc_prf+0xc80>
1c032c3a:	87b6                	mv	a5,a3
1c032c3c:	86ae                	mv	a3,a1
1c032c3e:	0006c603          	lbu	a2,0(a3)
1c032c42:	0007c703          	lbu	a4,0(a5)
1c032c46:	fec78fab          	p.sb	a2,-1(a5!)
1c032c4a:	00e680ab          	p.sb	a4,1(a3!)
1c032c4e:	fef6e8e3          	bltu	a3,a5,1c032c3e <pos_libc_prf+0xc6c>
1c032c52:	4789                	li	a5,2
1c032c54:	00250913          	addi	s2,a0,2
1c032c58:	c23e                	sw	a5,4(sp)
1c032c5a:	dfcff06f          	j	1c032256 <pos_libc_prf+0x284>
1c032c5e:	85de                	mv	a1,s7
1c032c60:	02500513          	li	a0,37
1c032c64:	9982                	jalr	s3
1c032c66:	cff52163          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c032c6a:	85de                	mv	a1,s7
1c032c6c:	856e                	mv	a0,s11
1c032c6e:	9982                	jalr	s3
1c032c70:	cdf52c63          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c032c74:	0a89                	addi	s5,s5,2
1c032c76:	b9aff06f          	j	1c032010 <pos_libc_prf+0x3e>
1c032c7a:	007a0893          	addi	a7,s4,7
1c032c7e:	c408b8b3          	p.bclr	a7,a7,2,0
1c032c82:	0008a783          	lw	a5,0(a7)
1c032c86:	0048a303          	lw	t1,4(a7)
1c032c8a:	0157d693          	srli	a3,a5,0x15
1c032c8e:	00b31513          	slli	a0,t1,0xb
1c032c92:	08a1                	addi	a7,a7,8
1c032c94:	01435813          	srli	a6,t1,0x14
1c032c98:	8d55                	or	a0,a0,a3
1c032c9a:	ce46                	sw	a7,28(sp)
1c032c9c:	e8b83833          	p.bclr	a6,a6,20,11
1c032ca0:	00b79593          	slli	a1,a5,0xb
1c032ca4:	c1f53533          	p.bclr	a0,a0,0,31
1c032ca8:	1e034e63          	bltz	t1,1c032ea4 <pos_libc_prf+0xed2>
1c032cac:	47b2                	lw	a5,12(sp)
1c032cae:	1c078f63          	beqz	a5,1c032e8c <pos_libc_prf+0xeba>
1c032cb2:	02b00793          	li	a5,43
1c032cb6:	02f10223          	sb	a5,36(sp)
1c032cba:	02510313          	addi	t1,sp,37
1c032cbe:	7ff00793          	li	a5,2047
1c032cc2:	18f80863          	beq	a6,a5,1c032e52 <pos_libc_prf+0xe80>
1c032cc6:	04600793          	li	a5,70
1c032cca:	0dfdfe13          	andi	t3,s11,223
1c032cce:	32fd8e63          	beq	s11,a5,1c03300a <pos_libc_prf+0x1038>
1c032cd2:	41f85693          	srai	a3,a6,0x1f
1c032cd6:	00b867b3          	or	a5,a6,a1
1c032cda:	8ec9                	or	a3,a3,a0
1c032cdc:	8fd5                	or	a5,a5,a3
1c032cde:	8e0780e3          	beqz	a5,1c0325be <pos_libc_prf+0x5ec>
1c032ce2:	02081363          	bnez	a6,1c032d08 <pos_libc_prf+0xd36>
1c032ce6:	01f5d793          	srli	a5,a1,0x1f
1c032cea:	00151693          	slli	a3,a0,0x1
1c032cee:	00d7e533          	or	a0,a5,a3
1c032cf2:	0586                	slli	a1,a1,0x1
1c032cf4:	5a054fe3          	bltz	a0,1c033ab2 <pos_libc_prf+0x1ae0>
1c032cf8:	01f5d793          	srli	a5,a1,0x1f
1c032cfc:	0506                	slli	a0,a0,0x1
1c032cfe:	8d5d                	or	a0,a0,a5
1c032d00:	187d                	addi	a6,a6,-1
1c032d02:	0586                	slli	a1,a1,0x1
1c032d04:	fe055ae3          	bgez	a0,1c032cf8 <pos_libc_prf+0xd26>
1c032d08:	c0280813          	addi	a6,a6,-1022
1c032d0c:	57f9                	li	a5,-2
1c032d0e:	c1f54533          	p.bset	a0,a0,0,31
1c032d12:	4881                	li	a7,0
1c032d14:	06f85763          	ble	a5,a6,1c032d82 <pos_libc_prf+0xdb0>
1c032d18:	33333eb7          	lui	t4,0x33333
1c032d1c:	80000f37          	lui	t5,0x80000
1c032d20:	4881                	li	a7,0
1c032d22:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x172ff0ca>
1c032d26:	ffff4f13          	not	t5,t5
1c032d2a:	5ff9                	li	t6,-2
1c032d2c:	a011                	j	1c032d30 <pos_libc_prf+0xd5e>
1c032d2e:	883e                	mv	a6,a5
1c032d30:	01f51693          	slli	a3,a0,0x1f
1c032d34:	0015d713          	srli	a4,a1,0x1
1c032d38:	fc15b7b3          	p.bclr	a5,a1,30,1
1c032d3c:	8f55                	or	a4,a4,a3
1c032d3e:	00e785b3          	add	a1,a5,a4
1c032d42:	00f5b7b3          	sltu	a5,a1,a5
1c032d46:	8105                	srli	a0,a0,0x1
1c032d48:	953e                	add	a0,a0,a5
1c032d4a:	00180793          	addi	a5,a6,1
1c032d4e:	feaee0e3          	bltu	t4,a0,1c032d2e <pos_libc_prf+0xd5c>
1c032d52:	00259693          	slli	a3,a1,0x2
1c032d56:	01e5d613          	srli	a2,a1,0x1e
1c032d5a:	00251713          	slli	a4,a0,0x2
1c032d5e:	95b6                	add	a1,a1,a3
1c032d60:	8f51                	or	a4,a4,a2
1c032d62:	953a                	add	a0,a0,a4
1c032d64:	00d5b6b3          	sltu	a3,a1,a3
1c032d68:	9536                	add	a0,a0,a3
1c032d6a:	01f5d713          	srli	a4,a1,0x1f
1c032d6e:	0809                	addi	a6,a6,2
1c032d70:	18fd                	addi	a7,a7,-1
1c032d72:	01e51663          	bne	a0,t5,1c032d7e <pos_libc_prf+0xdac>
1c032d76:	0586                	slli	a1,a1,0x1
1c032d78:	fc174533          	p.bset	a0,a4,30,1
1c032d7c:	883e                	mv	a6,a5
1c032d7e:	fbf849e3          	blt	a6,t6,1c032d30 <pos_libc_prf+0xd5e>
1c032d82:	80000f37          	lui	t5,0x80000
1c032d86:	4f95                	li	t6,5
1c032d88:	ffff4f13          	not	t5,t5
1c032d8c:	83005de3          	blez	a6,1c0325c6 <pos_libc_prf+0x5f4>
1c032d90:	00258693          	addi	a3,a1,2
1c032d94:	00b6b5b3          	sltu	a1,a3,a1
1c032d98:	952e                	add	a0,a0,a1
1c032d9a:	03f557b3          	divu	a5,a0,t6
1c032d9e:	00279713          	slli	a4,a5,0x2
1c032da2:	973e                	add	a4,a4,a5
1c032da4:	8d19                	sub	a0,a0,a4
1c032da6:	01d51713          	slli	a4,a0,0x1d
1c032daa:	0036d613          	srli	a2,a3,0x3
1c032dae:	8e59                	or	a2,a2,a4
1c032db0:	03f65633          	divu	a2,a2,t6
1c032db4:	00361593          	slli	a1,a2,0x3
1c032db8:	00561713          	slli	a4,a2,0x5
1c032dbc:	972e                	add	a4,a4,a1
1c032dbe:	40e68733          	sub	a4,a3,a4
1c032dc2:	03f75733          	divu	a4,a4,t6
1c032dc6:	8275                	srli	a2,a2,0x1d
1c032dc8:	95ba                	add	a1,a1,a4
1c032dca:	97b2                	add	a5,a5,a2
1c032dcc:	00e5b733          	sltu	a4,a1,a4
1c032dd0:	00f70533          	add	a0,a4,a5
1c032dd4:	187d                	addi	a6,a6,-1
1c032dd6:	0885                	addi	a7,a7,1
1c032dd8:	01f5d793          	srli	a5,a1,0x1f
1c032ddc:	0506                	slli	a0,a0,0x1
1c032dde:	8d5d                	or	a0,a0,a5
1c032de0:	0586                	slli	a1,a1,0x1
1c032de2:	187d                	addi	a6,a6,-1
1c032de4:	feaf7ae3          	bleu	a0,t5,1c032dd8 <pos_libc_prf+0xe06>
1c032de8:	b755                	j	1c032d8c <pos_libc_prf+0xdba>
1c032dea:	001d4d83          	lbu	s11,1(s10)
1c032dee:	04c00793          	li	a5,76
1c032df2:	0d09                	addi	s10,s10,2
1c032df4:	ad6ff06f          	j	1c0320ca <pos_libc_prf+0xf8>
1c032df8:	001d4d83          	lbu	s11,1(s10)
1c032dfc:	04800793          	li	a5,72
1c032e00:	0d09                	addi	s10,s10,2
1c032e02:	ac8ff06f          	j	1c0320ca <pos_libc_prf+0xf8>
1c032e06:	4705                	li	a4,1
1c032e08:	02514783          	lbu	a5,37(sp)
1c032e0c:	c23a                	sw	a4,4(sp)
1c032e0e:	b3b5                	j	1c032b7a <pos_libc_prf+0xba8>
1c032e10:	004a0793          	addi	a5,s4,4
1c032e14:	ce3e                	sw	a5,28(sp)
1c032e16:	000a2403          	lw	s0,0(s4)
1c032e1a:	4c81                	li	s9,0
1c032e1c:	e92ff06f          	j	1c0324ae <pos_libc_prf+0x4dc>
1c032e20:	4785                	li	a5,1
1c032e22:	c23e                	sw	a5,4(sp)
1c032e24:	c32ff06f          	j	1c032256 <pos_libc_prf+0x284>
1c032e28:	4742                	lw	a4,16(sp)
1c032e2a:	22070063          	beqz	a4,1c03304a <pos_libc_prf+0x1078>
1c032e2e:	02000693          	li	a3,32
1c032e32:	02d10223          	sb	a3,36(sp)
1c032e36:	4c92                	lw	s9,4(sp)
1c032e38:	02510a13          	addi	s4,sp,37
1c032e3c:	bacff06f          	j	1c0321e8 <pos_libc_prf+0x216>
1c032e40:	04800613          	li	a2,72
1c032e44:	d8c791e3          	bne	a5,a2,1c032bc6 <pos_libc_prf+0xbf4>
1c032e48:	87d6                	mv	a5,s5
1c032e4a:	00f68023          	sb	a5,0(a3)
1c032e4e:	9c2ff06f          	j	1c032010 <pos_libc_prf+0x3e>
1c032e52:	00a5e6b3          	or	a3,a1,a0
1c032e56:	fbfd8613          	addi	a2,s11,-65
1c032e5a:	00330513          	addi	a0,t1,3
1c032e5e:	47e5                	li	a5,25
1c032e60:	16069963          	bnez	a3,1c032fd2 <pos_libc_prf+0x1000>
1c032e64:	3ec7e1e3          	bltu	a5,a2,1c033a46 <pos_libc_prf+0x1a74>
1c032e68:	6795                	lui	a5,0x5
1c032e6a:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c032e6e:	00f31023          	sh	a5,0(t1)
1c032e72:	04600793          	li	a5,70
1c032e76:	00f30123          	sb	a5,2(t1)
1c032e7a:	4782                	lw	a5,0(sp)
1c032e7c:	000301a3          	sb	zero,3(t1)
1c032e80:	8d1d                	sub	a0,a0,a5
1c032e82:	4581                	li	a1,0
1c032e84:	4c81                	li	s9,0
1c032e86:	cc02                	sw	zero,24(sp)
1c032e88:	4a01                	li	s4,0
1c032e8a:	b9d9                	j	1c032b60 <pos_libc_prf+0xb8e>
1c032e8c:	4742                	lw	a4,16(sp)
1c032e8e:	02410313          	addi	t1,sp,36
1c032e92:	e20706e3          	beqz	a4,1c032cbe <pos_libc_prf+0xcec>
1c032e96:	02000793          	li	a5,32
1c032e9a:	02f10223          	sb	a5,36(sp)
1c032e9e:	02510313          	addi	t1,sp,37
1c032ea2:	bd31                	j	1c032cbe <pos_libc_prf+0xcec>
1c032ea4:	02d00793          	li	a5,45
1c032ea8:	02f10223          	sb	a5,36(sp)
1c032eac:	02510313          	addi	t1,sp,37
1c032eb0:	b539                	j	1c032cbe <pos_libc_prf+0xcec>
1c032eb2:	40f007b3          	neg	a5,a5
1c032eb6:	00f036b3          	snez	a3,a5
1c032eba:	40e00cb3          	neg	s9,a4
1c032ebe:	02d00613          	li	a2,45
1c032ec2:	02c10223          	sb	a2,36(sp)
1c032ec6:	40dc8cb3          	sub	s9,s9,a3
1c032eca:	02510a13          	addi	s4,sp,37
1c032ece:	b1aff06f          	j	1c0321e8 <pos_libc_prf+0x216>
1c032ed2:	56f5                	li	a3,-3
1c032ed4:	0cd8c063          	blt	a7,a3,1c032f94 <pos_libc_prf+0xfc2>
1c032ed8:	0b14ce63          	blt	s1,a7,1c032f94 <pos_libc_prf+0xfc2>
1c032edc:	4712                	lw	a4,4(sp)
1c032ede:	411484b3          	sub	s1,s1,a7
1c032ee2:	4f81                	li	t6,0
1c032ee4:	e709                	bnez	a4,1c032eee <pos_libc_prf+0xf1c>
1c032ee6:	00902fb3          	sgtz	t6,s1
1c032eea:	0fffff93          	andi	t6,t6,255
1c032eee:	009886b3          	add	a3,a7,s1
1c032ef2:	2e06cae3          	bltz	a3,1c0339e6 <pos_libc_prf+0x1a14>
1c032ef6:	4741                	li	a4,16
1c032ef8:	04e6cf33          	p.min	t5,a3,a4
1c032efc:	1f7d                	addi	t5,t5,-1
1c032efe:	06600d93          	li	s11,102
1c032f02:	f0069a63          	bnez	a3,1c032616 <pos_libc_prf+0x644>
1c032f06:	4501                	li	a0,0
1c032f08:	080006b7          	lui	a3,0x8000
1c032f0c:	f76ff06f          	j	1c032682 <pos_libc_prf+0x6b0>
1c032f10:	86aa                	mv	a3,a0
1c032f12:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7ff001e>
1c032f16:	2408c6e3          	bltz	a7,1c033962 <pos_libc_prf+0x1990>
1c032f1a:	02b00793          	li	a5,43
1c032f1e:	00f500a3          	sb	a5,1(a0)
1c032f22:	06300793          	li	a5,99
1c032f26:	0117de63          	ble	a7,a5,1c032f42 <pos_libc_prf+0xf70>
1c032f2a:	06400693          	li	a3,100
1c032f2e:	02d8c7b3          	div	a5,a7,a3
1c032f32:	03078793          	addi	a5,a5,48
1c032f36:	02d8e8b3          	rem	a7,a7,a3
1c032f3a:	00f50123          	sb	a5,2(a0)
1c032f3e:	00350693          	addi	a3,a0,3
1c032f42:	47a9                	li	a5,10
1c032f44:	02f8c633          	div	a2,a7,a5
1c032f48:	02f8e7b3          	rem	a5,a7,a5
1c032f4c:	03060613          	addi	a2,a2,48 # 1a100030 <__l1_end+0xa100014>
1c032f50:	8536                	mv	a0,a3
1c032f52:	00c5012b          	p.sb	a2,2(a0!)
1c032f56:	03078793          	addi	a5,a5,48
1c032f5a:	00f680a3          	sb	a5,1(a3)
1c032f5e:	beed                	j	1c032b58 <pos_libc_prf+0xb86>
1c032f60:	800004b7          	lui	s1,0x80000
1c032f64:	fff4c493          	not	s1,s1
1c032f68:	c3cff06f          	j	1c0323a4 <pos_libc_prf+0x3d2>
1c032f6c:	85e6                	mv	a1,s9
1c032f6e:	cc02                	sw	zero,24(sp)
1c032f70:	4a01                	li	s4,0
1c032f72:	bee9                	j	1c032b4c <pos_libc_prf+0xb7a>
1c032f74:	4901                	li	s2,0
1c032f76:	1054                	addi	a3,sp,36
1c032f78:	d60ff06f          	j	1c0324d8 <pos_libc_prf+0x506>
1c032f7c:	007a0793          	addi	a5,s4,7
1c032f80:	c407b7b3          	p.bclr	a5,a5,2,0
1c032f84:	00878713          	addi	a4,a5,8
1c032f88:	ce3a                	sw	a4,28(sp)
1c032f8a:	4380                	lw	s0,0(a5)
1c032f8c:	0047ac83          	lw	s9,4(a5)
1c032f90:	d1eff06f          	j	1c0324ae <pos_libc_prf+0x4dc>
1c032f94:	ffed8613          	addi	a2,s11,-2
1c032f98:	0ff67d93          	andi	s11,a2,255
1c032f9c:	220486e3          	beqz	s1,1c0339c8 <pos_libc_prf+0x19f6>
1c032fa0:	4712                	lw	a4,4(sp)
1c032fa2:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c032fa6:	1e071fe3          	bnez	a4,1c0339a4 <pos_libc_prf+0x19d2>
1c032faa:	00d02fb3          	sgtz	t6,a3
1c032fae:	0fffff93          	andi	t6,t6,255
1c032fb2:	84b6                	mv	s1,a3
1c032fb4:	e56ff06f          	j	1c03260a <pos_libc_prf+0x638>
1c032fb8:	007a0693          	addi	a3,s4,7
1c032fbc:	c406b6b3          	p.bclr	a3,a3,2,0
1c032fc0:	00868793          	addi	a5,a3,8
1c032fc4:	ce3e                	sw	a5,28(sp)
1c032fc6:	429c                	lw	a5,0(a3)
1c032fc8:	42d4                	lw	a3,4(a3)
1c032fca:	c236                	sw	a3,4(sp)
1c032fcc:	8736                	mv	a4,a3
1c032fce:	a02ff06f          	j	1c0321d0 <pos_libc_prf+0x1fe>
1c032fd2:	24c7efe3          	bltu	a5,a2,1c033a30 <pos_libc_prf+0x1a5e>
1c032fd6:	6791                	lui	a5,0x4
1c032fd8:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c032fdc:	00f31023          	sh	a5,0(t1)
1c032fe0:	04e00793          	li	a5,78
1c032fe4:	00f30123          	sb	a5,2(t1)
1c032fe8:	bd49                	j	1c032e7a <pos_libc_prf+0xea8>
1c032fea:	02e00793          	li	a5,46
1c032fee:	00f300a3          	sb	a5,1(t1)
1c032ff2:	00230793          	addi	a5,t1,2
1c032ff6:	f6904163          	bgtz	s1,1c032758 <pos_libc_prf+0x786>
1c032ffa:	8ca6                	mv	s9,s1
1c032ffc:	853e                	mv	a0,a5
1c032ffe:	b615                	j	1c032b22 <pos_libc_prf+0xb50>
1c033000:	4481                	li	s1,0
1c033002:	c202                	sw	zero,4(sp)
1c033004:	4901                	li	s2,0
1c033006:	a6aff06f          	j	1c032270 <pos_libc_prf+0x29e>
1c03300a:	04600e13          	li	t3,70
1c03300e:	06600d93          	li	s11,102
1c033012:	b1c1                	j	1c032cd2 <pos_libc_prf+0xd00>
1c033014:	105c                	addi	a5,sp,36
1c033016:	4565                	li	a0,25
1c033018:	0017c70b          	p.lbu	a4,1(a5!)
1c03301c:	f9f70693          	addi	a3,a4,-97
1c033020:	0ff6f693          	andi	a3,a3,255
1c033024:	fe070613          	addi	a2,a4,-32
1c033028:	00d56e63          	bltu	a0,a3,1c033044 <pos_libc_prf+0x1072>
1c03302c:	fec78fa3          	sb	a2,-1(a5)
1c033030:	0017c70b          	p.lbu	a4,1(a5!)
1c033034:	f9f70693          	addi	a3,a4,-97
1c033038:	0ff6f693          	andi	a3,a3,255
1c03303c:	fe070613          	addi	a2,a4,-32
1c033040:	fed576e3          	bleu	a3,a0,1c03302c <pos_libc_prf+0x105a>
1c033044:	fb71                	bnez	a4,1c033018 <pos_libc_prf+0x1046>
1c033046:	d4eff06f          	j	1c032594 <pos_libc_prf+0x5c2>
1c03304a:	4c92                	lw	s9,4(sp)
1c03304c:	02410a13          	addi	s4,sp,36
1c033050:	998ff06f          	j	1c0321e8 <pos_libc_prf+0x216>
1c033054:	4922                	lw	s2,8(sp)
1c033056:	8dd2                	mv	s11,s4
1c033058:	a029                	j	1c033062 <pos_libc_prf+0x1090>
1c03305a:	9982                	jalr	s3
1c03305c:	1dfd                	addi	s11,s11,-1
1c03305e:	8ff52563          	p.beqimm	a0,-1,1c032148 <pos_libc_prf+0x176>
1c033062:	85de                	mv	a1,s7
1c033064:	03000513          	li	a0,48
1c033068:	ffb049e3          	bgtz	s11,1c03305a <pos_libc_prf+0x1088>
1c03306c:	41490933          	sub	s2,s2,s4
1c033070:	a62ff06f          	j	1c0322d2 <pos_libc_prf+0x300>
1c033074:	4712                	lw	a4,4(sp)
1c033076:	12070fe3          	beqz	a4,1c0339b4 <pos_libc_prf+0x19e2>
1c03307a:	03000793          	li	a5,48
1c03307e:	02f10223          	sb	a5,36(sp)
1c033082:	019467b3          	or	a5,s0,s9
1c033086:	14078ae3          	beqz	a5,1c0339da <pos_libc_prf+0x1a08>
1c03308a:	02510593          	addi	a1,sp,37
1c03308e:	4905                	li	s2,1
1c033090:	86ae                	mv	a3,a1
1c033092:	87b6                	mv	a5,a3
1c033094:	a011                	j	1c033098 <pos_libc_prf+0x10c6>
1c033096:	87b2                	mv	a5,a2
1c033098:	01dc9613          	slli	a2,s9,0x1d
1c03309c:	f8343733          	p.bclr	a4,s0,28,3
1c0330a0:	800d                	srli	s0,s0,0x3
1c0330a2:	8c51                	or	s0,s0,a2
1c0330a4:	03070713          	addi	a4,a4,48
1c0330a8:	003cdc93          	srli	s9,s9,0x3
1c0330ac:	00e78023          	sb	a4,0(a5)
1c0330b0:	01946733          	or	a4,s0,s9
1c0330b4:	00178613          	addi	a2,a5,1
1c0330b8:	ff79                	bnez	a4,1c033096 <pos_libc_prf+0x10c4>
1c0330ba:	00060023          	sb	zero,0(a2)
1c0330be:	8e0d                	sub	a2,a2,a1
1c0330c0:	00f6fc63          	bleu	a5,a3,1c0330d8 <pos_libc_prf+0x1106>
1c0330c4:	0006c583          	lbu	a1,0(a3)
1c0330c8:	0007c703          	lbu	a4,0(a5)
1c0330cc:	feb78fab          	p.sb	a1,-1(a5!)
1c0330d0:	00e680ab          	p.sb	a4,1(a3!)
1c0330d4:	fef6e8e3          	bltu	a3,a5,1c0330c4 <pos_libc_prf+0x10f2>
1c0330d8:	9932                	add	s2,s2,a2
1c0330da:	c202                	sw	zero,4(sp)
1c0330dc:	97aff06f          	j	1c032256 <pos_libc_prf+0x284>
1c0330e0:	111057e3          	blez	a7,1c0339ee <pos_libc_prf+0x1a1c>
1c0330e4:	00279e13          	slli	t3,a5,0x2
1c0330e8:	01e7df13          	srli	t5,a5,0x1e
1c0330ec:	00269e93          	slli	t4,a3,0x2
1c0330f0:	00fe05b3          	add	a1,t3,a5
1c0330f4:	01df6eb3          	or	t4,t5,t4
1c0330f8:	9eb6                	add	t4,t4,a3
1c0330fa:	01c5b6b3          	sltu	a3,a1,t3
1c0330fe:	96f6                	add	a3,a3,t4
1c033100:	01f5d793          	srli	a5,a1,0x1f
1c033104:	0686                	slli	a3,a3,0x1
1c033106:	8edd                	or	a3,a3,a5
1c033108:	01c6d793          	srli	a5,a3,0x1c
1c03310c:	03078793          	addi	a5,a5,48
1c033110:	10000e37          	lui	t3,0x10000
1c033114:	1e7d                	addi	t3,t3,-1
1c033116:	00f30023          	sb	a5,0(t1)
1c03311a:	01c6f6b3          	and	a3,a3,t3
1c03311e:	00159793          	slli	a5,a1,0x1
1c033122:	1618aee3          	p.beqimm	a7,1,1c033a9e <pos_libc_prf+0x1acc>
1c033126:	01e7df13          	srli	t5,a5,0x1e
1c03312a:	00269e93          	slli	t4,a3,0x2
1c03312e:	058e                	slli	a1,a1,0x3
1c033130:	00f58533          	add	a0,a1,a5
1c033134:	01df6eb3          	or	t4,t5,t4
1c033138:	9eb6                	add	t4,t4,a3
1c03313a:	00b536b3          	sltu	a3,a0,a1
1c03313e:	96f6                	add	a3,a3,t4
1c033140:	01f55793          	srli	a5,a0,0x1f
1c033144:	0686                	slli	a3,a3,0x1
1c033146:	8edd                	or	a3,a3,a5
1c033148:	01c6d793          	srli	a5,a3,0x1c
1c03314c:	03078793          	addi	a5,a5,48
1c033150:	00f300a3          	sb	a5,1(t1)
1c033154:	01c6f6b3          	and	a3,a3,t3
1c033158:	00151793          	slli	a5,a0,0x1
1c03315c:	1628a3e3          	p.beqimm	a7,2,1c033ac2 <pos_libc_prf+0x1af0>
1c033160:	01e7df13          	srli	t5,a5,0x1e
1c033164:	00269e93          	slli	t4,a3,0x2
1c033168:	050e                	slli	a0,a0,0x3
1c03316a:	00f505b3          	add	a1,a0,a5
1c03316e:	01df6eb3          	or	t4,t5,t4
1c033172:	9eb6                	add	t4,t4,a3
1c033174:	00a5b6b3          	sltu	a3,a1,a0
1c033178:	96f6                	add	a3,a3,t4
1c03317a:	01f5d793          	srli	a5,a1,0x1f
1c03317e:	0686                	slli	a3,a3,0x1
1c033180:	8edd                	or	a3,a3,a5
1c033182:	01c6d793          	srli	a5,a3,0x1c
1c033186:	03078793          	addi	a5,a5,48
1c03318a:	00f30123          	sb	a5,2(t1)
1c03318e:	ffd88a13          	addi	s4,a7,-3
1c033192:	00159793          	slli	a5,a1,0x1
1c033196:	01c6f6b3          	and	a3,a3,t3
1c03319a:	134050e3          	blez	s4,1c033aba <pos_libc_prf+0x1ae8>
1c03319e:	01e7df13          	srli	t5,a5,0x1e
1c0331a2:	00269e93          	slli	t4,a3,0x2
1c0331a6:	058e                	slli	a1,a1,0x3
1c0331a8:	00f58533          	add	a0,a1,a5
1c0331ac:	01df6eb3          	or	t4,t5,t4
1c0331b0:	9eb6                	add	t4,t4,a3
1c0331b2:	00b536b3          	sltu	a3,a0,a1
1c0331b6:	96f6                	add	a3,a3,t4
1c0331b8:	01f55793          	srli	a5,a0,0x1f
1c0331bc:	0686                	slli	a3,a3,0x1
1c0331be:	8edd                	or	a3,a3,a5
1c0331c0:	01c6d793          	srli	a5,a3,0x1c
1c0331c4:	03078793          	addi	a5,a5,48
1c0331c8:	00f301a3          	sb	a5,3(t1)
1c0331cc:	ffc88a13          	addi	s4,a7,-4
1c0331d0:	00151793          	slli	a5,a0,0x1
1c0331d4:	01c6f6b3          	and	a3,a3,t3
1c0331d8:	134056e3          	blez	s4,1c033b04 <pos_libc_prf+0x1b32>
1c0331dc:	01e7df13          	srli	t5,a5,0x1e
1c0331e0:	00269e93          	slli	t4,a3,0x2
1c0331e4:	050e                	slli	a0,a0,0x3
1c0331e6:	00f505b3          	add	a1,a0,a5
1c0331ea:	01df6eb3          	or	t4,t5,t4
1c0331ee:	9eb6                	add	t4,t4,a3
1c0331f0:	00a5b6b3          	sltu	a3,a1,a0
1c0331f4:	96f6                	add	a3,a3,t4
1c0331f6:	01f5d793          	srli	a5,a1,0x1f
1c0331fa:	0686                	slli	a3,a3,0x1
1c0331fc:	8edd                	or	a3,a3,a5
1c0331fe:	01c6d793          	srli	a5,a3,0x1c
1c033202:	03078793          	addi	a5,a5,48
1c033206:	00f30223          	sb	a5,4(t1)
1c03320a:	ffb88a13          	addi	s4,a7,-5
1c03320e:	00159793          	slli	a5,a1,0x1
1c033212:	01c6f6b3          	and	a3,a3,t3
1c033216:	0f4053e3          	blez	s4,1c033afc <pos_libc_prf+0x1b2a>
1c03321a:	01e7df13          	srli	t5,a5,0x1e
1c03321e:	00269e93          	slli	t4,a3,0x2
1c033222:	058e                	slli	a1,a1,0x3
1c033224:	00f58533          	add	a0,a1,a5
1c033228:	01df6eb3          	or	t4,t5,t4
1c03322c:	9eb6                	add	t4,t4,a3
1c03322e:	00b536b3          	sltu	a3,a0,a1
1c033232:	96f6                	add	a3,a3,t4
1c033234:	01f55793          	srli	a5,a0,0x1f
1c033238:	0686                	slli	a3,a3,0x1
1c03323a:	8edd                	or	a3,a3,a5
1c03323c:	01c6d793          	srli	a5,a3,0x1c
1c033240:	03078793          	addi	a5,a5,48
1c033244:	00f302a3          	sb	a5,5(t1)
1c033248:	ffa88a13          	addi	s4,a7,-6
1c03324c:	00151793          	slli	a5,a0,0x1
1c033250:	01c6f6b3          	and	a3,a3,t3
1c033254:	0b4050e3          	blez	s4,1c033af4 <pos_libc_prf+0x1b22>
1c033258:	01e7df13          	srli	t5,a5,0x1e
1c03325c:	00269e93          	slli	t4,a3,0x2
1c033260:	050e                	slli	a0,a0,0x3
1c033262:	00f505b3          	add	a1,a0,a5
1c033266:	01df6eb3          	or	t4,t5,t4
1c03326a:	9eb6                	add	t4,t4,a3
1c03326c:	00a5b6b3          	sltu	a3,a1,a0
1c033270:	96f6                	add	a3,a3,t4
1c033272:	01f5d793          	srli	a5,a1,0x1f
1c033276:	0686                	slli	a3,a3,0x1
1c033278:	8edd                	or	a3,a3,a5
1c03327a:	01c6d793          	srli	a5,a3,0x1c
1c03327e:	03078793          	addi	a5,a5,48
1c033282:	00f30323          	sb	a5,6(t1)
1c033286:	ff988a13          	addi	s4,a7,-7
1c03328a:	00159793          	slli	a5,a1,0x1
1c03328e:	01c6f6b3          	and	a3,a3,t3
1c033292:	05405de3          	blez	s4,1c033aec <pos_libc_prf+0x1b1a>
1c033296:	058e                	slli	a1,a1,0x3
1c033298:	01e7de93          	srli	t4,a5,0x1e
1c03329c:	00269513          	slli	a0,a3,0x2
1c0332a0:	97ae                	add	a5,a5,a1
1c0332a2:	00aee533          	or	a0,t4,a0
1c0332a6:	9536                	add	a0,a0,a3
1c0332a8:	00b7b6b3          	sltu	a3,a5,a1
1c0332ac:	96aa                	add	a3,a3,a0
1c0332ae:	01f7d593          	srli	a1,a5,0x1f
1c0332b2:	0686                	slli	a3,a3,0x1
1c0332b4:	8ecd                	or	a3,a3,a1
1c0332b6:	01c6d593          	srli	a1,a3,0x1c
1c0332ba:	03058593          	addi	a1,a1,48
1c0332be:	0786                	slli	a5,a5,0x1
1c0332c0:	00b303a3          	sb	a1,7(t1)
1c0332c4:	ff888a13          	addi	s4,a7,-8
1c0332c8:	85be                	mv	a1,a5
1c0332ca:	01c6f6b3          	and	a3,a3,t3
1c0332ce:	01405be3          	blez	s4,1c033ae4 <pos_libc_prf+0x1b12>
1c0332d2:	078a                	slli	a5,a5,0x2
1c0332d4:	01e5de13          	srli	t3,a1,0x1e
1c0332d8:	00269513          	slli	a0,a3,0x2
1c0332dc:	95be                	add	a1,a1,a5
1c0332de:	00ae6533          	or	a0,t3,a0
1c0332e2:	9536                	add	a0,a0,a3
1c0332e4:	00f5b6b3          	sltu	a3,a1,a5
1c0332e8:	96aa                	add	a3,a3,a0
1c0332ea:	01f5d793          	srli	a5,a1,0x1f
1c0332ee:	0686                	slli	a3,a3,0x1
1c0332f0:	8edd                	or	a3,a3,a5
1c0332f2:	01c6d793          	srli	a5,a3,0x1c
1c0332f6:	03078793          	addi	a5,a5,48
1c0332fa:	10000e37          	lui	t3,0x10000
1c0332fe:	1e7d                	addi	t3,t3,-1
1c033300:	00f30423          	sb	a5,8(t1)
1c033304:	ff788a13          	addi	s4,a7,-9
1c033308:	00159793          	slli	a5,a1,0x1
1c03330c:	01c6f6b3          	and	a3,a3,t3
1c033310:	7d405663          	blez	s4,1c033adc <pos_libc_prf+0x1b0a>
1c033314:	01e7df13          	srli	t5,a5,0x1e
1c033318:	00269e93          	slli	t4,a3,0x2
1c03331c:	058e                	slli	a1,a1,0x3
1c03331e:	00f58533          	add	a0,a1,a5
1c033322:	01df6eb3          	or	t4,t5,t4
1c033326:	9eb6                	add	t4,t4,a3
1c033328:	00b536b3          	sltu	a3,a0,a1
1c03332c:	96f6                	add	a3,a3,t4
1c03332e:	01f55793          	srli	a5,a0,0x1f
1c033332:	0686                	slli	a3,a3,0x1
1c033334:	8edd                	or	a3,a3,a5
1c033336:	01c6d793          	srli	a5,a3,0x1c
1c03333a:	03078793          	addi	a5,a5,48
1c03333e:	00f304a3          	sb	a5,9(t1)
1c033342:	ff688a13          	addi	s4,a7,-10
1c033346:	00151793          	slli	a5,a0,0x1
1c03334a:	01c6f6b3          	and	a3,a3,t3
1c03334e:	79405363          	blez	s4,1c033ad4 <pos_libc_prf+0x1b02>
1c033352:	01e7df13          	srli	t5,a5,0x1e
1c033356:	00269e93          	slli	t4,a3,0x2
1c03335a:	050e                	slli	a0,a0,0x3
1c03335c:	00f505b3          	add	a1,a0,a5
1c033360:	01df6eb3          	or	t4,t5,t4
1c033364:	9eb6                	add	t4,t4,a3
1c033366:	00a5b6b3          	sltu	a3,a1,a0
1c03336a:	96f6                	add	a3,a3,t4
1c03336c:	01f5d793          	srli	a5,a1,0x1f
1c033370:	0686                	slli	a3,a3,0x1
1c033372:	8edd                	or	a3,a3,a5
1c033374:	01c6d793          	srli	a5,a3,0x1c
1c033378:	03078793          	addi	a5,a5,48
1c03337c:	00f30523          	sb	a5,10(t1)
1c033380:	ff588a13          	addi	s4,a7,-11
1c033384:	00159793          	slli	a5,a1,0x1
1c033388:	01c6f6b3          	and	a3,a3,t3
1c03338c:	75405063          	blez	s4,1c033acc <pos_libc_prf+0x1afa>
1c033390:	01e7df13          	srli	t5,a5,0x1e
1c033394:	00269e93          	slli	t4,a3,0x2
1c033398:	058e                	slli	a1,a1,0x3
1c03339a:	00f58533          	add	a0,a1,a5
1c03339e:	01df6eb3          	or	t4,t5,t4
1c0333a2:	9eb6                	add	t4,t4,a3
1c0333a4:	00b536b3          	sltu	a3,a0,a1
1c0333a8:	96f6                	add	a3,a3,t4
1c0333aa:	01f55793          	srli	a5,a0,0x1f
1c0333ae:	0686                	slli	a3,a3,0x1
1c0333b0:	8edd                	or	a3,a3,a5
1c0333b2:	01c6d793          	srli	a5,a3,0x1c
1c0333b6:	03078793          	addi	a5,a5,48
1c0333ba:	00f305a3          	sb	a5,11(t1)
1c0333be:	ff488a13          	addi	s4,a7,-12
1c0333c2:	00151793          	slli	a5,a0,0x1
1c0333c6:	01c6f6b3          	and	a3,a3,t3
1c0333ca:	6f405163          	blez	s4,1c033aac <pos_libc_prf+0x1ada>
1c0333ce:	050e                	slli	a0,a0,0x3
1c0333d0:	01e7de93          	srli	t4,a5,0x1e
1c0333d4:	00269813          	slli	a6,a3,0x2
1c0333d8:	00f505b3          	add	a1,a0,a5
1c0333dc:	010ee833          	or	a6,t4,a6
1c0333e0:	9836                	add	a6,a6,a3
1c0333e2:	00a5b6b3          	sltu	a3,a1,a0
1c0333e6:	96c2                	add	a3,a3,a6
1c0333e8:	01f5d793          	srli	a5,a1,0x1f
1c0333ec:	0686                	slli	a3,a3,0x1
1c0333ee:	8edd                	or	a3,a3,a5
1c0333f0:	01c6d793          	srli	a5,a3,0x1c
1c0333f4:	03078793          	addi	a5,a5,48
1c0333f8:	00f30623          	sb	a5,12(t1)
1c0333fc:	ff388a13          	addi	s4,a7,-13
1c033400:	00159793          	slli	a5,a1,0x1
1c033404:	01c6f6b3          	and	a3,a3,t3
1c033408:	00d30513          	addi	a0,t1,13
1c03340c:	480d                	li	a6,3
1c03340e:	0d405163          	blez	s4,1c0334d0 <pos_libc_prf+0x14fe>
1c033412:	01e7de93          	srli	t4,a5,0x1e
1c033416:	00269813          	slli	a6,a3,0x2
1c03341a:	058e                	slli	a1,a1,0x3
1c03341c:	00f58533          	add	a0,a1,a5
1c033420:	010ee833          	or	a6,t4,a6
1c033424:	9836                	add	a6,a6,a3
1c033426:	00b536b3          	sltu	a3,a0,a1
1c03342a:	96c2                	add	a3,a3,a6
1c03342c:	01f55793          	srli	a5,a0,0x1f
1c033430:	0686                	slli	a3,a3,0x1
1c033432:	8edd                	or	a3,a3,a5
1c033434:	01c6d793          	srli	a5,a3,0x1c
1c033438:	03078793          	addi	a5,a5,48
1c03343c:	00f306a3          	sb	a5,13(t1)
1c033440:	ff288a13          	addi	s4,a7,-14
1c033444:	00151793          	slli	a5,a0,0x1
1c033448:	01c6f6b3          	and	a3,a3,t3
1c03344c:	65405c63          	blez	s4,1c033aa4 <pos_libc_prf+0x1ad2>
1c033450:	050e                	slli	a0,a0,0x3
1c033452:	01e7de93          	srli	t4,a5,0x1e
1c033456:	00269813          	slli	a6,a3,0x2
1c03345a:	00f505b3          	add	a1,a0,a5
1c03345e:	010ee833          	or	a6,t4,a6
1c033462:	9836                	add	a6,a6,a3
1c033464:	00a5b6b3          	sltu	a3,a1,a0
1c033468:	96c2                	add	a3,a3,a6
1c03346a:	01f5d793          	srli	a5,a1,0x1f
1c03346e:	0686                	slli	a3,a3,0x1
1c033470:	8edd                	or	a3,a3,a5
1c033472:	01c6d793          	srli	a5,a3,0x1c
1c033476:	03078793          	addi	a5,a5,48
1c03347a:	00f30723          	sb	a5,14(t1)
1c03347e:	ff188a13          	addi	s4,a7,-15
1c033482:	00159793          	slli	a5,a1,0x1
1c033486:	01c6f6b3          	and	a3,a3,t3
1c03348a:	00f30513          	addi	a0,t1,15
1c03348e:	4805                	li	a6,1
1c033490:	05405063          	blez	s4,1c0334d0 <pos_libc_prf+0x14fe>
1c033494:	01e7d813          	srli	a6,a5,0x1e
1c033498:	058e                	slli	a1,a1,0x3
1c03349a:	00269513          	slli	a0,a3,0x2
1c03349e:	97ae                	add	a5,a5,a1
1c0334a0:	00a86533          	or	a0,a6,a0
1c0334a4:	9536                	add	a0,a0,a3
1c0334a6:	00b7b6b3          	sltu	a3,a5,a1
1c0334aa:	96aa                	add	a3,a3,a0
1c0334ac:	01f7d593          	srli	a1,a5,0x1f
1c0334b0:	0686                	slli	a3,a3,0x1
1c0334b2:	8ecd                	or	a3,a3,a1
1c0334b4:	01c6d593          	srli	a1,a3,0x1c
1c0334b8:	03058593          	addi	a1,a1,48
1c0334bc:	01030513          	addi	a0,t1,16
1c0334c0:	0786                	slli	a5,a5,0x1
1c0334c2:	01c6f6b3          	and	a3,a3,t3
1c0334c6:	00b307a3          	sb	a1,15(t1)
1c0334ca:	ff088a13          	addi	s4,a7,-16
1c0334ce:	4801                	li	a6,0
1c0334d0:	4712                	lw	a4,4(sp)
1c0334d2:	4e070663          	beqz	a4,1c0339be <pos_libc_prf+0x19ec>
1c0334d6:	02e00893          	li	a7,46
1c0334da:	01150023          	sb	a7,0(a0)
1c0334de:	8326                	mv	t1,s1
1c0334e0:	cc02                	sw	zero,24(sp)
1c0334e2:	00150593          	addi	a1,a0,1
1c0334e6:	4881                	li	a7,0
1c0334e8:	62605263          	blez	t1,1c033b0c <pos_libc_prf+0x1b3a>
1c0334ec:	62080063          	beqz	a6,1c033b0c <pos_libc_prf+0x1b3a>
1c0334f0:	00279513          	slli	a0,a5,0x2
1c0334f4:	01e7de93          	srli	t4,a5,0x1e
1c0334f8:	00269e13          	slli	t3,a3,0x2
1c0334fc:	97aa                	add	a5,a5,a0
1c0334fe:	01ceee33          	or	t3,t4,t3
1c033502:	96f2                	add	a3,a3,t3
1c033504:	00a7beb3          	sltu	t4,a5,a0
1c033508:	9eb6                	add	t4,t4,a3
1c03350a:	0e86                	slli	t4,t4,0x1
1c03350c:	01f7d693          	srli	a3,a5,0x1f
1c033510:	01d6eeb3          	or	t4,a3,t4
1c033514:	01ced693          	srli	a3,t4,0x1c
1c033518:	03068693          	addi	a3,a3,48
1c03351c:	00d58023          	sb	a3,0(a1)
1c033520:	fff30493          	addi	s1,t1,-1
1c033524:	00158513          	addi	a0,a1,1
1c033528:	00179693          	slli	a3,a5,0x1
1c03352c:	42048263          	beqz	s1,1c033950 <pos_libc_prf+0x197e>
1c033530:	42182063          	p.beqimm	a6,1,1c033950 <pos_libc_prf+0x197e>
1c033534:	10000e37          	lui	t3,0x10000
1c033538:	1e7d                	addi	t3,t3,-1
1c03353a:	01cefeb3          	and	t4,t4,t3
1c03353e:	078e                	slli	a5,a5,0x3
1c033540:	01e6df13          	srli	t5,a3,0x1e
1c033544:	002e9513          	slli	a0,t4,0x2
1c033548:	96be                	add	a3,a3,a5
1c03354a:	00af6533          	or	a0,t5,a0
1c03354e:	9eaa                	add	t4,t4,a0
1c033550:	00f6b7b3          	sltu	a5,a3,a5
1c033554:	97f6                	add	a5,a5,t4
1c033556:	01f6d513          	srli	a0,a3,0x1f
1c03355a:	0786                	slli	a5,a5,0x1
1c03355c:	8fc9                	or	a5,a5,a0
1c03355e:	01c7d513          	srli	a0,a5,0x1c
1c033562:	03050513          	addi	a0,a0,48
1c033566:	00a580a3          	sb	a0,1(a1)
1c03356a:	ffe30493          	addi	s1,t1,-2
1c03356e:	00258513          	addi	a0,a1,2
1c033572:	00169e93          	slli	t4,a3,0x1
1c033576:	01c7f7b3          	and	a5,a5,t3
1c03357a:	3c048b63          	beqz	s1,1c033950 <pos_libc_prf+0x197e>
1c03357e:	3c282963          	p.beqimm	a6,2,1c033950 <pos_libc_prf+0x197e>
1c033582:	01eedf13          	srli	t5,t4,0x1e
1c033586:	068e                	slli	a3,a3,0x3
1c033588:	00279513          	slli	a0,a5,0x2
1c03358c:	9eb6                	add	t4,t4,a3
1c03358e:	00af6533          	or	a0,t5,a0
1c033592:	00deb6b3          	sltu	a3,t4,a3
1c033596:	97aa                	add	a5,a5,a0
1c033598:	97b6                	add	a5,a5,a3
1c03359a:	0786                	slli	a5,a5,0x1
1c03359c:	01fed693          	srli	a3,t4,0x1f
1c0335a0:	8fd5                	or	a5,a5,a3
1c0335a2:	01c7d693          	srli	a3,a5,0x1c
1c0335a6:	03068693          	addi	a3,a3,48
1c0335aa:	00d58123          	sb	a3,2(a1)
1c0335ae:	ffd30493          	addi	s1,t1,-3
1c0335b2:	00358513          	addi	a0,a1,3
1c0335b6:	001e9693          	slli	a3,t4,0x1
1c0335ba:	01c7ff33          	and	t5,a5,t3
1c0335be:	38905963          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c0335c2:	38382763          	p.beqimm	a6,3,1c033950 <pos_libc_prf+0x197e>
1c0335c6:	003e9513          	slli	a0,t4,0x3
1c0335ca:	01e6d793          	srli	a5,a3,0x1e
1c0335ce:	002f1e93          	slli	t4,t5,0x2
1c0335d2:	96aa                	add	a3,a3,a0
1c0335d4:	01d7eeb3          	or	t4,a5,t4
1c0335d8:	9efa                	add	t4,t4,t5
1c0335da:	00a6b7b3          	sltu	a5,a3,a0
1c0335de:	97f6                	add	a5,a5,t4
1c0335e0:	01f6d513          	srli	a0,a3,0x1f
1c0335e4:	0786                	slli	a5,a5,0x1
1c0335e6:	8fc9                	or	a5,a5,a0
1c0335e8:	01c7d513          	srli	a0,a5,0x1c
1c0335ec:	03050513          	addi	a0,a0,48
1c0335f0:	00a581a3          	sb	a0,3(a1)
1c0335f4:	ffc30493          	addi	s1,t1,-4
1c0335f8:	00458513          	addi	a0,a1,4
1c0335fc:	00169e93          	slli	t4,a3,0x1
1c033600:	01c7fe33          	and	t3,a5,t3
1c033604:	34905663          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c033608:	34482463          	p.beqimm	a6,4,1c033950 <pos_libc_prf+0x197e>
1c03360c:	068e                	slli	a3,a3,0x3
1c03360e:	01eed793          	srli	a5,t4,0x1e
1c033612:	002e1513          	slli	a0,t3,0x2
1c033616:	9eb6                	add	t4,t4,a3
1c033618:	8d5d                	or	a0,a0,a5
1c03361a:	9e2a                	add	t3,t3,a0
1c03361c:	00deb7b3          	sltu	a5,t4,a3
1c033620:	97f2                	add	a5,a5,t3
1c033622:	01fed693          	srli	a3,t4,0x1f
1c033626:	0786                	slli	a5,a5,0x1
1c033628:	8fd5                	or	a5,a5,a3
1c03362a:	01c7d693          	srli	a3,a5,0x1c
1c03362e:	03068693          	addi	a3,a3,48
1c033632:	00d58223          	sb	a3,4(a1)
1c033636:	ffb30493          	addi	s1,t1,-5
1c03363a:	00558513          	addi	a0,a1,5
1c03363e:	001e9693          	slli	a3,t4,0x1
1c033642:	30905763          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c033646:	30582563          	p.beqimm	a6,5,1c033950 <pos_libc_prf+0x197e>
1c03364a:	10000e37          	lui	t3,0x10000
1c03364e:	1e7d                	addi	t3,t3,-1
1c033650:	01c7f7b3          	and	a5,a5,t3
1c033654:	01e6de93          	srli	t4,a3,0x1e
1c033658:	00269513          	slli	a0,a3,0x2
1c03365c:	00279f13          	slli	t5,a5,0x2
1c033660:	96aa                	add	a3,a3,a0
1c033662:	01eeef33          	or	t5,t4,t5
1c033666:	00a6b533          	sltu	a0,a3,a0
1c03366a:	97fa                	add	a5,a5,t5
1c03366c:	97aa                	add	a5,a5,a0
1c03366e:	00179e93          	slli	t4,a5,0x1
1c033672:	01f6d513          	srli	a0,a3,0x1f
1c033676:	01d56eb3          	or	t4,a0,t4
1c03367a:	01ced793          	srli	a5,t4,0x1c
1c03367e:	03078793          	addi	a5,a5,48
1c033682:	00f582a3          	sb	a5,5(a1)
1c033686:	ffa30493          	addi	s1,t1,-6
1c03368a:	00658513          	addi	a0,a1,6
1c03368e:	00169793          	slli	a5,a3,0x1
1c033692:	01cefeb3          	and	t4,t4,t3
1c033696:	2a905d63          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c03369a:	2a682b63          	p.beqimm	a6,6,1c033950 <pos_libc_prf+0x197e>
1c03369e:	068e                	slli	a3,a3,0x3
1c0336a0:	01e7df13          	srli	t5,a5,0x1e
1c0336a4:	002e9513          	slli	a0,t4,0x2
1c0336a8:	97b6                	add	a5,a5,a3
1c0336aa:	00af6533          	or	a0,t5,a0
1c0336ae:	9eaa                	add	t4,t4,a0
1c0336b0:	00d7b6b3          	sltu	a3,a5,a3
1c0336b4:	96f6                	add	a3,a3,t4
1c0336b6:	01f7d513          	srli	a0,a5,0x1f
1c0336ba:	00169e93          	slli	t4,a3,0x1
1c0336be:	01d56eb3          	or	t4,a0,t4
1c0336c2:	01ced693          	srli	a3,t4,0x1c
1c0336c6:	03068693          	addi	a3,a3,48
1c0336ca:	00d58323          	sb	a3,6(a1)
1c0336ce:	ff930493          	addi	s1,t1,-7
1c0336d2:	00758513          	addi	a0,a1,7
1c0336d6:	00179693          	slli	a3,a5,0x1
1c0336da:	01cefeb3          	and	t4,t4,t3
1c0336de:	26905963          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c0336e2:	26782763          	p.beqimm	a6,7,1c033950 <pos_libc_prf+0x197e>
1c0336e6:	078e                	slli	a5,a5,0x3
1c0336e8:	01e6df13          	srli	t5,a3,0x1e
1c0336ec:	002e9513          	slli	a0,t4,0x2
1c0336f0:	96be                	add	a3,a3,a5
1c0336f2:	00af6533          	or	a0,t5,a0
1c0336f6:	9eaa                	add	t4,t4,a0
1c0336f8:	00f6b7b3          	sltu	a5,a3,a5
1c0336fc:	97f6                	add	a5,a5,t4
1c0336fe:	01f6d513          	srli	a0,a3,0x1f
1c033702:	00179e93          	slli	t4,a5,0x1
1c033706:	01d56eb3          	or	t4,a0,t4
1c03370a:	01ced793          	srli	a5,t4,0x1c
1c03370e:	03078793          	addi	a5,a5,48
1c033712:	00f583a3          	sb	a5,7(a1)
1c033716:	ff830493          	addi	s1,t1,-8
1c03371a:	00858513          	addi	a0,a1,8
1c03371e:	00169793          	slli	a5,a3,0x1
1c033722:	01cefeb3          	and	t4,t4,t3
1c033726:	22905563          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c03372a:	22882363          	p.beqimm	a6,8,1c033950 <pos_libc_prf+0x197e>
1c03372e:	01e7df13          	srli	t5,a5,0x1e
1c033732:	068e                	slli	a3,a3,0x3
1c033734:	002e9513          	slli	a0,t4,0x2
1c033738:	97b6                	add	a5,a5,a3
1c03373a:	00af6533          	or	a0,t5,a0
1c03373e:	9eaa                	add	t4,t4,a0
1c033740:	00d7b6b3          	sltu	a3,a5,a3
1c033744:	96f6                	add	a3,a3,t4
1c033746:	01f7d513          	srli	a0,a5,0x1f
1c03374a:	0686                	slli	a3,a3,0x1
1c03374c:	8ec9                	or	a3,a3,a0
1c03374e:	01c6d513          	srli	a0,a3,0x1c
1c033752:	03050513          	addi	a0,a0,48
1c033756:	00a58423          	sb	a0,8(a1)
1c03375a:	ff730493          	addi	s1,t1,-9
1c03375e:	00958513          	addi	a0,a1,9
1c033762:	00179f13          	slli	t5,a5,0x1
1c033766:	01c6feb3          	and	t4,a3,t3
1c03376a:	1e905363          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c03376e:	1e982163          	p.beqimm	a6,9,1c033950 <pos_libc_prf+0x197e>
1c033772:	078e                	slli	a5,a5,0x3
1c033774:	01ef5293          	srli	t0,t5,0x1e
1c033778:	002e9513          	slli	a0,t4,0x2
1c03377c:	01e786b3          	add	a3,a5,t5
1c033780:	00a2e533          	or	a0,t0,a0
1c033784:	00f6b7b3          	sltu	a5,a3,a5
1c033788:	9576                	add	a0,a0,t4
1c03378a:	97aa                	add	a5,a5,a0
1c03378c:	0786                	slli	a5,a5,0x1
1c03378e:	01f6d513          	srli	a0,a3,0x1f
1c033792:	8fc9                	or	a5,a5,a0
1c033794:	01c7d513          	srli	a0,a5,0x1c
1c033798:	03050513          	addi	a0,a0,48
1c03379c:	00a584a3          	sb	a0,9(a1)
1c0337a0:	ff630493          	addi	s1,t1,-10
1c0337a4:	00a58513          	addi	a0,a1,10
1c0337a8:	0686                	slli	a3,a3,0x1
1c0337aa:	01c7f7b3          	and	a5,a5,t3
1c0337ae:	1a905163          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c0337b2:	18a82f63          	p.beqimm	a6,10,1c033950 <pos_libc_prf+0x197e>
1c0337b6:	01e6de93          	srli	t4,a3,0x1e
1c0337ba:	00269513          	slli	a0,a3,0x2
1c0337be:	00279e13          	slli	t3,a5,0x2
1c0337c2:	96aa                	add	a3,a3,a0
1c0337c4:	01ceee33          	or	t3,t4,t3
1c0337c8:	00a6b533          	sltu	a0,a3,a0
1c0337cc:	97f2                	add	a5,a5,t3
1c0337ce:	97aa                	add	a5,a5,a0
1c0337d0:	00179e93          	slli	t4,a5,0x1
1c0337d4:	01f6d513          	srli	a0,a3,0x1f
1c0337d8:	01d56eb3          	or	t4,a0,t4
1c0337dc:	01ced793          	srli	a5,t4,0x1c
1c0337e0:	03078793          	addi	a5,a5,48
1c0337e4:	10000e37          	lui	t3,0x10000
1c0337e8:	1e7d                	addi	t3,t3,-1
1c0337ea:	00f58523          	sb	a5,10(a1)
1c0337ee:	ff530493          	addi	s1,t1,-11
1c0337f2:	00b58513          	addi	a0,a1,11
1c0337f6:	00169793          	slli	a5,a3,0x1
1c0337fa:	01cefeb3          	and	t4,t4,t3
1c0337fe:	14905963          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c033802:	14b82763          	p.beqimm	a6,11,1c033950 <pos_libc_prf+0x197e>
1c033806:	068e                	slli	a3,a3,0x3
1c033808:	01e7df13          	srli	t5,a5,0x1e
1c03380c:	002e9513          	slli	a0,t4,0x2
1c033810:	97b6                	add	a5,a5,a3
1c033812:	00af6533          	or	a0,t5,a0
1c033816:	9eaa                	add	t4,t4,a0
1c033818:	00d7b6b3          	sltu	a3,a5,a3
1c03381c:	96f6                	add	a3,a3,t4
1c03381e:	01f7d513          	srli	a0,a5,0x1f
1c033822:	0686                	slli	a3,a3,0x1
1c033824:	8ec9                	or	a3,a3,a0
1c033826:	01c6d513          	srli	a0,a3,0x1c
1c03382a:	03050513          	addi	a0,a0,48
1c03382e:	00a585a3          	sb	a0,11(a1)
1c033832:	ff430493          	addi	s1,t1,-12
1c033836:	00c58513          	addi	a0,a1,12
1c03383a:	00179e93          	slli	t4,a5,0x1
1c03383e:	10905963          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c033842:	10c82763          	p.beqimm	a6,12,1c033950 <pos_libc_prf+0x197e>
1c033846:	01c6f6b3          	and	a3,a3,t3
1c03384a:	01eedf13          	srli	t5,t4,0x1e
1c03384e:	078e                	slli	a5,a5,0x3
1c033850:	00269513          	slli	a0,a3,0x2
1c033854:	9ebe                	add	t4,t4,a5
1c033856:	00af6533          	or	a0,t5,a0
1c03385a:	96aa                	add	a3,a3,a0
1c03385c:	00feb7b3          	sltu	a5,t4,a5
1c033860:	97b6                	add	a5,a5,a3
1c033862:	01fed513          	srli	a0,t4,0x1f
1c033866:	00179693          	slli	a3,a5,0x1
1c03386a:	8ec9                	or	a3,a3,a0
1c03386c:	01c6d793          	srli	a5,a3,0x1c
1c033870:	03078793          	addi	a5,a5,48
1c033874:	00f58623          	sb	a5,12(a1)
1c033878:	ff330493          	addi	s1,t1,-13
1c03387c:	00d58513          	addi	a0,a1,13
1c033880:	001e9793          	slli	a5,t4,0x1
1c033884:	01c6ff33          	and	t5,a3,t3
1c033888:	0c905463          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c03388c:	0cd82263          	p.beqimm	a6,13,1c033950 <pos_libc_prf+0x197e>
1c033890:	003e9693          	slli	a3,t4,0x3
1c033894:	002f1513          	slli	a0,t5,0x2
1c033898:	01e7de93          	srli	t4,a5,0x1e
1c03389c:	00aee533          	or	a0,t4,a0
1c0338a0:	97b6                	add	a5,a5,a3
1c0338a2:	957a                	add	a0,a0,t5
1c0338a4:	00d7b6b3          	sltu	a3,a5,a3
1c0338a8:	96aa                	add	a3,a3,a0
1c0338aa:	0686                	slli	a3,a3,0x1
1c0338ac:	01f7d513          	srli	a0,a5,0x1f
1c0338b0:	8ec9                	or	a3,a3,a0
1c0338b2:	01c6d513          	srli	a0,a3,0x1c
1c0338b6:	03050513          	addi	a0,a0,48
1c0338ba:	00a586a3          	sb	a0,13(a1)
1c0338be:	ff230493          	addi	s1,t1,-14
1c0338c2:	00e58513          	addi	a0,a1,14
1c0338c6:	00179f13          	slli	t5,a5,0x1
1c0338ca:	01c6feb3          	and	t4,a3,t3
1c0338ce:	08905163          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c0338d2:	06e82f63          	p.beqimm	a6,14,1c033950 <pos_libc_prf+0x197e>
1c0338d6:	078e                	slli	a5,a5,0x3
1c0338d8:	002e9513          	slli	a0,t4,0x2
1c0338dc:	01ef5293          	srli	t0,t5,0x1e
1c0338e0:	01e786b3          	add	a3,a5,t5
1c0338e4:	00a2e533          	or	a0,t0,a0
1c0338e8:	9576                	add	a0,a0,t4
1c0338ea:	00f6b7b3          	sltu	a5,a3,a5
1c0338ee:	97aa                	add	a5,a5,a0
1c0338f0:	00179e93          	slli	t4,a5,0x1
1c0338f4:	01f6d513          	srli	a0,a3,0x1f
1c0338f8:	01d56eb3          	or	t4,a0,t4
1c0338fc:	01ced793          	srli	a5,t4,0x1c
1c033900:	03078793          	addi	a5,a5,48
1c033904:	00f58723          	sb	a5,14(a1)
1c033908:	ff130493          	addi	s1,t1,-15
1c03390c:	00f58513          	addi	a0,a1,15
1c033910:	00169793          	slli	a5,a3,0x1
1c033914:	01cefe33          	and	t3,t4,t3
1c033918:	02905c63          	blez	s1,1c033950 <pos_libc_prf+0x197e>
1c03391c:	46c1                	li	a3,16
1c03391e:	02d81963          	bne	a6,a3,1c033950 <pos_libc_prf+0x197e>
1c033922:	00279513          	slli	a0,a5,0x2
1c033926:	01e7d813          	srli	a6,a5,0x1e
1c03392a:	002e1693          	slli	a3,t3,0x2
1c03392e:	97aa                	add	a5,a5,a0
1c033930:	00d866b3          	or	a3,a6,a3
1c033934:	00a7b7b3          	sltu	a5,a5,a0
1c033938:	9e36                	add	t3,t3,a3
1c03393a:	97f2                	add	a5,a5,t3
1c03393c:	0786                	slli	a5,a5,0x1
1c03393e:	83f1                	srli	a5,a5,0x1c
1c033940:	03078793          	addi	a5,a5,48
1c033944:	01058513          	addi	a0,a1,16
1c033948:	00f587a3          	sb	a5,15(a1)
1c03394c:	ff030493          	addi	s1,t1,-16
1c033950:	47e2                	lw	a5,24(sp)
1c033952:	014785b3          	add	a1,a5,s4
1c033956:	9c0f9b63          	bnez	t6,1c032b2c <pos_libc_prf+0xb5a>
1c03395a:	95a6                	add	a1,a1,s1
1c03395c:	8ca6                	mv	s9,s1
1c03395e:	9faff06f          	j	1c032b58 <pos_libc_prf+0xb86>
1c033962:	02d00793          	li	a5,45
1c033966:	411008b3          	neg	a7,a7
1c03396a:	00f500a3          	sb	a5,1(a0)
1c03396e:	db4ff06f          	j	1c032f22 <pos_libc_prf+0xf50>
1c033972:	41fad793          	srai	a5,s5,0x1f
1c033976:	0156a023          	sw	s5,0(a3)
1c03397a:	c2dc                	sw	a5,4(a3)
1c03397c:	e94fe06f          	j	1c032010 <pos_libc_prf+0x3e>
1c033980:	4a62                	lw	s4,24(sp)
1c033982:	a039                	j	1c033990 <pos_libc_prf+0x19be>
1c033984:	9982                	jalr	s3
1c033986:	1a7d                	addi	s4,s4,-1
1c033988:	01f53463          	p.bneimm	a0,-1,1c033990 <pos_libc_prf+0x19be>
1c03398c:	fbcfe06f          	j	1c032148 <pos_libc_prf+0x176>
1c033990:	85de                	mv	a1,s7
1c033992:	03000513          	li	a0,48
1c033996:	ff4047e3          	bgtz	s4,1c033984 <pos_libc_prf+0x19b2>
1c03399a:	4762                	lw	a4,24(sp)
1c03399c:	40e90933          	sub	s2,s2,a4
1c0339a0:	939fe06f          	j	1c0322d8 <pos_libc_prf+0x306>
1c0339a4:	4741                	li	a4,16
1c0339a6:	04e4cf33          	p.min	t5,s1,a4
1c0339aa:	1f7d                	addi	t5,t5,-1
1c0339ac:	84b6                	mv	s1,a3
1c0339ae:	4f81                	li	t6,0
1c0339b0:	c67fe06f          	j	1c032616 <pos_libc_prf+0x644>
1c0339b4:	104c                	addi	a1,sp,36
1c0339b6:	4901                	li	s2,0
1c0339b8:	86ae                	mv	a3,a1
1c0339ba:	ed8ff06f          	j	1c033092 <pos_libc_prf+0x10c0>
1c0339be:	0c904463          	bgtz	s1,1c033a86 <pos_libc_prf+0x1ab4>
1c0339c2:	4881                	li	a7,0
1c0339c4:	cc02                	sw	zero,24(sp)
1c0339c6:	b769                	j	1c033950 <pos_libc_prf+0x197e>
1c0339c8:	4712                	lw	a4,4(sp)
1c0339ca:	4f81                	li	t6,0
1c0339cc:	e319                	bnez	a4,1c0339d2 <pos_libc_prf+0x1a00>
1c0339ce:	c3dfe06f          	j	1c03260a <pos_libc_prf+0x638>
1c0339d2:	4f01                	li	t5,0
1c0339d4:	4f81                	li	t6,0
1c0339d6:	c41fe06f          	j	1c032616 <pos_libc_prf+0x644>
1c0339da:	020102a3          	sb	zero,37(sp)
1c0339de:	c202                	sw	zero,4(sp)
1c0339e0:	4905                	li	s2,1
1c0339e2:	875fe06f          	j	1c032256 <pos_libc_prf+0x284>
1c0339e6:	06600d93          	li	s11,102
1c0339ea:	d1cff06f          	j	1c032f06 <pos_libc_prf+0xf34>
1c0339ee:	03000593          	li	a1,48
1c0339f2:	4712                	lw	a4,4(sp)
1c0339f4:	00b30023          	sb	a1,0(t1)
1c0339f8:	e335                	bnez	a4,1c033a5c <pos_libc_prf+0x1a8a>
1c0339fa:	06905b63          	blez	s1,1c033a70 <pos_libc_prf+0x1a9e>
1c0339fe:	02e00593          	li	a1,46
1c033a02:	00b300a3          	sb	a1,1(t1)
1c033a06:	00230513          	addi	a0,t1,2
1c033a0a:	4841                	li	a6,16
1c033a0c:	08088363          	beqz	a7,1c033a92 <pos_libc_prf+0x1ac0>
1c033a10:	41100733          	neg	a4,a7
1c033a14:	04974733          	p.min	a4,a4,s1
1c033a18:	cc3a                	sw	a4,24(sp)
1c033a1a:	40e48333          	sub	t1,s1,a4
1c033a1e:	85aa                	mv	a1,a0
1c033a20:	4a01                	li	s4,0
1c033a22:	4841                	li	a6,16
1c033a24:	ac6044e3          	bgtz	t1,1c0334ec <pos_libc_prf+0x151a>
1c033a28:	a0d5                	j	1c033b0c <pos_libc_prf+0x1b3a>
1c033a2a:	4a72                	lw	s4,28(sp)
1c033a2c:	de4fe06f          	j	1c032010 <pos_libc_prf+0x3e>
1c033a30:	6799                	lui	a5,0x6
1c033a32:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c033a36:	00f31023          	sh	a5,0(t1)
1c033a3a:	06e00793          	li	a5,110
1c033a3e:	00f30123          	sb	a5,2(t1)
1c033a42:	c38ff06f          	j	1c032e7a <pos_libc_prf+0xea8>
1c033a46:	679d                	lui	a5,0x7
1c033a48:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c033a4c:	00f31023          	sh	a5,0(t1)
1c033a50:	06600793          	li	a5,102
1c033a54:	00f30123          	sb	a5,2(t1)
1c033a58:	c22ff06f          	j	1c032e7a <pos_libc_prf+0xea8>
1c033a5c:	02e00593          	li	a1,46
1c033a60:	00b300a3          	sb	a1,1(t1)
1c033a64:	00230513          	addi	a0,t1,2
1c033a68:	00088763          	beqz	a7,1c033a76 <pos_libc_prf+0x1aa4>
1c033a6c:	fa9042e3          	bgtz	s1,1c033a10 <pos_libc_prf+0x1a3e>
1c033a70:	4a01                	li	s4,0
1c033a72:	cc02                	sw	zero,24(sp)
1c033a74:	bdf1                	j	1c033950 <pos_libc_prf+0x197e>
1c033a76:	fe905de3          	blez	s1,1c033a70 <pos_libc_prf+0x1a9e>
1c033a7a:	85aa                	mv	a1,a0
1c033a7c:	4a01                	li	s4,0
1c033a7e:	cc02                	sw	zero,24(sp)
1c033a80:	8326                	mv	t1,s1
1c033a82:	4841                	li	a6,16
1c033a84:	b4b5                	j	1c0334f0 <pos_libc_prf+0x151e>
1c033a86:	02e00593          	li	a1,46
1c033a8a:	00b50023          	sb	a1,0(a0)
1c033a8e:	88d2                	mv	a7,s4
1c033a90:	0505                	addi	a0,a0,1
1c033a92:	8a46                	mv	s4,a7
1c033a94:	85aa                	mv	a1,a0
1c033a96:	8326                	mv	t1,s1
1c033a98:	cc02                	sw	zero,24(sp)
1c033a9a:	4881                	li	a7,0
1c033a9c:	bc81                	j	1c0334ec <pos_libc_prf+0x151a>
1c033a9e:	4a01                	li	s4,0
1c033aa0:	483d                	li	a6,15
1c033aa2:	b43d                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033aa4:	00e30513          	addi	a0,t1,14
1c033aa8:	4809                	li	a6,2
1c033aaa:	b41d                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033aac:	00c30513          	addi	a0,t1,12
1c033ab0:	b405                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033ab2:	c0200813          	li	a6,-1022
1c033ab6:	a62ff06f          	j	1c032d18 <pos_libc_prf+0xd46>
1c033aba:	00330513          	addi	a0,t1,3
1c033abe:	4835                	li	a6,13
1c033ac0:	bc01                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033ac2:	00230513          	addi	a0,t1,2
1c033ac6:	4a01                	li	s4,0
1c033ac8:	4839                	li	a6,14
1c033aca:	b419                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033acc:	00b30513          	addi	a0,t1,11
1c033ad0:	4815                	li	a6,5
1c033ad2:	bafd                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033ad4:	00a30513          	addi	a0,t1,10
1c033ad8:	4819                	li	a6,6
1c033ada:	badd                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033adc:	00930513          	addi	a0,t1,9
1c033ae0:	481d                	li	a6,7
1c033ae2:	b2fd                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033ae4:	00830513          	addi	a0,t1,8
1c033ae8:	4821                	li	a6,8
1c033aea:	b2dd                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033aec:	00730513          	addi	a0,t1,7
1c033af0:	4825                	li	a6,9
1c033af2:	baf9                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033af4:	00630513          	addi	a0,t1,6
1c033af8:	4829                	li	a6,10
1c033afa:	bad9                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033afc:	00530513          	addi	a0,t1,5
1c033b00:	482d                	li	a6,11
1c033b02:	b2f9                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033b04:	00430513          	addi	a0,t1,4
1c033b08:	4831                	li	a6,12
1c033b0a:	b2d9                	j	1c0334d0 <pos_libc_prf+0x14fe>
1c033b0c:	849a                	mv	s1,t1
1c033b0e:	852e                	mv	a0,a1
1c033b10:	b581                	j	1c033950 <pos_libc_prf+0x197e>
1c033b12:	41990933          	sub	s2,s2,s9
1c033b16:	8f3fe06f          	j	1c032408 <pos_libc_prf+0x436>
1c033b1a:	00d78513          	addi	a0,a5,13
1c033b1e:	804ff06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b22:	00c78513          	addi	a0,a5,12
1c033b26:	ffdfe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b2a:	00b78513          	addi	a0,a5,11
1c033b2e:	ff5fe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b32:	00978513          	addi	a0,a5,9
1c033b36:	fedfe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b3a:	00878513          	addi	a0,a5,8
1c033b3e:	fe5fe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b42:	00778513          	addi	a0,a5,7
1c033b46:	fddfe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b4a:	00678513          	addi	a0,a5,6
1c033b4e:	fd5fe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b52:	00578513          	addi	a0,a5,5
1c033b56:	fcdfe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b5a:	00478513          	addi	a0,a5,4
1c033b5e:	fc5fe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b62:	00378513          	addi	a0,a5,3
1c033b66:	fbdfe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b6a:	00278513          	addi	a0,a5,2
1c033b6e:	fb5fe06f          	j	1c032b22 <pos_libc_prf+0xb50>
1c033b72:	00178513          	addi	a0,a5,1
1c033b76:	4c81                	li	s9,0
1c033b78:	fabfe06f          	j	1c032b22 <pos_libc_prf+0xb50>

1c033b7c <pos_init_start>:
1c033b7c:	1141                	addi	sp,sp,-16
1c033b7e:	c422                	sw	s0,8(sp)
1c033b80:	1c001437          	lui	s0,0x1c001
1c033b84:	c606                	sw	ra,12(sp)
1c033b86:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list>
1c033b8a:	2245                	jal	1c033d2a <pos_irq_init>
1c033b8c:	b66fe0ef          	jal	ra,1c031ef2 <pos_soc_init>
1c033b90:	22f1                	jal	1c033d5c <pos_soc_event_init>
1c033b92:	20ed                	jal	1c033c7c <pos_allocs_init>
1c033b94:	208d                	jal	1c033bf6 <pos_sched_init>
1c033b96:	405c                	lw	a5,4(s0)
1c033b98:	c791                	beqz	a5,1c033ba4 <pos_init_start+0x28>
1c033b9a:	0421                	addi	s0,s0,8
1c033b9c:	9782                	jalr	a5
1c033b9e:	0044278b          	p.lw	a5,4(s0!)
1c033ba2:	ffed                	bnez	a5,1c033b9c <pos_init_start+0x20>
1c033ba4:	bf8fe0ef          	jal	ra,1c031f9c <pos_io_start>
1c033ba8:	300467f3          	csrrsi	a5,mstatus,8
1c033bac:	40b2                	lw	ra,12(sp)
1c033bae:	4422                	lw	s0,8(sp)
1c033bb0:	0141                	addi	sp,sp,16
1c033bb2:	8082                	ret

1c033bb4 <pos_init_stop>:
1c033bb4:	1141                	addi	sp,sp,-16
1c033bb6:	c422                	sw	s0,8(sp)
1c033bb8:	1c001437          	lui	s0,0x1c001
1c033bbc:	c606                	sw	ra,12(sp)
1c033bbe:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c033bc2:	bdefe0ef          	jal	ra,1c031fa0 <pos_io_stop>
1c033bc6:	405c                	lw	a5,4(s0)
1c033bc8:	c791                	beqz	a5,1c033bd4 <pos_init_stop+0x20>
1c033bca:	0421                	addi	s0,s0,8
1c033bcc:	9782                	jalr	a5
1c033bce:	0044278b          	p.lw	a5,4(s0!)
1c033bd2:	ffed                	bnez	a5,1c033bcc <pos_init_stop+0x18>
1c033bd4:	40b2                	lw	ra,12(sp)
1c033bd6:	4422                	lw	s0,8(sp)
1c033bd8:	0141                	addi	sp,sp,16
1c033bda:	8082                	ret

1c033bdc <pos_cbsys_add>:
1c033bdc:	00259793          	slli	a5,a1,0x2
1c033be0:	1c0015b7          	lui	a1,0x1c001
1c033be4:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c033be8:	95be                	add	a1,a1,a5
1c033bea:	419c                	lw	a5,0(a1)
1c033bec:	c110                	sw	a2,0(a0)
1c033bee:	c154                	sw	a3,4(a0)
1c033bf0:	c51c                	sw	a5,8(a0)
1c033bf2:	c188                	sw	a0,0(a1)
1c033bf4:	8082                	ret

1c033bf6 <pos_sched_init>:
1c033bf6:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c033bfa:	8082                	ret

1c033bfc <pos_alloc_init>:
1c033bfc:	00758793          	addi	a5,a1,7
1c033c00:	c407b7b3          	p.bclr	a5,a5,2,0
1c033c04:	40b785b3          	sub	a1,a5,a1
1c033c08:	c11c                	sw	a5,0(a0)
1c033c0a:	8e0d                	sub	a2,a2,a1
1c033c0c:	00c05763          	blez	a2,1c033c1a <pos_alloc_init+0x1e>
1c033c10:	c4063633          	p.bclr	a2,a2,2,0
1c033c14:	c390                	sw	a2,0(a5)
1c033c16:	0007a223          	sw	zero,4(a5)
1c033c1a:	8082                	ret

1c033c1c <pos_alloc>:
1c033c1c:	4110                	lw	a2,0(a0)
1c033c1e:	059d                	addi	a1,a1,7
1c033c20:	c405b5b3          	p.bclr	a1,a1,2,0
1c033c24:	ca31                	beqz	a2,1c033c78 <pos_alloc+0x5c>
1c033c26:	4218                	lw	a4,0(a2)
1c033c28:	425c                	lw	a5,4(a2)
1c033c2a:	02b75963          	ble	a1,a4,1c033c5c <pos_alloc+0x40>
1c033c2e:	cb81                	beqz	a5,1c033c3e <pos_alloc+0x22>
1c033c30:	4398                	lw	a4,0(a5)
1c033c32:	43d4                	lw	a3,4(a5)
1c033c34:	00b75763          	ble	a1,a4,1c033c42 <pos_alloc+0x26>
1c033c38:	863e                	mv	a2,a5
1c033c3a:	87b6                	mv	a5,a3
1c033c3c:	fbf5                	bnez	a5,1c033c30 <pos_alloc+0x14>
1c033c3e:	853e                	mv	a0,a5
1c033c40:	8082                	ret
1c033c42:	00b70a63          	beq	a4,a1,1c033c56 <pos_alloc+0x3a>
1c033c46:	00b78533          	add	a0,a5,a1
1c033c4a:	8f0d                	sub	a4,a4,a1
1c033c4c:	c118                	sw	a4,0(a0)
1c033c4e:	c154                	sw	a3,4(a0)
1c033c50:	c248                	sw	a0,4(a2)
1c033c52:	853e                	mv	a0,a5
1c033c54:	8082                	ret
1c033c56:	c254                	sw	a3,4(a2)
1c033c58:	853e                	mv	a0,a5
1c033c5a:	8082                	ret
1c033c5c:	00e58b63          	beq	a1,a4,1c033c72 <pos_alloc+0x56>
1c033c60:	00b606b3          	add	a3,a2,a1
1c033c64:	8f0d                	sub	a4,a4,a1
1c033c66:	c2dc                	sw	a5,4(a3)
1c033c68:	c298                	sw	a4,0(a3)
1c033c6a:	87b2                	mv	a5,a2
1c033c6c:	c114                	sw	a3,0(a0)
1c033c6e:	853e                	mv	a0,a5
1c033c70:	8082                	ret
1c033c72:	c11c                	sw	a5,0(a0)
1c033c74:	87b2                	mv	a5,a2
1c033c76:	b7e1                	j	1c033c3e <pos_alloc+0x22>
1c033c78:	4781                	li	a5,0
1c033c7a:	b7d1                	j	1c033c3e <pos_alloc+0x22>

1c033c7c <pos_allocs_init>:
1c033c7c:	1141                	addi	sp,sp,-16
1c033c7e:	1c0315b7          	lui	a1,0x1c031
1c033c82:	c606                	sw	ra,12(sp)
1c033c84:	c422                	sw	s0,8(sp)
1c033c86:	26c58793          	addi	a5,a1,620 # 1c03126c <__l2_priv0_end>
1c033c8a:	1c008637          	lui	a2,0x1c008
1c033c8e:	04c7c363          	blt	a5,a2,1c033cd4 <pos_allocs_init+0x58>
1c033c92:	4581                	li	a1,0
1c033c94:	4601                	li	a2,0
1c033c96:	1c031437          	lui	s0,0x1c031
1c033c9a:	24440513          	addi	a0,s0,580 # 1c031244 <pos_alloc_l2>
1c033c9e:	3fb9                	jal	1c033bfc <pos_alloc_init>
1c033ca0:	1c0345b7          	lui	a1,0x1c034
1c033ca4:	26858793          	addi	a5,a1,616 # 1c034268 <__l2_shared_end>
1c033ca8:	1c080637          	lui	a2,0x1c080
1c033cac:	1c031537          	lui	a0,0x1c031
1c033cb0:	8e1d                	sub	a2,a2,a5
1c033cb2:	26858593          	addi	a1,a1,616
1c033cb6:	24850513          	addi	a0,a0,584 # 1c031248 <pos_alloc_l2+0x4>
1c033cba:	3789                	jal	1c033bfc <pos_alloc_init>
1c033cbc:	24440513          	addi	a0,s0,580
1c033cc0:	4591                	li	a1,4
1c033cc2:	3fa9                	jal	1c033c1c <pos_alloc>
1c033cc4:	40b2                	lw	ra,12(sp)
1c033cc6:	4422                	lw	s0,8(sp)
1c033cc8:	1c0317b7          	lui	a5,0x1c031
1c033ccc:	24a7a023          	sw	a0,576(a5) # 1c031240 <pos_alloc_l1>
1c033cd0:	0141                	addi	sp,sp,16
1c033cd2:	8082                	ret
1c033cd4:	8e1d                	sub	a2,a2,a5
1c033cd6:	26c58593          	addi	a1,a1,620
1c033cda:	bf75                	j	1c033c96 <pos_allocs_init+0x1a>

1c033cdc <pos_irq_set_handler>:
1c033cdc:	f14027f3          	csrr	a5,mhartid
1c033ce0:	477d                	li	a4,31
1c033ce2:	ca5797b3          	p.extractu	a5,a5,5,5
1c033ce6:	02e78d63          	beq	a5,a4,1c033d20 <pos_irq_set_handler+0x44>
1c033cea:	002007b7          	lui	a5,0x200
1c033cee:	43b8                	lw	a4,64(a5)
1c033cf0:	050a                	slli	a0,a0,0x2
1c033cf2:	8d89                	sub	a1,a1,a0
1c033cf4:	8d99                	sub	a1,a1,a4
1c033cf6:	c14586b3          	p.extract	a3,a1,0,20
1c033cfa:	06f00793          	li	a5,111
1c033cfe:	c1f6a7b3          	p.insert	a5,a3,0,31
1c033d02:	d21586b3          	p.extract	a3,a1,9,1
1c033d06:	d356a7b3          	p.insert	a5,a3,9,21
1c033d0a:	c0b586b3          	p.extract	a3,a1,0,11
1c033d0e:	c146a7b3          	p.insert	a5,a3,0,20
1c033d12:	cec585b3          	p.extract	a1,a1,7,12
1c033d16:	cec5a7b3          	p.insert	a5,a1,7,12
1c033d1a:	00f56723          	p.sw	a5,a4(a0)
1c033d1e:	8082                	ret
1c033d20:	30502773          	csrr	a4,mtvec
1c033d24:	c0073733          	p.bclr	a4,a4,0,0
1c033d28:	b7e1                	j	1c033cf0 <pos_irq_set_handler+0x14>

1c033d2a <pos_irq_init>:
1c033d2a:	f1402773          	csrr	a4,mhartid
1c033d2e:	1a10a7b7          	lui	a5,0x1a10a
1c033d32:	56fd                	li	a3,-1
1c033d34:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c033d38:	ca571733          	p.extractu	a4,a4,5,5
1c033d3c:	1c0317b7          	lui	a5,0x1c031
1c033d40:	46fd                	li	a3,31
1c033d42:	30078793          	addi	a5,a5,768 # 1c031300 <__irq_vector_base>
1c033d46:	00d70663          	beq	a4,a3,1c033d52 <pos_irq_init+0x28>
1c033d4a:	00200737          	lui	a4,0x200
1c033d4e:	c33c                	sw	a5,64(a4)
1c033d50:	8082                	ret
1c033d52:	c007c7b3          	p.bset	a5,a5,0,0
1c033d56:	30579073          	csrw	mtvec,a5
1c033d5a:	8082                	ret

1c033d5c <pos_soc_event_init>:
1c033d5c:	1a1067b7          	lui	a5,0x1a106
1c033d60:	1141                	addi	sp,sp,-16
1c033d62:	c606                	sw	ra,12(sp)
1c033d64:	577d                	li	a4,-1
1c033d66:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c033d6a:	c298                	sw	a4,0(a3)
1c033d6c:	00878693          	addi	a3,a5,8
1c033d70:	c298                	sw	a4,0(a3)
1c033d72:	00c78693          	addi	a3,a5,12
1c033d76:	c298                	sw	a4,0(a3)
1c033d78:	01078693          	addi	a3,a5,16
1c033d7c:	c298                	sw	a4,0(a3)
1c033d7e:	01478693          	addi	a3,a5,20
1c033d82:	c298                	sw	a4,0(a3)
1c033d84:	01878693          	addi	a3,a5,24
1c033d88:	c298                	sw	a4,0(a3)
1c033d8a:	01c78693          	addi	a3,a5,28
1c033d8e:	c298                	sw	a4,0(a3)
1c033d90:	02078793          	addi	a5,a5,32
1c033d94:	1c0345b7          	lui	a1,0x1c034
1c033d98:	c398                	sw	a4,0(a5)
1c033d9a:	05458593          	addi	a1,a1,84 # 1c034054 <pos_soc_event_handler_asm>
1c033d9e:	4569                	li	a0,26
1c033da0:	3f35                	jal	1c033cdc <pos_irq_set_handler>
1c033da2:	40b2                	lw	ra,12(sp)
1c033da4:	1a10a7b7          	lui	a5,0x1a10a
1c033da8:	04000737          	lui	a4,0x4000
1c033dac:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c033db0:	0141                	addi	sp,sp,16
1c033db2:	8082                	ret

1c033db4 <pos_time_poweroff>:
1c033db4:	1a10b7b7          	lui	a5,0x1a10b
1c033db8:	0791                	addi	a5,a5,4
1c033dba:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c033dbe:	1c001737          	lui	a4,0x1c001
1c033dc2:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c033dc6:	4501                	li	a0,0
1c033dc8:	8082                	ret

1c033dca <pos_time_poweron>:
1c033dca:	1c0017b7          	lui	a5,0x1c001
1c033dce:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c033dd2:	1a10b7b7          	lui	a5,0x1a10b
1c033dd6:	0791                	addi	a5,a5,4
1c033dd8:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c033ddc:	4501                	li	a0,0
1c033dde:	8082                	ret

1c033de0 <pos_time_timer_handler>:
1c033de0:	1c0018b7          	lui	a7,0x1c001
1c033de4:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c033de8:	0048a783          	lw	a5,4(a7)
1c033dec:	1a10b637          	lui	a2,0x1a10b
1c033df0:	0611                	addi	a2,a2,4
1c033df2:	00862603          	lw	a2,8(a2) # 1a10b008 <__l1_end+0xa10afec>
1c033df6:	cba9                	beqz	a5,1c033e48 <pos_time_timer_handler+0x68>
1c033df8:	5fd8                	lw	a4,60(a5)
1c033dfa:	800005b7          	lui	a1,0x80000
1c033dfe:	40e60733          	sub	a4,a2,a4
1c033e02:	ffe5c593          	xori	a1,a1,-2
1c033e06:	0ae5e763          	bltu	a1,a4,1c033eb4 <pos_time_timer_handler+0xd4>
1c033e0a:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c033e0e:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c033e12:	4398                	lw	a4,0(a5)
1c033e14:	0007a023          	sw	zero,0(a5)
1c033e18:	4301                	li	t1,0
1c033e1a:	02080063          	beqz	a6,1c033e3a <pos_time_timer_handler+0x5a>
1c033e1e:	c11c                	sw	a5,0(a0)
1c033e20:	c305                	beqz	a4,1c033e40 <pos_time_timer_handler+0x60>
1c033e22:	5f54                	lw	a3,60(a4)
1c033e24:	853e                	mv	a0,a5
1c033e26:	40d606b3          	sub	a3,a2,a3
1c033e2a:	04d5e763          	bltu	a1,a3,1c033e78 <pos_time_timer_handler+0x98>
1c033e2e:	87ba                	mv	a5,a4
1c033e30:	4398                	lw	a4,0(a5)
1c033e32:	0007a023          	sw	zero,0(a5)
1c033e36:	fe0814e3          	bnez	a6,1c033e1e <pos_time_timer_handler+0x3e>
1c033e3a:	883e                	mv	a6,a5
1c033e3c:	4305                	li	t1,1
1c033e3e:	f375                	bnez	a4,1c033e22 <pos_time_timer_handler+0x42>
1c033e40:	06031c63          	bnez	t1,1c033eb8 <pos_time_timer_handler+0xd8>
1c033e44:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c033e48:	1a10b7b7          	lui	a5,0x1a10b
1c033e4c:	08100713          	li	a4,129
1c033e50:	0791                	addi	a5,a5,4
1c033e52:	0008a223          	sw	zero,4(a7)
1c033e56:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c033e5a:	f14027f3          	csrr	a5,mhartid
1c033e5e:	477d                	li	a4,31
1c033e60:	ca5797b3          	p.extractu	a5,a5,5,5
1c033e64:	04e78063          	beq	a5,a4,1c033ea4 <pos_time_timer_handler+0xc4>
1c033e68:	6785                	lui	a5,0x1
1c033e6a:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c033e6e:	00204737          	lui	a4,0x204
1c033e72:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c033e76:	8082                	ret
1c033e78:	04031363          	bnez	t1,1c033ebe <pos_time_timer_handler+0xde>
1c033e7c:	02f02223          	sw	a5,36(zero) # 24 <pos_sched_last>
1c033e80:	1a10b7b7          	lui	a5,0x1a10b
1c033e84:	0791                	addi	a5,a5,4
1c033e86:	00e8a223          	sw	a4,4(a7)
1c033e8a:	0087a683          	lw	a3,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c033e8e:	5f58                	lw	a4,60(a4)
1c033e90:	40c70633          	sub	a2,a4,a2
1c033e94:	9636                	add	a2,a2,a3
1c033e96:	00c7a823          	sw	a2,16(a5)
1c033e9a:	08500713          	li	a4,133
1c033e9e:	00e7a023          	sw	a4,0(a5)
1c033ea2:	8082                	ret
1c033ea4:	6785                	lui	a5,0x1
1c033ea6:	1a10a737          	lui	a4,0x1a10a
1c033eaa:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c033eae:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c033eb2:	8082                	ret
1c033eb4:	873e                	mv	a4,a5
1c033eb6:	b7e9                	j	1c033e80 <pos_time_timer_handler+0xa0>
1c033eb8:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c033ebc:	b761                	j	1c033e44 <pos_time_timer_handler+0x64>
1c033ebe:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c033ec2:	bf6d                	j	1c033e7c <pos_time_timer_handler+0x9c>

1c033ec4 <pos_time_init>:
1c033ec4:	1141                	addi	sp,sp,-16
1c033ec6:	c422                	sw	s0,8(sp)
1c033ec8:	1a10b7b7          	lui	a5,0x1a10b
1c033ecc:	1c001437          	lui	s0,0x1c001
1c033ed0:	c606                	sw	ra,12(sp)
1c033ed2:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c033ed6:	08300713          	li	a4,131
1c033eda:	0791                	addi	a5,a5,4
1c033edc:	00042223          	sw	zero,4(s0)
1c033ee0:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c033ee4:	1c0345b7          	lui	a1,0x1c034
1c033ee8:	03058593          	addi	a1,a1,48 # 1c034030 <pos_time_timer_handler_asm>
1c033eec:	452d                	li	a0,11
1c033eee:	33fd                	jal	1c033cdc <pos_irq_set_handler>
1c033ef0:	6785                	lui	a5,0x1
1c033ef2:	1a10a737          	lui	a4,0x1a10a
1c033ef6:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c033efa:	1c034637          	lui	a2,0x1c034
1c033efe:	00840513          	addi	a0,s0,8
1c033f02:	4681                	li	a3,0
1c033f04:	db460613          	addi	a2,a2,-588 # 1c033db4 <pos_time_poweroff>
1c033f08:	4589                	li	a1,2
1c033f0a:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c033f0e:	31f9                	jal	1c033bdc <pos_cbsys_add>
1c033f10:	01840513          	addi	a0,s0,24
1c033f14:	4422                	lw	s0,8(sp)
1c033f16:	40b2                	lw	ra,12(sp)
1c033f18:	1c034637          	lui	a2,0x1c034
1c033f1c:	4681                	li	a3,0
1c033f1e:	dca60613          	addi	a2,a2,-566 # 1c033dca <pos_time_poweron>
1c033f22:	458d                	li	a1,3
1c033f24:	0141                	addi	sp,sp,16
1c033f26:	b95d                	j	1c033bdc <pos_cbsys_add>

1c033f28 <pos_uart_init>:
1c033f28:	1c0347b7          	lui	a5,0x1c034
1c033f2c:	2007ac23          	sw	zero,536(a5) # 1c034218 <__cluster_text_end>
1c033f30:	8082                	ret

1c033f32 <pos_init_entry>:
1c033f32:	7a101073          	csrw	pcmr,zero
1c033f36:	f1402573          	csrr	a0,mhartid
1c033f3a:	01f57593          	andi	a1,a0,31
1c033f3e:	8115                	srli	a0,a0,0x5
1c033f40:	467d                	li	a2,31
1c033f42:	00c50463          	beq	a0,a2,1c033f4a <pos_init_entry+0x18>
1c033f46:	1820006f          	j	1c0340c8 <__l2_priv1_end>
1c033f4a:	fffcd297          	auipc	t0,0xfffcd
1c033f4e:	2f628293          	addi	t0,t0,758 # 1c001240 <_edata>
1c033f52:	ffffd317          	auipc	t1,0xffffd
1c033f56:	31a30313          	addi	t1,t1,794 # 1c03126c <__l2_priv0_end>
1c033f5a:	0002a023          	sw	zero,0(t0)
1c033f5e:	0291                	addi	t0,t0,4
1c033f60:	fe62ede3          	bltu	t0,t1,1c033f5a <pos_init_entry+0x28>
1c033f64:	fffcd117          	auipc	sp,0xfffcd
1c033f68:	29c10113          	addi	sp,sp,668 # 1c001200 <stack>
1c033f6c:	00000297          	auipc	t0,0x0
1c033f70:	c1028293          	addi	t0,t0,-1008 # 1c033b7c <pos_init_start>
1c033f74:	000280e7          	jalr	t0
1c033f78:	00000513          	li	a0,0
1c033f7c:	00000593          	li	a1,0
1c033f80:	ffffe397          	auipc	t2,0xffffe
1c033f84:	d7438393          	addi	t2,t2,-652 # 1c031cf4 <main>
1c033f88:	000380e7          	jalr	t2
1c033f8c:	842a                	mv	s0,a0
1c033f8e:	8522                	mv	a0,s0
1c033f90:	ffffe297          	auipc	t0,0xffffe
1c033f94:	fe028293          	addi	t0,t0,-32 # 1c031f70 <exit>
1c033f98:	000280e7          	jalr	t0

1c033f9c <pos_irq_call_external_c_function>:
1c033f9c:	7119                	addi	sp,sp,-128
1c033f9e:	c006                	sw	ra,0(sp)
1c033fa0:	c20e                	sw	gp,4(sp)
1c033fa2:	c412                	sw	tp,8(sp)
1c033fa4:	c616                	sw	t0,12(sp)
1c033fa6:	c81a                	sw	t1,16(sp)
1c033fa8:	ca1e                	sw	t2,20(sp)
1c033faa:	d236                	sw	a3,36(sp)
1c033fac:	d43a                	sw	a4,40(sp)
1c033fae:	d63e                	sw	a5,44(sp)
1c033fb0:	d842                	sw	a6,48(sp)
1c033fb2:	da46                	sw	a7,52(sp)
1c033fb4:	dc72                	sw	t3,56(sp)
1c033fb6:	de76                	sw	t4,60(sp)
1c033fb8:	c0fa                	sw	t5,64(sp)
1c033fba:	c6fe                	sw	t6,76(sp)
1c033fbc:	000600e7          	jalr	a2
1c033fc0:	4082                	lw	ra,0(sp)
1c033fc2:	4192                	lw	gp,4(sp)
1c033fc4:	4222                	lw	tp,8(sp)
1c033fc6:	42b2                	lw	t0,12(sp)
1c033fc8:	4342                	lw	t1,16(sp)
1c033fca:	43d2                	lw	t2,20(sp)
1c033fcc:	5692                	lw	a3,36(sp)
1c033fce:	5722                	lw	a4,40(sp)
1c033fd0:	57b2                	lw	a5,44(sp)
1c033fd2:	5842                	lw	a6,48(sp)
1c033fd4:	58d2                	lw	a7,52(sp)
1c033fd6:	5e62                	lw	t3,56(sp)
1c033fd8:	5ef2                	lw	t4,60(sp)
1c033fda:	4f06                	lw	t5,64(sp)
1c033fdc:	4fb6                	lw	t6,76(sp)
1c033fde:	6109                	addi	sp,sp,128
1c033fe0:	8482                	jr	s1

1c033fe2 <pos_irq_call_external_c_function_full>:
1c033fe2:	7119                	addi	sp,sp,-128
1c033fe4:	c006                	sw	ra,0(sp)
1c033fe6:	c20e                	sw	gp,4(sp)
1c033fe8:	c412                	sw	tp,8(sp)
1c033fea:	c616                	sw	t0,12(sp)
1c033fec:	c81a                	sw	t1,16(sp)
1c033fee:	ca1e                	sw	t2,20(sp)
1c033ff0:	cc2a                	sw	a0,24(sp)
1c033ff2:	ce2e                	sw	a1,28(sp)
1c033ff4:	d236                	sw	a3,36(sp)
1c033ff6:	d43a                	sw	a4,40(sp)
1c033ff8:	d63e                	sw	a5,44(sp)
1c033ffa:	d842                	sw	a6,48(sp)
1c033ffc:	da46                	sw	a7,52(sp)
1c033ffe:	dc72                	sw	t3,56(sp)
1c034000:	de76                	sw	t4,60(sp)
1c034002:	c0fa                	sw	t5,64(sp)
1c034004:	c6fe                	sw	t6,76(sp)
1c034006:	000600e7          	jalr	a2
1c03400a:	4082                	lw	ra,0(sp)
1c03400c:	4192                	lw	gp,4(sp)
1c03400e:	4222                	lw	tp,8(sp)
1c034010:	42b2                	lw	t0,12(sp)
1c034012:	4342                	lw	t1,16(sp)
1c034014:	43d2                	lw	t2,20(sp)
1c034016:	4562                	lw	a0,24(sp)
1c034018:	45f2                	lw	a1,28(sp)
1c03401a:	5692                	lw	a3,36(sp)
1c03401c:	5722                	lw	a4,40(sp)
1c03401e:	57b2                	lw	a5,44(sp)
1c034020:	5842                	lw	a6,48(sp)
1c034022:	58d2                	lw	a7,52(sp)
1c034024:	5e62                	lw	t3,56(sp)
1c034026:	5ef2                	lw	t4,60(sp)
1c034028:	4f06                	lw	t5,64(sp)
1c03402a:	4fb6                	lw	t6,76(sp)
1c03402c:	6109                	addi	sp,sp,128
1c03402e:	8482                	jr	s1

1c034030 <pos_time_timer_handler_asm>:
1c034030:	1161                	addi	sp,sp,-8
1c034032:	c032                	sw	a2,0(sp)
1c034034:	c226                	sw	s1,4(sp)
1c034036:	00000617          	auipc	a2,0x0
1c03403a:	daa60613          	addi	a2,a2,-598 # 1c033de0 <pos_time_timer_handler>
1c03403e:	00000497          	auipc	s1,0x0
1c034042:	00c48493          	addi	s1,s1,12 # 1c03404a <pos_time_timer_handler_asm_ret>
1c034046:	f9dff06f          	j	1c033fe2 <pos_irq_call_external_c_function_full>

1c03404a <pos_time_timer_handler_asm_ret>:
1c03404a:	4492                	lw	s1,4(sp)
1c03404c:	4602                	lw	a2,0(sp)
1c03404e:	0121                	addi	sp,sp,8
1c034050:	30200073          	mret

1c034054 <pos_soc_event_handler_asm>:
1c034054:	7119                	addi	sp,sp,-128
1c034056:	c022                	sw	s0,0(sp)
1c034058:	c226                	sw	s1,4(sp)
1c03405a:	c42a                	sw	a0,8(sp)
1c03405c:	c62e                	sw	a1,12(sp)
1c03405e:	c832                	sw	a2,16(sp)
1c034060:	1a10a437          	lui	s0,0x1a10a
1c034064:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c034068:	5048                	lw	a0,36(s0)
1c03406a:	00251593          	slli	a1,a0,0x2
1c03406e:	e3fcc297          	auipc	t0,0xe3fcc
1c034072:	3da28293          	addi	t0,t0,986 # 448 <pos_soc_event_callback>
1c034076:	2055f603          	p.lw	a2,t0(a1)
1c03407a:	e3fcc297          	auipc	t0,0xe3fcc
1c03407e:	fce28293          	addi	t0,t0,-50 # 48 <pos_soc_event_callback_arg>
1c034082:	2055f583          	p.lw	a1,t0(a1)
1c034086:	00000497          	auipc	s1,0x0
1c03408a:	03048493          	addi	s1,s1,48 # 1c0340b6 <pos_soc_event_handler_end_asm>
1c03408e:	f0fff06f          	j	1c033f9c <pos_irq_call_external_c_function>

1c034092 <pos_soc_event_no_udma_asm>:
1c034092:	00555593          	srli	a1,a0,0x5
1c034096:	058a                	slli	a1,a1,0x2
1c034098:	e3fcc297          	auipc	t0,0xe3fcc
1c03409c:	f9028293          	addi	t0,t0,-112 # 28 <pos_soc_event_status>
1c0340a0:	2055f603          	p.lw	a2,t0(a1)
1c0340a4:	897d                	andi	a0,a0,31
1c0340a6:	80a64633          	p.bsetr	a2,a2,a0
1c0340aa:	e3fcc297          	auipc	t0,0xe3fcc
1c0340ae:	f7e28293          	addi	t0,t0,-130 # 28 <pos_soc_event_status>
1c0340b2:	00c5e2a3          	p.sw	a2,t0(a1)

1c0340b6 <pos_soc_event_handler_end_asm>:
1c0340b6:	4402                	lw	s0,0(sp)
1c0340b8:	4492                	lw	s1,4(sp)
1c0340ba:	4522                	lw	a0,8(sp)
1c0340bc:	45b2                	lw	a1,12(sp)
1c0340be:	4642                	lw	a2,16(sp)
1c0340c0:	6109                	addi	sp,sp,128
1c0340c2:	30200073          	mret

1c0340c6 <_endtext>:
	...

Déassemblage de la section .l2_data :

1c0340c8 <__cluster_text_start>:
1c0340c8:	f1402573          	csrr	a0,mhartid
1c0340cc:	01f57593          	andi	a1,a0,31
1c0340d0:	8115                	srli	a0,a0,0x5
1c0340d2:	000702b7          	lui	t0,0x70
1c0340d6:	00204337          	lui	t1,0x204
1c0340da:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c0340de:	4381                	li	t2,0
1c0340e0:	0e759463          	bne	a1,t2,1c0341c8 <pos_slave_start>
1c0340e4:	20000293          	li	t0,512
1c0340e8:	00204337          	lui	t1,0x204
1c0340ec:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c0340f0:	e3fcc417          	auipc	s0,0xe3fcc
1c0340f4:	f1440413          	addi	s0,s0,-236 # 4 <pos_fll_freq>
1c0340f8:	002049b7          	lui	s3,0x204
1c0340fc:	4a09                	li	s4,2
1c0340fe:	00000a97          	auipc	s5,0x0
1c034102:	038a8a93          	addi	s5,s5,56 # 1c034136 <pos_master_event>
1c034106:	ffffdb97          	auipc	s7,0xffffd
1c03410a:	146b8b93          	addi	s7,s7,326 # 1c03124c <pos_cluster>
1c03410e:	02c00393          	li	t2,44
1c034112:	02a383b3          	mul	t2,t2,a0
1c034116:	9b9e                	add	s7,s7,t2
1c034118:	0bd1                	addi	s7,s7,20
1c03411a:	1a10acb7          	lui	s9,0x1a10a
1c03411e:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c034122:	4c09                	li	s8,2
1c034124:	00000d17          	auipc	s10,0x0
1c034128:	0e2d0d13          	addi	s10,s10,226 # 1c034206 <pos_set_slave_stack>
1c03412c:	001d6d13          	ori	s10,s10,1
1c034130:	30045073          	csrwi	mstatus,8
1c034134:	a829                	j	1c03414e <pos_master_loop>

1c034136 <pos_master_event>:
1c034136:	018b2b03          	lw	s6,24(s6)
1c03413a:	000b0a63          	beqz	s6,1c03414e <pos_master_loop>

1c03413e <pos_push_event_to_fc_retry>:
1c03413e:	000ba283          	lw	t0,0(s7)
1c034142:	06029c63          	bnez	t0,1c0341ba <pos_push_event_to_fc_wait>
1c034146:	016ba023          	sw	s6,0(s7)
1c03414a:	018ca023          	sw	s8,0(s9)

1c03414e <pos_master_loop>:
1c03414e:	00042b03          	lw	s6,0(s0)
1c034152:	040b0d63          	beqz	s6,1c0341ac <pos_master_sleep>

1c034156 <pos_master_loop_update_next>:
1c034156:	020b2e83          	lw	t4,32(s6)
1c03415a:	01d42023          	sw	t4,0(s0)
1c03415e:	020b2f03          	lw	t5,32(s6)
1c034162:	ffee9ae3          	bne	t4,t5,1c034156 <pos_master_loop_update_next>

1c034166 <pos_master_loop_exec_task>:
1c034166:	004b2503          	lw	a0,4(s6)
1c03416a:	000b2283          	lw	t0,0(s6)
1c03416e:	008b2103          	lw	sp,8(s6)
1c034172:	00cb2303          	lw	t1,12(s6)
1c034176:	010b2383          	lw	t2,16(s6)
1c03417a:	024b2f03          	lw	t5,36(s6)
1c03417e:	014b2f83          	lw	t6,20(s6)
1c034182:	80d6                	mv	ra,s5
1c034184:	911a                	add	sp,sp,t1
1c034186:	e3fcce17          	auipc	t3,0xe3fcc
1c03418a:	e9fe2923          	sw	t6,-366(t3) # 18 <_l1_preload_size>

1c03418e <pos_no_stack_check>:
1c03418e:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c034192:	21e9a023          	sw	t5,512(s3)
1c034196:	21e9a623          	sw	t5,524(s3)

1c03419a <pos_master_no_slave_barrier>:
1c03419a:	000f2863          	p.beqimm	t5,0,1c0341aa <pos_master_loop_no_slave>
1c03419e:	09a9a023          	sw	s10,128(s3)
1c0341a2:	0879a023          	sw	t2,128(s3)
1c0341a6:	0829a023          	sw	sp,128(s3)

1c0341aa <pos_master_loop_no_slave>:
1c0341aa:	8282                	jr	t0

1c0341ac <pos_master_sleep>:
1c0341ac:	0149a423          	sw	s4,8(s3)
1c0341b0:	03c9e003          	p.elw	zero,60(s3)
1c0341b4:	0149a223          	sw	s4,4(s3)
1c0341b8:	bf59                	j	1c03414e <pos_master_loop>

1c0341ba <pos_push_event_to_fc_wait>:
1c0341ba:	0149a423          	sw	s4,8(s3)
1c0341be:	03c9e003          	p.elw	zero,60(s3)
1c0341c2:	0149a223          	sw	s4,4(s3)
1c0341c6:	bfa5                	j	1c03413e <pos_push_event_to_fc_retry>

1c0341c8 <pos_slave_start>:
1c0341c8:	00204937          	lui	s2,0x204
1c0341cc:	f14029f3          	csrr	s3,mhartid
1c0341d0:	01f9f993          	andi	s3,s3,31
1c0341d4:	00000a17          	auipc	s4,0x0
1c0341d8:	012a0a13          	addi	s4,s4,18 # 1c0341e6 <pos_fork_return>
1c0341dc:	00000a97          	auipc	s5,0x0
1c0341e0:	00ea8a93          	addi	s5,s5,14 # 1c0341ea <pos_wait_for_dispatch>
1c0341e4:	a019                	j	1c0341ea <pos_wait_for_dispatch>

1c0341e6 <pos_fork_return>:
1c0341e6:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c0341ea <pos_wait_for_dispatch>:
1c0341ea:	08096283          	p.elw	t0,128(s2)
1c0341ee:	08096503          	p.elw	a0,128(s2)
1c0341f2:	0012f313          	andi	t1,t0,1
1c0341f6:	00031563          	bnez	t1,1c034200 <pos_other_entry>

1c0341fa <pos_fork_entry>:
1c0341fa:	000a00b3          	add	ra,s4,zero
1c0341fe:	8282                	jr	t0

1c034200 <pos_other_entry>:
1c034200:	000a80b3          	add	ra,s5,zero
1c034204:	8282                	jr	t0

1c034206 <pos_set_slave_stack>:
1c034206:	08096283          	p.elw	t0,128(s2)
1c03420a:	00098f13          	mv	t5,s3
1c03420e:	02af0eb3          	mul	t4,t5,a0
1c034212:	005e8133          	add	sp,t4,t0
1c034216:	8082                	ret

1c034218 <__cluster_text_end>:
	...
