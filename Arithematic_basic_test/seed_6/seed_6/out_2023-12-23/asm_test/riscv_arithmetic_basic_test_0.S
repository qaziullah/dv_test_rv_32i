.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  li x12, 0x0
                  csrw 0x304, x12 # MIE
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x8482d819
                  li x4, 0xf7b17cef
                  li x5, 0x6
                  li x6, 0x1
                  li x8, 0xf5e8290b
                  li x9, 0xc
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x7e72360c
                  li x16, 0xf2ebffe5
                  li x18, 0x0
                  li x19, 0x6
                  li x20, 0x13c5f12
                  li x21, 0x0
                  li x22, 0xe88396e1
                  li x23, 0x9
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf9f55553
                  li x31, 0xea4a46e4
                  la x17, user_stack_end
main:             li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a5, 0xffffffff
                  li           s9, 0x0
                  li           s5, 0x8eac0823
                  li           sp, 0x80000000
                  li           t6, 0x3143203e
                  li           t1, 0x80000000
                  li           s1, 0x883b46c9
                  li           s4, 0x80000000
                  li           a1, 0xf26b2075
                  addi         s9, a5, 1389
                  auipc        a5, 65303
                  add          s4, s1, t6
                  auipc        t5, 589429
                  add          s9, s9, t6
                  add          sp, s5, s4
                  lui          s5, 729935
                  auipc        a1, 549259
                  add          a1, t1, s5
                  addi         a1, s1, 1588
                  nop
                  addi         sp, t6, -1855
                  add          t6, a5, t1
                  add          s4, sp, t1
                  addi         t6, s5, -38
                  add          sp, a5, s5
                  addi         s9, t5, 552
                  add          s4, a5, t6
                  lui          a1, 309453
                  sub          s4, sp, s1
                  nop
                  add          s5, t5, s5
                  lui          a1, 626297
                  add          t5, t6, s5
                  add          sp, s4, t5
                  add          sp, sp, a5
                  nop
                  sub          s5, t1, s1
                  addi         a5, a1, 380
                  lui          s4, 57521 #end riscv_int_numeric_corner_stream_17
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s1, 0x0
                  li           s11, 0xdd152a7c
                  li           s3, 0x0
                  li           a3, 0x0
                  li           tp, 0x0
                  li           a0, 0x54902130
                  li           ra, 0x0
                  li           t3, 0x0
                  li           a2, 0x67db6d0a
                  sub          s3, t3, t1
                  add          s3, t1, t1
                  sub          t1, a0, a0
                  nop
                  auipc        a3, 879572
                  addi         t3, tp, 1413
                  sub          a0, ra, t1
                  addi         s3, t3, -1763
                  add          a3, s3, s1
                  lui          a3, 157383
                  nop
                  auipc        s3, 505800
                  lui          s11, 125213
                  add          ra, s11, ra
                  auipc        a0, 995239
                  nop
                  nop
                  sub          s3, t1, ra
                  lui          ra, 122171
                  add          a3, ra, tp
                  addi         s3, t3, 1013
                  sub          t3, tp, a3 #end riscv_int_numeric_corner_stream_14
                  li           a5, 0x1e4e018c #start riscv_int_numeric_corner_stream_5
                  li           sp, 0x0
                  li           a3, 0x80000000
                  li           s2, 0xffffffff
                  li           s5, 0x0
                  li           s8, 0x3cb95301
                  li           s1, 0x0
                  li           t3, 0xffffffff
                  li           s3, 0x0
                  li           a6, 0xdd72a4d9
                  auipc        s5, 675470
                  sub          s1, a3, a3
                  sub          s3, s5, s5
                  addi         s3, a3, -899
                  sub          s2, a6, s1
                  add          a5, a5, s1
                  nop
                  add          t3, s1, s3
                  lui          s1, 555143
                  add          a6, a6, s3
                  auipc        a5, 721196
                  add          s3, s1, s1
                  nop
                  addi         t3, s3, 636
                  nop
                  addi         s2, s3, -890
                  nop
                  add          t3, a6, s8
                  add          a6, sp, s1
                  lui          a3, 596433
                  sub          t3, sp, t3
                  nop
                  lui          s3, 311479
                  lui          a6, 12591
                  addi         s8, sp, 1213
                  sub          t3, a3, s2
                  addi         s3, s5, 76
                  addi         a5, s1, 224
                  sub          s3, s2, a3 #end riscv_int_numeric_corner_stream_5
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t6, 0x0
                  li           a0, 0xffffffff
                  li           a6, 0x0
                  li           s5, 0xffffffff
                  li           t5, 0x318d7652
                  li           ra, 0xffffffff
                  li           gp, 0x98a09368
                  li           t4, 0x0
                  li           s10, 0x80000000
                  lui          ra, 62827
                  auipc        t4, 275891
                  addi         s10, a6, 1898
                  nop
                  nop
                  nop
                  nop
                  auipc        t4, 600666
                  add          s5, s5, t6
                  nop
                  addi         ra, ra, -297
                  lui          a5, 129567
                  sub          a6, a0, s5
                  addi         ra, t4, 1503
                  auipc        a0, 470777
                  auipc        a5, 603511
                  sub          t5, ra, a5
                  sub          t6, ra, s10
                  auipc        s10, 253853 #end riscv_int_numeric_corner_stream_4
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           s5, 0x55707570
                  li           t0, 0x0
                  li           s3, 0xffffffff
                  li           s2, 0x1571c432
                  li           a5, 0xffffffff
                  li           s1, 0x80000000
                  li           s7, 0xac6347de
                  li           a2, 0x0
                  li           ra, 0x0
                  sub          a5, s7, s3
                  lui          s5, 201688
                  auipc        s7, 396659
                  sub          a5, t0, a1
                  sub          s2, a5, a1
                  add          s2, s1, ra
                  lui          s5, 870809
                  addi         s1, a1, -1642
                  add          t0, s5, a1
                  add          a2, s2, s7
                  lui          s3, 118616
                  auipc        s1, 546934
                  addi         a1, a5, -1616
                  lui          a5, 758853
                  auipc        a2, 123687
                  addi         s1, s2, 564
                  sub          ra, a5, s5
                  auipc        s2, 852587
                  sub          a2, s5, s2
                  nop #end riscv_int_numeric_corner_stream_23
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           t3, 0x0
                  li           a0, 0x80000000
                  li           a1, 0x38da647d
                  li           s10, 0xfafddce6
                  li           t4, 0x80000000
                  li           t5, 0xffffffff
                  li           sp, 0xffffffff
                  li           s3, 0x80000000
                  li           a2, 0x0
                  add          t0, t4, a0
                  auipc        t3, 225461
                  addi         t0, t0, -1879
                  sub          a1, t5, a1
                  add          t4, sp, s10
                  sub          a1, s3, a1
                  lui          t4, 169961
                  addi         t0, t3, -794
                  nop
                  auipc        a1, 992859
                  nop
                  lui          sp, 583293
                  add          t0, t4, t3
                  lui          s3, 879027
                  add          t0, t3, a1
                  add          a2, t0, s10 #end riscv_int_numeric_corner_stream_24
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s4, 0xffffffff
                  li           ra, 0x0
                  li           t4, 0x2b087fea
                  li           a2, 0x80000000
                  li           gp, 0x80000000
                  li           a5, 0x0
                  li           a4, 0x80000000
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  lui          s10, 575816
                  addi         s4, ra, -1425
                  nop
                  add          s10, t4, s4
                  lui          ra, 878269
                  nop
                  add          t4, s4, s10
                  sub          s11, a5, a2
                  auipc        t4, 439345
                  nop
                  add          a2, gp, a5
                  nop
                  add          a5, s11, a5
                  sub          t4, s0, a4
                  addi         s4, s10, -656
                  addi         a2, s10, 1428
                  add          s11, s4, s4
                  nop
                  auipc        s4, 749501
                  addi         s10, s11, -698
                  addi         a5, ra, -1945
                  lui          s4, 66389
                  addi         gp, s11, -1190 #end riscv_int_numeric_corner_stream_13
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_27
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           a6, 0xffffffff
                  li           a5, 0x80000000
                  li           s5, 0x0
                  li           s2, 0xffffffff
                  li           a2, 0xb749330e
                  li           a3, 0xffffffff
                  li           a0, 0x0
                  sub          t4, a2, t4
                  add          a3, a3, a5
                  nop
                  nop
                  nop
                  sub          t4, a0, s11
                  auipc        a5, 384862
                  auipc        s3, 631952
                  lui          a6, 120158
                  auipc        a5, 254365
                  add          t4, a2, s3
                  nop
                  sub          s2, s5, s2
                  addi         s5, t4, 1475
                  nop
                  addi         s2, a3, 1497
                  add          a3, a5, s3
                  add          a6, s5, a2
                  auipc        s3, 591561
                  lui          a0, 265439
                  lui          s2, 218454 #end riscv_int_numeric_corner_stream_27
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s1, 0x0
                  li           t4, 0xffffffff
                  li           s10, 0x0
                  li           s3, 0xffffffff
                  li           s8, 0x0
                  li           s7, 0x8109e65d
                  li           tp, 0xaba69443
                  li           a2, 0x0
                  li           s5, 0xffffffff
                  sub          s1, tp, s0
                  auipc        t4, 265752
                  sub          s7, tp, s10
                  nop
                  lui          s10, 422729
                  auipc        s10, 275965
                  auipc        s7, 215404
                  addi         tp, tp, 627
                  sub          s7, s5, s1
                  auipc        s1, 215624
                  addi         s5, tp, -1732
                  lui          s8, 119452
                  sub          s3, s0, a2
                  lui          s8, 571833
                  addi         s10, s3, 411 #end riscv_int_numeric_corner_stream_15
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           gp, 0x80000000
                  li           tp, 0xffffffff
                  li           t0, 0xe12ec6b
                  li           a6, 0x80000000
                  li           s9, 0xa1f9f9e3
                  li           s0, 0x0
                  li           s11, 0x80000000
                  li           t6, 0x80000000
                  li           sp, 0x13672db7
                  nop
                  nop
                  nop
                  nop
                  lui          gp, 281253
                  auipc        t0, 660312
                  addi         gp, sp, -1314
                  auipc        s9, 102153
                  addi         tp, s11, 136
                  addi         t0, t0, -76
                  sub          t6, a6, gp
                  nop
                  sub          gp, tp, t0
                  add          sp, s9, a6
                  auipc        s9, 351325
                  auipc        a6, 582565
                  sub          t6, s11, t0
                  addi         sp, gp, -582
                  nop
                  lui          s11, 579324
                  sub          s9, gp, t0
                  add          tp, s2, s0
                  nop
                  sub          t6, s9, a6
                  lui          sp, 523062
                  lui          tp, 1018398
                  lui          s2, 29796
                  lui          sp, 318386
                  lui          t6, 624180 #end riscv_int_numeric_corner_stream_18
                  li           s0, 0x21716336 #start riscv_int_numeric_corner_stream_38
                  li           a3, 0x80000000
                  li           tp, 0x0
                  li           s5, 0x0
                  li           t6, 0x0
                  li           s2, 0xffffffff
                  li           s8, 0x0
                  li           s11, 0xffffffff
                  li           s10, 0x80000000
                  li           t1, 0x0
                  nop
                  addi         s0, t6, -675
                  lui          s11, 880854
                  sub          s0, t1, s0
                  sub          s5, s5, s10
                  add          s8, a3, tp
                  add          s8, s10, tp
                  nop
                  addi         s0, s11, 595
                  lui          s0, 132839
                  addi         t1, t6, 710
                  nop
                  addi         tp, s2, -1175
                  sub          s0, s11, t1
                  auipc        t1, 642365
                  lui          a3, 832059 #end riscv_int_numeric_corner_stream_38
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           s7, 0x25940623
                  li           gp, 0x0
                  li           t5, 0x700cb32f
                  li           a1, 0xffffffff
                  li           tp, 0xffffffff
                  li           ra, 0xdc2d03ba
                  li           s11, 0x0
                  li           s9, 0x0
                  li           t3, 0xffffffff
                  nop
                  lui          t5, 523979
                  addi         t3, tp, 1317
                  add          ra, t5, s7
                  nop
                  auipc        a1, 288284
                  nop
                  add          s7, s9, t5
                  lui          s9, 414238
                  auipc        gp, 559516
                  nop
                  auipc        a0, 135982
                  addi         s9, tp, 390
                  addi         t5, a1, -362
                  sub          a0, gp, ra
                  lui          tp, 429602
                  add          tp, s9, t5
                  lui          a0, 281126
                  sub          ra, tp, t5
                  lui          gp, 789571
                  addi         s7, s11, 1239
                  lui          tp, 570164
                  addi         tp, s7, 977
                  add          a0, ra, tp #end riscv_int_numeric_corner_stream_33
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s0, 0xffffffff
                  li           s1, 0x0
                  li           a6, 0x0
                  li           t1, 0xffffffff
                  li           t4, 0x0
                  li           s11, 0x0
                  li           s3, 0x9b998d40
                  li           a2, 0x80000000
                  li           a1, 0x76bfe728
                  addi         a1, s3, 1376
                  lui          t1, 325284
                  lui          s11, 333060
                  sub          t4, t1, t3
                  add          t1, s3, t4
                  nop
                  sub          t3, a6, a2
                  nop
                  auipc        t1, 1006336
                  lui          s11, 16687
                  auipc        a2, 280846
                  nop
                  nop
                  lui          a1, 137146
                  addi         s3, a1, 1309
                  auipc        s11, 634446 #end riscv_int_numeric_corner_stream_2
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_36
                  li           a5, 0x0
                  li           t4, 0x6092b23c
                  li           s0, 0x3f6bb2de
                  li           t5, 0x0
                  li           a2, 0x6642976b
                  li           t0, 0xffffffff
                  li           s10, 0x0
                  li           s7, 0x4fd62b51
                  li           gp, 0xffffffff
                  sub          gp, t5, s7
                  add          a5, s10, t4
                  sub          s10, t0, gp
                  lui          a5, 728710
                  sub          a2, s7, ra
                  auipc        s10, 149806
                  add          t0, ra, ra
                  sub          t4, s7, t4
                  add          s10, ra, gp
                  nop
                  lui          gp, 643029
                  addi         s0, s0, -1132
                  nop
                  sub          a5, a2, gp
                  auipc        ra, 706828
                  lui          a5, 987319
                  lui          s7, 15886
                  add          s10, gp, ra
                  addi         s10, t5, 1028
                  addi         t0, s0, 625
                  addi         s7, t5, -965 #end riscv_int_numeric_corner_stream_36
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           sp, 0x0
                  li           s4, 0x0
                  li           t5, 0x98121ce
                  li           a2, 0xffffffff
                  li           s5, 0xc0a3939d
                  li           s3, 0x0
                  li           s0, 0xffffffff
                  li           a0, 0xa499b603
                  li           s9, 0x80000000
                  auipc        s4, 689142
                  sub          s5, s5, s4
                  lui          sp, 407165
                  nop
                  addi         s9, sp, -128
                  nop
                  lui          s4, 991291
                  add          t5, s3, s5
                  auipc        s3, 6413
                  nop
                  addi         s9, t5, 224
                  lui          s5, 550823
                  sub          sp, a0, sp
                  add          s3, t5, s8
                  sub          s4, sp, s4
                  nop
                  lui          s3, 19235
                  sub          s3, a0, s3
                  auipc        s5, 607846
                  add          a2, s3, s4
                  addi         s3, s9, -1699
                  addi         a0, sp, 1365
                  nop
                  auipc        s4, 392681
                  auipc        s4, 515451
                  nop
                  auipc        s3, 843765
                  nop
                  auipc        sp, 731368 #end riscv_int_numeric_corner_stream_34
                  li           a5, 0x745c0af6 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0x0
                  li           a6, 0x0
                  li           t3, 0xfa34a0cd
                  li           t4, 0xa2339871
                  li           gp, 0x0
                  li           tp, 0xaeb9f3f6
                  li           s9, 0x31198933
                  li           s1, 0x80000000
                  li           a4, 0x0
                  add          tp, a6, a5
                  sub          tp, t3, gp
                  nop
                  nop
                  auipc        a4, 345516
                  auipc        t4, 820695
                  nop
                  auipc        a6, 676896
                  sub          tp, a6, t4
                  sub          tp, t3, t4
                  addi         a5, t3, 308
                  addi         s1, t4, 758
                  addi         a5, gp, 349
                  auipc        sp, 745710
                  addi         t3, sp, 77
                  lui          sp, 967405
                  auipc        a6, 873997
                  lui          t4, 417257
                  add          tp, t4, a6
                  addi         a6, sp, -560
                  nop
                  auipc        gp, 900665
                  addi         a6, gp, -413
                  addi         t4, s1, 43
                  add          a5, t3, s1
                  auipc        t3, 556711 #end riscv_int_numeric_corner_stream_19
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s2, 0x0
                  li           s7, 0x6be0256a
                  li           s1, 0x80000000
                  li           gp, 0xffffffff
                  li           a4, 0x80000000
                  li           t0, 0x0
                  li           s8, 0x80000000
                  li           a0, 0xffffffff
                  li           tp, 0xffffffff
                  lui          s2, 156178
                  sub          s1, s1, s7
                  sub          s7, a0, t0
                  nop
                  sub          s4, s8, a4
                  lui          s8, 192688
                  sub          s2, s4, s8
                  lui          s2, 936707
                  nop
                  add          a0, a0, a0
                  sub          t0, tp, s4
                  nop
                  sub          s2, gp, tp
                  addi         s7, s7, -287
                  addi         s8, s8, 450
                  auipc        tp, 354232
                  lui          s2, 673931 #end riscv_int_numeric_corner_stream_7
                  xori         t4, a7, 530
                  sltu         t4, zero, s5
                  or           s5, s4, t1
                  srl          a5, t2, a1
                  addi         ra, t4, -858
                  srli         s4, a1, 16
                  xori         s5, s10, 373
                  sltu         a6, t4, s1
                  slt          a1, s2, a0
                  add          a5, a6, t5
                  sub          t3, tp, a2
                  slti         s10, s8, -1100
                  srai         s2, t4, 19
                  slti         sp, s9, -272
                  nop
                  ori          a6, gp, 32
                  add          t5, s4, a1
                  sra          t5, zero, s4
                  sltiu        t3, s10, -10
                  srai         s1, a3, 10
                  slt          s1, s11, t3
                  or           s11, a0, a2
                  auipc        a6, 409454
                  addi         gp, s5, 356
                  andi         s7, t6, -2045
                  srl          a6, a3, a1
                  ori          t4, s9, -1163
                  andi         a2, a7, -544
                  sltiu        s9, t2, 302
                  sltu         s5, a5, s6
                  nop
                  sll          s3, s2, a4
                  sra          zero, s8, a5
                  sra          tp, a2, s3
                  sra          ra, s5, t0
                  auipc        s3, 249843
                  sll          tp, s6, gp
                  xori         t1, tp, -1460
                  or           gp, t0, t5
                  slti         s11, s2, -1719
                  and          zero, s5, s0
                  slt          t5, zero, a5
                  sra          s2, a0, s0
                  sltiu        a6, a4, -515
                  and          s2, a7, t1
                  slli         t1, a6, 0
                  or           s5, s9, s10
                  srl          s7, sp, s6
                  sltu         s7, a7, ra
                  sltu         a5, t2, t4
                  srl          t1, tp, s11
                  srl          s8, a1, a6
                  xori         s9, a0, 1232
                  add          tp, s9, s8
                  xor          t3, tp, gp
                  sltu         s1, a4, t5
                  ori          s3, s6, 1534
                  slli         tp, s3, 27
                  sltu         a4, t5, a0
                  sltiu        s3, t3, -381
                  slt          t1, t6, s7
                  or           t1, s5, t0
                  xori         t6, s5, -889
                  auipc        a1, 406504
                  sll          a6, s10, a2
                  or           s2, a1, zero
                  add          t5, tp, s11
                  slli         ra, s0, 26
                  addi         s2, s9, 1421
                  sltu         tp, sp, sp
                  xor          gp, s0, t1
                  slt          a0, s3, t3
                  sra          s4, s2, a0
                  nop
                  sltiu        zero, gp, -199
                  sltiu        s8, s2, 1460
                  sltu         s5, s0, s8
                  srl          t3, s9, s0
                  andi         a6, gp, -1485
                  srai         a5, t4, 14
                  xori         a4, t2, -1061
                  ori          t6, s5, -1475
                  auipc        t0, 300843
                  xori         t3, s6, 1543
                  xor          s5, s10, s2
                  or           a6, s5, t5
                  lui          s9, 90858
                  slt          sp, s3, t1
                  and          s7, t4, a5
                  addi         t5, s7, 1964
                  sll          a6, s8, a6
                  xori         tp, a2, 1313
                  ori          s0, s5, 552
                  srli         t4, s2, 4
                  ori          gp, a4, 869
                  sub          s4, a0, zero
                  andi         s7, t6, -743
                  xor          a4, t1, s8
                  or           s0, s9, s5
                  sll          ra, s2, a7
                  nop
                  xori         s1, s5, -736
                  ori          t1, a0, -500
                  lui          s4, 641491
                  add          s7, a2, sp
                  or           a1, s2, t4
                  ori          t6, gp, -581
                  sltu         t6, a1, s6
                  add          a0, a1, s7
                  or           s0, ra, t3
                  addi         s4, a6, 1354
                  slt          a3, tp, gp
                  auipc        a2, 254225
                  addi         s3, t2, -901
                  addi         s1, s2, -1322
                  sra          s2, t5, t2
                  and          s4, s1, a6
                  or           ra, s2, a0
                  srli         t6, a4, 18
                  srai         a1, t6, 10
                  addi         t1, sp, -964
                  srai         t1, a6, 10
                  lui          s4, 126592
                  sra          gp, s3, zero
                  srli         gp, t0, 15
                  srai         s1, s11, 27
                  slti         t1, a6, -549
                  srai         a4, s6, 10
                  sra          s0, a6, s6
                  sltiu        a1, a3, 1191
                  nop
                  addi         s4, s10, 1325
                  sub          zero, s5, s10
                  sub          t1, s8, a6
                  and          a2, a1, s7
                  slli         a2, gp, 18
                  sll          t5, a5, a4
                  slli         zero, s5, 23
                  slli         a5, s3, 15
                  nop
                  srli         a2, t5, 25
                  lui          t1, 509155
                  add          s8, t6, s7
                  or           t4, s3, s4
                  ori          s7, s0, 854
                  srl          tp, s6, a2
                  auipc        a1, 994468
                  sltu         t0, s6, s3
                  andi         t0, tp, 95
                  sll          t4, s3, tp
                  sll          t0, s7, s3
                  sra          s11, a4, s3
                  addi         a1, gp, -1463
                  slli         s8, s4, 9
                  slti         gp, a6, -1065
                  andi         s9, s7, 1494
                  lui          a2, 683030
                  add          a5, s5, a6
                  or           sp, s8, sp
                  addi         s10, s7, 1137
                  nop
                  and          gp, a3, s8
                  or           gp, a4, s2
                  slli         a2, ra, 19
                  xori         sp, s1, 1116
                  andi         a1, a5, 1694
                  nop
                  srai         ra, a0, 14
                  slli         s8, t6, 20
                  srai         s0, a0, 5
                  slti         s11, s2, 987
                  srli         a5, s10, 17
                  ori          s2, s6, -386
                  and          zero, s8, t4
                  slli         a3, s2, 13
                  sll          a0, tp, t5
                  sltiu        sp, zero, 1462
                  xori         gp, ra, -842
                  slti         a6, s7, 328
                  sll          t3, t6, t0
                  ori          a2, t5, -307
                  ori          s5, a6, 1654
                  ori          s8, t5, 883
                  srli         a2, s3, 18
                  auipc        a1, 143942
                  srli         s5, t6, 10
                  nop
                  xor          a4, a6, s9
                  sra          a3, tp, gp
                  slli         s3, a4, 5
                  ori          s8, s3, -1249
                  and          s9, a2, a2
                  addi         s1, s3, 1518
                  add          tp, a3, a3
                  addi         t5, s0, -1925
                  sll          s0, s7, t3
                  nop
                  slt          a2, sp, a6
                  sll          s3, s2, a1
                  nop
                  srai         s7, s6, 1
                  or           a3, zero, t1
                  auipc        s0, 500035
                  nop
                  andi         t6, s9, -744
                  ori          s2, ra, 1107
                  and          a4, s8, a3
                  srl          sp, s2, s5
                  and          s2, t0, t1
                  xori         t1, s6, -1982
                  nop
                  slli         a5, s2, 9
                  auipc        zero, 788269
                  xor          s3, gp, ra
                  nop
                  addi         a0, s3, 118
                  xori         s7, t2, -2045
                  auipc        t4, 106796
                  addi         s5, a7, 1925
                  ori          s0, ra, -42
                  and          a3, ra, s9
                  srai         a5, t4, 5
                  srli         tp, s2, 10
                  add          zero, sp, t4
                  and          a6, s9, s2
                  nop
                  srai         t4, t2, 14
                  ori          s0, a6, -756
                  nop
                  sltu         sp, ra, ra
                  sll          ra, t4, ra
                  sra          s3, s6, a4
                  addi         s5, a5, -1252
                  and          s2, ra, a2
                  slti         t1, a0, -285
                  sltiu        zero, a1, 1566
                  slti         gp, s9, -597
                  sub          s11, a7, s4
                  sltu         t1, s6, a2
                  add          zero, s4, s9
                  srl          sp, s2, zero
                  sltiu        t5, s1, -827
                  xori         ra, t1, -632
                  nop
                  sltu         s5, s5, a1
                  or           t3, s9, s8
                  sll          a6, s10, s1
                  sltiu        t6, s9, -964
                  slt          a3, s7, s1
                  sltu         a2, a3, a1
                  xor          s8, gp, s9
                  slti         ra, t0, -1387
                  xor          s4, gp, s5
                  addi         tp, t3, 503
                  add          s9, s7, a6
                  slti         zero, a7, 1695
                  slt          s3, sp, zero
                  auipc        sp, 383196
                  lui          a0, 164947
                  slt          a4, a3, s5
                  srai         s8, a1, 6
                  addi         a4, t2, -799
                  slt          s0, t6, a4
                  lui          s7, 412619
                  sra          t0, ra, t6
                  srl          s4, s3, tp
                  srai         gp, t1, 4
                  sub          t1, s5, t3
                  andi         t5, s6, -1261
                  sub          s3, t4, tp
                  addi         s4, s11, 685
                  slti         ra, t6, 1215
                  srai         s4, a7, 24
                  slt          s8, s9, zero
                  srl          zero, s0, s9
                  lui          gp, 441877
                  slli         s3, s5, 29
                  slt          tp, s5, s11
                  xor          s3, s5, a2
                  lui          s0, 616043
                  srai         ra, a4, 9
                  auipc        zero, 208317
                  sll          s7, s9, s7
                  slli         t3, s1, 20
                  xor          s3, sp, tp
                  slti         t3, s6, -1223
                  sub          a0, s9, t3
                  slli         s0, a5, 30
                  srai         a6, s2, 3
                  xor          s5, s2, s4
                  lui          a2, 31624
                  auipc        s4, 272620
                  auipc        a0, 119359
                  nop
                  slli         ra, t5, 7
                  xori         a1, t5, -852
                  slli         s2, s5, 28
                  sll          s0, t3, s7
                  srl          a3, s10, s5
                  and          t4, t6, s1
                  nop
                  srli         gp, s10, 29
                  auipc        t1, 514780
                  slli         s1, a7, 27
                  xor          a4, s8, t5
                  ori          s7, t1, -1937
                  lui          a6, 217395
                  or           a3, sp, t1
                  nop
                  add          t5, t4, a4
                  add          s2, s7, a6
                  sra          s11, s9, s9
                  auipc        t1, 1039491
                  and          a5, tp, s2
                  andi         a0, s6, -365
                  slli         s11, s2, 25
                  sub          t0, t2, a0
                  and          a5, t0, s8
                  nop
                  sub          t3, t4, sp
                  sltiu        t0, sp, -1762
                  srai         s5, sp, 31
                  srai         s1, s5, 3
                  slt          s7, a3, a7
                  ori          t0, s6, 994
                  xor          a4, zero, a5
                  sltu         a5, a5, t2
                  slli         s10, a7, 2
                  sub          s11, a7, a1
                  slti         s7, s11, 1291
                  add          s3, t3, a1
                  ori          a4, a5, 1763
                  or           a5, s2, s3
                  sltu         s0, s11, a3
                  xor          s5, s4, gp
                  slti         s7, ra, 1309
                  lui          s4, 429869
                  add          s8, s9, a7
                  nop
                  slli         t6, a4, 20
                  or           a1, s0, gp
                  sll          a5, t6, gp
                  xor          t0, s4, a6
                  nop
                  andi         a0, s8, 417
                  slti         s0, s0, 1662
                  add          s8, a7, t4
                  slli         a6, a5, 20
                  sub          t5, s6, s10
                  srli         zero, a3, 12
                  nop
                  srl          sp, t0, t0
                  slt          s4, t0, t0
                  xor          s8, s6, a5
                  andi         t1, s6, -549
                  add          s3, a4, s10
                  and          s3, s7, s10
                  slli         tp, zero, 5
                  auipc        s11, 137465
                  xori         s11, zero, 824
                  srl          zero, s6, s4
                  nop
                  addi         a1, a7, -561
                  sltu         s7, s11, s10
                  andi         s4, a6, -424
                  add          t5, ra, t3
                  slt          a0, s1, a2
                  sltiu        s4, s0, 1547
                  sub          t0, s7, a1
                  xori         s3, t5, -1351
                  sub          s11, t4, a2
                  slt          a3, t2, a2
                  ori          t4, t0, -1876
                  slt          t3, s5, s0
                  slti         a4, tp, -634
                  xor          a2, t6, t2
                  xori         a5, a4, -826
                  srli         s4, s7, 18
                  slli         a4, a7, 26
                  auipc        tp, 932061
                  lui          t1, 969105
                  xor          s4, s6, t0
                  sltiu        a3, a0, 587
                  andi         t0, t5, -649
                  srai         a4, ra, 14
                  sll          a0, a1, s1
                  nop
                  lui          t3, 839868
                  srai         a2, t5, 23
                  sub          ra, s3, s6
                  and          tp, s11, s3
                  srai         a0, t5, 17
                  addi         a4, s6, 1239
                  ori          zero, a4, 796
                  sltu         s3, a2, t4
                  slli         a5, t2, 6
                  add          t0, s1, a6
                  slt          t6, ra, t3
                  slt          t4, a6, a7
                  srli         t4, s10, 10
                  sltiu        gp, a5, 94
                  and          a3, s10, tp
                  addi         t1, t6, 97
                  sll          t5, s8, s8
                  lui          s8, 782805
                  addi         s4, zero, 1845
                  sra          a2, a5, sp
                  add          a3, ra, t6
                  sub          s3, t4, s11
                  lui          a0, 598183
                  srl          s5, t6, t3
                  ori          s10, a6, 1553
                  sra          t3, s10, zero
                  srai         s9, ra, 29
                  andi         s3, t1, 1162
                  and          t0, s7, a0
                  add          s3, a6, s8
                  slti         a5, a7, 744
                  srl          s4, a3, s11
                  and          s4, s9, a0
                  auipc        a5, 729628
                  sltiu        t6, t5, -924
                  srli         a0, zero, 27
                  xori         s2, s3, -337
                  sltu         s3, t6, t4
                  xor          tp, s11, s5
                  add          a0, s0, gp
                  lui          s3, 585985
                  srai         s0, a4, 1
                  auipc        s10, 165201
                  sra          s11, t6, s6
                  sltiu        t4, s0, -1763
                  addi         s0, s10, -740
                  add          a0, s0, a5
                  addi         s1, s0, 360
                  sltu         zero, s10, a5
                  sub          s1, s5, a2
                  srli         tp, a6, 19
                  sub          s9, a4, tp
                  add          t1, s0, s3
                  auipc        s3, 634541
                  lui          a6, 829821
                  srli         gp, t3, 10
                  andi         s4, t6, -727
                  andi         a0, a6, -102
                  srai         a6, s3, 7
                  lui          a5, 426896
                  srli         s11, s4, 12
                  srai         s9, a7, 15
                  ori          a2, a0, 1440
                  slt          s5, s1, s7
                  slti         t6, s0, -1932
                  sub          a3, t3, t4
                  slli         s2, a1, 29
                  and          zero, ra, ra
                  and          s9, s10, a2
                  sub          ra, s11, a3
                  add          a1, t2, s7
                  lui          t3, 458537
                  sub          s7, a3, a4
                  and          s8, t2, s7
                  slti         t1, t0, 1584
                  sltu         t5, s3, gp
                  srl          s7, s11, s9
                  srli         s7, s9, 15
                  xori         s4, s9, -708
                  auipc        t5, 505051
                  nop
                  sra          s4, t2, s5
                  auipc        a4, 243054
                  sltu         s3, gp, s5
                  srl          s10, t2, a3
                  or           a2, s5, zero
                  slli         tp, s2, 6
                  srli         s5, a4, 22
                  nop
                  slti         s4, s2, -1423
                  slt          s8, a6, s9
                  slt          t6, sp, tp
                  addi         s9, tp, 1554
                  xori         s9, a7, 38
                  srli         s7, s10, 3
                  and          s1, a0, s6
                  sll          t5, s9, a2
                  sll          s10, tp, t1
                  addi         tp, s9, 322
                  sltiu        a5, a3, -1519
                  andi         a6, a6, 2005
                  srai         s10, a7, 14
                  nop
                  auipc        s9, 17071
                  add          s0, t3, a6
                  add          s1, a3, s3
                  srai         a2, s9, 25
                  xor          s9, t1, t5
                  sub          t6, a4, a6
                  srli         a1, s2, 8
                  xor          t5, s2, s5
                  sltu         s0, s2, a5
                  nop
                  srli         s7, a3, 8
                  nop
                  li           t1, 0x9734b82d #start riscv_int_numeric_corner_stream_39
                  li           sp, 0xffffffff
                  li           t0, 0x0
                  li           s5, 0xffffffff
                  li           a2, 0x80000000
                  li           a4, 0xffffffff
                  li           ra, 0xffffffff
                  li           t4, 0x2131c896
                  li           s1, 0x6fc6aefb
                  li           s0, 0x0
                  nop
                  auipc        t4, 142599
                  lui          t4, 596679
                  auipc        sp, 974128
                  add          sp, a2, a4
                  nop
                  lui          a4, 37256
                  lui          s5, 128139
                  sub          t1, a2, t1
                  auipc        ra, 552007
                  nop
                  sub          sp, sp, s1
                  addi         ra, a2, 1120
                  nop
                  add          ra, t4, a4
                  sub          a4, t4, s0
                  auipc        t1, 686713
                  auipc        t4, 957709
                  sub          sp, ra, sp
                  lui          s5, 1047279
                  sub          s5, t4, t0
                  add          s0, t4, a4
                  add          s1, s0, t1
                  sub          s0, sp, s1
                  add          ra, a2, a2
                  add          s5, t4, ra
                  nop
                  addi         t1, s5, -1200 #end riscv_int_numeric_corner_stream_39
                  lui          a0, 491170
                  add          gp, zero, a3
                  srli         s9, a7, 6
                  nop
                  sltiu        s1, ra, 1162
                  nop
                  sltiu        s7, a6, 1887
                  sltu         s5, a6, a5
                  srl          a2, t6, sp
                  sll          s8, t6, s11
                  sra          a5, t5, t6
                  lui          s1, 490939
                  xori         t1, a2, -384
                  srai         t1, t3, 13
                  lui          s1, 632742
                  sub          a0, t3, t1
                  srai         a0, t1, 27
                  sltu         a5, t3, s1
                  and          t6, t3, a6
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_35
                  li           s7, 0x80000000
                  li           t3, 0x0
                  li           gp, 0xc18ba796
                  li           sp, 0xffffffff
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  li           a3, 0x0
                  li           a4, 0xa5fc8973
                  li           t1, 0x0
                  sub          t3, ra, a3
                  add          ra, a3, t6
                  auipc        a3, 676678
                  sub          t6, t1, t1
                  lui          a4, 230372
                  auipc        gp, 567225
                  add          sp, t3, s7
                  sub          s4, s7, sp
                  add          s4, t3, ra
                  sub          sp, t3, sp
                  nop
                  addi         a3, t3, 102
                  add          t6, s7, a4
                  sub          a3, gp, s4
                  addi         a3, t1, 633
                  nop
                  addi         s7, t6, 1130
                  lui          s7, 130970
                  lui          t1, 697548
                  sub          s4, s4, t3
                  auipc        sp, 881848
                  auipc        s7, 507667
                  add          t3, gp, s4
                  sub          s7, t6, s7
                  lui          t3, 818450 #end riscv_int_numeric_corner_stream_35
                  slti         s3, a2, 593
                  andi         gp, tp, -579
                  add          s1, t1, s3
                  sltiu        sp, a7, 1318
                  srli         s3, s9, 23
                  xori         t0, s9, -26
                  ori          t5, t2, -1396
                  slti         tp, s5, -1332
                  srli         s3, s9, 29
                  or           t6, a6, s1
                  xori         s7, s8, -336
                  slti         t1, s3, -1210
                  andi         s4, a3, 648
                  srli         s4, s4, 5
                  andi         s11, tp, -68
                  sra          s7, a3, t1
                  sltu         s2, t0, s1
                  nop
                  srl          s1, a0, s5
                  slt          s4, t3, a6
                  sra          a3, t1, s10
                  lui          t1, 639510
                  lui          gp, 696426
                  slt          ra, a1, s3
                  srai         a1, s7, 14
                  slt          s10, a2, a1
                  sltiu        a5, t2, 2020
                  lui          s11, 959661
                  nop
                  auipc        s5, 391531
                  xori         a5, t4, -1444
                  srai         s1, tp, 25
                  auipc        sp, 567378
                  xor          gp, t0, s0
                  slti         t1, a4, -1800
                  sltu         ra, t5, t6
                  slli         a2, t5, 5
                  sra          t5, t4, s0
                  sltu         s2, sp, a6
                  slt          t1, t1, s11
                  sub          s3, s2, a5
                  slli         s1, s11, 0
                  slt          s7, a7, ra
                  slt          t3, tp, s10
                  xor          s7, tp, a1
                  slt          s1, t0, s2
                  sub          t6, a0, s7
                  sltu         s0, a4, s6
                  andi         sp, s3, -309
                  auipc        a6, 825829
                  auipc        a3, 438112
                  slt          t1, a2, tp
                  slt          t5, s3, tp
                  slt          t1, s8, tp
                  srl          s9, t1, s5
                  nop
                  and          zero, t2, a3
                  lui          gp, 645228
                  add          gp, sp, t0
                  sltiu        s2, s7, 398
                  andi         s10, gp, -145
                  sub          s5, ra, s3
                  lui          s4, 27787
                  lui          s0, 990866
                  sll          zero, s1, t3
                  srai         a4, s6, 5
                  lui          s3, 277251
                  addi         a6, a2, -481
                  andi         a5, s9, 1725
                  srli         t1, a5, 4
                  add          sp, s9, t6
                  slli         s3, s6, 19
                  auipc        sp, 566084
                  or           s3, t2, t3
                  ori          a5, s7, -1033
                  srai         t3, s11, 6
                  nop
                  ori          a1, s4, 1306
                  addi         a0, a1, -1124
                  xori         s0, s3, 639
                  slt          a2, t5, t3
                  slti         s2, s9, -1955
                  sltiu        a4, t0, -2037
                  sltiu        t6, t5, -1883
                  ori          a4, a1, 357
                  auipc        t5, 280844
                  andi         t5, a1, -1509
                  srli         t1, gp, 14
                  add          tp, s5, t6
                  sltiu        s1, a2, -1216
                  lui          a3, 4599
                  add          ra, a3, a4
                  sltiu        s5, s9, 211
                  xori         a5, s9, -1532
                  slt          a2, t1, s9
                  sra          a4, s1, s6
                  addi         s4, zero, -785
                  sltiu        s8, t2, -1554
                  andi         s8, s0, 1934
                  and          ra, zero, s1
                  sltu         s5, t3, t5
                  and          s3, s2, s1
                  auipc        s11, 388551
                  slli         tp, zero, 12
                  xor          ra, s7, t6
                  slt          s7, s2, a5
                  auipc        s5, 128537
                  xori         t4, s4, 413
                  and          a5, s7, tp
                  slti         s5, a4, -1388
                  slli         gp, s8, 19
                  slli         s2, s5, 4
                  auipc        t5, 841805
                  slt          a3, a2, a7
                  sll          t0, sp, a3
                  xori         a1, s5, -1434
                  lui          a6, 1034866
                  add          a2, sp, a3
                  srli         t1, sp, 16
                  and          a6, t0, t2
                  nop
                  and          s4, sp, t6
                  slti         a6, s10, -1309
                  add          s9, s5, s6
                  sll          t4, t4, s11
                  ori          s4, s8, 1252
                  sra          ra, a6, a5
                  ori          s2, s7, -1432
                  add          s7, t1, zero
                  auipc        s8, 95859
                  slli         zero, t2, 5
                  xor          s11, sp, s2
                  add          a1, s4, a5
                  or           a4, s11, a3
                  xori         s3, a1, 945
                  slli         s2, t6, 6
                  srl          sp, s7, a0
                  srl          s11, a7, t2
                  ori          s5, s8, -1236
                  sltiu        a0, a3, 778
                  slli         s2, s6, 15
                  addi         ra, t3, -417
                  and          a5, s6, s8
                  slli         t6, a6, 5
                  sub          s9, a0, a2
                  sltiu        s4, a0, 1257
                  xori         s0, a4, 827
                  slti         s5, s11, 1227
                  sra          t0, s8, a5
                  sub          s3, s3, t2
                  lui          zero, 412329
                  srli         s11, t2, 20
                  lui          a2, 419971
                  or           a1, t1, sp
                  srl          ra, s6, t4
                  srli         a4, a6, 11
                  srli         ra, a1, 1
                  ori          s3, a7, 1199
                  slli         s0, sp, 7
                  ori          a4, s0, 52
                  andi         a4, a6, -1936
                  srli         t3, a7, 20
                  or           a1, s10, t5
                  andi         s11, tp, -1777
                  xor          gp, t5, a1
                  slti         zero, t1, -898
                  addi         t6, t0, 671
                  srl          s7, s3, t0
                  slli         s3, s2, 30
                  srli         t0, s3, 16
                  andi         s4, t2, 1995
                  sll          s7, s5, a4
                  andi         a4, s2, 2017
                  srai         a3, a1, 11
                  lui          s2, 286844
                  slt          s9, t5, s10
                  sltu         s7, s9, a5
                  srli         t4, a1, 29
                  sltiu        tp, tp, 1432
                  lui          zero, 539286
                  srl          s1, s10, t3
                  add          s8, a4, t5
                  xori         t4, sp, -378
                  xori         a0, a1, -1239
                  nop
                  sub          ra, gp, s4
                  srl          s11, t2, ra
                  or           ra, s3, s4
                  lui          ra, 11765
                  or           t3, t1, gp
                  sltu         t3, s4, s9
                  sll          s11, s0, a3
                  xori         t3, s8, 433
                  slt          ra, gp, t2
                  add          a5, s6, t1
                  srli         a1, zero, 14
                  slt          tp, t5, t3
                  nop
                  andi         s9, s2, 327
                  srai         a3, s10, 16
                  srai         t5, a4, 15
                  xor          s0, sp, s5
                  auipc        a2, 310955
                  xor          t3, gp, tp
                  slt          s7, s8, tp
                  slt          t1, sp, a6
                  sltu         sp, t1, s11
                  and          s11, s1, ra
                  and          gp, s11, s8
                  addi         a3, a2, 1430
                  sltu         s7, a7, s7
                  andi         s11, s2, 1658
                  sll          t0, s5, a6
                  and          a4, s3, s5
                  or           s1, s10, s10
                  slt          t1, sp, a6
                  andi         t1, s8, -1880
                  auipc        s8, 278026
                  addi         a0, a2, 437
                  addi         t5, a5, -1989
                  sra          s2, sp, a5
                  sll          s11, s11, t0
                  slti         tp, t1, -1767
                  sltiu        tp, s6, 623
                  and          s7, s5, gp
                  sll          zero, a0, t3
                  slti         s2, a0, 668
                  srl          s9, s4, a5
                  xori         s3, t2, -834
                  or           t3, a4, s4
                  andi         s2, s5, -1087
                  srl          t0, s5, s3
                  slt          s2, s9, s2
                  lui          a3, 255438
                  add          s2, sp, zero
                  nop
                  slt          a0, s10, s1
                  xor          s8, tp, s11
                  auipc        t1, 625709
                  srl          ra, s9, a1
                  or           a0, t6, sp
                  and          sp, a5, ra
                  srli         t1, a2, 26
                  addi         s10, s0, 1096
                  nop
                  sub          s11, t3, s7
                  srli         a3, s9, 0
                  sll          s5, s1, s5
                  xor          s9, s7, s2
                  xori         s3, s3, 222
                  srli         a5, tp, 0
                  addi         t3, s4, -341
                  srl          gp, s7, s3
                  srli         s4, t3, 18
                  addi         t4, s7, -1170
                  srli         zero, t5, 9
                  srli         s8, s1, 28
                  sll          a6, a6, t4
                  srli         a0, s2, 11
                  addi         tp, a4, 1692
                  add          t6, s7, s11
                  srli         t0, s1, 24
                  sll          s4, s3, a2
                  sra          t0, s1, ra
                  sub          t6, a3, s8
                  andi         s4, s7, -1828
                  lui          a3, 140672
                  slti         t1, s7, -2044
                  xor          tp, t3, s8
                  sub          s8, a3, a7
                  slti         s1, a2, 1613
                  ori          zero, t3, -1968
                  sltiu        t4, a5, 1899
                  and          t1, ra, t1
                  xori         sp, a4, -1597
                  slli         t4, t5, 6
                  srli         s3, tp, 13
                  sll          s2, s1, t3
                  auipc        t1, 858616
                  lui          sp, 340609
                  lui          sp, 914677
                  sll          t3, s7, a7
                  sra          s4, s6, s11
                  sub          zero, ra, s6
                  auipc        s11, 409377
                  xor          s4, tp, s9
                  sra          ra, t3, a3
                  andi         s4, s5, -534
                  sra          a0, t5, a4
                  or           s7, zero, s9
                  auipc        a4, 761030
                  or           s5, sp, sp
                  or           t3, s9, t0
                  xori         t1, a5, 1092
                  addi         s4, a7, -1810
                  sra          a2, zero, a1
                  sub          t0, a6, s2
                  add          a6, t2, t2
                  srai         a2, a6, 0
                  add          a0, s1, s9
                  srli         zero, tp, 19
                  lui          a3, 642999
                  sltiu        s8, ra, -1740
                  sltu         s7, a3, ra
                  add          s8, t3, s1
                  sltu         a2, t1, ra
                  srli         s7, t2, 3
                  sltiu        a3, a3, -1629
                  sltiu        a6, a0, -1115
                  slti         a2, a1, -1987
                  slti         t1, s9, 328
                  ori          a6, t0, -581
                  andi         zero, s5, 1957
                  slt          s0, gp, a5
                  or           a0, a0, a5
                  and          a6, a0, sp
                  andi         t1, s2, 741
                  auipc        s3, 1020628
                  sll          a1, s6, s4
                  sra          a2, s11, s0
                  lui          s4, 282335
                  sltu         t1, s7, s10
                  sll          s7, s9, t4
                  add          a6, s0, t6
                  srli         a6, sp, 29
                  slti         s1, s5, -2032
                  srai         a0, t4, 13
                  sra          a2, s11, s6
                  sra          a1, s4, gp
                  srli         t4, s9, 3
                  or           s9, a6, a4
                  auipc        s9, 925403
                  or           s2, t3, s0
                  sll          ra, sp, sp
                  slt          t0, sp, a3
                  srai         s2, tp, 6
                  xori         s7, gp, -1559
                  auipc        a5, 664866
                  nop
                  lui          s8, 643874
                  sub          gp, s2, t1
                  srl          s8, a3, t1
                  sra          sp, t5, s7
                  xori         s9, ra, -508
                  andi         t5, s9, -1949
                  nop
                  slli         sp, s11, 17
                  slt          a4, s1, a5
                  srai         s2, s7, 27
                  add          s7, t4, s9
                  and          a0, t1, t0
                  sll          t1, s6, a0
                  sra          a4, t2, t6
                  sra          s7, s10, a0
                  auipc        s0, 11031
                  auipc        a3, 878461
                  sra          s8, s4, a2
                  srli         s0, t4, 2
                  xori         s11, a3, 982
                  xori         t3, sp, 1681
                  andi         tp, s0, -1552
                  sltiu        tp, a7, 1300
                  and          t6, t1, a7
                  sra          a3, t5, s4
                  srl          a5, s7, s4
                  srl          zero, s9, a3
                  addi         ra, a2, -1201
                  lui          s1, 577903
                  or           sp, a5, s11
                  sll          a3, t3, s9
                  slli         a6, zero, 22
                  sub          t0, a7, s6
                  andi         zero, s3, -76
                  add          s3, t3, s3
                  and          t3, a1, a3
                  and          t6, a3, a1
                  or           gp, a4, zero
                  lui          a6, 1035872
                  auipc        s7, 244511
                  sltu         s0, s5, t3
                  auipc        a0, 212107
                  sra          s0, ra, s6
                  and          a4, t3, t3
                  addi         a2, a1, -691
                  lui          s4, 25633
                  srl          tp, s10, s3
                  slti         s10, s1, -1199
                  nop
                  xori         sp, s2, 1255
                  sltu         s5, a4, t3
                  sub          zero, a4, a5
                  xori         a6, t3, 444
                  sra          s1, t5, t2
                  sltiu        s3, t1, 865
                  andi         s8, s10, 1849
                  slli         s10, t3, 13
                  sltu         gp, tp, a3
                  ori          s3, t5, 737
                  ori          s3, s3, -572
                  ori          s1, a7, -446
                  auipc        a0, 7630
                  sltu         tp, t4, t2
                  sltiu        a1, s5, 260
                  xori         s11, s1, 2
                  andi         s4, a7, -1085
                  auipc        a6, 599882
                  srl          s0, s0, s6
                  slli         s0, a2, 23
                  sltu         a5, tp, s4
                  sub          tp, zero, t3
                  ori          s0, a6, -1113
                  auipc        s4, 822636
                  slli         s9, t0, 10
                  lui          a2, 863571
                  or           a2, s3, s4
                  sub          s11, a0, a5
                  or           a5, t2, s0
                  and          a5, s5, s9
                  slti         a5, s0, -117
                  slti         s7, a1, 1526
                  xor          s10, t0, t6
                  slti         ra, s9, 721
                  slli         t5, a5, 19
                  slt          t5, s3, a5
                  sll          s0, sp, t3
                  sltu         s0, t0, s5
                  addi         s2, a3, -67
                  srai         s10, s6, 20
                  sra          tp, s0, s7
                  andi         a2, sp, 86
                  srli         s11, zero, 15
                  and          ra, s0, sp
                  slli         s1, tp, 17
                  andi         ra, a7, 1250
                  xor          t6, gp, a6
                  xor          s3, a7, s5
                  slli         gp, t2, 19
                  srai         a3, gp, 26
                  andi         t0, s1, -1696
                  srl          tp, a1, s7
                  slli         t5, a0, 7
                  srli         s9, s6, 17
                  ori          s0, a5, -297
                  slti         s8, s6, 727
                  nop
                  srli         s1, a4, 14
                  auipc        ra, 338835
                  and          s11, a3, s2
                  slt          zero, s8, tp
                  auipc        ra, 672924
                  and          a5, s0, a4
                  sltu         s2, a1, t0
                  xori         s1, a7, 634
                  sub          a6, t5, s3
                  slt          s9, t3, ra
                  add          t5, t3, s4
                  srli         s7, t4, 17
                  xor          s4, a1, s5
                  slti         a6, s1, -577
                  auipc        s4, 153210
                  srl          s7, a0, ra
                  nop
                  srli         s0, t6, 25
                  srl          t4, a5, a3
                  sub          s5, ra, s9
                  auipc        a6, 724527
                  auipc        a3, 363247
                  and          s9, s11, t2
                  ori          s8, s5, -1680
                  ori          sp, t3, 1689
                  slti         s5, tp, -641
                  sub          a2, t6, s0
                  srl          ra, s3, s8
                  and          s11, s7, s5
                  xor          t3, s6, zero
                  slti         t5, ra, -1958
                  sra          gp, a3, tp
                  srli         s5, s10, 26
                  sll          s0, s4, s10
                  lui          s4, 612575
                  addi         a3, s6, -121
                  auipc        s10, 108731
                  add          s7, s11, a4
                  or           tp, t6, zero
                  xori         a2, sp, -2008
                  srl          a1, s2, t2
                  lui          tp, 751075
                  srli         a0, a0, 7
                  auipc        zero, 751066
                  ori          s5, a0, 58
                  nop
                  sltu         s7, a2, a4
                  and          t5, t4, s6
                  nop
                  sltu         s2, a4, sp
                  sltu         s8, ra, t3
                  sub          t0, t2, t0
                  xori         zero, s11, -1410
                  and          s3, t2, s4
                  slti         s11, s2, -985
                  or           s7, s6, s0
                  lui          a5, 762822
                  sltiu        s3, s1, -804
                  sll          gp, s7, s0
                  add          a0, s9, s5
                  addi         a6, s6, 1210
                  sll          s11, s0, t3
                  slli         t5, tp, 20
                  auipc        a5, 798135
                  slt          a5, t2, ra
                  slti         gp, s6, 831
                  xor          s10, s7, a2
                  or           a0, t6, zero
                  ori          gp, a1, 1884
                  ori          a1, a5, 203
                  xor          s5, s9, s1
                  addi         s8, t2, -1199
                  sltu         a0, sp, tp
                  and          s3, t0, t5
                  sltiu        a2, a3, -703
                  slt          t6, s10, s0
                  sltiu        a4, ra, 1088
                  or           s9, t3, s5
                  xor          t3, ra, t5
                  sltu         t3, s0, s6
                  srli         a0, t1, 19
                  srai         zero, s1, 14
                  or           a5, t3, a4
                  slt          t0, a3, gp
                  sltu         gp, a6, gp
                  addi         t4, t3, -1790
                  ori          t0, t4, -1178
                  srli         a4, t3, 31
                  slli         s1, t2, 13
                  sub          s4, sp, ra
                  andi         s1, a2, 1426
                  srai         a6, s9, 6
                  srai         a2, a5, 8
                  and          t5, a4, s1
                  sub          a6, s10, s0
                  and          ra, t4, t4
                  srl          a2, a0, s1
                  sltiu        s0, zero, 551
                  sra          t0, a7, ra
                  xor          a4, t1, s3
                  add          a5, s11, t2
                  xori         s2, a3, 1924
                  add          t1, t6, a0
                  slli         a4, a0, 20
                  sra          s5, s0, s4
                  xori         s1, s2, 132
                  sra          s3, t0, t4
                  addi         sp, s10, -172
                  xori         s9, a4, 1903
                  xori         a3, a7, 1202
                  nop
                  auipc        s9, 431946
                  nop
                  and          a1, zero, a5
                  slli         t1, s6, 23
                  slt          t5, a7, s0
                  xor          s9, s6, s10
                  xori         a0, a4, 1397
                  sltiu        a5, t0, -176
                  nop
                  lui          zero, 307880
                  xor          s4, s2, s4
                  xor          a3, s7, ra
                  sub          t6, a0, s9
                  srl          s11, tp, t2
                  sra          s1, a2, s1
                  and          t4, s3, t1
                  xori         t4, s4, -1017
                  ori          gp, a1, -1997
                  sltiu        tp, t5, 737
                  slt          s4, a7, t1
                  srli         s8, a7, 0
                  srai         t5, a4, 30
                  xori         zero, a5, 1116
                  addi         s8, s2, 1770
                  sltu         s5, a5, t6
                  sltu         a2, a2, a5
                  sra          tp, a1, sp
                  ori          t5, s7, 1124
                  sltiu        s4, a1, 1497
                  nop
                  xor          a5, s5, s0
                  slli         a5, s0, 17
                  nop
                  lui          s2, 367079
                  addi         s11, s10, 1832
                  slti         a2, s4, -76
                  nop
                  srli         s5, s8, 14
                  srl          a5, tp, s11
                  lui          s9, 797127
                  sub          zero, t5, s1
                  srai         a2, t5, 29
                  sll          s9, ra, t3
                  srli         gp, t0, 25
                  srl          s1, gp, t4
                  ori          a4, t3, -779
                  sltu         s1, a1, s2
                  slt          a1, a5, zero
                  addi         zero, a1, 788
                  sltiu        t6, s1, 347
                  add          t0, s6, gp
                  nop
                  slti         tp, s7, 1246
                  nop
                  addi         s11, sp, 176
                  slt          s1, s1, t4
                  slli         a4, s5, 21
                  or           s0, zero, t6
                  sltiu        s9, t1, -177
                  andi         s5, s2, 227
                  sra          t0, a7, ra
                  auipc        s7, 803846
                  ori          t0, t6, -556
                  sll          s7, t5, s5
                  sltu         t0, a7, a4
                  sltu         zero, s8, s11
                  srli         a5, gp, 25
                  slt          s8, gp, gp
                  slli         s7, a1, 6
                  andi         s11, tp, 165
                  srl          a4, a4, s10
                  xori         a5, t5, 1274
                  xor          t1, t2, a0
                  slli         s4, s0, 12
                  slli         t5, gp, 11
                  xor          s0, gp, s9
                  ori          a0, gp, -804
                  sll          t6, tp, a2
                  srli         s0, a4, 27
                  lui          s10, 112032
                  sltiu        t4, a1, 248
                  and          t5, a6, s7
                  sltu         a3, s6, s8
                  sra          a1, s6, a0
                  slli         s7, t1, 1
                  xori         a3, s0, 723
                  or           a5, s7, s1
                  sub          s4, zero, s3
                  sra          s11, s1, s0
                  ori          t0, zero, 1763
                  sll          t6, t5, s7
                  sll          a4, s7, zero
                  and          a1, a2, t6
                  sub          ra, sp, s3
                  ori          t5, t0, -390
                  srl          t1, t2, a4
                  slt          s2, s7, sp
                  slli         s1, tp, 20
                  srl          ra, s9, s10
                  or           a5, t5, s3
                  or           t1, s7, a0
                  nop
                  and          s2, a4, ra
                  srai         t3, s7, 5
                  sll          gp, s1, s9
                  sra          ra, a0, a0
                  and          s7, s6, a3
                  or           s4, ra, t6
                  andi         t4, a3, 1043
                  addi         a5, t2, -246
                  lui          s5, 908182
                  xor          s1, gp, t2
                  sub          t1, gp, a3
                  sll          a0, a0, t2
                  srli         a1, a5, 3
                  sll          s1, t6, ra
                  or           sp, t0, t3
                  xor          a4, zero, a4
                  and          a3, gp, sp
                  sll          t5, a3, t1
                  srl          t0, a4, t5
                  lui          sp, 449198
                  srai         s9, t5, 18
                  srai         t3, t3, 8
                  xori         t1, sp, 556
                  sll          s3, a4, s0
                  ori          s7, t0, -148
                  sltu         t5, s4, tp
                  ori          s9, tp, 955
                  srai         a0, a1, 22
                  slli         s1, zero, 29
                  addi         zero, a6, 1927
                  srl          a5, a1, a3
                  and          t6, t0, a5
                  sub          tp, t0, a1
                  add          s10, a0, a5
                  addi         sp, a7, 1858
                  auipc        tp, 14049
                  ori          s7, s3, -448
                  ori          s8, s0, 348
                  sltiu        zero, a3, -578
                  xor          a3, s8, s2
                  lui          s4, 671614
                  add          a0, s10, s7
                  xori         s7, t1, 1701
                  and          s9, s0, s0
                  sra          t1, t5, a2
                  slt          a4, sp, t1
                  auipc        s10, 638855
                  nop
                  slti         a4, s9, 277
                  sll          t0, s6, s6
                  xor          t1, t6, a5
                  sltiu        s10, t1, 623
                  sra          t4, s9, tp
                  xor          t1, s9, s2
                  sll          ra, t5, s1
                  addi         a2, s3, 346
                  lui          t1, 510123
                  xor          t1, t2, ra
                  sltu         s7, a3, s11
                  and          t4, a2, t3
                  or           s7, s5, t3
                  ori          gp, a7, 1830
                  sltiu        tp, s8, -1592
                  srli         t3, a7, 0
                  sltiu        s9, s3, -1616
                  sltiu        a5, tp, 1743
                  srai         a4, s7, 22
                  xori         s11, s0, -1240
                  sltu         s2, sp, t3
                  or           a6, s10, s0
                  sub          gp, t0, s11
                  lui          a1, 543387
                  addi         a1, ra, -681
                  slli         s2, s5, 11
                  lui          s0, 44501
                  andi         s5, t2, 757
                  slt          zero, a0, s7
                  slt          t3, t4, s10
                  sll          s7, t0, sp
                  slt          tp, a3, a0
                  sub          s2, t6, t2
                  xori         t5, s6, 1689
                  slli         t5, t2, 14
                  sll          s5, a6, zero
                  andi         s10, s7, -1660
                  sra          a3, a7, zero
                  and          t4, a4, s6
                  sltu         t6, t4, zero
                  sll          s5, t3, a5
                  sltu         a5, tp, t0
                  slt          a4, s1, s10
                  and          s7, t4, sp
                  ori          a1, t2, 698
                  sltiu        t5, a1, 377
                  nop
                  sll          sp, t2, s8
                  slli         s5, ra, 2
                  xor          t0, a3, a6
                  sub          a1, t6, s3
                  xor          gp, s8, s3
                  sltiu        a5, gp, 1388
                  slti         s2, a2, -88
                  sll          s8, s3, t5
                  srli         a6, t3, 7
                  ori          ra, a7, -909
                  xor          sp, a3, s11
                  xor          a1, s11, t6
                  xor          tp, t6, s1
                  ori          zero, t5, -875
                  srl          t1, sp, s10
                  xor          s5, t5, s4
                  sll          a1, gp, a2
                  add          tp, t0, s10
                  addi         gp, t3, -1071
                  xor          a2, s10, s5
                  addi         s2, s9, 24
                  slti         a6, a4, -1306
                  lui          zero, 132366
                  sra          s3, t2, a1
                  xori         s0, a4, -240
                  sra          s0, s3, s6
                  sltiu        t5, s6, -772
                  sll          t4, s6, t6
                  slti         s8, s3, -1074
                  slti         a2, t4, 1064
                  lui          s0, 848656
                  slt          s1, t0, gp
                  srl          t3, a1, a5
                  sltu         a1, s3, a2
                  srl          s4, t1, t6
                  slli         t4, t2, 11
                  sltu         s10, s8, s7
                  slt          a5, a0, gp
                  xor          s0, t3, a1
                  addi         a2, t6, 185
                  and          s3, t0, s6
                  or           s5, t3, a0
                  sltiu        a3, zero, -1774
                  or           s8, s1, t3
                  slt          t1, t4, s3
                  or           t6, s3, a4
                  addi         t5, a2, -1674
                  nop
                  and          t3, a0, s5
                  and          s0, a1, gp
                  nop
                  andi         a0, a1, -156
                  add          s2, s7, a6
                  slti         a3, s2, 920
                  sub          s2, s5, s4
                  slli         t5, s4, 16
                  xori         t4, a7, 520
                  ori          s3, a0, 127
                  and          s11, a1, a3
                  lui          s1, 397865
                  xor          t0, s10, s0
                  xori         t1, s10, 318
                  ori          s8, s8, 317
                  sltu         t1, s1, a3
                  xori         s4, t5, 1815
                  sll          a1, s8, a4
                  sub          s0, s1, t1
                  ori          s0, a4, -2032
                  auipc        zero, 212742
                  srli         t6, tp, 27
                  addi         s2, tp, -701
                  srli         s1, s9, 31
                  srli         a5, ra, 25
                  sra          s8, a6, sp
                  nop
                  srl          s2, a5, t1
                  auipc        a4, 1006673
                  and          a6, a6, s1
                  slt          s11, s9, s10
                  auipc        gp, 884867
                  ori          s5, a4, 1017
                  slti         s9, a4, 948
                  sltiu        s7, a7, -1811
                  sra          s8, s1, s5
                  andi         a5, tp, -1305
                  srai         a3, s1, 28
                  andi         t5, t2, -295
                  sll          ra, t2, gp
                  sll          s9, s5, gp
                  or           a5, t6, s1
                  xor          s5, a2, ra
                  or           tp, s3, a4
                  srl          a0, a6, s11
                  srli         a4, s2, 5
                  lui          s7, 447888
                  andi         a1, a5, 513
                  srli         s4, ra, 25
                  srl          s5, a5, t1
                  nop
                  add          a6, s7, t5
                  srai         a6, s3, 10
                  slti         t4, s8, 1706
                  slli         s0, s11, 8
                  sltiu        t3, t6, 1457
                  srl          s5, a4, s11
                  sub          s10, s1, t3
                  sltu         gp, t6, t3
                  ori          s8, t3, -142
                  srai         s0, tp, 9
                  srai         s5, a0, 21
                  and          a4, a3, zero
                  sltu         a2, a0, a2
                  xor          s2, a7, s8
                  slli         t1, s1, 1
                  srai         a3, s11, 31
                  srli         t0, t6, 5
                  slt          s9, a6, t4
                  andi         t3, a6, 1071
                  slti         a3, t6, 809
                  sra          tp, a3, a3
                  addi         s9, s0, 1117
                  srai         a2, s9, 9
                  sltiu        sp, s7, 1458
                  sltiu        t4, a7, -1932
                  srl          t4, a6, s2
                  sub          a6, a2, t6
                  nop
                  srli         t3, a0, 18
                  ori          s0, t6, 868
                  slli         t1, s1, 17
                  addi         t1, s11, -1085
                  srai         a4, s5, 2
                  sra          s9, ra, a0
                  sll          a5, a0, zero
                  srli         ra, s1, 23
                  sltu         a6, s0, a6
                  add          gp, a6, sp
                  auipc        gp, 879110
                  sltu         a6, zero, s8
                  xori         t5, t4, 526
                  auipc        s4, 535837
                  srl          tp, s8, zero
                  or           t5, a4, s11
                  addi         s7, a4, -2035
                  xori         t6, a7, 1339
                  srli         s5, t2, 18
                  slli         a3, s10, 4
                  sll          a3, t1, sp
                  and          sp, a4, a4
                  slt          t1, a1, s9
                  lui          a0, 397765
                  ori          zero, sp, -1083
                  srli         s3, a5, 1
                  or           s0, s4, t0
                  slli         s2, tp, 1
                  slti         s3, a6, 1972
                  andi         tp, s1, 905
                  sltiu        s5, s3, -1338
                  slli         a3, ra, 26
                  nop
                  ori          a3, s4, 1365
                  andi         s10, t0, -296
                  slt          s2, ra, s10
                  ori          a2, s10, -45
                  lui          gp, 703542
                  sub          s7, a3, s11
                  slt          a3, a7, s0
                  sll          t4, zero, s3
                  ori          t4, t3, -1570
                  ori          s8, t5, -771
                  and          s7, t5, gp
                  auipc        a6, 420697
                  sra          s4, s2, a6
                  auipc        s1, 845230
                  sll          s4, t2, tp
                  xori         t1, gp, -802
                  slti         zero, a7, -1574
                  slt          s11, a1, s8
                  sll          t4, s4, gp
                  slt          s11, t2, t0
                  srl          s10, s10, s7
                  sltiu        s10, gp, -1692
                  lui          t3, 7134
                  srai         t6, s10, 16
                  xor          a3, ra, t4
                  xori         a5, t3, -463
                  auipc        tp, 123168
                  ori          s10, s2, -113
                  nop
                  add          s2, s0, tp
                  auipc        a4, 1006000
                  lui          tp, 734256
                  andi         s2, s5, -468
                  add          s8, s11, t6
                  slli         t0, t0, 24
                  sll          s10, t4, s1
                  sra          s8, s11, t2
                  or           ra, zero, a4
                  add          a6, s0, a0
                  slt          t0, t4, t2
                  xori         s3, s2, 2045
                  andi         a5, s9, 616
                  sltu         s4, t0, s5
                  srl          sp, t2, s10
                  slli         sp, t2, 0
                  sltu         gp, t6, t4
                  srai         s7, a2, 3
                  andi         t1, s0, -1688
                  nop
                  sltiu        s11, s9, -1760
                  srai         s11, s8, 18
                  srli         s0, a6, 13
                  and          a1, s2, sp
                  sltu         a5, s4, t3
                  add          s7, gp, s5
                  sra          s4, t1, s10
                  and          s7, s0, zero
                  srli         s4, s11, 12
                  auipc        s5, 285774
                  srai         gp, s4, 22
                  and          s11, t1, s3
                  lui          a6, 279321
                  xori         sp, s0, -1903
                  sltiu        a2, s11, -1340
                  ori          ra, s10, 1302
                  sltu         t0, s5, a3
                  addi         s9, t6, 1594
                  sub          s2, s3, s10
                  xor          tp, a2, s11
                  add          s1, sp, sp
                  auipc        a4, 86295
                  sra          t1, ra, t4
                  and          s5, a0, s10
                  and          t5, a2, sp
                  xori         sp, a1, 1352
                  sll          a1, a3, a0
                  slli         tp, s10, 19
                  add          tp, s10, s10
                  lui          a4, 526127
                  slt          t0, gp, s1
                  slli         s4, s10, 17
                  lui          t1, 110624
                  sra          s9, s4, t2
                  andi         sp, tp, -1422
                  ori          t3, sp, -209
                  srli         s9, s8, 30
                  addi         a4, t5, -300
                  srli         t6, s4, 17
                  sub          t5, s3, a5
                  xori         tp, s3, -591
                  srai         t1, t4, 20
                  srai         a1, s4, 29
                  nop
                  xori         t6, s9, 103
                  nop
                  or           s9, t4, t1
                  xor          s5, s9, a0
                  slli         a2, s6, 30
                  ori          a4, a4, 1110
                  xori         tp, a3, -1047
                  or           gp, a7, s3
                  add          s2, a3, s6
                  and          s9, a1, s0
                  slti         s2, s1, -981
                  andi         a0, s9, 858
                  and          t4, t2, s5
                  slli         sp, s0, 29
                  sll          t3, s7, t1
                  nop
                  srli         s2, ra, 18
                  sll          a5, t4, s7
                  xor          s10, gp, tp
                  slti         s0, a0, 1799
                  slti         a0, t3, -1732
                  sltu         t1, a2, s6
                  srl          tp, t0, s2
                  auipc        a6, 553182
                  ori          s4, a2, 6
                  slli         s11, s9, 4
                  lui          s10, 381664
                  and          s3, t1, t4
                  sll          t4, a1, s9
                  sltu         t6, a5, t5
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s2, 0x80000000
                  li           t1, 0xffffffff
                  li           s8, 0xffffffff
                  li           s10, 0x80000000
                  li           t0, 0x0
                  li           t5, 0xffffffff
                  li           s3, 0x0
                  li           s1, 0xffffffff
                  li           s7, 0x407cac85
                  nop
                  auipc        s3, 997714
                  auipc        s1, 28706
                  addi         t0, t1, 1884
                  sub          t1, s8, s10
                  addi         s2, t0, 1507
                  sub          t1, t0, s2
                  add          t1, s1, s3
                  addi         t6, t1, -898
                  sub          t1, t5, s10
                  addi         t0, s8, -1651
                  addi         s8, s10, -869
                  lui          s1, 1040577
                  auipc        t1, 130601
                  lui          s2, 990599
                  sub          t6, t1, t5
                  lui          s2, 638313
                  nop
                  add          s7, s1, s3
                  addi         s8, t5, 1978
                  add          t1, t0, s10
                  nop
                  lui          t0, 569734
                  addi         s10, t5, 345
                  nop #end riscv_int_numeric_corner_stream_12
                  sll          a4, t0, s2
                  slti         ra, t4, -1653
                  sra          s7, s4, s11
                  xor          s9, s9, s8
                  andi         s4, t1, 1363
                  add          t4, s8, s11
                  andi         t5, a7, -299
                  add          s0, s10, a2
                  slti         s3, a6, 854
                  sll          a1, s0, a2
                  srai         zero, s5, 21
                  slt          a4, s10, s11
                  sltiu        a3, a2, 493
                  lui          s1, 402627
                  add          t6, t5, s4
                  sra          sp, t3, a3
                  sltu         tp, a4, s9
                  sltiu        a4, t0, 450
                  srl          s11, s3, zero
                  xor          s10, s8, s2
                  nop
                  slt          ra, zero, t6
                  add          s3, s5, gp
                  andi         zero, zero, -543
                  sub          ra, s10, t2
                  sll          s2, s5, t5
                  sub          t5, t4, tp
                  sub          t5, t4, a2
                  srl          gp, a2, s1
                  add          t6, t3, a7
                  xori         a3, s1, -136
                  slti         a2, s3, 174
                  or           s5, s10, a0
                  sltiu        s10, sp, 1515
                  nop
                  lui          tp, 884834
                  auipc        t5, 962848
                  andi         t6, s5, -268
                  srai         zero, gp, 26
                  srl          t1, t6, s11
                  slli         s3, t5, 21
                  srli         t6, t3, 7
                  auipc        a6, 237988
                  sll          s11, t2, s2
                  lui          s9, 680251
                  andi         a0, gp, 1410
                  srli         s8, s2, 4
                  nop
                  lui          s5, 425128
                  ori          s3, s7, -396
                  sll          s2, t0, s11
                  xor          t1, a3, a1
                  sltiu        s3, s1, 90
                  sub          t5, a5, s0
                  sra          t0, t3, s11
                  add          gp, a0, s4
                  andi         a6, a5, 1899
                  slti         t0, tp, -237
                  slli         tp, t4, 22
                  slt          s8, zero, a7
                  and          t0, tp, t1
                  srai         gp, a2, 9
                  lui          s2, 96910
                  slt          s7, a6, a6
                  sra          sp, t1, t4
                  slti         t6, s0, 44
                  auipc        t0, 167887
                  srai         ra, s5, 19
                  xor          s7, s11, t3
                  addi         a2, s10, 1766
                  slt          s7, s6, tp
                  sub          s3, t2, zero
                  srl          s11, t6, s11
                  lui          a5, 1041248
                  sub          gp, tp, s11
                  srai         s5, t4, 6
                  sub          s10, s9, a7
                  add          t6, t5, tp
                  li           sp, 0xefa8d94b #start riscv_int_numeric_corner_stream_26
                  li           t6, 0x80000000
                  li           a5, 0x0
                  li           s8, 0x80000000
                  li           a4, 0x80000000
                  li           t1, 0x80000000
                  li           s7, 0x80000000
                  li           s9, 0x0
                  li           t0, 0xffffffff
                  li           a1, 0x80000000
                  lui          s9, 28394
                  lui          s8, 434096
                  sub          t0, a1, t0
                  nop
                  nop
                  auipc        s7, 77250
                  nop
                  nop
                  addi         t0, s9, 1123
                  lui          s9, 564211
                  auipc        t1, 535824
                  add          sp, t0, a4
                  add          s9, s8, t1
                  add          a1, s7, a1
                  add          t1, sp, a5
                  nop
                  auipc        a1, 273715
                  sub          s8, t6, s9
                  sub          t0, t1, t6
                  addi         s7, a4, 1825
                  nop
                  nop
                  add          sp, s8, t6
                  add          s9, t6, t6
                  auipc        s8, 293161
                  addi         sp, t0, 575
                  nop #end riscv_int_numeric_corner_stream_26
                  and          t6, s3, s11
                  ori          s0, a0, -1027
                  xori         s4, ra, 497
                  srai         s4, a4, 15
                  sra          a3, s11, s2
                  ori          a4, t2, -1893
                  nop
                  slt          t0, t0, s1
                  ori          gp, s11, -419
                  sub          s10, t1, a2
                  lui          ra, 227034
                  xor          s3, a4, s10
                  srai         a3, s0, 0
                  or           s7, a5, gp
                  nop
                  srai         a1, s8, 3
                  xori         t3, zero, -1914
                  sltu         a6, t2, s2
                  or           ra, s6, s10
                  sltu         t1, s0, t5
                  slti         t5, a5, -1930
                  ori          s11, a0, -1391
                  xor          a4, a7, s1
                  slli         a1, a2, 8
                  and          s11, s1, t6
                  nop
                  slti         s1, t0, -1280
                  sll          s3, zero, s0
                  add          gp, ra, a5
                  add          a6, s0, a4
                  ori          t5, t1, 1016
                  sll          t3, t2, a2
                  nop
                  ori          s5, t2, -202
                  srl          s10, s10, a0
                  slt          a4, s4, a3
                  xor          zero, t6, s1
                  nop
                  sra          gp, a5, s6
                  sll          s9, s9, t0
                  srai         sp, t4, 18
                  slti         a5, gp, -1848
                  sra          gp, t0, t1
                  nop
                  srli         s0, a6, 14
                  nop
                  xori         a1, s8, -1711
                  andi         t0, s6, 97
                  add          a5, a6, zero
                  srli         a3, s6, 14
                  addi         s9, s11, 205
                  ori          tp, s6, -1257
                  slt          a0, ra, a2
                  slli         s1, s7, 14
                  add          s11, a7, t3
                  lui          a2, 277840
                  or           gp, a3, s4
                  andi         t4, zero, -842
                  or           s10, s2, s7
                  xori         t1, t5, -1841
                  sub          a0, s6, a6
                  srli         s0, s3, 3
                  auipc        s2, 3390
                  srl          s3, s4, s9
                  and          ra, a4, t5
                  srai         t5, s11, 5
                  addi         t5, s6, -1525
                  ori          t1, t6, 1934
                  and          ra, s4, ra
                  sll          a2, s7, zero
                  slt          t4, s1, s9
                  sra          s10, s9, s0
                  ori          s4, t2, -1559
                  nop
                  or           a1, s3, zero
                  or           tp, s10, s4
                  or           s3, t1, t0
                  slli         gp, s6, 3
                  andi         s8, zero, -810
                  andi         t4, s11, 1604
                  xori         s4, ra, 1714
                  xor          gp, t2, ra
                  slli         t5, t4, 5
                  slli         s8, t4, 24
                  xor          s3, s1, s8
                  srl          s5, a3, t5
                  sll          s8, a4, s8
                  srl          zero, sp, a5
                  sltu         t1, t5, s8
                  srli         tp, a3, 24
                  sll          zero, t6, a2
                  slti         sp, a7, -448
                  add          gp, a6, zero
                  srai         s11, s0, 1
                  sltu         s7, ra, zero
                  andi         t1, t0, 918
                  sltu         a2, t3, sp
                  srli         t1, s6, 14
                  srl          a1, t1, a3
                  and          sp, s1, s3
                  slti         t1, t6, 1281
                  slt          sp, s6, t2
                  ori          zero, a7, -580
                  nop
                  sra          s0, s5, s6
                  addi         s1, zero, -547
                  sub          a6, gp, sp
                  lui          s11, 896988
                  add          s11, a2, a0
                  srai         s4, t0, 21
                  srai         s0, s9, 23
                  sltu         t4, zero, s1
                  add          s0, s2, t4
                  slti         a5, t1, -634
                  addi         t0, a1, 1555
                  ori          t6, a5, -1864
                  srai         s3, t1, 4
                  ori          a0, s8, 741
                  srl          s5, s3, s2
                  sltu         sp, t5, a7
                  sltiu        sp, s3, -1798
                  sltiu        a0, a2, 617
                  nop
                  sltu         a2, t0, a1
                  ori          t5, s8, -973
                  and          a0, sp, zero
                  add          a1, s2, a7
                  add          s1, a2, t2
                  sll          t5, s3, t5
                  slt          a2, a5, a6
                  andi         t1, a0, 1253
                  sll          s0, t5, a2
                  sltu         s5, a5, s1
                  sltu         s10, a4, t5
                  add          s7, t4, s4
                  andi         s11, zero, 841
                  srl          t0, t6, a1
                  auipc        t6, 737599
                  addi         a2, s10, 1538
                  andi         t5, gp, -1945
                  sltiu        s7, a1, -1990
                  slt          s2, t4, t3
                  sltu         s0, a1, s11
                  sll          t3, s5, s1
                  sll          gp, s10, t5
                  slti         t5, t5, 813
                  sll          s7, a2, a4
                  slti         a5, s7, 955
                  sll          s8, a6, s8
                  sub          s9, a0, a1
                  slt          t1, s10, a7
                  sra          a6, s5, a1
                  sll          s0, s6, s0
                  srai         s1, a3, 3
                  slti         t3, a3, 1987
                  nop
                  and          t0, t2, sp
                  nop
                  srl          gp, ra, tp
                  lui          s7, 1013037
                  slli         tp, a3, 1
                  xori         s7, t6, -1364
                  add          ra, sp, t3
                  addi         a6, s5, -951
                  sub          a5, a3, a1
                  srai         s0, s9, 3
                  ori          t1, s1, 1487
                  xor          sp, s1, a0
                  srai         ra, s0, 31
                  srai         s10, zero, 22
                  or           gp, s5, t4
                  sltiu        a1, t1, -1134
                  add          s9, s9, t4
                  xor          a4, s9, s3
                  and          tp, sp, s11
                  nop
                  xor          gp, a4, gp
                  xori         s2, t0, 336
                  or           s11, s11, s9
                  srl          t5, a7, s1
                  and          s9, a6, t3
                  andi         s11, a7, 1784
                  sltu         tp, s7, t0
                  slti         sp, t4, -1664
                  or           s7, s11, s3
                  and          a5, s1, ra
                  lui          t5, 324221
                  nop
                  sra          s11, a6, s1
                  sltiu        a1, s8, -1910
                  add          a2, t4, s7
                  xor          a4, t6, a0
                  sra          a0, s7, a0
                  sll          s1, a1, zero
                  lui          t6, 352413
                  srl          a5, s0, t0
                  xori         s7, t1, 1524
                  xor          t5, s5, t6
                  sub          t1, s7, zero
                  sltiu        s8, gp, -1537
                  or           s8, a2, a5
                  auipc        ra, 196077
                  lui          t4, 363903
                  nop
                  slti         s10, s3, 1082
                  slti         s5, s3, -694
                  or           s4, a3, a2
                  lui          a5, 224456
                  xor          a6, a7, t6
                  sll          t5, t5, ra
                  xori         t0, s2, 652
                  sll          a2, s2, t3
                  slt          s4, ra, s1
                  xor          a1, s0, s2
                  sltiu        a0, s5, 1811
                  sltu         s0, ra, a2
                  and          ra, t1, ra
                  xor          a3, s10, s6
                  nop
                  xori         a6, a2, 1071
                  or           zero, s4, t4
                  xor          t4, t4, t0
                  sltiu        s11, t1, -1545
                  sltu         s4, ra, t1
                  sltu         s9, sp, a7
                  addi         ra, a1, 1187
                  xor          a1, a5, a0
                  add          a2, t1, s8
                  auipc        s3, 1017179
                  slt          s10, s8, a0
                  nop
                  and          t1, sp, a4
                  srai         a0, t6, 12
                  ori          s5, a4, -100
                  slli         a4, t5, 12
                  andi         a5, a3, 2047
                  lui          tp, 409183
                  sltu         s7, s2, s8
                  ori          a4, tp, -170
                  auipc        s7, 115065
                  xori         s11, s4, -1625
                  lui          s7, 253806
                  or           sp, s0, t4
                  auipc        s4, 968179
                  nop
                  and          a6, s9, s0
                  sub          s2, s6, t6
                  srli         s9, a0, 21
                  ori          t0, s3, 1671
                  xor          s2, s1, s5
                  sub          s1, gp, a4
                  or           a4, s3, s10
                  sub          t4, ra, t4
                  slti         s0, a7, -1946
                  sltiu        t4, a2, 958
                  sra          t6, a4, s2
                  lui          sp, 863625
                  addi         s3, a0, -533
                  srli         a5, ra, 28
                  slt          s2, sp, s4
                  srli         t4, t5, 12
                  xori         s11, s10, -1295
                  sra          t6, t0, s4
                  lui          t5, 743904
                  add          s2, a0, a2
                  sub          s2, s4, a1
                  add          a1, ra, ra
                  srli         s10, zero, 14
                  ori          a0, s8, -1630
                  sltiu        s1, a6, 1638
                  slti         tp, s4, 1174
                  nop
                  auipc        t6, 973372
                  slli         s2, ra, 19
                  add          a4, s10, t4
                  addi         s1, t6, -1123
                  sub          t6, zero, a2
                  and          a5, t3, s4
                  andi         s3, a4, -1718
                  sltu         t4, a4, sp
                  sltiu        t1, s3, -445
                  nop
                  xori         t3, sp, -450
                  slti         s1, s6, -1162
                  srl          a0, gp, t0
                  add          t0, a1, zero
                  addi         s9, s2, 1848
                  add          a3, zero, s1
                  sltiu        a5, sp, 1875
                  xor          a5, sp, t5
                  ori          a4, s10, -163
                  ori          t5, t3, -920
                  slti         t0, s2, 1387
                  srli         ra, a3, 20
                  addi         a0, zero, -382
                  nop
                  srl          a0, a6, t3
                  addi         a1, zero, 1571
                  srl          a0, s7, t0
                  sltiu        t1, zero, -536
                  sltiu        s2, s1, 729
                  sub          ra, s4, s1
                  addi         t0, t3, -437
                  auipc        a0, 262341
                  sltu         s8, t0, zero
                  slti         a0, tp, 184
                  sub          a6, t2, sp
                  sltiu        t0, t0, -996
                  xor          a1, a4, t3
                  lui          s9, 29356
                  auipc        s7, 14573
                  andi         a4, s0, 338
                  add          t5, s5, tp
                  slti         sp, t0, 1368
                  add          a4, a0, t4
                  srli         s9, s8, 23
                  srai         s0, a2, 12
                  or           a3, s8, a2
                  sltu         s11, s8, a6
                  sll          gp, a7, s8
                  sra          s1, t6, s11
                  srl          t3, s11, gp
                  add          t6, a3, s10
                  addi         a2, t3, 1358
                  slti         s7, t1, -159
                  ori          s8, a2, -1295
                  xor          a4, s2, s11
                  sltu         a3, t2, zero
                  sll          s11, a5, t4
                  xor          s0, s5, s8
                  sub          s0, t6, a2
                  slt          tp, s2, a1
                  slt          s9, s4, ra
                  sltiu        s9, zero, 1931
                  slt          s9, tp, s2
                  srai         a0, a7, 7
                  sltu         s11, ra, a0
                  ori          a1, gp, 327
                  andi         s4, ra, 856
                  ori          s1, t4, 945
                  srli         a0, tp, 21
                  sub          s11, a5, a4
                  ori          t6, a7, -777
                  xori         t6, zero, 715
                  auipc        a6, 84817
                  sll          t0, s7, a1
                  srai         zero, zero, 10
                  srl          t3, a3, s8
                  slt          a6, a0, s6
                  lui          s10, 879579
                  slti         a5, sp, 1422
                  slli         t4, sp, 12
                  xori         a5, s7, 497
                  lui          s7, 1023097
                  sub          s2, t5, a7
                  srl          a0, s0, a5
                  sll          sp, s7, t4
                  slt          a5, tp, s9
                  srai         s10, t3, 20
                  add          t3, gp, a0
                  srl          a6, t1, a1
                  andi         a0, s9, -942
                  and          t0, s4, t1
                  sub          t0, a5, s1
                  sltiu        t4, s0, -168
                  add          s4, a7, t0
                  ori          s3, a5, 1534
                  srli         s11, s7, 2
                  xor          s5, a2, s10
                  xor          t4, a2, a2
                  ori          t4, s10, -741
                  lui          t5, 433619
                  sub          t3, s4, t1
                  lui          t1, 659267
                  xor          t5, t4, t2
                  lui          s5, 894663
                  slt          s3, s1, s3
                  sltu         s5, s6, zero
                  srli         zero, s6, 13
                  ori          zero, s2, 1882
                  or           s3, t2, t5
                  andi         a3, s4, 1754
                  or           a0, t2, s5
                  sra          t5, a2, s5
                  and          a3, a7, s0
                  and          a4, s1, gp
                  xori         a1, s3, -999
                  srl          a6, a4, s6
                  sltiu        a4, a3, 1513
                  xori         t4, s3, -774
                  xori         a5, t1, -872
                  slt          t1, s0, a1
                  xori         a2, t4, -351
                  sub          s3, ra, t4
                  slt          a2, a3, s9
                  addi         a6, s7, -1725
                  addi         t3, t6, -483
                  nop
                  addi         ra, zero, -709
                  srli         t4, t0, 10
                  srl          a1, s11, s7
                  slti         tp, a0, -1524
                  sltiu        s3, zero, 1153
                  and          t0, s7, ra
                  xor          s4, t4, s0
                  sra          gp, t1, t2
                  sltiu        t3, s3, -705
                  slti         a6, zero, 1737
                  or           a6, ra, s3
                  and          t5, gp, s0
                  slli         t5, a7, 27
                  srai         t4, s5, 5
                  lui          s2, 511283
                  ori          ra, a5, -1910
                  srli         t5, s7, 11
                  sltu         a3, t3, s10
                  ori          t6, t1, 1092
                  slti         a6, t3, -1380
                  add          a5, s2, s2
                  addi         sp, ra, 330
                  srl          a2, tp, sp
                  andi         s8, s7, -359
                  srl          s10, t1, s11
                  and          t3, s3, s5
                  ori          t6, sp, -1933
                  lui          s0, 131201
                  srai         a6, a6, 15
                  srli         a4, t0, 15
                  ori          s4, a4, -1260
                  slti         t3, a2, 475
                  andi         ra, a6, -1985
                  slt          s3, s3, tp
                  sra          s4, s10, s5
                  srl          s9, t0, a7
                  or           t6, a1, t4
                  slt          a6, s5, gp
                  andi         s3, t5, 859
                  ori          s7, t0, 1193
                  ori          a6, t2, 1040
                  add          t6, s7, s4
                  xori         s3, a6, -2034
                  slti         s10, a0, -1126
                  sll          s5, t2, s1
                  srl          sp, a6, a3
                  or           zero, gp, a7
                  sll          s1, s4, sp
                  slti         a0, s7, -1981
                  slli         a0, t2, 24
                  add          t0, a2, a0
                  srai         s2, s3, 5
                  nop
                  sltiu        s11, a0, -838
                  srli         gp, a5, 3
                  sltu         s11, s7, s0
                  sra          s5, s5, s10
                  xor          t3, a0, s11
                  srli         s2, sp, 19
                  sll          tp, s1, a2
                  sltiu        s2, s3, -1522
                  nop
                  srl          a5, a5, s9
                  srai         s7, ra, 25
                  sub          a4, gp, s11
                  srai         a0, t5, 28
                  addi         s5, s11, 275
                  addi         sp, t5, 1029
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           s1, 0x8d1c664c
                  li           t4, 0x0
                  li           a4, 0xd9ec1e17
                  li           s3, 0xf5033f00
                  li           a0, 0xbd3ef790
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  li           sp, 0x80000000
                  li           s4, 0x0
                  add          t4, t4, t4
                  auipc        a4, 1012967
                  sub          t4, s8, s3
                  lui          t4, 114277
                  sub          a0, s1, sp
                  add          s4, s2, gp
                  add          t4, gp, a4
                  nop
                  nop
                  lui          gp, 196857
                  auipc        s1, 783649
                  auipc        s8, 578165
                  sub          gp, s3, gp
                  lui          s4, 939763
                  nop
                  sub          s1, a4, s8
                  auipc        t4, 497946
                  auipc        t4, 492235
                  sub          sp, s4, a4
                  add          t4, a4, gp
                  add          s1, t4, s3
                  lui          s1, 633025
                  add          s1, s8, s2
                  nop
                  sub          s2, s1, s4
                  auipc        s4, 82560 #end riscv_int_numeric_corner_stream_21
                  nop
                  ori          s1, t3, -242
                  srai         s10, s4, 21
                  lui          zero, 510528
                  addi         t6, a1, 1022
                  ori          a5, a5, -336
                  add          a0, s9, a6
                  sub          s11, tp, t2
                  slt          s4, s6, s10
                  slti         t5, t5, -468
                  ori          a1, t3, 1262
                  add          s10, gp, zero
                  xor          t0, tp, zero
                  sll          s5, a1, s4
                  auipc        s9, 57624
                  andi         s3, s11, -539
                  sra          zero, s0, t5
                  slt          s11, a0, a6
                  andi         a2, ra, 182
                  srai         t0, tp, 21
                  slli         tp, a4, 28
                  ori          t6, zero, -1177
                  or           s3, s7, s5
                  slli         t3, t3, 14
                  srl          s2, t4, s4
                  srl          a2, a0, sp
                  lui          s5, 67092
                  addi         gp, a6, 46
                  sub          s5, s11, s10
                  sltu         gp, a4, s2
                  sltiu        s11, a0, -1764
                  addi         s4, t3, -1283
                  sll          a4, a2, t0
                  or           a6, s9, gp
                  slti         t3, a0, -737
                  sltiu        ra, sp, -386
                  sltiu        s1, t5, -995
                  sra          s9, s10, sp
                  ori          t6, zero, 624
                  and          a6, gp, zero
                  srl          a3, a5, s11
                  nop
                  srai         s2, t5, 3
                  or           a6, s11, a4
                  slti         s0, sp, -553
                  and          t6, gp, s8
                  sra          a3, s9, s6
                  slt          ra, s2, a6
                  slt          a3, s5, s3
                  andi         t4, t2, -632
                  slt          t4, t5, s5
                  sll          tp, zero, ra
                  sltu         t0, s6, zero
                  or           zero, a6, a5
                  slti         s11, a4, 462
                  and          t1, s7, zero
                  auipc        s1, 1021286
                  srai         s4, s11, 8
                  add          s2, s10, a0
                  and          ra, a2, s0
                  slli         s8, s6, 6
                  xor          gp, a1, a3
                  or           t1, s11, a6
                  ori          t3, t4, -1077
                  xor          a5, s9, t4
                  addi         ra, ra, 1734
                  or           a6, t6, tp
                  ori          t1, s7, 1860
                  and          s2, a5, a0
                  sub          t1, a4, s8
                  nop
                  sltu         s8, s1, s2
                  srl          s7, s1, s6
                  auipc        s7, 445896
                  and          s9, s1, s2
                  xori         a4, s10, -531
                  srli         a2, s0, 20
                  lui          t4, 153531
                  or           s5, t5, s11
                  and          s1, s6, t5
                  ori          s9, s2, -1684
                  add          s10, t0, a1
                  slt          a3, a4, zero
                  sltu         s7, a0, tp
                  andi         s10, tp, -455
                  andi         s1, t6, -76
                  andi         a6, a5, 1192
                  lui          t1, 1019563
                  sltiu        a6, a3, 614
                  sltu         t0, t4, a7
                  or           t5, t3, t1
                  andi         t0, a3, 1463
                  slt          a0, tp, s3
                  sll          a6, a7, s9
                  ori          gp, s2, -1137
                  sltu         a5, t2, a6
                  sltiu        a6, ra, -570
                  xori         t5, a3, -1230
                  sub          t1, s9, s7
                  addi         zero, a7, -332
                  sltu         s9, a4, a1
                  or           t4, a1, t5
                  sltu         t5, t6, s5
                  sltu         a4, s0, s1
                  add          s2, a7, a0
                  slt          t5, t5, ra
                  or           s7, a5, ra
                  xori         s0, ra, -760
                  sltiu        t1, t3, -2046
                  andi         t1, a7, -1229
                  sra          s7, sp, gp
                  andi         gp, a6, -402
                  sra          s8, s1, zero
                  nop
                  xor          ra, s4, t3
                  srai         s5, s7, 16
                  xor          a1, s5, a2
                  sll          s7, s5, t6
                  and          a1, s11, s5
                  lui          s7, 991796
                  slt          s7, s8, t4
                  and          a2, s1, s7
                  slti         s0, a0, -1807
                  sub          a3, s4, s5
                  or           s4, s0, a6
                  srai         t5, s5, 14
                  srli         a1, s4, 27
                  or           t4, s2, s0
                  auipc        t6, 537323
                  addi         s11, s3, 117
                  sltiu        sp, a7, -1027
                  slti         s10, t0, -1590
                  add          s7, a3, t3
                  or           s2, s10, tp
                  sltiu        s0, t6, 920
                  and          s0, a6, a2
                  slt          s11, sp, t3
                  addi         s1, s6, -2034
                  nop
                  nop
                  lui          t6, 703460
                  or           zero, s2, s7
                  or           s9, t5, t5
                  srl          t5, t0, t3
                  or           a0, a7, a6
                  lui          a6, 554797
                  sra          s11, s4, a3
                  andi         s3, t5, 863
                  sltiu        ra, t5, -900
                  add          a5, s3, t1
                  srai         t1, s10, 3
                  auipc        zero, 878143
                  or           s4, s5, t6
                  auipc        tp, 727980
                  xor          gp, t5, s5
                  slti         a2, s10, -187
                  xori         s9, s10, 1704
                  srli         zero, t5, 21
                  srl          s2, s3, ra
                  xori         a6, a4, 1265
                  ori          t5, s6, -397
                  slt          t3, a5, s4
                  andi         s7, s10, 2032
                  srl          tp, t5, sp
                  sll          s2, a5, s9
                  ori          s7, s4, -571
                  add          zero, t2, t3
                  sra          gp, a7, a5
                  sltiu        s2, zero, 937
                  nop
                  srl          t4, a7, s0
                  nop
                  slli         t5, a2, 6
                  lui          sp, 178926
                  srai         a2, t5, 19
                  ori          a4, a1, -1637
                  and          t4, a2, ra
                  sll          t5, t3, s0
                  nop
                  xori         s1, ra, 738
                  srli         a4, t4, 19
                  sltiu        t5, t3, 465
                  ori          s5, t5, -1753
                  srai         t0, a0, 2
                  srai         a5, s8, 2
                  slti         t5, a3, -1032
                  sltiu        t4, s7, -1455
                  xor          t0, tp, a7
                  srli         s7, t4, 5
                  lui          s11, 709480
                  sltu         t1, s0, s7
                  andi         s8, a0, -297
                  srai         s3, s7, 20
                  add          a4, a0, gp
                  nop
                  sub          zero, a3, s6
                  add          a3, a2, s4
                  xori         ra, gp, 1266
                  srli         a2, s10, 22
                  sll          s4, a2, t3
                  slli         sp, a7, 10
                  nop
                  lui          s5, 1037405
                  andi         t1, s6, -399
                  sra          s4, zero, s1
                  or           s1, t4, s10
                  sltiu        s0, gp, 1379
                  add          a4, s2, a7
                  sltiu        a0, a6, -1998
                  xori         s0, gp, 560
                  sub          s5, s2, s5
                  lui          t5, 608029
                  lui          a6, 218115
                  srl          a0, s5, a7
                  ori          s1, s11, -1727
                  srli         a6, s7, 31
                  srai         sp, s6, 21
                  slli         gp, a0, 18
                  sub          s8, s11, t0
                  sltu         a5, s11, a5
                  ori          s10, a5, 1143
                  sltu         s2, a3, a7
                  srai         s9, s2, 3
                  sub          s1, s6, s3
                  slli         s10, ra, 14
                  srai         s11, s10, 19
                  sll          t4, t6, s2
                  srl          gp, t6, s7
                  sub          t5, s11, a4
                  sra          s2, s7, a0
                  add          sp, t5, gp
                  sra          s7, s9, ra
                  lui          t6, 135939
                  sra          a3, a3, s4
                  slti         t1, tp, 1882
                  auipc        tp, 496069
                  slt          s8, s2, t0
                  addi         s7, t3, 912
                  lui          a4, 953741
                  xor          t0, s2, ra
                  add          a3, s11, s5
                  slli         a4, s11, 4
                  srai         t6, t1, 26
                  srai         s4, t4, 30
                  ori          gp, s3, 493
                  sub          a2, s10, t0
                  andi         a6, a4, 962
                  andi         s8, sp, -945
                  srai         ra, s7, 14
                  sra          s1, a4, t3
                  slt          s1, s3, a4
                  sltiu        t6, t2, -594
                  sll          t4, t0, t1
                  slli         a0, s4, 17
                  slt          s3, s7, s0
                  slli         s5, t3, 2
                  addi         t3, a7, 431
                  sra          t0, a5, t0
                  auipc        t3, 1032621
                  or           a1, s0, gp
                  xor          a5, s11, s0
                  andi         a2, s3, -1157
                  add          s7, a1, ra
                  srai         t1, s1, 11
                  srli         sp, a6, 26
                  sltu         a4, a0, sp
                  lui          a0, 231354
                  slli         a1, s3, 19
                  nop
                  srl          t4, a5, a2
                  addi         t5, s4, -553
                  slti         s5, s3, 399
                  or           a0, a7, t4
                  srai         a2, s10, 3
                  auipc        t4, 41778
                  and          s10, tp, a3
                  sra          a6, s4, a3
                  slli         s9, s0, 25
                  nop
                  srl          s3, s10, tp
                  sltu         s2, a3, t3
                  add          s3, s4, t2
                  sra          t4, s1, t4
                  or           s0, t0, t3
                  srl          sp, t1, a7
                  srai         s8, t3, 26
                  ori          a3, s0, -712
                  andi         s7, t5, 793
                  sra          a1, a6, s0
                  srai         a2, t0, 3
                  xor          zero, s2, a5
                  sltu         s4, tp, s5
                  andi         s7, a6, -614
                  slt          a0, sp, s8
                  srl          tp, t0, a3
                  auipc        sp, 1030277
                  srai         t6, s4, 18
                  andi         a1, t2, -718
                  xor          a1, zero, s1
                  add          a0, sp, t4
                  sll          tp, s9, gp
                  srai         tp, a3, 28
                  sltu         s8, t2, a6
                  xor          s8, a1, a3
                  slt          t1, s7, t3
                  addi         t1, s7, 1030
                  srai         s1, s2, 17
                  sltu         t1, a3, a5
                  nop
                  add          ra, t6, a7
                  sll          s1, a6, s4
                  slt          a6, a7, s9
                  and          s3, s11, s0
                  slt          a1, s8, s9
                  slt          t4, t4, t0
                  srai         s7, s4, 10
                  sltiu        t3, a1, 757
                  or           s4, t3, s2
                  slli         s5, a0, 17
                  sra          t3, s8, s11
                  auipc        a0, 558307
                  sll          a1, s2, s5
                  slt          a6, a0, s6
                  ori          a0, a4, 1635
                  slt          s3, a0, a5
                  andi         a1, s11, 544
                  srai         t1, a1, 0
                  addi         tp, ra, -1984
                  sub          s11, t4, a7
                  xor          s5, t1, a1
                  sub          s10, s3, s6
                  add          s4, s3, s4
                  sub          t5, sp, s6
                  and          s8, tp, a1
                  add          s3, sp, s2
                  xori         s9, a5, 952
                  sltu         ra, a1, a5
                  nop
                  sra          a1, a3, s11
                  slti         t3, t1, -1105
                  and          s11, s5, gp
                  ori          t1, t6, 758
                  and          t5, s7, s3
                  srai         s3, s9, 26
                  sll          s7, t0, s3
                  and          a4, s2, s2
                  slt          t6, s3, s2
                  andi         a4, t6, 167
                  slli         ra, t5, 31
                  sra          zero, tp, s8
                  or           s3, t1, a1
                  sltu         a6, zero, a7
                  addi         ra, s2, -731
                  or           t5, ra, t1
                  ori          zero, tp, 1082
                  slti         s10, a4, 261
                  srl          s9, s2, a1
                  ori          t4, a5, -1237
                  xor          s8, a2, s2
                  xor          s8, t0, a0
                  ori          s4, t5, -1867
                  sll          zero, ra, t3
                  andi         t6, s7, -1797
                  sltu         s7, a7, s6
                  sltiu        s4, s10, 2032
                  ori          s10, a0, -474
                  srli         s10, t3, 28
                  srli         t6, a5, 19
                  or           a6, s8, s4
                  sll          s7, gp, s5
                  or           s2, a6, tp
                  srl          gp, s8, ra
                  andi         tp, s10, -516
                  and          a5, zero, a1
                  slt          s9, t5, t1
                  slti         s7, s6, -714
                  sltiu        s3, s9, -2035
                  add          s10, t6, s9
                  xor          a1, s11, a5
                  lui          tp, 572357
                  sltu         s4, tp, s2
                  xor          t3, a2, s9
                  srai         t4, t1, 7
                  nop
                  sltiu        s3, t1, -1368
                  addi         sp, s10, -846
                  add          t1, a7, a5
                  or           s5, a2, gp
                  add          sp, gp, gp
                  sltiu        t5, gp, 269
                  sltiu        t3, sp, 1623
                  nop
                  auipc        s8, 540587
                  nop
                  xori         tp, ra, 348
                  addi         t4, s7, 1747
                  sra          a0, t5, s4
                  sltiu        s5, t2, -1536
                  slti         s10, s11, 1349
                  addi         s1, a2, -2033
                  sltiu        a0, s2, 1494
                  srai         zero, t5, 13
                  addi         s9, s9, 888
                  or           a3, zero, a7
                  or           t0, t0, s8
                  nop
                  sra          sp, t2, t2
                  srai         s9, s3, 5
                  sra          a5, a1, s1
                  sltu         s0, a0, t0
                  sll          s7, ra, s8
                  sltu         tp, s9, s11
                  xor          s0, s0, gp
                  slli         s10, a1, 18
                  sra          tp, s3, t3
                  sltu         tp, a3, s8
                  sra          t6, ra, s5
                  xori         zero, tp, -1035
                  sltu         t1, s0, t4
                  slt          a4, t5, zero
                  add          s3, t2, t4
                  slt          s7, s5, t3
                  xor          s9, a4, s1
                  srl          s8, a1, a4
                  slti         t1, t3, -1363
                  sltiu        gp, t3, -639
                  sra          a5, s10, tp
                  slt          t4, a6, sp
                  srai         s10, zero, 12
                  andi         s9, gp, -392
                  auipc        sp, 825189
                  slli         a4, s8, 6
                  srli         s9, s2, 31
                  srai         s4, tp, 7
                  srai         s4, a7, 6
                  xori         s2, t0, 924
                  slti         s7, t2, 94
                  xori         s8, sp, 399
                  xor          ra, a7, sp
                  sltiu        zero, s8, -395
                  and          s4, a5, s7
                  slli         s8, s3, 25
                  xor          s11, a2, s7
                  slli         a5, a5, 31
                  slti         t1, t3, -974
                  sltiu        t4, s1, -96
                  sltiu        t1, a0, 1140
                  or           a0, a1, a2
                  andi         t6, a2, -1779
                  slti         a0, sp, 1371
                  sltiu        a6, s2, 698
                  andi         t0, s0, -809
                  auipc        s3, 1015488
                  add          s1, ra, s8
                  add          t0, s9, ra
                  and          s7, t5, s7
                  xori         t0, s11, 1287
                  slti         a0, zero, -1299
                  slli         s8, s8, 15
                  srl          ra, s4, s11
                  ori          t5, t3, 166
                  or           s10, s11, t3
                  srli         s1, zero, 28
                  slt          t6, a2, s8
                  ori          s5, a3, -1906
                  slli         s4, s7, 23
                  andi         s5, a5, -891
                  xor          t4, s8, s0
                  or           s5, t5, s0
                  slli         t6, a5, 2
                  add          s1, zero, s6
                  srli         s1, a1, 26
                  xori         a0, a6, -644
                  or           s7, s6, sp
                  lui          s3, 735582
                  xor          a4, zero, a3
                  nop
                  and          s8, a0, a2
                  xori         a1, t4, -1219
                  sltiu        a3, s11, 1393
                  lui          s3, 793273
                  and          t5, t6, s9
                  xor          a4, a2, s9
                  sltu         a4, t2, a1
                  auipc        s7, 938173
                  add          s8, a0, a2
                  ori          tp, a5, -1996
                  add          a0, zero, a0
                  sub          a5, s6, s11
                  andi         a1, s8, -1232
                  slti         a1, s6, -1407
                  slt          s4, s1, a0
                  nop
                  and          s11, ra, s4
                  sll          s7, t4, s5
                  nop
                  sltiu        a5, t0, -1075
                  xor          s5, gp, sp
                  sltu         s7, s4, a0
                  ori          a6, s6, 70
                  add          a6, a7, s5
                  lui          t3, 606128
                  sltiu        t4, a6, -1719
                  add          gp, s9, s1
                  or           s11, a1, s0
                  and          s8, t0, t3
                  lui          s11, 91159
                  andi         s3, a2, 1292
                  ori          s7, s1, 1470
                  srli         a4, s10, 5
                  andi         s7, a4, -1008
                  ori          s7, t2, 1355
                  srli         a6, a0, 9
                  srai         gp, s9, 4
                  slli         s5, s7, 20
                  nop
                  ori          s5, a2, -146
                  sll          tp, t2, t6
                  srli         s5, t1, 24
                  sll          a1, t2, s6
                  or           a3, t1, s7
                  slli         t3, t2, 29
                  srli         t1, a0, 10
                  slli         t4, t5, 18
                  sra          s8, s3, s7
                  srl          t3, s5, t2
                  nop
                  ori          s8, t6, 131
                  sltu         t1, s5, t2
                  srli         t4, a3, 24
                  and          a5, a1, t2
                  ori          gp, s2, -693
                  slli         s2, a2, 9
                  srli         a1, s4, 16
                  andi         a1, a0, -838
                  andi         tp, a6, -621
                  srai         s11, t5, 14
                  sub          t1, zero, t1
                  nop
                  xori         t6, s0, 1372
                  nop
                  xor          s7, tp, s9
                  srli         s10, t0, 30
                  and          s1, s10, ra
                  and          a3, a3, gp
                  nop
                  addi         s3, s8, -1798
                  andi         a3, t6, 1989
                  ori          t5, t2, 975
                  srl          tp, a4, s0
                  xor          a5, s2, a6
                  slti         tp, a7, -941
                  slli         t3, t1, 12
                  srl          s2, tp, s5
                  nop
                  sub          s2, s7, s7
                  andi         s3, t2, 313
                  lui          s4, 64072
                  and          ra, s3, s1
                  auipc        a6, 701228
                  slt          sp, t4, s10
                  srai         a1, s8, 6
                  slt          t1, a0, s6
                  xori         tp, s9, -61
                  andi         s3, s11, -1850
                  addi         ra, t4, -1182
                  ori          s10, a1, 1785
                  sub          a5, a6, a0
                  andi         a0, t6, 895
                  xori         ra, a6, -407
                  addi         s1, s1, 268
                  auipc        s2, 590373
                  sra          a5, gp, sp
                  andi         s5, s1, -1154
                  xori         s0, s2, -1123
                  nop
                  sra          a5, t5, s9
                  xor          t1, a6, t5
                  auipc        t1, 11723
                  auipc        a2, 801398
                  slti         s1, tp, 13
                  xori         s0, a3, 265
                  slti         a1, s4, 233
                  addi         ra, s3, -1268
                  lui          t4, 12172
                  slli         a3, t3, 5
                  ori          s4, t4, -1424
                  nop
                  sub          a5, zero, a6
                  slli         t0, a2, 16
                  sra          a3, s0, s0
                  sub          s7, t4, s1
                  xori         s7, a1, -1591
                  slti         a0, s10, 204
                  sll          t5, s2, a5
                  srai         t0, a7, 20
                  xor          t5, gp, t5
                  sub          zero, a4, s2
                  sltiu        a6, t3, -1768
                  add          s9, t4, t6
                  or           s9, a4, a6
                  add          a5, t4, a1
                  or           s1, sp, s5
                  srli         t4, a4, 18
                  sub          s8, t6, a2
                  xori         tp, s10, -205
                  andi         a5, s5, -1638
                  sub          t6, a4, a2
                  sltiu        s5, s2, -1493
                  sub          t0, s9, s0
                  addi         t6, sp, -1309
                  lui          t6, 312983
                  sltiu        a2, s0, 2042
                  auipc        t4, 951589
                  slt          s3, s3, t2
                  xori         s1, s2, 274
                  and          s3, zero, a2
                  slti         a2, s4, 189
                  srai         s5, s6, 4
                  andi         s0, s9, 261
                  or           s7, s9, t5
                  srl          a6, a6, t5
                  srai         t0, s8, 15
                  sltu         t6, s3, t3
                  ori          t1, a6, -206
                  auipc        s8, 273718
                  sra          s3, a5, t4
                  nop
                  sub          gp, s5, gp
                  slli         a6, s11, 4
                  slti         s5, t2, -1062
                  slt          gp, ra, t5
                  srl          a0, a5, a4
                  sltiu        s4, s3, -1232
                  slti         a1, a2, -1598
                  slt          s3, a1, a1
                  add          a0, s7, s9
                  slt          s4, a6, a2
                  nop
                  ori          s2, s4, -706
                  srai         t4, ra, 12
                  xor          gp, sp, t4
                  slli         a6, s9, 26
                  slti         a0, ra, -938
                  add          s1, t1, s7
                  slli         s5, t0, 11
                  xor          s3, t3, t4
                  slli         s2, t5, 28
                  sra          tp, a1, a7
                  xori         s3, s7, -1084
                  addi         s8, s4, 1344
                  addi         zero, s8, -107
                  addi         s5, s0, 1895
                  nop
                  srai         a3, t1, 7
                  auipc        s4, 312252
                  xor          a4, ra, a0
                  or           tp, s2, t2
                  slt          gp, ra, s11
                  andi         a1, t2, 1946
                  xori         a2, s9, -861
                  and          t6, a2, a3
                  sltu         s3, s1, s10
                  sub          s10, t3, a5
                  slli         s7, s9, 12
                  sub          a3, s1, sp
                  xori         a6, t1, 1683
                  addi         s8, zero, -927
                  slt          s3, s11, a5
                  slli         a3, t5, 17
                  srai         s0, a2, 12
                  add          s5, s3, a3
                  srl          s11, gp, t6
                  sra          t6, s6, a7
                  and          s1, ra, t3
                  slt          t5, s0, t5
                  lui          t1, 1023721
                  addi         a1, ra, 1699
                  srli         a5, s1, 21
                  addi         t3, t1, -1005
                  xor          s3, s2, a5
                  andi         s2, s9, -582
                  srl          s3, a4, a2
                  sub          t5, s10, s11
                  or           zero, zero, a5
                  addi         a6, t0, 1706
                  and          t1, s2, s11
                  xori         sp, a2, 1715
                  sra          t5, t0, a0
                  sll          s0, a5, a6
                  sltu         a5, t5, a6
                  sll          s0, t2, t0
                  ori          gp, s10, -1447
                  slli         ra, a1, 19
                  sll          a5, a6, s5
                  auipc        s4, 124602
                  and          s4, a4, zero
                  srai         s8, t0, 7
                  sll          t4, s2, s6
                  slli         s0, zero, 8
                  nop
                  slt          a0, t1, a1
                  srai         s1, s0, 0
                  slti         t6, t3, -1501
                  auipc        gp, 797177
                  slli         a0, t6, 6
                  sll          s2, tp, zero
                  addi         s0, zero, -1638
                  sub          zero, sp, a7
                  ori          a1, a7, -544
                  sll          a4, ra, s8
                  sra          t0, a2, t4
                  xori         t3, s8, 1865
                  sll          a1, a4, a2
                  sltiu        t4, t3, 473
                  and          t4, s5, s10
                  sltiu        t0, s4, 1614
                  sltu         t3, t5, a3
                  xori         s7, s8, 1206
                  sltiu        t3, s10, -1021
                  nop
                  and          ra, t3, s1
                  srai         t4, t3, 14
                  auipc        gp, 707635
                  lui          s8, 744595
                  sra          t1, t3, a4
                  add          sp, a2, ra
                  and          gp, s4, ra
                  sra          t1, ra, sp
                  auipc        s8, 79501
                  add          sp, a6, a2
                  ori          t1, a5, 1757
                  srl          a1, t1, t2
                  add          a5, a7, s6
                  sltu         s5, s7, a5
                  slli         s4, s5, 11
                  addi         t6, s6, -661
                  srli         s3, s6, 28
                  nop
                  sub          ra, s7, a2
                  sltu         ra, a5, ra
                  slt          t3, s8, s9
                  sub          t5, tp, tp
                  srli         s11, s0, 10
                  nop
                  ori          a0, s3, 629
                  srai         s10, s7, 24
                  xori         s3, s2, 103
                  add          s5, s4, gp
                  auipc        a6, 110261
                  addi         t5, a5, -467
                  srai         a5, s9, 8
                  xor          a6, s6, s6
                  slt          t1, a0, a5
                  sltu         sp, a1, a6
                  srai         t0, tp, 15
                  sub          s11, a0, t1
                  srai         s10, zero, 23
                  slli         t5, zero, 17
                  sltu         s2, s6, s4
                  andi         s3, gp, 1293
                  srl          s8, s1, a1
                  xori         a4, a7, 945
                  srli         s4, t4, 22
                  xor          a6, a7, s0
                  lui          a6, 784067
                  and          s3, s1, s8
                  and          s8, a4, a3
                  lui          s10, 252847
                  auipc        ra, 838890
                  addi         s11, s10, -1982
                  lui          s9, 281079
                  slt          a2, ra, gp
                  sll          zero, sp, zero
                  ori          a2, a3, 17
                  srl          a1, s4, zero
                  and          zero, t1, t0
                  srli         s2, t3, 4
                  sra          s0, t1, a4
                  slt          t3, s5, s4
                  xori         t1, t3, -1819
                  sra          s0, a7, zero
                  slli         a2, t4, 6
                  add          s3, s7, ra
                  and          s3, t3, t6
                  sltiu        s11, s9, -430
                  lui          t0, 672186
                  srli         a2, t6, 5
                  srai         a2, a1, 18
                  slti         t1, s8, 1219
                  nop
                  srli         a3, t1, 15
                  sub          s4, s2, t5
                  add          s8, s9, s4
                  add          s8, t4, ra
                  add          t6, ra, s10
                  lui          s7, 51017
                  sltiu        gp, a5, 867
                  sub          s5, a3, s5
                  sra          s10, a6, a6
                  xor          s2, t3, tp
                  sltu         s2, s8, t6
                  srl          t6, s0, s5
                  sub          t1, s5, t4
                  ori          a5, s1, 1157
                  sll          s0, tp, a3
                  sub          t6, s8, s4
                  slt          t0, s4, a5
                  and          gp, s5, zero
                  sra          s1, a7, t0
                  sltu         t1, t4, t5
                  addi         t5, a4, -968
                  srl          s7, s11, t3
                  auipc        a0, 497957
                  sltu         t3, t1, t2
                  add          s2, s8, a3
                  xor          a4, a4, s4
                  slt          s7, a5, a0
                  xor          s1, s4, t6
                  nop
                  sra          tp, t5, s3
                  andi         s5, s3, 383
                  ori          a4, t3, -890
                  sltu         t1, a2, t3
                  xor          a0, s6, ra
                  srli         t1, s11, 5
                  sll          ra, s7, a7
                  srli         gp, t4, 31
                  slt          t6, s9, s5
                  xori         t6, a0, -145
                  andi         a5, zero, 1059
                  sltu         s1, tp, a7
                  sll          a2, s6, zero
                  srli         s1, t0, 0
                  lui          tp, 783090
                  add          s8, s5, t2
                  addi         a2, s3, -1799
                  srl          s5, t2, gp
                  sll          t3, s2, gp
                  nop
                  addi         tp, t2, -1068
                  auipc        s5, 1044459
                  sub          t0, a6, t1
                  nop
                  and          t4, a1, s7
                  slli         s8, s1, 31
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x80000000
                  li           s7, 0x0
                  li           t1, 0xffffffff
                  li           ra, 0x0
                  li           s4, 0x80000000
                  li           t0, 0x0
                  li           a2, 0xffffffff
                  li           t6, 0x8761c195
                  li           t5, 0x0
                  auipc        a2, 607487
                  sub          s4, s4, ra
                  add          ra, s9, t5
                  addi         a2, a5, -1605
                  nop
                  lui          ra, 895178
                  sub          a2, t1, s9
                  lui          t5, 706070
                  nop
                  add          s7, t1, s9
                  auipc        a2, 217274
                  sub          t6, a2, s7
                  auipc        t1, 390048
                  lui          t5, 485621
                  sub          s7, t5, t6
                  nop #end riscv_int_numeric_corner_stream_8
                  nop
                  srli         s10, a7, 18
                  sll          s4, a5, s7
                  xori         a5, a3, -1435
                  slt          a5, t2, s3
                  sub          tp, a5, s7
                  srai         a1, a3, 1
                  auipc        a2, 571160
                  lui          s9, 178515
                  or           s4, a1, t5
                  nop
                  slt          s3, s4, t4
                  sub          s0, t3, t6
                  addi         a3, s8, -387
                  srli         a3, s11, 2
                  lui          s7, 643570
                  ori          a5, s11, -312
                  slt          t5, a7, gp
                  srai         s5, s10, 23
                  and          t0, a3, s2
                  srai         sp, a0, 10
                  sra          s10, t4, s5
                  or           t0, s9, s10
                  slt          ra, tp, a5
                  slli         a3, a7, 2
                  srli         a5, s3, 8
                  xor          t4, sp, a5
                  slli         t1, s9, 22
                  nop
                  srai         a5, s2, 5
                  auipc        s11, 470193
                  sub          gp, s10, s0
                  xori         a4, a5, -1310
                  sltiu        t0, t5, -15
                  and          t6, t0, s10
                  sll          s9, s4, t5
                  nop
                  xori         s1, a7, 467
                  slt          t3, ra, s2
                  and          s1, sp, s0
                  and          s7, s11, s9
                  sll          s4, ra, t0
                  ori          tp, t4, 1071
                  sra          s3, s7, a1
                  ori          a2, a2, -1352
                  sltu         t6, tp, t1
                  slti         t5, s7, -510
                  slt          sp, gp, s3
                  nop
                  nop
                  slti         s7, s9, 815
                  addi         s3, t2, -1983
                  slli         a1, s9, 8
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t3, 0x7f0030d3
                  li           s10, 0x80000000
                  li           gp, 0x0
                  li           sp, 0x468ee3d0
                  li           a5, 0xffffffff
                  li           a2, 0xffffffff
                  li           t5, 0x0
                  li           s3, 0x0
                  li           s11, 0xffffffff
                  nop
                  lui          s11, 929279
                  nop
                  auipc        sp, 547571
                  addi         sp, a2, 47
                  lui          t5, 333362
                  lui          gp, 255381
                  sub          t3, a4, s3
                  auipc        t5, 840961
                  add          a5, sp, s10
                  add          s3, t3, gp
                  auipc        a2, 169957
                  add          a2, sp, a2
                  add          a5, gp, sp
                  auipc        s10, 636529
                  addi         s11, s11, -200
                  lui          s3, 1023776
                  lui          gp, 722588
                  addi         a2, a5, 54
                  addi         gp, t5, 720
                  nop
                  sub          t3, t5, a5
                  lui          t5, 370450
                  add          t3, a5, s3
                  nop
                  auipc        a4, 301447
                  addi         a5, gp, 268
                  lui          sp, 25082 #end riscv_int_numeric_corner_stream_0
                  ori          s0, s1, 1948
                  sra          a0, s7, t6
                  sll          s2, s5, gp
                  ori          a0, s7, -1579
                  or           t1, s5, a3
                  addi         s9, gp, 828
                  ori          s1, s10, 1799
                  lui          a5, 444536
                  srai         a4, s2, 2
                  ori          t5, gp, 1435
                  xor          t0, a3, zero
                  sltiu        s2, t1, 104
                  xor          s8, tp, s8
                  sltu         s1, a5, a7
                  srl          t1, a4, t5
                  srl          a1, ra, t5
                  slli         t5, t1, 6
                  sll          a4, s4, s7
                  lui          s2, 160812
                  xori         gp, a4, -1591
                  slli         ra, t0, 14
                  slt          a5, a5, zero
                  slti         t5, s2, 105
                  sra          s10, zero, ra
                  ori          gp, s2, 314
                  slli         a1, a4, 22
                  sll          a1, gp, t6
                  sll          a1, s10, s9
                  xori         a5, s0, -1225
                  add          s9, s10, a7
                  slli         ra, t2, 24
                  add          t0, s4, t3
                  sltiu        s8, s0, -1917
                  ori          sp, s1, 106
                  srli         s10, ra, 24
                  and          s1, t3, s1
                  sub          a1, s9, t2
                  lui          s7, 500668
                  sltu         t3, s5, t4
                  add          s8, t3, s8
                  andi         s1, a7, 1195
                  slti         sp, t2, -404
                  nop
                  slti         a2, s3, -638
                  and          tp, t2, zero
                  srai         s11, s4, 27
                  lui          a3, 434589
                  nop
                  sltiu        s11, t2, 1330
                  sra          t1, s3, a6
                  addi         s5, t0, -852
                  sra          a6, a2, s7
                  slli         a2, zero, 29
                  slti         s7, s8, -1608
                  srli         ra, s0, 10
                  nop
                  auipc        zero, 738745
                  sltiu        t3, a1, -1991
                  add          s4, gp, a7
                  srai         s9, s11, 19
                  auipc        s4, 637006
                  slt          s7, s8, ra
                  srai         t5, gp, 13
                  ori          s10, sp, -1423
                  srl          a5, s4, zero
                  andi         t6, s10, -1842
                  srli         a2, ra, 5
                  ori          s5, s2, 218
                  sll          s5, t2, a3
                  or           s1, t6, t4
                  nop
                  srai         ra, sp, 15
                  slli         sp, t1, 31
                  sltu         tp, s8, a0
                  nop
                  andi         s3, gp, -1179
                  slti         a0, gp, -1347
                  lui          a2, 336471
                  slt          s7, t2, ra
                  srli         t3, a7, 24
                  and          a1, a3, a4
                  and          sp, a2, s11
                  sltu         a5, t5, t0
                  slti         s10, s8, 400
                  slti         zero, s4, -399
                  srli         a2, a2, 19
                  and          s5, s2, gp
                  srai         s4, a6, 6
                  sra          t0, a0, t4
                  add          gp, a5, s9
                  sltu         tp, t2, s4
                  ori          gp, a1, 1848
                  sub          a0, a4, zero
                  srl          s7, s5, zero
                  sltu         s1, s9, s0
                  sltu         s4, t1, t6
                  lui          s8, 4978
                  sra          s8, a6, s4
                  slt          s2, t5, a5
                  lui          ra, 722886
                  andi         s4, t3, 1523
                  lui          s11, 239760
                  srli         t0, t3, 18
                  sltu         a6, t3, a2
                  xor          s5, s3, s3
                  add          a1, s4, sp
                  srli         s0, s7, 31
                  sra          t1, a2, a4
                  srli         s11, s3, 9
                  ori          a0, t0, -1723
                  and          s1, s6, tp
                  addi         gp, a3, -133
                  srli         s11, a6, 9
                  xori         a6, s2, -109
                  srai         a6, s2, 20
                  add          t1, a3, s10
                  sltu         gp, s6, s3
                  xori         gp, s3, -357
                  xori         s1, s10, 187
                  sll          s9, s4, s0
                  ori          t4, s6, 1926
                  srl          zero, s5, a3
                  and          a2, a5, t4
                  or           t6, t4, t1
                  srai         gp, t0, 26
                  slt          gp, s4, a5
                  sltu         a0, a3, a1
                  and          a1, zero, s11
                  sub          ra, a4, s4
                  sub          t1, sp, a3
                  xor          s3, a7, t0
                  add          s3, a3, a4
                  or           a6, ra, t0
                  slli         a5, zero, 22
                  srl          s5, t2, a6
                  sll          s1, t0, s8
                  auipc        t3, 345036
                  addi         a4, a1, 551
                  auipc        t1, 558886
                  srl          a0, a1, s9
                  slt          t6, t6, s3
                  sltu         s11, gp, a1
                  xori         s4, s10, 1879
                  srai         s4, gp, 17
                  or           a6, s2, a0
                  auipc        a2, 1040104
                  auipc        a5, 109005
                  addi         a2, t1, 1407
                  sltiu        a5, a4, -125
                  sltiu        s0, t5, -1007
                  lui          s5, 29944
                  sra          t5, ra, t1
                  slt          s1, t6, s5
                  addi         t1, t3, -1229
                  or           a3, t6, s0
                  sra          s10, s5, a3
                  xor          a3, a3, s9
                  andi         a1, s7, 2036
                  ori          s7, a0, 750
                  add          s3, tp, t1
                  sltu         s5, s5, a1
                  add          s0, gp, t6
                  or           s9, sp, t0
                  and          s11, s3, s2
                  srai         s7, s6, 24
                  srl          a0, ra, s7
                  sltiu        tp, t6, -1251
                  sra          t0, t1, a1
                  or           a3, s3, s5
                  xori         s2, zero, 140
                  auipc        a3, 489421
                  slt          s9, s4, a5
                  add          s9, a6, a2
                  srai         t0, s5, 9
                  slt          s7, t1, s5
                  and          gp, s7, t0
                  addi         s10, s8, 1542
                  srai         s4, a5, 22
                  auipc        t4, 891713
                  add          s2, a7, gp
                  slli         sp, tp, 11
                  or           s5, s0, s8
                  nop
                  sub          s8, t5, a3
                  slti         s5, s2, 1846
                  xor          t1, t0, s5
                  sub          s9, a5, t5
                  xori         a4, s4, -69
                  srl          s9, a3, s6
                  slt          a3, s10, gp
                  addi         t0, a2, 1629
                  srai         t5, s1, 31
                  addi         s5, gp, 395
                  auipc        t6, 378354
                  xor          s2, zero, t1
                  lui          zero, 764959
                  lui          t4, 144947
                  xori         s3, t3, -1847
                  xor          s1, s0, t3
                  addi         s9, a5, -706
                  sltiu        a3, sp, -1688
                  lui          a4, 307606
                  slti         s8, a6, 1960
                  nop
                  slli         a6, s9, 29
                  ori          s5, t4, -1609
                  andi         a2, a5, -1371
                  sltiu        s3, s5, 1605
                  sub          s10, a1, t3
                  sltiu        gp, a1, -112
                  srl          a1, s0, s3
                  lui          s4, 474089
                  andi         a5, a7, -551
                  lui          s3, 25654
                  add          s8, t6, t6
                  nop
                  sll          a5, a4, a5
                  ori          s3, s3, 1454
                  addi         t3, a7, -188
                  slli         t4, t5, 21
                  slli         s5, a4, 26
                  slt          s7, ra, t0
                  and          t6, s4, gp
                  srai         s10, tp, 6
                  lui          t1, 289416
                  ori          s7, s2, -1405
                  nop
                  srl          s2, s11, t0
                  sltiu        t1, s2, 589
                  sra          a3, t1, t3
                  and          s10, t5, a2
                  sll          zero, a3, a2
                  sltiu        s9, s3, -1121
                  sub          t5, zero, a1
                  sub          a5, s10, t2
                  sltiu        gp, a7, -1194
                  add          t0, t6, t5
                  sltu         s7, t5, s7
                  ori          s1, t5, 855
                  slt          t6, a7, s8
                  sltiu        zero, s4, -38
                  sltiu        s9, s10, -1430
                  sra          t0, a0, t2
                  sll          zero, s9, s2
                  slli         t6, sp, 9
                  slli         ra, a0, 4
                  xori         s9, a6, 1990
                  auipc        s0, 987854
                  slt          tp, s0, zero
                  srai         zero, gp, 14
                  xor          a1, t3, t2
                  sub          gp, t6, a5
                  li           s11, 0x8b75489a #start riscv_int_numeric_corner_stream_9
                  li           s4, 0x80000000
                  li           s1, 0xffffffff
                  li           a5, 0x80000000
                  li           a3, 0x19bbf662
                  li           s9, 0xffffffff
                  li           a0, 0x80000000
                  li           a1, 0xbfa79c08
                  li           ra, 0x80000000
                  li           t4, 0x0
                  add          a0, t4, s9
                  add          a5, s4, a0
                  add          a3, ra, ra
                  addi         s9, a0, 1706
                  lui          s9, 105630
                  lui          s11, 540514
                  sub          a3, a1, ra
                  add          a0, t4, a1
                  sub          t4, ra, a0
                  sub          ra, a3, ra
                  add          a0, a5, s9
                  lui          a1, 286496
                  nop
                  lui          s9, 174412
                  nop
                  add          s1, s9, t4
                  lui          s4, 48328
                  nop
                  nop
                  lui          ra, 455761
                  auipc        s11, 233618
                  lui          s11, 12586
                  add          s4, s11, a3
                  auipc        s4, 796070 #end riscv_int_numeric_corner_stream_9
                  slti         ra, ra, 994
                  slti         s7, s10, 1640
                  sub          a0, s0, t5
                  xor          t5, t6, t0
                  andi         gp, s9, 1998
                  xor          gp, a7, sp
                  add          zero, a6, s9
                  slt          a0, t6, s9
                  lui          s7, 286865
                  ori          t6, a7, -498
                  and          t5, a1, a5
                  xori         zero, a0, -1092
                  srai         a1, s8, 18
                  xor          zero, sp, s11
                  nop
                  nop
                  sltu         t1, s2, s10
                  nop
                  ori          s5, tp, -203
                  sub          t3, s9, a6
                  addi         a4, a5, -1646
                  lui          t1, 97020
                  srai         s1, a3, 18
                  auipc        t4, 112990
                  lui          s7, 569486
                  and          a3, a4, s7
                  srl          a1, s6, sp
                  nop
                  sra          s7, s0, t5
                  or           s1, a7, s6
                  sub          t1, a3, ra
                  xor          t1, s1, s9
                  slt          s0, a2, zero
                  andi         a2, a5, 1716
                  slli         s5, sp, 0
                  srai         a5, a5, 17
                  auipc        s0, 917326
                  sll          a4, tp, a6
                  slt          t6, s1, s3
                  sra          t4, t0, s7
                  sltiu        s10, t1, -437
                  add          s0, s11, a3
                  slt          a0, ra, a2
                  sll          t0, a4, ra
                  srli         s2, a7, 17
                  sll          s9, zero, s7
                  sll          t1, t0, s5
                  or           a0, a4, a1
                  sra          tp, t0, zero
                  sub          t4, t5, gp
                  ori          a5, s11, -239
                  slt          s3, t4, t6
                  lui          s11, 85798
                  nop
                  xor          s10, a3, s3
                  auipc        tp, 546405
                  nop
                  slti         a1, t3, -1448
                  slli         t0, s4, 17
                  sll          t3, a5, s11
                  sub          s1, zero, t2
                  and          t1, t2, a2
                  nop
                  srli         a6, a3, 3
                  slt          s4, ra, t0
                  lui          a4, 409829
                  sll          s2, s1, s5
                  ori          t6, gp, -360
                  xor          s0, a3, a1
                  ori          s5, a3, -1506
                  sltiu        sp, t5, 112
                  slli         a6, s7, 27
                  sltu         a5, tp, sp
                  slt          zero, tp, tp
                  slt          s5, a7, s1
                  slli         s0, s1, 3
                  add          t3, a3, zero
                  ori          t4, s10, 1337
                  add          s10, a6, t3
                  andi         t5, a2, 1208
                  addi         s10, s8, 413
                  slti         ra, gp, -1557
                  nop
                  slti         s8, t2, 1117
                  andi         sp, t4, -641
                  srli         s8, t5, 1
                  sra          s9, ra, a1
                  slli         a3, s3, 0
                  or           a1, t3, s8
                  or           t1, s2, sp
                  lui          t4, 880712
                  or           tp, t0, s7
                  srai         t6, s5, 30
                  slli         a2, t0, 14
                  add          zero, t0, a6
                  and          a1, s7, t3
                  and          sp, gp, a5
                  sub          ra, a2, zero
                  xori         s4, s10, 1378
                  auipc        s5, 9254
                  slt          a5, s2, a4
                  sltu         a4, a4, s6
                  addi         a2, t6, 104
                  add          a2, a7, a6
                  and          s11, s4, sp
                  xori         t3, t4, 487
                  sll          s5, s9, s8
                  xor          s1, t0, t4
                  slli         t5, s1, 9
                  addi         sp, gp, 1387
                  srli         sp, ra, 4
                  slli         s2, t0, 31
                  sltiu        s9, s7, 1488
                  xori         s2, tp, 501
                  addi         tp, sp, 68
                  ori          t5, a0, 364
                  sll          a0, a4, s0
                  sub          t5, s6, tp
                  lui          zero, 155553
                  auipc        t0, 932152
                  slti         t4, a5, 1738
                  addi         ra, a2, -804
                  sltiu        s1, a2, 938
                  lui          a1, 831543
                  sltiu        a3, s4, -1948
                  slt          s2, t0, t1
                  ori          sp, tp, -662
                  and          s1, s4, s6
                  srli         s7, s3, 29
                  or           a3, t1, s4
                  srli         a6, s9, 4
                  xori         t1, a5, 604
                  and          a2, s9, s11
                  slli         a6, t1, 5
                  slt          sp, s11, s1
                  slti         t5, s6, -655
                  add          a3, s11, t5
                  srl          ra, gp, s10
                  add          ra, a7, a2
                  srai         a2, a5, 26
                  slti         gp, tp, 43
                  sub          s5, s10, a6
                  xori         s5, s9, -1931
                  auipc        s4, 425061
                  ori          s1, t3, 1282
                  addi         ra, a6, -1496
                  srl          t4, gp, zero
                  andi         ra, tp, 658
                  sll          a2, s2, t2
                  xori         s2, s8, -315
                  xor          t4, s3, t6
                  andi         t1, s1, -494
                  or           sp, s5, s11
                  sll          t5, s6, s3
                  srai         s10, t6, 15
                  lui          t0, 989881
                  xori         s2, a2, 657
                  nop
                  lui          s10, 17608
                  ori          ra, a0, -1326
                  ori          t0, zero, -1647
                  ori          t1, s4, -1880
                  sub          s4, s7, a4
                  add          a2, a5, a6
                  xor          s5, t6, a5
                  sltiu        s4, s11, -1662
                  sll          s5, t1, t1
                  slt          a6, gp, s11
                  slt          t4, a6, a1
                  srli         t5, t6, 23
                  srai         zero, s9, 19
                  and          a5, a5, a2
                  srai         s1, s7, 4
                  nop
                  addi         sp, t4, 543
                  sltiu        s2, a6, -1515
                  slli         a5, tp, 27
                  slt          s4, t6, a1
                  srai         s4, s1, 1
                  add          s1, t4, a1
                  or           gp, s6, ra
                  slli         s9, s2, 4
                  nop
                  auipc        tp, 932872
                  srai         s3, zero, 10
                  ori          s7, a3, -1045
                  sltu         t4, t6, s10
                  or           t3, t0, sp
                  sra          a5, s0, t1
                  add          s2, sp, s4
                  sub          a3, a1, s8
                  xor          t0, s6, a5
                  or           t6, s9, ra
                  auipc        t3, 883164
                  andi         sp, t3, 610
                  srli         a1, sp, 23
                  slti         ra, t1, 1003
                  xori         zero, t2, 421
                  srai         t3, a0, 10
                  xori         t0, s6, 681
                  auipc        gp, 18135
                  or           s7, a0, t4
                  srl          a2, s10, a3
                  xor          a5, s10, t4
                  srl          a1, t6, s7
                  or           s11, sp, t1
                  ori          s7, t6, 1925
                  ori          a4, s3, -1566
                  and          t5, gp, a4
                  xor          a6, tp, s4
                  sra          a2, a2, ra
                  auipc        a3, 1035566
                  xori         a2, a7, 1847
                  slti         s7, a3, 684
                  srl          s2, s1, a5
                  sra          s4, t2, t5
                  xor          sp, s0, s5
                  slti         a4, s0, -1480
                  sltiu        a6, s1, 805
                  srli         s0, tp, 20
                  srli         s7, s1, 2
                  sltu         a3, s11, t2
                  slt          a1, s5, s7
                  srai         s7, s7, 15
                  srl          s0, s9, gp
                  srai         a6, t4, 26
                  nop
                  andi         s9, a7, -264
                  slt          t1, s10, a0
                  auipc        s8, 224491
                  sll          a1, s5, t1
                  and          sp, s5, s8
                  sub          t1, tp, a4
                  srl          t0, s7, s4
                  srl          s9, zero, t0
                  lui          s8, 631642
                  xori         t1, t3, 1985
                  slt          a0, a4, a3
                  srl          s1, a0, t6
                  sra          s11, ra, s10
                  sll          s9, t5, a6
                  srli         tp, t2, 27
                  slti         s7, t1, -1057
                  or           a2, t3, s9
                  srli         t3, s9, 13
                  srli         a1, s3, 16
                  add          a4, t0, s5
                  sra          t6, tp, a7
                  srai         s4, ra, 19
                  srl          s10, a1, s4
                  slt          s3, a3, s10
                  sra          sp, sp, sp
                  addi         t3, s7, 1315
                  slli         s9, ra, 11
                  auipc        s2, 112882
                  andi         a6, s11, 426
                  srai         a4, ra, 13
                  slt          a6, s9, zero
                  slli         a4, tp, 28
                  auipc        s4, 935178
                  xori         s9, zero, -1797
                  ori          s2, a6, 1946
                  slti         tp, s0, 1235
                  sltu         tp, ra, a0
                  srl          zero, s10, s5
                  xor          s4, s5, s7
                  srai         t0, a4, 24
                  nop
                  slli         s3, s9, 16
                  nop
                  sltu         zero, t2, t4
                  sra          s8, a6, a2
                  or           a5, t5, a7
                  srl          a5, s3, sp
                  slli         a3, s11, 4
                  srli         s8, a3, 3
                  lui          s0, 5367
                  or           tp, t6, a0
                  sra          t5, a6, s7
                  ori          s3, s11, -1502
                  slti         a1, a7, 1405
                  addi         s3, t4, 1379
                  xori         a1, sp, -791
                  or           t4, t5, gp
                  slti         zero, a3, -56
                  sltu         s7, t0, t3
                  slli         a0, t2, 7
                  slli         s4, s0, 20
                  srli         t1, a7, 12
                  xor          s0, s5, a5
                  sra          ra, t4, a6
                  sra          t6, tp, s5
                  and          a0, s10, a0
                  xor          s9, a0, s9
                  srai         a5, gp, 5
                  xor          a6, s2, a7
                  lui          a5, 485145
                  sltu         t1, tp, s2
                  sub          s11, sp, t3
                  and          t1, ra, a6
                  auipc        s1, 757188
                  nop
                  auipc        t4, 181260
                  slti         s3, s3, -1961
                  xori         a6, a2, -8
                  sll          a6, s2, t5
                  srl          s4, a5, tp
                  andi         s3, s6, 752
                  sltu         s0, s0, s10
                  sra          s5, s1, s8
                  sltu         s5, a5, a4
                  xor          a6, s10, s2
                  addi         t4, a6, 1327
                  xori         a5, ra, -1520
                  sltu         s7, s2, t4
                  addi         t6, a2, -1046
                  slli         s11, a4, 6
                  slli         a0, t2, 17
                  srl          a1, t1, a3
                  addi         zero, ra, 814
                  srli         a1, a1, 29
                  srl          s2, s2, s6
                  sll          t6, s2, tp
                  add          a0, s8, s3
                  add          s5, tp, s3
                  sra          a3, t5, t3
                  srai         t1, t0, 27
                  or           t3, a1, s0
                  auipc        t5, 655370
                  sltu         s2, s8, a2
                  nop
                  slli         s2, a5, 4
                  xori         t4, t1, 1137
                  ori          t5, s10, -1529
                  and          s3, a3, t6
                  sltiu        s2, zero, 33
                  srli         t5, s0, 4
                  slt          a3, s11, t1
                  ori          t1, s4, 1500
                  and          t0, s8, t5
                  sub          t4, a4, t1
                  sltiu        a4, t2, -507
                  sll          ra, a2, s3
                  sra          a3, tp, t5
                  srli         s10, s3, 24
                  srai         t3, s3, 29
                  and          s2, s7, a2
                  ori          a0, zero, 713
                  sltiu        s10, gp, 1173
                  slti         s4, sp, -7
                  sltiu        s0, zero, -440
                  sltiu        s2, a4, 82
                  nop
                  slli         s7, s3, 4
                  slt          t3, a2, t5
                  sltu         s7, gp, s10
                  slli         s0, t3, 7
                  slt          a5, a0, ra
                  add          s5, t4, s0
                  srai         t1, s11, 21
                  slli         s10, s11, 22
                  srai         sp, s1, 30
                  sltiu        s1, tp, 47
                  xori         a3, t5, -458
                  slli         tp, t5, 28
                  slli         s9, s0, 29
                  auipc        t5, 317400
                  srli         t5, t0, 15
                  sll          a1, s10, ra
                  sra          ra, t6, s6
                  xor          s3, a5, s0
                  slti         t3, t0, -863
                  sltiu        a2, t1, 709
                  srai         t6, gp, 24
                  or           t5, s3, sp
                  sll          s5, a3, s5
                  lui          t1, 1012368
                  sltiu        zero, a4, 805
                  srl          a4, s0, a1
                  auipc        a5, 450764
                  add          t3, t2, t4
                  xor          t1, t0, s1
                  and          s10, s10, s5
                  srl          a0, t1, gp
                  lui          t4, 739238
                  ori          t5, s10, -119
                  andi         s4, s10, 1621
                  sltu         s10, s1, s9
                  andi         s5, s4, 701
                  sub          s4, zero, t1
                  slti         s8, gp, 1478
                  sll          a3, sp, s5
                  or           t1, s10, s2
                  sll          a1, s11, a6
                  and          a1, s5, tp
                  addi         s3, sp, -986
                  slli         sp, t5, 23
                  andi         a1, ra, -1736
                  slli         ra, s10, 0
                  and          t1, a0, t2
                  srai         a6, a4, 30
                  or           s0, a5, t0
                  sltiu        a0, s3, -817
                  sll          tp, a1, t5
                  sltu         s10, s3, s4
                  nop
                  slt          s10, s6, zero
                  nop
                  sll          s0, a4, s4
                  slli         t4, a3, 28
                  slli         s5, s0, 29
                  slt          s5, s8, sp
                  sltu         s8, s5, t4
                  xori         s10, s7, 1266
                  ori          zero, t2, -1664
                  slt          t4, a0, s6
                  ori          s0, s5, -1609
                  sra          ra, t1, t5
                  xori         s5, a5, 916
                  sub          s5, t5, a7
                  sra          s5, s5, ra
                  or           a4, ra, a5
                  addi         s3, t1, -1025
                  lui          t6, 327100
                  slli         gp, zero, 17
                  sll          s7, a2, s4
                  srli         s11, s9, 12
                  and          zero, t0, ra
                  srai         s1, s3, 7
                  sltu         s2, t1, t3
                  sub          a0, sp, a1
                  sll          s2, t6, a3
                  xor          a2, tp, zero
                  sltu         a5, a7, s4
                  ori          zero, s3, 233
                  sltu         t0, a5, s5
                  srai         s5, t0, 3
                  and          t3, s0, t3
                  sll          a3, s2, t1
                  or           t5, a4, a7
                  sltiu        s2, s11, 1987
                  srai         s1, gp, 4
                  sub          s7, s6, tp
                  sra          t6, s5, t6
                  and          ra, t6, s9
                  slt          s4, a2, s2
                  ori          s3, t4, 955
                  lui          a1, 1026939
                  srl          t1, gp, t4
                  srl          s1, zero, a5
                  slt          s0, t6, gp
                  nop
                  sra          a2, s8, s6
                  slti         t1, s0, 1995
                  nop
                  lui          s3, 161786
                  sll          a5, a2, a4
                  ori          s7, gp, -1470
                  slt          a0, t1, tp
                  andi         a0, a6, -199
                  srli         a3, a6, 17
                  slli         s8, sp, 11
                  auipc        sp, 437687
                  srli         s1, a1, 10
                  slli         s7, s4, 27
                  sra          s7, t5, tp
                  addi         a0, a2, 700
                  ori          t1, s3, -2017
                  add          a3, t3, s3
                  or           s11, tp, s5
                  lui          s8, 376841
                  addi         s4, t3, 1919
                  sub          s7, t4, tp
                  slli         s1, s4, 20
                  sub          s0, a2, s9
                  xori         s11, a1, 1515
                  xori         t1, sp, -466
                  slt          s0, a3, t3
                  srli         sp, s10, 8
                  srl          s1, a3, s7
                  srai         a6, t2, 15
                  sub          s8, zero, a0
                  slli         s10, s7, 15
                  sll          s8, s9, zero
                  slti         a0, s10, -202
                  or           t6, s6, a4
                  sltiu        ra, s8, 334
                  sll          a1, a1, t3
                  sub          t3, zero, t0
                  auipc        s10, 413221
                  lui          s11, 919112
                  sra          zero, a7, gp
                  or           s0, s7, t2
                  nop
                  slti         s1, a0, 1436
                  srli         s0, t5, 11
                  ori          s7, t5, -588
                  and          s1, a7, a0
                  slti         t3, s2, 1741
                  lui          sp, 768238
                  xor          s10, t6, t4
                  lui          s7, 279041
                  addi         a5, t5, -826
                  auipc        a1, 960936
                  sltu         zero, s9, a2
                  slt          a1, t4, t3
                  auipc        t4, 178837
                  or           s9, s10, a4
                  slt          s11, gp, t6
                  auipc        a0, 343443
                  sltiu        a0, t6, -303
                  add          a3, s8, a5
                  slt          zero, a0, t0
                  sltu         s3, s11, sp
                  sll          s5, s7, t2
                  auipc        t5, 811777
                  slti         s0, t0, 1681
                  or           t1, a2, t6
                  sub          sp, s6, sp
                  srli         a4, a1, 8
                  srai         t5, gp, 22
                  nop
                  ori          s9, a6, 1571
                  sub          s8, s9, t1
                  lui          s2, 857939
                  and          s2, t2, t5
                  sll          s0, s1, a6
                  sub          a6, a3, a7
                  xori         s9, sp, 1812
                  or           a3, tp, s11
                  nop
                  auipc        t5, 303984
                  auipc        s1, 495579
                  add          s9, s2, s9
                  slti         t1, t3, -1667
                  xor          a5, t0, a2
                  sra          s10, tp, t6
                  xori         t6, t3, 1688
                  slli         tp, t5, 9
                  srai         t3, s3, 11
                  slt          s2, s0, t1
                  nop
                  sltiu        s4, s5, -1810
                  add          tp, gp, s7
                  xori         a6, a6, 1461
                  add          t1, s3, a6
                  or           s2, s5, a3
                  srli         gp, tp, 12
                  slti         a4, t5, 188
                  sll          a2, s3, t6
                  andi         tp, s1, -1645
                  sub          a5, t3, a7
                  srl          s1, s3, s0
                  andi         t3, t4, 531
                  and          sp, gp, sp
                  xori         s3, s5, 1663
                  slt          zero, s3, s0
                  xor          s3, t0, a7
                  sll          s5, sp, a2
                  add          s3, a5, gp
                  sra          a3, a0, a5
                  slli         ra, a0, 11
                  srai         s2, a4, 11
                  sltiu        a2, s11, 320
                  add          a0, s4, s10
                  lui          a1, 15553
                  lui          s9, 698400
                  xor          t0, t3, s9
                  sll          s9, sp, a4
                  and          t0, t5, tp
                  slli         a2, s3, 30
                  sub          a1, s11, s1
                  nop
                  add          zero, s8, a4
                  xori         tp, s8, -712
                  auipc        t3, 875568
                  addi         t5, ra, 713
                  nop
                  sra          s8, t3, t5
                  auipc        a5, 143701
                  slt          a5, s5, zero
                  auipc        ra, 180434
                  sltiu        a6, s8, -857
                  srli         s2, s5, 16
                  and          t1, s2, gp
                  andi         gp, s5, -372
                  auipc        s9, 741376
                  lui          a6, 787418
                  slli         tp, s3, 11
                  slti         s5, t2, 1001
                  ori          a2, s11, -507
                  andi         t1, a6, 1074
                  add          a6, s1, s10
                  addi         sp, s4, -1013
                  lui          t5, 467635
                  srl          t4, sp, tp
                  and          gp, t1, t4
                  srai         zero, sp, 2
                  or           s2, zero, ra
                  slt          a4, a2, zero
                  add          a5, s0, t5
                  slli         s0, a7, 7
                  addi         s2, gp, -1886
                  slli         s9, zero, 15
                  slli         a6, t2, 0
                  ori          tp, a7, -1581
                  addi         a3, t3, 537
                  srai         t6, s7, 4
                  sra          s7, t0, a3
                  xor          s3, s7, s8
                  srai         s11, s8, 30
                  srai         ra, zero, 6
                  srli         gp, s10, 6
                  slt          gp, s2, s1
                  srai         a2, t0, 7
                  or           a0, a2, t5
                  sltiu        s10, s0, -1087
                  slti         s9, a2, 977
                  addi         s5, t0, 365
                  sltu         ra, t0, s0
                  sra          t3, s10, s1
                  sra          a3, a4, a1
                  slli         t1, a7, 30
                  xor          tp, s7, s11
                  add          s11, a1, s6
                  nop
                  sltiu        t3, ra, 90
                  nop
                  and          s2, s9, sp
                  srl          s5, t1, a6
                  nop
                  sll          a3, t0, s8
                  or           a2, t6, s5
                  slti         a4, a4, 315
                  xor          a5, s6, a1
                  ori          tp, s10, -1248
                  sltiu        s3, a7, -1612
                  auipc        sp, 3480
                  add          a2, s11, t4
                  addi         s1, a5, 407
                  lui          zero, 618309
                  sra          a4, t3, a4
                  slti         s3, s9, -1274
                  auipc        s4, 758820
                  or           a2, t6, s7
                  nop
                  sub          t1, ra, a6
                  ori          s3, ra, -1741
                  auipc        a2, 575707
                  or           s11, s8, s11
                  add          t1, a2, s2
                  auipc        s2, 319896
                  auipc        a5, 1033207
                  or           ra, s2, s10
                  xor          ra, s1, s9
                  sltiu        ra, s5, -1825
                  slt          a1, t4, t0
                  slt          a2, t3, s5
                  andi         s0, zero, -1504
                  sltu         s2, s8, s11
                  andi         s7, s5, -1394
                  srai         t5, a7, 30
                  srai         s11, t1, 26
                  addi         a1, a5, 289
                  xor          s8, s0, s2
                  addi         s10, s11, -1285
                  srli         t3, t2, 27
                  add          t1, sp, s1
                  andi         a5, s11, 289
                  lui          s8, 385873
                  or           a1, s11, s7
                  nop
                  sra          a1, a2, a3
                  sub          s9, ra, zero
                  srli         t3, s10, 14
                  slt          s10, s5, ra
                  sll          t3, s1, s5
                  slt          a3, a6, zero
                  nop
                  srai         t0, t1, 18
                  sltiu        t5, s8, 1793
                  addi         tp, sp, -1136
                  xor          a0, s0, tp
                  andi         a5, s10, 1962
                  srl          s3, a0, a5
                  andi         s5, s7, -787
                  or           s4, t0, s6
                  srai         t4, a4, 28
                  slli         s11, a4, 29
                  srli         gp, s10, 20
                  add          t4, s3, a1
                  or           t4, s2, s0
                  srai         tp, a2, 1
                  lui          t3, 74221
                  add          t1, t4, s10
                  sltiu        a2, a7, 1507
                  slti         a4, a4, -1806
                  srli         zero, t1, 12
                  srai         a2, zero, 0
                  sra          s8, s5, gp
                  srai         a3, t1, 7
                  slt          s7, s8, s6
                  sltu         t1, t3, s2
                  andi         s7, sp, 277
                  srli         a2, a6, 17
                  addi         t5, a1, -142
                  auipc        a3, 841130
                  and          t3, t3, s1
                  sra          s2, s4, sp
                  slt          a1, s0, sp
                  sltiu        a1, t4, -1111
                  slti         t1, s9, 1646
                  addi         s7, sp, 1285
                  srli         a2, a5, 17
                  sltiu        t4, s0, -192
                  ori          t0, s4, -1821
                  sltu         t5, gp, gp
                  sltiu        zero, t4, 845
                  srli         s10, s6, 23
                  srl          a6, t3, ra
                  srl          gp, tp, t4
                  srli         a1, a0, 30
                  srai         s4, s7, 31
                  slli         s11, s6, 11
                  ori          a4, sp, 2038
                  sub          zero, t3, sp
                  andi         s1, a5, 2041
                  srai         t3, s4, 1
                  nop
                  xori         s4, a5, -1192
                  sll          t0, t4, s5
                  sra          zero, s5, s8
                  sra          a2, t5, a2
                  lui          s0, 145415
                  or           ra, a5, gp
                  andi         s11, s9, 1434
                  lui          t5, 35268
                  sltiu        s10, sp, 662
                  addi         s1, a5, 913
                  slti         a5, a0, -1163
                  sub          sp, a0, a5
                  ori          tp, a7, -1582
                  or           a5, sp, a2
                  ori          t6, s6, -1060
                  addi         a6, s3, -1046
                  nop
                  sll          s8, a5, s3
                  add          s11, ra, sp
                  sltu         gp, a6, a2
                  srai         a1, t6, 4
                  auipc        tp, 286762
                  xori         a0, s3, 229
                  addi         a5, s5, 274
                  srli         t0, s0, 2
                  andi         s7, t0, 1044
                  sltiu        t3, a2, -1116
                  auipc        a4, 718639
                  sub          s5, s6, gp
                  srl          s7, t6, t1
                  and          t6, ra, t5
                  srl          s9, tp, a3
                  srai         s5, t0, 27
                  sltiu        s4, t0, 182
                  srai         sp, s7, 17
                  srai         a4, s2, 11
                  sltu         s11, t2, a2
                  addi         s11, s10, 1959
                  srli         s2, gp, 14
                  and          a0, a5, s5
                  or           a0, gp, a7
                  slt          t5, a4, s10
                  slt          t0, s8, a2
                  srai         t1, ra, 31
                  sltu         a3, s0, t1
                  add          s9, t3, a1
                  nop
                  sub          ra, t3, t0
                  slti         a2, t5, 1371
                  addi         a2, a1, 1367
                  or           s1, t6, t6
                  xori         t5, a7, -427
                  addi         tp, s3, 1898
                  srai         gp, a2, 19
                  sub          t1, a0, t3
                  slli         s8, s1, 14
                  slli         a5, s2, 2
                  srli         t3, t4, 6
                  nop
                  srli         sp, a2, 8
                  srai         t1, s8, 15
                  sltiu        s7, sp, 901
                  sltiu        s5, t2, -932
                  srai         a2, tp, 27
                  srli         t6, t2, 27
                  ori          a3, s9, 1288
                  srli         s3, s9, 31
                  srli         a0, a0, 11
                  sll          s0, a7, s5
                  srli         s5, a1, 23
                  sra          sp, t5, zero
                  slt          t5, a1, t1
                  ori          s7, s9, -1533
                  andi         s11, ra, -847
                  slt          gp, zero, s3
                  slli         t5, ra, 26
                  sra          a3, t3, s11
                  ori          t5, a6, 1618
                  slt          t6, gp, s3
                  srl          gp, sp, s9
                  auipc        a4, 677912
                  slti         t0, t1, 931
                  and          ra, zero, t4
                  add          t0, s3, s2
                  ori          gp, a4, -997
                  andi         ra, t2, 32
                  and          a6, t5, s5
                  slti         s5, s4, 1428
                  and          a3, t6, s9
                  li           tp, 0x9492dbf7 #start riscv_int_numeric_corner_stream_11
                  li           gp, 0x80000000
                  li           a4, 0x4724c68f
                  li           s7, 0x0
                  li           a0, 0xf697c8cf
                  li           t5, 0xffffffff
                  li           s4, 0x0
                  li           sp, 0x0
                  li           s1, 0xfcd2bd8c
                  li           s5, 0x0
                  add          a0, s4, s5
                  addi         s7, s4, -1190
                  add          s7, gp, a0
                  sub          tp, t5, t5
                  auipc        s7, 439496
                  add          s1, t5, s1
                  lui          s5, 177410
                  sub          a0, tp, s5
                  sub          s7, s4, a0
                  lui          s5, 117834
                  nop
                  sub          tp, s1, sp
                  add          sp, t5, sp
                  sub          s7, gp, tp
                  sub          s5, s5, a4
                  nop
                  auipc        gp, 223148
                  addi         s4, s4, -1
                  add          s5, s7, s4
                  nop
                  lui          s5, 907834
                  sub          s1, s1, s7
                  nop
                  add          tp, s4, s5
                  lui          tp, 437200
                  add          tp, a0, a4
                  addi         s1, s1, -2022
                  add          s5, gp, s7
                  nop #end riscv_int_numeric_corner_stream_11
                  auipc        s7, 799218
                  sltu         t3, a1, t2
                  lui          s0, 74266
                  add          a2, a6, a3
                  or           a3, a4, t6
                  xori         s2, sp, 221
                  add          s9, t2, a4
                  addi         a1, s5, 1019
                  sra          tp, s6, t4
                  or           t3, s6, s10
                  nop
                  and          s7, s6, s4
                  xor          a5, zero, t5
                  sra          t3, a6, s10
                  sub          tp, s5, t3
                  slli         zero, s7, 24
                  sub          a5, s1, s7
                  or           t6, s9, s0
                  and          s9, a6, a2
                  xor          t0, a4, t2
                  srl          s10, a1, s5
                  auipc        t5, 878881
                  slt          s1, s6, s10
                  slti         t4, a0, -1055
                  sub          s5, s11, s5
                  sra          s11, s3, s11
                  addi         s2, a5, 776
                  srli         a5, a0, 0
                  slli         a1, t2, 1
                  sra          sp, a4, zero
                  srli         a3, s10, 7
                  slli         zero, ra, 24
                  ori          a4, sp, 976
                  add          s9, a0, s2
                  sll          s10, t2, s9
                  nop
                  srai         a0, ra, 12
                  sra          t1, s3, s4
                  auipc        a1, 815618
                  srl          tp, a3, t4
                  sll          ra, s7, a5
                  lui          zero, 860152
                  sll          s8, s4, s3
                  sra          tp, a1, a7
                  slli         tp, s4, 20
                  slti         a0, a7, -735
                  nop
                  sra          s3, tp, tp
                  sll          tp, a2, a7
                  sll          t1, a1, a3
                  xor          a5, gp, a4
                  slti         s10, s3, -335
                  sub          s4, t3, a1
                  xori         s7, s0, 516
                  sltu         s8, s1, gp
                  sub          zero, zero, s5
                  andi         ra, a0, 1083
                  srl          zero, t0, s0
                  auipc        gp, 967597
                  sltiu        a5, s5, 1620
                  sll          a1, a2, t1
                  srl          gp, s6, s8
                  auipc        a4, 878626
                  srl          t5, s7, s0
                  slt          sp, s11, s6
                  slti         s9, t3, -1117
                  nop
                  ori          s3, a5, 686
                  andi         a6, gp, 666
                  ori          ra, s11, 652
                  sltiu        s1, s3, -1890
                  srai         s10, gp, 16
                  auipc        s8, 986521
                  addi         t0, a5, 1547
                  xor          s7, t4, s10
                  ori          zero, a7, -119
                  ori          a3, t0, 1393
                  xori         ra, t2, 1961
                  xor          a3, sp, a6
                  xori         a3, ra, 272
                  andi         a1, s11, -1299
                  sltu         t3, a4, s5
                  xori         s5, s7, -2
                  srai         s7, tp, 29
                  sltu         s3, s1, s8
                  ori          s9, sp, -1995
                  andi         t0, t5, -381
                  or           s2, a3, s9
                  addi         a4, s6, 136
                  lui          t5, 635399
                  add          t6, a3, t1
                  xori         a2, s3, 1587
                  or           s0, s4, s0
                  slti         a5, s10, 828
                  andi         a2, a0, 521
                  and          t3, s2, s3
                  xori         s0, a3, 135
                  addi         s4, a0, 1136
                  and          t1, s4, a5
                  srli         s8, a4, 22
                  auipc        s9, 591175
                  nop
                  sltu         s8, a6, a0
                  srli         s10, s2, 0
                  sra          tp, s3, s1
                  srai         t0, a1, 13
                  sll          a5, s6, a7
                  xori         ra, s3, -551
                  or           ra, zero, a4
                  andi         t5, a3, -600
                  slli         a0, t5, 24
                  srli         s0, a2, 29
                  sltiu        a0, s10, 752
                  srli         s7, s1, 11
                  srli         a5, t3, 3
                  sll          a6, tp, t1
                  xori         ra, a6, -1915
                  or           s11, s11, s10
                  sll          s1, t0, a7
                  sub          t1, t2, s0
                  srl          s8, t1, a6
                  andi         tp, t6, 1706
                  slli         a1, tp, 30
                  addi         a0, zero, 1537
                  sra          t5, s11, t1
                  slli         s5, a3, 6
                  xori         s11, a3, -1481
                  sltu         a6, s10, t1
                  andi         s2, t4, -1011
                  slli         s9, t2, 7
                  sra          t6, s0, s5
                  sra          t5, t0, s6
                  auipc        sp, 147246
                  srli         s10, tp, 15
                  xori         sp, s4, -1451
                  sra          s10, a4, a7
                  slt          s10, s10, s11
                  srai         tp, s9, 29
                  or           a1, sp, ra
                  auipc        a5, 558546
                  ori          a4, s8, 518
                  sll          a3, a0, s6
                  slt          a5, s1, s3
                  ori          gp, a0, 1957
                  sltiu        s3, tp, 440
                  sll          a0, s2, t6
                  auipc        s8, 961819
                  or           s11, a0, s0
                  addi         s2, t0, -1282
                  add          a2, s8, s5
                  nop
                  sltiu        t0, ra, 956
                  sll          zero, a2, zero
                  sltiu        gp, s7, 937
                  ori          t5, s8, 1552
                  srl          t6, zero, s1
                  slt          ra, a2, s0
                  auipc        s8, 1004834
                  sltiu        a4, gp, 1007
                  slt          s3, a3, s9
                  nop
                  slti         ra, a1, 887
                  ori          a5, a7, 577
                  and          s0, s2, s5
                  lui          t6, 798753
                  andi         t4, a7, 1372
                  add          a5, t5, s9
                  addi         t5, t0, -32
                  slli         zero, a6, 20
                  add          s3, s7, s3
                  andi         s10, tp, 578
                  sltiu        a2, a0, -1244
                  srai         gp, t6, 14
                  or           sp, t6, s0
                  lui          s9, 396058
                  srli         a0, a2, 21
                  andi         a5, s8, -454
                  slli         a5, a7, 15
                  add          t1, a1, a7
                  or           t6, s11, tp
                  sltiu        a6, s5, -158
                  add          s11, s0, a7
                  and          t1, t5, t2
                  xori         t6, s0, -1569
                  slti         s10, s7, 1052
                  slli         a5, a2, 14
                  or           t5, t0, s4
                  add          s8, a5, a6
                  slti         gp, t2, 586
                  sll          t1, t6, a4
                  slli         gp, t3, 20
                  ori          t3, t3, -251
                  add          t1, sp, sp
                  slti         gp, s3, 1143
                  nop
                  lui          zero, 326545
                  slt          a2, a2, a6
                  sltiu        s2, s6, 1242
                  auipc        t0, 575908
                  add          s1, a0, s6
                  ori          gp, s10, 1936
                  ori          sp, t0, 202
                  nop
                  ori          a1, a4, -511
                  sltu         ra, s3, t2
                  sltiu        t0, a4, 736
                  auipc        a3, 241064
                  srli         s5, a6, 31
                  auipc        ra, 45270
                  add          s0, gp, s2
                  sltiu        a3, a7, 1309
                  srli         ra, sp, 28
                  or           t5, s7, zero
                  andi         a5, s0, -93
                  sltu         a4, t6, s10
                  add          s3, a2, a5
                  sub          t0, t1, gp
                  andi         a1, a4, -1678
                  addi         s7, s2, 690
                  srai         t4, t3, 14
                  sltu         gp, t3, t5
                  xori         t3, s3, -1299
                  andi         a6, t5, -1697
                  sltiu        s5, s3, -1561
                  slti         s5, a6, -1362
                  sltu         s3, a2, s7
                  slli         tp, s3, 10
                  xori         zero, s6, 1980
                  nop
                  nop
                  slt          s2, s6, s2
                  and          s3, s0, t4
                  add          a5, t4, s9
                  and          t0, s4, a5
                  sltiu        zero, s5, -171
                  or           tp, a7, a1
                  xor          tp, a2, a1
                  and          t5, s4, t5
                  and          zero, tp, t3
                  srli         a6, s1, 26
                  slli         gp, s6, 29
                  sll          gp, t4, a3
                  slt          t6, s6, t5
                  and          ra, zero, t1
                  srli         s2, t0, 6
                  auipc        t5, 193487
                  slti         s3, zero, -1481
                  and          a4, a5, t3
                  or           s2, t3, zero
                  sltiu        ra, s7, -453
                  add          t5, s7, t4
                  slt          a1, s5, zero
                  sltiu        a4, a6, 810
                  auipc        a3, 47462
                  sltu         a1, a3, s9
                  auipc        t3, 864471
                  srli         t0, a7, 0
                  lui          a3, 913351
                  srai         t5, s8, 19
                  add          a3, s2, tp
                  addi         s3, a6, -205
                  andi         sp, ra, 1081
                  or           a4, a2, a5
                  sll          a3, a5, s2
                  xor          s2, t1, a4
                  nop
                  andi         a6, tp, -1579
                  slt          t3, s5, s6
                  ori          s1, gp, 367
                  add          a1, s4, s5
                  and          s7, s5, s3
                  sub          s0, t2, s1
                  sltiu        s8, tp, -435
                  sltiu        t4, s10, 233
                  xori         s9, t1, 2034
                  sll          s4, ra, t0
                  srai         a3, s4, 11
                  slti         a0, t2, -962
                  sra          a0, a6, t4
                  sra          a4, s10, a3
                  slt          a6, s0, s11
                  sll          s8, s7, t2
                  srai         a3, sp, 14
                  sll          s4, s9, ra
                  srli         tp, t1, 9
                  slli         t0, s11, 3
                  nop
                  ori          s4, s6, -1766
                  ori          s3, s2, -1573
                  xor          t6, zero, a1
                  srl          s5, s11, tp
                  slt          s2, t6, s3
                  lui          t0, 969445
                  ori          s3, a2, 1417
                  addi         s7, t0, -388
                  xori         t3, s8, -1710
                  sll          tp, s7, s11
                  or           s1, s9, sp
                  and          s10, t6, a5
                  sub          s7, t4, s8
                  sltiu        a5, s6, 424
                  addi         a6, s3, -28
                  sltiu        tp, sp, 1478
                  xori         s8, sp, -1032
                  sll          s9, s2, a7
                  auipc        s11, 377095
                  add          s4, s11, s4
                  addi         a2, s11, -411
                  ori          s4, a5, 932
                  slt          t4, s7, tp
                  sltiu        s9, s7, 2016
                  slti         a4, s3, -384
                  and          a5, s3, s5
                  nop
                  or           a6, t0, s1
                  andi         a0, s4, -539
                  and          a0, s10, t4
                  slt          gp, a1, s5
                  auipc        a0, 1004563
                  srai         t4, s2, 2
                  slt          a3, ra, sp
                  srl          s7, s5, ra
                  nop
                  srai         t3, a3, 30
                  sra          s10, a4, s10
                  sltiu        a0, a3, -81
                  sll          s7, a1, s7
                  nop
                  srl          s9, zero, s11
                  sltu         t5, tp, s7
                  nop
                  addi         s4, t0, 1147
                  auipc        s11, 484017
                  srai         s10, a3, 10
                  slli         zero, s9, 0
                  auipc        s8, 517854
                  srl          zero, s2, t3
                  srl          t0, t4, a4
                  xor          t3, a7, a7
                  slt          t5, zero, t0
                  addi         gp, ra, 495
                  add          zero, sp, t4
                  addi         sp, tp, -402
                  slt          s8, gp, gp
                  xor          s0, s2, s8
                  nop
                  sltiu        s2, a7, 699
                  sltiu        a6, s5, 79
                  sll          s8, t1, a0
                  srli         s2, s1, 13
                  slti         s1, t2, -1932
                  srli         t1, s9, 12
                  andi         t1, a7, -538
                  xor          s10, zero, t5
                  sltu         a0, tp, sp
                  sra          s10, s8, t3
                  ori          zero, s8, -464
                  sra          gp, a2, a3
                  sub          a5, a5, a6
                  and          gp, s6, s0
                  xor          t1, t1, t4
                  lui          s4, 246281
                  sll          s8, t3, t1
                  sll          s3, sp, gp
                  or           a5, s8, t3
                  xor          a1, t2, s9
                  xori         a0, s0, -1782
                  slti         gp, s1, -213
                  sra          s2, t2, sp
                  srl          t1, a4, sp
                  add          a6, s1, t1
                  lui          s10, 1015659
                  andi         t6, s3, 650
                  sub          a1, t1, a7
                  auipc        s0, 384653
                  sra          s1, a2, s3
                  xori         a1, a0, -1032
                  srai         t3, zero, 28
                  srai         a1, a1, 18
                  slli         a1, a6, 28
                  sltu         a0, a7, s2
                  srl          s9, a5, a4
                  sltiu        a5, t3, -1443
                  ori          s5, a6, 1463
                  auipc        sp, 113300
                  sll          s7, a7, a6
                  srli         s4, s3, 9
                  xori         t1, a2, 348
                  sltu         zero, s10, s3
                  andi         sp, a2, -1550
                  ori          ra, s2, 1660
                  nop
                  slli         a1, s11, 26
                  srai         s3, tp, 10
                  srl          a5, a4, a1
                  slt          s9, s5, a4
                  ori          t5, s9, -368
                  srli         s4, a1, 2
                  addi         a1, s9, -1819
                  and          gp, s4, ra
                  andi         t6, a2, 1643
                  slt          s10, sp, s7
                  srl          t0, t4, s2
                  slli         tp, t1, 20
                  slli         tp, s5, 14
                  add          s9, a4, s7
                  sll          sp, tp, s8
                  sltiu        s1, t6, 855
                  and          sp, a1, sp
                  or           sp, gp, t4
                  addi         ra, t4, -181
                  or           a6, t6, s8
                  sltiu        s10, sp, 1974
                  and          t5, a0, t4
                  or           s5, zero, t6
                  or           s8, s2, t0
                  ori          t4, t4, 434
                  add          s10, sp, a7
                  srli         gp, t2, 22
                  nop
                  sra          t0, zero, s1
                  addi         a3, gp, -1262
                  or           t6, s8, t6
                  sra          t6, t5, a0
                  sll          a4, t0, ra
                  add          a6, a3, a0
                  add          t3, s3, s9
                  sub          sp, a2, a6
                  srl          tp, zero, sp
                  and          s10, s10, a0
                  andi         sp, tp, -1864
                  slt          s10, a7, s3
                  slt          s9, sp, a4
                  srli         a6, s0, 9
                  lui          s7, 807321
                  sltu         t4, t1, s11
                  sra          a6, t5, a7
                  slt          t3, t1, s10
                  lui          a5, 138573
                  lui          tp, 338514
                  add          t4, s9, s3
                  addi         t3, s7, 678
                  or           s7, s1, s6
                  auipc        tp, 173599
                  addi         s1, t1, 1911
                  srai         t0, s4, 18
                  srli         s2, a4, 12
                  lui          t3, 1008212
                  srl          gp, gp, t6
                  add          s9, a4, a5
                  and          t4, t0, s11
                  xor          s5, a4, s11
                  andi         a3, t1, -595
                  slt          gp, a1, a3
                  slt          t6, a3, s6
                  slti         s7, a2, -1839
                  andi         s2, a7, -117
                  andi         s8, tp, -1649
                  ori          t6, t4, 592
                  srl          s11, s2, a5
                  ori          s10, t6, -764
                  srl          s1, t5, t5
                  srli         a2, s2, 14
                  xor          s9, s1, gp
                  sub          s7, t6, t5
                  srl          ra, a7, tp
                  or           s9, t5, s4
                  slti         t6, a4, -1904
                  sub          s10, s7, tp
                  or           s5, t3, s3
                  srli         t1, s8, 6
                  srl          zero, t3, a3
                  slli         s2, s10, 23
                  nop
                  lui          tp, 721671
                  and          t1, s4, ra
                  xor          s11, s3, s8
                  slli         a2, s1, 28
                  slli         t5, a5, 4
                  slli         tp, t1, 25
                  slti         s9, a2, 10
                  slli         a2, s5, 31
                  slti         s4, s1, -329
                  andi         t6, s4, 1196
                  or           zero, s1, s2
                  sltiu        a5, t2, -1572
                  lui          a5, 21863
                  nop
                  nop
                  or           t4, s10, a6
                  sltiu        gp, s3, -829
                  srli         t1, s4, 28
                  and          a0, a6, t4
                  add          s7, t5, a0
                  xor          t0, t6, s1
                  ori          t1, ra, 1454
                  slti         a2, s10, 1317
                  srli         a6, a2, 8
                  sll          s1, ra, a2
                  xor          s1, s7, a6
                  srli         tp, a4, 18
                  sltu         t6, s2, s4
                  andi         s8, s4, -102
                  sltiu        a2, s8, -1182
                  xori         a4, t1, -1168
                  slli         s8, s10, 16
                  nop
                  xori         a1, ra, -1975
                  sltiu        a5, a7, 336
                  sra          t3, t0, s11
                  sll          s0, a2, s0
                  sub          tp, t5, t0
                  sra          zero, a7, s11
                  srli         s0, sp, 18
                  addi         s3, gp, 322
                  srl          s1, t5, zero
                  sra          s0, t2, sp
                  lui          t5, 406979
                  xor          a1, a7, s0
                  sltiu        s10, sp, -1129
                  add          a4, s7, t0
                  srai         a2, s11, 4
                  addi         t5, s2, 1578
                  andi         tp, ra, -646
                  add          s11, a5, sp
                  sll          s4, s8, t1
                  slli         t1, a5, 7
                  and          s3, s2, a3
                  nop
                  srai         a5, t2, 1
                  slti         zero, t4, -347
                  nop
                  or           gp, s2, t2
                  slt          a1, s6, gp
                  auipc        t0, 385175
                  and          s0, s7, a1
                  and          a1, s7, t0
                  auipc        s9, 867055
                  sltiu        a3, gp, -523
                  slti         s10, a0, -228
                  and          t1, t1, a5
                  sra          t1, a3, zero
                  addi         sp, ra, 1472
                  slli         a6, t3, 12
                  auipc        a4, 477145
                  add          s1, t3, s1
                  add          sp, s11, a4
                  srl          t0, a1, a0
                  lui          a5, 435232
                  lui          s8, 774897
                  srai         a3, a6, 12
                  sltiu        a1, s1, -417
                  sub          t0, t2, t0
                  ori          t6, a5, 1113
                  nop
                  sll          a3, a4, a5
                  sltu         a0, t1, ra
                  slli         tp, gp, 5
                  slt          a0, t3, a1
                  addi         tp, ra, 1572
                  srl          s3, a5, s2
                  slli         a6, t3, 7
                  and          s3, a0, a5
                  sub          s5, t3, s8
                  nop
                  sll          sp, a3, s6
                  srai         a0, a3, 15
                  and          t3, s7, t0
                  slti         s10, s8, 1075
                  lui          tp, 515334
                  sll          ra, tp, a2
                  addi         a5, sp, -768
                  slli         s3, s9, 0
                  sll          t5, s0, ra
                  srli         s3, t3, 7
                  slli         zero, t5, 20
                  sltu         a6, a6, tp
                  sltiu        a5, tp, -271
                  sub          a6, t4, sp
                  xori         gp, a5, -914
                  auipc        s4, 667720
                  sra          s11, s6, a1
                  sra          ra, a4, t3
                  slti         t1, s9, -867
                  addi         s11, t1, -1747
                  or           s3, s3, a4
                  slti         s5, s3, -1986
                  add          zero, tp, a6
                  xor          s11, s0, s4
                  lui          s0, 566318
                  slti         s1, a4, 509
                  addi         a5, s5, 256
                  sub          t3, a0, s2
                  addi         gp, a1, -665
                  xor          t3, t6, a3
                  sltiu        t5, s0, -1686
                  xor          a1, s8, tp
                  addi         s4, s1, -1748
                  slli         a1, zero, 11
                  srl          t0, s6, zero
                  add          s2, t1, s1
                  auipc        s11, 826737
                  sll          t4, t4, a6
                  xori         a0, t1, 865
                  slli         a6, s9, 8
                  sltiu        s5, a6, 1061
                  srli         s10, sp, 9
                  xori         t3, zero, -1354
                  srli         s5, s9, 4
                  lui          t0, 234917
                  or           ra, s6, t3
                  add          a2, t2, s6
                  slli         a2, t6, 3
                  slti         s4, a2, -1161
                  slti         t4, t4, 733
                  add          a3, s3, s0
                  add          a4, a3, t5
                  lui          s4, 517892
                  srli         ra, a2, 9
                  sltiu        ra, ra, 1078
                  or           s2, tp, t2
                  slt          gp, s11, a6
                  add          t0, s1, t1
                  xori         a6, s5, -1840
                  srli         s10, t4, 21
                  andi         s3, a4, -681
                  slti         ra, zero, -171
                  srai         t6, tp, 15
                  slti         s9, t3, 870
                  ori          a0, t1, 1820
                  sltu         gp, t5, t5
                  xori         gp, s6, 972
                  slti         ra, sp, 37
                  lui          a5, 886175
                  srli         a5, s1, 27
                  addi         s1, a6, -481
                  slli         t4, s11, 18
                  sltu         s4, s7, t2
                  xori         s9, s1, -553
                  xor          sp, a7, t3
                  xori         a6, zero, 4
                  add          gp, t4, a6
                  sra          a4, a5, t1
                  sltu         ra, a5, a7
                  auipc        s3, 723049
                  slt          s10, a2, s11
                  xori         s10, s6, 1581
                  andi         t1, gp, -1317
                  addi         zero, t3, 831
                  ori          s5, a2, -1848
                  srai         s0, s4, 10
                  sub          t6, a1, gp
                  sltu         s8, s3, s11
                  or           t1, zero, t5
                  sltu         s2, a6, s2
                  andi         a4, a5, -904
                  or           s4, a3, sp
                  add          s3, sp, sp
                  sra          s0, s9, t4
                  andi         ra, a4, 624
                  sltiu        t5, t6, 1850
                  sll          s2, ra, a0
                  slti         sp, s1, 1032
                  sltiu        s8, s11, -104
                  sltiu        tp, ra, -582
                  nop
                  sltu         t0, a3, sp
                  auipc        a5, 300854
                  srai         a4, t1, 24
                  sltiu        a3, s6, 671
                  sra          t4, t2, s3
                  sra          a3, a4, s7
                  nop
                  srli         t3, t3, 1
                  sub          s0, a0, gp
                  sub          ra, a5, s7
                  ori          s9, t5, -449
                  ori          a5, s7, 443
                  slli         s5, s8, 19
                  sltu         s11, s3, s8
                  ori          s1, a6, 270
                  xori         s3, a4, -217
                  slli         s2, s2, 26
                  slt          s8, s6, tp
                  srli         a1, a1, 15
                  srai         t6, t1, 26
                  slli         s4, s6, 16
                  srl          a6, s8, a5
                  sra          t5, s4, s1
                  sra          a3, a6, t2
                  ori          zero, s11, 1557
                  srli         s7, a6, 11
                  slli         s8, t6, 11
                  add          s2, a3, t2
                  add          s9, s11, s11
                  add          s11, s2, t0
                  sltu         t4, ra, s1
                  sltiu        sp, gp, -935
                  add          s0, s11, a0
                  andi         s1, t0, -1364
                  slli         ra, s4, 10
                  xor          s1, t0, a0
                  srai         t3, gp, 11
                  slt          s8, t6, s8
                  slli         t1, s5, 0
                  slli         sp, s1, 0
                  or           s11, t3, zero
                  addi         s7, s8, -740
                  add          s4, t0, s8
                  srl          a6, s10, a2
                  ori          t5, a3, 342
                  srli         gp, ra, 25
                  sltu         t1, s4, a5
                  add          s5, s10, s1
                  srli         t5, t6, 12
                  sub          s5, s0, t0
                  sub          s11, a6, s11
                  auipc        a3, 673885
                  ori          s10, tp, 878
                  xori         tp, a0, 1832
                  add          s2, s5, t2
                  xori         s1, s1, 1307
                  sra          s9, gp, s3
                  sll          s0, s4, zero
                  andi         a2, s1, 576
                  srai         gp, tp, 5
                  auipc        a1, 812426
                  slt          ra, s10, s7
                  sltu         s8, s4, a7
                  andi         s11, a5, 230
                  sltiu        gp, s10, 1713
                  srl          t5, a6, s4
                  sub          s2, s6, s2
                  srl          t0, s5, s1
                  or           s4, s10, s9
                  addi         a1, zero, -824
                  srai         t1, t6, 28
                  slt          s5, t2, t2
                  sltu         s4, t5, zero
                  sll          s8, s5, t5
                  ori          s2, tp, 615
                  auipc        a0, 51174
                  or           t0, s7, s7
                  slli         t4, a2, 15
                  slt          s1, a5, a0
                  srai         s4, s4, 10
                  andi         t0, a0, -455
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a5, 0x0
                  li           a3, 0xffffffff
                  li           tp, 0x87cdf29f
                  li           t3, 0x0
                  li           t4, 0x80000000
                  li           gp, 0x80000000
                  li           s3, 0xffffffff
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  nop
                  add          tp, a3, a4
                  sub          t3, a5, gp
                  sub          s2, t4, tp
                  sub          t3, s3, s3
                  nop
                  nop
                  add          a4, s3, s2
                  auipc        a3, 446516
                  nop
                  addi         s2, t4, 305
                  nop
                  lui          s3, 554824
                  sub          s2, t4, gp
                  addi         s2, a2, -18
                  auipc        s2, 463740
                  addi         s3, a4, 1003
                  nop #end riscv_int_numeric_corner_stream_3
                  slt          sp, s9, s10
                  sub          sp, a5, a1
                  auipc        t4, 814683
                  sll          a5, tp, ra
                  slli         gp, s0, 31
                  srl          a1, sp, s11
                  sltiu        t1, a5, 721
                  srl          s11, gp, t2
                  andi         t4, ra, -1199
                  andi         ra, a0, -1780
                  srl          s4, s4, tp
                  lui          t1, 134406
                  addi         t0, t6, -1930
                  auipc        t5, 954850
                  ori          t4, s8, -42
                  srl          t0, ra, zero
                  lui          a5, 854060
                  and          tp, a4, t1
                  slt          t5, tp, s3
                  sltu         s1, tp, s2
                  sltu         a3, tp, a2
                  slli         ra, a7, 2
                  andi         t3, s9, -296
                  and          s9, t4, t1
                  sub          a6, s3, t4
                  add          t5, s5, gp
                  and          ra, tp, s6
                  slti         t1, s8, -140
                  addi         s8, a4, -690
                  sub          s0, t5, zero
                  and          t5, t3, a3
                  auipc        gp, 261136
                  and          zero, s2, s8
                  sll          ra, a2, s11
                  and          a3, t2, s8
                  ori          t6, s7, -415
                  xor          t1, a1, s11
                  nop
                  or           t3, s1, s0
                  sll          s3, t0, a2
                  xori         t6, t6, 1877
                  srai         s2, a2, 29
                  sltiu        a3, t5, 701
                  or           ra, s10, a1
                  srl          t1, tp, s5
                  srai         s10, s4, 18
                  srli         t0, s2, 18
                  srl          a0, a1, s8
                  slli         a5, t6, 1
                  sra          t1, a7, a2
                  lui          t0, 354890
                  sll          s7, t4, a3
                  srli         s9, tp, 17
                  slt          t3, s3, a6
                  slti         t6, s3, -1067
                  add          a6, t4, a2
                  srli         a4, s6, 16
                  lui          t1, 843721
                  ori          t0, tp, 75
                  srli         t4, a2, 23
                  sltu         s0, s4, s6
                  srai         t1, t0, 8
                  auipc        ra, 492777
                  slt          t3, a7, s8
                  srai         tp, t5, 7
                  auipc        a3, 404904
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a2, 0xffffffff
                  li           a5, 0x0
                  li           gp, 0x0
                  li           s10, 0x80000000
                  li           s8, 0xf1be261
                  li           s11, 0xffffffff
                  li           a3, 0x0
                  li           t6, 0xbdc47444
                  li           s3, 0x80000000
                  sub          s11, s11, gp
                  addi         a5, s8, -1806
                  sub          a3, s10, s8
                  auipc        s8, 876581
                  add          a2, gp, a5
                  addi         t1, t6, 704
                  add          gp, a3, a2
                  auipc        s10, 849944
                  lui          a2, 474043
                  auipc        a2, 438765
                  nop
                  lui          s8, 375830
                  sub          a3, t6, t6
                  auipc        s3, 433866
                  sub          s3, a3, s3
                  auipc        t1, 882643
                  nop
                  lui          s10, 493300
                  lui          t1, 495952
                  addi         t1, s10, 722
                  lui          s10, 188763
                  sub          s3, a2, t6
                  addi         s11, a3, -1391 #end riscv_int_numeric_corner_stream_6
                  srai         s9, t3, 6
                  srl          a1, s3, t2
                  xori         zero, a2, -1425
                  lui          s8, 744287
                  nop
                  add          a5, t5, s3
                  slti         s10, s8, 1901
                  auipc        s4, 433706
                  nop
                  sra          s1, zero, t2
                  sll          t6, t3, t1
                  slti         a6, tp, -1522
                  and          s4, s9, s7
                  slli         s5, t6, 11
                  sltu         s1, s2, s11
                  slti         t6, t1, 1218
                  srl          t4, s5, zero
                  srli         t3, a4, 29
                  and          a2, t3, s10
                  srli         s4, s8, 21
                  srl          t6, t5, t2
                  slti         s5, t6, -115
                  or           a5, s9, a1
                  slli         a3, t3, 29
                  srli         gp, s7, 22
                  ori          t4, t1, 1118
                  sltiu        t4, s5, 319
                  slt          t6, s7, t3
                  slt          gp, a4, s7
                  lui          t5, 376592
                  ori          s2, t2, 1761
                  or           a0, ra, s9
                  add          s4, s9, s7
                  xor          s11, s4, sp
                  sub          a0, t5, s10
                  ori          s10, t0, -1930
                  xor          s2, a6, t1
                  srai         s8, s6, 3
                  or           a1, s3, t0
                  slli         t3, s4, 31
                  or           t3, t2, ra
                  srai         s4, tp, 27
                  auipc        s0, 576788
                  andi         s5, s9, -284
                  srli         a1, a0, 30
                  slt          a0, t1, a0
                  add          s11, s8, a6
                  addi         gp, t3, 1569
                  nop
                  sltiu        a5, s11, 1147
                  sll          t4, a5, a3
                  and          t5, a1, t1
                  add          s10, a7, t6
                  xor          s4, s5, t2
                  sub          a2, ra, a2
                  andi         a3, s10, 665
                  xor          ra, a3, s0
                  xori         s10, s3, -944
                  and          gp, s2, s0
                  xori         a2, a5, 208
                  addi         s7, s9, -223
                  xori         s2, a5, -420
                  xori         t1, tp, -1094
                  slti         ra, sp, 562
                  xor          s7, tp, ra
                  srl          a3, s2, s7
                  sll          tp, s6, s6
                  nop
                  or           s7, t0, t4
                  slt          a0, s3, a6
                  add          s5, s11, a7
                  sll          gp, s8, t1
                  nop
                  xor          s10, a4, tp
                  sra          t5, gp, s9
                  srai         s2, s0, 4
                  ori          s2, t0, -1552
                  auipc        ra, 646992
                  srl          zero, t5, a3
                  nop
                  andi         t3, gp, -1176
                  sll          s9, s9, s9
                  srli         s7, a1, 6
                  addi         s10, s9, -1203
                  sll          s4, tp, a6
                  sra          t4, a7, t1
                  auipc        a6, 863149
                  xori         ra, a4, 1515
                  srl          a1, s4, ra
                  slli         sp, s3, 17
                  nop
                  sll          s1, zero, s7
                  sltiu        t3, t3, 1438
                  slli         a6, s6, 22
                  sltiu        zero, ra, -276
                  and          a0, s0, sp
                  add          a1, tp, a5
                  sra          ra, sp, s1
                  srai         t3, t6, 9
                  sll          sp, t0, s1
                  sltu         s4, s4, t3
                  sll          tp, s11, a3
                  auipc        s4, 9685
                  slli         sp, s8, 30
                  sltiu        s2, t3, -864
                  sll          a0, s1, s3
                  xor          s9, t6, ra
                  sub          t0, s9, a3
                  xori         s0, a7, -1681
                  slt          s8, a7, a4
                  or           s3, t1, s11
                  ori          ra, t3, -497
                  slt          a4, t3, s1
                  sltu         a6, a7, a7
                  sra          s0, s4, tp
                  lui          sp, 442521
                  srai         ra, a7, 29
                  add          sp, s11, s9
                  sub          sp, a7, s8
                  sub          s3, s9, t2
                  ori          gp, tp, -1806
                  and          t6, ra, a0
                  auipc        a2, 289917
                  sub          s2, a2, a7
                  sll          t3, s3, t1
                  srai         t6, s7, 15
                  srli         t5, t3, 12
                  or           s10, a1, s7
                  slli         s5, a7, 22
                  sltiu        s3, t6, 638
                  or           t6, t5, gp
                  andi         sp, ra, -1542
                  sltiu        s10, s5, -765
                  sltu         t3, s8, tp
                  slt          ra, s6, a6
                  sll          a4, a2, t4
                  srl          sp, s10, t3
                  xor          ra, t4, t5
                  sltiu        sp, s5, 1810
                  nop
                  or           s5, s0, s6
                  addi         sp, a5, -2006
                  srl          t0, a2, a0
                  slti         s8, s5, -1915
                  sra          t6, a2, s8
                  xor          s5, s6, a1
                  lui          s3, 961502
                  slt          s10, s7, a1
                  sltiu        a0, a6, 1720
                  slt          s4, a3, t5
                  sra          s1, t0, a5
                  sra          t4, s9, s5
                  srai         s10, s10, 4
                  slti         gp, a0, 662
                  sltiu        a0, s5, -528
                  or           a5, t3, t2
                  addi         s7, s3, -1444
                  add          s4, s6, s8
                  sra          s7, a7, s6
                  nop
                  ori          s8, tp, -63
                  sub          gp, a5, sp
                  addi         s11, s6, -1250
                  sra          s3, sp, t1
                  or           s1, t4, s4
                  sltu         t1, s5, t4
                  or           s9, s11, tp
                  add          t0, s7, tp
                  srai         sp, s11, 10
                  addi         s2, t2, -140
                  addi         a0, gp, -1008
                  add          zero, tp, s3
                  auipc        s2, 178436
                  xor          a1, a3, s0
                  sll          a3, a0, a3
                  sra          s11, a1, t3
                  addi         a6, t2, -295
                  lui          t3, 999860
                  andi         s3, s1, 299
                  and          s7, t6, a6
                  srli         a4, s5, 6
                  srli         a4, t0, 22
                  slt          a5, s1, t2
                  sra          s3, t3, t3
                  sll          tp, ra, s7
                  sltiu        s9, s7, -1069
                  sll          s5, s1, s6
                  and          s4, s2, t4
                  sra          s3, s4, s11
                  or           a0, a2, s9
                  sll          s2, s4, s10
                  or           s4, t5, s5
                  sltu         a1, s3, s1
                  and          a1, a6, a5
                  sll          s4, sp, s6
                  sra          s7, t3, a4
                  slli         s4, a4, 20
                  andi         s2, a4, 972
                  xori         s10, s7, 249
                  sltu         s8, a1, s11
                  auipc        gp, 155822
                  sra          s4, t1, s5
                  srai         s2, s4, 29
                  sll          s9, s1, a5
                  slt          zero, s0, a1
                  slli         s4, a0, 7
                  slt          s11, t1, s6
                  ori          t5, a0, 846
                  xor          sp, a5, s11
                  sltu         a3, zero, gp
                  xor          a4, s4, s1
                  add          t1, t4, a6
                  auipc        s7, 325949
                  and          a0, a2, s9
                  srai         s5, t0, 18
                  sltu         s9, s4, s4
                  add          s7, t4, a6
                  xor          tp, s3, a4
                  nop
                  sltu         ra, sp, t6
                  sltu         a3, s5, a6
                  srli         sp, t5, 16
                  srai         t1, tp, 9
                  sltiu        t0, a4, -1118
                  andi         s3, t2, -1563
                  srl          s2, t4, a7
                  srli         t6, zero, 20
                  sltiu        s4, s4, -845
                  srli         s8, s4, 20
                  srli         tp, t2, 4
                  srai         s7, a1, 9
                  lui          a3, 81476
                  sltu         t1, t2, a5
                  srai         s4, tp, 7
                  auipc        gp, 850732
                  slli         t1, gp, 31
                  or           t1, t0, s9
                  ori          s4, s11, -1724
                  add          zero, t4, s6
                  nop
                  addi         s10, t4, 309
                  sub          sp, a4, t0
                  nop
                  addi         a4, t2, -104
                  lui          s4, 755473
                  or           gp, s2, t0
                  addi         s1, zero, -531
                  sra          s7, s7, t2
                  sltiu        a0, s8, -756
                  slti         a1, a6, 1558
                  ori          s2, s11, 1797
                  sll          ra, s3, s6
                  srai         s8, sp, 26
                  nop
                  srai         t6, tp, 6
                  sll          s9, s1, ra
                  slt          s0, t3, tp
                  lui          t3, 731087
                  slt          a4, a7, t3
                  nop
                  sll          zero, a6, s10
                  sltiu        s2, ra, -451
                  addi         t1, t5, -1608
                  srli         s8, s7, 25
                  auipc        zero, 175910
                  sltiu        t3, t5, -1707
                  andi         t1, gp, 1098
                  slt          sp, zero, s5
                  addi         t1, s7, 1303
                  sltu         tp, a6, s9
                  sll          s8, a0, a6
                  addi         s10, zero, 315
                  addi         a2, t2, -1195
                  sltiu        s5, s2, 980
                  srl          ra, t3, s9
                  lui          s2, 1031613
                  add          s8, t2, s11
                  sra          a4, a0, tp
                  sub          s10, t6, a0
                  lui          a3, 949863
                  ori          s8, s0, -733
                  sltiu        s4, a5, -560
                  nop
                  sltiu        tp, s1, 1264
                  slt          ra, s6, t0
                  addi         t1, a7, -1469
                  xor          s1, a2, s3
                  ori          s10, zero, 628
                  sltiu        a1, a0, 1540
                  srl          t1, t6, sp
                  sub          s10, s10, t0
                  ori          s1, sp, 1983
                  ori          zero, t0, -629
                  xori         a5, ra, 1411
                  lui          t3, 604915
                  add          a3, t6, s0
                  slt          t1, gp, a3
                  sra          s8, a1, s11
                  srai         a4, s4, 25
                  add          a0, s3, t6
                  slli         s0, ra, 29
                  xor          a6, a2, a0
                  srl          a0, s6, s9
                  auipc        s11, 875082
                  auipc        t3, 273481
                  slti         gp, s5, -381
                  ori          t5, s6, -1025
                  sltiu        a5, t0, -27
                  addi         s7, s8, 230
                  auipc        a5, 665568
                  sll          s8, s10, gp
                  nop
                  srli         t5, s1, 21
                  lui          s11, 787180
                  andi         a4, a1, -1488
                  srai         s2, t0, 30
                  slt          t0, ra, t6
                  sll          t4, t1, a0
                  slli         s9, s11, 25
                  srli         s7, zero, 4
                  sra          a3, s8, zero
                  addi         s10, a4, 1453
                  auipc        s3, 574463
                  ori          s1, s6, -1493
                  or           a5, s2, gp
                  sll          t5, s0, s0
                  srai         s3, ra, 26
                  xor          s8, s2, s8
                  sub          s0, ra, ra
                  slli         t3, t6, 1
                  slli         t1, a6, 28
                  sub          a0, s6, sp
                  sra          t0, t6, s1
                  ori          s1, ra, -1468
                  auipc        s10, 748545
                  add          t4, a5, s1
                  xori         s5, t4, 846
                  sra          t1, a4, s0
                  xori         s7, t1, 393
                  slti         s2, s6, -443
                  andi         t0, tp, 1936
                  ori          s4, s0, 46
                  add          t4, t3, gp
                  xor          s8, s7, s9
                  and          a3, s5, sp
                  add          s11, a1, s7
                  slti         tp, a5, 154
                  addi         t4, a2, -568
                  sra          tp, zero, t6
                  sub          gp, a1, s1
                  sltiu        s1, a5, -588
                  sll          s5, t3, a7
                  sub          zero, s4, a0
                  and          a2, s11, t3
                  slti         a0, t4, -1823
                  sltu         a5, a4, gp
                  sltiu        a2, t6, 206
                  sub          s1, s9, t2
                  sltu         a4, t3, s4
                  sub          a4, s8, a4
                  sltu         ra, t5, s9
                  andi         a4, zero, -1993
                  srai         s9, s1, 28
                  andi         t1, s3, 739
                  srl          s8, t3, s2
                  or           s9, a3, a3
                  sltiu        a5, t0, 229
                  add          t6, a5, a1
                  srl          s2, s4, s9
                  sub          a5, t2, t1
                  ori          t4, s4, 370
                  sltu         s4, t4, gp
                  and          s2, s0, tp
                  nop
                  auipc        a2, 683987
                  slti         a2, ra, -1488
                  or           ra, gp, t5
                  xor          tp, zero, s5
                  srl          s1, s10, s4
                  or           s9, a4, a0
                  sub          a5, a1, a2
                  sll          s10, s11, a3
                  andi         a0, s6, -30
                  addi         sp, a7, 685
                  slti         s9, a5, -996
                  and          t0, s5, a2
                  addi         s3, a3, 799
                  srl          gp, s3, t3
                  sra          a0, a2, t0
                  sltiu        ra, s3, 617
                  lui          t5, 505533
                  or           s9, t1, a4
                  andi         t1, t4, -1118
                  and          ra, t6, a4
                  add          ra, a2, ra
                  srai         sp, a3, 12
                  addi         a3, s1, 1457
                  srl          t6, a4, s11
                  or           s1, a0, ra
                  slti         ra, t0, 1322
                  sll          s7, t3, t3
                  add          a1, a5, gp
                  srl          s0, s1, gp
                  slli         t1, sp, 26
                  auipc        gp, 99027
                  slt          s4, s7, a6
                  slli         a3, s1, 29
                  lui          t4, 240105
                  sltiu        t5, s9, 456
                  sra          s7, a1, s7
                  srl          t3, t5, s4
                  slt          s1, s9, t3
                  xor          s7, gp, s0
                  srl          s11, zero, a4
                  auipc        a5, 796637
                  sltiu        t3, s0, 1551
                  lui          a3, 275633
                  srl          a2, a0, a4
                  slli         s4, a1, 30
                  sltu         t3, tp, t4
                  sll          sp, a3, s11
                  sub          s5, s11, s8
                  nop
                  or           a4, a7, s10
                  sltu         a3, t4, t1
                  and          a3, zero, ra
                  li           a5, 0x65b23e9d #start riscv_int_numeric_corner_stream_10
                  li           a6, 0x0
                  li           a2, 0x0
                  li           s7, 0x0
                  li           t6, 0xffffffff
                  li           s5, 0x8df7d578
                  li           a3, 0xffffffff
                  li           s2, 0xffffffff
                  li           s9, 0x0
                  li           t0, 0x6967ef1a
                  lui          s7, 153422
                  addi         t0, a5, 1601
                  nop
                  addi         t6, s2, -1687
                  nop
                  addi         a2, a3, 23
                  add          t0, a2, a3
                  add          s7, s9, s9
                  add          s9, a2, a5
                  lui          a5, 395432
                  nop
                  nop
                  add          s9, a5, t6
                  auipc        t0, 588961
                  lui          a6, 2183
                  add          s2, a2, s5
                  auipc        a2, 743353 #end riscv_int_numeric_corner_stream_10
                  add          s5, t0, s2
                  nop
                  sltiu        s9, s8, 497
                  auipc        t6, 32319
                  sub          t6, s0, s2
                  srai         a5, s1, 6
                  sltiu        s11, s8, 586
                  lui          s9, 801209
                  or           t3, s9, s3
                  sltiu        t0, tp, 1814
                  or           a0, a3, zero
                  andi         a6, s9, -1090
                  or           s4, a4, a1
                  andi         s2, a2, -1909
                  andi         s9, zero, -291
                  lui          sp, 567639
                  or           a4, tp, a3
                  srli         t5, a4, 20
                  sub          ra, t0, s4
                  or           a0, s9, a1
                  nop
                  xor          t5, a3, s11
                  xori         t5, sp, 511
                  sll          s11, ra, t3
                  slti         t0, s4, 1458
                  slt          s3, a6, s4
                  and          zero, a7, tp
                  srai         a3, s8, 10
                  srl          t5, s2, s8
                  slli         s2, s7, 13
                  andi         a0, t5, 1685
                  srli         s8, s9, 25
                  slt          s7, ra, a2
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_22
                  li           t3, 0x80000000
                  li           s8, 0x80000000
                  li           tp, 0xffffffff
                  li           s0, 0x5e431bc4
                  li           a5, 0x3f559360
                  li           ra, 0xffffffff
                  li           a0, 0xffffffff
                  li           gp, 0xffffffff
                  li           a4, 0x0
                  add          tp, tp, s0
                  add          a0, tp, a0
                  sub          ra, s7, s7
                  sub          s7, a0, tp
                  auipc        a5, 874629
                  sub          ra, tp, ra
                  auipc        tp, 524558
                  add          a4, a4, s0
                  lui          gp, 484973
                  lui          a5, 948889
                  lui          s8, 197189
                  nop
                  nop
                  addi         tp, gp, 403
                  nop
                  sub          s8, s8, s8
                  add          s8, a5, a0
                  nop
                  auipc        t3, 410694
                  auipc        tp, 676500
                  add          a0, s8, a0
                  lui          s7, 490168
                  addi         ra, s8, 1048
                  addi         gp, ra, 1780
                  addi         s0, tp, 878
                  addi         a5, tp, -758
                  nop
                  add          a5, s8, s7
                  auipc        t3, 575627 #end riscv_int_numeric_corner_stream_22
                  srli         t5, s4, 9
                  lui          a0, 137073
                  ori          gp, s1, 1557
                  lui          s7, 378307
                  add          s3, t2, a6
                  and          s3, s9, a0
                  or           t1, s11, t2
                  addi         a5, a6, -1338
                  sub          s7, a7, s8
                  sub          s9, t4, tp
                  sltu         t4, s2, a5
                  sltiu        s3, t4, -1300
                  slt          a5, s10, s7
                  xori         s4, zero, 1575
                  slti         a2, a1, -1918
                  slli         a0, a4, 26
                  sltiu        s1, s9, 263
                  sltiu        a5, s3, 792
                  sll          a1, t1, tp
                  sub          a1, s10, t5
                  andi         zero, tp, -1620
                  sltu         s11, s2, a2
                  auipc        s11, 220494
                  andi         s3, s7, -1057
                  andi         t3, a0, -277
                  addi         s11, s0, 1337
                  srai         zero, s1, 22
                  slli         t1, a3, 18
                  auipc        t1, 801735
                  ori          t3, sp, 948
                  sltiu        t3, ra, 1960
                  sltu         s7, s0, a0
                  sub          a2, s2, s2
                  ori          t3, s11, -298
                  or           a3, zero, t0
                  slt          s2, t3, s1
                  andi         a0, s11, 290
                  slt          a2, sp, gp
                  slti         s5, s2, -390
                  srl          s8, s3, t6
                  and          a0, s10, s2
                  srli         s5, t1, 19
                  slt          a1, gp, a2
                  sltu         s8, sp, t1
                  lui          t4, 991618
                  add          s10, a7, zero
                  sltu         t6, t6, t0
                  andi         s9, a4, -463
                  xor          gp, s5, s10
                  auipc        a6, 893187
                  slt          a3, t5, sp
                  sltu         s11, t3, s4
                  auipc        s3, 187500
                  slti         a6, s4, -227
                  or           t5, t6, t6
                  sra          s7, s9, s7
                  sltu         t4, a7, t6
                  sll          t5, s8, t3
                  andi         s8, a4, 1216
                  and          a2, s6, gp
                  slti         s3, tp, 849
                  sltu         t0, tp, a0
                  nop
                  srl          t4, gp, a6
                  srai         t0, t2, 8
                  auipc        s2, 967613
                  nop
                  and          s7, a1, s8
                  andi         s0, a2, -1710
                  slli         s1, s6, 5
                  srai         t4, s1, 3
                  srli         a6, a2, 1
                  or           gp, s5, s7
                  sltu         t6, t2, s3
                  sra          gp, a3, sp
                  nop
                  lui          s5, 606032
                  sra          a2, a0, s4
                  xori         a5, a3, -1929
                  sub          gp, t0, a1
                  auipc        gp, 422677
                  sltu         s5, t4, a4
                  or           sp, zero, s5
                  nop
                  sra          s1, t5, s6
                  slt          a4, a4, s10
                  slti         s2, a6, 948
                  srl          s2, s11, t6
                  ori          a2, t0, 1730
                  auipc        t4, 230553
                  nop
                  add          sp, s2, t1
                  sltu         s3, a0, t3
                  sll          s9, a0, s11
                  slli         t0, a6, 25
                  addi         a0, t1, -148
                  and          t5, a5, sp
                  nop
                  slli         t1, s4, 13
                  and          a0, s0, s11
                  slt          a5, a7, t5
                  ori          s11, gp, 109
                  nop
                  and          t6, s8, tp
                  sub          s1, zero, a3
                  nop
                  sra          zero, s2, s11
                  lui          sp, 945316
                  or           t4, s11, t1
                  lui          a4, 817976
                  sub          s2, s0, ra
                  slt          gp, gp, s4
                  sll          zero, a7, s3
                  srl          s4, a5, a7
                  add          s9, t5, a3
                  srli         s9, s11, 9
                  sub          s0, s2, s8
                  slt          t5, s2, gp
                  xori         s3, a7, 1702
                  slt          sp, t1, t0
                  add          s4, t3, s8
                  slli         t1, sp, 18
                  sll          s2, a0, t5
                  sltiu        s2, t2, 117
                  sub          s5, t3, t3
                  or           s1, a1, t2
                  sub          a5, t4, s10
                  or           t3, t5, a4
                  slt          tp, t1, s4
                  andi         s9, a3, 856
                  add          s3, s3, a4
                  andi         t4, a6, 6
                  sltiu        zero, s0, -1016
                  sltu         t1, a6, a4
                  auipc        s5, 165466
                  sltu         a5, t2, s1
                  srli         a5, a1, 26
                  sra          a1, ra, t3
                  slli         zero, s0, 19
                  srai         t6, a6, 0
                  and          s2, s1, t3
                  slli         ra, a1, 29
                  sub          a2, tp, zero
                  nop
                  srli         s5, a5, 12
                  slli         a3, ra, 30
                  srli         t6, s1, 4
                  lui          t1, 429876
                  srai         gp, t0, 23
                  srl          s9, s7, a2
                  sll          a5, a2, a0
                  or           gp, t2, s0
                  sra          sp, s9, t2
                  sub          s4, t3, zero
                  xor          s9, s6, ra
                  auipc        s10, 404656
                  addi         t0, t3, 289
                  xor          s0, s1, a2
                  sltiu        s0, t4, -672
                  sltu         s7, t0, a2
                  sub          a1, s9, a0
                  andi         s5, s2, 313
                  slli         s1, s5, 12
                  sub          s7, s10, a4
                  andi         a6, a2, 1084
                  srli         sp, s1, 22
                  addi         a3, a6, -1852
                  srli         a5, tp, 0
                  ori          sp, s4, -735
                  nop
                  sra          zero, a7, a7
                  slti         a3, a5, -1697
                  and          a2, t5, t1
                  sra          a4, s1, s5
                  sra          s1, s0, s7
                  addi         sp, s10, 129
                  xori         t0, s1, -1354
                  sltiu        tp, a0, -1739
                  and          t1, t4, a5
                  nop
                  sltu         s9, gp, s9
                  sltiu        s4, s7, 154
                  addi         zero, s10, 175
                  sltiu        s1, tp, -1214
                  slli         t6, s5, 10
                  or           a6, s2, t0
                  slt          t1, a3, a3
                  slli         a2, s10, 9
                  slt          s5, s1, t2
                  slli         t6, a3, 29
                  sll          s7, s5, s2
                  sltiu        a2, s7, 1089
                  sltiu        s8, s10, -1108
                  sltu         ra, t4, s1
                  add          t3, zero, s1
                  srai         zero, t4, 7
                  sll          t3, a1, s1
                  ori          s9, a5, 1133
                  and          s0, s10, a5
                  nop
                  auipc        t6, 644516
                  xor          s2, s5, s8
                  auipc        s7, 98683
                  xori         tp, a7, 918
                  nop
                  sltiu        a4, a3, 1239
                  addi         a5, t5, 1454
                  and          s0, a1, gp
                  andi         sp, s9, -383
                  and          a3, a3, a1
                  sltu         t6, gp, t1
                  xori         s0, s6, 1074
                  xori         a4, s10, 384
                  or           ra, t0, ra
                  add          t3, s9, s4
                  sra          s4, s10, t4
                  xor          a0, s7, t0
                  slli         t6, sp, 25
                  auipc        a5, 512951
                  srl          s8, a5, tp
                  and          s0, s11, s5
                  srai         gp, s2, 18
                  srli         s9, t1, 20
                  sltiu        s2, tp, -1703
                  sra          a4, a1, s4
                  andi         a3, a4, 516
                  lui          s8, 950473
                  slli         ra, tp, 31
                  srl          ra, sp, a1
                  srli         a6, t1, 20
                  lui          sp, 966342
                  add          t5, s6, a5
                  sub          a1, s3, sp
                  srl          a6, a6, s0
                  lui          a1, 618810
                  add          t5, s1, tp
                  slt          tp, s9, s4
                  sll          s2, s6, zero
                  sub          s9, a5, t3
                  ori          a2, a6, -743
                  sltiu        s10, a3, 96
                  sll          s2, a7, t5
                  srl          ra, tp, s8
                  slt          a3, s4, a4
                  addi         s1, t1, -1991
                  add          s11, a0, gp
                  and          ra, s7, s3
                  slti         a1, s2, -202
                  auipc        s9, 766380
                  add          a5, s3, s5
                  srli         s9, s11, 25
                  auipc        tp, 815547
                  slti         a6, a6, -2009
                  nop
                  auipc        a6, 633146
                  xori         t1, s8, -753
                  srai         t1, t5, 26
                  slli         a1, a1, 16
                  sub          s11, a4, s11
                  srl          gp, a2, a2
                  lui          s0, 355966
                  ori          a1, s11, 1957
                  and          s11, t2, s7
                  slt          s5, s11, sp
                  lui          s2, 438037
                  addi         s3, t2, 1066
                  slt          ra, s1, t2
                  andi         t1, t6, -189
                  addi         t5, a7, -652
                  sub          sp, t1, t0
                  sltiu        s2, tp, 539
                  and          s9, s10, s7
                  addi         a5, a7, 225
                  slti         t6, gp, 1315
                  srai         ra, a2, 1
                  xor          a4, s4, a7
                  nop
                  sll          s4, s7, s2
                  xori         a3, s2, 1752
                  auipc        t0, 575782
                  sltu         t1, s4, gp
                  slli         s7, t2, 3
                  sltiu        t5, t6, 1091
                  srli         tp, a4, 20
                  lui          tp, 409789
                  slli         ra, a5, 5
                  xor          t0, a7, s5
                  sltu         s3, tp, s8
                  ori          a6, t0, 1577
                  sltu         a1, a1, a0
                  srai         t0, a5, 0
                  auipc        s8, 611686
                  or           t5, tp, a4
                  srl          s0, zero, tp
                  sltiu        t0, a2, 381
                  sltu         a2, a2, ra
                  sll          gp, s5, s1
                  nop
                  ori          a4, s5, -1611
                  ori          a0, zero, -1421
                  sub          t5, zero, s0
                  nop
                  srli         s4, t0, 15
                  sltiu        s9, a7, -1418
                  and          gp, a6, s4
                  lui          ra, 721399
                  andi         s7, t3, -1833
                  xori         a4, a5, 383
                  srli         t1, gp, 5
                  srli         s5, t5, 16
                  srai         a2, a6, 10
                  addi         t5, a6, 805
                  andi         t4, t3, 1097
                  slt          t1, s7, t5
                  addi         tp, s3, 180
                  sltu         tp, sp, sp
                  andi         sp, zero, -369
                  andi         t5, t1, -1478
                  or           s5, zero, s11
                  nop
                  sub          s0, s7, s3
                  sltu         a2, s6, a2
                  lui          a3, 8966
                  ori          s0, a5, 1732
                  or           tp, s2, s11
                  add          s8, s5, s1
                  lui          gp, 967867
                  sra          t0, s3, ra
                  sub          gp, s0, t3
                  slli         a2, t6, 18
                  addi         a1, t6, 1446
                  and          s7, s4, t1
                  srli         t5, t1, 2
                  srl          s4, a5, s10
                  lui          t1, 267970
                  andi         s4, a4, -1677
                  auipc        s4, 315203
                  addi         a0, a7, 302
                  slti         t5, a7, 1566
                  slti         a0, ra, -1941
                  or           a6, s0, s2
                  slti         t1, t4, -907
                  sra          s1, a5, ra
                  add          t5, gp, a5
                  ori          a2, a2, 991
                  srl          t0, t2, zero
                  ori          s10, a5, -1877
                  sltiu        a1, a6, -1938
                  or           a6, s10, t5
                  or           s9, t4, tp
                  slt          s8, a6, t2
                  slt          s1, s4, t6
                  slti         a3, a7, 1672
                  sltiu        s9, s8, -896
                  nop
                  sltu         a2, a0, s3
                  sra          s7, s7, ra
                  or           t0, s1, ra
                  sub          s11, ra, t0
                  add          a1, s7, a6
                  xori         t6, t5, 231
                  sll          t3, s1, a6
                  slli         s9, a1, 15
                  or           a3, s7, s3
                  addi         s4, t2, -1425
                  andi         s11, gp, -164
                  or           s0, t6, s6
                  lui          s3, 926344
                  or           t1, sp, a6
                  nop
                  slt          a0, s5, s3
                  sub          s4, a7, a4
                  srl          s0, a0, s7
                  srli         s2, t3, 30
                  lui          s5, 760619
                  and          t6, t5, s11
                  sltu         t0, a6, s5
                  sltiu        s10, s3, 1787
                  sub          s8, s4, s10
                  andi         a3, t3, -36
                  ori          a2, s4, -1501
                  or           s5, tp, s8
                  xor          t3, s6, t5
                  lui          s0, 1046556
                  xori         zero, t5, -620
                  slli         a0, gp, 23
                  lui          s0, 699557
                  sltiu        gp, a2, 172
                  slt          sp, s1, s5
                  sra          a5, s11, t6
                  slli         t5, t5, 30
                  srai         s1, s5, 26
                  slli         a2, ra, 29
                  sra          s7, t1, a7
                  slt          a6, t3, a4
                  sll          s7, s0, tp
                  sltiu        t6, t4, -1501
                  srl          t6, sp, s11
                  andi         tp, a1, -538
                  auipc        t0, 379409
                  auipc        sp, 739453
                  nop
                  lui          a2, 405358
                  sltu         s0, t5, a5
                  or           s4, t4, s3
                  slt          s5, s4, ra
                  sltiu        s4, t6, 1286
                  andi         s0, a7, 1522
                  srli         a2, a1, 25
                  slli         s4, s11, 26
                  add          zero, s7, ra
                  lui          s9, 493589
                  xor          gp, s0, t6
                  addi         t3, t4, -709
                  add          a4, a0, a4
                  srli         s11, ra, 25
                  slt          t0, s2, s4
                  lui          s2, 476477
                  auipc        t4, 172639
                  auipc        t4, 894036
                  auipc        s5, 980304
                  and          a0, s6, s7
                  sll          a0, a0, t1
                  nop
                  lui          a1, 384457
                  xori         a1, t0, -901
                  srl          sp, t1, a5
                  slti         s11, s4, -525
                  add          s11, t6, s3
                  nop
                  slli         sp, s10, 18
                  andi         t6, t2, -844
                  slt          a2, zero, s0
                  xor          gp, s6, a3
                  nop
                  sub          a4, s9, t0
                  xori         a5, a7, 260
                  add          t5, a6, t5
                  sll          t6, s1, t5
                  srli         s10, s3, 19
                  srai         a2, s1, 10
                  ori          a1, s1, 623
                  xor          a6, s0, s2
                  sltiu        s10, t5, -1382
                  andi         s1, s4, -4
                  andi         s2, t3, 757
                  addi         ra, t6, 267
                  srli         t1, s5, 14
                  slti         a2, t2, -1509
                  sltu         a1, zero, t2
                  ori          t4, t0, -38
                  sll          t5, s10, zero
                  slti         s1, a0, 1660
                  slli         ra, s2, 21
                  add          s3, ra, s11
                  sltu         t6, s4, zero
                  slt          s9, s1, a0
                  auipc        s8, 712274
                  ori          t0, s2, 1457
                  or           s0, s9, ra
                  srli         s2, sp, 0
                  add          s8, a6, a7
                  slti         s3, a7, 307
                  sub          s2, s3, a2
                  slt          s9, s0, s10
                  slt          a3, s1, t5
                  auipc        sp, 877613
                  or           a0, a1, s0
                  xor          s2, s0, a3
                  sra          t5, s4, s2
                  andi         zero, a6, -1652
                  slt          a5, s8, s5
                  nop
                  or           a2, a7, gp
                  srli         t3, a5, 14
                  ori          s4, ra, -1041
                  nop
                  and          s4, s2, zero
                  or           s2, sp, ra
                  nop
                  andi         s8, a1, 17
                  sltiu        s0, s11, -1009
                  sll          t3, t5, a5
                  xori         s0, tp, 344
                  sub          gp, t1, a7
                  srl          t1, gp, t6
                  slti         a1, s11, -1129
                  nop
                  ori          s9, s5, 1529
                  slti         t1, a1, 1636
                  xori         t1, a1, 1859
                  and          a2, a3, a0
                  sll          t3, a0, s1
                  sltu         s2, sp, t5
                  sltu         s3, t2, t0
                  sub          s5, a1, s5
                  lui          sp, 368269
                  sub          t0, tp, s1
                  andi         s4, s0, -1831
                  srai         t4, s1, 9
                  slti         s7, a0, -1425
                  sltiu        s1, a3, -1223
                  lui          a6, 722858
                  sltu         t5, t2, t4
                  xori         s10, a7, -97
                  lui          t0, 523632
                  srai         s2, s4, 27
                  sltiu        a0, sp, -431
                  nop
                  srl          s0, t5, a3
                  andi         s8, s11, 871
                  sltiu        a6, zero, -1392
                  addi         a6, s7, 910
                  addi         t4, s3, 745
                  sra          a4, a5, a0
                  sub          s3, s3, t4
                  sra          t3, t2, s6
                  add          s9, a7, s1
                  and          s3, a4, s3
                  srai         a6, t2, 2
                  slt          a6, s9, sp
                  lui          s3, 861659
                  srl          t0, s4, s3
                  srl          s2, tp, sp
                  add          a3, a5, a2
                  nop
                  auipc        a5, 764097
                  xori         a5, ra, 1000
                  add          a2, a6, ra
                  srl          t6, t3, a4
                  xori         t4, gp, -310
                  xori         t6, t6, 1044
                  ori          s0, a2, -1653
                  nop
                  sub          s10, a7, s7
                  sltiu        t0, a4, 1091
                  slti         s9, t4, 1978
                  auipc        s1, 14628
                  sltu         ra, tp, a3
                  srli         a2, t0, 0
                  sra          tp, zero, sp
                  xori         t3, s2, 1279
                  srai         s0, s11, 4
                  sll          t4, t1, a7
                  sub          t5, s3, zero
                  srl          s10, a7, s9
                  sra          s3, s7, s0
                  add          s2, gp, s4
                  slti         t1, t0, 1564
                  sub          t1, a6, a3
                  srli         a0, s9, 11
                  xori         t1, s3, 426
                  andi         a4, t1, -1751
                  sltu         zero, s0, zero
                  sra          t5, s7, a1
                  sll          s8, s0, a6
                  and          s5, s5, t2
                  nop
                  andi         s4, a1, -748
                  srai         a4, s4, 25
                  sub          ra, s9, tp
                  lui          s3, 212513
                  lui          s4, 845789
                  li           s3, 0x3f3d0279 #start riscv_int_numeric_corner_stream_31
                  li           t1, 0xd28eb750
                  li           s9, 0x0
                  li           ra, 0x0
                  li           a6, 0x0
                  li           s2, 0xffffffff
                  li           s0, 0x0
                  li           s5, 0xffffffff
                  li           s10, 0xffffffff
                  li           t5, 0x80000000
                  lui          ra, 281022
                  addi         s0, s5, 1880
                  add          ra, s0, t1
                  add          t1, s10, ra
                  nop
                  sub          s5, s10, a6
                  lui          s5, 884555
                  nop
                  addi         a6, s3, -805
                  sub          a6, ra, a6
                  lui          s2, 821020
                  sub          s5, s9, ra
                  sub          s9, ra, s2
                  sub          s9, t1, s5
                  add          s10, s0, s5
                  sub          s5, t1, s0
                  sub          ra, ra, s5
                  add          s5, t1, s3
                  addi         t1, t5, 969
                  lui          t1, 886966
                  add          a6, s5, t1
                  nop
                  auipc        a6, 225683
                  addi         s0, s0, -544 #end riscv_int_numeric_corner_stream_31
                  andi         s4, a3, 388
                  auipc        s4, 315985
                  sltu         s5, t0, a4
                  slt          sp, s0, s9
                  srai         s10, a3, 18
                  andi         sp, t2, 1393
                  or           a4, t4, a4
                  xori         a5, a0, -1942
                  or           a0, s7, s2
                  ori          s3, t5, 665
                  and          a1, t5, t0
                  sll          s0, a1, t0
                  sub          gp, s11, tp
                  slli         gp, s6, 25
                  ori          s7, s11, -1903
                  slti         gp, s11, 1251
                  nop
                  or           s10, t4, t0
                  sltiu        s5, t5, 1992
                  slli         s0, ra, 8
                  sub          tp, sp, s11
                  sub          t4, a2, s7
                  slli         s2, t6, 9
                  srl          sp, s6, t0
                  slli         tp, ra, 31
                  ori          t3, sp, -1640
                  slti         s4, a7, 1733
                  xori         s9, t5, -1820
                  and          a5, t1, t1
                  slt          s10, a3, t4
                  xori         s9, s10, -827
                  auipc        t4, 426842
                  xori         gp, tp, 1554
                  sra          s9, s8, a5
                  slli         gp, ra, 17
                  sltu         s9, t6, a0
                  sltu         s9, t2, t6
                  andi         s4, a3, 1068
                  nop
                  addi         s7, s3, 868
                  nop
                  or           s1, s5, t2
                  srli         s5, gp, 4
                  xori         s11, a3, 435
                  xori         t0, t2, -688
                  andi         s8, s8, 986
                  addi         tp, t4, -739
                  xor          t3, s9, tp
                  xori         t0, s10, -152
                  lui          tp, 880066
                  sltu         s2, tp, t2
                  sra          s9, t1, t2
                  li           s0, 0x3e233ad9 #start riscv_int_numeric_corner_stream_30
                  li           a2, 0xa5065883
                  li           s10, 0x80000000
                  li           a3, 0xa2cb55eb
                  li           s4, 0x80000000
                  li           sp, 0xffffffff
                  li           s8, 0x0
                  li           a1, 0x80000000
                  li           s1, 0x0
                  li           t4, 0xd2cfe1ff
                  addi         a1, a1, 1721
                  addi         a2, t4, 454
                  nop
                  lui          a2, 229955
                  lui          s4, 687419
                  sub          a1, s4, s4
                  add          s8, s0, a1
                  sub          sp, sp, s1
                  nop
                  addi         s10, sp, 1106
                  addi         s4, s4, -720
                  nop
                  add          s0, s4, sp
                  auipc        a2, 472246
                  lui          s8, 50160 #end riscv_int_numeric_corner_stream_30
                  add          t4, s6, zero
                  lui          s10, 69854
                  ori          t0, t1, 1442
                  srl          s10, s8, s9
                  sra          s8, t5, gp
                  add          ra, s4, ra
                  sub          t4, t2, s1
                  xor          a1, gp, s7
                  andi         s5, a6, 556
                  sltu         t6, s6, gp
                  srl          t0, sp, s9
                  sra          t3, s4, a7
                  srai         s3, s10, 7
                  srl          t4, a4, a4
                  sltu         gp, t1, s0
                  sll          s7, t2, s3
                  xor          a3, s11, sp
                  addi         tp, t3, 2029
                  ori          a0, t5, 1028
                  andi         s0, a0, -1732
                  sll          s10, a3, s8
                  sll          s9, t1, t3
                  xor          s1, s5, s6
                  sra          zero, s6, s7
                  addi         s3, a6, -94
                  sub          t1, sp, t5
                  or           a0, tp, s0
                  and          s3, t2, a1
                  slti         s0, t2, 362
                  ori          sp, t0, 64
                  andi         s10, t6, 78
                  sltiu        s10, s5, -149
                  and          zero, a1, s11
                  slti         s11, t1, -295
                  sltu         zero, a0, s8
                  slt          t6, tp, zero
                  addi         s9, s10, 731
                  srli         a4, s9, 17
                  andi         a1, s11, -17
                  nop
                  srli         s11, a3, 14
                  srl          a1, s0, a6
                  slli         s9, t6, 29
                  and          a5, tp, s1
                  xor          s1, s1, t0
                  srli         s2, s6, 16
                  slt          s2, t4, a5
                  xori         a3, sp, 1835
                  lui          zero, 228553
                  sub          s1, sp, t3
                  sltiu        a3, gp, 250
                  sra          a4, t1, zero
                  xori         t1, t2, -1094
                  xori         t0, a7, 1116
                  auipc        a5, 294358
                  slti         s8, s6, 1801
                  srl          a3, s0, gp
                  srl          s7, zero, t0
                  add          ra, a0, a1
                  sra          t6, s10, s9
                  auipc        zero, 811680
                  xori         s4, a1, -41
                  xor          s1, gp, s11
                  add          a6, s0, s3
                  or           a6, s9, s11
                  srli         t1, a6, 19
                  srl          s10, t1, a5
                  sltu         t4, t4, tp
                  sll          a6, s3, t4
                  or           s9, s9, s3
                  slti         a6, a2, -1752
                  xori         t5, t5, -240
                  slti         tp, s0, 147
                  slt          s4, s6, t2
                  srl          a1, tp, s11
                  slt          a1, s5, s5
                  addi         ra, t0, 254
                  lui          t3, 714827
                  and          a1, t6, s5
                  xor          s11, s7, a4
                  or           s8, s10, a6
                  xori         a0, t4, -1818
                  srl          s1, sp, a1
                  xor          a6, zero, a7
                  xor          t5, gp, s9
                  srai         a4, s8, 24
                  sltiu        s11, a7, -1806
                  srli         s7, s11, 4
                  and          a1, a4, t1
                  srli         a1, s9, 11
                  ori          s1, t0, 613
                  auipc        a0, 80894
                  andi         gp, s11, -407
                  sltiu        ra, t4, 1927
                  ori          a2, s7, 2022
                  slti         a6, sp, 1057
                  sub          a0, s3, t2
                  sltiu        a4, s9, -1580
                  sub          t4, a0, a3
                  addi         ra, t2, -621
                  sra          t5, s3, a5
                  slt          a6, s3, s10
                  and          s9, s6, a2
                  srai         s5, s8, 7
                  srli         a4, tp, 31
                  slti         a6, a6, 1686
                  add          a2, s9, s0
                  and          s10, s6, zero
                  xor          a1, t2, ra
                  lui          s8, 809779
                  sll          t6, s2, ra
                  sub          t5, a7, s8
                  and          s8, a5, a0
                  addi         sp, a4, 1035
                  xori         s0, a6, -1043
                  lui          gp, 647437
                  ori          s9, t6, -50
                  srli         t6, ra, 5
                  lui          t3, 1027402
                  sub          s4, t0, sp
                  sll          s2, t4, s1
                  slti         s7, t0, 1522
                  sltu         a2, tp, s2
                  nop
                  sltiu        s2, s4, 273
                  srli         s7, zero, 11
                  xori         t4, a4, -765
                  nop
                  slti         tp, s6, 614
                  auipc        t1, 145027
                  slt          t3, s10, t0
                  slli         t4, a1, 25
                  andi         t6, a2, 3
                  auipc        a3, 988379
                  add          t6, a0, a5
                  add          t4, s11, a1
                  sra          a2, a1, a3
                  auipc        tp, 219430
                  sltiu        gp, s1, -1861
                  andi         a6, s5, -1908
                  sltiu        t1, a6, 939
                  srl          s11, t4, tp
                  lui          s11, 116407
                  srl          s3, s1, a3
                  srai         s2, t2, 0
                  xor          s3, s9, t4
                  xor          t5, a6, sp
                  slti         t1, s1, -1772
                  xori         a0, s8, 1207
                  sll          t1, s2, s5
                  slli         t3, a0, 27
                  xori         sp, zero, -1184
                  xor          sp, tp, s5
                  slt          t3, s1, s1
                  or           t5, sp, tp
                  add          t0, a3, t4
                  sltiu        s5, t0, 353
                  addi         s9, s10, 874
                  nop
                  sll          a2, tp, a6
                  or           s9, ra, s8
                  add          s3, s1, t3
                  ori          a6, t4, 665
                  auipc        a3, 630537
                  auipc        a6, 783968
                  slli         a1, t3, 11
                  slt          a6, s8, s7
                  and          t4, a5, s2
                  sra          gp, gp, s7
                  sll          s2, zero, s8
                  sra          a0, a5, s7
                  slli         zero, a5, 11
                  sltiu        tp, ra, 1310
                  slt          gp, sp, a5
                  lui          zero, 857214
                  xori         a5, t2, -7
                  srai         a3, zero, 26
                  lui          s2, 543034
                  xori         s7, a6, -935
                  slt          a0, s4, ra
                  slti         s1, s6, 1035
                  lui          sp, 755954
                  nop
                  xor          s1, s7, s7
                  sra          s7, s10, s0
                  srai         s7, s7, 18
                  xori         s5, s9, -262
                  and          t0, s7, ra
                  slli         tp, a3, 6
                  sltu         s1, s5, s4
                  srai         t3, s10, 15
                  srli         s0, a0, 24
                  slti         s4, s9, 1833
                  sra          a6, s5, t0
                  andi         s2, t3, 1350
                  nop
                  addi         s4, t2, -1628
                  addi         tp, zero, 221
                  or           s0, s9, a5
                  lui          a3, 1025361
                  srl          s11, a5, s2
                  and          a6, ra, s0
                  ori          a6, a5, 2027
                  add          tp, t1, sp
                  slli         a2, zero, 24
                  sra          gp, s6, s11
                  sltiu        a0, t0, 992
                  slti         s5, a3, -1102
                  sra          t1, a2, s9
                  srli         t0, t5, 21
                  slt          a6, t4, s2
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_37
                  li           s8, 0x211370f2
                  li           t6, 0xffffffff
                  li           a0, 0xec854046
                  li           s11, 0x0
                  li           t4, 0x415d93ba
                  li           t3, 0x0
                  li           t5, 0x80000000
                  li           s10, 0xffffffff
                  li           s7, 0xffffffff
                  auipc        a0, 659653
                  add          s7, s7, t4
                  lui          t4, 617893
                  auipc        s7, 405366
                  lui          a0, 919547
                  add          s8, s10, s10
                  add          t5, t3, t6
                  lui          a0, 804135
                  add          a0, a0, s7
                  add          t4, s8, t4
                  nop
                  auipc        s1, 449037
                  addi         s8, s1, -416
                  sub          s7, s10, t5
                  lui          a0, 941107
                  sub          t5, s8, t4 #end riscv_int_numeric_corner_stream_37
                  slti         s8, s1, -443
                  slti         s10, t5, 1060
                  or           s0, a1, a3
                  andi         s2, s1, 947
                  sra          s4, s10, s3
                  sltiu        t6, a7, 1386
                  sltiu        sp, tp, 446
                  xori         s2, t5, -1211
                  andi         s0, a7, 182
                  lui          a6, 475523
                  andi         a6, ra, -1745
                  or           ra, t2, gp
                  and          s4, s0, s8
                  andi         sp, sp, -891
                  slt          t0, a0, sp
                  sll          zero, tp, gp
                  auipc        t6, 945315
                  srli         t1, a5, 4
                  srli         s9, a5, 21
                  sub          s5, s10, tp
                  sltu         s9, a6, s5
                  or           a6, s11, t5
                  srl          tp, s1, sp
                  xor          s11, s7, a5
                  xor          s1, s11, t1
                  add          s2, a7, t1
                  xor          a4, gp, a3
                  xor          tp, a3, zero
                  nop
                  andi         a2, tp, -598
                  sltiu        a3, s3, 1823
                  andi         t6, tp, -846
                  add          s1, t6, s8
                  srai         s8, t1, 7
                  srli         t6, t5, 23
                  addi         a1, s5, 621
                  nop
                  sll          s5, sp, a5
                  sra          t0, s5, s11
                  addi         s11, a0, 517
                  srai         gp, s3, 27
                  addi         t5, t4, 1442
                  srl          a0, a5, a0
                  ori          gp, a7, 1365
                  add          a3, a6, a1
                  nop
                  ori          ra, s0, 2044
                  sll          ra, tp, gp
                  lui          zero, 465638
                  andi         s10, s2, -806
                  slli         s3, ra, 30
                  srli         s4, a0, 22
                  and          a0, ra, tp
                  and          a0, t5, s3
                  slti         sp, t2, -1854
                  ori          s9, a2, 1769
                  sltiu        ra, a5, 480
                  and          a3, a7, a0
                  andi         s1, s7, -609
                  slt          s8, a6, s9
                  xor          s0, s6, a0
                  sub          ra, s11, s1
                  xor          a2, tp, s3
                  nop
                  lui          t5, 774649
                  sra          s1, ra, s9
                  srai         s2, s9, 4
                  sltu         t6, a7, s3
                  ori          s0, a4, 1745
                  slti         a5, sp, -1757
                  andi         t0, t2, -1083
                  srai         a3, gp, 2
                  nop
                  add          tp, t3, a5
                  slli         s7, s11, 26
                  nop
                  sub          a0, t0, gp
                  and          zero, gp, s0
                  nop
                  xor          s3, t1, a3
                  ori          a3, t5, -934
                  ori          t6, s6, -1291
                  add          a0, t1, t6
                  andi         t0, s1, 258
                  xor          a1, t2, t6
                  xori         a3, s8, -263
                  and          a4, t6, s1
                  slt          gp, t4, a2
                  srai         a6, gp, 28
                  auipc        t6, 132264
                  sll          s5, tp, s4
                  xori         s1, t4, -1383
                  and          s1, s10, a6
                  xori         a2, t0, -628
                  xori         tp, a5, 471
                  auipc        s2, 428421
                  xor          t1, s4, t4
                  slli         a2, t0, 9
                  slli         t0, a7, 4
                  sltiu        t5, s2, 1901
                  xor          s11, t1, s2
                  sra          a6, a6, a0
                  sra          s3, s6, sp
                  auipc        s3, 888512
                  auipc        s2, 452218
                  lui          t5, 343835
                  addi         zero, gp, 1397
                  sll          s3, s8, a4
                  or           t0, a5, a2
                  xori         a0, tp, -65
                  slli         a2, zero, 5
                  and          s8, ra, t5
                  srli         s2, tp, 4
                  nop
                  sltiu        s5, s1, -298
                  nop
                  add          s10, sp, t6
                  or           a1, a2, a2
                  ori          s8, a2, -1135
                  xor          s4, a7, a4
                  ori          s9, t6, -1858
                  sltu         a6, t6, a1
                  sll          s0, s1, t0
                  auipc        t5, 711233
                  ori          a3, s3, 287
                  and          s4, s0, s5
                  add          a3, s8, ra
                  slti         s3, a6, 1440
                  xori         s3, a5, -425
                  lui          s3, 139500
                  sra          a4, s4, s7
                  slt          s9, t1, t1
                  and          a1, tp, a6
                  slti         a0, s0, 1698
                  ori          s9, zero, 667
                  srl          s3, s10, s6
                  srl          s1, sp, s3
                  addi         t1, s10, -1878
                  add          t4, s8, gp
                  and          a4, a2, t5
                  andi         t0, s6, 331
                  or           t6, s1, t6
                  lui          s3, 12774
                  sub          a4, a2, zero
                  sra          s3, s8, tp
                  slli         t0, sp, 22
                  srl          t1, s7, t1
                  lui          t0, 1031057
                  and          s4, s7, a3
                  auipc        s7, 562012
                  sub          t0, a0, zero
                  ori          ra, s3, -924
                  sltu         a3, a1, t4
                  srl          s2, s3, t5
                  add          s0, gp, s1
                  xor          s9, s1, s1
                  sub          t1, t1, s9
                  or           t5, t4, s11
                  add          t3, sp, t1
                  and          t3, s3, t4
                  nop
                  slli         t0, s2, 4
                  sub          sp, s2, t4
                  slli         a1, t3, 31
                  and          s10, a1, ra
                  ori          t5, s11, 382
                  sltiu        gp, a0, -87
                  srl          s11, a7, gp
                  slt          s8, t6, gp
                  slti         tp, t4, 673
                  slli         gp, a1, 20
                  xori         s1, sp, -409
                  sltiu        s3, t6, -256
                  srl          s11, s9, zero
                  and          gp, a0, t5
                  or           ra, s11, a3
                  sra          s3, t2, a5
                  slti         t5, s2, -304
                  xori         s3, t3, 1777
                  and          a6, t6, ra
                  addi         s2, s2, 1430
                  xor          sp, sp, t2
                  srli         sp, s8, 0
                  ori          gp, s10, -1170
                  slti         zero, ra, -830
                  srai         gp, s10, 18
                  add          a2, a7, s2
                  sltiu        zero, t4, 1886
                  srli         zero, a5, 5
                  sltu         s9, a1, s4
                  or           t0, ra, s2
                  sltu         zero, t4, t0
                  or           s7, t5, t4
                  sra          t6, s3, a4
                  or           t5, a4, t1
                  lui          s11, 431473
                  xori         gp, s0, -1835
                  and          s3, s0, t4
                  and          t4, gp, t2
                  add          a5, t0, s0
                  xori         s1, s0, -90
                  lui          a3, 472610
                  and          t5, s7, sp
                  sra          t4, sp, zero
                  xori         t0, s1, -991
                  andi         a0, a3, -456
                  sltiu        s7, a6, 1809
                  ori          s2, t4, 907
                  slt          a5, t1, s11
                  sltiu        t1, a2, 1486
                  auipc        t5, 848636
                  srli         s7, s4, 30
                  and          tp, t3, s7
                  nop
                  ori          t5, a1, 1660
                  sra          t0, s11, t6
                  slli         s8, s0, 25
                  sub          a5, s4, t0
                  xori         a2, a5, 1785
                  and          ra, a6, a4
                  sub          t4, s2, a5
                  slti         s0, s5, -2030
                  sub          ra, t1, t5
                  srli         t1, sp, 29
                  lui          tp, 429006
                  srl          t4, s10, s5
                  add          ra, zero, t2
                  sra          s11, t4, t2
                  sltu         t6, s5, sp
                  srai         tp, t2, 27
                  ori          t4, s7, 1730
                  addi         ra, a0, 623
                  lui          t5, 9736
                  sltu         s5, a6, s1
                  sra          t5, a6, s4
                  addi         s3, gp, -546
                  auipc        a4, 646910
                  ori          s10, s4, 1993
                  srli         s3, a4, 2
                  sltu         gp, t4, gp
                  sltiu        t0, s3, 1274
                  srai         t3, gp, 4
                  auipc        a4, 517005
                  add          t6, sp, t0
                  xori         s9, t4, -1482
                  slt          t6, s9, s6
                  sltiu        t3, t0, 123
                  andi         sp, s8, -1045
                  xori         sp, s1, -265
                  nop
                  slti         s1, s2, -756
                  srai         s11, s8, 9
                  auipc        a1, 201034
                  ori          tp, s5, 1614
                  slt          t0, t6, s2
                  and          a5, a3, t2
                  andi         s5, a4, 921
                  sll          s0, a3, s0
                  sll          t0, a5, a5
                  nop
                  andi         a5, s8, 1683
                  xori         t6, s10, -221
                  sll          t1, s6, t3
                  sll          t1, zero, a3
                  addi         gp, ra, 874
                  or           a5, s3, s7
                  ori          gp, a7, -1824
                  lui          tp, 994672
                  sra          ra, a6, ra
                  nop
                  and          s2, s0, s0
                  slti         a3, a5, 79
                  lui          ra, 890784
                  xor          t4, a5, t4
                  sub          s0, a2, a0
                  add          s7, t4, a6
                  srli         s1, s2, 10
                  lui          s8, 920174
                  srl          t3, s6, t3
                  srl          s3, a7, t1
                  xori         a6, a5, -1272
                  lui          s8, 236414
                  lui          a4, 354055
                  sra          t0, s2, s11
                  xori         s9, s8, 2037
                  lui          sp, 837055
                  auipc        ra, 152094
                  sltiu        s2, t3, 1024
                  sra          s5, t6, s3
                  sub          a5, a7, a2
                  and          s7, ra, t2
                  slli         s1, s3, 12
                  lui          s1, 484021
                  add          t1, t0, t4
                  xor          s7, zero, gp
                  sll          sp, a5, zero
                  addi         s5, a7, -908
                  srl          sp, t6, ra
                  sltu         gp, a5, s5
                  sltu         gp, t4, s2
                  ori          zero, a7, -1995
                  ori          t0, sp, 265
                  andi         t5, s6, 1160
                  srai         a1, t3, 31
                  sltu         a3, a1, gp
                  and          t3, s3, a0
                  sll          t0, sp, t6
                  and          s11, s1, s10
                  xor          a2, s0, s3
                  sub          s7, t2, ra
                  sub          zero, zero, s7
                  sltu         gp, t2, s2
                  sub          zero, ra, s9
                  sra          s5, t5, s5
                  nop
                  sra          s1, ra, t5
                  nop
                  slt          s4, s11, s3
                  slli         s7, gp, 26
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_28
                  li           s10, 0x80000000
                  li           s5, 0x0
                  li           a5, 0x80000000
                  li           s8, 0xffffffff
                  li           t5, 0x6be3fec
                  li           t4, 0xffffffff
                  li           gp, 0xffffffff
                  li           t0, 0xffffffff
                  li           s3, 0x80000000
                  add          a5, s7, s3
                  auipc        t5, 82275
                  add          s10, t0, gp
                  lui          a5, 861625
                  nop
                  sub          gp, s10, t4
                  addi         gp, s7, 1610
                  lui          t4, 67389
                  auipc        s3, 441319
                  addi         s5, s8, -1738
                  add          t0, gp, s5
                  addi         t4, t4, -939
                  add          t4, t5, gp
                  nop
                  lui          s10, 905863
                  lui          gp, 844136
                  sub          s7, s3, t4
                  auipc        s8, 842589
                  nop
                  add          s8, a5, s3 #end riscv_int_numeric_corner_stream_28
                  slt          a4, tp, s3
                  slt          s1, ra, s11
                  xor          ra, t5, s3
                  ori          a6, s7, -1518
                  slti         t6, s11, -306
                  add          gp, ra, t4
                  xori         t0, s11, 814
                  sra          s7, a6, s0
                  add          s9, ra, a4
                  slli         sp, ra, 1
                  auipc        a4, 934934
                  sll          a3, t3, a7
                  srl          s2, t4, a3
                  auipc        t4, 558397
                  slli         sp, s0, 11
                  sra          s7, s5, s3
                  or           a3, s11, ra
                  nop
                  andi         s5, s10, -402
                  sltu         s4, ra, s3
                  nop
                  xor          s8, tp, a4
                  ori          s0, s6, 368
                  srai         s2, s6, 16
                  add          gp, s8, s7
                  or           s5, a6, a6
                  ori          ra, s5, -1880
                  srli         s11, zero, 6
                  srai         s10, t2, 12
                  srli         s5, gp, 14
                  sra          zero, s10, a6
                  auipc        a1, 974646
                  xor          t5, s0, s0
                  auipc        ra, 490899
                  sub          s3, gp, t0
                  sll          t5, a0, gp
                  auipc        s4, 706567
                  xori         a3, t4, -1716
                  slt          s10, s4, s3
                  srl          a1, a4, t2
                  addi         gp, a2, 895
                  srai         ra, s10, 15
                  slt          zero, s11, a3
                  sltiu        s9, s5, -488
                  addi         t3, tp, 1480
                  xor          ra, a2, tp
                  or           s10, t2, s8
                  sll          a0, s3, s9
                  ori          a3, s3, -505
                  srai         a5, s0, 5
                  slti         ra, a7, -339
                  slti         s0, s1, 23
                  slti         s4, t6, -1933
                  sra          s8, a2, s1
                  srl          s8, zero, s0
                  srli         t6, t2, 17
                  xori         gp, t1, -241
                  srai         t1, s5, 25
                  srai         s5, t4, 30
                  sra          ra, s8, s2
                  auipc        ra, 139317
                  addi         s5, s2, -1031
                  slt          tp, s0, a4
                  and          s7, s9, t0
                  and          sp, s6, s1
                  slti         a5, a3, -211
                  sub          t1, s10, t0
                  sll          t3, sp, s3
                  srl          s0, s8, s7
                  slli         s1, t1, 19
                  srli         zero, s6, 27
                  nop
                  srli         s9, a1, 27
                  andi         s5, a7, -1584
                  sra          s11, s0, s9
                  nop
                  and          s9, s5, t2
                  auipc        zero, 282943
                  andi         t4, s4, 909
                  sll          t4, s3, zero
                  andi         s8, sp, 543
                  xor          s8, a1, s7
                  or           a4, a7, t1
                  sltu         zero, sp, gp
                  sra          s0, a6, s10
                  add          sp, tp, t1
                  sll          t4, s8, gp
                  sltiu        t1, s0, -347
                  or           s2, s11, t1
                  add          tp, s3, t1
                  srai         a6, s10, 9
                  sll          t5, s1, s6
                  lui          sp, 824534
                  sll          a4, s2, t1
                  xori         a3, t5, -986
                  or           t1, s10, gp
                  and          s7, t5, s1
                  lui          s2, 266094
                  ori          s9, a4, -380
                  or           a6, t1, a7
                  sll          s4, s10, gp
                  srl          s10, s8, zero
                  xor          a4, t4, s4
                  and          a5, ra, s9
                  sltiu        s0, t2, 752
                  slt          sp, a5, s5
                  sra          a0, a7, tp
                  addi         s11, a7, -1600
                  add          a0, s11, a3
                  sub          t6, a7, tp
                  add          t5, a1, s9
                  sltu         t0, a5, t6
                  andi         a5, zero, -1202
                  or           s4, a6, t1
                  srai         s1, t1, 28
                  sltiu        s5, a0, -1466
                  addi         t5, s6, 22
                  auipc        s7, 211004
                  andi         sp, t6, -1832
                  ori          t5, gp, -1938
                  sltu         t6, a7, s4
                  or           ra, s0, gp
                  xori         t4, a4, 1985
                  xor          ra, a3, s11
                  srli         t1, a7, 27
                  add          a6, gp, s7
                  sub          s9, s1, t2
                  and          tp, a0, a0
                  addi         a1, a5, 531
                  sub          t6, a1, s4
                  or           a4, s1, t6
                  addi         s11, t2, -496
                  auipc        a1, 741908
                  lui          s7, 447734
                  slli         a4, a4, 10
                  srli         s2, t2, 5
                  xor          a3, a0, t5
                  lui          a5, 1005275
                  sub          s5, a4, t4
                  sub          zero, t1, a0
                  sltiu        s0, s2, -1223
                  xori         a2, s8, 1622
                  ori          s7, t0, -1486
                  auipc        s4, 1884
                  xori         s9, t3, -1018
                  nop
                  ori          a2, s3, 870
                  add          s2, a2, a4
                  sra          zero, s2, a3
                  slt          sp, s0, a7
                  lui          sp, 550845
                  slti         gp, t3, 409
                  ori          a0, s4, -959
                  srl          zero, s8, zero
                  sll          ra, s2, a2
                  xori         a3, s9, 818
                  add          a4, t5, a5
                  or           s10, t4, a7
                  sltiu        s7, a2, -678
                  add          s3, a3, t2
                  sll          t0, t3, s2
                  ori          a0, ra, -1989
                  sltu         s3, s6, a7
                  or           a6, s7, a4
                  slli         s4, s11, 2
                  nop
                  ori          t4, a0, 1106
                  slli         a0, s7, 18
                  slli         t1, sp, 31
                  sra          s5, a0, t4
                  slli         t4, s5, 3
                  andi         s7, s6, -1759
                  andi         sp, t1, 173
                  xori         a6, sp, 874
                  xor          s1, t6, gp
                  srai         s11, s9, 27
                  sll          a5, s3, t6
                  sltu         zero, a5, t0
                  srl          gp, t0, t0
                  ori          s4, s7, -1143
                  sltu         gp, s9, a4
                  slli         s3, a6, 10
                  srai         t1, t3, 27
                  or           t4, ra, a1
                  ori          t6, a0, 628
                  lui          s1, 962020
                  slli         s5, t4, 7
                  srl          sp, s0, tp
                  sltu         s10, s3, a0
                  slli         s5, t3, 15
                  slli         t6, t2, 9
                  lui          t0, 601831
                  andi         a4, a6, 1567
                  xor          a1, t0, tp
                  add          t1, t0, ra
                  slti         t6, s0, 478
                  or           s10, s2, s0
                  slt          s8, s5, t2
                  lui          t6, 986629
                  and          s11, t0, a1
                  andi         tp, a2, -350
                  nop
                  li           gp, 0xcc1e8734 #start riscv_int_numeric_corner_stream_25
                  li           s7, 0x80000000
                  li           a0, 0x29c48687
                  li           s1, 0xffffffff
                  li           s0, 0xffffffff
                  li           t4, 0xc67621d1
                  li           a1, 0xffffffff
                  li           s5, 0x6a4ad1b7
                  li           s9, 0x9a31285a
                  li           a2, 0x0
                  add          a2, s9, s0
                  sub          s9, t4, a0
                  auipc        s5, 536574
                  add          s5, a2, s5
                  auipc        s5, 880685
                  lui          s7, 659272
                  add          a2, a2, t4
                  addi         a0, s7, 1272
                  nop
                  lui          s0, 248914
                  lui          s7, 316649
                  lui          s5, 528868
                  sub          s1, gp, a1
                  sub          a1, s5, s1
                  add          s7, s7, a1
                  auipc        a2, 218262
                  lui          s0, 760501
                  auipc        a2, 532524 #end riscv_int_numeric_corner_stream_25
                  xor          t1, a3, zero
                  ori          ra, s0, -1926
                  sltiu        a6, tp, -884
                  sltiu        a0, s11, 352
                  sltiu        gp, a1, -1417
                  sll          t1, t4, s2
                  auipc        t6, 899010
                  ori          a5, t0, 637
                  or           t4, zero, t4
                  sltiu        s9, t6, 758
                  sltu         a4, gp, s7
                  add          t6, t1, zero
                  lui          s3, 139502
                  slli         t0, a6, 28
                  auipc        t0, 693560
                  sub          s3, s2, a7
                  slt          t1, s9, t5
                  sltu         tp, s2, tp
                  slt          s2, s9, t1
                  xori         s3, s6, 848
                  xor          t3, t3, t5
                  slli         s7, a5, 21
                  sub          tp, s4, t2
                  add          ra, a6, t5
                  sub          s2, s2, a0
                  sltu         a0, t6, t6
                  lui          s1, 287225
                  nop
                  lui          gp, 837903
                  srai         s1, a0, 4
                  slli         t6, a0, 5
                  slli         s7, a4, 7
                  sltiu        a2, t4, 361
                  andi         zero, a5, -472
                  add          s4, t0, s11
                  lui          s2, 1033930
                  addi         s8, a2, -1656
                  sub          a0, zero, s0
                  slti         s5, s0, 1218
                  or           a4, ra, a7
                  add          t4, s2, a0
                  slt          s10, sp, t2
                  sltiu        a4, a6, 473
                  slt          s0, a4, t0
                  ori          a4, s4, -1659
                  slt          s5, s9, s5
                  xor          a3, zero, a2
                  nop
                  addi         s2, a4, 1939
                  sltiu        ra, s5, 262
                  lui          a0, 915901
                  srai         s10, a0, 19
                  slti         a0, t6, -1376
                  lui          s4, 837524
                  srl          a5, t1, t0
                  srai         sp, a1, 23
                  addi         t4, zero, -137
                  xor          s5, s1, s10
                  ori          s10, s3, -304
                  sra          a2, zero, s9
                  sra          s8, a0, a7
                  sra          zero, s8, s2
                  sltu         s8, gp, a3
                  slti         a0, s10, -1758
                  sub          ra, t2, s11
                  sll          a6, a0, a1
                  slt          zero, ra, s1
                  slli         s2, t0, 15
                  srl          s7, t4, s1
                  slt          s4, a4, ra
                  sub          a5, s10, s1
                  srl          sp, a7, s6
                  auipc        a1, 877521
                  and          gp, s2, t6
                  xori         t5, gp, 1282
                  srli         a4, t4, 13
                  srli         t6, s4, 26
                  sra          s10, t1, a2
                  sltu         s2, s8, t4
                  auipc        s11, 680562
                  addi         s8, t6, 1549
                  sltiu        ra, s9, 902
                  sltiu        s0, t3, 1939
                  slt          t3, a5, s8
                  srai         a2, s10, 20
                  slt          s5, a4, t4
                  lui          s4, 772667
                  or           t5, a7, tp
                  or           a2, t3, t1
                  sltu         a6, t6, t6
                  slli         a5, s7, 1
                  slt          gp, a2, a5
                  srai         t6, t6, 19
                  srli         ra, s4, 21
                  sltiu        a5, t6, 1844
                  sll          zero, zero, zero
                  srai         a0, ra, 29
                  srli         s11, s9, 22
                  or           sp, t3, zero
                  and          t0, s8, zero
                  sll          tp, s2, s10
                  ori          a6, zero, -946
                  slli         ra, a0, 20
                  andi         s1, t2, 244
                  slti         s10, t1, -1199
                  xor          a0, s2, a5
                  sll          ra, s1, t1
                  sub          zero, s3, ra
                  slli         s4, a1, 17
                  addi         t0, tp, 1215
                  slli         gp, t6, 3
                  sltu         s2, t3, t5
                  xori         s10, t3, 1742
                  ori          t6, s8, 1836
                  srli         t1, s9, 28
                  xori         s1, a7, -348
                  slli         s4, s2, 11
                  andi         t5, gp, -1837
                  auipc        a6, 945433
                  slli         tp, t6, 27
                  srai         s9, s0, 28
                  slt          s7, sp, s5
                  slt          t0, t3, t4
                  add          a5, s10, s11
                  sra          s11, a4, t5
                  sltiu        s1, gp, 51
                  nop
                  addi         s7, s6, 1461
                  slli         s11, s7, 31
                  srl          a0, t4, t5
                  slli         gp, sp, 22
                  xori         sp, t1, 1654
                  sltu         a6, t6, a6
                  xori         s7, t4, -1203
                  lui          t5, 455066
                  lui          s10, 993554
                  auipc        t3, 709809
                  lui          a6, 530577
                  sltu         a6, s6, s8
                  andi         zero, t0, 1731
                  lui          t0, 895277
                  srai         t3, t0, 26
                  srl          a4, t1, s1
                  xor          s9, s0, s11
                  srl          s8, s7, a2
                  xori         a5, t2, 2008
                  sll          s8, s11, s8
                  srai         s8, s9, 27
                  slli         t0, s10, 11
                  auipc        gp, 356790
                  slti         zero, s0, -999
                  lui          t3, 688474
                  srl          a6, s10, s4
                  srli         tp, s8, 25
                  srai         a6, ra, 25
                  auipc        a3, 702084
                  sra          a0, t2, a5
                  andi         tp, a4, 1657
                  lui          s4, 228420
                  srai         gp, t2, 27
                  sltiu        gp, s9, 1406
                  sra          t4, t4, a0
                  sub          s1, a6, t1
                  sltiu        ra, t5, 1594
                  lui          tp, 55761
                  slt          ra, t0, t1
                  sltu         a5, gp, t5
                  srai         s1, s0, 21
                  auipc        t0, 652190
                  add          a4, s9, a7
                  xori         s7, s6, -2006
                  slt          s4, ra, t4
                  sltiu        t4, s4, -448
                  sltu         t0, t1, sp
                  lui          s3, 665665
                  sltiu        s7, s7, -1753
                  srli         sp, t5, 20
                  sltu         a3, a5, a5
                  srli         s4, t1, 31
                  slt          ra, a6, s7
                  auipc        tp, 773778
                  sltiu        s11, s0, 120
                  lui          ra, 188504
                  nop
                  and          t5, t5, s9
                  sll          a1, s11, a0
                  sub          a4, t0, a5
                  lui          a2, 742101
                  srl          a1, t3, s8
                  slti         ra, tp, -253
                  sltiu        s11, t3, 1047
                  srai         t1, sp, 19
                  sra          s2, s2, zero
                  xori         t5, s3, 1738
                  and          t1, t6, s0
                  andi         s10, a7, 259
                  sub          s9, t4, s5
                  slti         s11, t4, 36
                  slti         s4, s6, 581
                  xor          s9, t2, t3
                  add          a0, t2, t4
                  sra          s8, zero, s2
                  and          s1, sp, a1
                  xor          t3, tp, a6
                  addi         s8, s0, -1532
                  slt          s1, s5, s7
                  ori          s0, t6, -1720
                  srai         s3, a7, 13
                  or           a6, tp, tp
                  sltu         s1, s7, ra
                  add          a0, a0, zero
                  slt          s4, s1, s9
                  srli         gp, a7, 18
                  sll          a0, a0, t6
                  srai         sp, t5, 15
                  sub          a3, sp, a6
                  slt          t4, t6, a6
                  auipc        t1, 86884
                  sll          a0, t3, s6
                  sltiu        s9, a2, 359
                  sub          s7, s7, t6
                  addi         sp, t2, -418
                  xor          zero, t6, a0
                  sra          s1, sp, sp
                  srli         sp, a0, 1
                  addi         t6, a5, 2009
                  srl          t3, zero, a1
                  srl          s11, s7, t3
                  sltiu        a0, t5, 857
                  sub          a5, a4, sp
                  ori          gp, t4, -1423
                  auipc        t6, 717151
                  addi         s5, s10, -648
                  auipc        s2, 312301
                  andi         t4, s0, -1573
                  srl          t4, s4, a5
                  nop
                  sub          a2, s0, a7
                  sltiu        a2, s1, -578
                  sll          tp, s8, a6
                  srl          a2, zero, s5
                  addi         a6, a5, -769
                  xor          sp, t5, a5
                  add          zero, tp, zero
                  sra          s2, a0, t5
                  srl          s3, t5, ra
                  and          s1, t3, t5
                  sub          a1, s5, zero
                  xori         t6, t5, -749
                  slt          s0, zero, t5
                  ori          s7, gp, -1782
                  xori         a0, s9, -86
                  sltiu        s8, s8, 82
                  slt          s10, s1, gp
                  addi         a5, s6, -1707
                  xor          a0, s3, s10
                  sltu         a3, sp, s9
                  or           s1, s6, a1
                  or           a2, s0, s7
                  sra          ra, t6, a3
                  ori          zero, a0, 133
                  sll          s7, t1, sp
                  slt          t3, t3, t5
                  slt          s2, a4, t4
                  srli         ra, s5, 8
                  auipc        a2, 1045670
                  sub          t1, ra, zero
                  ori          a2, sp, 1235
                  nop
                  xor          a1, sp, a3
                  add          s9, s4, a2
                  sltu         t1, tp, a7
                  srl          s11, a5, a3
                  slti         s10, sp, 1829
                  srli         s4, zero, 31
                  srai         s3, tp, 8
                  xor          a1, zero, t5
                  slli         t1, s0, 5
                  and          s4, a3, s0
                  xori         s9, a1, -1159
                  slti         a1, s2, -1476
                  andi         t1, s6, -666
                  sub          s10, sp, t5
                  xor          a3, a0, zero
                  sub          gp, ra, s5
                  sub          s8, ra, s6
                  lui          zero, 968928
                  andi         t1, t5, -163
                  srl          a1, a5, zero
                  add          s1, a0, a5
                  srl          t6, s3, s1
                  srli         zero, t2, 17
                  or           s0, s2, s2
                  srai         a3, s10, 8
                  xori         s5, zero, 112
                  sll          s5, t6, a5
                  addi         s2, s5, 1242
                  add          t6, s8, a3
                  xor          a1, ra, a5
                  slli         a2, s11, 16
                  sltu         a1, a6, s8
                  sra          s0, sp, t6
                  sltu         s10, t1, t2
                  andi         s3, a7, 534
                  sltu         t3, a7, a4
                  sltiu        t6, t3, 886
                  auipc        a2, 61995
                  srai         s0, s11, 12
                  srai         s4, a0, 10
                  xor          t1, a3, t1
                  xori         t6, t6, -1860
                  add          s8, s8, ra
                  srli         s1, gp, 12
                  add          s11, a3, gp
                  andi         s2, a6, 1818
                  xori         zero, t6, 797
                  and          gp, tp, s7
                  and          a3, s2, s1
                  srai         gp, gp, 10
                  xori         t1, s8, -1397
                  ori          ra, s8, 879
                  srli         sp, a5, 6
                  srli         sp, a6, 15
                  sll          a1, s8, s8
                  sll          a2, t2, s10
                  or           a5, s11, a1
                  srai         a5, t1, 19
                  sra          a2, t5, s10
                  sub          s0, a7, sp
                  sltu         a1, zero, a7
                  sll          t1, s9, t1
                  add          s1, t1, t6
                  xor          zero, a1, s0
                  lui          zero, 854418
                  or           a5, t6, a0
                  add          a5, a5, sp
                  sub          t0, s10, s5
                  xor          s5, t0, a4
                  srl          t0, a0, a5
                  slli         s1, t1, 21
                  slli         t0, s9, 17
                  auipc        sp, 838499
                  sub          t0, s4, s3
                  sub          a5, tp, a2
                  ori          a3, sp, 245
                  xori         zero, s9, 1560
                  srl          s3, a0, a3
                  sub          s2, t0, zero
                  ori          t0, s2, -1345
                  sltu         t4, gp, a3
                  srai         a3, t6, 6
                  slli         s2, s7, 29
                  xor          a6, t1, s10
                  slli         t5, s1, 5
                  xori         s9, t6, 199
                  ori          t6, a1, -77
                  xori         s10, s5, 1266
                  add          s7, zero, sp
                  lui          t1, 60514
                  srl          a6, a3, a1
                  add          sp, s1, s6
                  xori         s10, t5, -756
                  or           a6, s3, t3
                  or           a6, t5, a2
                  slli         s3, a2, 8
                  nop
                  add          t5, a7, ra
                  and          a4, ra, t5
                  srl          a0, t4, s5
                  auipc        s3, 621443
                  slt          gp, s5, t0
                  slti         s2, s8, -1362
                  sltiu        s1, t4, 1551
                  sll          sp, a0, tp
                  sltiu        ra, a0, -509
                  or           t3, t1, s9
                  slt          t6, s2, zero
                  ori          a4, a5, 1971
                  nop
                  sub          a4, a0, tp
                  srl          s5, s8, ra
                  and          a5, s5, a1
                  sltiu        s1, a2, 1420
                  sltiu        s10, sp, -911
                  sub          a1, a5, t5
                  xori         t5, sp, -1382
                  andi         a1, s8, -1788
                  and          s4, s9, a2
                  xori         a6, zero, 199
                  ori          a5, s11, 512
                  xor          gp, s4, s3
                  andi         s7, tp, -43
                  xori         s10, a3, -898
                  srl          s7, s9, t5
                  and          s7, a1, ra
                  slt          tp, s8, s0
                  xori         s9, a0, -407
                  sra          t0, t6, ra
                  sra          s1, a3, t6
                  auipc        s3, 776328
                  lui          s2, 684716
                  xor          zero, s3, s11
                  andi         sp, a6, -1823
                  sltiu        t6, zero, -1700
                  sltu         s10, s2, s1
                  lui          zero, 651975
                  lui          a5, 270070
                  sltu         t1, s3, t6
                  xori         ra, s0, 1144
                  addi         a4, zero, 187
                  sll          s11, t0, s0
                  xor          s3, t0, s0
                  slli         ra, a6, 12
                  xori         s3, a6, -1987
                  or           t5, s7, s5
                  slli         s10, t1, 28
                  ori          s8, t4, 1773
                  ori          t5, a0, 126
                  srai         s5, s0, 14
                  andi         s1, s8, 1357
                  ori          a2, a5, -110
                  and          t6, t4, a5
                  sltu         s5, t4, s5
                  slt          a1, s8, t1
                  lui          a2, 1016293
                  sll          s0, a2, t2
                  ori          s0, a4, -751
                  xor          t5, s2, s9
                  lui          a1, 358446
                  sra          s10, s11, t5
                  slt          s0, s2, s1
                  slti         s9, t6, 598
                  sub          a0, s0, t0
                  addi         a5, t1, -56
                  srl          s7, a0, s10
                  srli         s3, t0, 6
                  addi         a5, a6, 1865
                  srli         s8, a7, 27
                  slt          t3, s1, s6
                  nop
                  lui          s7, 220212
                  srai         s2, s4, 5
                  sltu         tp, a7, a1
                  sll          t6, a3, s8
                  srli         a6, s1, 27
                  srai         t4, tp, 27
                  auipc        a3, 142149
                  ori          t3, t4, -131
                  add          a1, a0, s7
                  slli         a0, t3, 23
                  sra          s11, tp, tp
                  add          a1, s6, s8
                  slli         s2, t5, 28
                  sub          s10, ra, gp
                  or           a1, s11, t4
                  slli         t6, ra, 30
                  srli         s5, s10, 24
                  sltu         s10, a5, s9
                  sltu         s3, a3, s10
                  or           t4, s9, s11
                  nop
                  sltiu        ra, s11, 337
                  nop
                  lui          s1, 583956
                  slli         t5, t1, 18
                  sltiu        s7, a4, 1276
                  sll          a4, t5, t1
                  xori         a0, t6, -1186
                  srl          gp, s4, s7
                  and          a6, s8, s10
                  sra          t4, t2, ra
                  add          t3, t1, s2
                  sltiu        t3, a4, -1463
                  sra          s11, s1, s5
                  sltu         t5, s11, t6
                  xor          s4, t1, t1
                  xori         s1, s5, 2045
                  and          sp, s7, a5
                  or           s1, t2, s7
                  slt          s10, s1, a3
                  slti         s3, s5, 1258
                  addi         gp, a1, -592
                  auipc        s2, 1004220
                  slti         t6, s11, 1203
                  sltu         t1, s11, zero
                  sra          a2, s7, zero
                  xori         a6, a7, 205
                  sub          t3, t5, s0
                  nop
                  xori         t1, a4, 513
                  and          s8, s8, s3
                  xor          s1, t3, s3
                  slli         gp, a0, 29
                  srli         s10, s4, 11
                  and          sp, tp, s8
                  and          s9, a5, s10
                  sltu         a6, gp, ra
                  add          t0, a5, s10
                  or           ra, t3, s4
                  srai         tp, t6, 23
                  sll          tp, t1, a3
                  and          sp, a3, s5
                  xori         t4, s10, 1173
                  nop
                  lui          s4, 561698
                  sub          a1, s2, a2
                  sub          a4, s1, a7
                  srl          s8, s11, t2
                  sll          s4, a3, a0
                  li           s4, 0xb3ca84af #start riscv_int_numeric_corner_stream_20
                  li           ra, 0xffffffff
                  li           t6, 0x80000000
                  li           s9, 0xbbce4850
                  li           s0, 0xd49e983d
                  li           a2, 0xffffffff
                  li           s10, 0x0
                  li           a6, 0x80000000
                  li           tp, 0xffffffff
                  li           t3, 0x80000000
                  addi         s10, s9, 320
                  auipc        a6, 500950
                  add          tp, t6, t6
                  lui          a6, 738666
                  nop
                  add          ra, tp, t3
                  sub          ra, t6, s10
                  auipc        s10, 337811
                  auipc        s9, 312731
                  add          t6, ra, t6
                  nop
                  addi         t6, ra, 1911
                  nop
                  sub          s10, s4, a2
                  add          a6, a6, s10
                  sub          a6, s0, t3
                  addi         tp, t6, 1449
                  add          t6, s10, a6
                  lui          a2, 291578
                  add          a2, s9, s0
                  auipc        ra, 634827
                  sub          a6, ra, tp
                  auipc        a6, 31687
                  addi         tp, ra, 809
                  auipc        a6, 670081 #end riscv_int_numeric_corner_stream_20
                  xori         a5, a2, 1873
                  xor          sp, t2, s2
                  add          t3, gp, t6
                  auipc        t5, 261340
                  srli         s7, t0, 5
                  lui          a0, 206359
                  slli         s2, s4, 12
                  nop
                  or           a0, s11, sp
                  slli         s8, s10, 12
                  or           s7, t5, s3
                  add          t0, a2, s2
                  sltu         t1, ra, t5
                  srl          t3, s11, a3
                  sll          a0, s4, t1
                  slti         s3, a4, -1725
                  lui          s0, 994814
                  and          zero, s7, s1
                  andi         t4, s10, 28
                  sltiu        s5, a3, -1049
                  slli         s10, sp, 6
                  slli         s7, t4, 14
                  and          t0, t0, s1
                  srli         zero, s5, 25
                  add          a6, a7, a4
                  sll          zero, t2, t0
                  sll          s7, tp, gp
                  sub          sp, a1, t0
                  slt          zero, gp, ra
                  sltu         s7, s10, a5
                  add          a6, s7, s6
                  slti         s2, s6, -1732
                  slt          t6, t4, t3
                  lui          sp, 563353
                  or           s10, a3, t2
                  sltu         t6, zero, s10
                  sra          s1, zero, a7
                  andi         gp, t1, -265
                  sub          s1, a0, t2
                  nop
                  andi         t3, a4, 540
                  andi         sp, tp, 1916
                  or           s10, s1, s4
                  nop
                  xor          s4, ra, t1
                  xori         s1, sp, -1756
                  xori         gp, s10, -150
                  auipc        gp, 438632
                  sub          s7, a6, ra
                  sra          s9, s1, a2
                  addi         t0, t0, -195
                  slti         t0, a1, -1070
                  sub          s5, ra, s2
                  xor          t0, sp, t5
                  srli         tp, ra, 16
                  sub          t0, t6, zero
                  sra          s7, s9, t2
                  addi         a4, t5, 1873
                  add          s9, ra, t2
                  ori          a6, tp, 1172
                  sltiu        a1, s11, -2010
                  sra          tp, t2, a1
                  srli         sp, a2, 6
                  sltu         s4, tp, a2
                  slti         s9, t2, 1220
                  sll          t0, sp, s1
                  xor          s10, t1, s6
                  xori         sp, t5, 150
                  sltiu        s3, a5, 1841
                  slt          t4, s9, sp
                  sra          a6, s6, a1
                  or           s2, t2, a1
                  xor          t5, t6, s4
                  srli         s1, t5, 28
                  srl          s7, a2, a0
                  slti         s11, gp, 1125
                  nop
                  xori         s10, ra, -972
                  lui          zero, 847215
                  auipc        a2, 571102
                  sra          s7, a6, s9
                  srai         gp, s0, 29
                  xori         t3, s5, -326
                  xor          t6, s11, a7
                  nop
                  addi         s7, s4, -1867
                  sltiu        s7, s1, -746
                  and          s2, s11, s4
                  xor          s10, a2, s9
                  sub          sp, zero, gp
                  srli         a2, sp, 30
                  slt          t4, s4, a7
                  slli         tp, s8, 10
                  sra          s2, a6, s3
                  andi         sp, s10, -1943
                  sra          t0, a0, zero
                  slt          s1, t0, s0
                  addi         s2, t4, 488
                  auipc        a6, 171129
                  add          a6, a3, s5
                  slti         a4, tp, 1913
                  srai         t6, s9, 5
                  xor          s0, s8, s10
                  slti         s3, s9, -1590
                  andi         a5, t5, 577
                  or           s8, s5, s9
                  addi         s7, t6, -937
                  auipc        a2, 536342
                  add          a4, s9, s4
                  sltu         a0, t5, s6
                  andi         zero, s4, -1325
                  slli         s7, s5, 18
                  andi         t5, t4, -497
                  srai         s0, tp, 10
                  srai         s4, t2, 25
                  slti         gp, s7, -2009
                  sub          tp, a3, t3
                  sll          s10, tp, t1
                  andi         s10, s10, -1870
                  auipc        gp, 529369
                  lui          s11, 70921
                  xor          zero, s2, a5
                  nop
                  or           a1, a0, s10
                  sra          gp, a4, s5
                  sra          a1, t6, s2
                  and          gp, tp, a0
                  or           a1, s3, t3
                  sra          a5, t2, sp
                  sub          t5, a1, a5
                  xor          gp, a2, tp
                  add          t4, a4, t0
                  ori          s3, t4, 1985
                  srai         a5, s1, 0
                  andi         t1, s5, -388
                  srl          sp, s8, t3
                  lui          s4, 110596
                  sra          t0, a2, s6
                  auipc        t0, 5122
                  sra          t3, t0, a6
                  and          a0, ra, a7
                  sltu         s8, t0, gp
                  sltiu        s1, s2, 1242
                  and          sp, zero, sp
                  auipc        t1, 5223
                  sra          s4, s10, zero
                  slt          s3, s6, t3
                  sra          s1, s9, s10
                  ori          s2, a3, 641
                  srai         a2, a7, 11
                  srli         s3, s0, 29
                  srl          s0, tp, s5
                  xor          t5, sp, s8
                  addi         a1, s11, 289
                  sltiu        s9, s1, -1114
                  ori          s3, a5, -716
                  slti         s10, s0, -1841
                  andi         a2, a5, -133
                  slt          s8, s6, s2
                  sltiu        a4, a2, -315
                  xori         tp, s2, 1497
                  ori          gp, t3, 314
                  srl          a5, a6, a2
                  srl          a0, a0, s11
                  ori          sp, t6, 1530
                  nop
                  addi         s0, t3, 702
                  sra          s1, a3, t1
                  xori         s1, tp, -922
                  slli         s2, s3, 8
                  or           s1, t5, a2
                  and          t4, a0, s8
                  srl          s1, s11, a0
                  slti         a1, s5, -119
                  srl          t1, t0, s10
                  ori          a5, tp, 1861
                  sub          s3, t1, s7
                  srai         a5, t6, 8
                  srl          t1, zero, s1
                  nop
                  sltu         t0, s8, a3
                  sltiu        s10, s6, 914
                  add          t1, sp, t2
                  nop
                  sub          t3, zero, sp
                  xor          a5, t5, a6
                  slt          a4, s5, gp
                  slli         t0, a0, 16
                  lui          a0, 504595
                  srl          s0, s9, s9
                  addi         s11, s11, 1767
                  sub          t0, a5, a5
                  sltu         t4, t0, s4
                  lui          s5, 452532
                  auipc        s10, 775270
                  sltiu        t3, t1, -935
                  slli         gp, s3, 20
                  ori          s8, s8, -681
                  sub          a0, a4, gp
                  srli         t4, a4, 25
                  sra          zero, a0, s0
                  xori         a1, a6, -1259
                  sltu         a2, a6, s3
                  auipc        s7, 108662
                  andi         zero, a5, -1508
                  sll          ra, s0, t1
                  xori         a3, s9, 191
                  ori          t1, t5, 803
                  slti         a1, t4, -1694
                  xor          s5, s5, sp
                  lui          s9, 375695
                  sltiu        tp, a1, -1714
                  addi         s10, s5, 1050
                  sltiu        s8, s0, 719
                  lui          a3, 648697
                  slli         t3, a6, 28
                  auipc        s2, 897813
                  slt          a4, a2, t2
                  srli         s4, sp, 21
                  xor          s5, s5, s2
                  sub          s8, s0, a2
                  and          t4, a0, a5
                  add          s0, s9, s5
                  andi         s7, s11, -981
                  lui          s10, 696222
                  xori         zero, gp, -1498
                  or           tp, s11, t6
                  srl          s2, s6, t5
                  or           a0, t1, s4
                  add          a1, sp, t3
                  srli         a6, sp, 0
                  slti         a1, a7, 866
                  add          s0, a6, t1
                  auipc        t5, 124435
                  srli         s8, a5, 19
                  add          a3, t2, a3
                  auipc        s8, 1011988
                  andi         t3, a6, -446
                  srai         a2, a4, 6
                  add          s0, t1, a6
                  xor          s1, s1, a0
                  xori         s8, s11, -1475
                  andi         ra, tp, 1983
                  sll          tp, t3, a3
                  addi         s3, ra, -1799
                  lui          s9, 755460
                  xor          s2, s8, s2
                  xori         s11, zero, 779
                  slli         t3, t4, 9
                  sra          sp, a3, s6
                  sub          s0, s1, s2
                  add          t5, s8, sp
                  nop
                  ori          s9, s10, -549
                  addi         s8, s1, 174
                  slt          s4, s0, sp
                  slti         a1, t1, -1388
                  sltiu        t6, sp, -60
                  sra          s3, tp, s6
                  ori          s7, t0, -774
                  ori          t1, a4, 234
                  or           t0, t3, a1
                  andi         t4, a5, -729
                  addi         s0, s0, 824
                  srli         t3, s10, 23
                  slti         t5, a4, 205
                  andi         s7, a7, 1263
                  ori          s7, t4, -974
                  and          a5, t0, a3
                  sub          gp, s5, ra
                  andi         s3, t6, -666
                  sltu         t3, a4, s8
                  slti         s3, tp, -2011
                  or           s3, tp, a4
                  slli         s2, a0, 24
                  or           s8, sp, t3
                  sub          s5, zero, a5
                  slli         t3, s3, 27
                  srai         t0, t5, 1
                  andi         s2, a1, -614
                  auipc        s5, 68280
                  slti         t0, s2, 27
                  slti         gp, a2, 403
                  srai         a4, a1, 31
                  and          gp, s7, a1
                  slli         ra, s8, 23
                  sra          a5, a7, sp
                  srl          s9, s1, a4
                  sub          t1, a3, t1
                  auipc        t3, 6166
                  slt          t5, s2, t1
                  srli         t0, s8, 21
                  sll          a2, t3, s6
                  sll          zero, a0, a4
                  sll          t1, t0, s9
                  sub          s11, a3, s1
                  sll          a6, sp, sp
                  add          a0, s10, s5
                  sll          a6, ra, t0
                  ori          zero, t6, -656
                  and          t3, tp, t4
                  or           t5, s10, s8
                  srai         t0, t3, 18
                  xori         a6, tp, -1244
                  xor          a5, s0, s0
                  xor          zero, a4, t2
                  sra          a4, t4, t1
                  and          t6, t4, s6
                  and          s7, s3, gp
                  xor          s9, s3, a7
                  sub          s3, a7, t0
                  or           a1, zero, s11
                  slli         s5, t4, 2
                  slt          a2, s11, a7
                  xor          t6, a3, s10
                  or           a2, s9, s7
                  srli         s0, s0, 21
                  andi         s5, ra, -735
                  sll          s4, s8, s8
                  ori          s4, a6, 29
                  nop
                  addi         s0, a6, 1841
                  slt          s4, s4, t0
                  sll          a1, s1, t2
                  or           t4, a3, tp
                  and          s4, s7, ra
                  sltiu        s11, a2, -1855
                  or           t6, a0, a1
                  sltiu        t3, t5, -1828
                  ori          t4, a7, -750
                  ori          a4, zero, -532
                  sra          a0, s11, s7
                  nop
                  srli         sp, s11, 11
                  sra          t5, t2, s3
                  and          s2, s10, t1
                  srl          s7, s11, a2
                  add          a5, s4, s8
                  auipc        t4, 614587
                  slti         zero, s5, -609
                  addi         s5, s2, -1154
                  xor          s9, t2, ra
                  srli         t1, s7, 9
                  srl          s10, a5, s7
                  slli         t6, s8, 5
                  ori          zero, s0, -212
                  sll          ra, t3, ra
                  add          a3, s3, s7
                  auipc        a5, 447146
                  add          t6, t6, t0
                  srai         s0, s10, 6
                  and          ra, t5, a6
                  slli         t1, a0, 18
                  slli         t5, zero, 20
                  xori         a1, s10, -1549
                  srai         a3, t6, 16
                  xori         t6, s6, -965
                  or           s7, s5, a0
                  xor          a0, a7, a5
                  xor          a1, t0, a6
                  auipc        t5, 461687
                  or           t1, ra, t4
                  xor          s9, s2, t6
                  add          t5, a2, s9
                  addi         ra, a5, 1604
                  srai         s5, s6, 24
                  xor          a5, s6, s5
                  and          zero, s5, s2
                  or           tp, s10, a1
                  addi         a4, a6, 916
                  add          ra, t4, t1
                  sra          s7, a2, s5
                  srli         s2, zero, 0
                  srai         zero, s1, 0
                  ori          s4, s7, 88
                  srai         a4, s10, 11
                  srl          zero, s9, s6
                  srai         s4, s9, 17
                  sltu         sp, s11, zero
                  add          s7, s6, s6
                  slt          sp, t5, a3
                  addi         t1, tp, -286
                  slt          tp, t4, a6
                  xor          s11, a3, s3
                  addi         t3, s10, 787
                  ori          s2, gp, 1995
                  sub          s1, s9, s11
                  or           s1, t2, a4
                  sub          s5, a7, s4
                  xor          s4, s5, s2
                  xor          a1, ra, s3
                  xor          t1, t2, a5
                  or           t3, a6, s4
                  srl          gp, s1, t1
                  sltiu        t1, s0, -938
                  srl          a4, s1, s0
                  srli         s8, s4, 16
                  sltiu        s2, t6, -26
                  srli         a6, s9, 15
                  and          a2, s6, t0
                  add          t3, t6, a1
                  sub          t6, s4, s11
                  sltu         t3, s3, t0
                  and          a0, s2, a0
                  add          a6, a1, s10
                  and          a2, a2, a4
                  sra          t0, gp, s11
                  xori         s2, t6, 290
                  xori         tp, t6, -1925
                  sub          a2, s10, tp
                  xor          t6, s8, s4
                  srli         s5, gp, 11
                  add          t6, s10, s9
                  slti         t0, t0, 951
                  nop
                  andi         s9, s10, 1721
                  andi         a1, a3, -821
                  srl          s2, s4, s11
                  lui          s2, 287955
                  sub          s3, t6, sp
                  lui          gp, 12603
                  srli         tp, t2, 21
                  ori          t4, t5, 716
                  slt          s11, s0, s4
                  lui          s8, 862029
                  addi         t0, s9, 1693
                  sll          t1, s3, a5
                  andi         s5, a2, 1372
                  ori          a1, tp, 1835
                  xori         a0, s2, -1039
                  sltu         t6, s7, a2
                  andi         s5, s9, -864
                  or           ra, s2, t6
                  srl          s11, s6, s6
                  nop
                  slli         a1, s7, 27
                  and          s5, t3, a4
                  lui          s5, 679989
                  xori         ra, t2, 1349
                  add          t5, s6, s9
                  srai         t5, s6, 12
                  sltiu        t4, s6, -1868
                  add          t0, s8, sp
                  and          a4, a3, s6
                  and          sp, s3, gp
                  add          s9, s6, sp
                  xori         s3, a0, -1668
                  lui          zero, 68455
                  nop
                  srai         zero, a0, 25
                  sltiu        t4, a6, -10
                  auipc        s3, 369535
                  nop
                  srai         s3, a0, 0
                  auipc        s8, 700163
                  sub          a1, s0, s3
                  auipc        gp, 693237
                  andi         t6, s8, 1279
                  sra          s8, s11, a3
                  srai         s9, t5, 20
                  lui          a1, 496463
                  ori          t5, a1, 1898
                  and          ra, s8, t1
                  add          s11, zero, t1
                  slti         t4, s3, -906
                  add          s0, s1, s11
                  andi         a6, a7, 691
                  slli         t6, tp, 6
                  sub          s2, s2, a5
                  slt          s9, a4, t3
                  xori         s2, a0, 946
                  sub          s4, s8, s6
                  slt          s3, s9, s11
                  add          s10, a1, a1
                  slt          t4, t0, t3
                  srl          a6, s10, a1
                  srl          t5, t2, s8
                  slt          t4, a6, s7
                  xor          t3, s1, a1
                  ori          s8, s8, 1493
                  sltu         t5, t4, a1
                  addi         sp, t0, 707
                  lui          s10, 892201
                  sltu         a1, tp, t3
                  xori         s1, s9, -1404
                  xor          s11, s11, a0
                  add          s10, s5, a7
                  sra          t1, tp, a6
                  sll          a2, s1, s2
                  lui          t3, 751487
                  xori         s9, a6, 1321
                  slt          t0, s6, a0
                  or           a4, s2, a1
                  andi         s1, s4, -1176
                  slt          t5, t5, s8
                  nop
                  auipc        s11, 793613
                  ori          s5, s3, -2040
                  addi         sp, a4, -1605
                  sub          s9, t1, a5
                  addi         a1, s6, -1440
                  xor          sp, ra, s2
                  andi         t0, s3, 390
                  sra          t5, s5, tp
                  srli         a4, tp, 9
                  srl          s7, sp, t5
                  and          s11, a7, tp
                  slti         t0, a0, -1131
                  srai         s0, s11, 14
                  auipc        s11, 792182
                  ori          t0, a2, 802
                  srli         ra, a3, 11
                  and          a1, s1, t2
                  lui          s10, 285600
                  and          a5, s11, tp
                  andi         ra, s6, 274
                  nop
                  sub          s0, s5, s9
                  or           tp, s9, s10
                  sltu         s3, ra, s6
                  srai         s5, s5, 0
                  or           a4, t4, a5
                  srl          sp, s7, s4
                  nop
                  slti         ra, s8, 1902
                  ori          s10, s8, -1798
                  xor          tp, gp, a2
                  and          t6, s2, t1
                  sub          s0, s5, a1
                  ori          s2, s5, 157
                  xor          s5, a7, t1
                  xor          a6, s6, s1
                  auipc        t4, 548277
                  sub          t5, s10, a0
                  xor          t5, zero, t5
                  sra          a0, s6, t3
                  xor          a0, t0, t6
                  srl          a3, s3, s9
                  sll          a5, a5, s11
                  ori          t5, a4, 182
                  addi         s7, t0, -170
                  slt          sp, a1, gp
                  or           a1, s3, tp
                  lui          t1, 1019724
                  srl          s3, s9, a0
                  or           s4, t2, s1
                  or           tp, a4, t3
                  sra          s9, s1, s10
                  auipc        gp, 877855
                  sltiu        s7, t2, 1857
                  xori         ra, s4, -1431
                  addi         a6, sp, -1661
                  xor          s2, s4, s1
                  srl          s7, t5, a0
                  sltiu        s7, s3, -464
                  sub          a3, a3, s10
                  and          a1, s6, t3
                  ori          s1, a7, 815
                  sra          t5, t4, s3
                  add          zero, s6, gp
                  slli         s9, t3, 14
                  or           t3, sp, s4
                  sltiu        s0, a1, -2010
                  ori          t3, s10, -633
                  sltiu        ra, a4, -621
                  andi         a1, a0, -1086
                  sltu         a4, a5, t6
                  and          s7, t2, sp
                  srli         s8, a5, 26
                  xori         t0, t5, -1996
                  or           t0, t0, s9
                  auipc        gp, 830267
                  srai         a0, s7, 8
                  lui          tp, 204641
                  xori         sp, t6, -1885
                  nop
                  sltiu        t0, s1, -76
                  sll          tp, t6, s8
                  andi         s5, t5, 1791
                  srl          tp, zero, s0
                  xor          t1, t6, t2
                  slli         s1, zero, 12
                  ori          s7, a3, -1758
                  sltu         gp, s4, a5
                  auipc        a5, 174644
                  srli         s1, t3, 10
                  srli         a6, a5, 18
                  xori         s10, s5, 13
                  srli         s4, zero, 1
                  slli         a1, a4, 9
                  slti         s0, a5, 1866
                  sltiu        sp, t1, 1688
                  srl          a2, t2, a4
                  slt          s3, s10, t2
                  sra          a0, t6, s7
                  or           zero, a2, t1
                  sub          s8, a4, a3
                  xori         s3, t3, -1200
                  srai         s2, a7, 31
                  srli         s8, a6, 27
                  auipc        s0, 194900
                  lui          s2, 844111
                  srl          s7, t3, zero
                  slli         s3, t4, 0
                  andi         a4, a1, -1122
                  srli         gp, s7, 7
                  auipc        s9, 916047
                  srai         s11, ra, 26
                  lui          a4, 304127
                  lui          tp, 499468
                  addi         s1, a7, -858
                  ori          tp, s11, 465
                  sra          gp, t0, sp
                  or           a0, t6, a0
                  srli         s1, s0, 7
                  srli         s9, t4, 25
                  xori         t0, a6, 1960
                  nop
                  and          s8, a5, a5
                  sub          s1, s10, s5
                  nop
                  sub          ra, t2, s9
                  add          tp, ra, t0
                  sll          t4, ra, a4
                  slt          s10, t1, t2
                  nop
                  add          t3, s11, a0
                  sra          s4, a2, s11
                  srl          a2, s8, t1
                  srai         s1, a5, 14
                  sra          t1, a0, s5
                  srai         s2, zero, 20
                  sltiu        s11, t5, 40
                  addi         ra, s10, 1295
                  ori          s4, s9, 2002
                  and          t0, t4, t3
                  xor          t1, s4, a2
                  sra          t1, a0, t1
                  sub          s4, s1, a2
                  slt          a4, s11, s7
                  sll          s10, s5, tp
                  xori         t1, a7, -1258
                  xor          s0, s2, a4
                  srl          t6, s6, s6
                  sll          a6, t6, t6
                  andi         s2, t3, -1750
                  nop
                  slt          t4, a7, t3
                  sltu         s0, s5, s9
                  sltiu        s1, s8, -410
                  slti         a1, a1, -645
                  srl          a6, s10, a0
                  sll          t4, s3, ra
                  slti         s9, t1, -983
                  srli         s7, s9, 14
                  add          t4, t2, s10
                  xori         a0, tp, 376
                  sra          a1, a4, a6
                  sll          s3, zero, a3
                  slti         gp, s3, 1737
                  srai         s2, s1, 14
                  srli         s3, sp, 23
                  slt          zero, a1, t6
                  sltiu        s9, a0, -2012
                  sltu         ra, a1, s7
                  slt          a1, s3, a0
                  sltiu        t1, s2, -1327
                  slti         t6, a4, 1764
                  lui          t5, 194944
                  srai         a3, s3, 26
                  srli         a2, s8, 23
                  srai         a6, tp, 12
                  slli         s1, t0, 27
                  or           t4, a5, a6
                  or           ra, a6, s3
                  sra          s2, s4, a7
                  xor          t1, s0, a1
                  srai         a3, s11, 21
                  slti         a4, s8, -1526
                  xori         s3, a2, 1166
                  srai         a6, a2, 18
                  addi         t6, a7, -903
                  andi         s1, s3, 319
                  or           t3, s0, t1
                  add          t3, a5, a2
                  srai         t3, zero, 1
                  ori          t3, t1, 485
                  lui          sp, 797442
                  srli         t1, ra, 0
                  nop
                  auipc        ra, 278438
                  sltiu        t5, s8, 109
                  slt          a1, s8, t4
                  slti         t1, tp, -289
                  srli         s3, s5, 26
                  slli         a6, ra, 0
                  srli         a3, a2, 2
                  and          t4, t4, s5
                  sub          s8, s10, t1
                  add          s2, s5, t1
                  andi         sp, gp, 1606
                  sltu         a3, zero, gp
                  sra          a2, s11, a0
                  sra          a5, sp, s11
                  or           s9, s0, t0
                  srai         t3, s4, 26
                  and          s2, s1, s5
                  andi         s8, s7, 1339
                  xor          t5, a7, ra
                  srai         s7, s9, 16
                  xori         a0, tp, -761
                  sltu         s4, a4, tp
                  xor          t3, t5, a6
                  sra          s11, gp, s5
                  lui          t5, 59578
                  sll          t0, t1, sp
                  slli         zero, s5, 22
                  andi         a6, a4, 1455
                  slt          a0, t4, t5
                  or           a1, s5, a0
                  sltiu        t5, s9, 225
                  srli         zero, a5, 22
                  slli         s10, gp, 10
                  auipc        gp, 641044
                  sra          t0, s1, t0
                  ori          a6, s11, 1219
                  slli         t6, s6, 28
                  sra          s7, s1, zero
                  xori         s4, s9, 31
                  srli         ra, a4, 12
                  ori          s7, a1, -743
                  srai         s3, s1, 12
                  addi         s9, s6, -222
                  andi         s8, s5, -295
                  srli         a0, a7, 1
                  srl          a0, a4, a4
                  sltiu        a0, s7, -621
                  nop
                  srl          t4, a6, s1
                  slt          t0, a5, t5
                  sltiu        t3, s10, -1451
                  nop
                  sub          s3, zero, s3
                  sltu         a6, s0, t2
                  add          s2, t2, s3
                  or           a5, a3, a6
                  xori         ra, s4, -473
                  and          s11, a2, s8
                  slti         t3, t0, 404
                  sltu         a5, s10, s2
                  or           tp, s5, s0
                  sll          s1, t0, t2
                  srli         t1, gp, 6
                  srl          s4, s4, s4
                  nop
                  slti         s5, s1, 1831
                  add          a3, gp, a2
                  auipc        s0, 620603
                  andi         s2, s8, -37
                  slli         a5, s9, 16
                  slt          s11, t6, s8
                  andi         a1, s1, 1676
                  sll          t4, a0, t3
                  auipc        t5, 72750
                  auipc        s4, 865444
                  sltu         s8, a5, s1
                  nop
                  lui          sp, 158985
                  sub          a2, s4, t1
                  sll          t5, t6, s0
                  ori          s2, t4, 15
                  sra          t1, a4, t2
                  and          t4, gp, gp
                  and          s4, s3, sp
                  slti         t1, s9, 542
                  srl          s0, s0, a7
                  slli         s3, a7, 30
                  slli         s8, a2, 29
                  sltu         a6, a4, t0
                  sltiu        ra, a4, 887
                  srl          t5, t6, t2
                  sltiu        a4, s0, 513
                  or           t5, s1, sp
                  srai         zero, a5, 3
                  srl          s11, a2, a2
                  andi         s8, ra, 190
                  sra          s10, zero, s3
                  sub          s5, a5, t3
                  ori          s2, s11, -1905
                  ori          s10, zero, 727
                  srai         gp, a4, 22
                  andi         s5, s2, 1851
                  andi         a5, s0, 673
                  nop
                  ori          s2, t2, -1373
                  and          a0, a1, a5
                  or           t5, t5, s9
                  srli         t5, a3, 22
                  sub          ra, s11, s3
                  srli         a4, t4, 2
                  sll          s9, s8, tp
                  slti         a1, s7, 1669
                  or           s1, sp, s4
                  lui          t3, 561496
                  or           gp, s10, t5
                  sra          a4, t3, t5
                  auipc        a3, 582225
                  sll          t0, zero, gp
                  lui          s7, 691322
                  lui          t1, 999956
                  xori         s11, t3, -943
                  sltu         t3, a5, s11
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s5, 0x0
                  li           t0, 0x0
                  li           s10, 0xffffffff
                  li           a3, 0x77f1a7b
                  li           a5, 0x0
                  li           tp, 0x80000000
                  li           gp, 0x0
                  li           a1, 0x0
                  li           s4, 0x0
                  nop
                  sub          s5, a5, a0
                  nop
                  addi         gp, s5, 1344
                  add          a1, gp, s10
                  nop
                  sub          gp, a1, a5
                  auipc        a0, 447286
                  add          a5, gp, s5
                  add          s4, s10, s4
                  addi         gp, gp, -53
                  add          a3, a5, a5
                  auipc        s5, 197081
                  lui          tp, 370809
                  add          gp, t0, a3
                  sub          a5, tp, a1 #end riscv_int_numeric_corner_stream_1
                  xor          a1, t6, a0
                  add          s0, s2, a6
                  xori         a5, s0, -931
                  or           a2, s5, s2
                  add          s4, s1, gp
                  andi         s0, a3, 1691
                  and          a6, a1, a0
                  sll          t6, s0, a5
                  and          s2, t6, a2
                  slti         ra, gp, 1384
                  srai         s1, t4, 10
                  addi         t1, s1, -1101
                  add          t3, s3, s2
                  xori         s4, t1, -1585
                  srl          a2, t3, t5
                  srl          zero, sp, t0
                  slli         t1, t1, 6
                  addi         s10, s3, -872
                  xor          a0, a2, s5
                  sub          s10, a0, s7
                  slli         t6, s2, 12
                  or           ra, t1, t0
                  ori          a0, s7, -417
                  sub          a4, s7, s0
                  slti         s9, s2, -824
                  slt          s1, s4, tp
                  slli         s5, t5, 27
                  sra          s4, a6, a0
                  sll          tp, s9, a0
                  xor          a6, a3, s0
                  srai         s9, t2, 30
                  xori         s9, s10, 272
                  srl          t4, t4, s3
                  or           s5, a3, ra
                  andi         zero, t2, -139
                  add          t6, s2, t5
                  auipc        a0, 205028
                  sltu         s3, a7, t3
                  slt          t0, t6, sp
                  srl          a6, s5, a6
                  xor          s11, a3, s1
                  sll          t5, sp, tp
                  ori          t4, s10, -217
                  sra          tp, a0, t1
                  and          a1, a7, a5
                  or           s2, t5, s3
                  slti         s1, t4, 1985
                  sub          s7, t5, t3
                  sltu         ra, tp, a4
                  sub          s10, a3, a1
                  sltu         a4, a1, a4
                  sltu         a6, t1, t1
                  and          s3, tp, t1
                  ori          tp, s7, 1393
                  sra          s5, s4, s11
                  or           s5, s3, a1
                  slt          gp, a6, a2
                  sub          a4, tp, a0
                  sub          ra, s2, s1
                  xor          a2, s0, s9
                  add          s8, s9, s4
                  add          s5, s1, a6
                  sll          a2, a0, a6
                  auipc        t1, 462743
                  slti         gp, s9, -1121
                  add          zero, s1, s5
                  sub          s2, a4, ra
                  slt          a5, a3, a2
                  sra          zero, t2, a7
                  slti         s4, a4, 1626
                  ori          t4, s11, 1768
                  ori          s9, t1, 439
                  slt          s4, ra, a3
                  add          a3, a6, t6
                  sll          s5, t2, t3
                  sll          t5, a6, a4
                  add          a0, s2, t1
                  sltiu        s11, t0, -1716
                  slli         s2, s5, 22
                  ori          s5, a6, 596
                  andi         zero, s7, 187
                  srl          t0, t3, ra
                  slt          s2, s10, t1
                  sll          t4, a5, s11
                  or           t1, s4, a0
                  xor          s4, zero, s4
                  slt          s8, s6, zero
                  ori          tp, s1, 1129
                  and          s4, sp, ra
                  addi         s4, a5, 236
                  xori         s9, a3, 698
                  ori          gp, ra, 545
                  srli         t6, t6, 18
                  xori         a1, s4, -1125
                  and          t1, s11, t1
                  srai         s11, t6, 16
                  srai         s3, s11, 31
                  srai         s0, s6, 12
                  addi         t1, s9, 1678
                  addi         a6, t5, 851
                  sltiu        t3, ra, -679
                  sltiu        a0, t3, 1483
                  slt          t0, a5, s6
                  srai         a5, t0, 29
                  and          a3, s11, a1
                  srl          s8, s8, t1
                  andi         s0, t2, -425
                  sltiu        t4, s2, 32
                  slli         a6, tp, 27
                  slt          s10, t6, s3
                  slli         s0, s4, 15
                  ori          t6, s10, -993
                  add          sp, a0, t3
                  xor          sp, a5, t6
                  srai         tp, s0, 10
                  srli         s4, t4, 22
                  ori          t0, a4, 1828
                  ori          s7, s4, 1252
                  srl          s0, zero, t3
                  auipc        t5, 845824
                  sltiu        t5, t1, 1840
                  sltiu        t5, s4, 128
                  or           t5, tp, zero
                  slt          a1, gp, s5
                  srli         a1, t3, 1
                  auipc        t0, 892565
                  slti         t4, s7, -1390
                  and          a5, s7, s9
                  or           a3, s11, s0
                  and          s0, t1, s3
                  andi         s5, a2, 1006
                  lui          t5, 585677
                  xori         s8, gp, -1506
                  auipc        s3, 624224
                  sra          s2, tp, a0
                  and          s3, s7, t1
                  addi         a0, a5, -185
                  and          t3, a2, t2
                  add          ra, sp, s7
                  srli         a5, s3, 24
                  addi         ra, ra, -1981
                  or           t4, s9, a5
                  xor          t5, sp, ra
                  or           t1, tp, s8
                  slt          s3, s11, a0
                  srl          a4, a4, a2
                  slli         gp, t3, 29
                  srl          s3, t2, s2
                  or           a6, t3, t3
                  ori          t0, t2, -1335
                  ori          s8, ra, -1063
                  ori          ra, zero, 565
                  nop
                  slt          a1, t1, t0
                  or           s0, a5, s7
                  sub          a5, t5, t4
                  add          s10, a5, a7
                  or           ra, t6, t6
                  or           a3, s3, a3
                  lui          s3, 986947
                  slti         s3, a2, -1945
                  ori          ra, a2, 1283
                  xori         s0, t4, -1835
                  add          t1, t3, t3
                  srai         a3, a7, 22
                  sltiu        s1, s0, -1896
                  slt          a3, zero, s7
                  ori          a3, s1, 441
                  or           s1, s4, zero
                  sra          a1, tp, sp
                  srl          s1, t6, s5
                  sra          s5, sp, s7
                  lui          ra, 685964
                  sll          t0, s10, zero
                  ori          t0, a2, -296
                  lui          a6, 925202
                  srai         a0, s4, 31
                  lui          s7, 67763
                  srai         a6, a0, 2
                  lui          s11, 936458
                  srli         s3, t1, 16
                  lui          a5, 564540
                  slt          zero, s7, t6
                  sltiu        ra, s2, -1448
                  or           gp, a1, t0
                  sll          s5, a0, t1
                  and          tp, sp, a3
                  slt          t3, gp, s2
                  auipc        t1, 11093
                  slt          a2, s9, t0
                  xor          t1, s7, s5
                  slti         t1, s9, 208
                  xor          a0, s2, a5
                  srli         ra, s9, 0
                  srai         t5, s1, 10
                  srli         t3, t3, 30
                  sltu         t5, t3, a4
                  ori          a0, t6, -212
                  ori          s9, s10, -1626
                  sltu         s9, a5, a0
                  ori          a0, s5, 442
                  add          zero, s11, t4
                  sll          t5, a1, s9
                  xor          a4, a5, tp
                  andi         ra, a4, -1246
                  slli         a4, s9, 14
                  slli         s3, a5, 11
                  andi         t1, a5, -1285
                  sra          s8, s10, s2
                  and          s8, s9, s10
                  andi         t4, s5, -1616
                  sub          s2, s6, a5
                  slt          t3, s5, a5
                  slti         s2, s6, -578
                  srl          a5, sp, t4
                  srl          s8, ra, s3
                  nop
                  sltu         t1, s0, s3
                  nop
                  slti         ra, s7, -584
                  and          sp, s9, s5
                  sltu         a4, a6, t5
                  sub          t5, s3, ra
                  xori         s3, t4, 256
                  sltu         s8, a6, a2
                  xor          tp, sp, a0
                  sub          a1, t3, t6
                  or           s3, t6, a3
                  srai         s4, gp, 19
                  srl          s8, a7, t2
                  srl          s3, s9, a5
                  sltu         t3, a1, ra
                  add          t0, s3, ra
                  and          s7, a3, a0
                  sltiu        sp, t4, -336
                  or           s2, a6, zero
                  lui          s7, 863979
                  srai         s5, a3, 27
                  slti         t5, s1, 1909
                  add          a3, zero, a5
                  slt          s5, a6, a1
                  xor          a3, a6, s4
                  sltu         s1, t1, a6
                  srl          t3, a1, a4
                  addi         s2, a5, -265
                  slti         t6, t0, -1152
                  nop
                  srai         a0, s6, 7
                  sub          s7, sp, t6
                  xori         t4, s9, -302
                  sltu         a6, gp, s7
                  xori         a1, a4, -1016
                  srli         t1, s5, 15
                  slt          s4, s4, a2
                  andi         s5, s5, 886
                  and          t1, t4, zero
                  andi         a1, a1, -767
                  nop
                  nop
                  addi         a5, s7, 601
                  slli         t0, s2, 13
                  or           s7, gp, a6
                  xori         s8, ra, -1100
                  srl          s7, s11, s3
                  ori          a5, tp, -1100
                  ori          s10, a3, -237
                  addi         s2, s8, 1831
                  auipc        a0, 377025
                  srl          s10, t2, s9
                  lui          gp, 716680
                  ori          t1, t6, 686
                  sll          s7, t4, t1
                  slt          tp, a2, a5
                  sra          t5, t0, a0
                  sra          a1, s6, t6
                  addi         s3, s1, -1371
                  slt          a6, a7, t2
                  add          a5, tp, a0
                  srl          t1, zero, s11
                  slti         sp, s4, -930
                  srai         ra, t5, 7
                  or           s7, t1, s5
                  ori          t1, a1, 1420
                  addi         s3, ra, -567
                  auipc        a2, 183132
                  slti         t3, s7, 1699
                  auipc        s5, 980713
                  srli         s7, s3, 16
                  sltu         t6, s11, s1
                  nop
                  srl          gp, t6, gp
                  sra          t3, a1, tp
                  xor          a2, a0, s6
                  sltiu        s0, zero, -978
                  slt          a4, t5, s11
                  slli         t4, ra, 22
                  sra          s9, s0, t4
                  slt          a2, a3, s7
                  srai         s2, t0, 8
                  sub          s3, ra, t5
                  addi         a5, s4, 585
                  lui          a6, 571309
                  ori          t5, s7, -1648
                  ori          a6, a5, -1899
                  addi         s5, a5, -464
                  sltu         t3, t5, t2
                  nop
                  srl          a5, t6, a6
                  andi         s1, s7, 1583
                  sra          a4, ra, s3
                  or           s4, t0, s8
                  lui          a6, 395697
                  or           s7, t0, sp
                  sll          t1, t4, gp
                  addi         s4, t1, -1021
                  addi         a6, t1, 1924
                  slt          a2, a2, t2
                  or           t3, s6, t1
                  addi         a2, t2, -1539
                  and          s7, zero, s2
                  sub          a3, s1, s10
                  srl          a4, ra, t1
                  auipc        zero, 136529
                  sltu         s9, s6, a5
                  and          s3, t5, t6
                  andi         s7, t3, -66
                  nop
                  sra          gp, s5, zero
                  lui          t3, 575725
                  addi         s1, t1, -814
                  slt          s5, s3, s9
                  sltu         s5, t4, a5
                  sltiu        a5, s9, -345
                  slt          s5, s6, s3
                  and          t5, a7, tp
                  andi         s5, s9, -1473
                  and          s9, s6, sp
                  xori         t1, a5, -1935
                  sltiu        a2, s9, -238
                  srl          a2, t2, s7
                  srai         tp, ra, 24
                  lui          s9, 211172
                  and          zero, a1, a6
                  and          a6, s8, s6
                  addi         t3, s0, -118
                  sll          a2, zero, a3
                  nop
                  ori          a2, zero, 693
                  srli         t5, s10, 2
                  andi         a2, a0, 1343
                  lui          s1, 672542
                  or           s5, a2, s4
                  sltu         a0, a3, s6
                  slli         s5, gp, 9
                  ori          s0, sp, 104
                  ori          ra, s7, 438
                  addi         s3, a0, 748
                  xor          s8, t4, s6
                  slt          t1, s1, a7
                  add          gp, a0, s9
                  sub          t3, tp, t0
                  sub          s3, s5, t5
                  srai         t3, s3, 5
                  add          a0, a0, t2
                  or           s5, s2, a2
                  slt          t5, s11, ra
                  xor          a0, a4, a1
                  lui          t5, 846963
                  sltiu        zero, t6, -939
                  slt          s3, gp, s2
                  srl          s2, ra, s3
                  addi         t6, t2, 257
                  xori         a2, s8, 1615
                  sll          t5, s5, s0
                  srl          a6, s3, tp
                  nop
                  slt          s11, t3, s1
                  and          zero, a2, a3
                  slti         a1, s6, -1337
                  and          gp, s4, s2
                  sll          s0, a2, s5
                  xori         s1, s5, -902
                  sra          s3, t0, s9
                  andi         zero, s9, -51
                  ori          s7, a7, -891
                  sltiu        a1, ra, 1896
                  xor          s1, s0, s3
                  sub          a0, s3, a4
                  sra          a6, s6, s5
                  slli         a6, t0, 20
                  or           zero, t2, s4
                  xor          a0, a5, t2
                  lui          t1, 245850
                  add          sp, a5, zero
                  lui          t4, 290006
                  addi         s3, a3, -1393
                  sll          zero, tp, t4
                  srli         gp, sp, 27
                  andi         a1, s0, -1573
                  nop
                  andi         t3, a0, 1967
                  addi         tp, t5, -930
                  add          s8, a3, s5
                  sltu         zero, s6, gp
                  ori          s7, s5, -1128
                  sltiu        a1, s9, 325
                  sltiu        a3, t3, -518
                  srli         a5, a4, 6
                  srli         ra, tp, 11
                  sltiu        s0, s3, -1394
                  add          s0, a0, s1
                  xor          gp, s4, s7
                  ori          a5, s9, -761
                  add          a2, t4, a3
                  srai         s7, s4, 10
                  auipc        a6, 796246
                  slti         ra, s8, 464
                  and          s0, s4, gp
                  srl          s9, a6, a7
                  lui          t3, 343910
                  xori         a1, t3, 1739
                  srl          t1, t2, s7
                  sltiu        ra, a1, -234
                  xor          s0, a2, a6
                  srai         s9, t0, 18
                  sll          a5, t0, t0
                  xor          s11, t0, s1
                  sra          t5, s2, s1
                  sra          s9, t4, zero
                  slli         t3, s8, 8
                  nop
                  xori         s10, ra, -425
                  sub          s10, gp, s5
                  sra          s5, gp, sp
                  auipc        t0, 773435
                  ori          a1, t3, -1373
                  xori         t3, a4, -1956
                  srli         a3, zero, 29
                  srai         sp, s0, 2
                  xor          s4, a3, a0
                  sra          a0, s9, s9
                  sltu         t4, t2, s7
                  sltu         t6, a6, a7
                  slti         a6, a3, -1974
                  slt          s2, a5, t1
                  sra          s3, s2, t2
                  add          a6, s9, t5
                  sltiu        a5, s0, 1318
                  auipc        a5, 1014249
                  srai         s7, t6, 18
                  ori          a6, ra, 579
                  sll          sp, s0, s5
                  srai         t0, s3, 25
                  srl          s2, s7, s9
                  sra          gp, s10, s9
                  and          a2, t3, a3
                  sltu         a0, a7, a5
                  auipc        a2, 843456
                  and          a1, s6, s8
                  sll          t1, t4, t0
                  auipc        a0, 595197
                  nop
                  slli         zero, s9, 29
                  xor          t3, t5, s7
                  slt          a5, t6, s10
                  srl          s5, s3, a1
                  ori          s0, s4, 2015
                  addi         s10, a4, 24
                  lui          a1, 1023741
                  andi         s10, s8, -639
                  srl          a2, t6, a7
                  auipc        s8, 100441
                  or           s2, s10, a3
                  addi         sp, t0, -1386
                  addi         s11, s5, 1613
                  andi         s8, a1, 1385
                  xori         a2, t2, -689
                  sltu         s3, t3, s3
                  auipc        tp, 246968
                  auipc        s11, 951221
                  srl          s5, t5, zero
                  lui          s4, 952949
                  addi         t6, s5, -1157
                  sub          s2, sp, s11
                  sra          s9, a0, t3
                  ori          a0, a1, 583
                  srai         ra, a6, 12
                  sltiu        t0, s7, -126
                  slti         a3, s11, -1503
                  auipc        s1, 858205
                  ori          s0, s0, 1977
                  sra          t3, zero, t1
                  ori          a2, s8, -1002
                  lui          t0, 663042
                  auipc        t1, 937213
                  auipc        a2, 264935
                  sltu         ra, s0, s2
                  sll          zero, s4, s1
                  sltiu        s9, sp, 452
                  xori         gp, a6, -829
                  slli         t4, s3, 14
                  sll          s7, t0, a6
                  ori          tp, zero, -422
                  add          s10, zero, s9
                  ori          a2, sp, 1887
                  srai         t5, t0, 2
                  srai         t0, s6, 16
                  addi         s5, s6, 1184
                  srli         zero, t6, 15
                  xori         zero, t5, -35
                  and          s9, s10, a3
                  sltiu        s4, s0, 205
                  xor          a0, ra, t1
                  srl          a2, s3, sp
                  and          s0, a5, s4
                  srli         gp, t6, 1
                  slti         a2, s0, 1436
                  auipc        a6, 836520
                  or           t1, a7, s3
                  ori          a1, s7, 1672
                  addi         ra, a7, 1833
                  lui          s2, 202156
                  sub          s5, zero, t6
                  sub          tp, s6, s8
                  add          t0, a4, s11
                  sltu         tp, s3, ra
                  sub          s5, t2, s7
                  sltu         s0, s9, s2
                  slti         s3, s4, -647
                  lui          a6, 548708
                  xor          s9, s0, s7
                  slt          s10, a6, gp
                  or           t4, s6, s9
                  ori          tp, s8, 642
                  srai         t4, s11, 14
                  srai         zero, a4, 2
                  xor          s3, s5, s10
                  sltiu        a3, s1, 1892
                  slli         a6, t1, 26
                  sll          s8, s9, s2
                  slli         a6, a5, 14
                  sltiu        t4, a2, -1745
                  lui          s9, 476045
                  slti         a4, tp, 1286
                  sub          a4, s11, s8
                  xor          s10, tp, s0
                  srai         s10, ra, 25
                  srai         gp, s9, 29
                  lui          s1, 473196
                  slt          s9, t3, s11
                  or           ra, s2, a5
                  slli         tp, a5, 9
                  sll          tp, s6, s5
                  srli         zero, a0, 3
                  srl          s5, a1, a2
                  andi         zero, t5, -880
                  srl          s9, a1, s3
                  sra          a1, t0, s3
                  srli         t0, t4, 20
                  sra          s0, s3, t4
                  sltu         a3, a2, t5
                  sltiu        s0, s4, -1978
                  xori         zero, t0, -1414
                  xori         gp, a5, 1419
                  sltiu        s4, a6, -239
                  sub          a5, a5, a4
                  sub          s4, a2, ra
                  srli         s4, s10, 7
                  xor          a3, t3, t2
                  sll          s11, a3, a0
                  addi         t3, s5, 2021
                  slli         a6, a6, 24
                  srai         a4, s7, 5
                  slti         t5, s0, 686
                  slli         a5, t4, 15
                  andi         s7, s2, 1813
                  add          a1, a0, a7
                  srai         s0, s5, 16
                  ori          a2, s3, 1121
                  srli         t5, a6, 5
                  xori         a1, a4, 1783
                  auipc        t0, 245460
                  or           s9, s10, a7
                  slt          s9, a3, a5
                  add          a3, t3, s8
                  lui          s0, 533249
                  srli         s10, a4, 5
                  add          s9, a7, s6
                  lui          s2, 599602
                  or           ra, a1, gp
                  add          a1, s6, s6
                  slti         a4, s10, -500
                  sra          s10, s0, s9
                  xori         sp, t5, 2040
                  sltiu        s8, a5, 1297
                  slt          sp, t2, s1
                  add          a2, s6, s4
                  andi         a5, s2, 1670
                  slti         a1, t5, 483
                  ori          s2, tp, 1216
                  slli         t0, a2, 14
                  sra          t4, a0, s3
                  sltiu        zero, t2, -965
                  xor          ra, s1, t6
                  slli         s10, s11, 20
                  addi         t1, zero, 2024
                  sltiu        ra, s8, -897
                  sltiu        ra, s9, 1010
                  and          a3, a2, a7
                  sltiu        gp, s3, -55
                  auipc        t0, 210093
                  slti         a3, t5, 1974
                  srl          s4, a2, ra
                  slli         s11, zero, 30
                  andi         a4, t3, -410
                  andi         s2, t0, 1396
                  lui          a6, 865221
                  lui          t4, 424029
                  xor          s11, a1, a6
                  addi         s1, s5, 1957
                  srl          s0, s8, t4
                  sll          s11, s10, zero
                  sub          zero, s6, s10
                  andi         t6, zero, -282
                  and          s8, zero, a7
                  srl          s11, s9, s9
                  sltu         t4, tp, s3
                  and          ra, s3, gp
                  sltiu        t5, ra, -1102
                  ori          a5, a5, 536
                  lui          a5, 720731
                  andi         gp, s6, 660
                  sltiu        s7, s4, 1139
                  srli         s8, ra, 8
                  andi         s1, a0, -803
                  slli         a6, t6, 9
                  nop
                  auipc        tp, 1032752
                  sub          s9, t2, a0
                  srai         s9, t4, 17
                  srli         gp, s9, 28
                  xor          s8, s2, t0
                  lui          zero, 268434
                  andi         s1, t5, -1839
                  sra          ra, a6, t0
                  slti         s9, s7, 1847
                  nop
                  lui          t5, 702822
                  xor          s3, a4, t0
                  sll          t1, s3, s10
                  srl          s8, a7, s6
                  and          a2, zero, a2
                  addi         t0, s1, 68
                  sltu         sp, a6, s9
                  sltiu        s10, t3, -1778
                  ori          t1, a1, -140
                  sltu         s3, a4, t3
                  and          s1, a2, t4
                  srli         s5, t0, 19
                  auipc        s0, 518663
                  addi         a5, t6, 639
                  lui          t5, 535781
                  sra          t3, a4, t1
                  and          s11, a2, t4
                  add          a6, s0, s5
                  sra          a5, t3, s6
                  srl          s7, a2, s1
                  nop
                  lui          sp, 397065
                  ori          s1, a7, -700
                  slli         s4, a1, 6
                  srai         s7, a7, 18
                  srli         s2, s11, 7
                  nop
                  nop
                  srai         ra, a3, 17
                  lui          s11, 361873
                  lui          a1, 902310
                  sub          ra, s9, sp
                  auipc        sp, 1020828
                  lui          t1, 1039427
                  andi         s7, gp, -63
                  slli         t3, s3, 20
                  slli         gp, s10, 12
                  sub          s5, a4, s8
                  slt          s2, gp, a5
                  slt          a5, a7, a6
                  or           s10, zero, a5
                  nop
                  xor          t4, a5, sp
                  auipc        a5, 947853
                  srli         a2, a7, 13
                  nop
                  srli         a0, zero, 15
                  lui          a3, 371911
                  sll          sp, s0, s5
                  add          s11, t2, s4
                  lui          s1, 64014
                  sub          s2, a4, s8
                  xori         t4, s1, 614
                  lui          s2, 219837
                  sltu         s4, s10, s7
                  auipc        s1, 17910
                  or           s1, t6, t2
                  sltiu        a1, gp, -182
                  nop
                  slti         t1, s11, 746
                  sll          t3, t1, a2
                  xori         s7, zero, 677
                  lui          s8, 386361
                  sltu         s9, s3, s10
                  slli         t1, sp, 13
                  xori         s3, t0, -874
                  auipc        a1, 460757
                  srai         a4, t5, 14
                  srai         s11, s10, 12
                  slli         s3, ra, 30
                  nop
                  andi         a4, a7, -1496
                  srl          s7, a6, t0
                  add          a0, s6, a0
                  add          t6, s4, s7
                  slti         t1, a0, -542
                  slti         t1, a1, 1781
                  nop
                  sltiu        t1, s7, -1307
                  srai         sp, s11, 26
                  sub          s3, tp, s6
                  nop
                  lui          t0, 203372
                  slt          ra, s9, t3
                  nop
                  lui          s5, 340763
                  lui          s2, 517968
                  srai         t4, s6, 10
                  slli         s11, sp, 15
                  slt          t5, t5, a7
                  slli         t3, a1, 1
                  slli         t4, zero, 21
                  sll          a1, s0, s5
                  xor          s1, s4, s0
                  srai         t1, s3, 11
                  xori         s4, s3, -600
                  srai         a0, t1, 13
                  slti         a1, tp, -695
                  nop
                  and          a2, s11, t4
                  slli         gp, s4, 21
                  xor          t0, zero, s11
                  addi         s9, a4, -1680
                  or           t0, t6, zero
                  auipc        s9, 10062
                  sltu         s4, s10, s2
                  or           s10, s11, s10
                  andi         t4, a3, -302
                  sltu         t1, t2, ra
                  srli         s2, tp, 0
                  srai         s2, s3, 29
                  ori          t6, gp, -1416
                  srai         a5, s2, 25
                  srl          t5, s6, t4
                  sll          s8, a2, sp
                  sra          tp, gp, ra
                  sub          a0, s0, s4
                  lui          t6, 1018544
                  addi         a3, a3, -1234
                  nop
                  sltu         a4, s2, gp
                  sltiu        a3, a2, -1814
                  or           s2, gp, s0
                  slti         a4, s5, -683
                  xor          a5, a4, t6
                  sltu         a5, ra, gp
                  or           t3, t6, s6
                  slt          s9, a6, sp
                  srai         t0, gp, 28
                  sll          a3, s0, sp
                  srai         s10, a4, 14
                  slti         s3, a1, 1962
                  ori          s5, s5, -1088
                  srl          s4, t5, s7
                  slli         tp, s4, 0
                  add          s3, s11, t3
                  sub          ra, t6, s11
                  and          s5, zero, zero
                  xor          a6, s2, t3
                  andi         s7, a1, 1889
                  srli         sp, a6, 9
                  sub          ra, tp, s0
                  xori         s8, a0, 980
                  slti         s9, a6, 1282
                  slli         ra, a5, 22
                  ori          a5, t2, 119
                  xori         s7, s6, 131
                  and          t6, t2, gp
                  add          a3, a4, zero
                  sra          s1, s2, gp
                  slli         t1, a3, 20
                  nop
                  and          a2, a0, s2
                  or           s2, t2, a7
                  xori         t4, s6, -856
                  slt          s4, a3, t5
                  slti         s7, s3, 802
                  sll          s1, t1, t3
                  sub          s7, s0, s8
                  slli         s7, s7, 24
                  slli         a2, s2, 9
                  add          a3, s3, s5
                  sltu         s8, s3, t0
                  add          t5, a2, t1
                  nop
                  lui          s0, 127770
                  sltu         s10, a2, a1
                  and          s5, gp, t6
                  sll          t6, s3, s4
                  or           a6, s9, s11
                  sub          t6, s8, t5
                  xor          zero, s10, ra
                  sltu         gp, t5, s1
                  xori         t0, s7, -1596
                  ori          a6, s5, 964
                  slli         t0, a1, 25
                  slti         t0, t2, 533
                  slti         a2, a5, 178
                  slti         zero, s10, -787
                  srli         a4, s0, 27
                  lui          a1, 110968
                  sll          ra, t4, t4
                  slli         ra, a4, 13
                  andi         s4, s9, 103
                  and          s7, t4, s10
                  and          sp, s4, s8
                  xori         s9, ra, -1506
                  slti         s1, s2, -1579
                  sltu         s4, s10, t5
                  andi         s2, a1, -1705
                  sll          s2, s7, ra
                  sltiu        s10, tp, 978
                  add          s11, t1, s2
                  lui          zero, 54988
                  nop
                  sll          t1, t3, s1
                  auipc        t1, 85351
                  or           a2, s0, t0
                  or           s1, sp, s10
                  nop
                  slt          s0, s4, s3
                  srli         s3, s5, 19
                  xori         s2, gp, -933
                  xori         a4, s6, -1725
                  srai         a6, s6, 28
                  andi         t1, s2, -1375
                  srai         ra, a2, 29
                  xori         s7, sp, 398
                  or           t0, a1, s7
                  or           s1, ra, zero
                  slli         t6, a5, 24
                  sra          ra, a5, t0
                  and          a0, s9, s2
                  srli         s5, s10, 30
                  srai         s10, t6, 9
                  srl          a2, s10, s3
                  auipc        s9, 831872
                  andi         s1, gp, 1974
                  slli         tp, s8, 3
                  srli         a2, t5, 1
                  sltiu        a6, t6, -771
                  lui          s9, 647184
                  srai         s11, s8, 14
                  or           s1, s7, a1
                  ori          s2, s0, 33
                  lui          t0, 1026695
                  slt          s9, t0, t2
                  srai         s2, s3, 1
                  sub          a0, gp, ra
                  add          a6, a1, a5
                  slt          a2, a2, s11
                  sltiu        s4, t0, -1965
                  nop
                  srl          a3, s7, s9
                  xor          gp, ra, t4
                  slt          t0, t0, t3
                  sll          gp, a0, s3
                  andi         s4, s2, -543
                  auipc        t0, 651691
                  srli         gp, s8, 2
                  xori         t6, a1, 1444
                  slti         s8, s6, 756
                  slli         t1, a2, 20
                  and          sp, s2, s2
                  add          s3, s5, t6
                  sll          a6, a3, t4
                  slli         s11, zero, 18
                  srai         gp, a7, 18
                  slli         s2, a5, 2
                  srl          a5, s7, t0
                  ori          t3, s10, 1303
                  slli         t1, s5, 23
                  andi         s9, a3, -523
                  xori         tp, s3, 1276
                  sll          s5, gp, a3
                  slli         a0, s0, 19
                  add          a1, s8, s6
                  ori          s1, t1, 899
                  srl          t6, a0, t6
                  andi         a0, t1, -818
                  srai         a2, s0, 14
                  srl          a2, s3, s3
                  slt          s10, t0, t4
                  slt          s1, s0, s0
                  and          a1, t4, s3
                  slt          gp, s7, s5
                  and          t0, s6, s3
                  sub          gp, tp, a2
                  srai         t1, s8, 14
                  srai         s5, a0, 29
                  srai         s0, s6, 26
                  sra          t1, a4, a4
                  andi         a6, s0, -1967
                  andi         s0, t2, 380
                  addi         gp, s3, -1777
                  xori         a5, a6, 1009
                  xor          a4, s8, a7
                  xori         a5, a0, 241
                  xori         s5, s1, -149
                  sltu         t4, gp, s1
                  add          a6, s4, ra
                  ori          a3, s4, 689
                  srai         s10, s6, 15
                  sltu         tp, t1, a6
                  or           gp, a1, s9
                  addi         s9, t5, 1376
                  xori         t6, s8, -573
                  lui          a0, 913956
                  addi         s4, a3, -1184
                  add          tp, s11, s1
                  slli         t6, s7, 13
                  or           t0, t1, s10
                  add          sp, s8, t3
                  sltu         t0, a0, a4
                  sra          ra, t0, s4
                  addi         s1, s6, -109
                  ori          a4, s5, 601
                  auipc        zero, 472076
                  slli         s9, t3, 13
                  andi         a5, a6, 4
                  addi         t6, a4, -1372
                  slt          t1, s8, t1
                  xor          a3, gp, s9
                  slli         t0, a3, 9
                  slli         s1, sp, 23
                  auipc        s3, 454178
                  auipc        a1, 421712
                  sltu         a2, s2, ra
                  slt          s11, s0, zero
                  sub          t4, s6, t2
                  addi         t5, t4, -318
                  srli         s3, zero, 6
                  lui          s11, 546072
                  auipc        t4, 730534
                  nop
                  sra          tp, s4, a2
                  sltu         gp, zero, s5
                  auipc        sp, 747791
                  srai         s8, tp, 24
                  addi         ra, s3, -690
                  sub          s11, s7, a2
                  nop
                  and          a5, a5, s11
                  ori          t6, s2, -1042
                  add          t3, s11, t3
                  and          a3, a6, s6
                  auipc        t5, 208193
                  xori         a5, t4, -340
                  srli         t0, zero, 18
                  and          s3, s2, a7
                  slti         t1, a0, 322
                  slli         a1, t3, 2
                  xor          s8, s0, s3
                  or           t6, s5, a4
                  sltiu        s5, t3, 1482
                  xori         a3, t3, -244
                  addi         s2, t4, -871
                  sltu         t1, s5, t4
                  slli         gp, t1, 4
                  or           ra, s11, a2
                  srl          s2, t1, gp
                  srai         t4, zero, 25
                  srl          a5, t5, a4
                  auipc        s5, 879019
                  sub          ra, s2, a1
                  srl          s9, a4, zero
                  srl          gp, t1, s1
                  slli         t1, a4, 5
                  nop
                  sub          s7, a1, s8
                  srai         a5, t6, 27
                  srai         tp, s11, 5
                  sub          s8, t0, s9
                  xori         s11, t0, -201
                  andi         a0, s9, 913
                  slli         gp, a1, 25
                  sltiu        t3, t6, 1249
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           s11, 0x2b2057e9
                  li           s1, 0xffffffff
                  li           s4, 0x80000000
                  li           s7, 0x0
                  li           s2, 0x0
                  li           t6, 0x0
                  li           s10, 0x0
                  li           a6, 0x0
                  li           s8, 0x0
                  lui          s8, 298231
                  add          s2, s3, s8
                  nop
                  lui          s2, 180772
                  lui          s8, 187692
                  add          s1, s10, s3
                  nop
                  add          s8, s1, s7
                  add          s4, s11, s7
                  lui          s3, 417266
                  nop
                  auipc        s8, 972943
                  addi         a6, s1, 837
                  addi         s3, s4, 1778
                  sub          s11, s4, t6
                  auipc        s1, 559068
                  addi         s3, s4, -851
                  nop
                  sub          s7, s7, s11
                  sub          s8, s1, s1
                  add          t6, s8, s3
                  sub          s1, s1, s8
                  add          s7, t6, a6 #end riscv_int_numeric_corner_stream_29
                  ori          t0, s2, -1968
                  andi         s0, s10, 1482
                  xori         gp, a1, -1294
                  lui          s9, 586927
                  slli         s7, t2, 23
                  and          a6, t5, sp
                  slt          t5, s9, t1
                  sra          t4, t3, t2
                  ori          s0, s9, 1365
                  slt          t6, s10, s2
                  slli         s3, t2, 0
                  slt          s10, tp, sp
                  lui          s10, 266802
                  srai         s3, t5, 4
                  slli         t1, a5, 3
                  ori          tp, a4, 1100
                  sltiu        s3, a3, 678
                  or           zero, a1, s5
                  add          s2, s0, s6
                  sltiu        s5, s8, 1868
                  sra          t1, tp, a4
                  xori         t5, ra, 1080
                  lui          a3, 1032973
                  slli         gp, s8, 29
                  sub          t3, s1, s5
                  sra          sp, s4, s4
                  andi         ra, tp, 59
                  ori          a0, a7, -1621
                  slli         ra, tp, 29
                  sub          a6, t0, sp
                  srli         t6, t6, 13
                  xori         a6, a1, 367
                  xori         s0, sp, -1350
                  andi         t1, s2, 1034
                  slli         a1, t5, 13
                  nop
                  slt          a3, s3, s5
                  sltiu        s3, s11, 1524
                  ori          s7, ra, -498
                  sub          s7, tp, a4
                  srl          t0, s9, s6
                  xori         s3, gp, 1361
                  slt          tp, t5, a0
                  sub          t0, s1, s0
                  slt          s1, s7, s7
                  sll          gp, zero, a5
                  add          t5, ra, t4
                  slli         s2, s11, 6
                  slli         s1, s10, 1
                  ori          t0, a2, 75
                  xori         tp, t1, -544
                  andi         a2, a3, 1073
                  slti         ra, s2, -189
                  add          s8, s1, t5
                  srl          a6, t5, gp
                  sra          t3, zero, t5
                  add          s1, s8, s4
                  and          a4, t2, a2
                  lui          t1, 108508
                  and          ra, s9, gp
                  sll          tp, a7, s8
                  sltiu        a5, t5, -1276
                  auipc        a3, 798464
                  sltu         t0, s4, s6
                  or           sp, s10, a0
                  xor          s2, tp, s7
                  auipc        t6, 846115
                  srl          s8, a3, s6
                  slti         a3, t0, 776
                  srai         s10, s5, 0
                  addi         s5, s7, -1826
                  srl          s2, s0, s10
                  xor          a2, a1, s9
                  slli         s10, s11, 10
                  slti         a4, a3, 492
                  nop
                  lui          a4, 409084
                  add          s2, ra, t0
                  slli         t5, s10, 12
                  sll          t5, t6, a7
                  sltu         t1, s8, s8
                  nop
                  and          s1, a4, a2
                  slt          t5, s7, s4
                  andi         a6, t5, 470
                  or           tp, s5, t6
                  ori          a5, s3, 1301
                  xori         t1, a4, 173
                  srai         t4, s3, 29
                  addi         s11, t1, 1836
                  add          sp, a7, a3
                  xori         a3, a1, -2033
                  slli         a0, s0, 1
                  lui          a2, 1041552
                  and          t4, s3, s3
                  nop
                  auipc        t6, 719052
                  srl          a5, s9, s7
                  ori          a0, s1, -1213
                  xor          ra, a6, a1
                  sra          s7, a5, a4
                  li           t6, 0x2c7bc3cb #start riscv_int_numeric_corner_stream_16
                  li           ra, 0xfb82c4db
                  li           a2, 0xffffffff
                  li           s11, 0xf59d40a0
                  li           t3, 0xffffffff
                  li           s1, 0x75a069a2
                  li           s2, 0xffffffff
                  li           s7, 0x0
                  li           s3, 0x0
                  li           s0, 0x0
                  nop
                  sub          s11, s2, a2
                  add          s1, s2, s2
                  sub          s11, s1, s1
                  nop
                  add          s2, t3, s1
                  add          a2, s0, s11
                  sub          t6, s7, s1
                  lui          s11, 724294
                  lui          a2, 604456
                  auipc        s2, 797530
                  addi         s1, s0, -708
                  sub          t6, a2, s0
                  nop
                  addi         s0, ra, -18
                  auipc        a2, 564291
                  nop
                  nop
                  nop
                  auipc        s0, 179296
                  addi         s0, s11, -685
                  sub          s1, s2, s0
                  nop
                  nop
                  addi         ra, ra, 1327 #end riscv_int_numeric_corner_stream_16
                  slt          s2, a2, s0
                  addi         ra, ra, 1210
                  ori          t1, a2, 804
                  sltiu        s7, s8, -5
                  slt          a2, s10, s6
                  xori         a4, a7, 1679
                  sll          s10, t0, s3
                  ori          t1, s4, 1571
                  and          t5, s3, s5
                  sll          zero, s7, sp
                  xori         t4, s1, -967
                  srl          s7, a2, a1
                  srai         zero, zero, 25
                  or           s5, s1, s10
                  sltu         ra, s7, a3
                  ori          sp, a7, 1191
                  or           t3, a2, gp
                  add          s9, t5, t4
                  xori         s0, s9, 281
                  and          ra, zero, s7
                  lui          s5, 113438
                  xor          ra, t5, s11
                  srli         s1, t6, 10
                  sub          zero, a0, a4
                  xor          t0, a0, t3
                  slti         t6, s4, -170
                  nop
                  nop
                  xori         a0, s9, 264
                  sub          s11, a4, s4
                  xor          a0, ra, s10
                  srai         s0, s3, 31
                  slti         s7, t6, 1236
                  andi         t1, a6, -1425
                  lui          a5, 745737
                  sltu         s4, s10, s6
                  ori          sp, a0, 1499
                  slli         s11, a1, 22
                  slli         t1, s2, 1
                  slti         s2, a3, 1727
                  slli         s3, s6, 5
                  and          a6, s0, t3
                  and          a3, a0, a5
                  sll          ra, t1, t1
                  slt          s8, s3, tp
                  andi         zero, a4, 1367
                  sll          t4, s8, s1
                  srli         ra, s4, 31
                  sltiu        zero, t5, 846
                  addi         s10, a1, -306
                  sra          t0, t2, s4
                  sra          s8, a2, t1
                  srl          a4, s9, a3
                  slti         a2, a5, -1931
                  sltu         a4, a1, t5
                  srl          t3, s9, tp
                  slt          gp, t2, s11
                  auipc        s11, 946613
                  srai         sp, s11, 0
                  ori          a1, t6, 250
                  srai         s11, a1, 4
                  add          a4, s11, t4
                  sltiu        s0, s0, 236
                  nop
                  xor          s4, t4, t4
                  srl          sp, zero, a4
                  srai         s7, a0, 15
                  slti         s11, a4, 1126
                  ori          a2, s6, -1456
                  addi         a6, s8, 44
                  addi         ra, a3, -1733
                  slti         t3, a1, 150
                  nop
                  sll          a0, zero, s11
                  srai         t6, t6, 0
                  add          a4, s0, t4
                  andi         t6, t1, 1125
                  xori         a6, s6, -1211
                  srli         sp, s2, 12
                  nop
                  slti         s0, s6, -1048
                  srl          a0, gp, s8
                  slt          a6, s5, s11
                  sltiu        s0, s11, -1566
                  sra          s0, sp, s9
                  slt          tp, gp, s1
                  andi         ra, s2, -413
                  nop
                  ori          s8, ra, 1959
                  sub          s9, t5, s1
                  lui          ra, 22271
                  sltiu        t0, gp, 1680
                  sra          t6, t5, s4
                  add          t4, s4, a7
                  slli         s8, s5, 0
                  slt          t4, s7, s4
                  xori         tp, a4, -483
                  slt          ra, s6, s5
                  add          t6, a6, s7
                  sltiu        s9, a7, 746
                  srl          a4, s0, a5
                  sltiu        a0, s6, 349
                  srl          a5, s8, s5
                  srai         s1, s0, 9
                  nop
                  sltu         s5, a3, t1
                  xor          ra, s7, t1
                  nop
                  slti         t6, s3, -1889
                  srli         a3, s1, 20
                  sra          s3, gp, s11
                  and          gp, t2, s4
                  nop
                  nop
                  auipc        s9, 887599
                  nop
                  srai         sp, tp, 16
                  sltu         t4, s11, a4
                  slli         sp, t0, 22
                  and          tp, s9, gp
                  sltu         s2, s1, t4
                  sltu         a1, t0, ra
                  sltiu        s7, s7, -341
                  xor          s10, s2, sp
                  lui          tp, 522984
                  lui          s9, 456891
                  slli         t4, s6, 28
                  srai         a5, s8, 21
                  xor          gp, s1, a5
                  andi         s1, s8, 1233
                  and          a5, sp, t0
                  slli         s9, t5, 2
                  slt          t5, s10, t1
                  srli         a2, a7, 26
                  slt          a6, s4, ra
                  srli         s5, t4, 10
                  sltiu        s10, a1, -1164
                  addi         a2, t1, 956
                  xori         a1, t5, 1700
                  srai         t5, s6, 23
                  srai         s0, s0, 0
                  xori         a6, s2, -1883
                  add          a1, t3, s0
                  srai         tp, s10, 16
                  srli         gp, s6, 17
                  sltiu        sp, s8, 2036
                  sub          s2, s0, s7
                  xor          t5, t0, s8
                  sltiu        t3, a2, 430
                  auipc        ra, 285869
                  xor          zero, a3, s11
                  slli         s9, a4, 5
                  srli         a0, t2, 28
                  sltiu        s3, a4, -1434
                  andi         ra, s10, 1567
                  add          s7, t1, t1
                  nop
                  addi         t3, s4, -907
                  slt          a0, a1, t0
                  srai         a5, s1, 2
                  ori          t6, s8, -402
                  srl          t5, s0, s4
                  srl          s9, t1, s10
                  xor          s2, a4, s2
                  sltu         gp, a2, t6
                  sub          s11, s8, s11
                  xor          s7, s1, a0
                  sltu         t0, s7, s4
                  sra          a0, a6, s10
                  slt          zero, a6, s5
                  andi         a2, t0, -1459
                  slti         s0, s7, 1512
                  sltu         s3, a5, s3
                  slli         ra, s4, 21
                  sub          gp, s0, s7
                  sltiu        s10, s1, 1087
                  sltiu        t4, zero, -740
                  or           zero, zero, t2
                  sltiu        a0, s5, -1530
                  add          s1, s3, s10
                  srl          t0, s9, a5
                  nop
                  slti         a0, a3, -464
                  slli         a0, a1, 8
                  andi         s5, a4, -1500
                  or           s1, s10, s0
                  srai         t6, t6, 9
                  xori         a4, t4, -236
                  sra          s7, tp, t4
                  and          s0, s6, a4
                  sltiu        a3, s6, -1076
                  sra          t1, s11, a1
                  srli         t4, t1, 22
                  sra          a3, t5, s10
                  srli         t5, a4, 9
                  slli         a2, t2, 14
                  sltu         s1, zero, sp
                  slli         a5, a0, 26
                  sra          t5, gp, a5
                  xor          t6, zero, a0
                  slli         s7, s9, 24
                  xori         a0, tp, 939
                  xor          s1, t3, a5
                  sub          ra, a3, a3
                  slli         a4, a5, 18
                  srli         t5, zero, 6
                  lui          sp, 52047
                  slti         a0, t5, 1698
                  ori          s9, zero, -557
                  nop
                  srl          t5, a0, ra
                  sll          s3, s9, s4
                  sll          t3, a7, a5
                  srai         t5, s7, 13
                  sra          t4, tp, t4
                  add          t1, tp, tp
                  srl          s0, a7, a0
                  sub          s10, s2, zero
                  xor          s4, a7, a5
                  ori          s11, a5, 706
                  and          zero, t2, t0
                  lui          t6, 381315
                  sll          a2, sp, t3
                  sra          s7, t2, t4
                  srai         s7, s9, 19
                  lui          t5, 744237
                  slli         sp, t6, 28
                  sub          t1, s10, a4
                  slt          tp, s0, t2
                  ori          a6, t4, 163
                  sltiu        s9, zero, -274
                  srai         a1, sp, 3
                  sra          ra, zero, tp
                  xor          a6, a6, a5
                  lui          a4, 2084
                  or           s11, s4, s3
                  or           s10, s11, s9
                  srli         s0, s11, 11
                  sltiu        t4, s0, -2031
                  slli         a6, s10, 31
                  srli         s5, s0, 27
                  sub          s2, gp, t5
                  andi         s3, s4, -1248
                  srli         a2, a3, 5
                  addi         a6, a3, 1799
                  sltu         ra, s6, zero
                  srl          a4, sp, a6
                  andi         t1, t5, -1766
                  sltu         s10, a3, s10
                  sub          s8, t4, sp
                  or           a5, a2, a6
                  srli         s10, t4, 20
                  add          s2, t4, t5
                  lui          s7, 330261
                  slli         gp, zero, 31
                  slt          a1, ra, gp
                  sltiu        s8, s10, -305
                  sltu         s11, a5, a3
                  srl          t3, a3, t6
                  srl          a5, t4, s6
                  nop
                  add          zero, ra, a6
                  xori         t6, s8, -1578
                  or           t0, s10, s3
                  slti         s2, sp, -916
                  srl          a0, a0, s4
                  slt          s9, s1, t1
                  nop
                  xor          zero, s4, s9
                  srli         a1, s4, 1
                  nop
                  or           ra, a2, t0
                  addi         a5, s6, -1152
                  slt          t1, s8, a6
                  or           t0, a2, zero
                  or           s0, s11, t6
                  slt          s8, a4, sp
                  srli         s8, t0, 11
                  slti         s4, s4, -554
                  sltu         s11, a7, s2
                  sltiu        t0, t5, -115
                  sub          sp, s6, s4
                  add          ra, t1, s9
                  xori         t5, t4, 1367
                  addi         s2, t4, -1424
                  sltiu        a1, a2, -1140
                  slli         t6, s7, 25
                  andi         s2, t2, -1534
                  sltiu        t3, s11, -1573
                  xor          a0, a3, t2
                  sltu         a5, t5, s7
                  sltiu        a3, t1, 927
                  or           s7, t6, s9
                  slti         s5, t0, 1576
                  slti         a5, a5, -1750
                  sltu         s4, t0, zero
                  auipc        s3, 234545
                  srl          a4, t6, s6
                  slt          s0, a3, s8
                  ori          zero, zero, -1184
                  auipc        a3, 920224
                  xor          a5, t4, s6
                  addi         t3, s0, -1843
                  or           t5, s0, s11
                  slti         a2, gp, 484
                  sltu         s10, t1, gp
                  lui          a0, 633008
                  add          t0, s5, s2
                  addi         sp, s1, 1913
                  xori         s4, sp, 1601
                  andi         s5, a7, 1865
                  addi         s5, tp, -1047
                  andi         t3, t5, 1535
                  xor          gp, s4, a7
                  andi         s5, tp, 1252
                  xor          tp, t4, s3
                  slt          t0, a3, s11
                  slti         a4, s0, 587
                  xor          a6, s10, s10
                  slti         a5, sp, 1723
                  and          gp, t4, s3
                  and          a6, t6, s0
                  srl          a0, a7, s4
                  xor          s8, ra, s7
                  srl          s3, a5, s10
                  sra          s9, s3, sp
                  sltiu        t3, t0, -1139
                  sltu         ra, t2, s2
                  srli         t1, t5, 13
                  sub          t4, s5, a1
                  nop
                  sltu         s2, t3, s5
                  sll          t3, zero, a2
                  auipc        t1, 203733
                  sltiu        t0, s7, 1512
                  slti         t3, s3, 816
                  srli         t4, s6, 25
                  xor          s1, s1, t4
                  xori         a3, s6, -1510
                  slti         s5, s0, 671
                  xor          s2, a6, t5
                  slti         a5, t6, -495
                  slt          s0, a3, s5
                  xor          s3, a3, t2
                  xor          tp, s4, s5
                  or           sp, s10, s9
                  add          a5, a1, a4
                  srl          t0, tp, a3
                  lui          t1, 1014496
                  andi         t1, t3, -386
                  or           s8, s1, t2
                  addi         sp, s11, 1861
                  xori         gp, t0, 2036
                  ori          s7, s9, -1243
                  sltu         s9, a4, s3
                  add          s9, s2, s3
                  slt          t3, a1, s8
                  add          t1, s10, t1
                  add          gp, s4, a3
                  xor          a4, a0, sp
                  srai         a6, s2, 22
                  srli         a2, zero, 7
                  xor          s8, t3, t1
                  nop
                  andi         t1, s7, -255
                  sltu         a4, t2, a7
                  sub          t0, sp, s5
                  auipc        s2, 631878
                  or           a6, t6, t2
                  srai         t1, t5, 11
                  srli         t1, a4, 14
                  srl          s7, s0, tp
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           t6, 0xc04c1cd5
                  li           s5, 0xffffffff
                  li           t0, 0x80000000
                  li           t1, 0xffffffff
                  li           s9, 0xde2bb96
                  li           s11, 0xffffffff
                  li           t3, 0x80000000
                  li           tp, 0x80000000
                  li           a0, 0x0
                  sub          t1, t0, t6
                  auipc        tp, 895381
                  lui          s5, 847442
                  addi         s9, s5, -1816
                  auipc        s9, 678073
                  auipc        a0, 989859
                  nop
                  sub          a0, t1, t1
                  lui          t0, 835005
                  add          s5, t6, t3
                  nop
                  sub          a0, s5, s9
                  auipc        tp, 1007457
                  auipc        s11, 733484
                  add          t6, s11, s9 #end riscv_int_numeric_corner_stream_32
                  sub          zero, sp, t5
                  auipc        t3, 425825
                  sub          a6, a1, s9
                  xori         gp, s3, 1093
                  sra          s3, t4, s9
                  andi         t0, a0, 852
                  auipc        a1, 819139
                  and          s7, s7, t4
                  ori          s4, zero, 1203
                  auipc        t0, 268125
                  sltiu        s4, gp, 1093
                  add          a4, t1, t2
                  auipc        gp, 24521
                  auipc        t6, 923888
                  slti         s2, a7, 1776
                  addi         t0, s8, 793
                  addi         tp, a0, -400
                  sll          s9, s2, s1
                  sltiu        zero, s10, -1633
                  slt          gp, a6, a2
                  srl          s11, s6, zero
                  add          t1, s5, s0
                  addi         t1, tp, -1040
                  sra          zero, t6, t0
                  sra          a1, a7, t4
                  addi         a6, s9, 1626
                  and          s9, a6, a1
                  or           s2, a2, ra
                  slli         t4, t4, 16
                  sll          t6, a3, a4
                  slti         a4, sp, 391
                  add          s7, t5, a1
                  xor          s8, ra, a2
                  and          a6, gp, t5
                  xor          s8, s6, t5
                  lui          zero, 821399
                  srai         s2, a3, 22
                  slt          a0, a6, s9
                  srai         s1, s5, 9
                  srl          s5, t2, s10
                  sll          s7, s11, t2
                  or           t5, s9, t3
                  srai         a5, a3, 26
                  auipc        s7, 131825
                  sub          s5, t0, s4
                  srai         gp, t1, 28
                  ori          s3, a7, 1995
                  add          t1, s2, t6
                  ori          s5, a5, -375
                  nop
                  sra          s4, ra, t2
                  sra          s10, zero, gp
                  slti         ra, a4, -1697
                  nop
                  addi         t1, a1, -434
                  lui          gp, 249583
                  addi         a3, zero, 957
                  sltiu        s5, tp, 1750
                  nop
                  slti         a0, t3, -1673
                  srli         gp, t1, 22
                  andi         ra, s7, -1338
                  srli         s8, s1, 18
                  slti         t3, a4, 594
                  sltiu        a6, a1, 491
                  slli         a4, ra, 17
                  xor          a3, s2, sp
                  srl          a6, a5, s5
                  sltu         t4, s10, a3
                  add          t3, t6, a2
                  srli         a1, s4, 1
                  lui          s8, 398107
                  srai         s4, a4, 21
                  lui          s7, 241471
                  addi         s2, a3, 532
                  sltiu        a4, t4, 956
                  andi         s2, s11, -824
                  slli         s0, a7, 2
                  xori         s8, t0, -1732
                  slt          a0, s9, t3
                  srli         s10, a7, 13
                  ori          a3, a7, -1484
                  srai         s3, s4, 30
                  sltu         s0, s2, s4
                  auipc        s11, 99421
                  or           s11, s4, t5
                  lui          a1, 975126
                  andi         s11, a4, 1124
                  sub          s5, t3, a2
                  nop
                  sub          zero, t1, t1
                  and          s11, t5, t1
                  add          a2, s0, a5
                  addi         s8, s7, -1911
                  sub          t3, s5, t1
                  addi         a6, s9, -674
                  sltu         s1, t2, t4
                  srli         s3, s5, 19
                  srli         tp, ra, 24
                  lui          a6, 21093
                  sll          a3, s3, s8
                  sub          a0, t0, t1
                  ori          s0, ra, 1901
                  slt          s2, a1, ra
                  xori         sp, s9, -1898
                  sll          t0, s6, s1
                  slti         sp, t3, 1375
                  slli         t5, s9, 4
                  or           a0, t4, t1
                  sltu         s2, s6, s8
                  lui          s3, 771774
                  slti         s3, sp, -1250
                  or           s5, s4, t3
                  slti         tp, s2, -188
                  xor          a0, t3, sp
                  lui          t4, 398618
                  andi         gp, t1, 1731
                  and          s3, tp, zero
                  ori          s2, t1, 1201
                  nop
                  sltu         a5, a4, s10
                  slli         zero, s4, 17
                  xori         ra, s4, 173
                  sltu         t1, t1, t4
                  slti         t5, s7, -986
                  slli         t0, t0, 10
                  srli         t1, t4, 27
                  sub          s0, s10, zero
                  sub          a6, s0, s8
                  srli         s11, s3, 8
                  sll          s10, a7, a2
                  lui          gp, 906149
                  slti         zero, a3, -1999
                  and          t5, s3, ra
                  sltiu        a1, a2, 923
                  srli         t3, a6, 7
                  or           gp, s11, s6
                  srai         gp, t5, 7
                  xor          s10, t3, t2
                  sll          s10, t4, t3
                  and          t3, s9, t0
                  sltiu        s4, s0, -308
                  andi         s4, s8, 388
                  andi         tp, a5, -546
                  srai         s11, s1, 14
                  xor          s11, t3, a1
                  and          a1, s3, s7
                  srai         t6, a2, 5
                  sub          t5, a2, sp
                  sltiu        a1, a0, -546
                  andi         gp, s0, 1831
                  srli         s11, s11, 0
                  srl          a0, s1, s3
                  or           s7, s8, t0
                  slti         s9, s8, -1246
                  srai         t0, a3, 0
                  srl          t0, s9, t0
                  sll          s4, t3, s2
                  srl          t4, s5, t5
                  sra          s7, a0, ra
                  auipc        a0, 982200
                  sub          s10, t3, s7
                  xor          ra, s6, a6
                  slti         a5, a0, 1814
                  and          a1, a4, s10
                  xori         s9, s5, -702
                  sltiu        a2, tp, 1645
                  xori         t3, s5, 1624
                  or           a2, zero, s6
                  ori          s9, t0, -505
                  lui          s7, 608021
                  slti         s7, a6, 744
                  sll          t6, zero, s5
                  ori          t4, sp, -1139
                  srli         s1, s3, 3
                  addi         a0, t6, -1499
                  srai         ra, a7, 21
                  sltu         t1, t1, sp
                  slti         a5, t0, -1478
                  sra          s1, tp, a1
                  lui          t0, 180004
                  andi         a3, gp, -7
                  xor          s7, zero, a6
                  xori         s8, s9, -750
                  xori         a5, s8, -253
                  and          t6, s3, t3
                  sub          a4, gp, s8
                  sra          s1, s7, s2
                  slti         a6, t2, -835
                  addi         s8, a3, -603
                  ori          s10, sp, -699
                  srai         zero, zero, 24
                  slt          s7, s10, s11
                  or           zero, s6, s9
                  auipc        s3, 623814
                  auipc        s10, 898365
                  andi         t6, a5, -1900
                  auipc        t5, 710000
                  xori         a5, s0, -1945
                  xori         a4, t6, -1470
                  andi         t3, ra, -500
                  slti         s0, s3, -992
                  srli         s9, s0, 7
                  sltu         s11, a5, s3
                  add          s9, t6, a4
                  sltiu        s2, zero, -1878
                  srai         a6, zero, 18
                  xor          s0, s5, t0
                  sll          a0, t0, s5
                  add          ra, t4, t2
                  sltiu        tp, t2, -737
                  sll          s0, t0, s0
                  lui          t6, 454901
                  srai         s2, tp, 9
                  or           s4, t1, t1
                  sra          gp, a1, t5
                  add          s3, s7, a4
                  slti         s4, a5, -995
                  andi         s2, a5, -1948
                  xor          tp, s4, t6
                  srli         s3, t3, 24
                  srli         s4, a1, 27
                  addi         sp, tp, -1485
                  lui          t0, 92015
                  srl          s5, tp, s6
                  andi         s0, s7, 515
                  srli         a2, gp, 9
                  slli         s3, s4, 1
                  ori          s7, t1, 1786
                  srli         t6, s11, 25
                  xori         tp, gp, -1286
                  srli         s2, s8, 22
                  ori          t5, s3, -1744
                  xori         a1, t3, -875
                  ori          a6, gp, -704
                  and          t0, a7, tp
                  addi         ra, t5, -427
                  auipc        a4, 269534
                  sltiu        a4, t0, -1282
                  andi         s10, s3, 1539
                  sll          s7, s6, s5
                  srl          t1, zero, a7
                  xori         a6, t0, 243
                  sra          t1, t6, t2
                  add          s3, s10, a0
                  or           s1, a0, t2
                  or           s1, s4, sp
                  nop
                  srai         a2, a7, 7
                  auipc        t4, 200476
                  or           a1, t2, s0
                  slli         t3, s1, 23
                  xori         s7, s2, -659
                  xor          a5, a2, s4
                  slli         ra, s1, 22
                  add          a0, t2, gp
                  ori          s5, a3, -1186
                  srli         s8, a6, 16
                  xori         s8, s1, 1371
                  and          t1, sp, t3
                  slti         s2, s6, -1030
                  sra          s11, t2, s5
                  ori          a0, a2, -967
                  sll          a1, a2, sp
                  xor          zero, a6, t0
                  auipc        t1, 675978
                  nop
                  and          s10, sp, s3
                  srli         s9, t3, 27
                  ori          a0, a7, -1692
                  xor          t4, t5, a6
                  slt          t1, a4, s11
                  sub          a1, a6, s5
                  sub          s4, s11, a0
                  srai         sp, s8, 25
                  andi         a2, a2, 478
                  sra          s5, gp, s3
                  add          s5, t3, t3
                  sub          a4, a0, a7
                  xor          a2, s3, a5
                  sltu         s9, gp, s10
                  auipc        s5, 1004240
                  lui          zero, 921709
                  srai         a0, t3, 21
                  auipc        s4, 642265
                  sub          a2, a5, t6
                  auipc        s9, 799688
                  andi         s2, s2, 554
                  slt          tp, s10, t0
                  slli         s0, a6, 2
                  sra          t0, tp, sp
                  sub          s3, s10, tp
                  slli         gp, s7, 15
                  xor          t5, s9, a0
                  srli         t6, gp, 29
                  sltu         s8, s8, sp
                  sltu         t6, s6, a0
                  sra          a2, s6, tp
                  andi         sp, t1, 1352
                  or           a4, a6, tp
                  or           tp, s11, gp
                  srl          a0, a5, t4
                  auipc        s7, 68020
                  and          sp, t2, t3
                  slli         gp, sp, 10
                  andi         t4, gp, -1035
                  add          zero, s5, sp
                  sra          ra, s8, a6
                  sra          tp, a6, t1
                  add          s10, a5, s11
                  ori          s1, a3, -236
                  sra          tp, a3, s1
                  lui          s5, 495606
                  ori          a1, a6, -1714
                  slti         a6, s2, -1220
                  srl          s2, s2, t5
                  addi         gp, tp, 1472
                  andi         tp, t3, 999
                  add          zero, s11, s11
                  slti         s10, t2, -754
                  andi         t0, a0, 479
                  or           zero, sp, s11
                  slt          a0, s8, a5
                  xor          tp, s2, sp
                  xor          gp, s0, a0
                  andi         s7, t3, -100
                  lui          s9, 812412
                  and          ra, s11, a7
                  nop
                  sll          ra, t1, t4
                  slti         t3, tp, 1022
                  and          a6, t6, s11
                  sltiu        s7, sp, 1925
                  nop
                  sltiu        gp, a3, 1531
                  slli         t1, t1, 5
                  sll          s4, ra, s2
                  sra          tp, a2, s2
                  sltu         s3, a1, s0
                  sltiu        t4, t0, -1152
                  nop
                  sub          s1, s1, s9
                  ori          t1, t1, 400
                  ori          a6, a4, 1194
                  addi         t5, s4, 46
                  nop
                  slli         a4, a1, 0
                  or           t3, a7, ra
                  srl          s3, t3, s3
                  addi         s0, a7, -834
                  slti         t1, ra, -111
                  sll          t1, t1, a1
                  nop
                  andi         a4, s9, -861
                  srl          t6, t4, t1
                  and          s11, a3, t1
                  srai         s3, s4, 1
                  slti         t5, s11, 846
                  nop
                  and          a3, s0, a2
                  auipc        s4, 182061
                  xori         t0, a0, 1016
                  srai         t6, t1, 30
                  lui          s3, 615198
                  auipc        a4, 49426
                  slt          s2, t6, s0
                  and          s1, ra, ra
                  sltiu        s1, s7, -191
                  or           a0, a0, s7
                  srli         a3, a3, 6
                  slti         t4, zero, -277
                  sltu         a1, t5, a3
                  slt          s5, a2, s7
                  and          s11, t5, t5
                  slti         t5, ra, -984
                  lui          t0, 182187
                  nop
                  srl          a0, t1, zero
                  xor          a2, s4, a7
                  xori         s5, s5, 28
                  lui          a5, 520235
                  or           s10, a3, a2
                  nop
                  nop
                  sltu         t4, t4, s3
                  lui          gp, 800702
                  sll          s1, a6, zero
                  slt          s1, a3, a3
                  sra          a3, t2, a0
                  auipc        s9, 33818
                  xor          s2, s2, gp
                  lui          a1, 53309
                  add          s0, t5, a1
                  andi         a1, a5, 1489
                  nop
                  sltu         a4, s1, s1
                  slt          s4, a2, a2
                  andi         s1, s8, -1500
                  sltiu        a6, a3, 997
                  lui          t6, 464833
                  srli         a2, a2, 24
                  sltu         t1, t3, s4
                  xor          s7, gp, a5
                  sltiu        s2, a2, -196
                  srli         ra, s9, 2
                  slti         tp, tp, 1542
                  xori         ra, a0, -479
                  slt          a0, ra, s2
                  slt          ra, s7, t4
                  addi         s8, a3, -809
                  or           s7, tp, s0
                  and          s9, s2, s8
                  xori         t1, a1, 1593
                  andi         a1, t0, 1602
                  xor          gp, tp, s11
                  lui          a6, 228995
                  or           s4, s8, s3
                  add          t1, s6, gp
                  xori         s11, s11, -37
                  srai         s2, s9, 29
                  and          s9, t2, s2
                  xor          s3, s1, s6
                  and          s0, s0, gp
                  andi         a2, a2, -1131
                  sltiu        a1, s8, 1119
                  sra          a5, s2, a3
                  lui          zero, 211225
                  or           t5, s9, a5
                  sltu         ra, s2, a1
                  sltu         t5, a7, s0
                  auipc        s4, 73706
                  andi         gp, a3, 1117
                  sltu         s0, t0, s6
                  slli         s10, t1, 8
                  slti         ra, t4, 1173
                  or           t4, sp, t5
                  sra          s7, s8, t0
                  andi         s0, zero, 1191
                  slti         s5, ra, 445
                  srli         s8, s5, 4
                  slt          a2, s4, s6
                  nop
                  srl          s5, a7, s10
                  xor          t5, a3, s8
                  srai         t5, s1, 16
                  srai         gp, a0, 14
                  sltu         s9, t3, zero
                  add          s8, s7, s11
                  srl          s11, t6, s11
                  sltu         a6, s9, s4
                  and          a3, s10, s9
                  srai         t5, s3, 10
                  sra          t3, s8, s4
                  and          a1, a2, tp
                  xori         s0, a6, 79
                  srl          s3, tp, ra
                  ori          a6, s4, -1968
                  slt          tp, s8, t3
                  and          s8, s7, gp
                  sltu         s10, a1, s5
                  sltiu        a2, a7, 2025
                  sltu         s11, s2, t4
                  or           s7, s9, t5
                  sltiu        s4, s3, -747
                  and          t3, s9, t2
                  sub          s4, s2, s8
                  sra          s5, s11, s8
                  sub          a1, a0, s7
                  nop
                  andi         sp, s8, -21
                  ori          a3, ra, -1455
                  addi         a0, gp, -121
                  or           s9, a7, t4
                  xor          s7, s4, s8
                  srl          gp, s2, s7
                  srli         s11, s6, 18
                  sll          a4, gp, s6
                  sltiu        tp, s10, -502
                  lui          a1, 593779
                  addi         a2, t6, -880
                  srai         t5, t4, 27
                  sltu         s9, t3, s0
                  slti         ra, t3, 1221
                  sub          a0, s5, a1
                  xor          a5, gp, s11
                  srai         s7, a0, 18
                  ori          zero, t1, -430
                  add          ra, t0, t5
                  ori          a1, a4, 186
                  and          a5, s10, s9
                  add          t0, a4, t3
                  srl          s11, t4, s5
                  auipc        s0, 879553
                  andi         t5, sp, 709
                  slt          t1, s5, t5
                  xori         t4, t1, -585
                  srl          a6, a5, a3
                  and          t0, s1, s9
                  addi         a4, ra, -1026
                  and          a0, t4, a7
                  or           s1, t0, s6
                  andi         s1, ra, 102
                  andi         s3, a5, 1600
                  ori          gp, s6, 803
                  xori         a2, a7, 1064
                  or           t6, a5, s0
                  slt          zero, t2, tp
                  slti         s1, s2, -2027
                  lui          zero, 976414
                  or           gp, a6, s8
                  slli         s1, t0, 5
                  sra          s1, s4, s8
                  or           ra, gp, s2
                  la x22, test_done
                  jalr x0, x22, 0
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
mmode_intr_vector_1:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x7, x7, -4
                  sw  x17, (x7)
                  add x17, x7, zero
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x7, x17, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x12, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x12, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x12, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x12, x10, ecall_handler
                  li x10, 0x1
                  beq x12, x10, instr_fault_handler
                  li x10, 0x5
                  beq x12, x10, load_fault_handler
                  li x10, 0x7
                  beq x12, x10, store_fault_handler
                  li x10, 0xc
                  beq x12, x10, pt_fault_handler
                  li x10, 0xd
                  beq x12, x10, pt_fault_handler
                  li x10, 0xf
                  beq x12, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
                  mret

load_fault_handler:
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
                  mret

store_fault_handler:
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x17, x7, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  add x7, x17, zero
                  lw  x17, (x7)
                  addi x7, x7, 4
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
