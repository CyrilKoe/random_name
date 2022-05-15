#include "pmsis.h"
#include "stats.h"

//#define PRINT_MATRIX

#ifndef M // height
#define M 128
#endif

// global variables
v4u A[M * M];
v4u B[M * M];
unsigned int tempC[M * M];

// matrix functions
void task_initMatTransposed()
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j += 4)
        {
            for (int k = 0; k < 4; k++)
            {
                A[i * M + j][k] = i * M + j + k;
                B[i * M + j][k] = i * M + j + k;
            }
        }
    }
}

void print_matrix(v4u *mat)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j += 4)
        {
            printf("%02d ", mat[i * M + j][0]);
            printf("%02d ", mat[i * M + j][1]);
            printf("%02d ", mat[i * M + j][2]);
            printf("%02d ", mat[i * M + j][3]);
        }
        printf("\n");
    }
}

void print_matrix_uint(unsigned int *mat)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j ++)
        {
            printf("%02d ", mat[i * M + j]);
        }
        printf("\n");
    }
}

void task_matMultVectorization(v4u *__restrict__ matA, v4u *__restrict__ matB, unsigned int *__restrict__ matC)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            matC[i * M + j] = 0;
            for (int k = 0; k < M; k += 4)
            {
                matC[i * M + j] = __builtin_pulp_sdotup4(matA[i * M + k], matB[j * M + k], matC[i * M + j]); // Dot product between 2 vectors of 4 unsigned bytes, accumulates the result.
            }
        }
    }
}

int main()
{
    // initialize matrix operands
    task_initMatTransposed();

#ifdef PRINT_MATRIX
    printf("\n\nThis is the Matrix A\n");
    print_matrix(A);
    printf("\nThis is the Matrix B\n");
    print_matrix(B);
#endif
#ifndef STATS
    //initialize performance counters
    pi_perf_conf(
        1 << PI_PERF_CYCLES |
        1 << PI_PERF_INSTR);

    // measure statistics on matrix operations
    pi_perf_reset();
    pi_perf_start();
#else
    INIT_STATS();

    PRE_START_STATS();
    START_STATS();
#endif

    task_matMultVectorization(A, B, tempC);

#ifndef STATS
    pi_perf_stop();
    uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
    uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);
#else
    STOP_STATS();
#endif

#ifdef PRINT_MATRIX
    printf("\nThis is the Matrix C\n");
    print_matrix_uint(tempC);
    printf("\n");
#endif

#ifndef STATS
    printf("Number of Instructions: %d\nClock Cycles: %d\nCPI: %f%f\n",
           instr_cnt, cycles_cnt, (float)cycles_cnt / instr_cnt);
#endif
}
