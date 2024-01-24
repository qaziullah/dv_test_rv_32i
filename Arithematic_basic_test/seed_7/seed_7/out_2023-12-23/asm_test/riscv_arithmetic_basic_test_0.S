.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  li x20, 0x0
                  csrw 0x304, x20 # MIE
                  mret
init:             
                  li x0, 0xfd0cbada
                  li x1, 0xfabe8975
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x2
                  li x7, 0x80000000
                  li x8, 0xb
                  li x9, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x4f2ef3ae
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0xf441ec68
                  li x17, 0x80000000
                  li x18, 0x17db112
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0xa506925a
                  li x22, 0x80000000
                  li x23, 0xfc1c4258
                  li x24, 0xf8cb01f1
                  li x25, 0x1a80f13
                  li x26, 0x80000000
                  li x27, 0xbd76828a
                  li x28, 0xff1ecc1e
                  li x29, 0xe
                  li x30, 0x96a2463d
                  li x31, 0x0
                  la x10, user_stack_end
main:             li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x0
                  li           s3, 0x80000000
                  li           ra, 0x56ba7831
                  li           s6, 0xffffffff
                  li           s0, 0xffffffff
                  li           a2, 0x0
                  li           s9, 0xffffffff
                  li           t0, 0x80000000
                  li           s2, 0x0
                  nop
                  lui          s9, 741155
                  addi         ra, t0, 1401
                  nop
                  auipc        s6, 230914
                  auipc        s2, 316663
                  sub          a2, s11, ra
                  addi         a2, s9, 474
                  nop
                  nop
                  add          t0, s2, s3
                  nop
                  addi         a2, s2, 1605
                  lui          s9, 30884
                  sub          t0, s6, s11
                  auipc        s9, 454196
                  nop
                  auipc        s11, 101029
                  lui          s2, 213989
                  add          t0, a2, s11
                  lui          s1, 75614
                  add          s9, s6, s6
                  sub          ra, s6, s11
                  lui          s0, 186004 #end riscv_int_numeric_corner_stream_2
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           sp, 0x80000000
                  li           s10, 0xffffffff
                  li           t6, 0xffffffff
                  li           s3, 0xcb31c0ba
                  li           a1, 0x80000000
                  li           t5, 0x0
                  li           t3, 0xffffffff
                  li           a6, 0xf374de1d
                  li           s0, 0x80000000
                  addi         t5, s10, 41
                  nop
                  nop
                  sub          t5, a6, s10
                  sub          sp, s10, t5
                  auipc        t6, 796890
                  lui          t6, 885787
                  auipc        a1, 8341
                  auipc        s1, 945946
                  sub          s10, s10, s0
                  lui          t6, 730250
                  auipc        s10, 471454
                  add          s3, s3, s1
                  addi         t6, sp, 101
                  addi         a6, s1, 1266
                  sub          sp, a6, t3
                  addi         t6, s10, 1930
                  addi         s0, s10, -1131
                  sub          s1, t6, sp
                  auipc        sp, 802687
                  auipc        s0, 33540
                  lui          t3, 895308
                  auipc        a6, 170704
                  add          t5, s3, s10
                  nop
                  lui          t3, 939247 #end riscv_int_numeric_corner_stream_33
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           sp, 0x80000000
                  li           gp, 0x91ad1c66
                  li           ra, 0x0
                  li           s3, 0x67057557
                  li           a1, 0xf04657ff
                  li           t3, 0x0
                  li           a5, 0x80000000
                  li           t5, 0xaa90b3aa
                  li           a6, 0x0
                  lui          t3, 176597
                  sub          a6, a1, a1
                  nop
                  auipc        ra, 231860
                  nop
                  addi         s3, t5, 1935
                  add          a5, s3, t4
                  addi         t3, t4, -650
                  add          t3, ra, t5
                  sub          sp, s3, t3
                  addi         a1, t5, 186
                  addi         ra, a1, 158
                  addi         t4, sp, -537
                  auipc        sp, 890515
                  nop
                  add          sp, gp, sp
                  addi         a1, a6, -921 #end riscv_int_numeric_corner_stream_3
                  li           s9, 0x4c6d70ff #start riscv_int_numeric_corner_stream_38
                  li           a5, 0x80000000
                  li           t3, 0x0
                  li           s11, 0xffffffff
                  li           t4, 0x0
                  li           a2, 0x0
                  li           gp, 0xffffffff
                  li           ra, 0x80000000
                  li           a7, 0xffffffff
                  li           s3, 0x8d27d0c2
                  sub          s11, s9, a2
                  addi         gp, a2, 954
                  lui          a5, 1011918
                  nop
                  lui          ra, 568808
                  lui          a7, 203438
                  lui          s3, 612195
                  sub          s3, a2, s9
                  auipc        s11, 176951
                  addi         a7, ra, -1020
                  auipc        a5, 363317
                  addi         a5, a5, -953
                  auipc        t4, 438819
                  add          ra, s11, a5
                  sub          s11, gp, a7
                  auipc        t3, 629419
                  add          ra, s11, s3
                  add          a2, a2, t4
                  addi         ra, gp, 1064
                  nop
                  lui          a7, 520673
                  addi         t4, s11, 1166
                  lui          s11, 65248 #end riscv_int_numeric_corner_stream_38
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s10, 0xffffffff
                  li           a6, 0xffffffff
                  li           s9, 0xffffffff
                  li           s7, 0xffffffff
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  li           ra, 0xffffffff
                  li           s0, 0x80000000
                  li           s4, 0xffffffff
                  addi         s10, a6, -1849
                  lui          tp, 845927
                  lui          s7, 831004
                  sub          s0, s10, tp
                  nop
                  auipc        s7, 255825
                  sub          s0, sp, s4
                  lui          s0, 855996
                  sub          sp, a6, s0
                  add          s9, tp, s7
                  auipc        s7, 264
                  auipc        ra, 270030
                  add          sp, s0, s0
                  nop
                  auipc        s7, 879716
                  nop
                  auipc        s7, 134989
                  auipc        ra, 792989
                  add          s10, s0, s0
                  sub          ra, s9, sp
                  sub          s9, sp, s4
                  add          ra, a6, s0
                  lui          s7, 124135
                  sub          tp, s7, sp
                  sub          s7, s0, s0
                  add          tp, s9, ra #end riscv_int_numeric_corner_stream_13
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_20
                  li           gp, 0x80000000
                  li           a6, 0x0
                  li           a2, 0xffffffff
                  li           s5, 0x0
                  li           a3, 0xffffffff
                  li           s11, 0x0
                  li           s10, 0x80000000
                  li           t5, 0x4d6c3f8a
                  li           s3, 0x0
                  nop
                  lui          a2, 162115
                  add          a3, a2, a6
                  nop
                  auipc        s11, 460883
                  sub          s5, s3, a2
                  auipc        a3, 153972
                  auipc        s5, 519872
                  add          a2, s5, gp
                  addi         a6, gp, -867
                  nop
                  addi         s10, gp, 226
                  addi         a3, a3, -1011
                  nop
                  auipc        gp, 268154
                  auipc        t4, 654989
                  auipc        a2, 593878
                  auipc        s5, 825727
                  nop
                  nop
                  nop
                  sub          a3, gp, a3
                  auipc        a3, 202112
                  add          s10, a2, t5
                  addi         a6, a3, -1793
                  add          t5, a3, a2
                  sub          t5, a6, t4 #end riscv_int_numeric_corner_stream_20
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s4, 0x0
                  li           gp, 0x80000000
                  li           t0, 0x0
                  li           s0, 0xa58a91f6
                  li           s6, 0x0
                  li           t4, 0x0
                  li           ra, 0x80000000
                  li           a1, 0xffffffff
                  li           s9, 0x0
                  add          s0, s6, gp
                  add          s6, t4, s4
                  add          t0, a1, ra
                  sub          s4, a1, s0
                  add          s0, a1, gp
                  auipc        s9, 305589
                  auipc        ra, 379707
                  addi         gp, gp, 672
                  addi         a1, s4, 452
                  nop
                  addi         s6, t4, -1112
                  lui          ra, 375443
                  add          t4, s0, s4
                  addi         t4, t4, -1941
                  nop
                  nop
                  nop
                  sub          t4, ra, ra
                  auipc        s0, 515837
                  sub          gp, s9, s8
                  add          s9, s0, t4
                  sub          s9, gp, s0
                  add          a1, gp, gp #end riscv_int_numeric_corner_stream_4
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           a1, 0x6a4c90e0
                  li           s6, 0xffffffff
                  li           s9, 0x2ad81981
                  li           s2, 0x0
                  li           s3, 0x80000000
                  li           s11, 0xffffffff
                  li           a4, 0x0
                  li           t0, 0x0
                  li           s5, 0xffffffff
                  nop
                  sub          s9, a4, s3
                  sub          s9, s5, a1
                  auipc        s2, 69724
                  add          s11, a1, s11
                  nop
                  add          t0, t0, a1
                  nop
                  lui          s6, 848603
                  addi         t6, s9, 2001
                  lui          s6, 732798
                  addi         s2, a4, 201
                  addi         s9, s11, 1663
                  auipc        s3, 1016497
                  lui          s5, 96734
                  addi         t6, s9, 440 #end riscv_int_numeric_corner_stream_11
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           sp, 0x383fb3b1
                  li           ra, 0x80000000
                  li           s8, 0x1a10f884
                  li           gp, 0xffffffff
                  li           t0, 0x80000000
                  li           s9, 0xffffffff
                  li           a3, 0x80000000
                  li           s4, 0x173088af
                  li           t4, 0x5eb3bcf3
                  add          a3, gp, ra
                  auipc        t0, 81345
                  add          s4, a3, s8
                  lui          s9, 746191
                  auipc        sp, 705113
                  addi         a3, s10, -1696
                  addi         t4, sp, 934
                  sub          gp, gp, ra
                  addi         s10, t0, 1259
                  add          s9, ra, s8
                  sub          gp, t4, sp
                  auipc        sp, 664988
                  auipc        sp, 647687
                  addi         s8, s8, -1483
                  add          s8, s9, a3
                  nop
                  sub          s10, gp, t0
                  addi         a3, gp, -1813
                  auipc        gp, 248043
                  auipc        s4, 21198
                  addi         s8, gp, 1220
                  lui          s9, 811936
                  lui          s4, 498492
                  auipc        s4, 355122 #end riscv_int_numeric_corner_stream_25
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s10, 0xffffffff
                  li           s6, 0x80000000
                  li           tp, 0xffffffff
                  li           t6, 0xffffffff
                  li           s11, 0x0
                  li           t5, 0x80000000
                  li           t3, 0x7037cf61
                  li           a1, 0x0
                  li           a7, 0x80000000
                  sub          s6, a1, s11
                  nop
                  lui          s11, 642876
                  addi         s6, a5, -214
                  addi         a7, s11, -251
                  nop
                  add          a1, tp, s11
                  lui          tp, 533137
                  nop
                  nop
                  addi         t3, t3, -1130
                  addi         s6, a1, 539
                  sub          a1, a5, a1
                  nop
                  auipc        a5, 212874
                  sub          t6, a7, t6
                  nop
                  auipc        tp, 383046
                  auipc        t3, 803907
                  auipc        tp, 335214
                  auipc        tp, 627267 #end riscv_int_numeric_corner_stream_17
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           gp, 0xffffffff
                  li           s9, 0x80000000
                  li           s5, 0xffffffff
                  li           a3, 0xffffffff
                  li           t6, 0x80000000
                  li           ra, 0x80000000
                  li           s2, 0x80000000
                  li           a4, 0x80000000
                  li           s3, 0x6773e2d5
                  add          ra, s0, a4
                  add          s2, s0, s5
                  sub          s2, s5, s9
                  sub          s3, s2, s2
                  add          s2, ra, a4
                  auipc        s3, 788371
                  nop
                  sub          s2, ra, s2
                  auipc        s2, 683935
                  add          a3, a4, s9
                  add          s9, s5, s5
                  lui          t6, 339367
                  addi         ra, s9, 81
                  nop
                  addi         s0, s2, -1123
                  auipc        ra, 632271 #end riscv_int_numeric_corner_stream_16
                  addi         t6, s2, 1943
                  or           a1, t3, s1
                  slli         t5, s9, 21
                  sub          a5, sp, s11
                  sltu         s1, a1, s5
                  or           a1, s5, t1
                  srli         t0, s8, 10
                  add          a4, s11, s5
                  sra          a1, t6, s7
                  slli         s7, zero, 28
                  slti         tp, tp, 1432
                  andi         zero, t2, -1529
                  nop
                  srl          tp, a4, tp
                  auipc        t0, 696655
                  slti         a4, t0, 1680
                  sra          a4, s7, s1
                  slti         s2, t2, -110
                  srl          a7, a3, sp
                  sltu         s9, a0, zero
                  and          s3, s0, zero
                  add          a3, tp, a4
                  srli         a2, s9, 25
                  xor          s8, t6, zero
                  slt          s0, a3, s11
                  sub          a4, t6, s2
                  srai         zero, a7, 8
                  add          s7, s7, s5
                  andi         sp, s6, 954
                  slti         s8, s6, 1519
                  sltu         sp, t2, zero
                  and          sp, zero, s1
                  xori         s5, a3, 59
                  auipc        s6, 417268
                  ori          s7, s11, 99
                  andi         a1, a3, 620
                  add          tp, a0, s3
                  sra          sp, t6, gp
                  and          s8, a1, t4
                  xor          s11, t3, s7
                  sltiu        t0, s5, -314
                  lui          t4, 1000366
                  nop
                  or           t4, sp, a7
                  nop
                  and          t3, s7, s9
                  srli         t3, zero, 2
                  sltu         s6, a4, t5
                  srl          tp, s2, a0
                  sll          s10, t3, a3
                  and          s11, s10, a5
                  ori          s11, s9, 863
                  sll          t0, zero, t0
                  or           s11, a5, a1
                  sltu         s5, s9, tp
                  addi         t4, a4, -1378
                  or           t6, s7, t3
                  sltu         t4, t2, a2
                  addi         a5, s7, 548
                  xor          t4, s7, s7
                  srai         a1, t3, 3
                  sll          s9, t2, a6
                  add          s4, a1, s10
                  add          a2, zero, sp
                  and          t0, a7, a6
                  lui          s1, 524193
                  slti         t3, s10, -147
                  auipc        sp, 319964
                  ori          a5, tp, -1351
                  srli         a6, t6, 29
                  sra          sp, a5, t1
                  srl          s7, s8, gp
                  xor          t6, t3, s8
                  auipc        s7, 162644
                  slti         t5, t1, -2009
                  slli         ra, tp, 18
                  slt          t0, t0, zero
                  xori         t5, s4, 413
                  xor          sp, a7, s11
                  andi         a2, s2, 1949
                  sra          s2, s2, ra
                  addi         t5, s0, 284
                  srai         sp, t1, 31
                  sltu         gp, ra, a4
                  sra          a1, a2, ra
                  srli         a6, s3, 30
                  slli         zero, s9, 17
                  ori          a6, a4, 807
                  slli         t3, s10, 26
                  sub          s10, t2, s6
                  sll          a7, t3, s9
                  srl          t0, s7, s8
                  andi         s6, t1, 854
                  sra          s7, sp, t2
                  lui          s0, 755541
                  xor          a7, s6, s6
                  lui          t5, 570689
                  and          s4, t3, ra
                  andi         a4, zero, -1323
                  and          t5, s7, t5
                  or           t4, tp, t3
                  srli         s0, a2, 8
                  xori         t6, s7, -1494
                  lui          s9, 700396
                  ori          gp, s8, 40
                  addi         t4, s2, -661
                  xori         t4, s1, -1357
                  slli         a6, ra, 21
                  xori         s5, tp, 1582
                  or           zero, s5, ra
                  or           s2, t0, t6
                  addi         t5, a6, -89
                  srli         gp, s11, 28
                  sra          s9, a6, zero
                  slt          sp, s9, a0
                  addi         ra, s8, 1094
                  and          a3, s9, a7
                  xori         s0, t3, -275
                  srl          s10, s9, sp
                  add          zero, s7, t1
                  sub          s10, s1, t4
                  slt          s8, sp, s7
                  addi         a5, s8, -778
                  xor          t5, s9, t2
                  sll          a4, a1, a3
                  or           s3, s7, t1
                  addi         s6, t2, -1939
                  slt          s3, a4, s10
                  xor          s3, s10, s7
                  andi         a2, s11, 1301
                  sll          a6, ra, t4
                  slli         a4, s0, 29
                  andi         t6, t2, 27
                  srai         a6, a7, 14
                  lui          a1, 755476
                  sll          t3, a6, s5
                  add          a5, a1, a6
                  xori         a5, s7, 1809
                  srai         s10, tp, 19
                  add          a6, s2, t4
                  andi         s6, s6, 201
                  slti         a4, ra, 1022
                  andi         t5, s2, 907
                  sltiu        s9, a0, 1135
                  sltiu        t3, t2, 1296
                  slt          a4, t4, a7
                  sll          t5, zero, s0
                  slt          ra, s4, s7
                  sub          t4, t6, s8
                  srli         gp, t6, 2
                  srai         s2, s6, 11
                  or           t6, a3, t4
                  andi         zero, ra, 1385
                  sra          s11, s10, t3
                  nop
                  lui          a6, 67820
                  andi         sp, a2, 247
                  sub          s7, t6, t5
                  sra          s6, gp, a7
                  and          t5, s10, a0
                  lui          s7, 134962
                  sltu         s1, a4, t4
                  ori          t3, t4, 1431
                  ori          gp, s8, 173
                  srli         gp, sp, 6
                  xori         s10, s10, 844
                  lui          a7, 901789
                  sltu         sp, zero, s2
                  sll          a6, s4, s11
                  srli         a5, s1, 25
                  andi         s11, t1, 1713
                  sltu         s10, gp, t0
                  ori          s9, s11, -687
                  xori         ra, a4, -549
                  slti         a1, t1, 1579
                  lui          a5, 846005
                  addi         a1, t5, 53
                  srl          a1, t2, s1
                  slt          a4, t2, t4
                  sll          s7, a4, s0
                  nop
                  sll          gp, t4, a7
                  ori          a5, a7, 29
                  auipc        s7, 770186
                  addi         a3, t0, -1399
                  sra          a5, s5, zero
                  sltiu        tp, s7, 609
                  sltu         s9, s0, t4
                  sub          gp, s7, s5
                  sub          s0, s8, t3
                  nop
                  add          s3, a3, zero
                  and          s1, a3, a0
                  nop
                  sub          s8, sp, t0
                  xor          s7, s2, a3
                  sub          t6, s0, a3
                  xor          sp, gp, s3
                  slli         t5, a7, 11
                  ori          s4, ra, 86
                  or           s8, a0, a6
                  sltiu        a5, t3, -299
                  sltu         s8, s10, a5
                  andi         t4, s5, -731
                  srl          s1, s9, t6
                  and          s3, a5, s10
                  nop
                  srli         a2, s4, 0
                  sltu         gp, t2, a7
                  sll          s3, t0, a5
                  xori         ra, s3, -1083
                  addi         sp, t6, -1337
                  srai         a3, s11, 18
                  sll          ra, s6, s5
                  sltu         s3, t3, tp
                  sltiu        s8, a5, 1873
                  auipc        s4, 49116
                  slti         t0, s4, 286
                  lui          s2, 160385
                  slt          sp, s4, tp
                  auipc        s10, 710901
                  srai         a4, t4, 10
                  andi         a6, zero, 1193
                  sll          s2, s9, a7
                  andi         zero, s10, 952
                  add          s9, tp, s2
                  add          s8, t3, t6
                  srli         s0, s0, 18
                  srl          a1, zero, s6
                  add          s2, tp, s7
                  srl          zero, a6, s7
                  sltu         s3, a7, s6
                  sra          a3, s3, a6
                  lui          s8, 132842
                  ori          ra, a2, 1028
                  addi         s1, t2, 1502
                  nop
                  and          s0, t1, t0
                  slt          sp, s2, s10
                  srli         t6, gp, 26
                  sub          a6, t0, t6
                  nop
                  sub          s10, t3, a4
                  add          sp, s3, t5
                  srl          s10, s10, t2
                  sll          s1, s4, s3
                  slli         zero, s8, 20
                  and          t0, ra, a6
                  addi         a7, s10, -1072
                  slti         s8, a6, 1198
                  auipc        s5, 891261
                  xori         t0, a7, 1498
                  srai         s1, t2, 18
                  slt          a5, s7, gp
                  srli         s2, a2, 31
                  slti         ra, s3, -21
                  ori          tp, a3, 1167
                  addi         ra, s4, 1605
                  sll          s10, s2, t4
                  sll          a3, a3, a2
                  auipc        gp, 142729
                  sub          a6, gp, s10
                  srai         t6, a3, 31
                  andi         sp, t1, 1708
                  or           a7, a5, s3
                  sra          s9, s4, t4
                  ori          t5, s4, 762
                  auipc        a5, 560237
                  slti         s5, s5, -235
                  sltu         gp, zero, a1
                  srl          s11, a7, s7
                  sub          t0, s7, t1
                  lui          a2, 17161
                  add          a5, t4, s4
                  lui          sp, 201261
                  andi         s3, sp, 1882
                  nop
                  sltiu        t6, s7, -382
                  slti         s6, s0, 1151
                  nop
                  auipc        t3, 693465
                  srai         s11, s3, 6
                  sra          s4, s6, a7
                  srl          zero, s1, t0
                  sll          tp, s7, zero
                  xor          ra, a2, t0
                  sll          s6, s1, gp
                  nop
                  srl          a5, t0, t3
                  sub          s1, ra, a4
                  or           s8, s9, s5
                  sltu         t3, t4, t4
                  xor          a5, s2, t0
                  sll          s9, ra, sp
                  lui          s9, 1002606
                  lui          a4, 633540
                  addi         tp, t4, -132
                  sltiu        s11, s6, 210
                  sltiu        a5, s9, 1175
                  andi         s0, s10, 615
                  slt          s7, a0, a7
                  slt          a2, gp, t6
                  addi         zero, a5, 1319
                  slt          a7, s3, a1
                  addi         s0, t1, -664
                  nop
                  slti         t0, s6, 862
                  sra          a3, zero, s4
                  ori          ra, s10, 1203
                  sltiu        s5, s2, -1826
                  srai         a3, s6, 9
                  srl          s7, s7, t6
                  sll          t6, t2, s8
                  sub          s8, s11, t6
                  sltu         s6, s3, t4
                  add          s11, t0, t2
                  slt          t5, zero, a5
                  add          s11, t0, t5
                  srai         s5, gp, 28
                  or           a4, t6, s1
                  addi         tp, s10, -1265
                  add          s6, sp, t3
                  lui          s5, 796558
                  srai         t3, a6, 4
                  srli         a3, t5, 24
                  andi         s6, s11, 1884
                  slti         sp, s4, 1405
                  sll          zero, s6, t6
                  auipc        s10, 856887
                  lui          t3, 939631
                  slt          s11, s1, s2
                  or           s6, s8, ra
                  ori          s2, ra, -106
                  ori          t6, t4, -1219
                  addi         s3, s1, -261
                  sra          a6, a7, t4
                  sra          s6, gp, a2
                  sltiu        ra, ra, 1019
                  srai         a1, a2, 8
                  and          s3, ra, a4
                  and          a3, a4, s11
                  sub          t3, t4, s6
                  and          ra, s6, a0
                  slt          t5, a2, s4
                  or           a6, a4, a2
                  or           gp, s1, t4
                  srli         a4, s2, 16
                  slti         t0, s4, 485
                  auipc        tp, 468210
                  add          a5, s7, t4
                  srai         zero, a5, 31
                  auipc        s11, 436244
                  andi         a2, s4, 690
                  sra          t6, s3, s9
                  srli         gp, t6, 20
                  or           s10, a6, s8
                  sltiu        s10, a1, -835
                  slti         s4, a0, 807
                  sra          t6, t1, t2
                  ori          s7, t3, -1591
                  and          s10, a3, s11
                  add          t4, s11, a0
                  slti         tp, a4, 1292
                  slli         s6, sp, 0
                  srl          a2, gp, s8
                  sll          s4, ra, a3
                  sll          t4, s7, s5
                  and          a2, t2, a6
                  slt          s2, s0, a7
                  srl          a3, s9, s5
                  sra          s9, zero, a4
                  ori          s6, s6, 1051
                  sra          s4, s4, zero
                  xori         t5, t1, 48
                  auipc        gp, 542409
                  xor          t4, tp, a7
                  srai         t6, s3, 7
                  xor          s4, a7, s3
                  and          a1, tp, ra
                  sll          a7, ra, zero
                  nop
                  sll          s7, s5, t2
                  auipc        sp, 855663
                  nop
                  srai         s0, s6, 16
                  ori          a3, s0, 169
                  xori         s9, a4, 1505
                  and          s9, gp, t6
                  add          s0, t3, s4
                  auipc        a1, 928401
                  addi         ra, t3, 1033
                  andi         a5, s9, 455
                  slli         s8, s2, 27
                  add          a6, t5, s2
                  nop
                  slli         s4, t5, 11
                  sra          s10, s4, a6
                  slti         s2, a0, -625
                  nop
                  sll          s3, s7, a2
                  slli         s4, a4, 11
                  sub          a3, a5, gp
                  xori         gp, t2, -1203
                  xori         sp, s2, 0
                  sltiu        a1, t5, -355
                  sltiu        s8, s9, 429
                  ori          t5, tp, 1598
                  srl          sp, t6, t4
                  lui          t5, 526326
                  srli         a1, t5, 11
                  slli         a1, t6, 6
                  lui          t5, 857105
                  sltiu        s9, s6, -511
                  lui          s1, 606637
                  or           s0, s9, s0
                  sltiu        s9, a0, -1123
                  addi         s5, a2, -1842
                  nop
                  nop
                  andi         sp, s10, -70
                  or           s8, a3, s10
                  nop
                  xori         s11, t5, 644
                  addi         a5, a0, 1242
                  addi         zero, s4, -1988
                  sra          a1, s5, s10
                  sub          a2, t3, s3
                  addi         s0, s4, -883
                  xori         s3, s11, -638
                  lui          a1, 910720
                  sll          zero, sp, a5
                  auipc        a3, 444327
                  andi         a7, a1, -1970
                  lui          a1, 991591
                  nop
                  srl          a3, t5, a1
                  addi         s5, t1, 251
                  sltu         a3, a2, s6
                  sltiu        s1, ra, 439
                  sll          t5, s0, t2
                  addi         t5, tp, -873
                  andi         s7, a5, -1644
                  add          zero, a6, a3
                  srl          s6, t6, a7
                  sll          a5, s6, a2
                  sltiu        t5, a6, -173
                  lui          s11, 447398
                  auipc        a5, 250182
                  xori         s6, a3, 19
                  andi         s7, s11, -1365
                  andi         s10, s7, -850
                  addi         t4, s6, 534
                  or           tp, s11, a0
                  addi         zero, t1, 1707
                  nop
                  xori         s1, s3, -1557
                  srl          a7, s11, s1
                  sltiu        t6, a0, -1140
                  sltiu        a3, a4, 1530
                  sltiu        gp, t3, 1831
                  lui          s10, 310942
                  auipc        a2, 72234
                  and          s6, a4, s3
                  xor          s8, s0, t4
                  xori         s6, t3, -455
                  or           s0, s2, s11
                  slti         s0, a2, 835
                  xori         gp, s2, 1974
                  lui          a7, 529625
                  sltu         s9, s3, t4
                  slti         a5, s1, -285
                  srli         s4, a5, 15
                  nop
                  srl          a2, a6, t0
                  sra          s2, a3, t4
                  slt          s11, s4, t1
                  addi         s4, t2, 537
                  srli         s3, s7, 28
                  slti         ra, zero, 1035
                  srl          a4, s2, s3
                  add          a7, s7, a4
                  slt          t3, s3, s2
                  slli         t6, s7, 12
                  andi         s3, a0, 1466
                  srai         s4, a3, 4
                  slti         s9, s4, 2000
                  sub          a2, t2, a4
                  sltiu        t5, s6, -1639
                  slt          s4, s6, tp
                  auipc        a2, 336219
                  xori         a3, s9, -1898
                  sub          sp, tp, s8
                  sltiu        a4, ra, -1237
                  srli         ra, s2, 16
                  sltu         s5, t6, a0
                  slli         s1, t2, 17
                  slt          a7, t3, gp
                  addi         s1, t3, -868
                  lui          t4, 302515
                  addi         t6, s10, 1938
                  slt          a1, a3, s11
                  and          ra, s1, s2
                  ori          tp, s8, 282
                  lui          t4, 103694
                  sltiu        a5, sp, 1433
                  addi         s11, a2, -688
                  addi         t4, a7, -1805
                  andi         gp, s6, -779
                  slt          a2, a5, s9
                  sra          a4, sp, a5
                  srl          a2, s9, s1
                  srli         t5, s4, 6
                  sra          a5, t5, zero
                  sltu         s3, t4, a7
                  and          sp, t5, a7
                  xor          s10, gp, s3
                  lui          a6, 879011
                  auipc        s6, 603706
                  slt          t0, t2, a6
                  slt          t4, a7, s9
                  sltu         gp, a0, ra
                  xori         t3, t2, 552
                  srli         s3, s8, 19
                  slli         gp, t4, 31
                  slli         s5, s5, 17
                  or           s8, ra, s1
                  srl          tp, t6, a2
                  lui          s10, 164200
                  xori         s3, a4, -177
                  srl          s3, s7, s11
                  slt          a6, s4, s5
                  slli         zero, s7, 12
                  addi         s11, a2, 306
                  sll          s10, t4, a3
                  or           t5, t5, s8
                  srli         s0, ra, 18
                  xor          a7, t5, zero
                  sltu         zero, a6, a7
                  nop
                  xor          s8, s8, s8
                  addi         a5, gp, 342
                  srai         a4, a0, 24
                  srai         t3, a3, 11
                  sltu         a5, zero, s9
                  or           a4, t1, t1
                  and          a7, t1, s1
                  lui          tp, 1036068
                  sub          tp, t4, a5
                  nop
                  srl          sp, sp, sp
                  slt          s3, s8, s8
                  slli         s0, s10, 25
                  sltiu        t6, s8, 1463
                  nop
                  ori          s8, s5, -71
                  xor          t4, a2, s0
                  or           s10, sp, tp
                  sltiu        s6, a2, -1274
                  slti         s8, a6, -560
                  sltu         a1, t6, s4
                  and          a2, s9, s4
                  xor          t0, gp, t6
                  sltiu        t0, gp, 501
                  addi         s7, tp, -843
                  andi         s9, a5, 1335
                  add          a4, s10, t3
                  srl          s3, a0, a5
                  sub          s0, s3, t3
                  sra          s7, s3, s0
                  ori          t3, s11, -585
                  sltiu        s11, a6, -15
                  add          s2, s5, t1
                  xor          s5, zero, sp
                  xori         t3, gp, -1607
                  srai         a1, t5, 31
                  sra          a2, t6, s5
                  auipc        a4, 788017
                  slti         a5, s1, 342
                  srli         gp, t3, 16
                  addi         a5, t2, 1126
                  slt          t3, a2, gp
                  sub          s6, s3, t4
                  slt          a6, s11, a4
                  xori         tp, a3, 917
                  sll          s0, t2, t6
                  srai         ra, gp, 5
                  slli         s3, ra, 11
                  xor          s2, a2, s6
                  addi         t6, s7, -540
                  lui          a3, 1018897
                  auipc        a7, 695662
                  slt          s6, tp, a1
                  sub          s7, a0, s3
                  sltiu        s11, s3, 832
                  xori         a6, t3, 1385
                  sltu         ra, s6, t1
                  auipc        a2, 796051
                  or           t0, t5, s4
                  addi         zero, s2, 1844
                  sub          t4, s1, t2
                  sltiu        gp, t3, -177
                  slli         s6, s2, 27
                  sub          a2, a3, a2
                  auipc        s4, 998972
                  srli         gp, t5, 0
                  xor          s11, a7, tp
                  sltiu        tp, sp, 2019
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s2, 0x80000000
                  li           t3, 0x0
                  li           t6, 0x0
                  li           s7, 0x80000000
                  li           a4, 0xffffffff
                  li           s11, 0x0
                  li           a1, 0x13d1ae10
                  li           s0, 0xb5e0a228
                  li           s8, 0x80000000
                  nop
                  addi         t3, s7, 1000
                  sub          s1, s8, t3
                  addi         s11, a4, 411
                  nop
                  sub          s7, s1, s1
                  nop
                  add          t3, s7, s11
                  add          s7, s0, t6
                  lui          s7, 996685
                  add          s0, s8, s1
                  addi         s11, t6, 1177
                  lui          a1, 326351
                  sub          s2, s8, s2
                  addi         s0, t3, -1693
                  addi         a1, t6, 158
                  nop
                  addi         s2, t3, 1786
                  add          s7, s11, a4
                  nop #end riscv_int_numeric_corner_stream_31
                  xor          sp, a6, ra
                  slt          a1, a6, a2
                  sll          s10, s2, t3
                  or           a4, s6, sp
                  ori          s1, s3, -501
                  lui          t5, 295419
                  sltiu        t0, s6, 509
                  xor          gp, t4, s5
                  xori         s3, s7, 307
                  add          s6, s8, s3
                  auipc        s0, 551959
                  sltiu        a7, t4, 1560
                  auipc        s1, 516923
                  xori         ra, s9, 1851
                  sltiu        tp, t0, 672
                  slt          tp, s0, s6
                  sra          a3, s1, s2
                  slli         t0, a7, 2
                  lui          zero, 951799
                  sub          s3, t1, a7
                  srli         sp, a7, 26
                  slli         s0, s9, 8
                  slt          s10, t3, a3
                  srli         a5, t0, 11
                  slti         ra, t0, 701
                  sltu         s4, s1, t6
                  slti         t3, a2, -273
                  sltiu        a3, a6, 1750
                  srai         a1, s8, 4
                  slli         zero, zero, 17
                  slt          s6, t3, a1
                  and          a3, s10, tp
                  auipc        a5, 971650
                  slt          s4, s3, t5
                  sll          t0, s4, s7
                  sra          s10, t3, s10
                  and          a4, t4, a7
                  auipc        tp, 666336
                  slt          sp, a1, t1
                  ori          t5, s11, 1408
                  srai         sp, zero, 3
                  auipc        t5, 748415
                  slli         s6, ra, 7
                  addi         s6, a0, -403
                  slli         a1, t4, 9
                  srl          a5, t1, s10
                  sltu         s4, tp, sp
                  or           t5, a1, zero
                  add          gp, t1, s1
                  add          s7, sp, a6
                  and          a4, t4, s11
                  lui          a7, 103561
                  lui          zero, 448484
                  sltu         a1, a1, t4
                  xor          t0, s10, s4
                  nop
                  lui          a3, 784097
                  sltiu        s3, s4, -774
                  or           tp, t3, a1
                  add          t0, t0, s3
                  add          s7, a0, a4
                  addi         a7, s11, -1946
                  slti         tp, t2, 1237
                  lui          t5, 596144
                  andi         t5, s6, 1689
                  auipc        s7, 214713
                  sltiu        a1, a4, -579
                  xori         sp, t4, 585
                  lui          t0, 636690
                  sub          s6, t1, s6
                  and          s11, a0, t6
                  sra          gp, s8, s10
                  slt          s5, s3, s8
                  ori          sp, sp, 1558
                  srai         t3, t0, 26
                  add          t0, s4, s0
                  lui          t0, 1033842
                  nop
                  slli         a5, s11, 17
                  sltu         a2, s4, a6
                  addi         ra, t6, -850
                  srl          sp, s4, s7
                  sltiu        a7, a4, 1812
                  sltiu        a1, a3, 1963
                  srai         a1, s4, 2
                  auipc        s10, 1000845
                  lui          a2, 846577
                  addi         s6, t6, 283
                  auipc        s8, 565686
                  srai         t6, ra, 13
                  auipc        tp, 517302
                  srai         s0, t1, 27
                  sll          tp, a7, a3
                  sra          s3, a7, a1
                  sra          a5, t5, gp
                  xor          a4, a7, s8
                  add          s11, t4, ra
                  or           t0, t6, s6
                  xor          t4, s10, t2
                  slt          a2, t4, a1
                  slli         s6, s11, 6
                  slt          s9, a0, s0
                  sub          gp, ra, tp
                  and          t0, t4, s6
                  slti         s10, t5, -692
                  slt          s7, s4, s3
                  add          s3, ra, s9
                  xori         a3, s0, -1401
                  and          a4, a3, a7
                  slli         s0, t1, 17
                  andi         a7, a0, 262
                  ori          a4, t4, -1458
                  addi         zero, ra, 299
                  add          sp, s11, s3
                  sub          a3, s11, s0
                  lui          s0, 238066
                  sub          s6, t3, a5
                  slt          s10, t6, t5
                  and          a2, s10, a4
                  or           t6, a2, s1
                  auipc        tp, 175378
                  sll          zero, t6, s9
                  srl          gp, a2, s7
                  sub          a6, t3, a0
                  srl          sp, t2, a1
                  slli         gp, s10, 8
                  sra          s3, a5, s0
                  sra          s2, a4, s7
                  slti         a3, sp, 1644
                  sll          a6, a5, s6
                  xori         a1, a3, 781
                  xor          t0, sp, s11
                  sub          s11, s10, t4
                  slti         a5, gp, 1516
                  ori          s3, sp, -1453
                  and          t0, tp, s10
                  addi         s6, a5, 347
                  srli         s6, s0, 20
                  sltiu        t3, a0, -1411
                  slli         sp, s5, 13
                  sra          t6, t2, t4
                  sub          a6, a6, a2
                  sltiu        s1, s10, -25
                  ori          tp, a7, 684
                  slt          s9, a2, a5
                  andi         s4, s3, 402
                  slli         a3, t5, 19
                  or           s0, a7, a5
                  sltu         a5, t0, s8
                  nop
                  slli         sp, s9, 4
                  srli         a6, s8, 19
                  xori         a5, s0, 1261
                  ori          ra, a7, 1191
                  slli         tp, s8, 8
                  slt          s10, a0, a3
                  andi         s7, sp, 478
                  add          s9, t4, ra
                  srai         a2, t1, 26
                  srai         t4, s4, 4
                  addi         s5, s1, 1708
                  sra          s1, s0, a4
                  slti         a5, sp, 875
                  addi         s3, ra, 1366
                  sltiu        tp, tp, -843
                  slt          t3, t1, a7
                  andi         s5, s8, -1106
                  sll          s2, s11, s7
                  slt          gp, t6, t5
                  slt          s6, s8, s4
                  lui          s1, 369055
                  xor          s6, t3, a0
                  xori         t3, s2, 461
                  slli         gp, a2, 20
                  slti         a3, a5, -1040
                  slti         s5, s6, 698
                  slli         t6, s9, 11
                  srai         gp, t0, 2
                  add          gp, s2, s9
                  ori          a2, ra, -1277
                  and          s2, a4, s4
                  nop
                  nop
                  lui          s3, 3587
                  sll          s11, t5, zero
                  srli         a1, tp, 11
                  lui          t4, 307955
                  sub          zero, a3, s9
                  andi         s5, sp, -1735
                  add          a5, tp, t3
                  auipc        a6, 880089
                  addi         t3, s2, 1400
                  sltu         s11, gp, t5
                  srl          a6, ra, s6
                  nop
                  or           a6, a4, a0
                  slt          a4, t0, t5
                  slt          s1, a6, t1
                  and          gp, gp, a5
                  lui          a6, 218266
                  slti         a3, s0, -816
                  auipc        s1, 696515
                  add          s1, a3, a4
                  srl          t6, a0, ra
                  andi         s5, s6, 1421
                  srli         s7, a3, 10
                  slt          t4, t1, a6
                  srai         gp, s0, 13
                  slli         a2, s4, 10
                  sub          t6, s7, t2
                  slli         s1, a5, 7
                  sub          s11, t5, tp
                  or           s6, t1, a4
                  lui          s0, 609602
                  ori          a4, a3, 1859
                  or           s4, s1, t3
                  sltu         s6, s4, zero
                  sll          a3, t0, s3
                  andi         t4, a2, -1826
                  xor          t4, a6, a4
                  nop
                  addi         s11, t3, 1244
                  and          a7, a4, a4
                  srli         tp, t3, 31
                  slti         t4, zero, 203
                  xor          s7, gp, a5
                  sltiu        s8, s8, 1932
                  xor          s2, t4, gp
                  srli         ra, a4, 0
                  srl          zero, t0, s9
                  sltiu        a2, a4, 976
                  slli         t4, t6, 2
                  srl          a3, t2, t4
                  sra          s10, s6, s2
                  srl          a6, s2, s9
                  xor          a5, a7, a0
                  xor          s6, a5, a0
                  lui          s7, 296941
                  slti         sp, t3, 325
                  sll          s3, a0, s0
                  nop
                  sltu         sp, a5, a5
                  xor          t4, s5, t1
                  sltu         sp, s8, t5
                  auipc        tp, 602121
                  slt          a7, s7, sp
                  srl          a6, s9, s5
                  sra          tp, s4, s7
                  sltu         a7, a4, s10
                  xori         t0, a3, 740
                  ori          s8, a1, 369
                  sltu         a1, sp, ra
                  xori         s5, s0, 177
                  slti         a4, a6, -305
                  add          s5, s3, t5
                  srai         s4, gp, 7
                  xori         gp, t1, -1284
                  srai         a3, t1, 20
                  and          t0, ra, s1
                  sra          s4, ra, s5
                  sll          s7, s1, s4
                  srli         t5, tp, 23
                  nop
                  nop
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           t4, 0x80000000
                  li           s4, 0xd6d6a51c
                  li           a1, 0xffffffff
                  li           a7, 0xffffffff
                  li           t3, 0x70dfc28d
                  li           a6, 0xffffffff
                  li           s0, 0x0
                  li           s2, 0xffffffff
                  li           sp, 0x80000000
                  nop
                  auipc        a7, 348418
                  nop
                  addi         t4, s2, -91
                  auipc        a6, 538889
                  nop
                  add          s0, s7, sp
                  auipc        t4, 287357
                  addi         t3, s4, -554
                  addi         s2, a1, -95
                  sub          a1, a1, s4
                  add          t3, a7, a6
                  sub          a1, a1, s2
                  addi         s0, s0, 1091
                  add          s0, sp, s4
                  addi         s7, s0, -1741
                  auipc        t4, 182687
                  addi         s0, sp, -128
                  lui          a7, 707355
                  nop
                  addi         sp, s0, -1644
                  lui          a7, 982876
                  addi         s0, t3, 35
                  auipc        a1, 163984
                  nop
                  nop
                  add          a1, a7, a6
                  add          t3, s2, s4 #end riscv_int_numeric_corner_stream_29
                  slli         a2, t3, 29
                  ori          s6, a7, 1207
                  addi         ra, sp, -7
                  srl          a2, s1, s6
                  and          zero, s1, s10
                  xor          s2, s9, a7
                  auipc        a1, 562416
                  xori         t0, a6, 762
                  xori         t0, a0, -1173
                  add          gp, gp, gp
                  slti         s7, t3, -588
                  srai         s2, s1, 4
                  sub          zero, gp, gp
                  srl          a4, s0, s4
                  srli         sp, s9, 13
                  slt          s8, s1, s5
                  or           sp, a6, a3
                  srai         a1, gp, 1
                  or           a1, a3, s0
                  sra          s2, a1, ra
                  addi         sp, tp, 1785
                  or           a2, ra, a5
                  sub          t0, t6, t4
                  lui          s9, 1038826
                  sll          zero, a1, t3
                  sll          s5, s10, s1
                  xor          zero, ra, s3
                  andi         a4, sp, 1508
                  slti         a7, gp, -943
                  sub          s0, s0, gp
                  srai         s0, a0, 7
                  sub          a3, s0, s4
                  srl          t0, t4, a7
                  sub          a5, sp, s0
                  xor          s0, t6, s3
                  srl          t5, a3, sp
                  sra          t6, t1, t3
                  xori         a1, gp, -1681
                  ori          ra, t0, 159
                  sltu         a6, a2, a6
                  xori         a5, s10, 339
                  sll          s7, t0, tp
                  sra          t5, s9, s10
                  sltiu        s8, s1, -188
                  slti         a4, s0, -814
                  slt          a4, a5, ra
                  or           t3, a7, s5
                  addi         s1, s5, 2016
                  slti         a2, a1, 425
                  nop
                  xori         a2, a4, 351
                  lui          a4, 564742
                  sub          sp, a0, s3
                  srl          a7, t3, a5
                  addi         sp, s10, 2023
                  sub          s10, gp, a1
                  sltiu        a2, a7, 1326
                  lui          s10, 855543
                  lui          gp, 415563
                  auipc        s4, 317712
                  auipc        s2, 765701
                  lui          s9, 354831
                  or           a6, a1, s3
                  slt          s2, s6, zero
                  add          s11, t2, t5
                  sltiu        s9, a5, 610
                  slt          s7, s2, a4
                  srli         s1, a3, 7
                  nop
                  nop
                  sltu         s0, a7, s7
                  slti         s7, t1, 733
                  lui          s11, 72654
                  srli         s4, a5, 2
                  sra          s3, ra, s0
                  xori         s1, a6, -376
                  xor          a4, s2, s3
                  sub          a3, s4, t6
                  addi         s8, a0, -1235
                  andi         s6, t5, -955
                  andi         s8, s8, -1869
                  andi         a6, t3, -1562
                  nop
                  addi         s1, a3, 186
                  ori          t5, s2, -1136
                  and          s6, t0, s2
                  slt          s5, t4, t1
                  lui          zero, 513463
                  sub          a1, t1, a5
                  auipc        s5, 487033
                  slli         a4, s6, 15
                  slti         s6, a4, -1830
                  addi         a6, s9, -883
                  srai         a5, s11, 28
                  sra          s7, a4, t1
                  addi         ra, s8, 1005
                  lui          a2, 837066
                  slt          s9, s4, s9
                  sltiu        a5, s7, -518
                  ori          gp, a2, -1829
                  srli         a1, t3, 20
                  addi         s1, t2, -603
                  slli         s4, zero, 18
                  nop
                  slti         ra, s7, 1014
                  ori          tp, s7, -375
                  xor          a2, ra, s10
                  xori         ra, s5, 906
                  slt          sp, a5, t0
                  sll          s9, s3, s0
                  sltu         t6, s5, t0
                  srl          s7, a1, t5
                  nop
                  addi         gp, s11, -1440
                  srl          t0, a1, s5
                  xori         s5, zero, -1711
                  ori          t0, a7, -1543
                  sra          a1, a5, s4
                  slli         t4, s2, 29
                  add          sp, sp, a6
                  sltiu        s1, a1, 485
                  slti         s3, t0, -152
                  xori         a7, t1, -1431
                  slt          a1, s7, a2
                  add          s11, t4, a7
                  addi         s10, t0, -1070
                  sll          a6, a0, t1
                  or           t3, s3, s5
                  sra          s0, s8, gp
                  and          s10, a2, a0
                  sra          s5, a3, tp
                  xori         s3, a4, -924
                  xori         gp, s4, 568
                  addi         a4, s8, 1282
                  xori         t5, s0, -816
                  add          s4, t2, gp
                  ori          s4, t2, 1003
                  or           s5, s2, s3
                  slti         sp, t6, -199
                  add          s10, s0, s6
                  slt          s11, s5, s11
                  slli         ra, s7, 1
                  sll          t3, a3, a2
                  slt          s10, tp, a4
                  nop
                  andi         s6, t0, -51
                  slli         a4, t4, 2
                  nop
                  auipc        t6, 809388
                  andi         t6, s6, -5
                  slti         a7, a2, 762
                  addi         tp, s9, 1227
                  ori          s5, a2, -1200
                  or           gp, a6, t0
                  lui          a5, 938517
                  xori         a2, s5, 1193
                  nop
                  auipc        zero, 1027131
                  and          s4, sp, sp
                  auipc        a5, 29087
                  ori          a6, ra, -1753
                  xor          t0, s4, s6
                  xor          t4, t1, s2
                  srai         sp, gp, 18
                  xor          s10, s0, a7
                  slli         s10, s5, 0
                  xori         s6, a3, -913
                  or           t0, s11, t1
                  nop
                  slli         s5, t4, 11
                  add          ra, t4, a7
                  sltu         s9, a7, t0
                  and          s6, gp, t2
                  sltu         t5, s5, tp
                  auipc        tp, 416185
                  srli         tp, t5, 0
                  xori         s5, t4, 140
                  sub          s5, s3, t0
                  add          s1, s9, gp
                  ori          a7, t0, 1571
                  sltu         s2, ra, s6
                  addi         a4, a3, 398
                  or           a5, a0, a3
                  ori          s2, s5, -1531
                  addi         s10, s5, 1587
                  ori          s7, zero, -32
                  sltu         a7, a7, s2
                  or           zero, a6, zero
                  sra          s6, t3, s5
                  slt          a6, s1, s7
                  srl          s7, t3, s5
                  slt          s0, a0, gp
                  sub          tp, t4, s11
                  slt          zero, s4, s6
                  slli         a7, t2, 24
                  sra          ra, t3, t6
                  addi         ra, a4, -1894
                  sltu         s0, s0, sp
                  add          t0, s6, a4
                  xor          s8, t3, t5
                  or           s9, s5, t5
                  nop
                  and          a1, a2, t2
                  srai         t0, t3, 5
                  lui          s4, 1009515
                  andi         s9, s1, -1865
                  or           s10, a7, a3
                  addi         s9, t6, 662
                  ori          a5, a7, 314
                  slti         sp, a1, -1800
                  sltiu        gp, s10, 1454
                  sltiu        a4, s9, -1296
                  nop
                  srai         tp, a3, 2
                  sub          s3, s11, a1
                  sub          a4, a3, a5
                  sra          a3, t6, s10
                  xori         a4, t5, 1353
                  and          s9, s1, s3
                  and          s10, s3, zero
                  slti         s3, s3, 1717
                  slli         s5, tp, 24
                  srai         ra, t5, 4
                  xor          t0, tp, t6
                  slt          t4, s0, a6
                  xor          s4, a6, ra
                  slti         s7, gp, 578
                  xori         s9, s9, -287
                  nop
                  add          a3, s1, s2
                  xori         a2, s4, 1629
                  auipc        s3, 426135
                  and          ra, s5, a1
                  sltiu        s0, s9, -1929
                  ori          s5, a3, 575
                  slt          s6, a2, tp
                  ori          s11, s6, 746
                  xori         s6, sp, 85
                  sll          s2, ra, s1
                  sltu         ra, s6, tp
                  lui          zero, 347163
                  slti         s1, s4, -1178
                  slti         t0, t3, -412
                  srli         s6, s4, 13
                  auipc        a5, 230172
                  and          gp, a5, a0
                  slti         s10, s2, -1957
                  addi         s5, s11, 628
                  and          s7, a7, gp
                  lui          gp, 633841
                  xori         s9, a7, -1125
                  srl          tp, s6, a2
                  srl          sp, s2, s10
                  srl          s7, t3, s4
                  srli         t6, ra, 15
                  sra          zero, ra, s2
                  and          a2, s1, s6
                  addi         ra, t3, 1049
                  sltiu        a4, s9, 1445
                  auipc        t3, 122917
                  sll          tp, t4, t4
                  andi         s9, s1, 1836
                  and          s0, s10, s6
                  xor          a4, s7, s3
                  ori          a6, a1, -39
                  srl          a6, t2, s7
                  srl          s0, gp, s6
                  or           s1, t2, t0
                  xor          a3, gp, ra
                  slti         s11, s5, 153
                  sra          t5, t5, a3
                  add          s11, s8, s10
                  sll          t0, t2, s5
                  ori          gp, s4, 1698
                  xor          t6, s6, a1
                  sub          s2, s9, a0
                  or           a1, s5, t1
                  or           s5, s3, t2
                  sltu         a3, t4, t3
                  add          sp, sp, t6
                  or           t3, a4, zero
                  slt          s7, s1, zero
                  add          a7, s8, s0
                  sub          gp, t4, s0
                  or           s11, a0, a2
                  sltiu        gp, a0, 1227
                  sra          tp, ra, a3
                  xori         ra, t6, -1112
                  slti         s8, s2, 2034
                  add          s4, a5, t3
                  or           a1, a0, a5
                  xori         s9, a2, -467
                  nop
                  add          s6, t5, t2
                  slli         t6, t6, 13
                  xor          a4, tp, s0
                  addi         s1, sp, -900
                  lui          a4, 919214
                  sll          a2, a1, a0
                  slt          zero, t3, a2
                  srli         s5, zero, 28
                  andi         s8, t0, -461
                  addi         s2, s11, 1670
                  or           a3, s5, a5
                  ori          s9, t3, 1025
                  sra          sp, gp, s1
                  slti         t5, t6, -1926
                  sll          s7, sp, s11
                  srl          a3, s10, zero
                  sub          a7, s11, a6
                  sra          a6, a6, ra
                  slti         ra, a4, -808
                  addi         t4, a1, 796
                  srl          a4, t0, a5
                  sll          sp, s10, a4
                  add          s7, zero, gp
                  xori         sp, zero, -934
                  sra          s10, s4, a3
                  xor          s3, s6, sp
                  sll          ra, s10, s3
                  andi         a5, a2, 624
                  sra          s4, s10, t1
                  srli         s9, s3, 14
                  slt          t0, s8, a1
                  sltiu        s8, s5, -940
                  ori          t5, s1, -1248
                  xori         t0, tp, 1527
                  sra          a6, s4, s0
                  slti         s11, s5, 87
                  auipc        a3, 138259
                  or           zero, s2, s7
                  srai         a4, t3, 7
                  slti         s11, zero, 1549
                  slti         sp, a7, -1635
                  andi         s11, a1, -1006
                  sra          ra, t2, a5
                  slli         s1, t5, 8
                  slli         a3, tp, 17
                  ori          a3, s9, -321
                  slt          t3, gp, a1
                  addi         s7, a4, 1719
                  sltiu        t0, gp, -1155
                  srl          a1, a6, s1
                  xor          t5, a1, s8
                  sra          s6, s6, s9
                  sub          a4, s6, a1
                  sltiu        s4, t3, -915
                  slli         t5, s10, 19
                  lui          a3, 914686
                  auipc        t5, 855172
                  slli         s3, a0, 14
                  slti         s8, s11, -1354
                  or           a2, ra, t2
                  lui          s6, 734070
                  nop
                  andi         tp, gp, -333
                  ori          s1, t6, -1996
                  nop
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_30
                  li           t5, 0x80000000
                  li           s5, 0x0
                  li           t4, 0xffffffff
                  li           s2, 0xb5dca3ba
                  li           s11, 0x80000000
                  li           s8, 0x80000000
                  li           ra, 0x6ee8e74e
                  li           a6, 0xffffffff
                  li           sp, 0x80000000
                  add          sp, t5, t5
                  sub          sp, ra, s6
                  auipc        s8, 474357
                  nop
                  lui          ra, 134494
                  add          s5, t4, s2
                  add          s5, t5, s11
                  auipc        s2, 155170
                  auipc        t5, 980092
                  add          ra, t5, s8
                  addi         s11, ra, 654
                  add          t4, s11, s5
                  lui          s11, 747630
                  nop
                  auipc        sp, 689163
                  add          s5, sp, t5
                  auipc        t5, 678504
                  auipc        s11, 405034
                  sub          ra, t4, t4
                  lui          s6, 896603
                  auipc        ra, 625174
                  auipc        s11, 608237
                  addi         s2, t4, -1463
                  lui          s2, 340218
                  addi         t5, s5, -1083 #end riscv_int_numeric_corner_stream_30
                  or           s2, a5, zero
                  srai         tp, t6, 13
                  sltiu        s11, s11, -1539
                  srl          a2, s5, a5
                  andi         a2, s1, 260
                  srai         gp, s5, 10
                  or           gp, s2, a1
                  sltu         s1, t2, t6
                  and          a4, s5, s5
                  sltiu        s6, t4, -51
                  add          s8, s5, s3
                  srl          s9, s1, a7
                  sub          tp, a6, tp
                  srli         s2, s10, 28
                  sltiu        s7, a3, 1822
                  sll          s11, a4, s6
                  xor          s1, a4, s11
                  slt          a3, a7, a3
                  srl          t4, t0, t2
                  nop
                  auipc        ra, 360927
                  addi         s1, t5, -295
                  lui          s4, 292282
                  sltiu        s2, a6, -1620
                  or           s6, a3, sp
                  sltiu        s11, a3, 1421
                  auipc        s8, 434353
                  sll          a1, a3, sp
                  xor          t5, s1, zero
                  or           s10, gp, t6
                  srl          s5, s0, a0
                  andi         a2, a7, -763
                  addi         sp, gp, 1964
                  sltu         t0, a6, a3
                  slt          s0, t2, s6
                  sra          a5, s4, t6
                  srli         s4, sp, 27
                  sltiu        s6, a3, 1722
                  srai         a3, a1, 7
                  xori         a3, t6, -1307
                  sub          s3, t5, zero
                  and          s1, a0, t0
                  slti         s9, tp, -720
                  srai         zero, zero, 6
                  xor          s0, a4, s5
                  xor          s5, t0, a4
                  xori         t0, tp, 1973
                  andi         gp, a2, 574
                  or           s11, sp, s10
                  nop
                  xori         a2, a0, 1878
                  or           t6, s5, s4
                  andi         a6, s0, 1327
                  slti         s6, s6, -1530
                  addi         s3, s7, 541
                  nop
                  slli         tp, zero, 21
                  slli         s0, a7, 26
                  andi         t4, a7, -296
                  addi         s8, gp, 264
                  sll          sp, s6, zero
                  slti         t4, a1, 1808
                  lui          t0, 358995
                  sltu         s9, a2, sp
                  lui          t0, 757763
                  sub          s4, t0, ra
                  ori          s1, a3, 1062
                  addi         a7, t2, 1309
                  xori         a2, s5, -953
                  xori         gp, s7, -68
                  slt          zero, t3, t1
                  slti         a4, t4, 1944
                  slt          s10, a7, t3
                  andi         s1, t1, -1571
                  srl          s2, s7, a1
                  srli         a7, s2, 26
                  andi         t3, s7, -1722
                  ori          s10, t3, 165
                  addi         s4, zero, -882
                  sra          zero, s8, a0
                  andi         a2, s8, 1592
                  lui          s0, 330514
                  sltu         gp, zero, a3
                  srli         s6, s4, 8
                  nop
                  and          s3, a4, s9
                  sll          s5, ra, a5
                  andi         tp, s11, -131
                  or           a3, gp, a6
                  addi         t6, s4, 575
                  or           a1, s10, zero
                  ori          gp, s8, 1586
                  nop
                  lui          a1, 844173
                  ori          s8, gp, -708
                  nop
                  andi         s6, s8, -1542
                  sll          s8, t0, s11
                  srli         t5, a6, 24
                  slli         t5, s3, 26
                  auipc        t5, 969548
                  sub          s3, t1, t0
                  xor          gp, s0, a6
                  and          a4, s3, s6
                  sll          s0, t3, tp
                  ori          a1, s10, 1523
                  srai         s6, t0, 21
                  sub          t0, s2, gp
                  andi         ra, t1, 1717
                  srai         t6, t0, 8
                  sra          a4, t3, ra
                  sltiu        s9, s5, 1043
                  slt          sp, s3, t0
                  sltu         t0, t3, a4
                  auipc        a7, 537282
                  slli         s5, ra, 16
                  sltu         a4, s9, sp
                  slt          s7, s6, s3
                  ori          a2, a1, -956
                  addi         s4, s3, -822
                  xori         a6, s5, 1514
                  nop
                  nop
                  nop
                  auipc        t5, 507329
                  srai         gp, zero, 3
                  sltu         s7, a7, a4
                  and          s0, s4, tp
                  sltiu        t3, a5, 103
                  sub          a5, t1, s2
                  ori          s7, sp, 801
                  srl          t5, s3, s11
                  sltu         s6, t3, a5
                  slli         t6, tp, 27
                  andi         s7, a0, -18
                  auipc        s4, 166553
                  sltu         a5, s11, a7
                  sll          t4, a0, t3
                  srl          a5, ra, t0
                  or           a7, a2, a4
                  slli         tp, a6, 9
                  auipc        s10, 963420
                  addi         s5, a6, 261
                  slt          s5, a3, s2
                  auipc        s6, 63878
                  sra          s7, t2, a2
                  sll          t5, a7, a2
                  nop
                  andi         a2, s5, -1958
                  srli         a6, s10, 0
                  xori         gp, a3, 408
                  and          s11, a4, ra
                  and          a2, sp, a4
                  add          tp, a1, s4
                  andi         s10, s8, 731
                  slti         t4, a1, -241
                  sll          t0, sp, s1
                  slt          a6, s7, a0
                  lui          zero, 469677
                  nop
                  xori         a3, a6, 143
                  slti         a4, sp, -1653
                  srai         s8, gp, 28
                  add          s7, s4, a3
                  ori          gp, ra, -1914
                  slt          sp, zero, t0
                  nop
                  slli         t0, s8, 28
                  and          s11, s6, t2
                  sra          s4, s3, s1
                  sltiu        tp, gp, -1533
                  sub          tp, gp, s0
                  sltu         s10, t6, s0
                  slli         s3, sp, 13
                  slli         t0, t6, 1
                  srli         a7, tp, 27
                  sltiu        s3, gp, -843
                  or           t0, a6, a5
                  sltu         s2, s0, a0
                  sra          a3, a0, s9
                  xor          s3, a0, s3
                  srai         a5, a1, 15
                  auipc        zero, 373124
                  andi         a3, t2, 1612
                  andi         s2, s0, 1617
                  sub          a2, s2, t1
                  slti         s7, s4, 312
                  lui          s9, 516551
                  sub          t5, s10, s3
                  srli         gp, s6, 1
                  andi         a2, s6, -1033
                  and          a7, a1, t2
                  xori         s11, t0, -1882
                  xori         sp, sp, -1420
                  xor          s10, s9, sp
                  slti         s5, t0, -1142
                  slti         a2, s8, -394
                  slt          a4, s9, a1
                  or           a6, t6, tp
                  auipc        s0, 585975
                  slt          a1, s10, t2
                  srl          s8, t0, s6
                  sub          sp, t2, s3
                  sll          a3, a3, gp
                  sltiu        s0, zero, 260
                  ori          sp, s11, -409
                  sub          s1, t6, s6
                  srl          a1, t0, t0
                  or           s6, a4, t6
                  sltu         s8, t6, s6
                  slli         a5, s2, 1
                  sra          s5, s10, a0
                  xor          s0, a0, a4
                  auipc        t3, 712028
                  slti         s5, s11, 1494
                  sub          s5, a7, tp
                  slt          t0, a7, s1
                  sub          s3, t3, s2
                  sub          s0, s4, s8
                  and          s3, tp, a2
                  and          t3, s4, s8
                  xori         sp, s9, -1025
                  srl          s10, a7, t1
                  sltiu        s6, t5, -1323
                  slli         s1, s7, 14
                  sltiu        a5, t2, 1557
                  slti         s5, ra, -953
                  srli         s10, s2, 22
                  xor          t5, t4, t1
                  srai         a4, s11, 11
                  sra          t6, s5, a0
                  sub          a6, t0, s2
                  lui          s6, 920258
                  and          s0, a5, t4
                  srai         t4, a2, 25
                  addi         s0, a6, 2018
                  slt          a2, a6, a4
                  srl          s6, sp, a0
                  sra          tp, s7, a3
                  ori          a4, ra, -199
                  add          s9, t1, a3
                  addi         sp, ra, -1473
                  ori          s7, s5, -1617
                  srl          a4, s2, s7
                  andi         s4, t2, 2023
                  sltu         s4, tp, a7
                  ori          a1, a7, -1208
                  andi         a4, s1, -21
                  sll          s7, a6, s6
                  xor          s7, ra, t5
                  slt          s9, a4, t1
                  srai         a4, s4, 22
                  xor          t0, a4, t5
                  sll          s1, a3, t3
                  srl          a5, a7, tp
                  add          a7, t5, a4
                  srl          t6, s10, a5
                  slt          zero, s2, s7
                  add          t4, a2, t4
                  lui          s2, 713231
                  or           s2, t4, a5
                  ori          a6, s4, -481
                  xor          s5, s10, a7
                  sub          zero, t4, a5
                  ori          a4, zero, 1844
                  sra          sp, s1, t0
                  slti         sp, s2, 62
                  or           a1, s8, t5
                  auipc        s2, 442178
                  nop
                  slt          s2, s0, a4
                  and          a1, a7, t1
                  xori         s11, zero, -261
                  auipc        s7, 892416
                  xori         s10, t1, -243
                  auipc        a3, 908993
                  sll          a1, a0, s11
                  xori         a2, s4, 588
                  sltiu        s8, t2, 1243
                  addi         sp, a1, -1108
                  or           s6, a4, ra
                  or           a4, t0, zero
                  add          ra, a3, s0
                  srl          tp, ra, a4
                  ori          t5, t0, 1793
                  srli         s8, s1, 16
                  slli         s7, t0, 29
                  addi         t0, s2, 760
                  andi         a2, a5, -1473
                  slti         s7, s10, 1621
                  andi         tp, s2, 1337
                  srl          s1, s9, a7
                  srli         s2, t3, 20
                  xor          ra, sp, s8
                  lui          a7, 94295
                  sll          a5, s8, s9
                  lui          a5, 200309
                  sll          s6, s2, t4
                  sub          sp, a7, s0
                  sltu         t6, s5, t6
                  add          s0, s0, a4
                  srli         s1, zero, 2
                  sll          a7, s5, t4
                  xori         ra, a0, -1194
                  sll          a7, s0, t1
                  sll          a1, a3, a5
                  slli         t6, s2, 3
                  addi         t6, t6, -1312
                  sra          sp, s8, s5
                  and          a7, t0, a4
                  addi         s8, s7, -1736
                  ori          s7, a2, 1662
                  andi         s5, t1, 1535
                  and          tp, a7, a4
                  sltu         t0, a6, t5
                  sltu         sp, a5, s4
                  sltu         tp, a5, t1
                  sub          s8, t3, s1
                  sll          zero, t3, a0
                  sltu         s5, t0, t0
                  sra          s1, t5, sp
                  xori         ra, s1, 1184
                  srai         s4, tp, 25
                  srl          a4, s3, s8
                  srai         sp, sp, 6
                  slt          a5, s4, t5
                  sltiu        t4, s8, 1052
                  srai         zero, s1, 4
                  nop
                  ori          s2, s10, 390
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           gp, 0xf17ad970
                  li           s7, 0x80000000
                  li           a2, 0x0
                  li           t0, 0x0
                  li           s5, 0xffffffff
                  li           s1, 0x0
                  li           t6, 0x80000000
                  li           s8, 0x0
                  li           tp, 0x80000000
                  lui          s8, 858055
                  sub          a2, s1, t6
                  add          a4, gp, s5
                  sub          s5, t0, s8
                  add          gp, a2, gp
                  auipc        gp, 735758
                  lui          a4, 960930
                  sub          t6, s8, t6
                  add          s5, s5, t0
                  lui          gp, 37479
                  auipc        s5, 642610
                  addi         s5, a2, -1093
                  nop
                  sub          s1, t0, s5
                  nop
                  sub          s1, t6, s1
                  nop
                  lui          s7, 970453
                  nop
                  nop
                  addi         s8, gp, 1820
                  lui          s7, 443250
                  auipc        tp, 360982
                  nop
                  lui          tp, 49247
                  add          tp, t0, s5
                  auipc        s7, 691806
                  auipc        tp, 693351
                  addi         s1, tp, 578
                  lui          t0, 870917 #end riscv_int_numeric_corner_stream_21
                  or           zero, t0, s6
                  slti         tp, s4, -1983
                  auipc        ra, 675409
                  slt          s8, s2, t4
                  xor          a1, s4, s8
                  srai         a6, zero, 23
                  auipc        s5, 429432
                  sltu         s5, s7, a7
                  nop
                  andi         t6, a1, -1592
                  addi         s8, t6, 1041
                  sub          s4, s5, s11
                  sub          a2, s0, s4
                  srai         zero, a7, 3
                  or           sp, s4, s1
                  sra          t0, a3, s0
                  nop
                  nop
                  lui          s0, 222943
                  slt          t3, a0, a2
                  sra          tp, a2, a3
                  or           s1, t4, sp
                  slt          s10, t1, a3
                  slli         s7, a7, 6
                  xor          zero, s11, s2
                  sltu         a5, t4, a6
                  sltu         ra, a5, t4
                  slli         a2, s6, 25
                  slti         a2, t5, 1895
                  or           s1, s2, a4
                  sll          s10, t5, s2
                  srli         a7, s11, 0
                  lui          s2, 218723
                  slli         s2, a7, 27
                  lui          t3, 1014889
                  sltiu        s11, s3, 658
                  nop
                  and          s5, t0, t3
                  add          sp, t2, a4
                  slli         a7, t1, 0
                  slt          s7, a1, t6
                  slli         tp, s10, 5
                  andi         zero, t3, 751
                  ori          gp, zero, 258
                  sll          s5, a0, s7
                  add          tp, a2, t3
                  sub          s0, a7, a2
                  srai         s9, a7, 17
                  and          t0, s7, t5
                  and          a6, s0, a5
                  slli         t0, t2, 21
                  slt          t6, gp, t1
                  sltiu        tp, a0, -790
                  nop
                  slli         a2, a2, 21
                  srai         s3, a1, 13
                  and          s9, a5, ra
                  sltu         a1, s9, t2
                  srai         a6, a5, 7
                  or           a7, a2, t3
                  lui          s3, 58467
                  lui          s9, 270050
                  sltiu        s10, s8, -1389
                  auipc        s3, 328743
                  xori         a5, gp, -1007
                  addi         a1, t2, -1456
                  add          s9, t6, t2
                  addi         ra, a0, -1582
                  ori          t0, s9, 387
                  auipc        sp, 164481
                  srl          s5, a1, a2
                  lui          gp, 66890
                  add          s7, s5, s9
                  sltiu        a4, s0, -1837
                  sub          s11, s11, a1
                  add          s0, ra, ra
                  srli         t4, t6, 19
                  slt          s0, sp, s11
                  srai         s8, a5, 31
                  andi         sp, s3, -721
                  add          s7, ra, tp
                  sltu         a1, sp, t6
                  sub          s0, a3, t1
                  add          a4, s8, s1
                  slli         a3, s7, 0
                  addi         t3, s9, 196
                  sltu         sp, s9, t6
                  xori         a6, a3, 420
                  sltu         zero, s9, s11
                  sll          t5, s8, s3
                  sub          t5, a7, a1
                  srl          s7, zero, t0
                  and          s9, t0, a0
                  and          s4, t6, s5
                  slli         t0, s0, 7
                  slti         tp, s10, 1055
                  and          t4, a6, a1
                  slti         ra, t5, 679
                  slt          ra, a2, sp
                  xori         a2, s11, -1489
                  srli         t6, a6, 30
                  and          s6, a4, sp
                  addi         sp, a5, 1145
                  and          a4, s0, s10
                  andi         s4, s4, 1629
                  sll          sp, a6, s2
                  sltiu        a3, gp, 1781
                  lui          sp, 851120
                  addi         a4, t2, 123
                  and          a4, s3, s9
                  ori          s8, t2, -190
                  or           t4, s9, a6
                  slt          t3, s8, s7
                  sll          s7, s9, a2
                  srl          a1, t1, a7
                  srl          tp, a5, s3
                  sub          a4, t0, a1
                  or           a3, sp, s5
                  nop
                  srli         t6, s7, 29
                  lui          a4, 562460
                  slt          s0, a2, s7
                  xori         tp, t4, 1369
                  nop
                  xor          s9, s3, t2
                  sltu         a6, a4, a0
                  xor          s8, a6, a7
                  sra          sp, gp, a4
                  sra          s0, s5, t4
                  lui          a2, 986236
                  sltu         s2, a5, t0
                  srl          t5, a6, a6
                  srai         gp, t1, 27
                  sub          s6, s9, t6
                  sll          s10, s6, s10
                  add          s8, a4, sp
                  nop
                  addi         s4, s1, -1015
                  lui          a7, 578979
                  andi         ra, s1, -352
                  slt          s5, t4, t1
                  slt          t0, a0, sp
                  or           a3, t3, s5
                  nop
                  andi         s9, s2, 1016
                  xori         a3, s9, 530
                  sub          t4, a1, a1
                  ori          s6, s11, 1173
                  lui          sp, 304324
                  auipc        s1, 862208
                  andi         s8, s9, -1447
                  srl          a3, a5, t0
                  srai         s1, sp, 0
                  lui          s3, 87832
                  auipc        a7, 812473
                  srai         a4, s10, 6
                  slti         s9, a5, -847
                  sub          s2, s5, s0
                  or           s6, ra, a3
                  or           sp, t1, t5
                  sltiu        s4, a6, -1677
                  andi         a4, s11, -1857
                  xor          t0, a5, s2
                  slti         gp, a6, 1284
                  srai         s9, t0, 23
                  slli         a3, s10, 18
                  slti         s10, s1, -1511
                  sltu         ra, a3, a4
                  auipc        s9, 665535
                  xori         s10, s1, -1877
                  ori          t3, s4, -1685
                  lui          ra, 1037078
                  srai         t6, t0, 4
                  srai         t4, a7, 17
                  slt          t3, a1, t1
                  xori         t0, s2, 1771
                  or           s4, s3, t6
                  addi         zero, s9, -2026
                  xor          a5, a3, a2
                  xor          s4, t2, t2
                  andi         a4, a5, -7
                  srl          zero, s4, s4
                  ori          s11, gp, -1498
                  xori         s3, s6, -997
                  srl          s8, a2, s7
                  slti         s2, s3, -1519
                  srl          a4, a4, t1
                  nop
                  xor          a1, s10, a0
                  xor          s8, a5, tp
                  or           s2, a6, t5
                  sltiu        a3, a6, 1817
                  xori         t6, a4, -550
                  slli         s2, t5, 28
                  sll          s9, a5, sp
                  nop
                  nop
                  sra          t0, a5, zero
                  sltu         t0, s6, s3
                  srl          a6, s9, s11
                  and          s5, s4, t2
                  sra          t4, gp, sp
                  auipc        s2, 348940
                  srli         a7, s0, 30
                  slli         gp, t3, 7
                  sltiu        a6, ra, 510
                  addi         s8, s0, 1398
                  sltu         s9, s0, ra
                  auipc        s4, 749095
                  sltu         a5, a7, tp
                  sra          a6, sp, t6
                  srl          s8, a7, t1
                  slti         zero, s7, 548
                  ori          t6, a2, -1447
                  or           a1, t2, s2
                  xori         s0, t3, 215
                  xori         s4, t4, -1452
                  xor          gp, s6, s10
                  srai         s10, a4, 2
                  addi         gp, sp, -763
                  auipc        t0, 738089
                  slti         a1, t6, -1757
                  sltu         sp, t6, tp
                  andi         gp, a7, -1760
                  sll          s10, t4, s5
                  addi         s3, t4, -511
                  sub          a7, a7, s4
                  sll          a6, gp, tp
                  slti         s4, a6, 1204
                  add          a2, a7, a7
                  addi         s0, t2, -357
                  and          s2, a3, s8
                  slti         tp, a5, -285
                  andi         gp, s6, -1500
                  auipc        s4, 284984
                  slli         a7, t3, 9
                  sra          t5, s8, tp
                  ori          s7, sp, -1479
                  slli         ra, gp, 24
                  srl          s7, s0, a3
                  auipc        s4, 937152
                  ori          s6, t0, -638
                  sub          sp, t2, t6
                  nop
                  srai         s1, t5, 0
                  sll          s0, s4, s5
                  or           a1, s6, t1
                  ori          a1, zero, -253
                  and          a5, s11, t5
                  nop
                  addi         sp, gp, 2005
                  andi         t4, a7, 748
                  nop
                  sltiu        s1, t2, 455
                  nop
                  sub          t0, s5, s2
                  srai         s11, tp, 28
                  slti         s6, t1, -186
                  or           s2, a0, t0
                  sll          s6, zero, s4
                  and          s0, t3, s0
                  slli         ra, zero, 10
                  srli         a7, a2, 6
                  lui          gp, 259319
                  slt          a4, t3, tp
                  addi         zero, a1, -1826
                  sltu         a1, sp, s7
                  auipc        s11, 458256
                  slli         s5, zero, 14
                  addi         tp, s2, 630
                  sub          s8, a5, t2
                  srli         s9, s3, 5
                  xori         gp, t4, -1658
                  andi         s4, s9, 802
                  andi         t5, s10, -1305
                  or           s4, t2, t4
                  slli         s0, a5, 11
                  or           s11, s2, t2
                  xori         sp, s1, 684
                  slt          s1, s3, a0
                  xori         a3, a6, 191
                  sub          s0, t2, a6
                  sltu         s6, t6, s5
                  addi         ra, a1, 142
                  xori         a2, sp, -392
                  xori         t5, s9, 1795
                  srli         s1, t1, 16
                  srl          t4, t1, a5
                  slli         s10, s0, 25
                  ori          tp, s10, 694
                  srli         a6, t1, 18
                  or           a7, a2, s1
                  sll          t0, s5, t1
                  sltiu        s0, a0, 1528
                  auipc        s9, 95291
                  sra          s5, t0, t4
                  and          a2, a4, s5
                  or           t4, t6, t6
                  srl          t6, t2, s8
                  sub          s0, s3, s4
                  lui          a6, 873551
                  sll          s3, s1, t2
                  sll          gp, t4, t5
                  slt          a1, s6, ra
                  xori         s6, s10, -108
                  ori          t6, s7, -583
                  sll          s11, t5, a3
                  ori          s3, a6, -828
                  srai         zero, s4, 20
                  ori          s4, ra, 1227
                  lui          s10, 384992
                  slti         s4, sp, 423
                  srai         t3, t5, 25
                  addi         a2, t1, -1809
                  sra          s9, a3, s4
                  or           s2, s4, zero
                  lui          gp, 318738
                  xori         ra, sp, 1221
                  sra          a7, a6, s5
                  srai         s8, s11, 6
                  sll          s9, a6, s1
                  slti         t4, a4, -935
                  add          t0, s3, s6
                  xor          s8, t5, a1
                  or           t0, t0, s8
                  srai         tp, ra, 31
                  xor          a4, s4, a3
                  srai         sp, s9, 4
                  nop
                  add          s1, tp, a1
                  auipc        a4, 184686
                  slt          s7, s11, sp
                  nop
                  andi         sp, s5, -268
                  srl          s0, s1, a4
                  nop
                  slt          sp, s7, t3
                  sltiu        s3, a5, -1525
                  sra          s8, a5, a6
                  nop
                  srli         s1, a2, 4
                  srl          t0, a5, t5
                  lui          s10, 595970
                  add          a5, s0, s1
                  sltu         s2, s3, a0
                  add          ra, s0, s7
                  srli         s6, t4, 7
                  srl          gp, gp, sp
                  auipc        s4, 709359
                  srl          a7, a7, t6
                  srl          t4, a6, t4
                  slti         s9, a7, 1014
                  xor          tp, t0, s2
                  or           s11, s11, sp
                  sltiu        a7, s0, 1347
                  xori         a3, a2, -979
                  ori          a1, t2, 974
                  slli         s10, a7, 30
                  sltiu        a6, s6, -1112
                  sll          s4, t3, s6
                  xori         s7, a1, -626
                  and          s2, a4, t1
                  srl          s6, a2, s2
                  add          a7, zero, s9
                  or           ra, a6, a6
                  add          zero, t4, a2
                  add          s6, s8, t3
                  slt          a1, t4, tp
                  slli         a4, t3, 7
                  srli         a1, ra, 26
                  srl          t0, a4, a0
                  ori          s2, t0, 728
                  or           s4, s3, s7
                  auipc        s3, 384086
                  srl          s5, ra, t6
                  or           t3, s8, t6
                  slli         a4, ra, 8
                  xori         s0, sp, -1006
                  xor          a4, a6, t0
                  sra          t6, a1, a7
                  or           s0, zero, s0
                  andi         a4, s6, -1868
                  sltu         s7, a6, s3
                  xori         a1, s2, 1408
                  andi         zero, t3, 526
                  xor          s7, sp, t2
                  nop
                  nop
                  sltiu        s7, s8, 1408
                  addi         s4, ra, -781
                  slti         gp, a7, -780
                  or           s1, s9, s5
                  or           t3, s1, s10
                  or           s10, s8, s11
                  srl          sp, t2, s1
                  sltu         t3, s5, t2
                  andi         s3, gp, 252
                  and          sp, s1, t3
                  nop
                  or           s10, a1, t6
                  sltu         s5, s9, s11
                  ori          sp, s3, -1182
                  auipc        ra, 140863
                  xori         gp, sp, 192
                  sltu         s0, a1, s4
                  srai         s7, a7, 5
                  sltiu        s0, t5, -767
                  slti         a6, a5, 214
                  sub          s3, s5, t4
                  srai         a5, a1, 27
                  srli         s5, tp, 6
                  xor          a5, s3, s10
                  auipc        a5, 756072
                  sltiu        s6, sp, -1610
                  sra          tp, a3, a5
                  or           s0, t1, t5
                  slli         t5, a0, 22
                  slli         ra, zero, 20
                  sra          a5, a2, a4
                  auipc        tp, 923934
                  xor          a1, ra, t2
                  srai         ra, a1, 27
                  and          s2, a6, s4
                  sltu         a6, a4, a3
                  lui          t3, 298887
                  ori          s2, s0, 1309
                  srli         s3, a7, 3
                  nop
                  ori          s9, t1, 57
                  slti         s1, t3, 686
                  andi         t0, s9, -101
                  slli         s5, t6, 28
                  sltu         a7, s5, s6
                  sra          tp, s2, t3
                  slti         a5, t4, -1963
                  sltiu        sp, a0, -1255
                  and          s8, a5, a4
                  sltiu        s11, s9, -906
                  auipc        zero, 904020
                  nop
                  slli         tp, s11, 3
                  slli         s4, tp, 2
                  addi         s3, s11, 177
                  add          s8, s1, s2
                  sub          s11, s7, a6
                  or           a5, t5, t2
                  add          a2, t1, t1
                  addi         s8, gp, -176
                  sub          t5, s4, t3
                  srli         t6, s7, 12
                  sll          a2, gp, zero
                  ori          zero, a1, 366
                  add          s3, a0, s7
                  xori         s8, s1, 1409
                  srl          a4, t6, sp
                  srli         s4, s0, 27
                  andi         a4, a5, -1351
                  add          s9, s7, zero
                  sll          t0, a7, t6
                  add          s7, t2, s2
                  sub          s5, s0, s2
                  xori         a7, s9, -959
                  srli         t5, t5, 18
                  srli         t0, s6, 24
                  slt          a4, s5, s2
                  xori         t0, gp, -947
                  slt          s8, t2, s0
                  ori          a4, s0, 1489
                  addi         t4, s7, -427
                  auipc        s2, 139103
                  slt          s11, a7, s6
                  xor          s1, a0, s2
                  xori         a4, s2, 1945
                  and          s2, t5, s1
                  nop
                  nop
                  srli         a3, s6, 16
                  xor          s10, t2, s11
                  and          s0, a0, tp
                  and          s3, zero, s0
                  xor          s1, gp, t1
                  lui          a4, 706508
                  sll          zero, s0, a5
                  nop
                  nop
                  sra          a1, tp, s5
                  xor          s0, s3, t1
                  slli         t3, ra, 21
                  and          a5, a5, t2
                  andi         tp, t1, 1682
                  sra          s1, s11, s10
                  slli         a2, zero, 5
                  and          s11, s8, sp
                  ori          gp, s4, 1604
                  add          s10, s8, a1
                  and          s2, s8, s3
                  ori          sp, t0, -931
                  lui          a3, 396402
                  sltiu        t0, t4, -1051
                  ori          t0, sp, -263
                  slt          tp, s10, s4
                  sub          s2, t5, ra
                  srl          t5, a5, t5
                  srai         s5, tp, 7
                  sub          sp, t4, tp
                  sub          t4, s1, a6
                  xor          a5, t1, tp
                  lui          s1, 291158
                  xor          tp, s7, a2
                  srl          s6, s0, t4
                  sll          a3, s3, s0
                  slti         t0, s5, -1801
                  srai         a3, s8, 20
                  srl          s5, s3, t3
                  srl          gp, s2, s7
                  slt          tp, s8, sp
                  add          s6, s9, zero
                  srai         a5, gp, 14
                  sra          a7, sp, s9
                  and          t6, ra, a1
                  sltu         t0, gp, a5
                  addi         s0, sp, -652
                  xori         s3, a3, -865
                  sltu         s7, t5, a5
                  andi         t4, t3, -812
                  nop
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x80000000
                  li           t5, 0x0
                  li           gp, 0x80000000
                  li           s1, 0x80000000
                  li           ra, 0xffffffff
                  li           a5, 0x616b323c
                  li           a4, 0xffffffff
                  li           t0, 0xfe863615
                  li           s10, 0x0
                  add          s10, gp, t5
                  sub          s0, a5, s9
                  lui          s9, 1035567
                  lui          a4, 273288
                  add          a4, s0, s9
                  auipc        t0, 54925
                  lui          s9, 481035
                  lui          s9, 324560
                  addi         s0, t0, 1395
                  add          s0, a5, a5
                  lui          s10, 924844
                  lui          t5, 48351
                  sub          s9, s10, t0
                  lui          s10, 226669
                  lui          s1, 136456
                  lui          s10, 410672
                  sub          s0, s9, s1
                  auipc        gp, 787116 #end riscv_int_numeric_corner_stream_9
                  lui          s11, 533756
                  addi         s11, a7, 41
                  andi         a5, s4, 788
                  sll          t0, s2, a2
                  sltiu        t3, s5, 1383
                  sra          a1, a2, a4
                  and          s1, s7, s7
                  xori         s7, ra, 86
                  sltiu        t4, ra, -1482
                  add          t6, s5, s3
                  addi         zero, tp, 1524
                  ori          a1, s9, 315
                  xor          s0, s4, t1
                  srli         gp, s5, 2
                  ori          a5, a2, -1853
                  auipc        s8, 694242
                  srl          t4, a7, a5
                  andi         s5, ra, -131
                  srli         a7, s5, 7
                  sra          s6, s2, s0
                  lui          sp, 446854
                  auipc        s0, 619062
                  slt          s9, zero, ra
                  lui          s0, 222384
                  sltu         t0, t4, s11
                  sra          s6, gp, s0
                  or           sp, s8, s6
                  srl          s6, ra, s4
                  slt          gp, s6, t1
                  sltu         s5, s2, zero
                  sltiu        s2, s0, 1935
                  ori          a4, a4, -357
                  slli         sp, a0, 12
                  ori          a4, s11, 1593
                  xor          a3, a3, t3
                  slli         s10, a7, 3
                  srai         a7, t2, 0
                  xor          zero, t2, t2
                  addi         s0, a5, -997
                  sll          t6, t1, s4
                  slli         zero, t3, 23
                  srl          sp, a6, a0
                  addi         a6, gp, -1830
                  auipc        s7, 369475
                  and          t4, s4, a2
                  nop
                  nop
                  sll          t3, s0, a0
                  addi         a4, gp, -1944
                  sltu         s9, s1, a4
                  and          tp, t1, s9
                  srli         s4, s6, 7
                  lui          a6, 1008677
                  slt          t3, zero, t6
                  andi         s1, t1, 1548
                  sra          t4, t2, a4
                  srl          zero, s4, s7
                  srl          s7, sp, s11
                  sll          s2, t6, t2
                  sra          s8, s3, t5
                  nop
                  slli         s4, s10, 22
                  xor          sp, ra, s8
                  slli         s4, a2, 3
                  sub          s0, s0, t5
                  sub          sp, a0, t2
                  sltu         s5, t6, gp
                  andi         s11, t1, 676
                  xor          s1, s10, s7
                  xor          s7, s11, a2
                  auipc        a6, 264995
                  sll          a3, a1, zero
                  sltiu        a1, t0, 1246
                  slli         s9, t4, 17
                  sltiu        s7, s9, -1085
                  auipc        s11, 922247
                  andi         s5, s0, 1027
                  addi         s9, a1, 353
                  sltiu        zero, s4, 1091
                  lui          t5, 666191
                  xor          s1, s8, ra
                  and          zero, a0, tp
                  auipc        sp, 434565
                  sra          s3, t6, t3
                  sll          t0, a3, a4
                  xor          t6, t3, sp
                  xori         ra, a7, 1336
                  or           s11, gp, s8
                  andi         gp, a4, -919
                  addi         a6, s0, -1297
                  nop
                  srl          s11, t5, gp
                  srli         t5, gp, 6
                  srl          a5, s1, s2
                  srl          s11, t6, ra
                  xori         s6, s0, -1038
                  sub          a1, t5, sp
                  xori         zero, s0, 1108
                  slti         s7, s0, -1980
                  slli         t3, a7, 2
                  sltiu        s0, s10, 861
                  or           t0, s0, s10
                  lui          s2, 243315
                  xor          s9, t5, s5
                  slt          s4, a1, sp
                  sra          s10, a1, t3
                  ori          s8, t0, -390
                  slti         s6, s1, -1033
                  nop
                  andi         a6, s9, -894
                  or           s4, sp, s11
                  add          s2, t0, a6
                  srli         t0, ra, 13
                  ori          sp, sp, -26
                  ori          a1, s5, -1577
                  nop
                  or           t0, ra, a4
                  srli         s3, sp, 23
                  ori          a1, t4, 1096
                  sltiu        t4, t1, -145
                  srli         a6, ra, 23
                  sub          tp, t3, s9
                  nop
                  auipc        a7, 284495
                  and          t5, a2, a7
                  and          s1, s2, s0
                  sltiu        s0, s7, 1465
                  slli         a7, a3, 8
                  sub          t6, s0, ra
                  and          sp, t4, t2
                  auipc        s1, 63716
                  srli         s6, t3, 9
                  or           s5, a1, ra
                  slli         s3, t6, 21
                  slli         a1, t6, 17
                  sra          tp, s1, sp
                  sltiu        t0, a6, -954
                  lui          s11, 595007
                  or           s11, a4, a5
                  xori         s10, t5, -1563
                  srai         a6, a4, 9
                  add          zero, s8, zero
                  andi         s4, s2, 973
                  and          zero, zero, a7
                  srai         s5, t2, 20
                  auipc        t6, 1033185
                  add          a1, tp, t4
                  nop
                  sltu         s0, s11, s3
                  auipc        s5, 73080
                  sltiu        tp, s0, 1868
                  slli         zero, s5, 3
                  ori          a1, t1, -1690
                  slli         s11, a4, 0
                  srl          s6, a3, a3
                  sub          a2, a4, t4
                  addi         a1, s11, 198
                  sra          s9, a2, t0
                  slt          t6, s8, a2
                  sltiu        a4, zero, -486
                  andi         s10, a5, 1501
                  xori         a4, t0, -960
                  add          s3, t5, a6
                  xor          a1, gp, s5
                  add          s10, a6, s2
                  sra          a5, t6, a0
                  add          t0, a3, a0
                  xori         a4, t5, 1203
                  xor          s6, s10, s8
                  add          tp, s9, s10
                  xor          tp, a4, s3
                  slti         a4, s5, -1501
                  ori          t6, s3, -724
                  slt          tp, ra, s7
                  slti         s10, s6, -1493
                  ori          s8, a2, -565
                  srli         gp, s10, 7
                  sra          s2, t3, a3
                  auipc        s7, 610126
                  slli         s0, t5, 28
                  xor          s0, a3, s3
                  addi         gp, zero, -1315
                  nop
                  and          sp, s0, tp
                  xori         s10, s6, -499
                  nop
                  slli         s11, ra, 25
                  sltiu        gp, t5, 1259
                  sltu         zero, a7, a7
                  srl          sp, t1, t2
                  srai         a4, s5, 24
                  addi         a7, a2, -1911
                  slli         s4, zero, 7
                  ori          ra, a7, -2024
                  slt          s11, t0, t4
                  slli         ra, s1, 30
                  slli         s6, s9, 2
                  slt          a6, s8, ra
                  xori         zero, s9, 343
                  xor          s7, s9, gp
                  nop
                  slti         t0, t4, 970
                  addi         s9, t0, 214
                  xori         s7, a3, -1647
                  ori          a3, t6, -1663
                  xor          s6, sp, s1
                  srl          a4, a3, t1
                  slti         sp, t1, 909
                  slli         zero, a4, 19
                  sll          s8, s1, s10
                  slt          s9, t5, a4
                  sltiu        a7, a3, 868
                  and          a5, t1, a2
                  or           zero, a7, t3
                  slt          s7, t1, t0
                  sll          t0, s2, t3
                  sub          t6, s10, a7
                  addi         s3, ra, 1761
                  xor          sp, sp, s5
                  add          t0, s8, s0
                  auipc        t6, 972679
                  add          s9, t6, a4
                  slti         a7, a6, 1163
                  xor          s9, s11, a0
                  sll          a6, zero, a2
                  sll          s2, t6, a0
                  sub          a1, sp, gp
                  srai         s9, s4, 5
                  ori          s10, t3, 372
                  sra          t5, s3, gp
                  add          tp, t4, gp
                  srli         a5, t6, 3
                  and          s10, t2, gp
                  xor          zero, a4, a7
                  sltu         s4, ra, s3
                  srai         tp, s4, 3
                  addi         s8, a3, -453
                  auipc        a4, 991477
                  srl          s5, tp, a6
                  sll          s10, t2, zero
                  and          a4, zero, zero
                  srl          s8, s8, t2
                  sub          a3, s4, sp
                  slt          zero, ra, gp
                  slli         t4, gp, 8
                  xor          t3, zero, t2
                  sub          t0, s10, t5
                  auipc        s7, 953628
                  srai         t0, t4, 28
                  sltu         s8, a7, s1
                  add          s5, s5, s11
                  andi         s2, a6, 1548
                  sub          s10, gp, t1
                  sltiu        s4, a3, 1510
                  sll          s4, t2, ra
                  andi         zero, t0, 524
                  nop
                  and          a1, a1, t5
                  xor          t5, s7, s7
                  srli         s0, ra, 4
                  lui          sp, 273905
                  slli         t0, s2, 9
                  auipc        s6, 480241
                  sra          sp, t3, zero
                  srl          t3, a1, s6
                  slli         tp, t4, 19
                  slli         s2, t3, 23
                  add          s7, s6, s8
                  sub          a4, s0, ra
                  xor          a5, t1, a4
                  slti         s9, t0, -1853
                  sll          s1, tp, a4
                  sltiu        sp, t6, 1178
                  slli         s9, gp, 8
                  sra          gp, a6, s7
                  srli         a2, a0, 19
                  lui          s0, 105364
                  srai         s6, s0, 18
                  andi         s3, t3, 1847
                  sltu         a5, t4, s0
                  xori         s11, s5, 828
                  sub          a7, a4, a6
                  andi         s8, a5, 1855
                  add          tp, t2, tp
                  srai         zero, t4, 7
                  or           a5, t1, s11
                  ori          a4, a5, 210
                  slt          s1, t3, tp
                  sra          s11, ra, s9
                  andi         t0, a3, 1508
                  slt          zero, a1, s11
                  srli         t5, s2, 19
                  sll          s7, s1, t1
                  or           gp, s11, t4
                  xori         s5, t3, -1397
                  sra          ra, s2, gp
                  xori         t3, s2, -563
                  or           s4, s4, s3
                  sub          a3, a2, t4
                  slli         sp, t3, 21
                  slli         zero, s6, 6
                  andi         t6, s11, -1160
                  and          s8, s5, tp
                  srai         t5, a2, 25
                  xori         s10, s11, -333
                  nop
                  auipc        a3, 695407
                  srl          t4, a3, a7
                  auipc        s4, 988439
                  ori          s2, t2, 242
                  sll          a6, s0, s6
                  slti         a7, t4, 1978
                  slli         a2, tp, 15
                  sll          tp, a4, a7
                  srl          sp, t5, s10
                  auipc        gp, 749724
                  lui          sp, 45665
                  auipc        sp, 336695
                  sub          s2, s5, t5
                  srli         s0, a7, 19
                  srl          zero, s6, t4
                  srl          t6, s3, a5
                  addi         a7, zero, 267
                  auipc        t0, 634862
                  srl          a4, s11, a0
                  xori         t0, s4, 468
                  ori          a3, t3, -982
                  srl          s9, s8, t4
                  srli         s4, t3, 29
                  slti         gp, t1, -189
                  xori         s1, s3, -298
                  slt          t6, s1, s4
                  ori          s3, a6, -369
                  add          gp, t3, t5
                  auipc        s10, 865619
                  srl          gp, s0, s9
                  and          s6, t6, a6
                  sra          a4, a5, t1
                  ori          s9, s6, -1882
                  add          t6, s0, t0
                  sltu         s7, a0, tp
                  add          s4, s9, s6
                  xor          t4, a5, a3
                  srli         s7, s3, 19
                  sltu         a4, s7, t6
                  srli         a6, s9, 31
                  auipc        tp, 60065
                  add          s7, s8, a1
                  xor          s10, gp, a1
                  srai         tp, s8, 28
                  ori          s1, s0, -339
                  auipc        t6, 725875
                  slli         s8, s3, 2
                  lui          t0, 737313
                  sra          t3, s9, s4
                  srl          t0, s5, ra
                  sub          s1, gp, tp
                  lui          s11, 916424
                  sltu         a4, gp, s0
                  and          t0, tp, sp
                  slli         s10, tp, 20
                  srli         a5, a4, 31
                  sltu         s10, a0, tp
                  and          s2, a4, t2
                  addi         s5, sp, -410
                  lui          s10, 951652
                  add          s9, s6, t6
                  auipc        zero, 526688
                  auipc        s9, 507696
                  sltu         s4, s5, t3
                  sltiu        s8, s4, -2033
                  xor          s11, ra, t3
                  sltu         t5, t0, s1
                  sub          t4, t5, a2
                  srai         a5, t6, 23
                  sll          tp, t1, sp
                  srl          t4, a2, t4
                  sra          s0, sp, s10
                  andi         tp, a2, -720
                  lui          gp, 567597
                  auipc        s6, 722476
                  xor          a3, a5, a5
                  auipc        s3, 323465
                  or           a2, s4, a6
                  slli         s8, s7, 16
                  sra          a4, t2, t1
                  sub          a7, s0, tp
                  sltiu        t0, s3, 275
                  slli         t4, s2, 3
                  nop
                  lui          s8, 337532
                  or           s0, a1, s5
                  srli         s9, s1, 16
                  sll          s6, a3, a5
                  xor          t5, t1, s2
                  xor          a7, a4, s6
                  sltiu        t6, s7, 796
                  slti         a3, s9, 930
                  sub          s7, s1, s11
                  sra          a7, zero, gp
                  andi         s7, s1, -1099
                  srli         t5, t3, 29
                  slti         s3, s9, -2033
                  sll          sp, tp, a2
                  srai         sp, s7, 6
                  auipc        a3, 68790
                  addi         s2, t6, 234
                  and          a7, t0, t2
                  ori          a7, a6, 896
                  andi         s11, a5, 1876
                  sltu         t0, t2, s8
                  srai         a3, s5, 16
                  and          sp, t2, a1
                  sltu         t5, t4, sp
                  slti         s7, s2, -686
                  sra          s7, t4, a4
                  sra          sp, t2, a4
                  and          t4, s4, s5
                  sltiu        a1, s10, -297
                  slti         s4, a1, -1185
                  or           tp, a2, t6
                  auipc        gp, 746221
                  addi         a2, s11, 1266
                  lui          s8, 233401
                  sltu         s6, tp, s0
                  and          s2, s1, a1
                  srai         s9, s9, 1
                  addi         t0, s0, 1776
                  sll          a6, t0, t1
                  ori          s5, a0, -1372
                  andi         t6, gp, 1542
                  add          t4, zero, t4
                  slt          ra, a3, s8
                  srai         zero, t3, 3
                  sltu         ra, s0, sp
                  sltiu        s5, s8, 453
                  srai         zero, s3, 5
                  auipc        a3, 502815
                  ori          s0, s2, 1135
                  slli         a7, a5, 28
                  addi         t4, a6, -884
                  srai         a5, s6, 27
                  xor          gp, s3, a5
                  andi         a7, t2, 850
                  srai         s2, a5, 30
                  slt          s3, a1, gp
                  or           s8, gp, a1
                  sub          s3, a0, sp
                  ori          ra, a7, 1750
                  srai         a4, t0, 30
                  sll          s9, t1, s6
                  add          s10, s8, s6
                  or           s5, t0, a1
                  xor          a1, s11, s11
                  srai         t6, zero, 31
                  and          s5, a0, a4
                  slti         a4, tp, -125
                  xori         a6, sp, 1922
                  sltiu        gp, t1, -332
                  slli         s5, t2, 27
                  or           tp, t5, a6
                  sub          s0, a1, s3
                  andi         t6, s0, 657
                  sra          t4, ra, s3
                  srli         s8, s2, 16
                  auipc        a4, 858251
                  andi         a1, s11, 1204
                  sll          s3, a7, s3
                  andi         sp, a2, -301
                  addi         s2, a3, 1765
                  slt          zero, t1, t6
                  sll          a5, s10, s5
                  sltu         t6, t4, sp
                  sub          a3, a3, s11
                  add          s4, tp, s2
                  srli         a2, sp, 5
                  slti         zero, s3, 1951
                  or           a2, s0, s3
                  sra          s11, a0, a7
                  sltiu        s0, tp, 1152
                  xori         s2, a7, -445
                  slti         s8, s1, 219
                  sltiu        s8, ra, 1070
                  srai         a4, ra, 19
                  slt          t4, a4, a1
                  srli         a4, s5, 19
                  sub          t5, s6, t0
                  sltu         a7, s5, s9
                  slt          s1, s10, a2
                  slt          t5, s1, s9
                  srai         t3, s5, 4
                  add          a4, tp, gp
                  xor          sp, s1, tp
                  sub          s9, s10, t1
                  and          s10, t4, t4
                  and          s1, a3, a2
                  or           s0, t2, tp
                  sra          s9, ra, s3
                  srai         s11, a2, 2
                  srai         a1, s0, 9
                  nop
                  srai         t5, a5, 5
                  andi         s0, s3, -1585
                  sltiu        a7, s1, -545
                  srli         sp, s8, 1
                  add          a7, s8, ra
                  sll          s3, sp, s4
                  lui          t0, 1014540
                  slli         s6, t0, 12
                  xor          zero, s0, t3
                  auipc        a7, 566958
                  or           tp, t0, sp
                  add          s8, t6, t1
                  sltiu        s5, a6, -84
                  add          s0, tp, tp
                  addi         sp, zero, -40
                  sra          s2, t4, t4
                  andi         gp, s9, 953
                  nop
                  sltiu        zero, s1, 649
                  and          t5, s8, s1
                  lui          s9, 549933
                  sra          s11, t4, t2
                  slt          a1, a4, a6
                  nop
                  or           s10, s4, s0
                  slli         a7, a4, 26
                  slli         s9, a6, 19
                  addi         zero, t6, -853
                  and          a2, gp, s10
                  addi         t0, zero, -1531
                  srli         t0, s0, 22
                  addi         a1, a6, 1521
                  or           tp, a6, s11
                  srl          a4, a0, s2
                  srli         a3, t1, 3
                  sub          s8, a7, s10
                  ori          t3, a2, 189
                  sra          s11, a7, a6
                  xori         a5, s6, 1346
                  srli         s11, t3, 31
                  addi         t6, a1, 1932
                  add          t3, a4, a1
                  sll          t3, t4, t4
                  sra          a6, ra, t1
                  xor          a4, s4, s5
                  srli         s7, t6, 12
                  and          t0, tp, s9
                  andi         t3, zero, -1249
                  lui          gp, 980003
                  sub          a2, gp, s0
                  sltiu        s11, s8, -671
                  srl          a3, gp, a0
                  srai         t6, t0, 20
                  srai         s0, s11, 25
                  add          s0, a1, a3
                  srl          zero, zero, s10
                  xor          t0, t5, a5
                  slti         t4, a3, 1370
                  nop
                  sll          s0, a4, a0
                  auipc        s2, 324376
                  nop
                  auipc        a5, 219170
                  sltiu        s3, sp, 525
                  lui          s10, 600629
                  slli         s8, s11, 10
                  slt          s1, s9, sp
                  add          a2, a0, t5
                  nop
                  sub          s0, gp, t1
                  and          a4, t6, a7
                  srli         zero, a3, 17
                  add          a7, s7, sp
                  andi         gp, a2, 1574
                  slt          s0, a7, s3
                  xor          gp, s3, a7
                  srl          a5, a6, t5
                  sltu         zero, s4, sp
                  sltu         t0, a2, t4
                  slli         a3, t1, 11
                  ori          a4, s6, -2032
                  xor          s9, t3, sp
                  nop
                  srai         s4, a3, 1
                  nop
                  and          s8, a6, a2
                  lui          a2, 692582
                  srl          s0, t3, s6
                  and          t5, zero, t4
                  sub          s0, t0, t6
                  slt          a7, s1, t4
                  slti         s2, s3, 860
                  or           a3, a3, s6
                  sra          a3, s6, t3
                  lui          s3, 608143
                  or           s2, t4, s5
                  auipc        s10, 179711
                  and          zero, s11, s5
                  srli         s7, t0, 12
                  sra          tp, sp, t5
                  or           a3, a3, s1
                  sltiu        a7, t6, 1715
                  sub          t4, s4, s11
                  add          s10, a3, s3
                  or           s4, s3, s0
                  xor          t6, a7, ra
                  xor          t6, s5, zero
                  auipc        s1, 819841
                  xori         zero, tp, 225
                  srli         s11, a1, 25
                  xori         a4, t4, -359
                  auipc        a1, 106688
                  or           s2, s8, t0
                  nop
                  or           tp, tp, s3
                  and          s8, a7, a4
                  and          t5, gp, a6
                  sltiu        t5, s11, -555
                  nop
                  nop
                  and          a6, a7, s0
                  andi         a5, s0, -1517
                  sub          s3, a0, t6
                  srli         t5, a0, 31
                  sra          sp, a7, s11
                  lui          gp, 904651
                  addi         a4, s11, -1822
                  xori         a1, t6, -531
                  sra          s6, s4, t5
                  srl          s4, gp, ra
                  sll          a1, t3, s9
                  nop
                  xori         s4, a6, 1277
                  slt          a6, t0, t3
                  ori          a2, a3, -1298
                  sll          a3, s7, t4
                  lui          s8, 403711
                  slt          s5, s3, s7
                  slli         sp, a3, 8
                  addi         s0, s8, -880
                  xori         s0, t1, -1287
                  sra          s3, s9, s2
                  sra          t5, s2, gp
                  add          a6, t5, t0
                  ori          tp, zero, 935
                  xori         t6, gp, 508
                  and          s5, a2, a6
                  xor          t6, t2, t0
                  slli         s11, a7, 25
                  srl          t6, t4, gp
                  ori          s0, a6, 385
                  ori          a3, s4, -461
                  sub          a1, s5, zero
                  or           s3, s7, ra
                  lui          s7, 361506
                  srl          s9, a7, zero
                  sub          a5, tp, t1
                  sll          t6, s10, a4
                  slli         a4, a0, 5
                  sltu         s6, s0, s9
                  sltu         t0, tp, t0
                  sll          s6, t1, s0
                  add          a5, s1, a6
                  srli         s10, s0, 0
                  addi         s8, t2, 1287
                  addi         a3, t5, 878
                  xor          zero, s0, s4
                  andi         s1, a5, -235
                  auipc        s5, 707927
                  srl          t6, t6, a7
                  slli         s6, a6, 4
                  or           s6, t4, tp
                  lui          s4, 673124
                  srl          a4, t1, ra
                  xor          a3, s5, s9
                  srl          s7, s0, t5
                  and          s7, s2, t4
                  sub          sp, t5, t5
                  srai         tp, s7, 22
                  nop
                  sra          t0, sp, gp
                  sltu         t4, a7, s8
                  andi         t4, s11, -410
                  auipc        s6, 179861
                  slt          a4, s0, s4
                  xor          s10, t3, s9
                  sra          t3, s10, t2
                  lui          s1, 939333
                  nop
                  srl          a7, t2, t2
                  and          t0, s2, s0
                  andi         a2, s0, 271
                  srai         a4, a0, 28
                  sub          a6, t4, sp
                  lui          t5, 713258
                  sltu         s0, s2, a6
                  add          t5, s3, s6
                  sub          s11, s1, ra
                  slti         s0, t0, -520
                  slti         s11, s4, 692
                  sra          zero, a2, s7
                  srai         t3, t0, 15
                  slti         t4, zero, -438
                  srai         a7, a2, 20
                  sra          t0, gp, a5
                  nop
                  slti         zero, a0, -1628
                  sub          a7, a7, a5
                  sub          s7, s2, a3
                  slt          s9, ra, tp
                  xori         a5, t4, -1755
                  srl          s1, s5, s10
                  addi         a2, t2, -1221
                  slti         t5, s7, 381
                  lui          s4, 886952
                  srl          a2, s3, a4
                  addi         t6, s6, -1754
                  srl          t4, s2, gp
                  srli         sp, a2, 31
                  sll          t5, s2, s6
                  slti         s11, s11, -879
                  xor          s7, a7, s8
                  sll          t4, s6, s4
                  srai         s1, a3, 21
                  slli         s8, a1, 3
                  auipc        t0, 531564
                  auipc        tp, 673511
                  xori         s4, s8, -562
                  slti         a3, t4, -674
                  xor          s10, s0, s3
                  li           ra, 0xc61140bb #start riscv_int_numeric_corner_stream_22
                  li           s10, 0x80000000
                  li           s6, 0x80000000
                  li           s2, 0x80000000
                  li           a6, 0x80000000
                  li           s11, 0x80000000
                  li           s5, 0x80000000
                  li           a5, 0x80000000
                  li           s7, 0xffffffff
                  li           a2, 0x0
                  auipc        s10, 94172
                  lui          a2, 1024039
                  sub          ra, ra, s6
                  add          s7, a2, a6
                  nop
                  add          a2, ra, s10
                  nop
                  addi         a2, s11, -1359
                  auipc        a5, 168731
                  lui          s5, 47916
                  auipc        a6, 356761
                  lui          a2, 989111
                  auipc        a6, 205136
                  auipc        a6, 1015624
                  nop
                  auipc        a6, 804502
                  addi         s10, ra, 830
                  nop
                  add          s7, a2, a5
                  sub          ra, ra, a5
                  lui          a6, 89174
                  nop
                  sub          a5, s7, ra
                  nop
                  add          a6, a6, s10 #end riscv_int_numeric_corner_stream_22
                  andi         t0, zero, 439
                  sll          s4, s1, tp
                  xori         t5, a4, -83
                  and          t6, t0, sp
                  sra          s11, a1, sp
                  slt          s10, a1, s9
                  addi         s0, t1, 1036
                  xori         s6, a7, -1318
                  addi         s10, zero, 1582
                  sll          t3, a0, t3
                  xori         a4, a2, 1591
                  and          zero, a3, a6
                  sra          s8, a5, a4
                  sltiu        a4, s9, 833
                  lui          s6, 35751
                  or           s0, s0, s5
                  xori         s2, s4, -700
                  slli         a7, gp, 16
                  srl          s6, t1, a5
                  auipc        s10, 833027
                  srl          a6, s5, a5
                  auipc        t0, 301269
                  add          s11, s6, t2
                  or           t4, t6, s10
                  and          t6, a0, s4
                  slli         t0, a2, 15
                  andi         s0, s8, 113
                  sltiu        a4, t5, 1780
                  xor          s8, t6, t3
                  auipc        a1, 962670
                  or           s6, s11, a4
                  slt          s8, s5, t6
                  lui          t6, 245063
                  sub          t3, a5, ra
                  sltu         t0, tp, s0
                  sltu         s2, s9, a0
                  slt          t0, s7, gp
                  auipc        t4, 783588
                  sll          a4, ra, s10
                  xor          a3, s2, a1
                  sra          ra, t2, s5
                  sltu         a5, s4, t4
                  andi         s7, t4, 1877
                  srai         t4, t6, 31
                  xori         s6, s1, -1393
                  slli         ra, s10, 1
                  sltiu        a3, a5, -1769
                  slt          s6, s0, s3
                  lui          s1, 653314
                  sra          tp, zero, ra
                  sltiu        a2, s7, -776
                  slli         t0, t2, 27
                  sltu         s10, a1, s0
                  srli         s4, s8, 27
                  nop
                  lui          a7, 734671
                  auipc        a7, 240971
                  sltiu        tp, t3, 201
                  xor          t5, s11, a0
                  auipc        s4, 409309
                  ori          s0, a4, -994
                  srli         sp, s5, 17
                  srai         a4, gp, 19
                  addi         s10, t1, -1456
                  xori         s5, t6, 424
                  sll          sp, s5, a7
                  addi         s5, s6, -1849
                  srli         sp, a1, 0
                  lui          s7, 705950
                  lui          t5, 863781
                  lui          t0, 322912
                  slli         a1, t4, 28
                  auipc        a1, 863789
                  slti         a6, s3, -1951
                  sltu         a3, t5, s2
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a4, 0x80000000
                  li           s7, 0xac0b2cc7
                  li           gp, 0x0
                  li           t6, 0x80000000
                  li           s1, 0x80000000
                  li           t4, 0x0
                  li           s10, 0x0
                  li           a5, 0x0
                  li           sp, 0x439dddaf
                  auipc        s1, 331321
                  lui          s7, 725457
                  nop
                  sub          a5, a4, t6
                  add          t6, gp, a4
                  addi         t4, a4, -1921
                  sub          s7, s2, s7
                  lui          t4, 657986
                  nop
                  add          s2, s2, a4
                  add          a4, s7, s1
                  nop
                  add          s7, t4, sp
                  nop
                  auipc        s7, 350748
                  nop
                  sub          gp, s1, a5
                  nop
                  add          gp, a5, a4 #end riscv_int_numeric_corner_stream_14
                  slt          s7, s7, ra
                  sll          s6, s4, zero
                  srl          t4, t4, a4
                  or           s8, a6, s3
                  sll          t5, tp, s4
                  andi         s3, s6, 801
                  xor          s0, s7, s6
                  sra          s5, ra, s10
                  xori         s10, s2, 1266
                  sub          sp, s11, t0
                  add          a4, s4, a7
                  sltu         s9, s7, s8
                  srl          ra, s10, s1
                  sub          s10, a6, a4
                  lui          s3, 852133
                  nop
                  srai         a2, a5, 19
                  andi         s10, a2, 1812
                  and          a1, s10, tp
                  sltiu        t4, s1, -1491
                  or           s4, s1, s9
                  xor          s4, zero, a1
                  srai         tp, s8, 18
                  slti         a6, t3, 770
                  slli         t5, ra, 12
                  xori         t4, s3, 1411
                  auipc        s8, 458286
                  slli         ra, s5, 28
                  nop
                  andi         s5, s10, 171
                  nop
                  sub          a5, a4, s10
                  addi         a5, zero, -1483
                  srli         s11, tp, 19
                  auipc        a6, 207802
                  ori          t6, tp, -1096
                  add          a4, a7, s0
                  sub          a5, a3, s5
                  and          t3, a2, s11
                  srai         t4, s6, 14
                  srai         s11, s1, 12
                  xori         s0, s7, -265
                  srli         a6, t4, 4
                  slt          gp, sp, s4
                  sll          a7, a7, a6
                  sltu         s7, s3, s3
                  or           a4, a2, zero
                  srli         s2, ra, 14
                  xor          a4, t3, t1
                  or           gp, gp, s9
                  xor          s4, s11, tp
                  slt          a4, s10, s8
                  sltiu        ra, s1, -716
                  nop
                  ori          a2, a3, -672
                  ori          ra, s8, 1803
                  addi         t6, t4, 1887
                  slti         a2, s0, 344
                  slti         s6, s5, -366
                  srli         s0, sp, 13
                  srai         sp, a0, 26
                  sra          s3, t0, s3
                  or           t5, t6, t1
                  xor          s10, tp, tp
                  slti         sp, t2, 439
                  ori          t6, s1, -2024
                  nop
                  slli         a2, s6, 15
                  sll          s10, s4, t1
                  srli         s6, a0, 16
                  auipc        t4, 710865
                  ori          s6, t3, 237
                  sra          s4, s5, t6
                  slt          ra, s5, s2
                  xori         sp, a7, -1140
                  sltu         t3, a2, s4
                  andi         s10, s11, 200
                  ori          t0, a7, 1983
                  and          zero, t4, t6
                  sltu         s7, a1, s6
                  or           s7, s5, t2
                  srli         a2, gp, 23
                  lui          s6, 661137
                  slli         t4, a0, 14
                  sll          sp, s3, a0
                  addi         s0, tp, 786
                  xori         ra, s6, -1587
                  srai         t0, s8, 26
                  addi         a2, a1, 186
                  sltiu        t6, s3, -44
                  slt          a4, t3, ra
                  addi         a5, s9, -573
                  sub          t4, s9, t5
                  srai         t5, sp, 16
                  auipc        t0, 485142
                  slt          s5, s7, ra
                  xor          gp, t2, a0
                  auipc        s0, 708605
                  srli         a1, a4, 2
                  add          t3, t1, t1
                  slli         s1, t1, 8
                  addi         t6, a7, -1542
                  ori          s5, s10, -299
                  sltu         s6, s11, sp
                  sll          a7, a6, s3
                  slli         s9, sp, 15
                  srli         sp, a7, 12
                  srl          a7, a1, t0
                  srai         s4, a7, 21
                  srl          tp, s6, a7
                  slt          s5, s5, t0
                  xor          s8, a4, a6
                  sltiu        t3, s10, 983
                  srai         s1, a1, 18
                  lui          a3, 474062
                  slti         a3, s5, 2043
                  sra          a2, s9, sp
                  srl          s10, s1, t6
                  sra          a4, s6, t0
                  sltiu        gp, t4, -250
                  slti         t4, s0, 1258
                  lui          gp, 521150
                  add          t5, t2, t3
                  xori         t3, gp, -275
                  srl          a7, t3, s0
                  addi         a3, tp, 794
                  slli         s8, ra, 10
                  srli         a6, a2, 0
                  add          s2, a1, gp
                  srai         a3, t2, 7
                  ori          s2, a0, 858
                  sra          sp, a2, t5
                  sll          s6, ra, s5
                  slti         s9, t5, -1716
                  nop
                  xori         s5, s4, -1940
                  slti         a2, s4, 478
                  srai         t0, t2, 25
                  nop
                  slli         a4, s10, 11
                  and          s7, s1, t0
                  xor          t3, t2, t3
                  xor          ra, s9, s11
                  srl          t0, s7, a5
                  sltu         a7, a5, s10
                  andi         s11, t3, 1697
                  andi         s8, s5, -420
                  slli         a5, a4, 6
                  srl          s11, a6, t1
                  sub          gp, a1, s11
                  sub          s9, zero, t4
                  andi         s0, a6, -1997
                  srai         a7, sp, 6
                  xori         a1, a1, 1521
                  sltiu        s6, t3, 815
                  sub          a3, a4, a4
                  or           s5, a1, t5
                  lui          s6, 642334
                  nop
                  and          t6, a5, a7
                  or           s10, sp, t0
                  sll          zero, t1, a1
                  sltiu        sp, t4, 98
                  slti         a6, s11, 2007
                  srai         s3, t6, 20
                  addi         s6, sp, -1802
                  sra          s9, a0, a5
                  slli         a6, s8, 0
                  ori          s4, a4, -1994
                  lui          t5, 10139
                  andi         t4, gp, -777
                  lui          tp, 563131
                  slti         s10, t5, 1801
                  sltu         t0, a4, t2
                  sub          ra, a3, s4
                  sll          gp, a0, s5
                  sltu         ra, s7, sp
                  and          t5, t3, s1
                  sub          t3, t6, s4
                  srli         s4, a6, 0
                  addi         s4, a2, 1636
                  sll          tp, tp, s6
                  nop
                  add          s6, s4, t4
                  lui          s5, 244570
                  sltiu        s11, s11, 391
                  ori          s6, s9, -44
                  add          s10, t4, s3
                  addi         gp, s10, 1179
                  slt          s8, sp, s2
                  xori         s7, s7, -139
                  lui          s10, 865288
                  lui          s0, 351756
                  sltu         s6, t1, a5
                  sltu         s7, a6, s8
                  sub          ra, s11, s4
                  ori          gp, t6, 499
                  xori         a4, a6, -447
                  ori          a4, s11, -1030
                  srli         a1, s11, 18
                  andi         s6, t4, 134
                  add          s5, t2, s9
                  slti         a6, s10, 685
                  auipc        s9, 742696
                  sra          s8, s6, t3
                  srli         s3, a7, 14
                  and          sp, a3, a1
                  sltu         t4, a0, t0
                  sltiu        a5, s5, -1693
                  sltiu        ra, t3, 261
                  sra          s7, s7, a6
                  sub          s4, s10, a6
                  xori         s7, t1, -1104
                  slti         s0, s11, 447
                  sll          a7, a4, t6
                  srl          a5, s6, a1
                  sltu         t0, s4, zero
                  sra          gp, ra, a6
                  ori          s10, s6, -1190
                  sll          a3, a0, a3
                  lui          s11, 862966
                  andi         s8, a6, -853
                  sltiu        s3, s2, 880
                  ori          a4, t2, 1938
                  slt          sp, s11, a0
                  sra          t0, s10, gp
                  sll          a6, t3, s0
                  sra          gp, a6, a7
                  sltiu        s5, s11, 1256
                  sub          s4, s8, s10
                  slt          s8, t3, s3
                  ori          s3, s7, -1004
                  ori          a4, zero, -1073
                  srl          a7, t1, s0
                  srl          s0, t2, s10
                  slti         s1, s2, 494
                  and          s10, t4, s7
                  slt          s3, s3, s9
                  srai         s2, s8, 24
                  ori          sp, gp, 598
                  sltiu        s4, a4, 789
                  andi         tp, a6, 1225
                  xori         a4, ra, 1752
                  ori          s1, s0, -1832
                  slt          s0, sp, s6
                  ori          a5, t6, 344
                  andi         a5, t6, -589
                  auipc        s10, 673340
                  addi         s1, t2, -1116
                  sub          gp, s1, sp
                  xor          tp, s10, s7
                  slt          a1, a7, a7
                  nop
                  xor          t4, s0, a3
                  srai         zero, s7, 12
                  lui          a4, 212730
                  andi         s3, s8, 1497
                  sll          a5, a0, zero
                  sltu         a2, t2, s11
                  lui          s0, 498495
                  sub          a4, gp, t3
                  xor          s2, s7, t4
                  slti         tp, t1, -710
                  slti         t0, a6, 1037
                  or           tp, t3, s3
                  slli         tp, s5, 27
                  xor          s8, s3, s6
                  sltu         sp, gp, sp
                  srl          t5, t3, s6
                  xor          s1, t5, s2
                  and          a1, a0, t2
                  sltiu        t4, s10, 448
                  srl          t5, ra, t3
                  sltu         gp, zero, a4
                  auipc        s1, 318713
                  and          a6, a1, s4
                  slti         ra, tp, 746
                  srai         t0, a5, 2
                  xor          zero, a2, s2
                  sll          ra, ra, a0
                  auipc        t0, 124992
                  sll          tp, tp, a1
                  auipc        s1, 768798
                  lui          a2, 1029713
                  sltiu        s0, s0, 768
                  add          s5, a2, s3
                  slt          s4, ra, s4
                  andi         t0, s6, -630
                  nop
                  sltu         a5, t3, s7
                  srai         s3, a1, 19
                  andi         tp, a1, 87
                  sra          zero, t0, t1
                  sub          t4, a5, s9
                  andi         s3, t1, 1057
                  slt          s5, s6, tp
                  srli         a1, s1, 20
                  sll          t3, a0, s6
                  sltiu        s10, s1, 1552
                  lui          zero, 440648
                  srli         a1, zero, 15
                  sub          s3, s2, a2
                  lui          a4, 137318
                  srli         a1, s10, 5
                  sra          s1, a1, s5
                  srl          t3, s11, zero
                  xor          a4, tp, s1
                  lui          tp, 323446
                  srl          s0, a0, t4
                  xori         s7, s10, 563
                  nop
                  addi         t6, gp, -1890
                  addi         s2, t5, 832
                  or           s8, s3, tp
                  or           a2, s8, t5
                  sra          a1, zero, s0
                  sll          s2, tp, gp
                  sra          zero, a2, s1
                  slli         s3, t2, 18
                  andi         s7, t0, 1219
                  xor          s0, s2, s10
                  add          s5, ra, t1
                  xori         s4, gp, -1326
                  sra          a1, gp, a5
                  xori         zero, s4, 1879
                  nop
                  srli         t0, t2, 18
                  addi         ra, t0, 1558
                  sltu         s4, s2, tp
                  xor          s2, s2, a4
                  sll          s11, s0, t2
                  or           t6, s10, a5
                  or           s4, tp, s8
                  add          a7, a7, sp
                  sltu         tp, a1, a5
                  sra          ra, s3, ra
                  add          sp, s11, s9
                  slti         s6, s8, 1022
                  slt          s5, s4, zero
                  sll          tp, s7, a1
                  srl          a4, s6, a5
                  andi         t6, s2, 836
                  sltiu        a4, t1, 1348
                  xor          a5, a7, t5
                  xori         t3, s3, 1711
                  addi         sp, sp, -1615
                  slt          s2, t2, a6
                  lui          s5, 209153
                  slt          t6, t1, a0
                  ori          s4, s11, -797
                  slli         t4, t4, 13
                  slt          s6, a2, a3
                  add          s9, a4, ra
                  sub          s7, a4, a0
                  xori         s9, s6, 789
                  slt          s1, a4, ra
                  sltu         a2, a2, ra
                  slli         s10, t3, 24
                  lui          zero, 990578
                  slti         s0, zero, 1807
                  ori          t5, gp, 2031
                  add          sp, s2, s7
                  xori         s5, a2, -1768
                  or           s2, a7, a2
                  xori         zero, a5, -484
                  or           a6, gp, s3
                  sra          s10, zero, s2
                  sll          t5, t4, s7
                  add          a5, ra, a7
                  and          a1, t0, s3
                  andi         s1, t1, -418
                  nop
                  auipc        t3, 832606
                  or           s2, a5, t4
                  slt          zero, t6, s10
                  sll          a2, s0, gp
                  nop
                  srai         t6, t1, 25
                  ori          s2, s2, -1819
                  sra          s9, gp, t1
                  andi         s8, a2, -867
                  sltu         s3, a6, t3
                  xori         s6, s1, 1077
                  and          t3, gp, t1
                  srl          s7, s2, a1
                  auipc        s0, 948000
                  xori         sp, s0, -267
                  sub          s11, tp, s7
                  sub          zero, a6, sp
                  slti         s7, s6, 625
                  slt          t5, s2, s6
                  slli         s5, zero, 13
                  and          s8, s5, a1
                  srli         t0, ra, 24
                  slt          a5, ra, t5
                  sll          s5, s7, ra
                  andi         a3, s10, -1761
                  or           a6, ra, a0
                  sub          s0, sp, t2
                  srl          tp, gp, a5
                  sltiu        s2, s5, 1850
                  srl          a2, a5, s10
                  xor          a3, a4, t3
                  addi         a3, a1, -184
                  ori          a7, a7, -1233
                  andi         s9, t2, 135
                  addi         t3, a4, -57
                  and          t0, s6, t2
                  nop
                  or           a6, s3, s8
                  srl          a6, s8, s11
                  addi         t5, s6, 1892
                  andi         s11, sp, -795
                  sltiu        s0, a4, 889
                  srl          s2, a4, t2
                  sra          zero, s11, gp
                  addi         s6, zero, 580
                  andi         s9, s2, -1316
                  sra          s11, a6, s3
                  xori         t4, t6, -884
                  add          t0, zero, a2
                  addi         a3, s9, 839
                  sra          s3, s5, s5
                  sltiu        a2, zero, -1013
                  or           a1, ra, a6
                  slli         a1, s7, 23
                  slti         gp, a2, 1099
                  srl          zero, s0, a3
                  sltu         s6, ra, t6
                  xor          s10, sp, ra
                  slli         a1, t6, 0
                  add          a1, s10, a6
                  ori          t6, t1, 821
                  xori         gp, t3, 205
                  srai         sp, tp, 17
                  andi         sp, s1, -585
                  lui          a4, 720146
                  xor          a5, a3, sp
                  lui          s3, 93401
                  slt          s4, t5, t3
                  xori         s4, s2, -901
                  and          t4, t2, t0
                  slti         a1, a6, -1424
                  add          s10, s2, a5
                  srai         s8, gp, 18
                  slt          t0, s3, a4
                  xori         t3, t0, -325
                  sltiu        a7, sp, 240
                  xor          s9, a7, a1
                  sll          t0, s7, a4
                  nop
                  slt          t5, t4, a6
                  nop
                  sub          s0, s8, zero
                  slti         t4, t1, -516
                  ori          s5, t4, -1645
                  nop
                  nop
                  xori         s6, s0, -1809
                  nop
                  addi         a4, a6, -1028
                  sltu         s7, ra, tp
                  srl          s11, s4, a5
                  xori         s6, t5, -804
                  nop
                  xori         s0, a5, 1394
                  sll          t5, t3, a7
                  sll          t3, a6, t3
                  slt          s11, s2, tp
                  sltiu        a4, gp, 1402
                  add          t6, s4, a2
                  slli         zero, t3, 28
                  slli         s5, s3, 20
                  or           a4, s7, s7
                  sub          s6, s6, s3
                  xori         a6, s0, 991
                  srli         s11, a1, 17
                  xor          t5, t5, t1
                  srl          a2, a7, zero
                  srai         ra, t5, 26
                  slti         s9, t2, 1665
                  srai         t6, s9, 10
                  xori         s5, a7, 125
                  sltu         sp, s9, tp
                  slti         a2, s4, 2025
                  xori         s8, ra, -505
                  slti         a6, t5, 1897
                  nop
                  ori          s0, t0, -609
                  andi         a5, s5, 1241
                  srai         t6, s3, 4
                  sra          t6, s7, a0
                  andi         t6, a5, 78
                  slt          tp, s7, a2
                  auipc        s5, 647492
                  slli         s10, zero, 1
                  andi         s9, s0, -552
                  sra          tp, s7, ra
                  auipc        s7, 640343
                  andi         s10, a4, -1283
                  xori         s1, s11, 1687
                  xor          a6, t5, a7
                  slti         a7, t4, -1101
                  and          t4, t1, a4
                  srai         ra, s3, 22
                  xor          sp, ra, s4
                  or           t5, t0, tp
                  sra          s8, s9, tp
                  addi         t5, s4, 1667
                  slt          ra, s5, a2
                  or           s9, s9, t3
                  slti         t5, s9, -1323
                  xori         a3, s1, -1223
                  sltiu        a1, a5, -467
                  or           tp, a4, s7
                  lui          s9, 1008601
                  or           a6, a5, sp
                  or           a1, sp, s10
                  slt          t6, a5, s4
                  slli         s9, s8, 10
                  srl          s1, s9, s4
                  sll          t0, s8, t1
                  lui          tp, 717062
                  sltiu        t3, a5, 1702
                  auipc        s10, 761889
                  srai         s1, s11, 23
                  or           a7, s4, s2
                  slt          s1, t4, t1
                  srai         t6, t5, 25
                  slli         s6, t0, 1
                  sub          s7, ra, t1
                  slti         t5, s7, 1332
                  xori         gp, a4, -569
                  srli         s0, a6, 14
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t3, 0x80000000
                  li           s9, 0xffffffff
                  li           s8, 0xcacf0150
                  li           s4, 0x80000000
                  li           tp, 0x80000000
                  li           t4, 0x0
                  li           a7, 0x80000000
                  li           a2, 0x80000000
                  li           t0, 0x0
                  auipc        tp, 333687
                  sub          a7, a4, s9
                  sub          a4, a4, t0
                  sub          a2, s4, a4
                  sub          t4, t0, s8
                  addi         t4, t4, 536
                  sub          t0, t0, s4
                  addi         a7, s8, -88
                  add          tp, t4, a2
                  add          t0, t4, t3
                  lui          a4, 693748
                  auipc        t0, 659157
                  addi         s8, a7, -1167
                  add          s9, a2, a7
                  sub          s8, s9, a2
                  sub          s8, t0, t4
                  add          s9, t0, s8
                  sub          t4, t4, t0
                  sub          s9, a7, s9
                  nop
                  lui          a4, 51195
                  auipc        s9, 218009
                  sub          tp, s9, s4
                  sub          t0, a7, s9
                  add          s8, t0, s9
                  sub          s8, a7, s4
                  lui          s8, 246971
                  nop
                  sub          t0, t0, s4 #end riscv_int_numeric_corner_stream_10
                  sll          a5, s9, gp
                  slt          t3, a1, a2
                  nop
                  xor          a4, s6, zero
                  slli         a5, t2, 5
                  nop
                  slti         a1, ra, -671
                  auipc        t3, 692157
                  andi         s5, t3, 1358
                  or           s1, tp, a5
                  slt          s3, tp, a6
                  lui          ra, 315093
                  andi         a1, t6, -1464
                  srl          a5, s6, a6
                  srai         s4, t1, 11
                  sub          a1, t6, tp
                  srai         s6, s3, 9
                  and          sp, ra, s6
                  srai         t0, s3, 3
                  and          s11, gp, ra
                  xori         a4, a3, -1115
                  addi         zero, s1, -239
                  and          s3, t3, tp
                  sltiu        s7, s5, 1671
                  andi         t5, t6, 1549
                  sltu         s2, s2, s4
                  srl          t4, s1, t6
                  nop
                  nop
                  lui          t0, 566142
                  ori          tp, a1, -1017
                  andi         s9, s8, -1329
                  nop
                  nop
                  ori          a6, s5, -1899
                  sub          tp, t2, a1
                  add          s11, s4, t0
                  or           s3, gp, t3
                  slli         a4, sp, 6
                  andi         t3, s9, -937
                  nop
                  sra          s10, a5, t3
                  sltiu        tp, a0, -385
                  lui          gp, 648480
                  srl          s9, sp, t0
                  srli         tp, s10, 23
                  sltu         t0, s11, ra
                  sltiu        zero, gp, 1947
                  srli         s3, s3, 15
                  andi         a6, t5, 1281
                  andi         s8, s11, 1339
                  slti         t4, zero, 1728
                  srai         s3, s6, 4
                  srli         a6, t5, 18
                  add          a1, a0, sp
                  slt          a1, a3, a1
                  add          zero, a6, s8
                  xori         a1, s5, -1360
                  srl          t5, s11, s5
                  ori          s9, t1, -699
                  andi         a7, sp, -1473
                  xori         ra, s7, 300
                  and          s10, gp, t1
                  nop
                  add          a6, s2, t2
                  andi         s10, s3, -860
                  sra          a5, sp, s2
                  andi         s2, s7, 492
                  or           s3, a5, t0
                  and          s5, ra, t0
                  add          s11, s5, s9
                  or           s8, s8, t4
                  slti         a5, t2, 490
                  sra          a5, s6, gp
                  andi         a4, ra, 1629
                  lui          t4, 816056
                  add          a4, t1, tp
                  srli         s1, a3, 11
                  sltiu        tp, a3, 1361
                  ori          t6, a2, -1902
                  slti         s2, s5, -719
                  ori          a7, s8, -13
                  sltiu        s1, t3, -775
                  andi         s0, t6, 1608
                  sltu         tp, a0, s11
                  xor          a5, a5, a0
                  lui          a5, 829488
                  or           s6, a6, s10
                  sra          s10, tp, t3
                  sltiu        s5, t3, -1733
                  ori          a1, a7, -1214
                  ori          s9, t0, -937
                  add          s0, a5, ra
                  srli         s3, t3, 12
                  nop
                  addi         s5, a7, 704
                  slli         s10, t6, 2
                  xor          t4, s2, t2
                  srli         tp, a7, 10
                  xori         s8, a1, -1980
                  andi         a4, s5, -804
                  slti         a5, t6, 882
                  addi         s8, t4, 915
                  add          t0, a2, a1
                  srai         tp, t4, 31
                  nop
                  sub          s7, s2, s10
                  sltiu        s2, a1, 1284
                  xor          t6, sp, s5
                  addi         t0, gp, -411
                  or           a2, s0, a7
                  slti         a5, zero, 912
                  sltu         a4, a1, t5
                  slti         a1, ra, 1194
                  add          s5, s4, a6
                  srl          gp, t2, a3
                  and          t5, s11, t4
                  nop
                  sub          t5, a2, s10
                  sltu         a6, a6, a5
                  addi         a6, a2, -1660
                  andi         a1, t4, 272
                  slli         s2, t1, 23
                  slli         s11, gp, 25
                  sub          a4, t1, s6
                  srl          s2, a6, t1
                  ori          ra, t0, 433
                  add          s0, a2, t2
                  and          t5, s0, s5
                  srai         s10, s3, 30
                  srl          a1, s5, s11
                  addi         s10, gp, -553
                  addi         s9, a5, -339
                  xori         t0, t2, -1460
                  srai         a5, s10, 7
                  andi         s7, a5, -881
                  and          a5, s3, t6
                  addi         a3, s7, -1181
                  xor          tp, a6, a2
                  slli         zero, t3, 25
                  xori         s2, a1, -664
                  srai         a7, zero, 8
                  xor          a6, s3, s7
                  auipc        a5, 286504
                  sub          gp, s3, ra
                  ori          a6, t2, 998
                  add          s2, s10, sp
                  lui          a6, 128355
                  srli         s11, s7, 23
                  sll          sp, tp, gp
                  slti         ra, tp, 916
                  auipc        a2, 788610
                  srai         s2, a2, 3
                  auipc        s3, 113309
                  srli         s3, t1, 27
                  andi         s9, s9, 362
                  xor          t6, s6, s9
                  sra          s7, a4, a3
                  srl          s4, s11, t5
                  addi         a4, t3, 907
                  and          s7, t6, s2
                  ori          a3, s10, 542
                  addi         a2, a5, -1383
                  srai         s11, t4, 5
                  slli         a3, t2, 12
                  srli         gp, a1, 3
                  ori          t5, sp, -1101
                  auipc        s5, 829048
                  addi         gp, a5, -98
                  sltiu        a1, s7, -37
                  sltiu        s2, s4, 219
                  slt          s2, s5, zero
                  slti         s4, s3, -968
                  sra          a1, gp, s4
                  addi         a5, a1, -1556
                  auipc        s9, 434976
                  sltu         s10, s5, s8
                  sub          t0, zero, gp
                  or           s6, t2, t2
                  xori         s7, s5, 323
                  slti         a2, s9, -854
                  ori          t6, sp, -1089
                  srli         t0, t2, 16
                  xori         s4, zero, -49
                  nop
                  slli         a3, t6, 27
                  xori         s2, t3, 1891
                  xor          t3, t0, s5
                  lui          t6, 764052
                  addi         s2, s8, 532
                  and          t0, a3, s1
                  xori         s10, a5, -365
                  xori         a4, s10, 396
                  sltu         s10, t4, t2
                  srli         s3, t5, 15
                  sub          s10, s7, s8
                  auipc        t0, 619643
                  and          s0, t5, zero
                  and          s1, a6, s4
                  sub          s10, ra, sp
                  lui          tp, 184166
                  andi         s11, a4, -804
                  xori         a5, a4, 617
                  sll          t3, a3, s6
                  nop
                  xor          t5, a4, s8
                  andi         s7, s6, 631
                  andi         gp, s5, 1895
                  addi         tp, sp, -1979
                  srai         a1, s8, 22
                  slti         gp, s2, 424
                  addi         s1, ra, -114
                  sll          a3, t6, zero
                  addi         s11, s2, -1946
                  or           tp, s6, t0
                  addi         s6, s8, 1242
                  slt          gp, s1, s10
                  sub          a7, t6, a1
                  add          t4, a7, t1
                  nop
                  xor          a2, s2, t0
                  and          a7, s3, sp
                  sra          s11, t2, tp
                  sltiu        ra, a6, 253
                  srai         a4, s2, 14
                  lui          t4, 788298
                  sll          s5, t1, t1
                  srli         gp, t1, 26
                  slti         t3, t1, 156
                  and          t6, zero, a2
                  add          s6, t2, a6
                  sll          s5, s11, s3
                  slli         sp, s6, 18
                  sll          tp, a2, t5
                  sub          s11, a0, s5
                  sub          s1, a2, s9
                  slti         s1, a3, 653
                  lui          a4, 500023
                  slt          s1, a1, a3
                  or           zero, a4, s7
                  sra          a5, s11, s7
                  addi         tp, t2, -1522
                  or           a6, ra, s5
                  slli         a7, a7, 1
                  nop
                  auipc        a2, 868303
                  addi         s4, s7, -321
                  xor          s10, a6, s7
                  add          t6, ra, a6
                  srl          zero, a3, s9
                  andi         s9, s10, -794
                  slti         zero, s1, -251
                  sub          a7, s3, s2
                  nop
                  or           t6, t4, t4
                  andi         a2, a3, 1597
                  sltiu        s0, gp, -1892
                  or           a1, s7, ra
                  auipc        s4, 460055
                  sra          s4, s7, a4
                  and          sp, gp, a2
                  lui          t5, 351617
                  srl          a2, s6, a4
                  sub          ra, s8, a2
                  sltu         s8, s4, s10
                  auipc        s11, 1009429
                  addi         s7, s2, -437
                  slli         s0, s3, 0
                  auipc        ra, 379964
                  slti         zero, t4, 897
                  or           t4, a6, gp
                  sub          s8, t5, t5
                  nop
                  lui          s3, 454893
                  srli         a1, s9, 15
                  sub          s9, a6, s11
                  addi         s6, zero, 261
                  and          s10, a0, a3
                  srl          s2, s4, s1
                  lui          a6, 484860
                  sra          a1, s1, t2
                  lui          s1, 25944
                  addi         sp, s6, 1278
                  xor          s4, s11, s5
                  sub          s7, sp, s0
                  xori         a4, a6, -1776
                  sltu         s2, s3, s9
                  sltiu        t4, s9, 1749
                  slti         s5, t1, -1289
                  ori          tp, s9, 1347
                  and          a1, s2, s1
                  srai         gp, t4, 3
                  sll          a2, a1, s3
                  srai         t4, s8, 23
                  xori         s10, t2, 849
                  xori         s3, t2, 694
                  nop
                  sltu         s7, s2, s5
                  sra          t5, a3, zero
                  sra          s5, a0, s9
                  or           t0, a3, s5
                  slli         s0, s2, 10
                  srl          s1, a1, t6
                  lui          a2, 713240
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x80000000
                  li           a6, 0xffffffff
                  li           a1, 0x80000000
                  li           a3, 0x757539ed
                  li           s6, 0xffffffff
                  li           s11, 0x0
                  li           ra, 0xbcd4afc3
                  li           t0, 0x80000000
                  li           t6, 0xda74b696
                  addi         a2, ra, -248
                  sub          a6, a2, a2
                  addi         s11, a6, 1300
                  sub          s6, a6, a7
                  addi         a6, ra, -259
                  add          t6, t6, a1
                  sub          ra, a2, a2
                  auipc        s6, 1008650
                  auipc        a3, 363248
                  sub          a2, a3, a7
                  lui          a2, 106424
                  lui          a3, 466030
                  addi         s11, t6, 1157
                  auipc        s11, 488939
                  nop
                  sub          ra, s6, t6
                  nop #end riscv_int_numeric_corner_stream_12
                  andi         s6, s4, -1496
                  slli         s1, t0, 5
                  sll          s11, a6, s10
                  nop
                  and          ra, s0, t5
                  nop
                  sub          a3, s5, zero
                  sll          s3, a4, s10
                  sub          s0, gp, t2
                  xori         s8, s3, 1801
                  and          tp, s8, sp
                  add          s2, a0, a0
                  slti         s10, t2, 1181
                  or           a4, s11, t1
                  slti         ra, s6, -1112
                  slli         t3, zero, 12
                  nop
                  nop
                  lui          s10, 169312
                  andi         s0, a4, -1230
                  xor          t6, gp, s4
                  sub          a1, s11, s1
                  slti         s11, zero, -1718
                  andi         t5, s1, 972
                  srli         sp, a1, 1
                  sub          s5, ra, s11
                  srai         sp, a0, 2
                  slti         a5, a6, 803
                  slli         s0, a2, 9
                  add          s5, a3, t2
                  ori          t6, s1, -1949
                  sra          s1, s10, gp
                  andi         zero, a1, -1102
                  slt          s11, t0, t2
                  and          a1, t5, s4
                  or           t4, s10, s4
                  andi         a1, s11, -994
                  ori          s9, t4, 543
                  sll          s0, a1, t4
                  srl          a3, s11, s10
                  sra          t6, t6, s8
                  sub          ra, t0, t1
                  sra          s10, t0, a6
                  xori         a5, a7, -458
                  slt          s7, s5, a5
                  sltu         a6, tp, a2
                  ori          sp, s3, -1540
                  sll          s11, t4, s6
                  and          s2, tp, t4
                  srli         t6, t6, 1
                  lui          t5, 353574
                  andi         a5, a4, -1709
                  slti         t5, s4, -368
                  slt          a5, a6, s9
                  sra          t3, zero, s6
                  sltiu        tp, gp, -257
                  sltu         t0, a7, s4
                  slti         t0, s4, -590
                  srai         zero, t4, 26
                  and          t4, t2, s9
                  addi         s7, sp, 1125
                  ori          s10, a5, 1729
                  or           s3, a5, s10
                  sltiu        s8, a7, -147
                  sltiu        sp, s1, 2037
                  ori          t4, gp, -588
                  nop
                  xori         s9, s7, 580
                  sub          s0, a2, t2
                  andi         s2, a7, 474
                  sll          a3, t4, s11
                  sub          sp, a1, s1
                  or           a3, zero, s4
                  srl          s4, s7, t6
                  srl          a7, s11, s1
                  srai         t4, s5, 11
                  sra          s0, a0, t1
                  slt          s6, s1, s4
                  sltu         s5, t5, t4
                  slti         s8, zero, -811
                  srli         s10, gp, 29
                  sra          s11, a6, t6
                  slti         s0, a6, 974
                  ori          a4, ra, -1297
                  or           a7, a2, t5
                  xori         s1, gp, 187
                  sltiu        s0, a3, -941
                  andi         a2, s3, -381
                  ori          s3, s3, -822
                  and          s6, s0, t6
                  nop
                  add          s5, s5, a3
                  srl          s8, t6, s8
                  slli         gp, s8, 30
                  xor          sp, s6, s5
                  auipc        ra, 40285
                  lui          gp, 84231
                  or           s8, s11, s10
                  add          gp, t1, t4
                  srl          gp, tp, s8
                  xori         t5, sp, 1171
                  xor          gp, ra, sp
                  sra          ra, s0, ra
                  slli         gp, t1, 8
                  sltu         a4, s8, a4
                  nop
                  srl          s1, a4, t4
                  sra          zero, s9, sp
                  ori          s5, s0, 1728
                  auipc        zero, 531193
                  sltu         t5, s0, s5
                  srl          s0, s10, s4
                  auipc        a2, 573919
                  slli         t0, s4, 4
                  ori          t0, a1, -1882
                  slti         gp, a1, -1719
                  addi         a7, a0, -236
                  and          s0, a1, zero
                  ori          tp, zero, 819
                  sra          s7, s1, a1
                  auipc        a4, 760709
                  and          sp, sp, s11
                  andi         t5, s10, 410
                  auipc        a3, 292931
                  srl          a4, s3, s2
                  slli         s10, s0, 31
                  sltiu        t3, s11, -1021
                  sra          a1, s7, sp
                  auipc        zero, 810323
                  srl          s1, s6, s2
                  srl          gp, t1, t6
                  ori          a3, t0, 11
                  slli         s6, s6, 24
                  srai         t0, ra, 24
                  sltu         s6, t4, s0
                  slt          a2, a7, s10
                  srai         a7, zero, 2
                  slt          a1, s8, a0
                  sltiu        a3, t0, -488
                  add          a7, t0, a5
                  srli         s4, gp, 17
                  xor          t6, t0, t1
                  slt          s3, a3, a7
                  slt          s5, s6, zero
                  sltiu        a7, a0, -1841
                  ori          s2, s7, -1086
                  and          ra, s8, t5
                  xori         s0, gp, 556
                  add          tp, s10, gp
                  nop
                  lui          s7, 263149
                  slli         s10, t0, 10
                  sub          a4, s9, sp
                  sltiu        a4, s11, -1380
                  sltu         s9, t0, a0
                  sub          a5, a4, t0
                  lui          s4, 785285
                  sltiu        gp, s3, 329
                  srl          s7, s1, gp
                  slti         sp, tp, 130
                  and          s9, gp, s7
                  slli         s7, a0, 2
                  srai         sp, s8, 11
                  xori         s9, s2, 1976
                  xori         a6, a5, -646
                  or           s11, a6, t0
                  slti         t3, zero, 1229
                  addi         t5, t1, 496
                  sll          s2, s1, gp
                  xori         ra, gp, -1173
                  srai         a1, a5, 27
                  sub          s11, tp, a3
                  slt          tp, t1, gp
                  ori          zero, t0, -1661
                  andi         zero, s0, -568
                  sra          s10, gp, s2
                  xor          s8, s5, sp
                  sub          s0, s1, s3
                  lui          t4, 692956
                  andi         s2, t0, 700
                  srl          a4, a2, t4
                  srli         s9, s7, 13
                  nop
                  add          s3, tp, ra
                  lui          t6, 268461
                  and          a6, s11, t5
                  srai         s4, s7, 31
                  slt          t4, t5, a6
                  ori          a7, a5, -1433
                  sltiu        a5, s9, -1519
                  xor          zero, a1, sp
                  and          s1, a5, s1
                  srai         a3, t4, 20
                  sub          t5, a5, t4
                  sll          ra, a6, s5
                  xor          s0, t2, s7
                  xor          t0, s4, s9
                  slti         t5, s6, 494
                  sll          t4, s3, sp
                  xori         tp, ra, 1005
                  srl          s8, t3, s3
                  lui          s11, 904555
                  andi         t4, zero, -728
                  sub          t0, t0, a0
                  ori          s10, a0, 1072
                  sub          s9, s3, a1
                  sra          s8, s6, a3
                  slt          a5, s4, t0
                  srli         t5, t3, 11
                  srai         tp, ra, 24
                  ori          t5, s2, -1624
                  sltiu        ra, t4, 1431
                  slti         a7, s4, -2041
                  sll          zero, s3, a2
                  and          s2, a7, a1
                  sltiu        gp, a1, -482
                  sll          t6, a0, a6
                  sltu         s10, s10, s8
                  xor          a3, a4, sp
                  auipc        s7, 495422
                  sub          s1, a6, gp
                  sll          a7, t6, t4
                  slli         s11, s3, 28
                  sub          ra, s0, a6
                  srai         gp, a3, 27
                  slt          s3, sp, a5
                  slti         a4, s0, 396
                  auipc        t0, 162732
                  xor          a4, ra, s0
                  srai         a1, s8, 9
                  srai         a5, s7, 17
                  xor          t3, s1, ra
                  lui          gp, 835628
                  andi         t3, s4, -1791
                  ori          s1, s11, -1729
                  sltiu        zero, zero, 1131
                  slt          t0, s2, s4
                  ori          s8, s9, -1243
                  srai         s10, t5, 22
                  lui          s0, 400602
                  sltiu        s3, a0, -1101
                  sra          s1, a1, s4
                  or           a2, gp, t3
                  xor          s3, sp, s4
                  sra          t5, s6, t5
                  sltiu        t0, t5, -1534
                  nop
                  slli         a6, a0, 18
                  lui          a6, 12102
                  sub          a3, ra, t4
                  ori          s6, t0, 1577
                  addi         s8, s7, -256
                  xori         a6, s2, 995
                  xor          t3, t1, a7
                  sltu         s7, t1, t4
                  or           t4, tp, a5
                  srai         t5, s3, 29
                  sltu         s11, t4, s8
                  sra          zero, t0, s2
                  xor          s0, t4, t5
                  nop
                  andi         a3, ra, -1852
                  or           a7, a4, s6
                  sll          t0, t0, s1
                  addi         a1, t0, -814
                  or           a2, t3, t1
                  slli         zero, t2, 14
                  lui          a6, 1040809
                  and          t5, s3, t4
                  auipc        s2, 847843
                  srli         s10, s10, 10
                  sra          a6, s11, a6
                  add          sp, s3, a7
                  slti         s10, s5, -2011
                  sub          s3, s3, zero
                  xori         a1, t5, 948
                  slli         tp, t5, 28
                  sltiu        s3, s10, 1460
                  sltiu        a4, t6, 559
                  auipc        s7, 525210
                  sltu         s8, sp, a7
                  srli         s8, ra, 22
                  xor          a1, t2, zero
                  sll          s7, a6, a6
                  andi         s6, s4, -212
                  ori          a7, t1, -1417
                  sltiu        s8, a5, 1175
                  slt          s0, s8, a7
                  sltu         s6, s9, s8
                  auipc        s10, 1000955
                  sll          sp, zero, s6
                  or           s7, s6, t2
                  sltiu        gp, gp, -501
                  srli         s6, s2, 28
                  sltu         zero, s2, s7
                  srl          t5, s2, s0
                  xori         s5, t5, 1183
                  sub          s9, t5, t3
                  srai         t3, s3, 13
                  and          a4, s7, t0
                  sub          s0, s11, s5
                  slti         s1, s9, -473
                  addi         s2, t5, -180
                  sll          a6, s3, s8
                  nop
                  sltiu        tp, a1, 1912
                  slli         s5, s10, 7
                  sub          gp, s4, t5
                  sub          a1, s9, a7
                  srli         s6, ra, 11
                  sltu         zero, sp, tp
                  add          sp, a5, a2
                  sub          s11, s11, zero
                  sra          s3, sp, t5
                  sltu         s5, t2, s0
                  srai         s6, ra, 7
                  slti         t6, s1, -853
                  xor          s4, s4, t6
                  lui          a4, 105738
                  sltu         a7, sp, a3
                  slli         s1, s8, 23
                  slt          s9, a2, gp
                  sltu         s9, zero, a2
                  sra          t6, a2, s0
                  sra          s3, s9, a1
                  sll          s11, a6, s10
                  nop
                  sra          sp, s8, a3
                  and          t4, t0, t5
                  lui          s9, 205476
                  sra          a1, s0, s10
                  xori         s9, s2, -254
                  auipc        s7, 963219
                  srl          s7, a3, t3
                  nop
                  sltu         a4, gp, s8
                  nop
                  or           t0, s2, t4
                  addi         zero, t6, 527
                  add          a5, s4, sp
                  ori          a4, s4, -1115
                  slt          sp, s0, s1
                  or           a5, s10, t1
                  sltu         a2, a7, s0
                  slli         a1, s3, 7
                  slli         s2, a0, 16
                  ori          s7, tp, -563
                  sltiu        t5, a2, -2031
                  add          s6, a7, gp
                  slti         a3, s4, 1332
                  srl          ra, s8, a1
                  add          s8, t3, a1
                  slli         a5, s4, 17
                  slti         ra, a6, -544
                  ori          zero, a3, 562
                  and          t4, gp, a4
                  or           t0, a3, t3
                  add          sp, s2, a2
                  slli         s4, t0, 25
                  xor          t5, s2, a5
                  slli         a2, t3, 6
                  add          a2, s9, s8
                  or           s8, a7, tp
                  lui          t0, 427281
                  sll          sp, s6, t1
                  nop
                  addi         a7, s10, 1954
                  sra          s6, a4, t3
                  sll          t5, sp, a2
                  or           s1, t1, ra
                  slli         a4, s6, 12
                  srai         a5, s8, 8
                  auipc        a7, 1039492
                  sra          s6, s6, a3
                  slli         t5, a1, 23
                  xor          s2, s2, s1
                  and          t4, t4, s2
                  sra          s5, s3, ra
                  and          s11, gp, s1
                  add          sp, t2, s5
                  slli         s10, s1, 11
                  or           s0, a4, sp
                  slt          t6, a3, ra
                  sra          a2, a1, a3
                  srl          s8, ra, a3
                  lui          tp, 723261
                  ori          a1, t0, -1333
                  xor          a1, a0, a2
                  auipc        a7, 832889
                  xori         a2, t5, 762
                  slli         a7, zero, 7
                  srai         sp, a1, 15
                  srl          s11, s1, t4
                  and          s6, a1, s2
                  lui          a4, 538390
                  or           a4, zero, t0
                  or           a5, s3, t3
                  xor          s5, sp, t4
                  sra          sp, a6, a6
                  sltu         zero, t2, t4
                  xor          a5, a0, s6
                  nop
                  srai         tp, s2, 17
                  slli         a2, a2, 19
                  srli         s9, s4, 7
                  lui          s9, 815704
                  addi         s3, t6, -233
                  addi         s2, sp, 1228
                  slli         s11, t5, 5
                  lui          zero, 770138
                  sltiu        s4, a5, 542
                  srli         a1, a4, 13
                  lui          s11, 835796
                  sll          s8, gp, a3
                  srl          s11, t1, t0
                  srli         sp, s1, 15
                  add          sp, t2, a2
                  and          s3, a7, s9
                  sra          s4, a3, s3
                  sll          s11, a6, t6
                  xor          s6, a3, s3
                  sltiu        t3, t0, 1263
                  or           s11, t5, a4
                  slt          a4, a6, a6
                  addi         a1, a3, 1436
                  slti         s7, t4, -887
                  add          a3, s5, a7
                  srl          tp, sp, a2
                  auipc        s0, 654858
                  andi         t4, t0, -295
                  xor          t6, t1, s9
                  slti         s6, t3, -1232
                  sltu         s0, s6, t2
                  slti         a5, t2, -705
                  auipc        s5, 644582
                  sub          a4, a4, s10
                  sll          s8, t3, a4
                  xor          t3, s2, s5
                  addi         s4, t3, -705
                  or           a2, a3, s2
                  sltiu        a5, sp, -980
                  auipc        s3, 242040
                  auipc        t4, 806436
                  addi         s0, ra, 1251
                  auipc        a7, 434125
                  ori          t6, sp, -120
                  sltu         a4, a5, t2
                  sltu         s7, t6, sp
                  slti         t6, s2, 284
                  sltiu        a5, s9, -1685
                  lui          t4, 697863
                  sll          s6, s7, a4
                  srai         a4, sp, 6
                  sltu         a2, t0, t6
                  sub          s7, a2, s5
                  or           a4, a1, a2
                  auipc        s1, 824404
                  and          s11, s4, a0
                  slt          s5, s0, a0
                  slli         s2, t6, 19
                  sra          a3, t3, t6
                  srl          a1, t0, s0
                  and          ra, a7, t3
                  slt          t4, s5, s1
                  srai         a3, t4, 2
                  ori          a2, a2, 147
                  srai         s8, t2, 1
                  andi         t6, sp, -376
                  xori         a5, s7, -498
                  andi         zero, a3, 767
                  sub          gp, t6, t6
                  andi         t0, s0, -1724
                  xori         tp, a7, -393
                  sll          a5, t5, s4
                  or           zero, a0, a1
                  srl          a6, s7, s11
                  addi         t4, s2, 719
                  andi         s3, t3, -1716
                  or           t5, s3, a2
                  andi         s7, a1, 1882
                  srl          a4, t0, s0
                  auipc        s2, 629505
                  srai         a4, s9, 10
                  addi         t3, a1, 1831
                  and          ra, t3, a6
                  sltiu        a4, t3, -960
                  sra          a1, s11, t0
                  sra          s6, s9, s3
                  srai         s2, s11, 11
                  xori         a3, a6, 1821
                  or           ra, t2, tp
                  srli         sp, a6, 27
                  srai         a5, a1, 4
                  srli         s3, a3, 25
                  or           a6, a4, t4
                  sltu         s4, ra, s11
                  sltiu        s8, a7, 360
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_28
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           a5, 0x80000000
                  li           t3, 0x80000000
                  li           gp, 0x80000000
                  li           ra, 0x80000000
                  li           s5, 0xffffffff
                  li           s2, 0x0
                  li           s9, 0x80000000
                  addi         ra, ra, 1078
                  lui          s3, 716017
                  addi         s3, s2, 1438
                  nop
                  auipc        ra, 785534
                  nop
                  lui          t3, 370169
                  lui          t3, 512785
                  addi         ra, t4, -901
                  nop
                  lui          s3, 491096
                  addi         s3, a5, -1945
                  auipc        s8, 861092
                  lui          a5, 284708
                  nop
                  addi         a5, s5, -1358
                  addi         ra, s2, 1073
                  sub          s8, a5, a5
                  auipc        a5, 929286
                  add          s5, s2, gp
                  addi         ra, s2, 1245
                  lui          s5, 436601
                  add          s9, a5, s5
                  addi         ra, t4, -895
                  add          s9, ra, s5
                  addi         a5, s9, -1206
                  addi         s3, s2, -1992 #end riscv_int_numeric_corner_stream_28
                  sltu         gp, s9, s11
                  auipc        gp, 907739
                  auipc        a6, 639579
                  srli         t0, a4, 29
                  andi         s5, s2, -1802
                  and          a5, tp, t5
                  srli         zero, s8, 11
                  srl          zero, s10, s1
                  sra          s2, a6, s2
                  or           tp, sp, sp
                  xor          sp, s3, ra
                  sltiu        s9, ra, -636
                  xor          a5, a6, t4
                  sra          a4, sp, zero
                  auipc        a4, 229445
                  and          s0, a7, s11
                  srai         a7, ra, 18
                  or           zero, sp, a6
                  sub          t5, a5, s4
                  xori         s8, s7, -269
                  srai         s0, s10, 14
                  slli         s10, a6, 14
                  slli         s3, t1, 17
                  nop
                  xor          s1, s2, a0
                  or           t4, s4, s10
                  addi         a3, s9, -1502
                  and          s1, s0, s11
                  sltiu        s4, zero, -1881
                  addi         sp, s1, -796
                  srl          s0, s0, t4
                  sub          t3, t0, t5
                  sll          s11, a5, s3
                  ori          zero, a0, -1600
                  auipc        s4, 695314
                  srai         s3, s9, 10
                  xori         a6, a7, -632
                  sub          s9, t1, s1
                  sltiu        s11, ra, -910
                  sltu         zero, t3, s2
                  xor          s1, t5, sp
                  srai         s9, a1, 0
                  auipc        s1, 134723
                  xori         s0, t5, -994
                  srai         s6, gp, 1
                  xori         s4, a1, 1577
                  or           sp, sp, a4
                  srl          a1, s4, t0
                  auipc        a3, 50786
                  and          tp, s1, t4
                  xor          zero, t0, ra
                  sltu         a2, t4, t4
                  xori         s2, a7, 2021
                  sub          zero, a5, s0
                  slti         ra, s6, -1291
                  sub          ra, s2, s7
                  addi         a3, s5, 416
                  srli         s10, a4, 28
                  lui          a3, 327497
                  auipc        t0, 705804
                  srl          zero, sp, s9
                  andi         s2, s5, 1124
                  addi         s0, gp, 794
                  ori          a5, tp, 1708
                  xor          s1, s7, a7
                  srli         ra, a4, 31
                  srai         a5, t4, 26
                  slti         s0, t4, -1045
                  slti         s0, a6, 1242
                  sub          t6, a0, s2
                  srli         s9, s1, 13
                  slt          tp, ra, zero
                  auipc        gp, 590815
                  and          t4, ra, a3
                  sltiu        s3, s4, 1292
                  add          a5, s7, s9
                  srl          a1, sp, t0
                  sra          s8, s3, t4
                  sra          s5, gp, a7
                  xor          tp, s7, t5
                  lui          s5, 762496
                  nop
                  lui          sp, 101388
                  add          sp, a4, zero
                  xori         a5, t2, -549
                  lui          s6, 450909
                  addi         t3, ra, 1223
                  slti         t0, t0, -1613
                  xori         a7, sp, 1662
                  slt          s7, s4, gp
                  sub          s1, tp, s5
                  srai         a4, t3, 16
                  xori         s9, a3, -211
                  slli         a1, t3, 5
                  sltiu        t0, s4, 1527
                  sub          s4, s10, t2
                  sll          ra, t0, s3
                  xori         a1, s4, 484
                  slt          t5, a3, a0
                  lui          gp, 157969
                  sra          s11, t0, a6
                  ori          t4, a6, 879
                  xor          s3, ra, a3
                  sra          s9, tp, t5
                  ori          tp, a0, 79
                  or           s3, zero, s2
                  add          s6, a7, s7
                  xori         s0, t1, -635
                  sll          gp, gp, s9
                  srli         s4, s3, 24
                  xor          t5, a7, t4
                  sltiu        s1, t3, -607
                  add          s0, a5, s1
                  xor          s8, a1, s6
                  srai         a5, tp, 25
                  sltiu        s0, s2, -1082
                  slti         zero, t2, 336
                  slli         t0, ra, 2
                  xori         a2, s11, -142
                  sub          tp, t4, t5
                  or           t6, s4, s5
                  ori          tp, a7, 1597
                  sltiu        s5, t1, 419
                  ori          tp, s8, 24
                  auipc        s2, 498408
                  sra          s3, gp, t4
                  xori         tp, t2, -1427
                  andi         s6, t4, 405
                  auipc        sp, 767225
                  sub          a2, s11, s8
                  sltiu        a1, s0, 1917
                  srli         gp, s0, 22
                  slt          t3, s8, s4
                  xori         s5, t3, 1987
                  slti         a2, a6, -751
                  slli         s2, s3, 12
                  or           a4, s6, a5
                  srai         tp, s11, 20
                  sra          gp, s9, a0
                  sub          a1, s9, s7
                  srli         s4, a5, 21
                  auipc        s0, 69409
                  add          tp, a7, t5
                  sltu         a5, s5, a6
                  addi         s9, s4, -238
                  sltiu        t0, s11, -30
                  slt          t5, t2, zero
                  srl          a5, a6, gp
                  ori          a4, s10, -966
                  slt          a5, a6, t4
                  sll          a2, a7, a0
                  srl          tp, s7, tp
                  srl          t6, s10, t5
                  nop
                  and          s6, s5, s7
                  andi         s1, a5, -1214
                  slt          ra, t6, s5
                  sub          a7, a6, t0
                  sltiu        gp, gp, 754
                  auipc        s2, 347523
                  sra          a6, s11, tp
                  and          gp, a3, a1
                  slt          s6, s10, a4
                  ori          t6, a6, -48
                  ori          t4, s8, 1410
                  sltiu        a4, sp, -1192
                  ori          t5, t4, 699
                  sra          t4, a5, a2
                  sub          t6, a1, a2
                  srli         a1, s3, 10
                  srli         tp, sp, 18
                  or           s2, s4, t4
                  srli         s6, a1, 16
                  sub          s1, a0, tp
                  nop
                  xori         s9, a4, 1512
                  slt          ra, a7, s8
                  srli         a2, a7, 19
                  lui          ra, 1017404
                  slti         t5, s4, 836
                  addi         a4, sp, -1922
                  auipc        s10, 854471
                  srai         s11, a5, 17
                  slti         a7, s7, -1801
                  slti         s6, t5, -598
                  srl          t4, tp, s9
                  xor          s2, a4, s10
                  sra          t5, s6, t5
                  nop
                  sll          t0, s1, s4
                  or           s7, s0, s7
                  srl          s4, s1, a4
                  sltu         gp, a2, gp
                  srai         t0, a4, 9
                  andi         a1, a1, -247
                  srli         tp, s6, 11
                  sra          s7, s9, a4
                  slt          s1, a5, s4
                  srl          gp, s10, a3
                  srli         tp, zero, 24
                  addi         s7, sp, -340
                  sltu         s3, t2, s7
                  and          t3, t0, sp
                  auipc        s1, 103764
                  slli         s8, s2, 10
                  nop
                  auipc        a5, 396634
                  or           tp, tp, t1
                  srai         t4, a5, 16
                  slt          s9, a5, gp
                  nop
                  srai         s3, a1, 16
                  lui          s0, 328376
                  srl          gp, a6, s8
                  addi         s8, s4, -915
                  srl          t4, a4, t1
                  sra          a2, s0, t6
                  lui          s1, 7762
                  nop
                  xor          s7, a2, a6
                  lui          a4, 756485
                  srl          a4, a6, t4
                  and          s7, s11, a4
                  sra          a5, s8, s5
                  slti         s10, s11, -474
                  andi         t0, s11, -1943
                  ori          s8, sp, 1786
                  lui          a1, 425185
                  add          t0, s2, t2
                  sltu         s5, t1, t6
                  slti         tp, zero, -925
                  sub          t3, ra, ra
                  xori         gp, s10, -1914
                  sra          s1, s9, a0
                  xor          s7, t6, t0
                  auipc        sp, 681337
                  slt          a4, s6, ra
                  xor          s4, a7, t3
                  slli         s10, a0, 1
                  srl          tp, sp, s2
                  slli         s10, s11, 19
                  or           a5, s3, t2
                  or           a6, s4, s4
                  slli         a7, s10, 30
                  andi         sp, a4, -1281
                  nop
                  slt          a2, t6, s0
                  srli         ra, t3, 8
                  ori          tp, tp, -365
                  nop
                  addi         s10, a3, -1363
                  add          a4, t4, s6
                  add          tp, s9, t5
                  and          a3, s0, t6
                  sltu         t4, a7, sp
                  srl          s2, zero, s0
                  auipc        t6, 637377
                  auipc        ra, 534929
                  srli         a6, s7, 29
                  sltiu        s10, t4, -503
                  slt          s3, s3, t2
                  srai         t5, t1, 31
                  and          a6, s5, t2
                  xori         s8, sp, -1266
                  sltiu        t0, a5, -452
                  sub          sp, s6, s8
                  lui          t4, 390162
                  srli         gp, s1, 12
                  nop
                  xor          a2, tp, a1
                  srai         zero, s2, 14
                  slt          zero, a1, t2
                  slli         a4, a1, 22
                  add          a1, s4, tp
                  slt          a5, t3, a4
                  sra          s5, s6, a4
                  addi         s2, sp, 1067
                  srli         s5, s11, 3
                  and          s10, t1, s10
                  srl          a4, t0, s6
                  sltu         t3, s7, s1
                  or           sp, t1, a7
                  andi         a6, a1, -1413
                  sll          t6, a0, a3
                  sltiu        a6, a7, -914
                  nop
                  sltu         s9, t5, s10
                  slli         a5, t6, 28
                  srai         s5, t2, 16
                  nop
                  srai         t3, t5, 10
                  srl          a7, sp, s5
                  sll          s7, s7, t6
                  auipc        sp, 358160
                  auipc        s9, 70763
                  lui          s8, 500520
                  slti         s4, a6, -956
                  lui          a5, 8293
                  add          s7, s5, ra
                  sll          s3, s6, a7
                  xori         a3, t6, -751
                  add          t3, t6, a5
                  and          s9, s9, s1
                  ori          a3, a4, 935
                  xori         s6, tp, -1726
                  sub          a2, a6, a3
                  or           a4, t6, s0
                  lui          t5, 151408
                  or           a5, s8, sp
                  nop
                  srai         gp, s11, 16
                  auipc        s6, 722168
                  slti         zero, s1, -149
                  sltiu        a1, a4, -835
                  sll          s4, s0, s7
                  sltiu        s9, s4, 378
                  andi         t5, s8, 1970
                  sra          a4, a0, t0
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           t6, 0x80000000
                  li           s2, 0x0
                  li           gp, 0x35a4098e
                  li           t3, 0x0
                  li           ra, 0x80000000
                  li           s0, 0xffffffff
                  li           tp, 0x0
                  li           t0, 0x80000000
                  li           s6, 0xffffffff
                  add          s2, s6, gp
                  sub          s0, t3, ra
                  sub          ra, t0, t3
                  nop
                  nop
                  add          s2, s6, tp
                  addi         s10, tp, 425
                  auipc        s2, 1005716
                  auipc        t6, 551089
                  addi         tp, t0, -585
                  nop
                  lui          t3, 625354
                  sub          gp, t6, s0
                  addi         t6, t3, -1485
                  auipc        t0, 897633
                  sub          t6, s2, ra
                  addi         t3, gp, 454
                  nop
                  add          gp, t3, t0
                  lui          s0, 319856
                  add          t0, t0, s6 #end riscv_int_numeric_corner_stream_27
                  sltu         a2, s0, a0
                  auipc        a4, 819920
                  slli         t5, s2, 1
                  sra          s8, a3, s9
                  xori         a3, s10, -916
                  auipc        s9, 290712
                  and          t6, a2, s3
                  sub          s9, gp, a3
                  sltiu        t0, s1, 1247
                  andi         t5, s5, 349
                  andi         gp, sp, -1914
                  add          t4, s4, ra
                  sra          t0, a6, a0
                  add          a7, sp, a1
                  xor          s3, a7, t2
                  auipc        a6, 398163
                  or           s4, a6, a6
                  srl          s7, zero, t2
                  lui          ra, 274825
                  sltu         t0, s4, a0
                  or           a6, s3, zero
                  auipc        tp, 440964
                  add          s11, s2, s5
                  addi         t0, sp, -664
                  sltu         s7, sp, sp
                  lui          ra, 556354
                  nop
                  srai         s1, t4, 16
                  slti         s1, a5, -1980
                  and          sp, s10, t2
                  xori         s4, a3, 1152
                  auipc        sp, 215261
                  andi         s6, a2, -440
                  srl          t4, gp, t5
                  srli         t3, t0, 16
                  sra          t0, a1, s6
                  sll          zero, t4, a6
                  srai         s9, s9, 3
                  srli         zero, s6, 8
                  srl          s6, tp, sp
                  slti         a3, t4, -102
                  xor          s6, t1, a2
                  sll          gp, t1, a5
                  slti         a3, s7, -721
                  sll          s9, t4, zero
                  slt          t4, t6, t4
                  nop
                  srai         s9, tp, 10
                  sll          s4, s0, t2
                  lui          s10, 724122
                  srai         a3, zero, 31
                  ori          a4, s2, 952
                  sra          s6, tp, a0
                  lui          s2, 762223
                  xori         s4, a1, -1392
                  slli         s0, a6, 26
                  ori          t3, s11, 559
                  xor          s7, t1, a7
                  slt          a4, a4, s7
                  nop
                  srai         t4, sp, 9
                  auipc        a4, 224847
                  addi         gp, a2, 1124
                  addi         a2, t6, -933
                  sra          s8, a1, a4
                  srai         a5, a1, 18
                  addi         s6, s1, 1690
                  or           zero, a4, t5
                  lui          a3, 879188
                  slli         s7, sp, 15
                  sub          t3, a4, a2
                  srai         s3, s2, 28
                  andi         zero, s7, 1292
                  auipc        a5, 588891
                  sltiu        gp, t1, -659
                  add          a4, s5, s5
                  slt          s7, s7, t1
                  sltu         s6, t0, a6
                  nop
                  slti         t4, a5, 476
                  slti         a4, s0, 763
                  sltiu        s10, t1, -622
                  sltu         t0, a1, t6
                  or           t4, zero, sp
                  auipc        s0, 181427
                  slti         gp, s0, 990
                  or           zero, s7, a1
                  ori          ra, s5, -413
                  srl          sp, zero, s7
                  addi         sp, s2, -1463
                  xor          sp, ra, a1
                  sub          s7, tp, a1
                  xori         a1, gp, -394
                  srai         s11, t5, 15
                  sltiu        gp, a6, -1490
                  add          t4, s8, a7
                  xori         a2, t4, -1240
                  srai         s9, t4, 9
                  auipc        t0, 219054
                  ori          s2, s2, 131
                  lui          zero, 321623
                  addi         s7, s11, 683
                  srli         a1, s1, 15
                  xori         s1, tp, -12
                  and          t6, s2, sp
                  nop
                  slli         sp, s9, 3
                  addi         s11, t4, 138
                  nop
                  srli         a7, s11, 22
                  sll          t5, a4, t1
                  slt          zero, t2, a5
                  sll          t3, t6, gp
                  nop
                  srai         s3, zero, 21
                  auipc        a6, 28449
                  sltu         a4, s5, a4
                  auipc        s5, 1022725
                  slti         s5, t0, 549
                  auipc        t3, 141708
                  slli         zero, a2, 1
                  slt          s10, t6, s7
                  sll          gp, t5, tp
                  lui          s11, 876005
                  sll          t0, ra, t6
                  slli         s5, t1, 19
                  xor          s7, a3, s1
                  slti         s7, s5, -274
                  slli         s6, s9, 20
                  xor          s0, a5, a6
                  addi         ra, a0, -161
                  addi         s5, t5, 1836
                  srl          s1, s0, a1
                  srl          gp, sp, s8
                  lui          s1, 58359
                  sltiu        t4, s10, -1097
                  sltiu        a4, tp, -1572
                  sll          tp, t6, sp
                  add          t0, s2, s11
                  slti         a2, t5, 891
                  auipc        s1, 983816
                  slt          sp, a3, a6
                  or           a5, a4, s1
                  sll          s7, a7, s6
                  slt          sp, s5, a5
                  sll          a1, t2, a2
                  and          t4, tp, s3
                  slt          t5, t2, a7
                  slti         a5, a6, 714
                  slli         a2, ra, 29
                  auipc        s2, 405683
                  srli         s5, s4, 26
                  sub          t6, t4, tp
                  slli         s4, a1, 16
                  sll          s2, s1, t4
                  nop
                  srli         s7, t5, 7
                  sra          s4, s10, s1
                  auipc        s5, 941448
                  auipc        s6, 268648
                  sub          s7, gp, s9
                  sltiu        a1, t3, 215
                  auipc        s10, 254766
                  srai         tp, t4, 2
                  sltiu        a4, a6, 597
                  sra          a2, t1, s0
                  slt          s0, ra, s10
                  srai         s2, a5, 2
                  sub          a2, s9, t2
                  sra          s2, s11, a1
                  andi         s4, s11, 1107
                  srai         t0, t0, 25
                  slt          s1, a0, sp
                  andi         a3, t1, -1332
                  nop
                  or           s5, a2, t4
                  ori          a3, t6, 177
                  auipc        s8, 582303
                  ori          t3, gp, 1573
                  ori          s1, s9, 1074
                  add          s0, a0, s1
                  andi         s9, a6, 327
                  sltu         a6, s3, a2
                  xor          sp, s11, t4
                  slti         s10, t5, -383
                  add          t3, a6, sp
                  addi         t4, a6, -270
                  and          sp, a6, s5
                  and          s8, t6, a5
                  srai         zero, gp, 5
                  lui          sp, 848091
                  slli         s11, s4, 10
                  auipc        a7, 427527
                  srai         a6, t3, 2
                  slt          s5, s4, a5
                  xori         a7, s10, -1928
                  sltu         a4, s0, a4
                  slli         tp, s11, 20
                  auipc        s11, 614638
                  auipc        s1, 463894
                  srl          a5, a7, s6
                  andi         s1, s3, -1
                  slt          s0, a5, t4
                  ori          s9, a6, -832
                  sra          a6, zero, gp
                  add          t3, s3, s10
                  or           s11, a7, t2
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           t5, 0xffffffff
                  li           a2, 0xffffffff
                  li           gp, 0x2b7ea90a
                  li           s6, 0x80000000
                  li           s4, 0xffffffff
                  li           s3, 0x80000000
                  li           s2, 0xffffffff
                  li           a7, 0x0
                  li           s1, 0x65ec6eef
                  addi         s10, s1, -1308
                  nop
                  sub          a7, s3, s2
                  addi         gp, gp, -1197
                  sub          s1, s4, s1
                  add          a2, a7, s3
                  addi         s4, s10, 278
                  nop
                  lui          a7, 453249
                  lui          s1, 387454
                  lui          gp, 207624
                  sub          gp, a2, t5
                  nop
                  auipc        s1, 390295
                  sub          t5, a7, s3
                  add          s3, a7, t5
                  auipc        gp, 780488
                  nop
                  add          s4, s1, a2
                  auipc        gp, 812347
                  addi         t5, t5, -478
                  nop #end riscv_int_numeric_corner_stream_32
                  srl          s5, t6, a4
                  sll          s4, a7, sp
                  slt          s8, a1, t6
                  sra          zero, gp, s7
                  srl          sp, s1, a5
                  srli         s10, s9, 26
                  slt          t4, s4, s7
                  slli         s7, a0, 4
                  and          s9, a5, sp
                  xori         a4, s3, 1054
                  andi         a1, a3, 105
                  sll          s3, s4, a4
                  and          s8, s5, t2
                  srl          a4, t4, tp
                  sra          s7, ra, t3
                  sltu         s11, a1, s5
                  lui          s8, 760856
                  andi         a3, tp, 942
                  auipc        ra, 129242
                  sra          s8, t6, a0
                  sltu         a7, gp, a5
                  slt          ra, a2, s4
                  andi         zero, gp, 482
                  sll          a2, a0, t0
                  auipc        s10, 113653
                  and          s2, s5, s7
                  lui          s3, 956797
                  sll          s10, s8, t4
                  slt          a4, s9, t0
                  nop
                  xor          s11, s6, s0
                  add          s7, s2, s4
                  auipc        a4, 965736
                  srai         t4, a5, 18
                  sub          s6, t5, t1
                  nop
                  srli         s6, s6, 30
                  slti         a7, s6, 879
                  srli         s0, s2, 8
                  srai         sp, a5, 13
                  slt          s2, s0, a0
                  sll          s11, s11, t3
                  sub          a7, s11, s5
                  addi         s4, s6, 1929
                  add          s4, t1, a3
                  addi         s10, a0, 1065
                  add          s7, t1, a3
                  xor          sp, s9, a2
                  sltu         s1, t6, a5
                  slt          sp, gp, a4
                  sltu         a7, t1, a7
                  sub          s6, s0, zero
                  addi         tp, s4, -429
                  sltu         s3, gp, s3
                  srl          a3, s4, s5
                  nop
                  slti         ra, t3, -1529
                  slt          s0, sp, a5
                  sltu         tp, t2, a4
                  slti         gp, t6, 742
                  xor          s1, a7, a4
                  srl          a1, t4, t2
                  srl          s3, a3, a0
                  or           tp, s4, s7
                  sub          gp, s7, a5
                  sub          a3, s4, a4
                  slti         s2, s4, -1410
                  nop
                  sll          ra, a2, s2
                  andi         t3, a7, 121
                  sra          t6, s9, sp
                  auipc        s6, 282300
                  nop
                  srli         t4, sp, 2
                  addi         s11, a6, -1850
                  and          s6, s1, s0
                  ori          a3, a7, -624
                  and          a3, s10, s1
                  and          s0, s3, s4
                  or           t0, a3, a1
                  sra          s2, s2, s11
                  lui          sp, 969050
                  slli         s0, a3, 22
                  slli         gp, ra, 10
                  srl          a4, t0, tp
                  srl          s3, t4, t3
                  auipc        s5, 837408
                  slt          s10, s7, a2
                  addi         s3, s11, 228
                  sub          s10, s0, s10
                  ori          t0, zero, -1168
                  srl          a6, a7, t6
                  ori          s8, s0, -1843
                  sll          zero, s6, ra
                  slti         s0, s9, 399
                  nop
                  srai         a6, a3, 25
                  slt          ra, s7, s5
                  sub          a5, a2, zero
                  sub          s6, zero, tp
                  srai         t4, s3, 28
                  sra          a7, t0, t0
                  sra          t3, t5, s1
                  sll          s10, t6, s0
                  and          a3, t5, t0
                  sltiu        s0, s7, -704
                  slli         t5, a3, 6
                  andi         s9, t6, -596
                  auipc        s10, 951841
                  slli         gp, s8, 7
                  xori         t3, t4, -1989
                  srl          a7, t4, s6
                  ori          ra, s10, -1294
                  auipc        s9, 1043012
                  slti         a4, s5, -56
                  add          a2, a5, s2
                  andi         s4, s3, -1357
                  add          zero, a6, a5
                  add          s7, s5, s8
                  addi         sp, a7, -1640
                  sub          a6, t0, s7
                  srl          a7, a7, a0
                  slli         s6, a5, 18
                  sra          sp, a3, a1
                  ori          a7, t5, -878
                  add          s2, zero, s4
                  and          s4, a1, a2
                  andi         gp, s9, 458
                  lui          t4, 334912
                  xori         s8, s4, 1686
                  lui          s10, 777814
                  xor          s9, s3, t4
                  srai         s10, a0, 1
                  slli         s6, t2, 5
                  xori         zero, s2, -223
                  nop
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a1, 0x82dc3075
                  li           s1, 0xa5740c38
                  li           a3, 0x0
                  li           ra, 0xffffffff
                  li           s9, 0xffffffff
                  li           s4, 0x80000000
                  li           s10, 0xffffffff
                  li           t6, 0x0
                  li           s0, 0x0
                  add          a4, a1, s1
                  add          a3, s4, ra
                  add          s9, s1, a3
                  auipc        a4, 317343
                  lui          s10, 458920
                  addi         s10, s10, -1095
                  lui          ra, 676950
                  add          s4, a3, s10
                  nop
                  addi         t6, s9, -568
                  addi         s9, s0, -2013
                  addi         a3, t6, -1397
                  lui          s10, 508778
                  auipc        a3, 555231
                  add          s0, a4, s9
                  sub          a3, a1, a4
                  sub          s10, s10, s4 #end riscv_int_numeric_corner_stream_7
                  slti         s3, t0, -1962
                  srl          zero, s1, tp
                  slli         s0, gp, 5
                  slt          a6, a7, t6
                  sltiu        s0, t2, 968
                  srl          s7, s9, t5
                  addi         s11, t5, 1373
                  sra          zero, s9, ra
                  sltu         s10, a6, sp
                  sra          s3, zero, s1
                  auipc        s0, 860398
                  auipc        s10, 244374
                  sub          gp, ra, s6
                  lui          zero, 685085
                  andi         s1, s1, 1416
                  sra          s4, s2, a6
                  lui          tp, 389195
                  slli         t5, a6, 16
                  srli         a4, a7, 23
                  add          t6, a4, s2
                  ori          s10, a0, -2037
                  sub          s0, a7, s3
                  add          sp, sp, s5
                  slli         s9, t1, 0
                  sra          s2, a5, a1
                  srai         s7, s9, 3
                  ori          zero, a3, 224
                  and          t4, t1, a1
                  slt          s5, a0, a6
                  lui          a5, 908074
                  nop
                  and          t0, t5, a1
                  ori          s0, a6, -1021
                  xor          t5, a4, gp
                  sltiu        t4, s7, 1980
                  auipc        s8, 1003288
                  sub          s8, a3, a3
                  nop
                  slt          t6, a3, a0
                  and          a3, s7, ra
                  xori         s8, a0, -190
                  or           a6, a0, s9
                  slti         a4, sp, 707
                  or           s0, a7, s0
                  slli         a6, s6, 22
                  sra          s6, t3, s5
                  sltiu        s8, zero, -1345
                  lui          gp, 71859
                  srli         gp, a5, 14
                  slti         tp, a7, 1416
                  nop
                  srli         gp, t3, 2
                  xor          s4, s3, s9
                  sltu         t0, tp, s1
                  sub          tp, t5, s11
                  sra          s6, s9, s7
                  xor          a3, a1, s2
                  slti         s4, s10, -1064
                  addi         gp, gp, -706
                  add          s10, t6, t2
                  slli         s4, a3, 18
                  sll          t5, gp, s8
                  srai         gp, t4, 6
                  xor          s11, s10, tp
                  sltu         tp, s4, s0
                  srli         s3, a3, 15
                  srl          t0, t4, tp
                  sll          zero, t2, a0
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           s0, 0x636efd64
                  li           a7, 0x80000000
                  li           s3, 0xffffffff
                  li           s5, 0x0
                  li           a1, 0x0
                  li           s8, 0x0
                  li           s7, 0x80000000
                  li           a6, 0xffffffff
                  li           s11, 0xffffffff
                  lui          s5, 186560
                  sub          s7, s5, s3
                  sub          s11, s0, s5
                  nop
                  addi         s7, s3, -813
                  add          s11, s0, s8
                  add          s0, s8, s7
                  addi         a6, s7, 462
                  lui          a6, 889229
                  auipc        a3, 584638
                  addi         a7, s7, -1863
                  lui          a3, 666155
                  nop
                  add          a7, s0, s3
                  add          a3, a1, a7
                  sub          s5, s8, a3
                  lui          s11, 345713
                  auipc        a1, 360772
                  nop
                  auipc        s0, 467364
                  lui          s11, 932403
                  nop
                  nop
                  addi         a7, s8, -1125
                  addi         s5, a7, -815
                  add          a3, s7, s7
                  add          a1, a3, s8 #end riscv_int_numeric_corner_stream_35
                  add          t3, t0, s4
                  andi         s10, s8, 1399
                  srl          s3, s8, t6
                  slti         s11, s3, 1504
                  slli         t4, a7, 1
                  srai         s8, t0, 15
                  lui          tp, 989238
                  andi         a4, a7, -861
                  lui          s8, 754586
                  sub          a6, tp, a3
                  slti         a2, s9, -88
                  slti         s0, s2, -680
                  and          s1, s0, s4
                  ori          t3, a4, 922
                  srl          s4, a1, s7
                  srli         a3, a1, 9
                  srli         a7, s7, 27
                  slt          s8, s7, t2
                  xor          t6, s7, t1
                  slli         s8, a2, 11
                  xor          a3, s3, a5
                  nop
                  slt          s5, t1, a7
                  ori          a7, a2, 851
                  add          s3, s1, t1
                  nop
                  slli         t0, s5, 15
                  add          zero, s7, t3
                  xori         t3, a4, -946
                  slli         t3, tp, 23
                  nop
                  addi         s6, a7, 599
                  auipc        s5, 536476
                  sub          t6, s2, s2
                  nop
                  srl          s6, s7, s5
                  srl          s7, s10, gp
                  sll          s6, s6, t6
                  sltu         s0, t0, s1
                  lui          t6, 955366
                  slti         s4, s8, 1580
                  srli         s11, s4, 9
                  or           a2, s5, s10
                  add          s11, a3, a2
                  sra          s6, a1, a2
                  add          a1, s3, a6
                  slti         s10, a7, -1007
                  sltu         s1, a2, s4
                  slli         t0, s1, 15
                  ori          t4, a5, 1716
                  lui          t0, 706283
                  slt          sp, a4, zero
                  xori         ra, s11, 254
                  nop
                  srli         s1, ra, 31
                  lui          s5, 214322
                  and          a5, a3, t4
                  slli         zero, t5, 24
                  slti         s4, a7, 127
                  ori          tp, s7, 1349
                  sltu         s8, s0, s5
                  addi         t4, a1, -1556
                  lui          s11, 144845
                  or           t3, t0, a4
                  and          s6, s1, t6
                  srai         a1, a0, 2
                  lui          sp, 560681
                  xor          s8, a5, s5
                  xori         s1, a7, -1048
                  lui          s5, 987365
                  or           s3, s11, s2
                  srli         a1, t5, 14
                  sltiu        s1, a3, 695
                  slti         s10, a2, -1701
                  and          s1, s10, s6
                  sll          a1, s9, t3
                  sra          t0, a4, a4
                  lui          a5, 292557
                  sra          ra, ra, t2
                  srai         t6, t6, 14
                  slt          s6, a3, s4
                  ori          a7, s6, 508
                  nop
                  addi         ra, a5, -1312
                  srai         s4, s1, 11
                  or           gp, gp, s10
                  sll          a6, s1, tp
                  and          a1, a5, a3
                  auipc        s1, 719348
                  sll          s5, s1, s0
                  xor          s8, t6, a4
                  sra          a6, s3, s5
                  nop
                  sltu         ra, zero, s10
                  srai         a4, zero, 16
                  ori          a6, tp, 352
                  sub          a7, s6, t4
                  sll          t0, s3, s7
                  sra          t5, s4, t1
                  sltu         s2, s11, s6
                  andi         a1, s6, -1999
                  addi         t3, s1, 1492
                  slt          s8, tp, ra
                  ori          sp, s7, 1730
                  srl          a5, s9, s11
                  auipc        t0, 202841
                  and          s0, s3, t5
                  nop
                  auipc        a7, 792971
                  lui          zero, 112806
                  srl          s6, s9, gp
                  auipc        s0, 369772
                  addi         tp, s10, 1500
                  slti         s1, t1, -1987
                  slli         sp, a6, 7
                  sltiu        s6, a4, -1789
                  addi         t4, a5, -1179
                  xori         a2, s9, 1300
                  sltu         a2, s1, t1
                  nop
                  sltiu        a4, a5, 1449
                  sll          t4, a4, s0
                  xori         t3, s9, 1848
                  and          t6, s6, a1
                  xori         zero, zero, -1729
                  xor          a6, t6, t4
                  add          a6, s0, t1
                  sltiu        a2, t4, 447
                  sll          t0, s3, s10
                  lui          a5, 243092
                  auipc        s5, 323981
                  xor          s4, s3, t6
                  ori          t0, s10, -1243
                  slt          s1, a5, tp
                  lui          s11, 135333
                  ori          ra, s7, 95
                  sra          tp, s4, s2
                  srai         s8, a1, 7
                  lui          tp, 938392
                  add          a5, s1, s9
                  sltu         a3, sp, t1
                  andi         zero, s0, 620
                  auipc        s2, 31551
                  auipc        zero, 827075
                  sltu         s0, s4, s2
                  add          t3, a5, s9
                  xori         s3, tp, 67
                  andi         s3, ra, 441
                  slt          gp, s6, s0
                  slli         a6, s3, 6
                  and          sp, s9, a6
                  slli         a7, t2, 12
                  sltu         a5, zero, sp
                  sll          s8, t4, a0
                  srai         s9, t1, 28
                  sll          s6, a0, a7
                  srl          gp, t3, s3
                  sub          t0, zero, zero
                  or           s4, a4, s1
                  addi         t5, t6, -1805
                  sltiu        a1, gp, -1552
                  xor          t4, a4, t6
                  xor          t6, s3, s2
                  addi         t5, zero, 975
                  or           s5, zero, ra
                  sltiu        a3, t5, 287
                  sll          ra, s5, t0
                  sltu         s9, t3, s5
                  slli         zero, s9, 19
                  lui          zero, 875961
                  ori          s9, t3, -44
                  sra          t4, s9, t4
                  add          tp, a3, gp
                  ori          t5, sp, -389
                  sub          s0, t6, s7
                  auipc        a1, 326218
                  add          zero, a0, a0
                  sltiu        s6, s7, 1872
                  srl          s2, s2, s0
                  srli         ra, s3, 3
                  nop
                  ori          t3, s5, 1978
                  sub          s5, a1, s8
                  slli         t6, s6, 1
                  andi         s6, t4, 1424
                  sltu         s6, t3, t3
                  or           t6, t5, sp
                  xori         s0, sp, 1695
                  addi         gp, t0, 1107
                  lui          a4, 800200
                  sub          s10, t3, a1
                  addi         a5, a0, 1747
                  ori          a6, s5, -329
                  andi         s4, s2, 164
                  and          s0, tp, a2
                  sub          t0, s10, s4
                  slt          s11, a0, s6
                  slti         s6, s8, -1302
                  sra          a1, s4, a6
                  sltiu        s3, a1, -1454
                  srai         sp, t1, 14
                  sltiu        s7, tp, -1047
                  xor          t6, s2, t2
                  xor          gp, s4, t3
                  sltiu        a2, t4, 701
                  lui          t0, 377382
                  lui          a1, 325409
                  lui          s11, 307237
                  xori         t6, s3, 939
                  slli         a5, s7, 9
                  sra          gp, a3, s6
                  sll          a5, s10, a2
                  auipc        t6, 435953
                  add          a6, t5, t4
                  srl          s1, a1, s1
                  xori         s9, a2, 1764
                  ori          a1, a0, 145
                  lui          a1, 347522
                  andi         a6, a3, 683
                  and          s2, a0, s6
                  sltu         s3, s7, t1
                  srl          a3, sp, a2
                  srli         t5, s8, 15
                  slt          sp, a6, t1
                  nop
                  slt          a5, t4, t5
                  sra          s11, s3, s1
                  addi         a5, s9, -1157
                  sll          t4, sp, gp
                  slt          t6, s10, t0
                  sltiu        a3, sp, 795
                  nop
                  and          a3, gp, a5
                  or           a5, tp, s10
                  sub          s2, s8, s9
                  slt          s8, s0, t2
                  auipc        s3, 475441
                  srai         s0, s5, 2
                  add          t4, gp, s5
                  sltiu        s9, a4, 513
                  addi         s7, s6, -853
                  slti         a2, s0, -2013
                  sll          t0, a6, tp
                  sll          a2, s6, t2
                  sltu         a6, s0, a2
                  srai         a6, a7, 18
                  or           a3, sp, a1
                  andi         a6, s0, -1295
                  srai         gp, s1, 24
                  xori         s7, s5, -451
                  xor          a7, a3, a4
                  sltu         s2, s8, a7
                  andi         s7, s6, 1867
                  sra          a6, a6, s1
                  sltu         a5, t0, t3
                  or           s7, t1, a4
                  sltiu        a1, s1, -276
                  addi         s1, s7, 1875
                  slt          a5, s11, t5
                  addi         s9, a3, 589
                  sltu         a4, t5, s3
                  or           s5, s9, s9
                  or           s11, a4, t3
                  auipc        a5, 944842
                  slt          tp, t5, zero
                  sub          t3, s11, t2
                  lui          s9, 275288
                  ori          s11, s8, -1203
                  xor          s1, a2, a1
                  addi         s3, t0, -963
                  xori         a4, s3, -1266
                  lui          s10, 412615
                  sltu         s0, s1, ra
                  or           s9, s4, tp
                  or           tp, s11, s10
                  sltu         a5, t5, tp
                  lui          s9, 983055
                  slti         a2, s2, 921
                  lui          s0, 584443
                  ori          s0, t2, 461
                  srai         sp, ra, 21
                  srli         t3, s3, 13
                  sub          s8, s4, t3
                  ori          s10, a7, -1830
                  sltu         a3, a6, s4
                  xori         s10, s8, -825
                  andi         s8, t1, -1836
                  sra          s5, t1, t3
                  srli         s11, s0, 6
                  addi         s2, a7, -1287
                  sltu         a7, a1, s8
                  or           s5, a6, s4
                  sra          t5, t0, a3
                  sub          t3, s7, s10
                  srli         a2, s8, 31
                  sltu         s6, s7, s5
                  sltu         t5, a0, zero
                  add          s0, s10, a1
                  sub          tp, s0, gp
                  xor          s1, a3, a3
                  xor          s7, s7, a7
                  sub          s2, a5, t6
                  addi         a5, t1, -80
                  xori         a3, a4, 1067
                  add          t0, t0, zero
                  add          s10, gp, s7
                  slt          gp, ra, a0
                  ori          t4, s7, 1882
                  ori          s8, t1, 88
                  lui          s3, 963833
                  andi         t5, s2, 1356
                  slti         a2, s9, -507
                  srli         t4, s11, 21
                  and          s2, a4, a0
                  auipc        a5, 494559
                  or           gp, a6, s0
                  addi         t6, s2, -1996
                  lui          s6, 215955
                  addi         t0, s4, -1655
                  add          a2, a0, s1
                  sub          a5, s6, tp
                  add          a1, a4, gp
                  andi         t6, s2, 1465
                  ori          a4, s9, -1268
                  srli         a7, t1, 9
                  slt          s10, ra, t3
                  xori         sp, t1, -880
                  srl          a2, s9, s11
                  sltu         a2, t3, a5
                  sltiu        s3, a1, 577
                  slt          a1, t2, gp
                  xor          a3, s6, t1
                  slt          s2, t4, a7
                  sltiu        s4, a2, 1390
                  nop
                  lui          a3, 813702
                  srli         a4, a6, 17
                  slti         sp, s5, 734
                  slt          t5, sp, t4
                  slt          a6, s8, s9
                  sub          a3, s0, s11
                  or           a3, s2, sp
                  slt          s7, t3, t5
                  sltu         s9, a6, a6
                  srai         s6, a3, 19
                  andi         a4, gp, -689
                  add          tp, s8, a5
                  or           t6, gp, s8
                  srai         tp, s3, 11
                  andi         tp, s2, 580
                  andi         s8, t1, 40
                  slli         gp, s0, 8
                  and          s7, s11, t1
                  add          s4, t0, t5
                  xor          s8, s5, t4
                  slli         s6, a5, 25
                  srai         zero, s9, 12
                  auipc        gp, 851890
                  addi         s0, t3, -991
                  slt          s11, zero, s3
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           gp, 0x80000000
                  li           sp, 0x0
                  li           s10, 0x386888d7
                  li           a7, 0x5b9be281
                  li           t3, 0x80000000
                  li           t4, 0xffffffff
                  li           s1, 0x49027de8
                  li           t5, 0xffffffff
                  li           a6, 0xda03da4b
                  addi         s10, gp, 323
                  add          s1, t4, t4
                  lui          gp, 515665
                  lui          s10, 726293
                  auipc        sp, 714111
                  lui          a6, 344523
                  nop
                  nop
                  lui          t3, 871690
                  addi         a6, a6, -967
                  nop
                  add          gp, t4, t3
                  nop
                  nop
                  sub          a7, a6, a6
                  sub          a6, s0, s0
                  lui          sp, 264508
                  addi         gp, t4, 338
                  sub          s10, t3, a7 #end riscv_int_numeric_corner_stream_23
                  andi         s10, a2, -1120
                  and          s8, a4, s3
                  addi         s7, s7, 194
                  addi         gp, sp, 894
                  slti         s0, a1, -1546
                  slli         a1, s5, 26
                  ori          ra, s5, 499
                  and          t3, s6, s9
                  auipc        zero, 500416
                  srl          s10, t1, s3
                  srl          a2, a0, t1
                  andi         sp, a0, -1682
                  slt          s6, s8, t1
                  slli         ra, s1, 22
                  slti         ra, a1, -871
                  slti         t3, s10, 1188
                  slli         s8, ra, 18
                  sra          a5, s3, s2
                  nop
                  sub          zero, s11, s7
                  auipc        t3, 911460
                  slt          s1, a5, s3
                  and          t0, s7, a5
                  add          s4, tp, zero
                  xor          sp, s9, s6
                  nop
                  and          s6, s11, a2
                  slli         s6, t0, 1
                  srl          a6, ra, t4
                  xori         t4, t0, -573
                  lui          a7, 949675
                  auipc        s6, 271307
                  srl          gp, s3, a6
                  slt          a5, t2, a1
                  auipc        a7, 388522
                  sll          s0, t4, a4
                  or           t4, t2, tp
                  nop
                  srl          tp, s7, ra
                  srli         s11, zero, 11
                  andi         s6, t2, 1972
                  srli         a4, s1, 10
                  sub          s9, a1, s3
                  xori         sp, s9, -134
                  auipc        a5, 227075
                  nop
                  xori         a5, t0, 1204
                  auipc        a4, 503589
                  srai         t3, sp, 6
                  srli         s6, a1, 19
                  sll          s0, s7, a2
                  srai         tp, t6, 9
                  srli         t5, s10, 30
                  sub          s6, s1, a1
                  srai         gp, t1, 14
                  xor          s7, s6, t2
                  slt          a2, tp, s8
                  sll          a4, s0, t1
                  slli         a4, a4, 12
                  add          a1, sp, t2
                  ori          t3, s4, -176
                  sltu         a2, a1, t2
                  auipc        a1, 360684
                  xor          s0, s6, t3
                  ori          zero, t0, 1147
                  slt          s5, s4, t5
                  sltiu        zero, a0, 784
                  ori          a4, a4, 628
                  and          s3, a4, s2
                  slti         t4, a7, 392
                  sltu         a4, s4, a5
                  and          s8, s4, t3
                  andi         a7, s8, 1010
                  auipc        s2, 384135
                  ori          t0, s4, -1952
                  sra          s2, s11, a6
                  auipc        a1, 340320
                  srli         t3, s7, 17
                  or           s11, tp, t6
                  ori          s2, a2, 2014
                  lui          t5, 707629
                  auipc        t4, 120232
                  andi         a6, a3, 328
                  add          tp, t5, s3
                  srai         a7, a6, 29
                  nop
                  slli         a1, s1, 2
                  ori          t3, ra, -943
                  sub          s6, s1, s1
                  srai         t5, s5, 16
                  xor          a1, t5, a2
                  srl          s11, t6, s8
                  slli         t4, s3, 10
                  nop
                  sra          s7, s3, t3
                  sub          s4, t2, a1
                  addi         s6, s9, 83
                  srl          s11, a6, t3
                  slt          s1, a6, s4
                  sltu         t5, s1, t0
                  srai         s7, a1, 29
                  or           a3, a2, a7
                  add          t0, a4, a7
                  srl          s3, a0, t3
                  srli         ra, s9, 13
                  sll          s2, s11, a5
                  and          t0, ra, a0
                  sra          a4, a6, t4
                  sltu         t5, s11, ra
                  srl          s2, a0, t5
                  nop
                  slli         ra, a4, 14
                  srl          zero, a0, ra
                  srli         s4, s1, 3
                  srli         sp, t0, 19
                  add          t4, t4, s10
                  srl          s4, s6, t6
                  ori          a3, a1, 703
                  and          tp, s9, a0
                  nop
                  auipc        t3, 319135
                  addi         a3, s8, -1664
                  auipc        s1, 983806
                  slli         gp, s8, 14
                  add          gp, s8, s8
                  andi         s0, ra, 422
                  sll          zero, s0, s9
                  lui          s1, 312918
                  xori         t4, s7, 2041
                  slti         t5, a4, 1023
                  srl          t0, s4, t1
                  xor          s2, a5, t1
                  nop
                  and          s1, t4, t4
                  sll          sp, gp, s8
                  addi         s8, s6, -1551
                  or           s5, zero, a3
                  sltu         t3, t1, a0
                  add          s10, a3, s1
                  slli         s6, s8, 13
                  and          zero, a2, t6
                  slti         t6, a7, -1274
                  nop
                  sltu         a3, s3, t3
                  sltu         a4, s4, s2
                  srai         a1, a3, 16
                  srli         ra, a5, 1
                  andi         s3, s4, 347
                  slt          s2, zero, t5
                  srli         s1, t3, 29
                  or           ra, s3, s6
                  xori         gp, a7, 351
                  andi         s2, s11, 1488
                  auipc        s6, 72150
                  xor          a4, t1, a0
                  xori         s6, s11, -972
                  srai         sp, a1, 26
                  add          t6, s5, s6
                  xori         s4, s9, -144
                  slli         s8, s2, 29
                  slt          zero, a7, s9
                  slt          s1, t0, t3
                  sltu         s4, s1, a5
                  sltiu        t4, a0, 657
                  or           s8, a7, a0
                  and          s1, t1, t4
                  xor          s10, s4, t5
                  slt          a3, a4, a4
                  ori          s9, a2, 630
                  nop
                  srli         s3, t4, 12
                  sltu         t3, gp, s4
                  add          a2, s8, t1
                  xori         t3, ra, -1097
                  and          t4, a2, a7
                  sll          tp, s8, s9
                  auipc        s0, 965034
                  srai         s5, t0, 24
                  sra          t6, s6, t0
                  slli         a2, a4, 20
                  or           s11, a4, a6
                  sub          a5, t2, tp
                  srai         s9, t4, 13
                  sub          s0, s10, s9
                  andi         a3, t3, -1449
                  andi         s1, s1, 657
                  or           s9, ra, s8
                  sub          tp, s1, a4
                  sltiu        sp, s11, -1614
                  addi         a5, a3, 1318
                  xor          s8, a3, s5
                  xori         s5, a4, 763
                  and          s6, t6, t0
                  sll          s9, a2, t1
                  addi         sp, a1, 1315
                  and          a6, s6, s0
                  sub          t0, s3, a2
                  sub          gp, a3, a6
                  ori          zero, t4, 432
                  sra          t5, s11, sp
                  xor          a3, t0, t4
                  and          s3, zero, t1
                  andi         a4, a4, 613
                  add          s3, s1, s9
                  srai         a7, a4, 17
                  sub          a4, gp, s6
                  sltu         sp, ra, t1
                  auipc        s8, 376504
                  and          s4, tp, s3
                  sub          t6, a6, s2
                  or           a7, s0, sp
                  slt          s3, t6, t6
                  slti         zero, s4, -542
                  auipc        a5, 594570
                  sra          a2, a6, a1
                  ori          tp, t0, -759
                  xor          s8, s8, s5
                  sra          s2, a6, s9
                  xor          a1, a0, t6
                  lui          s1, 906566
                  xor          s7, gp, gp
                  andi         a4, a5, 456
                  srli         a5, zero, 7
                  sll          s7, a7, s6
                  srai         s8, s0, 13
                  sll          s2, s2, s8
                  auipc        s5, 17680
                  auipc        a7, 427345
                  sll          s6, s9, a0
                  andi         a4, t2, -1646
                  addi         a5, a7, -295
                  lui          s1, 400455
                  sll          zero, t4, sp
                  srl          a7, s2, a6
                  srl          s2, t6, gp
                  ori          a4, a7, -1539
                  auipc        tp, 127023
                  sra          s1, ra, a0
                  sll          t0, s1, s10
                  ori          a4, t3, -805
                  srl          s0, a2, s2
                  sub          a3, a4, t1
                  ori          s2, a5, -789
                  sll          a6, a5, s7
                  sub          s9, a2, a6
                  lui          s4, 192790
                  addi         t3, t0, 437
                  srl          a3, a0, t1
                  lui          s10, 39239
                  auipc        a1, 385126
                  slli         s10, a2, 19
                  addi         tp, a1, 1252
                  srai         t4, t1, 12
                  sltiu        gp, s10, 1078
                  or           sp, t2, s5
                  srli         s7, s6, 11
                  add          s4, t3, tp
                  lui          a5, 241968
                  auipc        s10, 162324
                  xor          s2, t5, a1
                  srai         tp, s7, 28
                  srl          t0, a4, a3
                  nop
                  or           s2, a7, s7
                  lui          s4, 73975
                  auipc        s8, 664628
                  srai         s3, gp, 13
                  xor          s6, gp, t2
                  slt          gp, tp, a1
                  sltu         gp, s1, s0
                  slti         s5, a4, -1726
                  slli         gp, a5, 7
                  lui          a5, 1028117
                  slli         s2, s11, 7
                  add          a3, s9, s1
                  slti         t5, tp, -289
                  andi         s8, s0, -748
                  sltiu        s0, s4, -1283
                  or           s7, s2, s0
                  sltiu        sp, s4, 280
                  slt          zero, s0, s6
                  sub          t3, a3, gp
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t0, 0xffffffff
                  li           s7, 0x5cca66cc
                  li           t6, 0x0
                  li           t5, 0xe378d802
                  li           s10, 0x80000000
                  li           s11, 0xffffffff
                  li           s3, 0x6b7a6aff
                  li           s8, 0xb7722f7
                  li           s0, 0xae1f7bcc
                  nop
                  lui          t0, 92010
                  add          s0, t0, s0
                  auipc        a2, 861227
                  auipc        t0, 37473
                  lui          s11, 125681
                  nop
                  addi         t0, s8, -111
                  addi         s3, a2, 1646
                  lui          s7, 26218
                  auipc        s0, 407148
                  sub          t0, t0, t0
                  add          s11, t5, s10
                  addi         s8, s8, -1952
                  auipc        s8, 600643
                  lui          t0, 666739 #end riscv_int_numeric_corner_stream_0
                  add          gp, a1, a6
                  srl          a1, t2, a6
                  and          s9, s5, t6
                  lui          a6, 442305
                  auipc        zero, 928573
                  slti         sp, s9, 1949
                  slt          t0, s8, s5
                  or           t5, tp, s11
                  or           s9, a2, t2
                  ori          t0, s4, -419
                  nop
                  slli         s5, s0, 22
                  sub          zero, s9, sp
                  slli         gp, zero, 17
                  sub          s7, s2, a6
                  sll          t5, t2, t6
                  slti         a2, gp, 1514
                  and          t4, zero, zero
                  srai         a2, zero, 2
                  sub          sp, ra, s5
                  srai         a4, sp, 28
                  sltu         a1, s2, a1
                  srl          s7, s6, s0
                  srli         a5, s8, 3
                  or           s4, s8, t0
                  andi         a3, a3, -1145
                  sll          gp, s5, s0
                  sltiu        t6, s4, 956
                  nop
                  srl          t0, gp, s1
                  auipc        zero, 399286
                  nop
                  slti         s8, a0, -546
                  sltu         s6, s10, s10
                  sltu         zero, s8, t3
                  andi         s2, s0, 333
                  and          s5, a4, a4
                  srai         s3, a2, 6
                  auipc        t0, 453687
                  sub          s9, s10, a4
                  xori         gp, t0, -1894
                  srli         t6, t2, 2
                  add          tp, a4, tp
                  srli         t0, s0, 1
                  and          t6, s7, s1
                  srai         a3, ra, 14
                  sll          s5, t3, s0
                  sltiu        s1, t2, 1395
                  lui          a1, 579099
                  and          sp, t0, sp
                  nop
                  slli         a4, s11, 27
                  sub          sp, s1, a4
                  sltu         t4, s7, a6
                  slti         s8, s1, 1277
                  srai         a6, s3, 9
                  andi         t3, a6, 198
                  ori          a5, a0, 777
                  slti         a4, s9, 205
                  sltu         a6, s11, sp
                  slli         s5, gp, 10
                  srl          s9, t2, a0
                  lui          s9, 1026493
                  nop
                  addi         a5, t5, -1059
                  slt          s6, s9, t1
                  sll          s7, gp, s6
                  lui          a2, 784455
                  andi         t4, s3, -1369
                  xor          s7, gp, ra
                  srli         t3, s4, 16
                  sra          s5, s1, tp
                  ori          a4, s6, 499
                  andi         sp, a1, -1715
                  and          s2, t2, s1
                  addi         gp, s8, 11
                  slti         t0, t3, -1418
                  xor          s10, s5, t6
                  slt          a3, t0, a6
                  slli         t5, a2, 4
                  add          a2, t2, s11
                  xor          gp, s2, s7
                  slli         s10, s3, 17
                  add          s8, s7, s4
                  slt          a2, s2, s7
                  andi         a5, ra, 1426
                  nop
                  andi         zero, s6, 751
                  srli         gp, s6, 15
                  srl          a4, zero, a7
                  sll          t4, t1, s10
                  slt          s11, a7, a3
                  auipc        a2, 91694
                  xor          a5, a5, sp
                  xor          t5, a5, gp
                  sltu         t0, s10, s3
                  nop
                  sra          a7, t3, s2
                  sll          t5, s9, a5
                  slli         a1, s0, 13
                  slt          s5, s10, s0
                  xor          s2, a1, a3
                  srai         t6, a2, 21
                  xori         ra, sp, -958
                  addi         a3, ra, 921
                  srl          s7, s3, s4
                  auipc        s7, 830263
                  slt          a7, t3, gp
                  srli         t0, t2, 29
                  sll          t4, tp, t2
                  xori         t5, a1, -611
                  add          gp, t2, zero
                  nop
                  addi         s1, ra, 1544
                  slt          s11, t0, s9
                  slli         s11, t0, 18
                  slli         t5, ra, 15
                  slt          t5, s1, a6
                  addi         a7, s5, -61
                  sltiu        a5, sp, -1393
                  ori          s4, a1, 981
                  auipc        tp, 988992
                  andi         s1, a1, 846
                  andi         s11, s1, -903
                  xor          a5, t4, s10
                  srai         s9, t0, 11
                  xori         s1, a1, -146
                  xori         s11, t6, -1634
                  and          a4, s2, a6
                  slt          a4, s10, s8
                  srl          t0, s7, t1
                  sra          zero, s5, s0
                  sll          s9, sp, t0
                  srl          a4, t3, s9
                  slli         s7, zero, 6
                  sltiu        a6, s8, -1192
                  sll          a3, a4, s7
                  sll          s3, ra, s9
                  xor          sp, s5, s2
                  slt          tp, t0, s7
                  slt          a2, t5, tp
                  xori         t6, s10, -891
                  slti         a3, a1, -239
                  srl          s5, ra, a3
                  srli         t4, s6, 13
                  nop
                  sltiu        a4, t6, -1762
                  and          a5, a1, a2
                  andi         a2, sp, 519
                  and          t0, a0, a0
                  srli         s7, a4, 26
                  and          a3, s8, t1
                  xor          a2, s1, s4
                  lui          zero, 230672
                  andi         sp, a1, -1161
                  sltiu        s0, a0, 1088
                  lui          s0, 585971
                  ori          gp, s6, 1729
                  slli         t4, t5, 4
                  auipc        s5, 850821
                  sll          t5, sp, a0
                  sltu         s10, a2, tp
                  slt          t6, t2, tp
                  sltiu        a7, a0, -939
                  srl          sp, s8, s9
                  andi         s6, s10, 1503
                  srai         zero, sp, 15
                  lui          s9, 42925
                  slt          a4, ra, ra
                  sra          zero, a0, t2
                  add          a5, a2, a1
                  add          s2, t4, gp
                  slti         s11, s8, 1263
                  xori         zero, s11, -1161
                  ori          t6, zero, -1668
                  or           s8, s2, a0
                  slti         tp, s1, -1213
                  sltiu        a1, s0, 1063
                  slt          a6, sp, t1
                  srl          a6, a3, s7
                  addi         t6, s9, 1075
                  add          s1, t3, a0
                  and          s8, t5, t3
                  sll          s3, s6, s0
                  addi         a3, a0, 1519
                  and          s2, s10, s1
                  sra          t6, gp, s2
                  andi         s1, t0, 415
                  srl          s2, a5, t1
                  sltu         t0, a7, a6
                  lui          tp, 1029458
                  xori         gp, s4, -113
                  ori          sp, a0, 1548
                  sra          a1, zero, t5
                  sra          ra, ra, s4
                  sub          s10, a2, gp
                  ori          gp, s6, -1569
                  nop
                  srli         t4, gp, 9
                  or           s6, s6, ra
                  auipc        gp, 301316
                  andi         s0, s3, 1081
                  or           gp, t2, t3
                  andi         t0, zero, 1444
                  sll          a6, t5, t4
                  andi         t4, a4, -1926
                  slli         s10, t1, 29
                  and          s3, a3, t0
                  xor          s2, a6, a4
                  srli         t4, a3, 3
                  sub          s8, s0, a2
                  srl          t0, s10, t1
                  srli         tp, s4, 2
                  srl          a1, gp, sp
                  sub          a5, s11, s6
                  ori          a4, s2, -1510
                  nop
                  sltu         s2, a7, a4
                  sub          t0, a6, a6
                  sltiu        t6, s7, -1146
                  ori          s4, s6, 1973
                  xor          s1, zero, t5
                  xor          sp, zero, s10
                  sltiu        s0, t2, -970
                  ori          s2, s9, 870
                  ori          ra, s11, 1775
                  nop
                  srli         s6, a2, 25
                  auipc        a5, 441634
                  xori         s5, gp, -730
                  add          s5, s2, ra
                  slli         s3, s1, 29
                  slt          a1, s9, s1
                  slli         s2, t4, 25
                  sltu         ra, a7, ra
                  slti         s7, ra, 1577
                  sra          s5, a2, a1
                  and          s4, a6, gp
                  sll          s7, s10, s5
                  auipc        sp, 442565
                  sltu         s0, a1, a5
                  xori         s6, s6, 512
                  sll          a6, s9, t1
                  sub          a2, s10, a3
                  srl          t3, a4, s3
                  andi         sp, t4, -865
                  xori         s7, s2, 1867
                  xori         s10, s3, -237
                  andi         s7, t5, -309
                  sub          gp, a3, s5
                  sra          zero, t3, a6
                  xori         s0, a2, 1288
                  ori          sp, t5, -1672
                  slt          s8, tp, t2
                  xor          a7, a7, a7
                  sra          zero, a2, s9
                  ori          a6, a7, -423
                  slti         gp, a4, -1560
                  lui          s5, 827561
                  srl          s5, s3, sp
                  xor          zero, s9, tp
                  ori          a4, t2, -848
                  sll          s1, t0, t3
                  andi         ra, s4, 1441
                  slti         t5, t1, 1967
                  addi         t3, s8, -283
                  srai         a1, a6, 7
                  lui          sp, 305619
                  nop
                  xor          s0, s7, s7
                  sra          s6, t3, a4
                  or           a3, gp, s0
                  slli         zero, t1, 25
                  slti         tp, a1, 77
                  sll          a7, s5, s9
                  sltu         a7, s0, s0
                  xor          s8, s11, s2
                  nop
                  srl          s11, sp, t2
                  sll          a5, t0, a4
                  sll          a5, ra, a4
                  sra          s1, t6, s0
                  auipc        t0, 596474
                  and          a5, s6, a4
                  lui          t0, 169953
                  add          s11, sp, s8
                  slti         a7, a6, -1160
                  and          tp, s7, a3
                  add          t6, s10, s11
                  nop
                  xor          ra, a3, t3
                  slli         zero, a1, 20
                  xor          a4, s7, s8
                  xor          a3, a2, s10
                  slt          s6, a5, s2
                  sltu         a5, s4, sp
                  sltu         tp, sp, s11
                  sll          s0, s8, a5
                  srai         s5, a1, 7
                  lui          s11, 72343
                  sra          s7, s4, s1
                  sltiu        s0, ra, -767
                  or           s5, gp, t6
                  nop
                  nop
                  lui          s3, 592239
                  sltiu        ra, s3, 174
                  nop
                  sltiu        s4, t0, 782
                  andi         a7, a7, -1072
                  slli         gp, a6, 31
                  add          s10, s6, a3
                  sltu         sp, tp, s7
                  or           s9, a0, t5
                  lui          t5, 49953
                  andi         zero, a1, -1292
                  or           s6, tp, tp
                  xor          s11, s7, t4
                  slti         s3, t4, -1763
                  slli         s4, s0, 9
                  sll          ra, s8, tp
                  lui          a5, 397321
                  srli         sp, t0, 29
                  sra          a5, s8, a4
                  xor          s8, s11, s6
                  srai         t5, t4, 30
                  sltu         a4, a3, a4
                  srai         t0, a2, 18
                  srli         a3, s5, 2
                  sra          s8, s3, gp
                  or           t5, s7, zero
                  sra          a6, zero, s10
                  and          t5, s5, s4
                  auipc        s4, 450298
                  sltu         s2, a1, s5
                  andi         s8, a2, -1082
                  addi         gp, s3, 1865
                  srl          s4, s11, s3
                  srl          sp, s1, s10
                  srl          zero, s4, s11
                  or           s1, a3, t2
                  sll          a1, a2, s11
                  addi         sp, s8, -376
                  sll          s11, s2, t2
                  sltu         t0, s1, t0
                  or           gp, s8, tp
                  andi         s2, a4, 532
                  auipc        s4, 635667
                  srli         ra, a6, 29
                  sltu         tp, a4, s4
                  addi         s3, ra, 1989
                  or           s6, s6, zero
                  srli         s6, a1, 16
                  ori          s10, tp, 687
                  sll          tp, sp, s6
                  slli         t3, a7, 18
                  xori         a1, t2, -2033
                  srl          s3, s1, s0
                  sra          s9, s0, t5
                  slli         s11, a7, 11
                  add          a1, a4, t2
                  sltu         t6, s7, s0
                  xor          a6, a1, s9
                  ori          t6, t1, 1283
                  sub          a5, s8, t5
                  and          t5, s7, s10
                  andi         a6, gp, -1786
                  lui          s3, 779003
                  or           t3, s1, ra
                  slti         s7, s11, -1001
                  srl          zero, s8, s6
                  and          t3, s1, tp
                  ori          s2, s2, -720
                  sll          s10, t5, a1
                  srl          s0, a2, tp
                  slt          s8, a2, a2
                  ori          t4, a7, -406
                  xori         gp, a1, 723
                  andi         tp, s6, -860
                  sltu         a3, t6, a0
                  lui          t3, 801402
                  sltu         a1, s6, s7
                  add          sp, t2, s10
                  srai         s2, a0, 30
                  ori          a1, a3, -1630
                  sltu         t3, t4, t4
                  srli         s0, s4, 14
                  srl          t3, zero, s0
                  xor          s11, a3, s1
                  sub          s9, s6, s1
                  srai         sp, s2, 25
                  add          tp, a6, s2
                  srl          s6, t2, ra
                  srli         sp, s7, 21
                  add          a4, tp, t0
                  slti         sp, t0, 2039
                  xori         s3, s8, -706
                  xor          s1, a3, t3
                  add          s8, s7, a0
                  slt          s11, zero, s11
                  slli         sp, s9, 7
                  sra          s7, a7, s8
                  sub          a7, s4, s9
                  ori          s7, gp, 1485
                  lui          a5, 907694
                  sll          t0, s7, s2
                  sltu         s3, t1, ra
                  srli         a5, a0, 11
                  srai         a4, t6, 3
                  sltiu        a4, t6, 348
                  nop
                  slti         gp, s1, 901
                  add          ra, s9, a1
                  lui          a4, 335926
                  slt          a3, a1, s10
                  sub          s0, t6, ra
                  nop
                  or           sp, gp, tp
                  sra          s4, a7, s11
                  srai         a2, a0, 31
                  slt          s6, s6, a0
                  or           a1, s6, ra
                  xor          s2, t0, t2
                  sltiu        a5, gp, 394
                  lui          s6, 966261
                  ori          s9, a0, -983
                  lui          s10, 822507
                  add          a3, a0, a3
                  addi         a3, sp, -1819
                  sll          s7, t3, sp
                  slli         s3, s8, 30
                  auipc        a4, 444442
                  xor          t0, s11, ra
                  xori         s6, s0, -1996
                  sltiu        s7, s0, -1014
                  sub          s10, s9, s3
                  sll          s4, a5, s9
                  andi         tp, a7, -428
                  sltiu        s0, a4, 822
                  slti         s7, a1, -1199
                  nop
                  slti         s9, a6, -1702
                  lui          a7, 292969
                  sra          a3, t5, s8
                  nop
                  srli         s0, s1, 4
                  slli         s10, t1, 31
                  sub          s7, s9, gp
                  slti         t0, s8, -50
                  srai         a6, s1, 31
                  nop
                  nop
                  nop
                  sltiu        s1, t2, -952
                  andi         s4, s2, 518
                  andi         a7, t0, 1786
                  lui          t5, 523169
                  sra          tp, a1, a3
                  xori         a6, s6, -918
                  slt          s9, a4, a4
                  sll          a7, t5, s5
                  slt          t4, t0, a2
                  sub          a7, s8, t2
                  xor          s10, sp, gp
                  or           sp, s4, t3
                  and          t0, zero, s10
                  andi         a2, a1, 258
                  and          t4, s7, ra
                  srli         s9, a3, 25
                  addi         s8, s11, 466
                  andi         a5, a5, 774
                  srl          s11, s2, s0
                  sub          a4, a3, s3
                  slti         t5, a4, 1995
                  sltiu        s8, t2, 1881
                  nop
                  ori          t4, zero, -1704
                  srai         gp, zero, 14
                  slti         s5, a2, 1554
                  srl          s10, t6, s10
                  xor          s1, a7, zero
                  lui          s8, 824701
                  srai         s9, s1, 17
                  sltu         a5, t2, s5
                  addi         sp, t0, 1362
                  sltu         sp, tp, t5
                  addi         t0, a0, -95
                  sltu         s5, a5, s5
                  add          s0, s11, s2
                  slt          a2, a1, s9
                  sra          a6, t6, a6
                  slli         a3, a3, 26
                  sll          gp, tp, a1
                  add          s7, t3, s6
                  xor          s6, s4, t2
                  lui          a5, 894226
                  sll          t4, a2, a5
                  or           a2, a4, t4
                  sub          s2, a5, a3
                  nop
                  lui          s4, 464672
                  auipc        t3, 492107
                  andi         t3, a5, 268
                  slti         zero, s9, -1336
                  sub          s0, t2, s6
                  sltu         a7, s8, s9
                  slli         s0, ra, 12
                  srli         a6, t4, 10
                  andi         s6, s3, -976
                  slli         a4, a1, 22
                  slti         gp, t0, -1836
                  slti         s7, zero, -1942
                  ori          zero, a4, 1156
                  sub          a4, s1, s6
                  sub          s10, t2, s0
                  lui          tp, 524232
                  and          tp, a0, a7
                  sra          s7, a7, s1
                  or           zero, a7, s8
                  ori          tp, t0, -1347
                  sltiu        s6, t0, -616
                  slli         a3, t2, 8
                  auipc        a6, 100026
                  auipc        s2, 348087
                  ori          gp, s10, 1532
                  or           s5, s5, sp
                  slti         sp, t6, 766
                  sltiu        s0, t4, -429
                  lui          s10, 834577
                  auipc        t4, 1944
                  sra          s8, t2, t6
                  srai         s9, s0, 16
                  andi         s4, s2, -26
                  xori         t5, s5, 759
                  and          s5, sp, sp
                  add          s6, s7, sp
                  xor          s1, ra, a4
                  nop
                  addi         s10, s1, 1003
                  lui          t3, 594888
                  andi         t6, s4, 317
                  slt          t4, tp, s11
                  auipc        t5, 559020
                  slli         gp, ra, 20
                  srl          a3, s3, t3
                  andi         s5, a5, -121
                  xori         a4, tp, 1348
                  srai         s6, t4, 20
                  sub          t4, a6, t6
                  sll          t5, s7, s6
                  srl          s3, s4, s9
                  add          s6, t2, a2
                  add          t0, a6, s5
                  add          s8, a7, tp
                  andi         a1, t1, -360
                  xori         gp, s4, -560
                  xor          s5, a7, s3
                  andi         s0, t5, 698
                  srl          ra, s10, s4
                  addi         s2, s8, 207
                  andi         s0, tp, 310
                  lui          ra, 283966
                  lui          tp, 3741
                  ori          a1, a0, 1029
                  addi         s7, zero, -113
                  lui          s1, 459460
                  or           sp, a7, a0
                  lui          s3, 559831
                  slli         t5, s10, 10
                  auipc        s1, 925388
                  addi         tp, a7, 1977
                  xor          zero, s3, s2
                  nop
                  xor          t0, tp, tp
                  slt          gp, s7, s8
                  andi         s5, s8, 429
                  addi         sp, sp, 1631
                  and          t4, gp, a6
                  ori          s0, a5, -1620
                  addi         s3, t4, -23
                  and          s0, gp, s7
                  lui          a3, 545224
                  sltu         s9, a3, s6
                  slti         s3, ra, 533
                  xori         a3, s5, 10
                  add          a7, zero, s0
                  slti         s5, a5, 1650
                  sub          s5, s11, a6
                  andi         s11, s4, -1
                  andi         a6, s8, -1314
                  slli         a1, s9, 12
                  srli         a1, t6, 20
                  srli         s9, s10, 15
                  lui          ra, 165393
                  auipc        a4, 1016266
                  xori         s7, a6, -1343
                  sra          s7, a6, a7
                  slt          t3, s10, a6
                  ori          t0, s3, -449
                  xori         a2, a2, -1403
                  srai         s9, a2, 29
                  ori          tp, t6, -531
                  add          s7, a5, a3
                  and          s11, a6, a5
                  sra          s11, s10, a6
                  slt          s7, t0, gp
                  sra          s2, zero, a4
                  slti         s4, s7, 685
                  lui          s5, 821198
                  or           t6, s5, t1
                  lui          a6, 402729
                  and          a5, s8, t3
                  addi         a2, gp, 1409
                  addi         gp, a1, 1354
                  or           s9, a6, s2
                  srl          s6, a0, t6
                  xori         s7, a6, 1190
                  ori          t0, a6, -1124
                  addi         s3, t6, -1178
                  sltiu        s5, s6, 1310
                  xor          zero, t2, a7
                  slti         s0, s1, -1487
                  slti         t3, a1, -1445
                  xori         s9, a7, -1120
                  sub          ra, zero, s1
                  slt          s6, s7, t3
                  add          a5, s7, a4
                  sll          t6, s8, ra
                  nop
                  sll          a1, t0, sp
                  sra          s9, s0, s10
                  sra          a5, s2, a0
                  auipc        a5, 742057
                  sltu         sp, s5, a1
                  andi         t0, a2, -996
                  srai         t0, t2, 25
                  xor          tp, t3, t4
                  or           a4, s9, s10
                  slli         s10, a1, 27
                  srli         s1, ra, 31
                  addi         t3, s7, 39
                  addi         s5, a4, 500
                  nop
                  sub          a2, s11, t2
                  ori          a1, s5, -1105
                  addi         a4, s4, 1924
                  sltiu        a1, s0, 48
                  ori          t4, t3, -1576
                  add          gp, t6, s2
                  srai         a5, t0, 7
                  andi         t4, a3, 1145
                  xori         s6, s7, -520
                  slt          gp, s2, s6
                  sltu         t0, a7, s10
                  srl          t4, sp, s11
                  xor          s10, a6, s3
                  srl          sp, t2, t1
                  xor          a5, s7, gp
                  sltu         s9, s3, t1
                  slli         s6, s9, 28
                  slt          ra, t0, t1
                  xor          t0, s2, a7
                  sltu         zero, s9, s10
                  srai         s8, a3, 20
                  sltiu        a6, a5, 1292
                  sub          s11, s8, a3
                  sll          s8, tp, t0
                  addi         sp, zero, -424
                  slti         t3, t2, -957
                  slli         a2, ra, 26
                  srl          gp, a6, a4
                  srai         s9, a5, 31
                  srl          s10, s4, s1
                  addi         t4, s1, 263
                  ori          gp, s10, 1266
                  srli         s1, s3, 13
                  srai         s8, s10, 22
                  add          gp, gp, s1
                  addi         t4, s3, -836
                  sltu         t5, s6, zero
                  sltiu        a6, a2, 10
                  sub          s11, s3, s0
                  slt          zero, s3, zero
                  nop
                  xori         t0, t1, -1638
                  xori         s7, tp, -998
                  or           ra, a1, t0
                  xor          a7, zero, s5
                  andi         t0, t2, 1841
                  slli         t3, s3, 3
                  xor          s4, a7, s3
                  addi         t0, t3, -789
                  andi         s11, a5, -64
                  nop
                  slt          zero, s1, a3
                  andi         sp, s0, -18
                  nop
                  ori          a2, t4, -1908
                  sltiu        a5, a3, 11
                  srl          t0, t5, t1
                  ori          s6, ra, -1943
                  addi         ra, t4, 1123
                  xor          a2, zero, s3
                  srli         a1, a1, 4
                  ori          s0, ra, -1101
                  addi         tp, sp, 192
                  auipc        a4, 429733
                  slti         a4, gp, 1992
                  srli         a6, s11, 5
                  or           t5, ra, sp
                  or           t3, ra, gp
                  slli         a2, s8, 8
                  add          zero, t6, t1
                  ori          t4, a6, -600
                  auipc        a2, 864416
                  ori          t0, s10, 977
                  xor          s1, a7, t3
                  xor          t3, ra, a1
                  lui          s10, 776270
                  slt          s2, s9, s9
                  ori          a4, sp, -351
                  auipc        s4, 829975
                  or           s5, t2, gp
                  slli         a4, tp, 20
                  add          s11, a7, a7
                  xor          s5, t2, t1
                  ori          gp, s11, -426
                  sra          sp, s7, a7
                  slti         s10, s2, -1415
                  lui          s1, 813482
                  nop
                  lui          sp, 358862
                  and          s8, s6, a2
                  slli         a6, a3, 5
                  ori          a2, a0, -298
                  lui          s2, 819629
                  andi         t4, s11, -1947
                  slli         s5, gp, 8
                  xor          s3, s9, s2
                  ori          s6, a3, -1747
                  lui          ra, 265055
                  slti         t4, a1, -1627
                  srl          sp, t2, t4
                  srl          a6, s11, a5
                  sra          zero, a0, a0
                  sltiu        a1, gp, 613
                  or           a4, s11, a0
                  slti         ra, t4, -661
                  nop
                  sra          ra, a6, a7
                  xor          t6, s4, s7
                  srl          a6, s3, a6
                  sltu         tp, s1, zero
                  sltiu        a3, t5, 1518
                  ori          s10, s4, 2018
                  srl          a4, a7, a0
                  add          zero, a4, tp
                  xori         tp, ra, -1731
                  auipc        s6, 398957
                  slli         s6, s6, 18
                  sra          gp, t2, zero
                  sltiu        t0, a7, -617
                  and          a4, tp, s2
                  add          t3, s0, ra
                  lui          zero, 789324
                  and          s4, zero, s7
                  srai         a4, a5, 30
                  addi         s7, a3, -951
                  or           s4, t3, a2
                  or           a1, t4, t3
                  srai         a5, a6, 15
                  xor          s8, s2, a2
                  slti         a3, t5, 1434
                  auipc        s5, 275774
                  sub          sp, a4, s10
                  and          a5, gp, t4
                  lui          t4, 916582
                  srai         t3, gp, 24
                  srli         s2, t0, 6
                  lui          s1, 893142
                  slli         a4, t6, 31
                  ori          a6, s11, 1035
                  slli         a4, a7, 19
                  ori          t0, gp, -374
                  sltu         s11, t1, a0
                  slti         a2, s9, -1969
                  sll          s2, s9, s11
                  slti         a5, gp, 873
                  lui          s6, 205861
                  xori         s9, s3, 1464
                  sltiu        a6, a4, -101
                  sltu         zero, zero, s8
                  xor          ra, s11, gp
                  slli         s8, s5, 13
                  srai         a2, sp, 9
                  addi         t5, ra, -1766
                  sltu         a6, sp, t6
                  lui          a4, 68330
                  ori          a1, sp, 76
                  addi         t4, a6, -1079
                  auipc        s11, 301910
                  slt          a6, a7, s5
                  addi         s3, a1, -223
                  sltu         a6, s6, a6
                  addi         s3, t6, -2037
                  sltu         s0, a6, a0
                  slli         s6, a4, 18
                  sltu         t0, a2, s7
                  srl          s6, s4, s8
                  nop
                  sltiu        s4, s3, 1599
                  sltu         zero, ra, a1
                  add          a5, t6, s2
                  slli         zero, t4, 27
                  auipc        a7, 470688
                  add          a1, a7, a3
                  sltu         s2, ra, a4
                  auipc        a3, 238295
                  nop
                  auipc        a6, 186343
                  srl          a2, gp, a5
                  auipc        t0, 946039
                  or           s7, s8, t2
                  and          sp, gp, a0
                  slli         s4, ra, 30
                  sltu         s7, s11, gp
                  slt          a6, t3, s0
                  srli         gp, s11, 24
                  andi         s9, t1, -1891
                  and          s7, a4, tp
                  addi         s4, s7, 1820
                  sub          s1, ra, sp
                  lui          s2, 373842
                  slli         s10, s1, 10
                  ori          s10, t6, -1668
                  sltiu        a6, a2, 1517
                  sll          s1, t1, a5
                  and          s11, s4, s7
                  slti         s7, s11, -913
                  nop
                  add          s7, t0, s0
                  andi         t0, a6, 1773
                  and          s10, ra, s1
                  srai         s0, a5, 27
                  xor          s1, s4, sp
                  sra          s7, s2, s7
                  slti         s11, a3, 907
                  addi         s9, t4, -96
                  xor          s7, t3, s5
                  sub          a4, t2, a2
                  auipc        s2, 974181
                  ori          gp, ra, 1440
                  and          t4, a7, t0
                  andi         sp, s11, -43
                  slli         s7, s7, 2
                  slli         a1, a6, 6
                  or           sp, ra, a0
                  lui          zero, 338930
                  addi         s3, sp, 1734
                  addi         a2, s10, 30
                  srl          s6, s2, a1
                  srai         a4, t1, 0
                  srli         s9, a3, 0
                  srl          a4, t5, a0
                  xori         ra, t0, 1023
                  sll          s7, sp, t5
                  auipc        s0, 786374
                  addi         a7, a4, 1534
                  xor          s10, t1, a2
                  slti         sp, s0, 1576
                  nop
                  sra          s8, a5, ra
                  srai         t4, ra, 14
                  ori          s1, a2, 108
                  sll          s11, sp, s1
                  or           sp, s8, t0
                  slli         gp, s11, 2
                  slti         t6, a7, 359
                  slt          a3, s10, s9
                  addi         s9, tp, -1252
                  sltu         a1, gp, t6
                  srl          a1, a3, s9
                  sub          t6, zero, a5
                  srl          a2, s5, a0
                  sll          ra, tp, a1
                  nop
                  lui          s7, 191765
                  slli         a6, s7, 2
                  sll          a6, s5, a4
                  slli         gp, a3, 13
                  xori         a3, s7, 1670
                  srl          t6, t1, s9
                  auipc        s6, 651947
                  slt          s11, tp, s11
                  sra          a3, a4, s11
                  sub          a6, zero, a5
                  sub          s8, zero, sp
                  ori          s6, gp, 1058
                  auipc        s0, 324573
                  slli         a5, s10, 17
                  srai         s6, t4, 7
                  nop
                  lui          gp, 491480
                  nop
                  srli         s5, t2, 29
                  sltiu        a1, s9, 531
                  sra          t5, t2, t2
                  sra          s5, s2, s0
                  lui          s11, 623841
                  sltiu        s9, t1, 740
                  sltu         a2, t5, s10
                  andi         s9, a5, 580
                  slt          t3, s4, t4
                  addi         s10, s1, -413
                  sra          s1, t5, s3
                  srai         a4, t4, 7
                  slt          s6, s8, a6
                  srai         t3, t6, 12
                  sltiu        gp, a7, 712
                  sltiu        s10, s6, 537
                  srl          s11, a5, s0
                  xori         gp, t4, -52
                  add          s10, s1, t0
                  ori          a5, t4, -518
                  sltiu        tp, t6, 481
                  add          s1, s3, s0
                  andi         s11, a4, -954
                  addi         s4, s7, 548
                  add          gp, s5, zero
                  add          zero, s9, ra
                  slti         a1, t2, -376
                  slti         s11, s6, -1737
                  srli         a3, a4, 14
                  sra          tp, s1, s6
                  sltu         s9, a4, t5
                  xor          s1, s7, t0
                  sltu         a5, t2, tp
                  auipc        a1, 538861
                  srl          t0, s3, t6
                  or           s8, a1, s1
                  andi         sp, t0, 1207
                  lui          t5, 1038977
                  xori         a1, t5, 1065
                  and          a4, s9, s3
                  slt          gp, sp, zero
                  slti         a3, t1, -1720
                  lui          t6, 31432
                  sltu         a3, t1, ra
                  sll          zero, s4, s2
                  andi         t6, t5, 260
                  andi         a1, a1, 1163
                  ori          a3, a7, -761
                  ori          s0, s1, -1050
                  or           s9, s7, s11
                  or           a1, s8, t3
                  xori         a2, gp, -1920
                  andi         s5, s1, 1550
                  xori         s9, a4, -935
                  sll          t4, a0, s6
                  addi         s11, a7, -466
                  sra          s4, t4, a7
                  xor          t5, t3, gp
                  sub          a5, s0, s1
                  sub          a7, zero, t2
                  ori          gp, s6, 270
                  or           s2, t2, s5
                  srli         s9, t4, 21
                  slti         s2, a4, 1856
                  srai         s8, s6, 5
                  auipc        ra, 631069
                  slt          a5, s9, a4
                  xor          s4, a7, s10
                  srai         s8, s1, 20
                  nop
                  auipc        s5, 495999
                  xori         s2, s2, 1627
                  ori          a5, gp, 108
                  lui          s6, 166981
                  xori         a1, t1, 1670
                  slt          s0, s1, sp
                  sub          ra, s7, t2
                  or           s11, zero, s2
                  sll          a2, s11, gp
                  slti         ra, ra, -225
                  sltiu        t6, t0, 538
                  slt          tp, t0, s5
                  srl          s3, s4, s6
                  sra          a7, s0, s0
                  auipc        s6, 506840
                  slt          s10, t6, a1
                  xor          s2, a6, a0
                  sra          s8, zero, t4
                  and          a2, tp, tp
                  lui          s3, 373043
                  srai         a4, s5, 28
                  srai         s3, tp, 29
                  lui          t3, 387223
                  and          zero, tp, s4
                  ori          a7, a3, -370
                  or           s9, s10, s9
                  andi         t4, s3, 1686
                  xori         t5, t4, -1970
                  lui          a2, 1003188
                  auipc        s2, 332950
                  ori          a5, t2, 1063
                  and          s0, a4, sp
                  srli         s6, s8, 4
                  srl          s7, s9, s6
                  xor          s0, s4, s4
                  sub          s0, s0, s10
                  sub          zero, s0, t3
                  ori          zero, tp, 1542
                  sltiu        s0, s0, 1157
                  sltu         sp, t5, a7
                  add          s6, s1, ra
                  srai         t5, t5, 10
                  srl          sp, s5, s2
                  or           a6, a5, a1
                  lui          a5, 720554
                  xor          t5, tp, t5
                  or           a4, s11, a6
                  and          t0, a6, s5
                  add          s11, t0, a7
                  slt          s0, t1, a0
                  auipc        s8, 639813
                  srai         s2, t6, 18
                  srli         ra, t2, 28
                  add          s9, t3, s2
                  sll          t4, s0, s10
                  addi         a4, a3, 1381
                  srl          t0, t0, gp
                  srl          a2, s7, s10
                  lui          a6, 913090
                  sra          a4, s4, a2
                  slli         a7, t1, 26
                  sll          sp, s8, t3
                  sll          tp, a1, sp
                  sltu         t0, a1, sp
                  ori          t0, s8, -964
                  slli         t6, s8, 19
                  addi         s8, s1, 855
                  sltiu        t3, t2, 426
                  or           s8, t0, zero
                  auipc        s2, 6888
                  sltu         a6, s1, s9
                  srl          sp, s3, s11
                  sra          s1, tp, tp
                  and          zero, s8, s9
                  sub          t4, s9, t5
                  auipc        s8, 14240
                  auipc        a1, 304940
                  srl          a5, s4, t3
                  xori         s7, t6, -573
                  srli         s7, a3, 5
                  add          s4, s10, s8
                  and          a6, a4, a7
                  sra          s6, a3, s10
                  slt          tp, s5, gp
                  sltu         t4, s5, t0
                  xor          s7, s11, t1
                  and          t3, a6, a3
                  or           t3, ra, gp
                  sll          a3, sp, a0
                  ori          t4, s9, -524
                  andi         s5, t6, 1115
                  sltiu        s8, s6, 2022
                  xori         t0, s2, 1217
                  ori          t3, a6, 1672
                  or           a5, t1, a5
                  nop
                  sltu         s2, a3, sp
                  slti         s1, a0, -1483
                  slti         s11, s9, -74
                  slli         s7, a2, 28
                  addi         a5, t6, -942
                  slti         a2, a1, -883
                  xor          t0, a4, s5
                  add          a4, a0, t5
                  slt          s5, s3, s7
                  sltu         tp, ra, gp
                  auipc        ra, 476120
                  sra          s4, s7, s3
                  andi         zero, a3, 1300
                  slt          ra, tp, s6
                  sub          s1, a1, t0
                  add          a1, a6, a1
                  srli         s5, a3, 2
                  nop
                  srl          zero, s3, s7
                  nop
                  sltiu        s4, a6, -1301
                  xor          t4, s1, a1
                  sll          ra, s2, tp
                  srai         s5, a1, 12
                  auipc        s3, 183692
                  sra          s11, t6, s5
                  slli         s1, a5, 2
                  nop
                  sub          s0, s11, s11
                  li           s1, 0xfe4ad3a4 #start riscv_int_numeric_corner_stream_24
                  li           s0, 0x0
                  li           t6, 0x80000000
                  li           sp, 0xffffffff
                  li           a5, 0x6d794d34
                  li           s8, 0x80000000
                  li           s7, 0x2e5d220c
                  li           t3, 0x80000000
                  li           tp, 0xd3b14a6a
                  li           s11, 0xd30406c0
                  addi         s7, t3, 783
                  lui          sp, 917729
                  sub          t6, s7, s0
                  lui          sp, 251469
                  lui          s8, 615395
                  add          s8, s0, s0
                  addi         s0, tp, -1268
                  auipc        t6, 683094
                  nop
                  add          t6, s11, s11
                  addi         sp, s11, 380
                  add          t6, a5, s0
                  sub          s1, s0, t3
                  addi         s1, s11, 1102
                  addi         t6, sp, 232
                  auipc        a5, 162307
                  lui          s1, 897557
                  lui          sp, 821625
                  lui          tp, 554296
                  sub          sp, t3, s0
                  add          t6, s8, a5
                  nop
                  nop
                  auipc        tp, 900840
                  auipc        s8, 47915 #end riscv_int_numeric_corner_stream_24
                  sll          s7, t3, a6
                  lui          t5, 71734
                  xor          s11, s10, t4
                  lui          a4, 435485
                  andi         ra, a4, -1723
                  ori          s1, s7, 1161
                  addi         a1, s1, -1238
                  slt          gp, tp, a3
                  add          s10, a3, s5
                  andi         s1, s3, -157
                  sltiu        s0, s1, 1675
                  addi         sp, t3, -1972
                  nop
                  sra          s0, ra, a0
                  sub          ra, t4, s3
                  sra          s2, s9, s4
                  sll          s3, s11, s2
                  srl          t3, t4, s8
                  srai         s7, a6, 27
                  andi         s9, s10, -86
                  sltu         a3, a7, ra
                  sll          s5, s9, s8
                  add          gp, s8, s8
                  srli         sp, t6, 10
                  and          s11, a6, a4
                  or           a1, a5, s3
                  srai         s7, t2, 4
                  lui          s1, 399515
                  sll          t0, a3, a4
                  addi         t5, ra, 1298
                  ori          t4, t2, -413
                  sltiu        a1, s5, -171
                  addi         a6, tp, 1170
                  or           s6, t4, s4
                  auipc        a6, 590889
                  xor          s10, zero, a3
                  and          s10, sp, gp
                  xori         s3, a6, -889
                  sra          a1, t2, a3
                  srai         a6, t3, 14
                  slli         t4, s4, 31
                  and          a3, t5, s10
                  slti         s3, a6, -1546
                  sll          a2, a2, s3
                  srl          a4, ra, s3
                  auipc        s1, 1014722
                  auipc        t6, 193514
                  sll          a3, a7, a5
                  sra          ra, a1, s1
                  sub          s9, a6, a0
                  srai         a6, a5, 8
                  and          tp, s11, a3
                  addi         t5, a3, -1725
                  sll          s5, s0, s8
                  lui          s9, 324010
                  auipc        s6, 1009905
                  slt          a5, zero, a0
                  ori          sp, s10, 19
                  addi         s7, t3, -1819
                  srli         a1, gp, 20
                  srl          a6, s10, t1
                  nop
                  sltu         t6, t1, tp
                  slli         s9, s0, 28
                  slti         gp, t5, -755
                  slli         t6, a7, 17
                  slli         s11, t0, 15
                  xori         s3, zero, 5
                  slti         s6, t1, 111
                  xori         a7, a4, -1344
                  sltiu        s9, s7, -484
                  srai         tp, s4, 23
                  sltu         a7, a7, t3
                  xori         tp, t4, -1293
                  slti         a4, ra, -1980
                  add          s2, tp, s9
                  nop
                  sub          s6, s2, tp
                  xor          s9, s6, a1
                  srai         a5, s1, 11
                  nop
                  slti         a3, a5, -460
                  sltu         s10, s1, s0
                  srli         tp, a5, 0
                  lui          s8, 256022
                  xori         s10, t4, -577
                  nop
                  and          s8, t2, s10
                  nop
                  sll          sp, s5, a7
                  and          t0, s7, sp
                  auipc        s11, 819183
                  srli         a6, a6, 22
                  sltiu        t0, s6, 244
                  slti         s8, s1, -1067
                  and          s4, s8, t5
                  sra          s7, tp, s8
                  slli         s5, a1, 27
                  slt          a2, a2, t5
                  lui          t5, 541299
                  or           t4, s2, t4
                  slt          a6, s1, a0
                  nop
                  addi         t5, s5, 167
                  auipc        a1, 451297
                  sltu         sp, s3, a7
                  ori          s2, gp, -616
                  slt          sp, a1, tp
                  or           sp, s6, a5
                  srl          a3, a5, a4
                  and          s2, s10, a6
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s2, 0xeb61d7d0
                  li           s5, 0x4e2b04ef
                  li           sp, 0x0
                  li           t0, 0x8f783426
                  li           ra, 0xffffffff
                  li           s3, 0x58a4e1e1
                  li           gp, 0x4fc06568
                  li           s4, 0xe837000f
                  li           t5, 0x0
                  addi         t0, gp, 296
                  add          s4, t0, s5
                  add          s3, t0, gp
                  lui          t5, 370778
                  auipc        s9, 108663
                  addi         s4, sp, -1210
                  addi         s9, t5, -193
                  add          ra, t5, t0
                  lui          t0, 112370
                  add          s9, s3, gp
                  sub          s3, s5, gp
                  lui          gp, 783184
                  sub          s4, s2, s4
                  addi         t5, ra, 1494
                  nop
                  addi         gp, t5, -435
                  nop
                  auipc        sp, 999986
                  sub          sp, s3, ra
                  nop #end riscv_int_numeric_corner_stream_18
                  and          t5, a0, a6
                  add          t6, tp, t0
                  srli         a7, s4, 25
                  srai         a3, t6, 26
                  srl          a7, a7, a4
                  sub          gp, s1, s9
                  srli         zero, a6, 5
                  xori         s1, s8, 1294
                  and          s7, t1, a1
                  nop
                  add          s2, s4, s11
                  addi         a3, s6, -1798
                  nop
                  sll          a1, s8, sp
                  xor          s5, s1, gp
                  slli         zero, s5, 14
                  srai         sp, s7, 28
                  sra          s3, a6, s1
                  andi         a3, t3, -640
                  sltu         a4, a6, zero
                  addi         s11, s1, 1520
                  xor          sp, a7, s0
                  srli         sp, a2, 15
                  sra          s8, a5, a2
                  sltiu        s9, a5, 1540
                  ori          s2, t4, 934
                  sub          s6, s3, a3
                  slli         s0, t2, 29
                  srli         a4, zero, 4
                  slli         a5, s2, 29
                  slt          s1, s7, s9
                  sra          sp, t0, s3
                  or           sp, tp, a4
                  add          s10, a3, t3
                  xor          s10, tp, a0
                  add          a1, s10, s6
                  slli         t5, ra, 8
                  srli         a1, t1, 6
                  addi         a6, s10, -1477
                  xor          a5, s6, a4
                  srl          s5, s9, a3
                  nop
                  or           sp, s1, a3
                  auipc        s0, 280260
                  add          tp, tp, zero
                  and          a3, s10, a1
                  slt          ra, tp, s10
                  nop
                  xor          a7, a0, s6
                  xori         a6, s2, 594
                  and          tp, t6, a1
                  xor          a4, sp, t2
                  nop
                  sra          s1, a5, s4
                  xor          a4, a1, t5
                  srai         t5, s1, 6
                  slti         t3, s10, 964
                  slti         t3, s7, -1525
                  sltu         t5, a5, a6
                  srli         s0, a4, 24
                  and          s2, gp, s10
                  srl          a4, t2, a2
                  xor          a4, sp, ra
                  sll          s2, s1, t4
                  addi         s10, t1, 1507
                  slli         s4, a0, 14
                  addi         gp, a5, -1085
                  xori         s1, s1, 784
                  nop
                  nop
                  xor          a6, a3, a4
                  srl          tp, s8, a5
                  sll          t6, s11, a3
                  xori         s10, sp, -464
                  srai         s5, s7, 10
                  slli         s3, s3, 4
                  xor          s7, t0, ra
                  slt          s6, s6, zero
                  sra          gp, s5, a2
                  sltiu        t3, s8, -1077
                  slli         t0, tp, 3
                  srli         s8, a1, 20
                  lui          s7, 865104
                  lui          a4, 881519
                  add          s11, s7, a4
                  srl          t0, a3, a3
                  and          s7, gp, t0
                  slli         a7, s9, 6
                  and          a5, sp, s1
                  ori          sp, t2, -916
                  slt          a6, ra, s8
                  sltu         ra, a5, ra
                  xor          s11, a2, s2
                  sltu         s11, a4, s8
                  lui          s0, 461003
                  sltu         s10, s8, t6
                  sltiu        s9, t1, 1602
                  or           gp, zero, ra
                  xor          s11, t6, a7
                  slti         a1, tp, 2005
                  andi         a6, a2, -675
                  add          sp, s3, s8
                  srl          s0, t6, s10
                  srl          a4, s2, a2
                  srl          sp, t3, s0
                  lui          sp, 318150
                  slt          s6, a7, zero
                  sltu         gp, t0, a2
                  add          s2, tp, t1
                  add          t5, t2, t2
                  srai         s5, a0, 30
                  sll          t0, s9, s10
                  ori          s3, tp, -980
                  sub          t6, t0, tp
                  sltu         gp, t2, t1
                  or           a4, t1, tp
                  sltu         ra, s10, sp
                  ori          s11, s2, -457
                  sub          t6, t2, a3
                  slt          a5, tp, gp
                  or           gp, a7, s0
                  srli         a6, t1, 8
                  srl          gp, s7, a5
                  sll          a1, ra, a1
                  slli         a5, tp, 0
                  sltiu        gp, t4, 1106
                  lui          ra, 485924
                  xor          a3, t5, a1
                  add          a5, s5, s6
                  lui          sp, 786569
                  lui          s3, 509717
                  sra          a1, s1, t2
                  xor          a3, a5, t0
                  sltiu        s2, a1, 971
                  nop
                  slti         s8, tp, 1533
                  srl          s7, s5, t5
                  slt          sp, s0, a7
                  srli         t4, sp, 22
                  slt          t4, t4, a0
                  addi         a3, gp, -1198
                  slli         zero, a3, 22
                  ori          s7, sp, 653
                  ori          t4, t2, -247
                  andi         s8, t3, -1514
                  or           s7, s0, s2
                  andi         zero, s10, -1331
                  xori         s8, gp, 362
                  sll          sp, t2, s11
                  slt          s4, s6, s4
                  srl          t4, a6, t4
                  nop
                  slt          t5, ra, s9
                  slli         s7, s8, 11
                  sll          a4, a3, s8
                  srai         zero, t6, 1
                  nop
                  sll          s5, s4, a5
                  slt          a7, s11, s8
                  ori          t5, s11, -54
                  slt          ra, zero, s4
                  sra          gp, s11, s4
                  andi         tp, t2, -204
                  sub          a3, s9, s0
                  sltiu        s3, tp, 1604
                  srl          gp, s2, t6
                  auipc        t0, 10998
                  srai         s7, s5, 5
                  addi         s2, a4, 1123
                  sll          ra, t0, s10
                  slt          s3, s5, sp
                  and          s0, t1, a0
                  slt          s10, s4, s1
                  slli         gp, a2, 24
                  or           s0, a2, a1
                  srai         s3, a3, 6
                  addi         s10, a2, -619
                  or           s5, t1, a0
                  srl          a2, s6, a3
                  sltu         s0, t5, s4
                  slli         s10, a7, 10
                  and          s10, s2, zero
                  nop
                  ori          s0, s6, 225
                  sll          s9, s3, s4
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_37
                  li           s7, 0xffffffff
                  li           ra, 0x0
                  li           sp, 0x27a63139
                  li           s8, 0x0
                  li           s6, 0x86195fda
                  li           s0, 0xffffffff
                  li           s5, 0xd5f0362d
                  li           a4, 0x6a210da5
                  li           s10, 0x80000000
                  sub          s6, s6, s11
                  add          s0, s0, sp
                  auipc        ra, 181076
                  addi         a4, s0, 1315
                  lui          s6, 423631
                  sub          ra, a4, ra
                  nop
                  nop
                  auipc        ra, 139982
                  sub          s6, s11, s10
                  auipc        s5, 120121
                  nop
                  lui          ra, 1035602
                  addi         a4, s5, 868
                  add          ra, s10, s0
                  addi         a4, a4, -1187
                  sub          s11, sp, s10
                  nop
                  add          s5, s0, s8
                  sub          s5, s6, s5
                  lui          s10, 19648
                  add          s11, a4, ra
                  sub          s6, sp, s0
                  auipc        s7, 501997
                  addi         s6, s5, 1363 #end riscv_int_numeric_corner_stream_37
                  ori          s10, tp, 456
                  xor          gp, s11, t5
                  ori          t0, gp, 12
                  andi         sp, t1, 1411
                  slt          a3, a5, s8
                  sra          s0, s4, t0
                  sub          zero, s9, s3
                  srl          a6, t2, t5
                  lui          s3, 597729
                  add          s3, t5, s9
                  slti         gp, t4, -1532
                  ori          s0, t3, 200
                  sltiu        s0, t4, 716
                  or           a6, a0, s4
                  slt          s4, t0, s7
                  addi         s5, a2, -357
                  lui          t3, 374648
                  auipc        t6, 690588
                  ori          s7, a3, -1781
                  slli         a1, s3, 26
                  xor          s8, a0, a5
                  slli         a7, ra, 28
                  sltiu        s2, a6, -931
                  or           ra, tp, t5
                  nop
                  addi         s6, t1, 1512
                  sltu         s6, a1, s7
                  and          ra, t3, a4
                  sra          s2, s2, s10
                  addi         s4, s0, 1711
                  slti         a7, s5, 1005
                  lui          t6, 836830
                  andi         a4, s4, -1442
                  srl          sp, s6, tp
                  nop
                  sub          sp, s6, s6
                  srli         t5, sp, 20
                  sltu         t5, t3, a2
                  sub          s2, a2, s0
                  sltu         a7, s7, gp
                  srl          t4, s7, ra
                  srli         s1, s6, 26
                  auipc        a5, 256838
                  lui          s6, 968796
                  slt          t4, s5, tp
                  slt          zero, s2, a6
                  sll          t0, a3, a5
                  srl          s7, a0, a7
                  srai         ra, a7, 30
                  xor          s7, s4, a2
                  andi         t6, s3, -216
                  sra          t3, a3, s10
                  sll          a7, a2, a3
                  sltiu        t5, tp, 1309
                  nop
                  andi         s10, a0, -1742
                  slli         s1, s10, 6
                  sltu         s2, s2, a7
                  srli         s1, a2, 8
                  xor          a6, ra, gp
                  ori          s3, s5, 1287
                  slti         sp, s3, -1844
                  xor          s6, t3, t5
                  sltiu        gp, a0, 1823
                  nop
                  add          a2, a2, s1
                  slt          tp, a7, a2
                  xori         s6, a5, 1731
                  srl          s4, a5, zero
                  xori         t6, a5, 827
                  sra          gp, t3, tp
                  or           a5, a1, tp
                  and          sp, s2, s7
                  srai         s5, s7, 24
                  ori          a4, tp, 224
                  andi         s5, zero, 2044
                  add          t5, s2, t5
                  addi         tp, ra, -837
                  nop
                  srli         t6, a5, 10
                  sltu         a2, a3, t0
                  and          s11, tp, a5
                  sra          t4, a0, a6
                  slti         s3, a5, -2026
                  srai         t4, s1, 25
                  add          s9, sp, a1
                  sll          t5, ra, tp
                  and          s7, t1, a3
                  auipc        s10, 243404
                  xor          a7, s7, t4
                  ori          s4, gp, -797
                  sra          a1, t5, s3
                  addi         s9, a4, 1783
                  lui          tp, 852319
                  or           t3, s9, tp
                  xori         s10, s11, -368
                  srai         t5, ra, 22
                  and          s7, a6, t2
                  srai         s0, tp, 11
                  sll          s5, s9, t5
                  sltiu        s7, s1, -237
                  lui          ra, 128482
                  slti         s9, t0, 1794
                  sltu         sp, t3, a3
                  sltiu        s3, a0, -594
                  srli         ra, s0, 9
                  srli         s5, s9, 3
                  auipc        s7, 145550
                  slt          a2, t3, a5
                  and          s4, a6, tp
                  and          a2, s10, gp
                  xor          tp, s0, s4
                  slti         t5, t6, -1552
                  sltu         s6, a6, t3
                  slli         sp, tp, 19
                  xori         a5, s0, -1747
                  sra          a4, a1, sp
                  addi         s3, zero, -954
                  sra          s2, a7, gp
                  or           gp, s5, s11
                  ori          zero, s8, -1156
                  addi         t3, s6, -74
                  add          s0, tp, t3
                  sltiu        s0, tp, -1804
                  nop
                  lui          gp, 29326
                  addi         s0, t0, -1498
                  sub          s11, t3, t6
                  slti         s10, s3, -238
                  srli         s4, s9, 12
                  add          s10, t6, gp
                  sll          a7, t0, s8
                  auipc        a6, 346511
                  srli         a1, a3, 7
                  ori          sp, s10, -286
                  sltiu        a7, s8, -971
                  auipc        a3, 794808
                  sub          s8, s9, s5
                  andi         a2, s8, -72
                  srl          t6, s6, s10
                  srl          s0, s6, s0
                  srai         a4, s8, 4
                  xori         s2, a2, -1179
                  srai         gp, s5, 21
                  sll          s10, t0, a7
                  sltu         a1, a1, s10
                  xor          t4, s8, t0
                  and          sp, a5, a3
                  sltu         s6, t6, s1
                  add          zero, t5, a5
                  xor          a5, a4, s1
                  slt          t5, a7, s10
                  sltu         t0, s10, t2
                  xor          a2, s5, s2
                  srl          s1, a5, t4
                  sra          t4, s1, a2
                  sll          t4, a2, s0
                  ori          t3, a0, 91
                  sltiu        s5, a0, 713
                  sll          t3, a0, s0
                  xor          s6, a2, a1
                  nop
                  sub          a2, zero, a4
                  srli         s8, gp, 2
                  ori          s4, t2, 1556
                  nop
                  nop
                  xori         s11, t3, 1154
                  sll          a6, s5, a7
                  or           t4, t3, a7
                  sll          a1, zero, s10
                  srai         s6, a7, 23
                  auipc        s9, 493368
                  nop
                  auipc        tp, 571966
                  or           s7, gp, t4
                  sltiu        s6, t5, 1407
                  sll          gp, sp, s0
                  sra          a7, a4, gp
                  andi         zero, ra, 1024
                  nop
                  and          t5, s2, t2
                  slti         a3, t6, 1985
                  xor          ra, tp, s5
                  andi         s11, gp, 863
                  add          sp, s10, t2
                  srl          a3, t4, sp
                  srai         a4, a7, 15
                  slti         s2, s9, 1461
                  lui          tp, 298695
                  nop
                  lui          s2, 150663
                  srl          t3, s10, s0
                  sltu         ra, t4, a1
                  sltu         s3, t3, t2
                  sltiu        s6, a1, 217
                  ori          t0, s5, 1448
                  sll          s8, a1, a1
                  slti         t3, t2, -1199
                  slli         sp, a7, 0
                  srl          a3, s8, s11
                  addi         a3, s9, -655
                  slti         s9, s9, -729
                  sll          t4, a1, s7
                  andi         s1, s9, -616
                  sub          s6, t1, tp
                  ori          a2, s5, 588
                  addi         s4, s5, 1328
                  andi         s11, s9, -1120
                  sra          s3, s6, s9
                  or           a4, tp, t2
                  xor          zero, s4, s8
                  sltiu        s6, s4, -1691
                  xori         a4, s9, -458
                  sub          gp, s11, sp
                  srl          a5, a2, a4
                  sltiu        zero, s2, -1838
                  srl          s2, s10, a2
                  auipc        t0, 719090
                  sra          s10, sp, s6
                  sra          s2, t0, gp
                  andi         a4, s1, 914
                  nop
                  srl          ra, a7, t1
                  sub          t6, sp, s9
                  ori          sp, a1, 1739
                  slt          a5, a6, s5
                  lui          a7, 747318
                  slli         s7, s2, 7
                  srli         s5, t1, 20
                  lui          s9, 487864
                  sll          a4, t4, t5
                  ori          s0, s4, 612
                  slti         zero, a0, -1235
                  and          s9, a2, t0
                  nop
                  slt          a7, a0, t5
                  nop
                  and          a5, s11, zero
                  srli         s7, t6, 13
                  nop
                  nop
                  add          a2, a6, sp
                  srl          s2, a5, t3
                  sltiu        t3, s3, -1245
                  add          a5, a5, a7
                  xor          t0, t1, s9
                  add          t4, gp, s11
                  sltu         a4, t4, t3
                  or           gp, tp, t5
                  sra          s2, a2, t1
                  andi         a5, t3, 1705
                  nop
                  sra          t0, t1, a1
                  sltiu        zero, s4, 1732
                  addi         ra, a3, 671
                  srli         s9, a5, 11
                  sra          t5, a2, a0
                  add          a4, sp, t1
                  andi         s7, a6, 505
                  sra          t0, gp, t5
                  sll          ra, a0, s4
                  sltu         t6, s9, s2
                  xori         a4, a2, 1516
                  add          s11, ra, s4
                  sub          s6, zero, s6
                  xor          t0, s10, ra
                  addi         s5, s10, 1460
                  srli         t3, gp, 20
                  ori          a1, a6, -483
                  srai         s10, s0, 8
                  lui          s10, 881982
                  sll          t0, s9, t1
                  xor          s9, gp, s4
                  or           a6, s0, zero
                  sltu         a1, a5, s7
                  srai         s0, a0, 10
                  sltu         s7, ra, t6
                  srl          s4, s11, s11
                  lui          s6, 153999
                  sra          s6, t1, a6
                  xor          s10, t4, a2
                  sra          t3, t4, s2
                  add          t4, s6, s9
                  slli         a2, t1, 27
                  xor          a4, a1, tp
                  xor          t0, s4, s7
                  or           a2, a3, ra
                  srl          t4, t2, gp
                  srai         a2, t4, 31
                  xor          gp, t4, zero
                  slti         t6, t2, -24
                  xori         s7, a0, 47
                  slli         s11, t0, 18
                  sub          gp, zero, a2
                  sltiu        a6, s9, -1154
                  and          s11, t2, a2
                  and          a4, sp, t1
                  sltu         t3, a2, a6
                  sll          t4, s0, a6
                  lui          t0, 80430
                  slti         s7, t3, 2004
                  sltiu        s9, s9, -1013
                  sltiu        t4, gp, -1155
                  xor          a4, a4, s9
                  sltu         a5, a5, s4
                  lui          s1, 702348
                  nop
                  slli         s8, s1, 1
                  addi         a1, t6, 909
                  slt          a5, ra, a7
                  nop
                  sll          ra, t5, t2
                  or           a4, t4, gp
                  sra          s7, a1, s0
                  xor          a1, t0, ra
                  add          sp, tp, s7
                  srai         ra, s10, 13
                  slt          s3, s7, t5
                  nop
                  ori          s0, sp, 1353
                  slti         t4, s6, -608
                  srl          gp, s2, a6
                  auipc        s10, 1026483
                  slli         zero, a3, 27
                  slli         s1, t0, 1
                  or           t4, a7, s4
                  sub          s4, s9, t5
                  and          t5, s4, t1
                  srai         sp, gp, 18
                  andi         s11, sp, 915
                  auipc        gp, 504466
                  lui          t6, 87429
                  nop
                  srl          ra, a6, t5
                  srai         s4, t0, 17
                  sltu         a1, t1, a1
                  srai         s6, s10, 15
                  sltiu        t5, a2, 731
                  slti         t4, a1, -1402
                  or           zero, s6, t1
                  ori          s10, s3, 1522
                  auipc        tp, 798822
                  andi         t4, t0, 471
                  srli         s5, a7, 27
                  nop
                  sltu         a6, s10, t1
                  or           sp, a4, a3
                  andi         tp, a5, 318
                  ori          s7, a1, -957
                  auipc        t5, 370387
                  addi         s2, t5, -506
                  nop
                  or           t3, s4, s7
                  xori         a2, s5, -25
                  lui          a5, 1028158
                  sub          sp, s10, a5
                  sra          t0, sp, a3
                  sra          zero, a0, t0
                  andi         a1, sp, -1533
                  xor          t6, a4, t4
                  slti         s1, s8, 200
                  add          s9, s4, s7
                  sub          a2, a0, t1
                  and          gp, sp, a0
                  lui          t3, 699627
                  sll          gp, s1, s9
                  sub          s2, a0, t0
                  srl          t0, s2, s7
                  sra          t0, sp, zero
                  add          t5, a1, ra
                  xor          a5, s6, s9
                  lui          t0, 739307
                  addi         t6, s11, 976
                  auipc        a4, 1009406
                  sra          s9, a6, zero
                  nop
                  andi         s0, s4, -371
                  ori          t4, tp, -477
                  slli         s10, a2, 21
                  sltu         s4, t2, zero
                  xor          t5, s3, s1
                  and          a5, s0, zero
                  lui          s3, 605326
                  or           a7, gp, a3
                  add          a5, t4, sp
                  ori          t3, s10, 810
                  add          a4, t3, a2
                  xori         a7, s11, 862
                  xori         a4, s11, -686
                  and          s3, a6, a1
                  xori         t3, gp, -1483
                  slti         a6, a6, 1742
                  auipc        s9, 227949
                  xor          s5, t6, t4
                  lui          s1, 800713
                  srli         t4, s8, 6
                  sltu         s4, a6, sp
                  or           tp, tp, t2
                  slti         s2, s5, -1740
                  lui          t4, 450505
                  srai         s8, s7, 23
                  srai         tp, a4, 4
                  auipc        a2, 240750
                  nop
                  srl          a6, s0, s4
                  li           s4, 0xfffe9fc3 #start riscv_int_numeric_corner_stream_6
                  li           t6, 0x0
                  li           sp, 0x80000000
                  li           s7, 0xffffffff
                  li           a7, 0xbcc418d0
                  li           s9, 0x80000000
                  li           gp, 0x1fa2b68f
                  li           tp, 0x80000000
                  li           s6, 0x0
                  li           s2, 0x0
                  add          s7, s4, t6
                  sub          s6, s9, tp
                  addi         sp, t6, -467
                  addi         t6, s4, -1738
                  auipc        a7, 510243
                  lui          s6, 952702
                  add          s9, s2, s7
                  sub          t6, t6, s6
                  auipc        s9, 690937
                  auipc        tp, 243510
                  add          s7, sp, s9
                  auipc        gp, 383188
                  add          a7, gp, s6
                  auipc        a7, 137930
                  auipc        gp, 421606
                  lui          gp, 536625
                  add          s4, s9, s9
                  sub          s6, s6, s6
                  add          s9, s9, gp
                  auipc        s6, 35419
                  add          s9, s9, s7
                  lui          gp, 995030
                  auipc        gp, 750051 #end riscv_int_numeric_corner_stream_6
                  sll          a3, s4, s6
                  xori         s8, a4, 1358
                  srli         sp, a3, 6
                  or           t5, a3, s11
                  sra          s7, t0, a7
                  slt          t6, t5, t4
                  slli         sp, t4, 2
                  slli         s7, a1, 16
                  slt          s1, a0, a0
                  xori         a7, t1, -65
                  xor          s0, t1, s6
                  srli         a5, s6, 1
                  srl          t0, a1, s6
                  srai         a6, t6, 9
                  or           s2, t4, s5
                  sub          t0, t4, s0
                  xori         s8, s0, 1036
                  sll          s2, a2, sp
                  addi         a3, a0, -460
                  slli         s8, a6, 8
                  xori         sp, gp, -1606
                  xori         s9, t0, 90
                  nop
                  xori         t3, s6, -258
                  slti         ra, s9, 79
                  xori         a1, a0, -518
                  nop
                  and          s5, s5, gp
                  srl          s0, a6, s0
                  andi         gp, s8, -908
                  slt          s2, s2, gp
                  srai         a4, s8, 8
                  xori         s9, s4, 1674
                  or           s4, s5, gp
                  sra          sp, s1, t6
                  addi         s10, t0, 1074
                  sub          s10, a7, t2
                  sll          t4, a1, a7
                  nop
                  xori         gp, a1, -344
                  add          s9, t0, a7
                  sltu         t3, s2, t6
                  sra          a4, t1, s6
                  auipc        s2, 946685
                  xori         s7, s10, 1180
                  lui          t0, 827694
                  sra          sp, ra, a0
                  sra          a4, s1, s7
                  lui          t6, 478688
                  auipc        s4, 606576
                  and          s6, t3, ra
                  srai         s6, s7, 11
                  xor          s7, t0, ra
                  sra          s5, t0, t3
                  sltiu        a4, a3, -173
                  addi         a4, s9, -1407
                  auipc        s9, 899512
                  sra          s10, s2, s3
                  slt          a5, t6, s3
                  slli         s0, s1, 25
                  srai         t0, t1, 17
                  sll          s7, t2, s7
                  sltu         a4, sp, a7
                  srai         a7, s3, 12
                  andi         s8, s2, -1007
                  sltiu        a6, a2, 1167
                  andi         gp, a1, 599
                  sll          s2, a3, t4
                  andi         a5, t5, -1568
                  addi         s3, t6, -1030
                  xor          t3, zero, gp
                  addi         sp, a4, -1408
                  slti         s11, t5, 50
                  nop
                  slti         sp, t3, -915
                  auipc        s9, 554667
                  slt          ra, s11, a2
                  sub          zero, t1, s5
                  srai         gp, s7, 17
                  sltu         zero, a2, sp
                  srli         a2, s8, 22
                  or           t4, a2, s2
                  add          a6, zero, ra
                  slli         a5, gp, 28
                  ori          s5, s9, -383
                  auipc        s6, 198116
                  srl          t0, a4, s10
                  slt          s7, t3, t6
                  sltu         s0, gp, zero
                  sltiu        zero, s3, 523
                  slt          a3, tp, t3
                  slti         s5, t4, 1567
                  xori         a5, s3, 1620
                  slt          s1, t5, s2
                  slti         gp, sp, -564
                  slti         t6, ra, 2033
                  sltu         a6, s7, a3
                  sltiu        a3, s7, 1807
                  srli         s9, s5, 4
                  ori          a4, s5, 1986
                  or           t4, s6, a0
                  sub          s1, t6, sp
                  slli         s7, t2, 25
                  sltu         s1, s10, s5
                  ori          s7, a0, -1761
                  andi         a1, a5, 1070
                  sub          s1, a0, ra
                  or           a7, s9, tp
                  slti         zero, t2, 1398
                  sltiu        a1, zero, -776
                  srl          s4, a1, s8
                  auipc        gp, 710821
                  addi         s3, s7, -1757
                  srli         s0, a3, 2
                  or           a3, s7, a2
                  slli         s7, sp, 6
                  lui          s11, 1000428
                  slli         t4, s4, 2
                  sltiu        s4, ra, -1435
                  sltu         s2, sp, gp
                  add          t3, s1, a6
                  and          a7, a3, t6
                  xori         t0, tp, 629
                  sltiu        zero, s11, 765
                  lui          zero, 935036
                  or           a7, s3, s8
                  sub          a1, sp, sp
                  ori          ra, a5, -376
                  sub          t6, a5, a4
                  add          t0, gp, a2
                  sll          t6, t6, zero
                  lui          a7, 430036
                  add          s11, a0, s1
                  auipc        a1, 133384
                  srl          tp, a2, s6
                  slti         s10, a4, -1540
                  srai         a6, s11, 19
                  sll          a2, s4, a7
                  xor          gp, zero, t6
                  ori          s8, a4, -774
                  slt          t6, a6, s10
                  lui          t4, 814700
                  srli         s6, t2, 8
                  slt          t3, t2, a6
                  srl          a6, t1, s9
                  andi         a4, s1, 170
                  sra          s2, t4, s8
                  addi         zero, a2, -1670
                  nop
                  add          a3, s1, tp
                  xori         a5, a6, 1994
                  nop
                  lui          a1, 861874
                  or           s9, s6, a2
                  addi         ra, ra, -890
                  lui          zero, 124883
                  addi         ra, sp, -1405
                  slt          a4, sp, t5
                  xor          s6, s4, t3
                  ori          s8, ra, -1985
                  ori          s8, t4, -752
                  srl          s4, t2, tp
                  andi         s4, a1, -596
                  or           a2, ra, a7
                  srli         t0, t3, 7
                  srli         sp, s4, 1
                  lui          a3, 830859
                  slt          t3, s10, t3
                  xor          a5, t6, a3
                  sll          a5, t0, a4
                  ori          a3, t2, 209
                  nop
                  sltu         s2, sp, tp
                  srli         s9, ra, 26
                  srl          zero, s9, a0
                  sltiu        s5, t4, 1160
                  slti         s10, tp, -1936
                  and          t6, tp, t2
                  sub          s10, a7, gp
                  addi         s6, s9, -396
                  or           t3, a2, s1
                  slli         zero, s6, 21
                  srai         a1, s10, 14
                  and          a5, ra, t1
                  srai         s2, s3, 7
                  or           ra, a2, t6
                  nop
                  ori          t6, s7, -1494
                  sltiu        s9, s7, -729
                  add          s1, sp, a4
                  srli         gp, t5, 18
                  ori          s6, s1, -2005
                  sll          s7, t5, s1
                  ori          a6, a5, 1000
                  sub          t4, s9, s0
                  sub          s4, ra, t0
                  ori          tp, s10, 1201
                  or           a6, a0, s7
                  ori          a3, t5, 1221
                  auipc        t4, 946310
                  ori          s0, a0, -740
                  sll          s1, s3, a2
                  sltiu        ra, zero, -111
                  ori          s4, a6, -95
                  slli         s5, t6, 6
                  sra          tp, s7, s6
                  slti         t3, s2, -2016
                  srl          s2, s7, t2
                  srli         s1, s11, 20
                  andi         a7, a0, -539
                  sltu         s8, s6, a4
                  lui          gp, 326100
                  srli         s9, a3, 11
                  sra          t5, a6, s3
                  and          gp, s3, s7
                  srl          s0, zero, s1
                  auipc        gp, 685326
                  lui          s6, 908215
                  andi         s4, s3, -644
                  slt          s1, t2, a2
                  sll          s6, s10, t1
                  or           sp, t4, a4
                  slt          s3, s8, gp
                  sra          s8, s7, sp
                  addi         tp, s1, 319
                  srli         s4, t0, 16
                  addi         t0, gp, 1922
                  sltu         s9, tp, t0
                  and          s1, sp, t1
                  xor          s0, s9, gp
                  and          s7, a7, sp
                  lui          s7, 497914
                  slt          a4, s7, s5
                  slli         s9, zero, 6
                  andi         s4, s11, 251
                  auipc        t6, 455178
                  sll          t5, s11, sp
                  addi         t3, zero, -1379
                  sltu         gp, sp, gp
                  xori         t5, zero, 972
                  sll          s5, a2, t2
                  lui          t0, 436514
                  sub          t4, t5, a0
                  auipc        a4, 189014
                  srl          a2, s9, a1
                  ori          a4, s3, 1750
                  sll          t3, s5, t5
                  sub          s7, a5, t0
                  lui          s4, 239470
                  srai         gp, t2, 27
                  sltu         a5, s1, s4
                  or           a7, s0, t0
                  or           s8, a7, a1
                  srli         s6, a0, 20
                  sub          sp, a0, a3
                  and          ra, s2, tp
                  slt          gp, t1, ra
                  andi         s3, ra, -755
                  lui          t0, 269240
                  or           s2, tp, s9
                  sltu         gp, t0, s7
                  lui          s2, 462408
                  or           ra, a5, gp
                  sub          a5, s1, a0
                  slti         tp, s11, -961
                  slt          a7, s7, t2
                  xor          s5, t0, a7
                  slti         t5, zero, 1623
                  and          a1, t5, s3
                  xor          t3, t1, zero
                  add          a5, s11, a6
                  add          s7, t3, gp
                  andi         s7, a2, 287
                  nop
                  xori         a3, zero, -1838
                  or           sp, a5, s3
                  ori          a5, a6, 1209
                  sltiu        s7, s8, 1127
                  srli         s8, a1, 5
                  xori         a3, ra, -533
                  auipc        ra, 570601
                  addi         tp, a2, -683
                  sra          s4, t6, s1
                  sll          s2, s10, s0
                  lui          gp, 933170
                  srl          s9, s2, t6
                  xor          s5, s1, t2
                  auipc        a5, 958900
                  sltiu        s9, zero, 1574
                  nop
                  sra          t5, s1, a0
                  srl          gp, gp, a3
                  sll          sp, s5, a3
                  sltu         a3, s4, s8
                  and          s7, s9, s8
                  xori         s7, a7, 1846
                  sra          t4, s4, a3
                  nop
                  sra          tp, a5, a6
                  ori          sp, a0, -846
                  add          s5, s10, tp
                  srli         t3, t1, 14
                  and          a1, sp, s4
                  slt          t0, a3, s1
                  andi         s1, a7, 1957
                  srai         t6, s0, 9
                  srli         a6, s10, 0
                  or           t0, t6, s8
                  add          a5, t1, s7
                  and          s0, a1, ra
                  xori         t0, s6, -1020
                  xori         ra, s9, 963
                  ori          s10, s8, -1263
                  ori          s11, sp, 45
                  and          t0, s2, t0
                  ori          t6, zero, 1293
                  ori          s3, t6, -292
                  nop
                  auipc        t0, 994460
                  ori          gp, t5, -527
                  xor          a6, gp, sp
                  xori         sp, t5, -989
                  sll          s8, s8, s11
                  sltiu        s0, s11, 1118
                  srli         a6, ra, 20
                  addi         s4, a0, -130
                  addi         s10, t2, 1187
                  andi         a3, t4, -1093
                  sll          t3, s9, sp
                  xor          t6, a4, sp
                  srl          a5, s8, t0
                  andi         a4, tp, -1067
                  andi         s5, s8, 776
                  sltiu        t4, a4, 1602
                  nop
                  sltu         s4, s5, a0
                  xori         t3, s5, -874
                  ori          s2, t5, -886
                  andi         s9, sp, 1748
                  xori         t6, a0, 450
                  add          s2, s11, s0
                  sra          tp, s10, gp
                  sll          s6, tp, a6
                  slt          a2, tp, a3
                  lui          s7, 108148
                  xor          s1, s0, a7
                  add          a4, s4, a6
                  srl          t0, a4, a4
                  or           s6, t6, s3
                  sltu         s11, a5, t2
                  slt          s10, t6, tp
                  srl          s5, a5, zero
                  add          gp, s0, s6
                  nop
                  sll          s7, t2, a0
                  sll          gp, t2, s6
                  slli         a4, s4, 6
                  sra          ra, t4, s11
                  auipc        sp, 996972
                  slli         ra, a3, 25
                  auipc        a7, 409492
                  and          a3, ra, a4
                  slti         s6, s0, 168
                  sub          s8, ra, s1
                  sub          s7, a3, t3
                  srl          s1, s4, zero
                  slti         gp, s7, -1108
                  srl          a5, zero, s8
                  auipc        zero, 43148
                  sub          a3, s8, a7
                  sra          s1, a2, t6
                  lui          a4, 146316
                  srai         s10, a6, 8
                  sra          a6, a5, t3
                  nop
                  sra          gp, t1, t0
                  add          t3, zero, tp
                  and          s5, a7, a0
                  xori         t4, s6, 163
                  lui          zero, 282440
                  sltiu        s2, s8, -351
                  sll          s11, a0, a2
                  sltiu        s4, a7, -1933
                  lui          a1, 395562
                  lui          t0, 741419
                  sltu         a5, t1, s7
                  sra          s7, a0, ra
                  sub          a4, s5, a5
                  srai         a6, a4, 28
                  auipc        a4, 85487
                  slti         a4, s0, -1946
                  sll          tp, s11, a6
                  ori          tp, t3, 987
                  addi         tp, a4, 1970
                  srl          s2, s5, s5
                  slli         a6, a1, 11
                  or           s8, s7, ra
                  xor          a4, t5, s8
                  xor          s3, a5, a0
                  sltu         t6, s10, s7
                  sra          s11, a5, a1
                  srli         s8, a3, 18
                  andi         s5, a4, 6
                  srai         s11, tp, 13
                  nop
                  sltu         s11, a7, t1
                  xor          a2, s9, s9
                  add          t4, s6, s10
                  sltu         s1, a0, s7
                  nop
                  srl          t6, zero, a4
                  sltu         sp, zero, t0
                  addi         s7, t6, -474
                  auipc        s1, 829841
                  lui          a7, 312028
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           sp, 0x4a28cd9b
                  li           a4, 0x0
                  li           gp, 0xffffffff
                  li           t5, 0x80000000
                  li           s1, 0x80000000
                  li           t3, 0x0
                  li           a3, 0x80000000
                  li           s7, 0x80000000
                  li           t4, 0x80000000
                  addi         sp, s1, 1105
                  addi         a4, s1, 1374
                  auipc        gp, 590463
                  auipc        t4, 805748
                  addi         a4, gp, 1150
                  nop
                  nop
                  sub          t3, s1, a5
                  lui          a5, 662826
                  auipc        t4, 543721
                  nop
                  nop
                  nop
                  lui          a3, 590003
                  auipc        a5, 178584 #end riscv_int_numeric_corner_stream_5
                  sltiu        s4, a3, -677
                  sll          a5, t4, s2
                  nop
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           t3, 0x80000000
                  li           a6, 0x926fbf2f
                  li           sp, 0xffffffff
                  li           a3, 0x0
                  li           t0, 0x0
                  li           t5, 0xffffffff
                  li           s11, 0x0
                  li           s3, 0x0
                  li           s5, 0x80000000
                  add          a6, sp, a3
                  add          s0, s0, t0
                  nop
                  add          s5, t5, s5
                  add          sp, s11, s11
                  auipc        t3, 801067
                  sub          t0, a6, s11
                  add          s5, s0, s5
                  addi         s3, s5, 1771
                  addi         t5, t0, -2002
                  add          s5, a3, sp
                  addi         t0, t3, 131
                  addi         s3, s3, -1204
                  lui          s0, 989071
                  add          t3, s5, s0
                  nop
                  sub          a6, t3, t0
                  nop
                  sub          t5, a6, s3
                  auipc        sp, 649474
                  add          t5, s11, t0
                  nop
                  addi         s3, a6, 28
                  auipc        s3, 5937 #end riscv_int_numeric_corner_stream_26
                  xor          s2, s0, s3
                  srl          a4, a2, t2
                  slli         t0, a7, 31
                  xori         tp, s10, -2022
                  sra          s6, s8, a6
                  xor          a4, a7, a3
                  andi         t6, s9, -1837
                  xori         a6, s0, 1065
                  andi         a4, t2, -1425
                  or           t5, sp, s3
                  and          a5, ra, s2
                  ori          s6, s11, -150
                  sltiu        zero, sp, 496
                  add          s0, s11, a3
                  srli         a4, a3, 21
                  sub          tp, a2, s10
                  slti         sp, s9, -2029
                  srl          a4, t2, s2
                  sub          s2, s10, s8
                  xori         t4, sp, -1831
                  sltu         s0, s8, a4
                  nop
                  sltiu        a2, a4, -354
                  slti         a7, a2, -783
                  or           s9, s3, sp
                  andi         a3, t4, -753
                  and          s10, ra, a7
                  lui          t0, 717569
                  srl          s4, s9, t0
                  xor          s6, a4, t6
                  sll          zero, s2, t0
                  add          a6, a5, s7
                  xori         zero, a3, 669
                  and          zero, sp, a3
                  sll          s2, s7, a4
                  sltu         s0, s8, s0
                  sra          t5, a0, a4
                  or           t4, s4, a4
                  srli         a2, a3, 20
                  xor          t5, ra, s9
                  sra          a1, s0, s7
                  xor          s11, t3, a5
                  slt          a4, tp, s6
                  and          a4, a2, a3
                  srli         s11, s9, 11
                  auipc        t4, 414809
                  sltiu        s2, a3, -1217
                  and          a2, s9, sp
                  or           s8, t6, s9
                  xor          gp, a7, zero
                  nop
                  add          a4, t2, a2
                  slt          s3, t5, s9
                  slti         s3, tp, 1652
                  slt          a4, a3, sp
                  slli         s9, s1, 23
                  sra          s8, s7, a7
                  lui          s6, 237550
                  or           a6, t1, t0
                  sub          a1, t3, t5
                  sra          s5, a7, gp
                  srl          s7, s9, t0
                  slt          s2, t3, s9
                  slt          s4, s2, t2
                  srl          s11, ra, a7
                  ori          t5, t3, 1034
                  xori         tp, sp, 127
                  or           s11, t1, a6
                  slt          s4, a0, s3
                  add          s5, t5, sp
                  addi         gp, s5, -1278
                  sub          t0, t0, s6
                  xori         s2, a3, -692
                  srl          s8, a4, a2
                  xor          a3, t3, zero
                  and          sp, s9, a5
                  ori          s11, tp, -150
                  auipc        s3, 35027
                  lui          t4, 786095
                  slti         t5, a3, -35
                  auipc        a4, 867636
                  or           sp, a5, a7
                  xor          ra, s7, a3
                  slli         s10, t2, 3
                  xori         t4, s4, -877
                  srli         a7, s10, 25
                  slti         sp, t4, -1856
                  or           s10, s9, t2
                  auipc        t4, 956647
                  sra          s8, s7, s1
                  srl          s10, a7, s6
                  sltiu        t3, s10, -1112
                  slli         a5, a6, 22
                  ori          t5, s7, -350
                  sub          s9, t4, a4
                  srai         s11, s2, 0
                  and          s7, a2, s10
                  slt          gp, sp, zero
                  sltu         s3, s11, t2
                  srli         a3, a1, 6
                  nop
                  sll          a3, a3, s6
                  srli         a5, a3, 3
                  slli         s7, a0, 3
                  xor          t5, t3, s11
                  srl          s3, t6, a2
                  and          t0, ra, s8
                  ori          ra, s11, 885
                  or           s8, t6, tp
                  xor          a6, a7, s10
                  auipc        s1, 481263
                  add          a5, s6, t0
                  and          a1, a7, zero
                  auipc        s10, 854945
                  slt          a2, ra, a4
                  and          t0, t4, s2
                  srli         t6, t3, 22
                  sltiu        s6, a3, -762
                  auipc        s6, 252467
                  srli         a7, sp, 30
                  sll          s11, gp, t4
                  nop
                  srai         s1, s3, 2
                  sll          t4, s0, a6
                  li           a6, 0x2bdf54ab #start riscv_int_numeric_corner_stream_1
                  li           tp, 0x0
                  li           s4, 0x5a2240b4
                  li           s2, 0x80000000
                  li           a3, 0x0
                  li           gp, 0x0
                  li           a5, 0x0
                  li           s10, 0x1c2f10a2
                  li           t0, 0x0
                  li           t6, 0xffffffff
                  lui          tp, 78684
                  nop
                  lui          t6, 695604
                  add          gp, gp, s10
                  nop
                  sub          s10, gp, a3
                  lui          s10, 106631
                  lui          s4, 205483
                  add          gp, gp, s10
                  add          s10, a3, s10
                  auipc        t6, 347458
                  auipc        a5, 200213
                  lui          tp, 631852
                  add          t6, a3, t0
                  sub          gp, t0, t6
                  nop
                  lui          gp, 393189
                  lui          t6, 538048
                  nop
                  nop
                  nop
                  lui          tp, 348526
                  addi         s10, t6, -1493
                  sub          a3, gp, t6
                  nop
                  nop
                  lui          a6, 993223 #end riscv_int_numeric_corner_stream_1
                  slt          t5, zero, t5
                  and          s10, s0, s8
                  lui          a5, 896987
                  sltiu        s0, a6, -689
                  or           s4, s1, s8
                  srl          zero, s10, a1
                  and          a4, t6, s3
                  addi         s7, a5, 255
                  xor          s2, t3, t2
                  andi         a3, s6, -639
                  sub          ra, zero, s3
                  and          t6, s1, a2
                  lui          a1, 766232
                  sll          s9, t1, a1
                  srai         t5, t0, 30
                  srli         s0, s8, 8
                  addi         sp, tp, 1611
                  add          s10, t1, s7
                  addi         s6, s2, -1525
                  sll          t0, gp, s3
                  srli         t6, s9, 25
                  andi         sp, t4, 1359
                  ori          s10, s1, 207
                  xori         s1, a5, 1040
                  slti         a3, s1, -1919
                  addi         t0, a4, -335
                  sltu         s4, s0, s8
                  auipc        s2, 989993
                  auipc        zero, 826332
                  add          s2, t0, t3
                  and          gp, tp, tp
                  ori          s5, t6, 660
                  sltu         t6, s1, s11
                  addi         t0, a7, 335
                  sra          t4, a1, s3
                  sltu         a6, s4, s2
                  add          a5, t4, t3
                  andi         sp, a6, -777
                  srai         s1, s10, 15
                  srli         s10, a6, 3
                  lui          s0, 267164
                  slti         a6, s4, -352
                  slt          a3, t0, s5
                  xori         a3, t1, -327
                  ori          a3, s6, 39
                  slti         t4, t5, 416
                  xor          a5, t3, s2
                  auipc        s10, 78148
                  auipc        ra, 530921
                  addi         s11, t5, -250
                  lui          t3, 817273
                  add          s3, s0, s7
                  add          a7, s0, s9
                  or           tp, a0, sp
                  slt          a6, t4, s1
                  sltu         s7, s4, a3
                  and          s0, s4, sp
                  and          s4, t3, s4
                  sra          a5, tp, s3
                  lui          s8, 371802
                  srai         s4, s6, 27
                  li           t4, 0x9ac78bfb #start riscv_int_numeric_corner_stream_36
                  li           t6, 0xce5266f
                  li           s1, 0xffffffff
                  li           s0, 0xffffffff
                  li           a3, 0x899af93a
                  li           ra, 0x80000000
                  li           s9, 0x0
                  li           s5, 0x0
                  li           s4, 0x80000000
                  li           t3, 0x0
                  addi         s0, ra, 1169
                  lui          t3, 556738
                  sub          t6, ra, a3
                  nop
                  nop
                  addi         ra, s0, 1879
                  sub          s4, ra, a3
                  add          s0, t6, s4
                  add          s9, ra, s0
                  sub          s4, a3, s4
                  add          t6, s4, a3
                  auipc        s0, 396608
                  lui          s9, 822108
                  addi         s9, s9, 1710
                  auipc        a3, 479905
                  add          t3, ra, s4
                  addi         s0, s0, -1203
                  addi         t4, a3, 1978
                  nop
                  nop
                  addi         s1, s4, 1592
                  addi         s0, s9, -281
                  lui          s1, 751012
                  addi         s4, s1, 1992
                  add          t6, s0, t4
                  sub          s5, ra, t3 #end riscv_int_numeric_corner_stream_36
                  sltiu        t3, t4, -1416
                  ori          s1, a7, -1699
                  srli         s1, a0, 10
                  sra          a5, s11, t4
                  sltiu        a5, s5, 1691
                  andi         s11, sp, 616
                  srai         s1, ra, 26
                  sra          sp, s6, t5
                  xor          gp, s6, a5
                  ori          s4, s8, -2003
                  and          s8, s1, t6
                  xori         s7, t2, 875
                  or           ra, s3, a7
                  andi         t3, s8, 669
                  xori         tp, s5, -919
                  lui          a2, 232406
                  or           zero, s0, a7
                  and          s9, s9, zero
                  add          s1, a5, t5
                  sra          s6, s6, a6
                  sltu         s7, s7, t3
                  auipc        sp, 77598
                  andi         s2, s6, -435
                  slli         s0, s8, 10
                  ori          a2, ra, 692
                  or           t4, sp, a2
                  sltu         a7, tp, s3
                  sltu         s9, tp, t4
                  andi         t4, a4, -1511
                  andi         t4, s6, 1029
                  slli         zero, tp, 21
                  lui          sp, 426483
                  sra          s1, tp, ra
                  srli         s1, s0, 3
                  slli         s0, s10, 19
                  auipc        t6, 726686
                  lui          a5, 579841
                  sra          t6, a1, t3
                  and          sp, s2, t1
                  andi         a4, s3, 1523
                  xori         a6, t2, -647
                  and          s9, s2, s5
                  sll          a2, gp, ra
                  sltu         s4, t3, s9
                  slti         a2, gp, -1657
                  or           s5, s10, t4
                  sra          sp, s8, s0
                  or           s3, s3, zero
                  ori          t0, a1, -488
                  and          s2, a4, a4
                  slti         a2, s1, 211
                  add          t6, s2, t4
                  nop
                  srl          ra, s10, a1
                  slt          t0, s3, a0
                  sll          tp, a5, a1
                  auipc        s4, 23721
                  nop
                  nop
                  and          t3, a7, sp
                  or           t3, a1, sp
                  sub          zero, a4, s3
                  slli         t4, a4, 20
                  srl          s10, s3, s8
                  auipc        s3, 75140
                  slt          gp, a2, tp
                  xori         s9, a5, 150
                  sltiu        a5, s5, 226
                  xori         a5, s4, -1830
                  srai         a1, t4, 20
                  lui          t6, 821639
                  sra          s3, t1, a7
                  nop
                  li           a7, 0x4d0681f2 #start riscv_int_numeric_corner_stream_19
                  li           a1, 0xb772ae1f
                  li           tp, 0x0
                  li           s7, 0xc2ef3eb2
                  li           s5, 0xffffffff
                  li           ra, 0x0
                  li           s8, 0xe9e9c487
                  li           s11, 0xe96c643
                  li           t5, 0x80000000
                  li           sp, 0x80000000
                  nop
                  sub          a1, s8, a1
                  add          s8, a7, sp
                  lui          a1, 546723
                  nop
                  nop
                  nop
                  sub          tp, s5, tp
                  sub          sp, s5, s7
                  auipc        s8, 936130
                  nop
                  auipc        s8, 733739
                  addi         sp, t5, 1284
                  lui          s8, 852781
                  sub          s11, s5, s7
                  add          s11, tp, a1 #end riscv_int_numeric_corner_stream_19
                  xor          s7, s4, a1
                  slli         s6, zero, 27
                  auipc        s7, 208019
                  xor          tp, s10, a1
                  auipc        tp, 346925
                  ori          s0, s10, 42
                  or           gp, s7, t6
                  sltiu        a6, a0, 108
                  sra          tp, t3, s8
                  or           gp, s5, a6
                  srai         s8, a4, 9
                  slli         s6, s10, 21
                  sltu         a5, zero, s5
                  auipc        tp, 798339
                  slli         s11, t5, 10
                  sltu         s8, a1, a2
                  add          s7, zero, s2
                  and          a7, s3, a2
                  slt          s10, s6, a3
                  sltu         gp, t5, a2
                  sltu         s2, t2, s3
                  srai         s11, gp, 14
                  ori          a7, a5, 1421
                  xori         a2, t6, 883
                  sll          t3, a7, ra
                  auipc        s7, 808816
                  sll          s8, t6, s0
                  sra          t6, a7, t6
                  sltiu        zero, t0, -1120
                  slt          tp, s8, zero
                  sub          a4, tp, a3
                  sltiu        t5, a4, 1246
                  srai         s4, a4, 19
                  lui          gp, 357402
                  xor          a4, zero, s5
                  srl          tp, s0, a6
                  auipc        zero, 756071
                  and          t6, t6, s2
                  xor          s2, s11, s5
                  auipc        t3, 641357
                  slt          a4, s3, a5
                  slti         a2, s7, -1624
                  sra          a3, s11, zero
                  srli         s10, t1, 29
                  srl          s9, s3, s8
                  and          s5, zero, s1
                  slli         s10, t0, 16
                  sub          s0, t6, gp
                  addi         tp, t2, 1081
                  sltiu        ra, a2, -560
                  auipc        sp, 930089
                  nop
                  add          s1, a5, s7
                  add          s8, t6, t2
                  srli         sp, s10, 8
                  andi         ra, gp, 328
                  or           s2, s8, a2
                  andi         s8, a1, -1167
                  lui          t5, 269235
                  andi         t5, s6, 784
                  nop
                  or           a1, s1, s3
                  srli         t3, a3, 21
                  sltiu        s0, a6, 1152
                  add          a7, t3, s8
                  sltu         s6, s9, tp
                  sub          t3, tp, a4
                  auipc        s1, 861283
                  xor          s10, t5, zero
                  sub          a4, a1, s8
                  xori         tp, s10, -1985
                  sra          s1, t0, tp
                  xor          t0, s3, t4
                  nop
                  xori         s5, s3, 1130
                  srl          s7, gp, s4
                  and          a1, a0, a3
                  srli         s3, s1, 10
                  xori         sp, t5, 16
                  slti         tp, s0, -993
                  slti         a6, a3, 1613
                  sra          a4, a6, s5
                  auipc        s4, 784820
                  slt          t5, a7, a3
                  sltiu        s2, s7, -1408
                  xori         a4, s3, -568
                  add          gp, s9, s7
                  slt          s0, s2, a3
                  sltu         sp, t4, s3
                  nop
                  srl          s9, s3, tp
                  sltiu        a2, t1, -1447
                  add          s1, s11, a6
                  xor          s10, t3, t1
                  ori          a4, t0, 306
                  xor          t6, s8, s1
                  and          s10, t6, t1
                  sll          t0, a1, a3
                  auipc        sp, 503248
                  sub          tp, a6, a2
                  sra          s10, s10, a7
                  ori          t0, s8, -671
                  and          t0, t5, a6
                  add          s6, s8, s0
                  or           zero, s4, a6
                  xor          t0, a5, t4
                  xor          ra, s2, s1
                  ori          t4, s10, 1482
                  sll          s0, s10, a0
                  or           tp, s1, s3
                  slli         s1, s7, 30
                  srli         zero, a0, 29
                  sltu         t0, a3, a4
                  srl          t3, s9, s4
                  nop
                  and          s11, ra, s0
                  add          zero, a4, t6
                  addi         a6, ra, -642
                  sra          s3, t3, t6
                  srl          a5, t3, a3
                  lui          s1, 990595
                  auipc        a1, 540096
                  ori          ra, s2, -1069
                  or           a5, a3, t3
                  add          t5, s6, s7
                  xori         t3, ra, 2045
                  slti         s6, t6, 725
                  andi         a1, a7, 1949
                  slt          sp, t2, zero
                  sll          zero, s0, gp
                  lui          sp, 535640
                  sll          s0, ra, a7
                  xor          s3, s10, a1
                  nop
                  sub          ra, t1, a1
                  srl          a6, s0, a7
                  srl          s10, a0, s5
                  slli         s7, s2, 2
                  sltu         t0, s6, t0
                  sll          s9, a2, a1
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s8, 0x0
                  li           s4, 0xffffffff
                  li           a3, 0x0
                  li           t0, 0xffffffff
                  li           s1, 0x80000000
                  li           a2, 0xffffffff
                  li           a6, 0xb106b781
                  li           s0, 0x0
                  li           s6, 0x0
                  lui          t0, 232708
                  add          t0, t0, s8
                  addi         s6, tp, 903
                  addi         t0, a6, 215
                  add          s6, t0, s4
                  lui          s1, 674689
                  add          s1, t0, s6
                  auipc        s0, 857992
                  nop
                  addi         a2, s1, -201
                  add          s1, a2, s8
                  auipc        s6, 1264
                  nop
                  auipc        t0, 153462
                  lui          s6, 388940
                  sub          a3, tp, s8
                  addi         s1, t0, 734
                  sub          s1, a2, s8
                  sub          a6, s6, s8
                  lui          t0, 853705 #end riscv_int_numeric_corner_stream_15
                  srai         s1, s1, 6
                  lui          t5, 883098
                  slt          s3, s5, a4
                  srai         s2, a2, 29
                  or           ra, s9, t6
                  addi         t6, tp, 627
                  or           s1, a2, a2
                  srli         zero, t0, 2
                  sltu         s2, s1, a1
                  sll          sp, a3, t3
                  ori          a7, t6, -407
                  xor          s9, t0, t5
                  sra          tp, s3, a0
                  lui          a6, 235412
                  slli         sp, t3, 27
                  or           t4, sp, a5
                  slti         a7, a6, -429
                  slli         s3, s4, 25
                  nop
                  slti         a3, gp, -1321
                  auipc        t4, 820658
                  sra          a1, sp, s1
                  xori         s2, t6, 1958
                  sll          s9, a4, a6
                  and          s0, a3, s9
                  sltiu        a4, s4, -193
                  srai         a5, ra, 30
                  sra          a4, s5, t5
                  xori         t5, t5, -1243
                  andi         s11, a6, -1242
                  ori          s1, s9, 1583
                  sub          a1, a4, t3
                  slti         a1, a1, 1772
                  srai         sp, s9, 25
                  and          s9, s2, t2
                  sltiu        t0, a0, -411
                  xori         t3, t0, -904
                  auipc        a3, 751842
                  srl          s9, t3, a0
                  sltiu        s2, s1, -313
                  sub          t6, a3, s9
                  sub          s8, s10, s4
                  srli         s9, zero, 13
                  sra          tp, s3, s8
                  andi         a1, s3, -1902
                  srai         gp, a0, 14
                  and          sp, s9, a3
                  sll          s9, s3, tp
                  sra          s3, a4, zero
                  xori         gp, a7, -374
                  add          s11, a5, s2
                  nop
                  sll          zero, a1, t6
                  sltiu        s5, a3, 362
                  or           ra, s3, t2
                  add          s7, a2, a3
                  srai         ra, s2, 8
                  and          sp, t6, s9
                  sltiu        a1, s5, 1376
                  sltiu        t4, t3, 952
                  add          a2, sp, a3
                  auipc        tp, 1038006
                  sub          t6, a0, a3
                  slli         zero, s5, 26
                  sltu         s10, a5, a1
                  auipc        t3, 365333
                  sll          a5, s10, s6
                  auipc        s10, 162379
                  or           s3, a5, a6
                  slt          a7, s7, s10
                  auipc        ra, 342546
                  ori          s8, t3, 2014
                  andi         s5, t5, -1567
                  auipc        t4, 243327
                  or           s0, a2, t5
                  slli         sp, s4, 7
                  addi         ra, s0, -992
                  sll          a3, a1, s0
                  sltu         t5, a4, ra
                  sltu         a6, t0, t4
                  slti         t3, tp, 711
                  ori          s3, a2, 78
                  add          s4, t5, s8
                  slti         s1, s9, 1893
                  srai         s4, a5, 21
                  xor          s7, t1, s11
                  xor          s10, s3, a1
                  auipc        s2, 857989
                  srai         zero, s2, 6
                  xori         a3, a2, -521
                  add          a4, a5, sp
                  and          a3, gp, a0
                  xori         s11, s0, -1851
                  xori         s4, a4, 1499
                  add          sp, sp, s5
                  sltiu        s6, a4, -1592
                  xori         gp, ra, -595
                  srli         t3, gp, 12
                  xor          s8, a6, a1
                  addi         a5, sp, -1361
                  srli         a4, sp, 1
                  sltu         a7, a6, tp
                  slt          a5, t3, a2
                  slti         s0, s2, 1031
                  lui          s2, 506777
                  srai         s10, s11, 13
                  add          a7, a4, t3
                  xor          zero, s2, a7
                  ori          t4, a3, 1069
                  li           a1, 0xfd30d7e1 #start riscv_int_numeric_corner_stream_39
                  li           tp, 0xffffffff
                  li           t0, 0x0
                  li           sp, 0xffffffff
                  li           s0, 0xffffffff
                  li           s1, 0x716f46e
                  li           s4, 0xffffffff
                  li           s2, 0xffffffff
                  li           s11, 0xffffffff
                  li           t6, 0x12258caa
                  auipc        s0, 414733
                  add          s11, tp, a1
                  addi         t0, t6, 1815
                  addi         sp, s0, -1443
                  add          s11, t6, t0
                  sub          sp, s11, s0
                  sub          sp, t6, s11
                  sub          s11, s4, sp
                  add          s4, s1, tp
                  lui          s0, 274073
                  sub          sp, a1, s11
                  addi         s11, t6, 1363
                  add          s11, s1, s0
                  lui          t0, 59695
                  addi         t6, sp, 368
                  nop
                  add          t6, t6, s1
                  lui          t0, 74220
                  lui          t6, 427339
                  auipc        a1, 151536
                  lui          s11, 587283
                  lui          a1, 140209
                  add          tp, t0, tp
                  sub          s2, s11, sp
                  addi         sp, t6, 474 #end riscv_int_numeric_corner_stream_39
                  addi         s5, s11, 1000
                  sub          s8, gp, s6
                  slt          s10, a3, s3
                  srli         a5, a2, 23
                  addi         t6, a2, 1308
                  addi         s8, a4, 1986
                  slt          s7, s3, s5
                  xor          a6, t5, a3
                  lui          t4, 593602
                  andi         s3, s11, 1431
                  sra          s8, s10, tp
                  sra          zero, t1, ra
                  srli         t4, s10, 20
                  sltu         s2, s2, ra
                  srl          s4, a7, s9
                  sltiu        s0, s3, -1621
                  lui          s5, 63693
                  slt          s10, s2, t1
                  slt          a6, s3, zero
                  sll          s4, s1, t4
                  sra          a1, s9, s9
                  srli         zero, s0, 1
                  slt          s8, t2, s1
                  sll          a4, a2, s0
                  add          a7, a2, t2
                  slli         s0, s6, 3
                  sub          gp, a6, s7
                  srli         gp, gp, 30
                  add          t6, s11, a7
                  lui          s8, 201115
                  ori          tp, a6, 946
                  xori         s9, a3, -31
                  auipc        gp, 363618
                  slli         s9, tp, 21
                  sub          t3, s3, t5
                  sltiu        s6, ra, -866
                  slt          s5, a6, s4
                  sra          ra, t1, s4
                  sltu         s1, s1, zero
                  slli         a3, t0, 14
                  nop
                  slli         t0, s6, 0
                  sltu         a7, s4, s7
                  slt          s11, a1, a7
                  auipc        t6, 980958
                  lui          t4, 854860
                  slti         a1, s7, 410
                  xori         t4, a7, -863
                  srai         s2, t5, 10
                  auipc        gp, 255526
                  andi         s7, s9, -466
                  xori         s8, s2, 702
                  xori         s9, t2, 1674
                  slt          t5, a2, t3
                  slti         a2, s10, -811
                  srl          a6, zero, gp
                  add          s10, s7, a6
                  slli         ra, a5, 17
                  xori         s6, t2, -1281
                  sub          s6, s5, s10
                  addi         s5, t2, 1088
                  srai         s4, t0, 11
                  auipc        s2, 1023390
                  xor          s5, t3, s11
                  srl          gp, s7, s7
                  srai         s5, sp, 3
                  sltiu        s6, t0, 519
                  xor          a4, t1, t3
                  lui          s11, 990060
                  srli         a7, t6, 10
                  srli         sp, a2, 14
                  sltu         t3, a0, a1
                  srl          ra, t5, gp
                  nop
                  addi         gp, tp, 1555
                  add          a1, a0, t0
                  sltiu        a2, gp, 406
                  xor          a2, t1, a2
                  slti         t5, a2, -289
                  slti         s2, s5, 464
                  auipc        t3, 548592
                  sltiu        a1, a3, 1914
                  nop
                  srl          s10, a7, a4
                  or           s7, ra, t1
                  srai         s6, s7, 15
                  sltu         sp, s2, s8
                  srai         sp, t1, 30
                  sll          s3, s10, a3
                  xori         a6, a0, -456
                  sub          a6, s8, s1
                  slli         gp, t1, 21
                  auipc        t4, 323407
                  lui          a7, 767190
                  srai         a3, a5, 22
                  xor          zero, t3, s1
                  and          s1, s1, s3
                  slli         tp, s2, 18
                  slli         a1, a0, 20
                  lui          sp, 7338
                  sra          sp, ra, zero
                  and          gp, a7, gp
                  auipc        a1, 3701
                  sltu         ra, zero, t2
                  auipc        s6, 237200
                  sra          a6, ra, s8
                  xor          s0, s10, s1
                  sltiu        t3, t6, 65
                  ori          t3, sp, 2035
                  srli         s4, a5, 29
                  sltiu        s7, t5, -789
                  srl          s3, a7, gp
                  or           a4, a0, zero
                  add          s3, sp, s4
                  sub          a4, s3, tp
                  or           zero, s7, s5
                  srl          s8, t1, a1
                  add          s1, a3, t1
                  sra          zero, s5, a6
                  add          s9, gp, a3
                  sltiu        s6, t0, 1258
                  xori         s9, t1, 1180
                  andi         s0, t6, 1088
                  sll          a1, t6, gp
                  sll          a3, a1, s8
                  andi         zero, s5, 1019
                  xori         a1, t4, 568
                  lui          a5, 199532
                  nop
                  sltiu        s11, a6, 984
                  xori         t4, a7, 1409
                  slti         a1, s10, 71
                  add          a3, a0, t2
                  xori         t6, a3, 260
                  sltiu        sp, tp, 2001
                  sll          t6, t0, t5
                  srai         t5, ra, 5
                  ori          a5, s0, 1246
                  auipc        s0, 504990
                  nop
                  ori          s6, a5, 8
                  and          zero, s0, s9
                  srai         s1, s5, 16
                  sra          s5, t4, t6
                  slti         t0, a2, 1404
                  or           t6, gp, zero
                  auipc        zero, 635015
                  addi         a2, a2, 1040
                  addi         s9, t2, -957
                  andi         gp, a3, 59
                  addi         s7, s11, -1660
                  add          s7, s1, t1
                  srli         s1, t6, 6
                  auipc        a4, 480795
                  sltu         a3, a7, a2
                  sra          a6, gp, s6
                  sltiu        s4, t0, 1837
                  andi         s5, t2, -1854
                  slti         t6, t6, 2023
                  nop
                  lui          s4, 863859
                  nop
                  sltu         s6, s2, s2
                  sltu         s1, t6, a7
                  add          t3, ra, s3
                  sub          s10, gp, a6
                  xor          a2, a6, zero
                  addi         gp, t5, 1395
                  xor          s0, s4, ra
                  sll          a3, s8, s2
                  slt          s0, t0, s10
                  lui          s10, 585816
                  xori         sp, s3, -493
                  and          ra, s8, a6
                  srl          s6, a7, t6
                  slti         ra, s0, -1989
                  ori          s9, t2, -53
                  addi         s7, s10, -433
                  andi         a3, a6, -941
                  or           gp, a2, gp
                  add          s6, s11, s6
                  and          s10, s2, s4
                  lui          s0, 732348
                  sltu         a3, s0, t5
                  srl          s11, ra, a1
                  add          a6, s9, a3
                  add          s1, a7, t0
                  sub          tp, s10, t2
                  srai         s7, s11, 2
                  lui          sp, 501338
                  xori         sp, gp, 1165
                  add          a1, sp, t1
                  slti         s7, s8, -1539
                  andi         a4, a4, -1082
                  auipc        s6, 403323
                  or           s5, s7, a5
                  andi         a4, a1, 75
                  or           a2, tp, a5
                  sltu         s6, t6, s0
                  srai         t5, a2, 10
                  add          tp, tp, t6
                  slt          a5, s1, s4
                  add          zero, a3, a6
                  sra          s8, sp, a1
                  lui          sp, 312132
                  ori          s4, t2, 818
                  srl          s3, s6, a2
                  slt          a4, s2, gp
                  and          t6, a3, a3
                  ori          ra, a7, -426
                  andi         tp, t5, 1265
                  and          tp, a7, a3
                  add          s2, a6, s0
                  xor          s5, ra, t4
                  or           s10, s4, s9
                  andi         a5, s11, -558
                  sltu         s10, a0, t3
                  andi         s5, t3, 1614
                  lui          sp, 728471
                  srli         sp, a2, 23
                  xori         t0, s2, -492
                  slli         t0, t6, 20
                  sltiu        gp, s10, 575
                  addi         ra, s1, 425
                  auipc        s8, 288044
                  and          a4, s2, s11
                  xori         a5, a6, -799
                  ori          tp, tp, 1066
                  lui          s7, 170111
                  xori         s7, s9, -1967
                  andi         s1, t4, -1480
                  xori         gp, s1, -1886
                  or           a2, t0, s2
                  srai         s6, s9, 28
                  sltiu        gp, a3, 1138
                  srl          s11, ra, t3
                  sll          s6, t6, t0
                  lui          a1, 466515
                  and          s0, sp, a5
                  ori          a3, s2, -1784
                  andi         s5, sp, 1758
                  andi         a1, a4, -1862
                  auipc        s1, 79893
                  sltu         a4, s10, a6
                  auipc        s7, 56402
                  add          a1, a0, a7
                  nop
                  and          s2, a5, zero
                  srli         s7, s9, 12
                  sll          s0, a0, s11
                  slli         t5, t5, 27
                  srai         t6, zero, 31
                  nop
                  sltu         s6, s0, t6
                  addi         s7, s8, -481
                  sltiu        a4, t0, 1473
                  ori          a7, a4, -1684
                  sll          s4, t0, a3
                  lui          a2, 1007699
                  xori         zero, t3, -1748
                  nop
                  srl          s1, a3, t3
                  and          s10, ra, s7
                  nop
                  srl          s3, ra, tp
                  sra          s4, t4, a6
                  andi         s11, a1, -1717
                  srli         a4, ra, 9
                  or           s3, a4, t6
                  addi         a2, s5, 1357
                  srli         s11, ra, 3
                  sra          a4, s5, s5
                  slli         a1, t5, 22
                  addi         s9, a1, -1234
                  sub          a2, a3, t0
                  sll          s11, zero, t4
                  slt          gp, s9, s3
                  slli         s3, s6, 18
                  addi         s3, t6, -639
                  srl          gp, t5, a5
                  addi         s4, t5, 1839
                  auipc        s0, 827714
                  addi         s1, t0, -487
                  ori          gp, a0, -914
                  xori         s7, s9, -1154
                  and          ra, s6, s3
                  srai         ra, s3, 14
                  xori         t0, ra, 1353
                  srai         a5, a3, 15
                  sltiu        s10, s9, -222
                  or           s9, s11, tp
                  and          s5, s1, a5
                  sra          s0, s4, a2
                  sltu         zero, s1, t4
                  add          a6, s2, zero
                  nop
                  add          t3, ra, s0
                  srl          s11, s11, s0
                  addi         zero, s9, -566
                  sub          s7, a6, zero
                  srli         a1, a4, 8
                  srai         sp, s2, 29
                  nop
                  addi         gp, s6, -1662
                  sub          s5, s11, a6
                  nop
                  sub          s2, s11, s4
                  ori          zero, gp, 580
                  sltiu        ra, s0, -1611
                  nop
                  sll          a3, zero, s1
                  xori         s4, a0, 24
                  slti         a6, s11, -1741
                  srli         s0, t4, 16
                  lui          a7, 310514
                  xori         s6, s4, -66
                  ori          ra, t1, 1826
                  nop
                  andi         a7, a0, 64
                  sra          t4, a0, a5
                  sltiu        s3, t4, -960
                  slti         sp, s6, -1436
                  sll          s8, s9, t0
                  srai         s7, t5, 5
                  addi         a3, ra, -1512
                  sra          tp, ra, s5
                  xori         s0, t3, -517
                  or           t3, t2, s11
                  srl          s4, s2, a0
                  srai         s7, t5, 1
                  slti         s11, t3, -470
                  srai         a1, s3, 26
                  sub          s0, s1, a6
                  srli         s9, s3, 28
                  sra          s7, a6, sp
                  ori          t5, a5, 105
                  srai         s6, s6, 3
                  ori          s3, a3, 1551
                  nop
                  srli         a3, a6, 16
                  andi         s2, s3, -379
                  srai         ra, tp, 11
                  sub          s10, a6, s5
                  srai         a1, t0, 6
                  nop
                  sra          a3, a7, s11
                  slt          t5, s10, s0
                  and          t5, s6, a5
                  slt          t6, zero, a3
                  slli         s6, s0, 24
                  srli         s2, t5, 17
                  slt          sp, s8, a7
                  xori         s3, s4, 1825
                  ori          a4, ra, -1071
                  sra          s7, ra, sp
                  andi         s9, a7, -831
                  nop
                  add          a3, a2, s2
                  sll          s2, t3, s10
                  srli         sp, t0, 24
                  add          s7, t3, t5
                  addi         s0, a7, 769
                  sll          zero, t5, t5
                  ori          sp, a7, 1778
                  xor          s11, s11, gp
                  xori         s4, s0, 525
                  and          s0, s11, s9
                  or           s9, gp, t0
                  xori         s0, gp, -849
                  sltu         t3, t3, ra
                  ori          s4, tp, -801
                  ori          s11, sp, -1282
                  xor          a6, s11, t4
                  sltu         a4, ra, t5
                  sll          zero, s10, a0
                  and          zero, a5, t2
                  andi         gp, s4, -808
                  sra          a4, s7, s2
                  or           sp, t5, zero
                  srai         a5, s3, 19
                  srl          t4, t1, t1
                  add          s3, t4, s11
                  slti         a3, s6, -116
                  or           a4, s8, s4
                  nop
                  or           gp, gp, t6
                  xori         zero, t1, 570
                  srli         a7, t2, 28
                  lui          s6, 51790
                  sltu         s9, a5, t6
                  srl          a3, sp, a5
                  slli         s2, ra, 31
                  srai         s2, a6, 14
                  or           zero, s3, t0
                  nop
                  add          a3, s8, a6
                  slti         sp, s2, -1107
                  auipc        a4, 922831
                  srl          s3, a1, s1
                  slti         a5, a6, 897
                  sra          t0, a4, s7
                  xor          t0, s0, t4
                  auipc        s7, 202150
                  and          a6, a0, s7
                  sll          s1, s7, s2
                  auipc        s6, 736691
                  sltiu        s4, t6, -364
                  srl          s0, t2, a0
                  sub          s6, a4, t3
                  xor          sp, s8, s10
                  add          s3, a4, s6
                  sra          t0, a6, s8
                  add          sp, s6, a0
                  ori          s4, s5, -689
                  srli         t3, a0, 29
                  sll          s6, zero, t1
                  nop
                  nop
                  addi         a4, s11, 1755
                  sra          s11, s9, gp
                  srai         a7, s8, 28
                  add          zero, s1, sp
                  ori          s10, t2, 352
                  or           t5, sp, a3
                  lui          s9, 324119
                  sra          a5, t2, sp
                  xori         a3, s8, 1220
                  sltu         a5, s4, s6
                  auipc        s2, 950034
                  xor          zero, s9, tp
                  slt          a5, s9, s10
                  srai         s10, a4, 18
                  srli         s2, s5, 0
                  xor          s2, a0, s1
                  sll          ra, s1, gp
                  xori         t0, a3, 526
                  srl          a3, t0, ra
                  sub          s5, a7, a4
                  lui          a5, 606313
                  andi         t0, s11, 737
                  addi         s5, t4, -940
                  nop
                  slti         a2, a3, -1072
                  and          t6, t2, a4
                  slt          t5, a4, s2
                  sltiu        a6, ra, -1399
                  srl          s11, s6, s10
                  xori         s6, s5, 387
                  srai         t3, t1, 26
                  slt          a7, a0, s0
                  and          s5, t2, tp
                  xor          t0, s10, zero
                  sll          s6, a5, a0
                  lui          s9, 783485
                  auipc        sp, 292896
                  srai         a7, a3, 28
                  sll          a5, tp, t2
                  srl          t3, t3, s3
                  sltu         ra, s8, zero
                  andi         s9, t5, -597
                  slt          sp, t1, t6
                  ori          s10, a7, -1357
                  slli         t6, sp, 30
                  slti         tp, a7, -625
                  xori         a1, s11, 347
                  xor          s8, t2, s0
                  sll          zero, t1, tp
                  auipc        s6, 606986
                  xor          s7, a5, s0
                  xor          t0, t2, a7
                  sll          a2, s10, s0
                  srai         s2, a2, 31
                  slt          t5, a2, t3
                  sltu         a2, a2, a0
                  srai         t0, s6, 21
                  auipc        sp, 1039332
                  sub          a7, t6, a5
                  srl          a1, s3, s11
                  sra          s2, t0, s0
                  xor          s6, s7, a7
                  addi         s7, a5, -2042
                  sltiu        s2, zero, -1581
                  sub          t6, a1, s9
                  sra          a5, t4, t3
                  andi         a4, s6, -1592
                  sll          s3, a3, zero
                  lui          t0, 1044726
                  or           s11, s7, s11
                  srli         s7, s10, 22
                  srl          t4, a4, t1
                  and          s1, s7, t6
                  andi         sp, s11, 1866
                  and          a5, a4, s9
                  addi         s8, ra, -1241
                  sltu         zero, s9, s7
                  xori         a1, zero, -1704
                  sltiu        a7, s2, 88
                  sra          t0, s10, s2
                  sra          s2, a3, zero
                  slt          sp, zero, s10
                  nop
                  addi         s4, s9, 1639
                  srli         s5, s10, 17
                  sll          s9, s9, s9
                  andi         a4, s6, -2029
                  nop
                  ori          s10, t3, -456
                  addi         s6, ra, 1338
                  sll          s5, a6, t2
                  slt          sp, t0, s2
                  andi         s1, s5, 1945
                  addi         a2, a1, 892
                  srli         s8, t4, 6
                  slli         s7, s5, 21
                  slt          a2, a7, s6
                  sll          s8, s3, t3
                  xori         a4, zero, 1671
                  xor          s11, s9, t0
                  add          a3, t6, s10
                  and          zero, s7, s5
                  sub          s5, a7, t3
                  srl          sp, gp, t0
                  sra          t0, a2, s4
                  sra          zero, s11, s5
                  sub          tp, s5, t2
                  srli         a6, s1, 25
                  xor          s5, tp, s10
                  sltu         sp, zero, s6
                  slti         s9, s3, 1951
                  xori         s4, t1, -951
                  sltu         a7, a4, a7
                  xori         t3, s9, 1886
                  lui          s7, 606463
                  slt          a5, zero, t3
                  xor          tp, ra, s8
                  sll          s11, t2, t5
                  add          t0, t0, s1
                  sltu         a7, s4, s2
                  sltu         s1, a5, s10
                  sra          s5, s3, t0
                  addi         s2, a5, 1964
                  sll          t5, a0, s0
                  addi         t6, a5, 743
                  xor          zero, s11, s2
                  add          tp, t6, s4
                  and          s0, s2, s11
                  add          t5, s1, a2
                  srai         s1, s10, 28
                  xor          zero, s1, a0
                  ori          t0, a3, -1927
                  xori         s3, a3, 1117
                  sll          s11, ra, t0
                  slti         ra, s0, 1478
                  addi         sp, s4, 1186
                  or           s3, s5, t6
                  sub          s7, t5, t1
                  and          a2, tp, t3
                  sll          s11, s4, s1
                  andi         t3, t4, 855
                  sltu         t5, s11, a6
                  or           t0, s9, gp
                  and          a2, t0, s3
                  or           s6, t4, zero
                  sltiu        s5, tp, -107
                  xori         ra, a4, 145
                  slti         sp, t2, -1972
                  xor          s6, s10, a3
                  slli         tp, s1, 23
                  slt          a3, s6, a5
                  nop
                  sltu         gp, a6, s6
                  lui          sp, 998078
                  slli         a2, t2, 9
                  auipc        s8, 190752
                  slt          s11, s10, s4
                  slti         s2, tp, 768
                  sub          s1, s10, s8
                  add          t5, tp, a2
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_34
                  li           a5, 0x35add83f
                  li           s10, 0xffffffff
                  li           tp, 0x0
                  li           s2, 0x5c88a88e
                  li           s11, 0x80000000
                  li           sp, 0x0
                  li           s7, 0xd56c344c
                  li           t3, 0xffffffff
                  li           a4, 0x0
                  lui          sp, 777068
                  auipc        tp, 368498
                  add          t3, t3, s7
                  add          a4, tp, s2
                  sub          s2, t3, s2
                  lui          ra, 997312
                  auipc        a4, 543434
                  addi         s11, s7, -676
                  sub          ra, s10, a5
                  sub          t3, a5, t3
                  nop
                  add          a5, ra, sp
                  nop
                  auipc        t3, 454469
                  addi         s10, t3, 589
                  lui          s10, 526143
                  add          s10, tp, s7
                  add          a4, sp, s10
                  auipc        t3, 315283
                  sub          ra, ra, sp
                  nop
                  addi         t3, s11, 1951 #end riscv_int_numeric_corner_stream_34
                  slti         tp, t1, -1447
                  sra          s1, t3, a6
                  and          zero, s2, s11
                  andi         a5, a0, 802
                  andi         s10, zero, 1207
                  addi         s0, t6, 619
                  sltiu        gp, s3, 554
                  lui          t4, 688311
                  srli         sp, s7, 15
                  addi         s10, t4, -1584
                  srli         ra, s6, 6
                  xor          sp, a0, ra
                  and          t0, s4, s2
                  xori         s6, a6, 1928
                  ori          t6, s10, 1392
                  slti         s2, a4, 1545
                  ori          a3, a2, -527
                  sltu         a4, a1, t2
                  xor          tp, s0, a5
                  ori          s9, s1, -472
                  andi         s6, s5, -256
                  addi         t3, s1, 748
                  srl          zero, a5, a5
                  sub          t3, a0, t4
                  xor          zero, s11, t6
                  and          t5, s2, tp
                  sll          s9, s6, gp
                  ori          gp, a1, 1681
                  srai         s4, sp, 17
                  sll          a3, ra, a3
                  andi         a1, s6, -1277
                  slli         a5, a1, 30
                  sltiu        t3, a2, 436
                  srai         tp, tp, 30
                  addi         s7, a5, 2027
                  nop
                  sub          s4, gp, a2
                  xor          a7, t6, tp
                  sra          s3, a0, t2
                  or           s1, a6, s3
                  srai         s2, s10, 28
                  slt          t5, t5, a5
                  slti         s8, a1, 834
                  auipc        s6, 739444
                  nop
                  slt          sp, t5, s10
                  sltu         t6, s7, s8
                  addi         s2, ra, 529
                  lui          gp, 807314
                  lui          s4, 236228
                  sltu         s0, s0, tp
                  slti         tp, s10, -305
                  sll          a2, ra, s10
                  ori          zero, s8, -1722
                  lui          s2, 488839
                  xori         a1, s8, 1437
                  add          s10, t5, s10
                  sltiu        zero, ra, -1932
                  auipc        t4, 339598
                  xori         a4, s7, -1727
                  add          t0, sp, s9
                  srl          s10, t0, t6
                  sll          ra, s8, s0
                  auipc        s6, 946442
                  slli         a5, a1, 8
                  andi         s3, t0, -322
                  sltu         s10, tp, tp
                  sll          s7, t4, a1
                  slt          a1, t5, ra
                  srli         zero, s8, 1
                  sltiu        s1, s6, 964
                  or           t5, ra, s9
                  srli         a2, s6, 5
                  slli         s10, a7, 24
                  slli         a4, a0, 1
                  sll          s11, s3, t0
                  or           s2, t6, gp
                  xori         a7, t2, -79
                  srai         s5, ra, 13
                  sltiu        s5, a1, 202
                  sub          s5, s5, s7
                  slti         gp, a6, -735
                  nop
                  slli         a3, a3, 12
                  slti         zero, t3, -1197
                  xor          t3, a6, s4
                  auipc        s3, 712470
                  slti         s8, t6, -1959
                  or           a5, s11, zero
                  ori          a4, s2, -1419
                  sub          a2, sp, t5
                  add          a1, s5, a1
                  or           s1, t2, a6
                  xor          s7, s6, a2
                  xor          s9, a5, ra
                  srli         a1, s7, 6
                  auipc        a6, 474244
                  sra          a3, a6, tp
                  or           s0, s4, s8
                  auipc        sp, 681083
                  and          s9, s9, a4
                  sltu         s8, a2, a0
                  or           a1, s9, a4
                  slti         t3, a2, 1229
                  lui          s4, 683320
                  add          a4, s9, a3
                  slli         t5, s3, 25
                  slt          a4, ra, a7
                  slti         s1, t4, 174
                  sltiu        a6, a7, 1231
                  slti         a1, a2, 1049
                  andi         a6, a2, 726
                  lui          gp, 1031890
                  sltiu        sp, s1, -340
                  srl          a5, t0, sp
                  slt          t3, s1, t5
                  sra          s0, a3, s8
                  sra          a7, a0, t2
                  ori          s7, a2, -916
                  xori         s6, s11, -365
                  addi         s11, t6, 426
                  srli         s2, a4, 3
                  slti         a1, s2, -1013
                  slt          s11, a6, s7
                  add          s9, t3, a0
                  xori         a2, s8, -112
                  or           s7, t2, s4
                  andi         s11, gp, 179
                  and          t0, t6, s1
                  andi         tp, gp, 929
                  slt          sp, s9, a3
                  srli         s3, a2, 3
                  slt          s0, a5, t1
                  xor          a7, s1, t0
                  slt          s11, s3, s0
                  ori          gp, s6, 242
                  add          s11, s4, s8
                  sltiu        s0, s0, 1108
                  add          ra, ra, gp
                  sltiu        sp, s11, -1574
                  andi         s8, a1, -20
                  xor          s5, a0, a0
                  sub          s6, s8, a0
                  slti         a4, s1, 721
                  slti         s4, s7, -1027
                  sra          a1, s10, a1
                  slt          t6, a2, zero
                  srl          a3, s7, zero
                  sltiu        sp, a0, -232
                  ori          a2, a1, 587
                  nop
                  addi         s1, a6, 1689
                  addi         tp, t4, -66
                  sll          s3, a1, s2
                  slt          s7, gp, s7
                  sra          s3, t2, t1
                  auipc        s8, 920941
                  and          s7, ra, s0
                  sll          t3, a7, t5
                  auipc        s10, 753191
                  sltu         t6, sp, s10
                  sll          s0, a4, a6
                  sub          tp, a3, t5
                  lui          a3, 803909
                  srai         t0, s9, 13
                  srl          a5, s9, a5
                  xori         a3, gp, -825
                  srli         sp, t3, 12
                  add          s7, t3, s2
                  slli         sp, a4, 28
                  lui          t5, 664650
                  slti         gp, s0, 1684
                  ori          a2, sp, -656
                  sltiu        t3, a1, -1870
                  sll          s10, s6, s9
                  srl          tp, s0, a4
                  slti         t4, s11, -695
                  slli         a6, s5, 23
                  addi         a2, t2, -531
                  ori          ra, zero, -1557
                  addi         t0, t0, 1450
                  slti         gp, a4, -413
                  xori         a4, a2, 1383
                  srai         s5, a4, 16
                  slt          a4, tp, a3
                  xor          s8, t2, a1
                  and          t3, a6, t2
                  auipc        s5, 513018
                  slti         s8, s2, -1410
                  xor          s7, a5, t5
                  xori         s5, gp, 1537
                  srli         s10, s7, 27
                  sra          a4, t6, a3
                  addi         a4, tp, -1966
                  lui          s6, 729085
                  slli         sp, s0, 17
                  srai         sp, gp, 11
                  slli         t0, gp, 14
                  sltu         t4, s7, a3
                  xori         a3, s8, -121
                  lui          a3, 886790
                  addi         a3, sp, 715
                  srli         s3, t5, 15
                  srli         s0, a0, 1
                  sub          a4, a6, a5
                  nop
                  sub          t0, a4, a1
                  nop
                  and          sp, s6, a1
                  slt          zero, s7, s1
                  srli         zero, a0, 24
                  slt          s2, s1, gp
                  sll          zero, s9, s5
                  nop
                  auipc        t5, 102225
                  sltu         a1, t4, a0
                  xori         t0, s8, -1725
                  sub          s4, t2, a5
                  xor          t6, s2, ra
                  sub          t5, a4, a0
                  and          a6, s7, s4
                  ori          s7, t1, 1416
                  srl          s0, t4, s10
                  and          s3, t3, a6
                  or           t5, s7, gp
                  add          s5, t6, s8
                  srli         t3, s8, 18
                  auipc        tp, 821368
                  xor          sp, a7, a0
                  add          t5, s5, t1
                  ori          a6, zero, 629
                  andi         a2, a6, 330
                  add          a1, gp, a5
                  nop
                  addi         a6, s1, 187
                  xori         a5, t4, 372
                  ori          a2, a2, 1983
                  slti         s1, gp, 1093
                  xor          a3, a1, s6
                  sra          a2, t4, s10
                  slti         t0, s7, -185
                  slt          a5, t3, sp
                  addi         sp, ra, -283
                  sltu         a6, s11, s3
                  and          s0, ra, s1
                  srai         s11, s2, 16
                  nop
                  add          a1, s11, t6
                  slt          a5, a3, t1
                  sra          a2, t3, s6
                  auipc        a4, 174170
                  ori          s7, a2, -915
                  add          t3, gp, s5
                  sll          s4, s5, a7
                  and          t0, t4, t0
                  slli         s3, s9, 17
                  srl          a6, a3, a0
                  xor          s4, s10, t3
                  auipc        a7, 898562
                  auipc        s8, 850358
                  ori          s0, s11, -251
                  auipc        s6, 473165
                  slt          s7, s8, a2
                  srl          s5, zero, a7
                  addi         sp, a6, -1731
                  or           a1, t6, t0
                  sub          s2, t2, t0
                  andi         s10, a4, -1238
                  slti         a4, a4, 1993
                  sra          s11, s3, s1
                  ori          gp, ra, 1243
                  ori          gp, a1, -1691
                  slli         t0, a7, 7
                  sub          tp, gp, s7
                  ori          s3, a1, 1608
                  xor          t4, t5, a3
                  and          a4, t0, gp
                  nop
                  slli         a6, a6, 11
                  lui          s10, 53702
                  slli         t0, s10, 16
                  nop
                  and          a6, t2, sp
                  sll          s2, s9, tp
                  ori          a6, ra, 1607
                  slli         s6, t2, 2
                  and          zero, s11, a2
                  sra          t4, s0, a4
                  lui          s1, 945574
                  srl          zero, a4, a6
                  andi         t0, a6, -94
                  srl          a6, gp, ra
                  ori          t3, s5, 96
                  add          s0, tp, t3
                  ori          s2, ra, 666
                  addi         t5, t0, 1312
                  sltu         s1, ra, a3
                  sub          s3, s8, t1
                  xor          ra, s3, t4
                  add          s1, gp, a6
                  addi         s4, a2, -1915
                  auipc        s8, 524326
                  and          sp, s10, t3
                  xor          s3, s11, zero
                  slt          s1, a3, t5
                  add          a6, a6, s5
                  sltiu        s9, t2, -560
                  sltu         s8, s5, gp
                  xori         s2, s2, 749
                  sub          t3, t6, a6
                  andi         s9, s5, -1967
                  andi         t4, t6, 890
                  sltu         t6, t2, t4
                  slt          s8, tp, s4
                  addi         s0, s1, -897
                  srl          s3, s7, s6
                  ori          a7, a0, -264
                  sra          gp, ra, t5
                  sra          s2, sp, s0
                  andi         s8, a4, 991
                  sra          s1, s1, s4
                  srl          a2, gp, tp
                  sra          s4, a1, t1
                  sll          a6, tp, s1
                  addi         a1, a3, 1535
                  sltiu        s3, a1, -977
                  auipc        a1, 750656
                  xor          gp, t6, a3
                  srl          a1, ra, t6
                  sltiu        a7, a0, -1249
                  sltu         a6, a4, a4
                  auipc        a5, 785064
                  srai         tp, a6, 3
                  sltiu        s9, t6, -69
                  sra          a1, a6, s11
                  addi         t0, a0, -916
                  slli         t3, t0, 17
                  srai         gp, a2, 20
                  srl          t6, a7, s2
                  and          gp, ra, a1
                  ori          s3, t0, -87
                  addi         s7, s1, 1752
                  nop
                  sltiu        tp, s4, -1144
                  srl          t3, t6, a1
                  sltiu        s9, t1, 531
                  slt          s10, a7, ra
                  sra          tp, s6, a1
                  sll          s4, a3, a1
                  and          t4, tp, a4
                  xor          a4, a0, s6
                  sra          a1, t1, s7
                  srai         s3, t0, 12
                  sub          sp, t6, s10
                  lui          s3, 69507
                  addi         a5, s10, 264
                  andi         tp, s6, -1951
                  xor          a1, t3, s8
                  sltu         ra, s2, t2
                  sltu         s2, t6, t1
                  add          s3, gp, zero
                  srl          t3, t4, t0
                  add          a3, t5, a0
                  nop
                  srl          ra, s6, ra
                  and          t3, t6, a7
                  andi         s0, t3, 1162
                  auipc        sp, 785429
                  add          s10, a6, a7
                  sra          zero, s8, s0
                  auipc        t0, 713456
                  sra          s10, t1, t3
                  addi         s10, s5, 2035
                  sra          s7, a1, zero
                  and          a2, a5, s4
                  andi         a3, s2, -645
                  addi         a1, s3, 1788
                  slti         t3, s9, -1348
                  xori         s3, s5, -1644
                  add          t5, t2, s2
                  xori         t0, a5, 912
                  slli         ra, s7, 20
                  nop
                  sltiu        sp, s4, 324
                  andi         a4, zero, 349
                  sra          t3, a2, a6
                  and          s2, sp, t6
                  sra          t6, s11, zero
                  srli         s10, a0, 7
                  sub          t0, a4, t6
                  nop
                  srl          a4, s5, t4
                  srai         s5, gp, 13
                  nop
                  andi         t0, s10, 11
                  xori         t5, a7, 756
                  add          tp, t5, gp
                  sll          s8, s9, s6
                  addi         s3, t2, -1434
                  slli         t6, s3, 26
                  srli         s8, s11, 20
                  sltu         tp, s5, s6
                  slli         a6, s3, 27
                  lui          a1, 372341
                  sra          s2, s6, a3
                  or           tp, s3, s6
                  xor          t5, t0, s5
                  slt          t0, a6, zero
                  auipc        s4, 501884
                  sltu         s10, s3, s2
                  xor          t4, s2, s8
                  auipc        s4, 118644
                  nop
                  auipc        a5, 875384
                  add          zero, s3, s4
                  sll          t0, s9, tp
                  addi         a2, s7, 744
                  slli         s8, t5, 5
                  ori          s6, s9, 263
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s2, 0x3d2ea265
                  li           a7, 0xf1fe2a83
                  li           a4, 0x80000000
                  li           s3, 0xffffffff
                  li           gp, 0xffffffff
                  li           s11, 0x80000000
                  li           s10, 0x80000000
                  li           t6, 0x80000000
                  li           a1, 0x0
                  sub          t6, s2, t5
                  add          a7, a4, s10
                  auipc        a7, 116493
                  addi         a4, a1, 391
                  auipc        t6, 698369
                  nop
                  lui          s10, 785930
                  lui          a4, 717324
                  sub          s2, s11, s2
                  addi         t5, s10, 1378
                  nop
                  sub          a1, t6, s2
                  sub          t6, a4, s11
                  sub          a4, a1, t6
                  auipc        s10, 423932
                  addi         a4, t5, -472
                  addi         a1, a1, 1055
                  sub          a1, s10, t6
                  auipc        a4, 466438
                  add          a4, s2, a1 #end riscv_int_numeric_corner_stream_8
                  slli         tp, a1, 22
                  addi         a3, gp, -1618
                  nop
                  sltu         zero, a6, tp
                  and          t0, s8, s3
                  slli         ra, s8, 21
                  slti         s4, a5, 331
                  nop
                  ori          s2, a7, -554
                  slli         s9, s7, 20
                  sra          s4, a1, s4
                  sra          tp, t4, s5
                  andi         s7, a2, 675
                  nop
                  slti         s1, s9, 506
                  and          a3, a0, s9
                  sll          t0, ra, a3
                  xor          t4, a3, s10
                  lui          t4, 290694
                  ori          a5, s7, 490
                  sltu         a1, a3, s6
                  lui          s4, 60371
                  andi         a3, s9, 1392
                  srl          s1, s1, t6
                  sra          s6, a2, a7
                  lui          s1, 413718
                  lui          s2, 778816
                  sltu         a1, s11, s1
                  add          s5, s5, s8
                  nop
                  sltiu        tp, ra, -1370
                  xori         s9, a5, -1718
                  srl          s6, s11, gp
                  sll          s7, a4, a7
                  and          s6, t4, a6
                  xori         gp, t0, 247
                  addi         s6, a6, 894
                  sll          a7, s11, s2
                  srli         s6, t0, 18
                  lui          a3, 860065
                  sub          a1, t5, s4
                  or           t0, s11, t6
                  xori         tp, t6, -1717
                  and          s3, a1, gp
                  auipc        a1, 599095
                  sll          s6, a2, a5
                  and          s7, s11, s4
                  srai         sp, zero, 9
                  sltu         s6, s4, s5
                  srli         s7, s10, 23
                  slt          s8, s5, a1
                  sltu         s0, a4, a1
                  auipc        a6, 404861
                  sub          s6, a3, t1
                  slt          sp, s8, zero
                  sra          a1, sp, a6
                  and          s9, t5, t6
                  xori         a2, a3, 1551
                  and          s11, t6, s3
                  sll          s6, t1, s11
                  slt          t4, t1, s4
                  slli         s7, s5, 31
                  lui          s3, 815256
                  sll          a3, ra, t2
                  srl          gp, a4, a2
                  srli         gp, s4, 1
                  sltu         zero, s7, t3
                  nop
                  sltu         s1, t1, t0
                  andi         t6, t3, -1622
                  sll          a4, zero, a6
                  ori          s5, t2, 635
                  auipc        s7, 986830
                  xor          t0, s2, t6
                  andi         s2, t6, 1469
                  sll          t6, s2, gp
                  sltiu        a4, a3, -504
                  srli         gp, t0, 20
                  lui          s0, 355507
                  srl          tp, s10, s10
                  sltu         a1, a1, a0
                  and          t0, gp, t6
                  addi         zero, zero, -674
                  sub          t0, t2, a4
                  sltiu        s11, s5, -1658
                  nop
                  slt          s6, sp, a1
                  add          a3, t6, ra
                  addi         a7, t6, 793
                  nop
                  andi         s4, t3, -1565
                  xor          a1, t5, s5
                  andi         t5, tp, -1482
                  ori          a2, a5, -447
                  slli         a2, a1, 8
                  sltiu        zero, t1, 1799
                  add          s7, a6, t4
                  or           s11, s1, a1
                  lui          zero, 156414
                  sra          gp, gp, s6
                  and          s11, s0, s8
                  slli         s8, s10, 5
                  and          a7, a0, t4
                  sub          s0, a7, t5
                  slli         ra, a6, 17
                  andi         s1, gp, -702
                  lui          a1, 117760
                  slli         s6, t1, 9
                  sltu         a1, t4, a1
                  srli         zero, a0, 11
                  srai         a5, s8, 6
                  lui          s9, 732995
                  auipc        sp, 699470
                  srl          a2, s5, ra
                  srli         tp, s1, 8
                  xor          t3, ra, s8
                  slti         a5, a7, 1961
                  srl          s0, s2, tp
                  ori          t4, t4, 414
                  andi         zero, t1, -1167
                  and          t0, s9, gp
                  slti         ra, a7, -815
                  srai         tp, s6, 9
                  sltiu        s9, s2, -765
                  add          a6, ra, a6
                  or           tp, a5, s2
                  sub          ra, t2, s2
                  srai         s4, a2, 27
                  nop
                  slti         s6, s0, 164
                  or           s0, a4, a5
                  lui          a5, 940229
                  addi         t6, t2, -409
                  slt          s7, s9, s8
                  xor          sp, s1, ra
                  srl          s10, s1, a7
                  slt          a5, gp, s1
                  xor          t5, s2, a0
                  nop
                  slti         a1, tp, 1174
                  slli         tp, zero, 27
                  xor          s0, t2, a1
                  nop
                  sra          s3, s9, t2
                  sub          a3, s11, a0
                  andi         t5, s0, 1073
                  sltu         a7, ra, a5
                  nop
                  xori         s4, s6, -387
                  andi         s0, s4, 1174
                  sltiu        tp, a4, -77
                  sll          a1, s9, t1
                  addi         a5, s7, 1005
                  andi         s5, s3, 1535
                  addi         a4, s5, 372
                  ori          sp, s9, 1279
                  and          t3, s1, ra
                  xori         a3, t6, 190
                  lui          gp, 1043077
                  slt          a3, a0, a4
                  slli         s5, t4, 17
                  slti         s6, t3, 255
                  slli         a3, t6, 11
                  srl          s7, s9, ra
                  andi         sp, s7, -278
                  auipc        sp, 576572
                  xori         a7, s0, -1326
                  sub          s1, s2, gp
                  slt          t6, gp, s4
                  xori         t3, zero, 810
                  add          a3, s6, a3
                  add          t4, t4, a7
                  lui          s9, 234550
                  lui          s1, 717097
                  srl          sp, t2, a6
                  slli         zero, s3, 4
                  xor          s0, s6, a4
                  sub          a5, a6, t0
                  sltiu        s7, a6, -221
                  slti         s0, s5, -688
                  sltiu        s3, t1, 51
                  srai         s5, tp, 22
                  andi         gp, a6, 556
                  ori          s0, a7, -2033
                  srai         s10, s6, 9
                  andi         a7, s8, 460
                  slt          t5, a4, s11
                  auipc        a2, 173467
                  sll          a4, a5, t6
                  slli         sp, s7, 30
                  xori         sp, s7, 1614
                  add          t0, ra, s6
                  nop
                  add          s4, a7, zero
                  add          a3, t0, t0
                  or           t4, sp, s10
                  or           a6, a6, a7
                  auipc        s1, 874490
                  slti         t0, s6, -1000
                  add          sp, s4, s5
                  nop
                  lui          sp, 666103
                  auipc        gp, 500794
                  add          a7, s5, t4
                  or           s6, s8, t5
                  slti         a5, a2, -2012
                  sra          sp, s9, t1
                  auipc        a3, 270877
                  add          s2, gp, a4
                  slli         a4, a1, 19
                  sra          t0, a4, a6
                  andi         s7, s0, -1460
                  and          t4, gp, s9
                  srai         ra, s10, 5
                  ori          s2, s9, 278
                  sltu         a4, t1, s2
                  sub          t6, a1, s11
                  slt          s3, ra, s0
                  sub          a1, s7, s4
                  sra          s9, gp, t0
                  xor          s8, s8, s11
                  xor          s8, a3, s1
                  slt          a1, t5, a5
                  sub          s2, ra, a5
                  or           tp, s2, s4
                  srli         s3, s4, 22
                  slt          s7, s11, s9
                  or           s9, a1, a5
                  srli         t4, s1, 9
                  auipc        s7, 34929
                  srai         s5, s1, 11
                  add          s7, t5, t6
                  andi         a6, s7, 141
                  ori          t6, s10, 1518
                  xor          s11, s10, tp
                  slli         s1, s10, 19
                  auipc        a2, 18328
                  srli         s6, t2, 25
                  sll          s11, s10, gp
                  andi         tp, tp, 740
                  srli         s1, t2, 31
                  xori         gp, s6, 1926
                  srli         s9, a3, 31
                  sll          t5, t0, s2
                  xor          gp, s3, t3
                  addi         t3, t1, -1424
                  add          t4, s1, a7
                  ori          s2, t3, -1843
                  sub          zero, a2, a7
                  srai         s0, t5, 4
                  and          a1, s5, a1
                  slli         s11, t3, 30
                  add          sp, a4, a6
                  sltu         s8, t1, zero
                  auipc        a7, 997079
                  slti         s9, s4, -1800
                  add          t5, t1, s11
                  addi         s10, a2, -1047
                  sra          t6, ra, zero
                  sll          s2, zero, s0
                  addi         ra, s9, -1433
                  sltu         gp, t1, s7
                  andi         s0, s3, 202
                  sra          s2, s10, s1
                  sltiu        s7, a2, 120
                  xori         s1, a2, 1048
                  sll          s8, t6, a5
                  slt          s2, a5, s2
                  andi         a7, t2, -223
                  nop
                  sltiu        s10, s4, 1232
                  nop
                  sll          a3, s5, t0
                  addi         s1, t4, 1186
                  sll          a6, s2, t2
                  nop
                  sll          a3, t6, s5
                  slt          a6, s5, a5
                  and          t4, a6, t3
                  sra          a7, t6, gp
                  xor          t5, t2, a4
                  lui          s7, 741828
                  slti         sp, zero, -894
                  slli         s8, t0, 1
                  srai         t3, s3, 14
                  slli         a5, s5, 17
                  sll          a6, a0, t5
                  sll          t0, a6, t6
                  lui          s1, 999657
                  sltiu        tp, a2, -1612
                  xor          ra, s0, s2
                  sltu         gp, s0, t1
                  or           s9, s2, t2
                  srai         a7, t1, 15
                  sltiu        s11, s4, -1945
                  slli         s6, s5, 12
                  lui          a6, 691145
                  or           a4, s11, s9
                  xori         s1, a5, 1390
                  xori         t5, a5, 779
                  srli         s5, s7, 18
                  add          a4, tp, s1
                  or           sp, a6, tp
                  srl          a1, a0, a4
                  srl          a4, tp, ra
                  or           a1, s9, t5
                  slt          s6, t6, gp
                  sll          zero, tp, a4
                  srl          s1, a6, a0
                  sltu         s8, a5, tp
                  srai         a4, a6, 10
                  slt          ra, t6, s10
                  srl          t0, ra, t4
                  srli         a1, s4, 11
                  and          a3, sp, t3
                  sll          s3, s6, s5
                  lui          s8, 555844
                  ori          s10, t1, 142
                  sra          s8, zero, ra
                  slti         t0, a0, -1004
                  srl          a3, t1, sp
                  srli         a4, s5, 3
                  lui          s8, 727519
                  addi         a5, t0, 919
                  sub          sp, gp, s3
                  and          gp, s9, s4
                  slt          zero, a7, a1
                  auipc        zero, 39319
                  xori         a1, s9, 1662
                  srl          a6, s7, t6
                  slti         s1, t4, -9
                  slt          s5, s4, a7
                  slti         s0, s11, 216
                  or           s2, zero, s9
                  nop
                  slti         s7, a1, -289
                  sltiu        s7, a7, 453
                  sltu         t4, zero, s11
                  sub          a1, s5, s3
                  nop
                  sltu         a6, tp, s9
                  sltu         a3, t5, s6
                  slt          t6, a1, t0
                  srai         a2, s9, 24
                  or           s10, t1, t2
                  sub          s5, a7, sp
                  sltu         s0, s5, a4
                  sltu         a2, s9, a0
                  add          s7, a0, s2
                  auipc        s7, 949213
                  and          s7, t4, s7
                  sra          t0, a3, a2
                  sltu         s0, s5, a1
                  add          s8, a4, t0
                  xor          s3, s10, ra
                  andi         s5, s3, 1047
                  srl          gp, a6, s3
                  addi         s2, s5, 846
                  srli         s0, t4, 18
                  slt          t4, a0, t4
                  sltiu        sp, sp, 1779
                  nop
                  sra          a4, s2, s9
                  ori          a2, s4, 1807
                  slli         t3, a3, 30
                  srai         s11, a7, 21
                  sub          ra, s5, s4
                  add          s10, s1, s4
                  xor          t0, s3, s7
                  srl          s5, t3, s5
                  xori         a2, s11, -1493
                  sll          ra, a3, tp
                  srai         s6, s9, 5
                  andi         zero, s6, -2021
                  xori         a5, s7, -1766
                  xori         t3, a2, 1840
                  sub          s11, a7, s11
                  srli         a3, zero, 1
                  sltiu        s3, a0, -1057
                  xor          a5, s8, zero
                  xori         a1, s9, -368
                  xori         a3, a6, -1778
                  sub          s10, s7, t0
                  xori         s6, t6, -624
                  nop
                  sub          tp, s2, t0
                  sra          t6, a4, tp
                  sll          s10, s0, s1
                  slti         s0, s2, 1437
                  add          a1, a3, a3
                  sra          a4, t3, a3
                  srai         s6, s11, 7
                  slt          a4, s0, a1
                  or           s0, s2, a5
                  srli         zero, s8, 3
                  sltiu        a1, t0, 1858
                  addi         s0, a2, -1823
                  slli         t0, s6, 7
                  sll          sp, t4, a1
                  sltiu        s0, a3, -968
                  add          sp, a5, s3
                  or           a5, s2, t3
                  ori          t6, s1, 1312
                  or           zero, s6, s11
                  auipc        a5, 318847
                  sltiu        s5, t3, 1926
                  auipc        a1, 562218
                  add          s9, s10, t5
                  sll          s5, tp, s1
                  slt          a3, t1, s10
                  sll          sp, sp, a7
                  slli         s8, t2, 14
                  and          s2, a0, a6
                  auipc        s4, 18724
                  add          ra, a1, t4
                  sltiu        t3, sp, -1037
                  slti         a1, t2, 179
                  andi         t6, tp, 1522
                  srli         s1, s8, 12
                  addi         s11, t0, -1940
                  xor          s4, t4, ra
                  xor          s11, a7, s6
                  xori         a5, s1, 562
                  addi         zero, s10, -722
                  slli         t0, s8, 0
                  add          t4, s2, s0
                  and          a6, a0, t5
                  sub          t6, s4, t6
                  ori          s3, tp, -65
                  andi         t5, t5, -1980
                  andi         a4, sp, 1666
                  sltiu        ra, s5, -921
                  and          a7, t1, a7
                  and          s3, s2, t0
                  or           t0, t5, a5
                  srli         s5, ra, 21
                  sltiu        s7, s8, -1731
                  slti         a5, a3, -1104
                  add          s11, a6, a6
                  sra          a2, a1, s0
                  srai         s5, a6, 11
                  sub          s4, a3, s5
                  or           s3, t6, a1
                  addi         s6, t2, 526
                  and          s3, t5, t4
                  auipc        t0, 780774
                  srli         s6, sp, 6
                  srli         s9, a1, 25
                  sltiu        a4, tp, -830
                  sub          t5, s4, a7
                  or           s2, gp, tp
                  sltiu        zero, s7, -1146
                  sra          t3, t5, sp
                  lui          a3, 50139
                  slt          a5, s10, s9
                  and          s3, s9, s6
                  slli         a1, a7, 2
                  nop
                  srai         s9, t4, 17
                  slt          t5, a5, t4
                  slli         s3, s4, 16
                  slti         s8, gp, -1252
                  add          s9, t5, t1
                  slli         a7, t3, 28
                  xori         t3, t0, -772
                  nop
                  and          sp, tp, zero
                  srai         a6, t4, 4
                  srli         zero, t4, 23
                  slt          a2, a4, t3
                  sltu         s9, a7, s5
                  slti         gp, t3, 1485
                  sll          s4, a6, s2
                  slti         sp, gp, 262
                  nop
                  or           gp, s3, s6
                  sll          s7, t5, a0
                  srl          t6, t4, s8
                  addi         s5, sp, -889
                  sltiu        s9, s9, 269
                  or           s5, s8, s10
                  sra          s6, a7, a6
                  xor          a4, ra, a7
                  sub          s8, a3, t0
                  lui          ra, 861268
                  addi         zero, s5, 1697
                  srl          t0, s4, a0
                  nop
                  sra          s2, t2, a5
                  xori         s4, s8, 487
                  slt          s1, t4, a4
                  sra          sp, a7, t3
                  sltiu        a5, s2, -2044
                  sra          s5, t2, t5
                  auipc        s11, 825215
                  and          t0, a4, a5
                  nop
                  srai         s2, sp, 6
                  sll          t0, s4, s5
                  or           t6, a5, s2
                  xor          s1, s0, a1
                  and          tp, s9, s5
                  srli         t4, s0, 10
                  sub          a2, s6, t2
                  or           a4, s8, a2
                  addi         a4, s9, 1973
                  and          a4, a4, s5
                  or           a4, s9, zero
                  sra          s2, t3, sp
                  srai         s4, a4, 28
                  xor          s10, s3, ra
                  slli         s1, a5, 4
                  nop
                  nop
                  sltu         a3, a1, t3
                  sltiu        t4, t6, 1750
                  slt          zero, s9, s4
                  nop
                  srli         gp, s7, 18
                  lui          a1, 493068
                  ori          ra, a0, 922
                  sub          s0, s10, s3
                  srl          a7, tp, a4
                  slli         a4, s5, 10
                  srl          s8, s8, t1
                  sra          s11, t4, a7
                  or           a4, s5, t0
                  sub          a6, ra, s9
                  ori          s6, t5, -903
                  or           s11, a7, sp
                  sltu         a5, s6, s8
                  srl          a6, t1, t1
                  or           s4, t3, s0
                  sra          a3, a2, a1
                  andi         sp, a7, -1389
                  xor          t6, a0, a3
                  and          s6, s11, s6
                  sll          a3, a3, s4
                  slti         t4, zero, -1047
                  nop
                  srl          a5, s11, s5
                  srli         s7, t0, 8
                  and          s6, a7, s6
                  sltiu        s9, s0, 1602
                  auipc        t0, 216365
                  ori          sp, a1, 1042
                  sra          t0, s1, t1
                  slli         a1, s11, 0
                  xor          a6, t4, tp
                  sub          s6, t5, a0
                  lui          ra, 596448
                  srli         t4, t5, 12
                  andi         a6, tp, 1369
                  and          tp, sp, s2
                  srai         t0, tp, 7
                  ori          s7, s2, -1264
                  or           s5, t0, s10
                  slt          s11, tp, ra
                  auipc        a4, 6640
                  srl          sp, t0, a7
                  xor          s10, gp, ra
                  nop
                  srli         sp, s3, 7
                  xor          a4, a2, a5
                  xori         ra, t2, 640
                  sub          t3, s2, t4
                  ori          t5, a7, -1297
                  nop
                  or           ra, a2, tp
                  ori          s8, s8, 394
                  srl          s4, a0, s1
                  sltu         t0, a0, ra
                  sltu         s7, sp, a0
                  and          a6, s11, s1
                  sltiu        a6, a7, 8
                  sltiu        a5, s3, -776
                  add          s8, s3, s10
                  sltu         a3, s1, s3
                  sltu         t0, t5, s8
                  sltu         s8, s9, s1
                  srl          a4, s3, s4
                  srai         s5, zero, 10
                  sub          s0, s3, s8
                  lui          sp, 478940
                  auipc        t4, 574876
                  add          a5, t5, s1
                  srai         sp, t2, 4
                  slti         a3, zero, -214
                  sll          s2, s3, s6
                  sll          s6, s8, s6
                  sra          t5, s5, s7
                  srli         s7, t4, 4
                  or           s10, t0, t4
                  ori          a3, t2, -1723
                  sltiu        s1, s4, 628
                  nop
                  or           t0, s10, t0
                  xor          zero, a4, s0
                  slti         s4, s6, -1529
                  sll          s10, t3, s10
                  or           a5, a5, a7
                  andi         ra, s7, -1552
                  ori          s0, t0, -879
                  add          s0, ra, a6
                  auipc        sp, 269497
                  or           s10, s11, t5
                  xori         a1, a0, 1276
                  sll          t0, s8, ra
                  sltu         s1, s5, a7
                  slt          a1, sp, a7
                  sll          s10, s4, a4
                  sltiu        s9, a1, -470
                  add          t3, s11, a1
                  xor          s7, t1, s8
                  srai         s5, t5, 9
                  andi         t6, a0, 1497
                  srl          s1, sp, a4
                  slti         s2, t4, 1075
                  andi         s9, gp, 308
                  srl          ra, ra, tp
                  and          t4, sp, s5
                  sub          tp, s1, a4
                  srai         s1, s5, 5
                  slt          s9, a4, gp
                  and          sp, t3, t3
                  sll          s7, t6, a1
                  xori         t0, zero, -1941
                  srai         zero, s2, 2
                  sll          s6, t5, a3
                  xori         s2, a2, -505
                  slli         a4, a2, 24
                  auipc        t4, 869413
                  lui          s10, 345072
                  xor          s6, ra, s4
                  sltu         tp, s1, a3
                  slli         s7, t5, 7
                  and          s8, s1, zero
                  srai         a5, a4, 17
                  slti         a5, s6, -1331
                  sltiu        s10, s4, 723
                  sra          a5, ra, t3
                  sltiu        zero, t0, -1981
                  nop
                  sltu         gp, a1, a0
                  and          a6, a6, t6
                  andi         a3, s7, -1907
                  andi         a1, s7, 1069
                  sra          tp, zero, t3
                  add          a1, a4, t1
                  sltiu        tp, ra, -2023
                  sub          s6, a2, a2
                  or           t6, a6, a4
                  sltiu        gp, s7, -1739
                  srl          s6, s10, s1
                  slt          t3, a4, t0
                  nop
                  slt          a2, a5, a3
                  srl          t5, s2, a4
                  sltu         s10, t0, zero
                  srai         a5, a4, 21
                  srli         zero, t1, 9
                  sltiu        t5, s10, 1072
                  and          a2, t3, tp
                  srli         s9, s7, 9
                  xori         a5, s5, 1116
                  xor          a3, gp, a3
                  sra          gp, gp, s6
                  auipc        t0, 247953
                  xor          s9, t5, t0
                  and          a5, s3, a5
                  srl          s1, a1, s3
                  sltiu        s7, t5, -1780
                  andi         a2, a3, -626
                  sll          s7, s9, s6
                  nop
                  xori         a7, s4, -1670
                  slti         s8, gp, -1013
                  andi         tp, a7, -1730
                  xori         s0, s3, 377
                  nop
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align           2
mtvec_handler:    
                  addi x6, x6, -4
                  sw  x10, (x6)
                  add x10, x6, zero
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x6, x10, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x20, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x20, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x20, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x20, x2, ecall_handler
                  li x2, 0x1
                  beq x20, x2, instr_fault_handler
                  li x2, 0x5
                  beq x20, x2, load_fault_handler
                  li x2, 0x7
                  beq x20, x2, store_fault_handler
                  li x2, 0xc
                  beq x20, x2, pt_fault_handler
                  li x2, 0xd
                  beq x20, x2, pt_fault_handler
                  li x2, 0xf
                  beq x20, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret

load_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret

store_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  add x6, x10, zero
                  lw  x10, (x6)
                  addi x6, x6, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
