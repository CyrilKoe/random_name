#include "pmsis.h"
#include "stats.h"

//#define PRINT_MATRIX

#ifndef M
#define M 128 // Perf tests on 128
#endif

#define METHOD 3

// global variables
unsigned char A[M * M];
unsigned char B[M * M];
unsigned int tempC[M * M];

// matrix functions
void task_initMat()
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            A[i * M + j] = i * M + j; // A is just a matrix of indexes
            B[i * M + j] = j * M + i; // B is its transposed
        }
    }
}

// matrix functions
void task_initMatTransposed()
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            A[i * M + j] = i * M + j; // A is just a matrix of indexes
            B[i * M + j] = i * M + j; // B is its transposed
        }
    }
}

void print_matrix(unsigned char *mat)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            printf("%02d ", mat[i * M + j]);
        }
        printf("\n");
    }
}

void print_matrix_uint(unsigned int *mat)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            printf("%02d ", mat[i * M + j]);
        }
        printf("\n");
    }
}

void task_matMult(unsigned char *matA, unsigned char *matB, unsigned int *matC)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            matC[i * M + j] = 0;
            for (int k = 0; k < M; k++)
            {
                matC[i * M + j] += matA[i * M + k] * matB[k * M + j];
            }
        }
    }
}

void task_matMultTransposed(unsigned char *matA, unsigned char *matB, unsigned int *matC)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            matC[i * M + j] = 0;
            for (int k = 0; k < M; k++)
            {
                matC[i * M + j] += matA[i * M + k] * matB[j * M + k];
            }
        }
    }
}

void task_matMultAutoVectorization(unsigned char *__restrict__ matA, unsigned char *__restrict__ matB, unsigned int *__restrict__ matC)
{
    unsigned char *x = __builtin_assume_aligned(matA, 4);
    unsigned char *y = __builtin_assume_aligned(matB, 4);
    unsigned int *z = __builtin_assume_aligned(matC, 4);
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < M; j++)
        {
            z[i * M + j] = 0;
            for (int k = 0; k < M; k++)
            {
                z[i * M + j] += x[i * M + k] * y[j * M + k];
            }
        }
    }
}

int main()
{
    // initialize matrix operands
#if METHOD == 1
    task_initMat();
#else
    task_initMatTransposed();
#endif

#ifndef METHOD
    printf("!!!NO METHOD DEFINED!!!\n");
#endif

#ifdef PRINT_MATRIX
    printf("\n\nThis is the Matrix A\n");
    print_matrix(A, M);
    printf("\nThis is the Matrix B\n");
    print_matrix(B, M);
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

#if METHOD == 1
    task_matMult(A, B, tempC);
#elif METHOD == 2
    task_matMultTransposed(A, B, tempC);
#elif METHOD == 3
    task_matMultAutoVectorization(A, B, tempC);
#endif

#ifndef STATS
    pi_perf_stop();
    uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
    uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);
#else
    STOP_STATS();
#endif

#ifdef PRINT_MATRIX
    printf("\nThis is the Matrix C\n");
    print_matrix(tempC, M);
    printf("\n");
#endif

#ifndef STATS
    printf("Number of Instructions: %d\nClock Cycles: %d\nCPI: %f%f\n",
           instr_cnt, cycles_cnt, (float)cycles_cnt / instr_cnt);
#endif
}
