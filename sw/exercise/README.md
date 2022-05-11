make clean all run VERBOSE_PERF=1
make clean all run runner_args="--trace=<PATH>:log.txt
if path = .* , every trace (in build/pulp/gccrisc_v)
path : sys/board/chip/cluster/ (33:05)  path=insn : instructions
make clean all run USE_CLUSTER=1 NUM_CORES=8
# Disassemble
make dis > test.s
make clean all run runner_args="--trace=soc/l2 --trace=insn" VERBOSE_PERF=1 | {head -n 100000 > /dev/null ; head -n 10000} > trace_method_1.log