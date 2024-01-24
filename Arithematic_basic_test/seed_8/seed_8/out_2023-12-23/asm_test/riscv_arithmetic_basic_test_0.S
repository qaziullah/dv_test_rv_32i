.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  li x7, 0x0
                  csrw 0x304, x7 # MIE
                  mret
init:             
                  li x0, 0x95c9e03b
                  li x1, 0x93ff9e37
                  li x2, 0x70f585f1
                  li x3, 0xf2e93105
                  li x4, 0x862a821c
                  li x5, 0x979cf43f
                  li x6, 0x80000000
                  li x7, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x1678373c
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xfd9e1e1b
                  li x16, 0xf163da62
                  li x17, 0x80000000
                  li x18, 0xf40de528
                  li x19, 0x80a3f211
                  li x20, 0x0
                  li x21, 0x2
                  li x22, 0x8
                  li x23, 0x80000000
                  li x24, 0xf0313640
                  li x26, 0x4
                  li x27, 0xf9c40213
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf3672926
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             li           a5, 0x0 #start riscv_int_numeric_corner_stream_37
                  li           sp, 0x80000000
                  li           s3, 0x4cb24ff4
                  li           ra, 0xffffffff
                  li           s1, 0xffffffff
                  li           t3, 0x31e7f081
                  li           t0, 0xb5955b1e
                  li           s2, 0x42d67355
                  li           s7, 0xbc791605
                  li           a1, 0xffffffff
                  sub          sp, t3, sp
                  auipc        sp, 652259
                  lui          ra, 277223
                  addi         t3, a5, -706
                  nop
                  addi         s7, t3, -1911
                  nop
                  nop
                  addi         s3, sp, -179
                  lui          s7, 465524
                  addi         t3, ra, 844
                  lui          t0, 252895
                  nop
                  sub          t0, t3, s7
                  nop
                  add          s1, s3, t0
                  lui          s2, 693573
                  lui          s2, 978909
                  addi         t3, t0, -1269
                  lui          a1, 219142
                  addi         a5, s3, 1427
                  lui          s1, 680940
                  auipc        a5, 757551
                  sub          t0, s7, a5 #end riscv_int_numeric_corner_stream_37
                  li           t1, 0xc5c0d4f9 #start riscv_int_numeric_corner_stream_11
                  li           a0, 0x0
                  li           t2, 0x80000000
                  li           s7, 0xffffffff
                  li           sp, 0xd88c91c1
                  li           s1, 0x80000000
                  li           s4, 0x80000000
                  li           s10, 0x0
                  li           s6, 0x0
                  li           s8, 0xee7b6a4c
                  sub          s6, sp, t1
                  auipc        sp, 1023825
                  addi         s7, s1, 1161
                  lui          s1, 430521
                  lui          s6, 193392
                  sub          s4, s1, s7
                  nop
                  auipc        a0, 524092
                  lui          s6, 17167
                  sub          t1, s8, s8
                  lui          s4, 302057
                  sub          s7, t1, s7
                  addi         a0, s4, -859
                  addi         s8, t2, 861
                  nop
                  auipc        t2, 252791
                  addi         s7, s10, 1188
                  lui          s1, 96251
                  add          s10, s10, s6
                  nop
                  lui          a0, 919532
                  auipc        sp, 804558
                  lui          a0, 603666
                  nop
                  auipc        s10, 246215
                  add          s8, s1, s1
                  auipc        s7, 625141 #end riscv_int_numeric_corner_stream_11
                  li           a3, 0x106985a0 #start riscv_int_numeric_corner_stream_19
                  li           s2, 0xffffffff
                  li           s11, 0x875d36bc
                  li           a6, 0x2f1f1e8e
                  li           tp, 0x1aec579b
                  li           ra, 0x0
                  li           t1, 0x0
                  li           t0, 0x0
                  li           a7, 0xffffffff
                  li           a1, 0x94cb735d
                  addi         a7, a1, -638
                  add          s11, a7, a1
                  lui          a6, 346451
                  sub          a3, a1, t1
                  auipc        tp, 584333
                  lui          a1, 690511
                  sub          tp, t0, ra
                  nop
                  sub          a6, s2, t1
                  sub          a7, a3, a1
                  add          a6, t0, s11
                  lui          ra, 14872
                  addi         s2, t1, -1466
                  add          a7, a3, tp
                  nop
                  auipc        t1, 566903
                  auipc        s11, 102388
                  addi         s2, s2, -877
                  nop
                  sub          s2, a3, t1
                  sub          tp, a1, tp
                  lui          a3, 565429
                  add          s11, ra, a1
                  add          s11, s2, tp
                  nop
                  addi         a1, s11, 6
                  add          a3, s11, a1
                  add          a6, a1, a3
                  sub          t0, s11, a3 #end riscv_int_numeric_corner_stream_19
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           gp, 0xefee0d5c
                  li           tp, 0x0
                  li           s6, 0x9fc6dd1
                  li           a5, 0xffffffff
                  li           s8, 0x83751720
                  li           t6, 0xffffffff
                  li           s7, 0xffffffff
                  li           t0, 0xffffffff
                  li           a6, 0xffffffff
                  auipc        a5, 303856
                  nop
                  lui          gp, 351526
                  addi         s8, a5, -1637
                  auipc        gp, 625723
                  add          s2, a5, s6
                  nop
                  sub          a5, a5, gp
                  nop
                  addi         s6, a5, -1176
                  auipc        a5, 859865
                  add          a5, s2, s8
                  add          s8, s2, a5
                  sub          s8, t0, tp
                  nop
                  sub          s2, s2, tp
                  nop
                  nop
                  lui          s8, 152236
                  add          gp, t6, tp
                  lui          a5, 905142 #end riscv_int_numeric_corner_stream_8
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           gp, 0xffffffff
                  li           t5, 0x0
                  li           t1, 0x80000000
                  li           s3, 0xffffffff
                  li           t3, 0xffffffff
                  li           a5, 0x80000000
                  li           a4, 0x95728016
                  li           s5, 0xba11d0fd
                  li           tp, 0x0
                  add          t3, gp, tp
                  addi         t5, s3, 413
                  addi         s3, t5, -1991
                  nop
                  add          a5, a4, t3
                  add          s4, t3, t1
                  sub          s5, s3, s4
                  addi         s3, gp, -460
                  lui          t3, 278421
                  nop
                  sub          s3, tp, a5
                  addi         t5, tp, 165
                  nop
                  addi         t1, t3, -189
                  auipc        a5, 915441
                  addi         s3, t5, 282 #end riscv_int_numeric_corner_stream_38
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_26
                  li           t5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s1, 0xffffffff
                  li           a3, 0xffffffff
                  li           tp, 0x0
                  li           s10, 0x80000000
                  li           s7, 0xcb57f53
                  li           t6, 0x0
                  li           t3, 0xffffffff
                  lui          t3, 576726
                  add          a7, tp, t6
                  nop
                  add          a7, s1, t5
                  auipc        t3, 378080
                  sub          s1, s1, s10
                  nop
                  auipc        a7, 544811
                  addi         a3, tp, 1090
                  add          tp, a0, a3
                  nop
                  nop
                  lui          t3, 515145
                  auipc        t5, 126153
                  nop
                  lui          tp, 290275
                  nop
                  addi         a0, t5, 246
                  add          s1, tp, tp
                  nop
                  sub          t5, s7, t3
                  add          a3, a3, s10
                  auipc        t5, 534173
                  add          a0, t3, s1
                  auipc        a7, 698504
                  nop #end riscv_int_numeric_corner_stream_26
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           a1, 0x80000000
                  li           s11, 0x96a94cf2
                  li           a3, 0xa3c1fe6a
                  li           t1, 0xffffffff
                  li           a2, 0xffffffff
                  li           t5, 0x80000000
                  li           s2, 0x80000000
                  li           s5, 0xffffffff
                  li           tp, 0x0
                  add          s2, s2, a2
                  addi         a2, s11, 1241
                  nop
                  add          a3, s2, s5
                  auipc        a2, 735642
                  add          a3, a1, a5
                  nop
                  add          tp, s11, s11
                  nop
                  auipc        a1, 233316
                  sub          a1, tp, a3
                  auipc        t1, 242924
                  nop
                  auipc        a1, 62648
                  sub          a3, t1, tp
                  nop
                  lui          t5, 235048
                  auipc        a2, 343093
                  addi         s2, s2, -1902
                  auipc        tp, 637660
                  lui          t5, 900693
                  sub          s2, s11, a5
                  addi         t1, s5, 1362
                  nop
                  add          s5, s5, a1
                  sub          s2, a5, a1
                  lui          a5, 196563
                  auipc        s11, 200277
                  sub          a2, a3, a5 #end riscv_int_numeric_corner_stream_33
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t3, 0x80000000
                  li           t0, 0xffffffff
                  li           s11, 0x80000000
                  li           t5, 0x232cf7ec
                  li           tp, 0x7e5a174d
                  li           ra, 0x23c9b977
                  li           a6, 0x541a9d2b
                  li           a4, 0x0
                  li           s8, 0x0
                  addi         t0, s11, -242
                  lui          t3, 736305
                  sub          t0, t5, a4
                  addi         tp, t5, -1953
                  nop
                  addi         s11, t0, -2013
                  sub          ra, a4, a4
                  nop
                  lui          a4, 588807
                  add          s11, s8, s8
                  lui          t0, 722136
                  lui          a6, 551882
                  auipc        tp, 30380
                  add          ra, a5, ra
                  auipc        a6, 781097
                  addi         a5, t0, 672
                  lui          a5, 298642
                  add          a6, s8, s8
                  nop
                  add          a4, ra, tp
                  lui          t5, 311831
                  auipc        a5, 853195
                  add          a6, a5, a5
                  lui          a6, 423991
                  lui          ra, 801965 #end riscv_int_numeric_corner_stream_3
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s2, 0x0
                  li           a7, 0xffffffff
                  li           ra, 0xffffffff
                  li           s5, 0x80000000
                  li           a4, 0x0
                  li           a5, 0x8b9310b1
                  li           gp, 0xffffffff
                  li           s3, 0xc4c6c65
                  li           s1, 0x0
                  add          s2, gp, t1
                  add          a4, s5, s1
                  add          a4, a7, ra
                  nop
                  add          s3, s1, s5
                  addi         s3, s2, -1368
                  add          s2, a5, s3
                  add          s2, s5, a7
                  lui          s5, 230925
                  lui          s1, 564777
                  auipc        s3, 65626
                  sub          s1, s2, a5
                  addi         s1, t1, -1689
                  add          a4, s1, a7
                  auipc        s5, 576426
                  nop
                  nop
                  addi         s1, a4, -2021
                  lui          s2, 211728
                  auipc        t1, 92502
                  lui          s5, 923079
                  auipc        a7, 960002
                  add          a4, s5, a4
                  addi         s3, a4, 337
                  addi         a5, a4, 528
                  auipc        s2, 98963
                  addi         gp, a5, -628
                  lui          a5, 885023
                  auipc        a7, 433443
                  addi         a5, t1, -679 #end riscv_int_numeric_corner_stream_16
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s2, 0x0
                  li           a5, 0x0
                  li           t1, 0xffffffff
                  li           a7, 0x80000000
                  li           tp, 0x0
                  li           sp, 0xffffffff
                  li           s5, 0xffffffff
                  li           a1, 0xffffffff
                  li           t2, 0xffffffff
                  add          s3, a5, s2
                  lui          a5, 620607
                  addi         sp, tp, -348
                  lui          s2, 91872
                  auipc        a1, 692617
                  auipc        s2, 604182
                  addi         a1, s5, 1709
                  sub          sp, a1, s3
                  add          s2, t2, s5
                  add          sp, a7, a5
                  add          s2, t1, s2
                  auipc        tp, 340592
                  add          a7, a5, tp
                  auipc        s5, 840165
                  lui          t2, 966972
                  sub          sp, s3, t2
                  nop
                  lui          a5, 641542
                  sub          s3, t2, sp
                  add          a7, a5, t1
                  sub          t1, a7, tp
                  auipc        a5, 668833
                  sub          s2, sp, t1
                  lui          s2, 640411 #end riscv_int_numeric_corner_stream_31
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           a7, 0x0
                  li           t2, 0x80000000
                  li           t1, 0x5694708e
                  li           a0, 0x0
                  li           s8, 0x80000000
                  li           a4, 0xcc793e8f
                  li           s4, 0x0
                  li           a6, 0x1ac309b4
                  li           s11, 0x763fed6b
                  sub          s11, a4, a0
                  addi         t1, t2, 1807
                  sub          s11, a0, s11
                  sub          s11, t1, t1
                  nop
                  addi         s11, s11, 2044
                  add          t2, a4, s5
                  add          a0, s11, a0
                  sub          t1, a4, a7
                  add          t2, t2, s11
                  add          a4, s4, t1
                  addi         a4, s8, 431
                  add          a0, s8, a6
                  nop
                  nop
                  auipc        s8, 490350
                  nop
                  lui          s11, 797510
                  addi         s11, a0, -1337
                  lui          a4, 208819
                  sub          a7, t1, s11
                  addi         s11, s8, 19
                  addi         a0, t2, 1487
                  lui          a0, 294656
                  lui          t2, 785062 #end riscv_int_numeric_corner_stream_29
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           ra, 0xffffffff
                  li           t6, 0xffffffff
                  li           t3, 0x80000000
                  li           a5, 0x80000000
                  li           sp, 0xf89d232e
                  li           s5, 0x0
                  li           t5, 0xffffffff
                  li           t2, 0x80000000
                  li           s11, 0xffffffff
                  lui          s8, 73731
                  sub          t6, ra, s8
                  addi         s5, t3, -798
                  nop
                  add          t2, s5, t3
                  nop
                  addi         a5, t2, -1880
                  add          t3, s8, t3
                  add          s5, t3, t6
                  lui          s11, 988423
                  add          t6, s5, ra
                  add          s5, s5, t6
                  nop
                  auipc        ra, 392063
                  sub          t2, t3, ra
                  auipc        a5, 367518
                  nop
                  lui          s11, 310682
                  nop
                  sub          a5, s8, s11
                  add          s8, ra, t6
                  sub          a5, s5, t3
                  auipc        ra, 290770
                  sub          t5, s8, sp
                  nop
                  sub          ra, t3, sp #end riscv_int_numeric_corner_stream_21
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_23
                  li           a2, 0xffffffff
                  li           tp, 0x0
                  li           s5, 0x80000000
                  li           ra, 0x60d1c57
                  li           a4, 0xffffffff
                  li           t3, 0x80000000
                  li           a5, 0x429b6818
                  li           t6, 0x80000000
                  li           gp, 0xffffffff
                  auipc        t6, 684427
                  addi         t3, gp, 855
                  add          s2, a2, t3
                  lui          t3, 281402
                  add          tp, a2, t6
                  auipc        t6, 668056
                  sub          t6, ra, s2
                  addi         a5, tp, 102
                  add          a4, ra, t6
                  lui          s5, 218469
                  auipc        ra, 247485
                  sub          a5, ra, a5
                  nop
                  add          ra, t6, a2
                  addi         t6, ra, 1882
                  add          ra, s2, s5
                  add          s2, s5, tp
                  nop
                  nop
                  lui          s2, 655914
                  auipc        ra, 224163
                  nop
                  sub          gp, a2, s5
                  lui          s2, 669885
                  add          a5, a2, a2
                  addi         t6, s5, -196
                  addi         tp, s2, 1269
                  lui          t6, 725282
                  nop
                  auipc        a5, 607073 #end riscv_int_numeric_corner_stream_23
                  li           s6, 0xe23330f2 #start riscv_int_numeric_corner_stream_39
                  li           t2, 0x80000000
                  li           s1, 0x80000000
                  li           a7, 0x95dc7c02
                  li           t1, 0xc8ffd802
                  li           a2, 0x0
                  li           s2, 0x0
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  li           a4, 0x80000000
                  auipc        s2, 368521
                  sub          a2, a7, s6
                  auipc        a2, 204183
                  addi         s6, sp, 893
                  nop
                  add          s1, sp, gp
                  nop
                  sub          s6, a2, sp
                  add          s1, sp, s2
                  lui          t2, 324947
                  add          sp, a7, s2
                  addi         s1, t2, 661
                  add          sp, s6, s2
                  sub          sp, s1, gp
                  add          s6, a4, a2
                  addi         s6, sp, -1334
                  lui          s6, 100173
                  nop #end riscv_int_numeric_corner_stream_39
                  sll          t0, ra, gp
                  lui          a4, 592542
                  or           s4, s5, s11
                  sltu         a3, t0, a6
                  sub          s11, a0, s6
                  sltiu        a7, a1, -1830
                  sltiu        s1, t2, 180
                  ori          t1, gp, -257
                  sub          s11, s8, s0
                  slt          t6, sp, s0
                  add          a4, s2, s8
                  sra          a5, a7, ra
                  addi         a4, gp, 151
                  addi         ra, t2, 283
                  add          a7, s11, zero
                  srai         s6, s8, 16
                  nop
                  auipc        a5, 547611
                  srli         t6, s2, 17
                  sltu         s1, s2, zero
                  xor          a1, t0, a2
                  srai         s10, zero, 13
                  and          a6, a6, a4
                  ori          s3, ra, 489
                  srli         t2, t2, 26
                  sub          s6, s10, s8
                  sll          s4, s6, gp
                  slli         s10, s7, 30
                  and          s3, a3, s11
                  and          t2, a5, t5
                  nop
                  ori          gp, s3, -1505
                  sll          ra, a6, a2
                  sll          ra, a7, s9
                  srl          s3, s6, s7
                  slt          s4, s4, t0
                  sub          s4, t4, s7
                  sltu         a4, s4, t5
                  sub          a3, s4, tp
                  addi         t1, t1, -1159
                  sltiu        tp, a7, -288
                  sll          a5, s3, t5
                  auipc        ra, 978711
                  sra          s1, s1, ra
                  xor          s5, gp, a3
                  srl          s2, s0, a5
                  sltu         s11, t1, a7
                  ori          s4, a3, 1769
                  nop
                  srl          a6, s3, s10
                  sltu         zero, s10, a1
                  sll          t6, t1, a4
                  srl          a1, a7, a5
                  auipc        t3, 873885
                  sltu         t3, a6, s9
                  sub          a4, s5, sp
                  lui          s8, 181628
                  add          s5, zero, t3
                  slli         a6, tp, 10
                  auipc        zero, 820805
                  lui          a3, 645325
                  sltiu        s5, a0, -1899
                  xori         a7, s6, -1521
                  andi         t5, a0, -170
                  nop
                  slli         s11, sp, 2
                  nop
                  sll          t2, gp, s2
                  sra          s5, tp, zero
                  and          a7, s7, a5
                  lui          s6, 923535
                  srli         t3, s5, 23
                  srli         s10, s2, 4
                  xor          zero, a7, s7
                  and          s10, t4, a7
                  ori          a7, a4, 155
                  sltu         t1, s4, s9
                  sll          zero, s9, sp
                  or           a4, t0, s5
                  slli         gp, t1, 8
                  lui          gp, 313913
                  sltu         zero, a7, a4
                  sltiu        t2, t5, -1693
                  sltu         t3, sp, s3
                  add          t5, t0, a6
                  sll          s6, s8, s3
                  auipc        t5, 426261
                  lui          s10, 891689
                  nop
                  sltiu        a5, a4, 432
                  xori         a7, s11, 1447
                  sra          s8, t5, t4
                  slti         s4, ra, -963
                  andi         a6, a7, 1086
                  sltiu        s3, a7, 2027
                  and          a0, a3, t2
                  slli         a6, s10, 9
                  xor          s2, a1, a4
                  and          ra, t4, t0
                  slli         a0, s8, 1
                  lui          t2, 125240
                  srli         a3, t3, 23
                  nop
                  slli         s2, s1, 14
                  sltu         a5, a1, tp
                  sltu         ra, t3, tp
                  sub          t1, gp, tp
                  add          t3, a2, sp
                  or           s6, t1, t5
                  addi         ra, sp, -1847
                  and          s6, gp, s0
                  sltu         s6, t0, a3
                  ori          a3, s7, 1355
                  ori          sp, a7, 964
                  xor          ra, a2, s10
                  srl          sp, s4, a4
                  add          s1, s4, t6
                  nop
                  xor          sp, s2, a2
                  slli         a7, s9, 31
                  slt          t0, a5, s4
                  sub          s7, t3, s4
                  ori          sp, a4, -932
                  lui          s10, 826907
                  slti         s11, s0, -1940
                  xor          s8, t3, s6
                  xori         a1, s2, -1948
                  addi         a0, s2, 1058
                  and          t0, a1, tp
                  ori          t2, tp, -1540
                  add          tp, s8, s6
                  srli         s10, a4, 2
                  and          a6, gp, a4
                  auipc        ra, 9450
                  sltu         s7, t0, s8
                  srli         s7, sp, 12
                  sub          s8, a0, a0
                  sra          a2, a7, s7
                  slli         gp, a5, 2
                  srl          s1, s7, s9
                  ori          t2, s0, -1505
                  add          a4, s11, zero
                  nop
                  sltiu        s10, t1, -1066
                  nop
                  xori         t3, t5, 1875
                  sltu         tp, sp, s3
                  andi         t3, a5, 1416
                  sltu         a7, a6, t1
                  sltu         s1, a1, s10
                  sub          s1, a1, a3
                  slt          a1, t0, s6
                  sub          t5, a1, a6
                  slti         sp, a5, 764
                  sll          s6, t1, ra
                  andi         s2, s0, 434
                  ori          s3, s1, -1591
                  sltu         s2, sp, s2
                  and          s4, s1, gp
                  sub          t2, t3, a5
                  auipc        t6, 20469
                  and          a2, gp, s7
                  add          a0, sp, a7
                  slt          a7, zero, t3
                  nop
                  sltiu        s2, a0, 352
                  sra          gp, t4, t2
                  add          s2, s9, s4
                  sll          s4, tp, t1
                  slli         a1, t3, 16
                  srli         sp, t4, 23
                  auipc        a7, 412876
                  auipc        a1, 959791
                  srai         a3, t6, 18
                  sub          s8, a6, t6
                  srl          s4, s10, zero
                  nop
                  or           sp, t6, s0
                  ori          t0, s1, 131
                  addi         t6, s6, 1408
                  lui          a4, 227686
                  srli         a4, s6, 26
                  sltu         s7, t6, a0
                  ori          a2, s10, -333
                  slli         s11, t5, 19
                  ori          t6, gp, -825
                  slli         t6, a3, 1
                  srl          s4, a2, a7
                  and          a1, t0, s8
                  ori          a4, t4, 1646
                  srli         a2, s7, 12
                  lui          a4, 783783
                  xori         s5, s6, 92
                  andi         t5, sp, -535
                  srl          t0, s2, ra
                  sub          t6, a5, a6
                  and          a4, s10, a6
                  and          s1, s0, zero
                  or           s1, a5, t3
                  or           zero, a2, s9
                  xori         a3, s11, 1332
                  or           a3, a5, s6
                  lui          s11, 663718
                  xor          s3, s1, t6
                  xor          s7, s2, s9
                  xori         a5, tp, -883
                  nop
                  sra          a2, t0, sp
                  auipc        a0, 826241
                  and          s5, ra, t3
                  srai         t0, s11, 7
                  xori         s1, sp, -711
                  add          s10, t6, a5
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a7, 0xfc3c5d85
                  li           gp, 0x0
                  li           a6, 0xc73a9c58
                  li           s2, 0xffffffff
                  li           t0, 0x557de0f1
                  li           s3, 0x0
                  li           t5, 0xffffffff
                  li           s6, 0x82dfbfcc
                  li           sp, 0x31275b18
                  addi         a6, t5, -380
                  auipc        gp, 416153
                  addi         a1, t0, 1768
                  add          s3, gp, s2
                  addi         a6, t0, 842
                  sub          t5, t5, t5
                  sub          t0, sp, sp
                  auipc        sp, 420393
                  auipc        a1, 32239
                  nop
                  add          t0, t5, a1
                  lui          a7, 879952
                  auipc        s3, 814932
                  lui          gp, 134525
                  add          s3, s3, s3
                  lui          a6, 1003047
                  addi         a7, s3, -123
                  auipc        sp, 495829
                  addi         a6, t5, -429
                  auipc        t5, 554985
                  lui          t5, 877885
                  nop
                  nop #end riscv_int_numeric_corner_stream_18
                  sltu         a4, t0, a3
                  srli         s1, s7, 20
                  sra          s4, a4, a0
                  sra          s1, t4, a1
                  ori          a5, ra, -52
                  srli         s3, s1, 10
                  xori         a4, gp, 1465
                  slt          s1, s10, sp
                  srl          a3, s4, s2
                  slli         t6, tp, 12
                  slti         s7, zero, 88
                  andi         a7, s6, 966
                  auipc        a4, 1038144
                  xor          a7, s3, t2
                  slti         a0, a2, 1618
                  xor          a4, s2, s3
                  slt          s7, a4, t6
                  nop
                  srli         a7, s0, 8
                  srai         a3, s1, 21
                  sltiu        a5, t0, -325
                  lui          a3, 590276
                  slli         s8, s0, 9
                  xor          t3, t3, t3
                  srl          a5, a6, t6
                  or           t2, a2, s4
                  srl          t6, s1, s4
                  sra          zero, a2, t1
                  or           s2, t0, tp
                  auipc        a0, 239408
                  xori         a0, a2, 1469
                  and          t3, t3, sp
                  and          s5, t6, a1
                  nop
                  addi         s8, a3, 1767
                  or           t6, s7, a4
                  nop
                  sra          a0, s1, a2
                  sltiu        ra, a4, 241
                  slti         gp, t5, 1012
                  sub          s4, t5, s2
                  andi         s7, a3, -694
                  slli         ra, s9, 4
                  sra          ra, s2, a5
                  add          s10, a6, a6
                  auipc        tp, 709457
                  srai         s3, s4, 13
                  xor          s7, a6, a3
                  srli         s1, s1, 5
                  auipc        a4, 273254
                  sltu         s5, s3, s2
                  slli         s11, tp, 8
                  srli         a3, ra, 24
                  andi         ra, tp, 545
                  ori          s8, t2, 672
                  auipc        a5, 411126
                  andi         a7, zero, 1673
                  addi         s7, s0, -762
                  lui          a4, 326842
                  andi         s10, a3, -1917
                  sra          s5, t6, s4
                  or           s10, a2, s4
                  sltu         t0, s2, s9
                  ori          tp, s10, -991
                  lui          s11, 491237
                  xor          t1, a5, a2
                  sltu         a1, zero, zero
                  sltu         s11, a7, t6
                  lui          s5, 175190
                  lui          a1, 358446
                  sll          gp, t4, s1
                  addi         s4, s0, -1658
                  ori          a7, s7, 203
                  srli         t2, sp, 21
                  or           s3, a6, t1
                  auipc        a0, 517187
                  srli         t2, a4, 26
                  slli         a7, s5, 11
                  or           a2, t2, tp
                  srai         t2, a2, 17
                  ori          tp, s5, 113
                  or           a5, a4, zero
                  lui          t5, 101830
                  addi         a7, s3, -1612
                  slti         t1, t1, -210
                  sltu         a2, t2, s8
                  addi         a0, t2, 260
                  slti         zero, s7, -942
                  slli         s5, s1, 28
                  srli         a5, t4, 6
                  ori          tp, s9, -1315
                  nop
                  add          ra, t5, s8
                  sll          t1, a5, t1
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           a1, 0x80000000
                  li           t0, 0x38ce38b0
                  li           a7, 0x80000000
                  li           sp, 0x80000000
                  li           a3, 0x399b7dc7
                  li           s10, 0x80000000
                  li           tp, 0x80000000
                  li           s4, 0x0
                  li           s7, 0xffffffff
                  add          a7, a1, s10
                  lui          a7, 293790
                  auipc        a4, 498138
                  auipc        a3, 44638
                  nop
                  lui          tp, 571227
                  sub          sp, t0, a7
                  lui          a4, 924914
                  addi         s10, a1, -498
                  lui          a7, 973277
                  auipc        s10, 284454
                  nop
                  auipc        sp, 271909
                  addi         a1, sp, -1497
                  auipc        s10, 691355
                  add          a1, a1, s10
                  add          a4, tp, a1
                  add          tp, s7, tp
                  auipc        a3, 371278
                  sub          s10, a4, tp
                  add          tp, a1, a4
                  addi         s7, s7, -1550 #end riscv_int_numeric_corner_stream_27
                  add          a5, ra, s11
                  andi         t3, s0, 664
                  srl          s4, s1, t3
                  and          a0, a4, t2
                  addi         t3, s1, -919
                  srai         t0, a6, 5
                  xor          a4, t0, a0
                  srai         s3, a3, 28
                  sltiu        t5, s4, 421
                  sub          s3, s8, ra
                  sltu         a1, gp, a7
                  or           a5, a7, a3
                  slti         s1, s0, -1135
                  srai         s3, t5, 9
                  slli         s3, sp, 16
                  sll          gp, s5, a5
                  lui          s8, 258207
                  xor          a2, a7, a5
                  slt          a7, a2, s11
                  srli         tp, s9, 24
                  add          t6, s2, sp
                  srl          s6, ra, s5
                  slti         a7, s6, -111
                  and          t2, s4, a6
                  srli         t1, gp, 23
                  add          s11, a1, s7
                  nop
                  sub          gp, t4, t3
                  srai         s11, zero, 7
                  slli         s4, a7, 15
                  srai         a0, t6, 10
                  slli         t5, s1, 26
                  slt          a7, a3, s0
                  srl          t0, a2, t3
                  sltiu        s11, t6, -930
                  andi         s5, t3, 347
                  add          t6, s1, a4
                  addi         a7, s3, -1397
                  or           a2, zero, sp
                  sub          a6, gp, a7
                  auipc        s10, 638530
                  sra          t3, t0, t6
                  sra          a7, t4, a5
                  lui          tp, 361302
                  sltu         ra, s4, s8
                  addi         a7, t5, 903
                  add          tp, a5, a1
                  xori         a0, s6, -133
                  add          gp, a6, s6
                  slti         a6, a5, 1869
                  srli         s3, a1, 27
                  sra          a7, ra, s6
                  sll          sp, s10, s4
                  lui          s2, 920368
                  slti         t6, a4, -62
                  xor          s1, t6, t4
                  sltu         a6, s3, s0
                  nop
                  and          a3, a2, s9
                  xor          t1, a1, t2
                  and          s8, a1, s6
                  slti         t6, t2, 1276
                  sub          s4, tp, s10
                  srl          s5, s6, s1
                  add          zero, t3, a2
                  lui          t1, 230524
                  ori          t6, s3, -516
                  slt          a6, s6, a2
                  lui          t1, 439359
                  and          a3, gp, s0
                  auipc        a5, 434006
                  sll          t5, a5, t4
                  add          s6, s9, t1
                  sltiu        ra, s9, 1921
                  sub          s7, tp, t3
                  xori         s8, tp, -1987
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           sp, 0x632f74c1
                  li           t6, 0x0
                  li           ra, 0xffffffff
                  li           s10, 0xffffffff
                  li           a4, 0x0
                  li           s8, 0xe196241c
                  li           s2, 0x0
                  li           gp, 0xffffffff
                  li           s1, 0xffffffff
                  nop
                  add          sp, a4, ra
                  addi         sp, ra, -991
                  auipc        s11, 384537
                  add          ra, t6, t6
                  addi         t6, gp, -732
                  add          gp, gp, s8
                  lui          s11, 358691
                  sub          s8, t6, s8
                  auipc        s8, 735611
                  add          sp, sp, s8
                  lui          a4, 293424
                  add          gp, s10, s2
                  lui          s1, 536768
                  nop
                  lui          a4, 810005
                  add          t6, s2, s11
                  lui          s2, 723509
                  auipc        a4, 930170
                  auipc        a4, 579112
                  add          s1, s1, sp
                  lui          t6, 560842
                  addi         s8, a4, -1164
                  nop
                  nop
                  sub          ra, ra, ra
                  addi         s11, t6, -1807
                  addi         s1, ra, -1093
                  add          a4, s8, ra
                  addi         t6, ra, 1783 #end riscv_int_numeric_corner_stream_2
                  slti         s11, a7, 1427
                  srli         s8, s3, 2
                  srl          a7, a4, t6
                  andi         tp, a5, -242
                  srai         s4, a3, 7
                  ori          a2, a2, 378
                  sltiu        a7, gp, -2020
                  srli         t3, s3, 27
                  xori         s11, gp, -1801
                  auipc        tp, 600206
                  xori         s10, a5, -1864
                  sra          s1, tp, s6
                  srai         s6, s6, 31
                  ori          s2, sp, -1704
                  or           s11, s9, a5
                  sltiu        s10, s9, -522
                  add          t2, sp, s9
                  sltiu        s6, a1, 503
                  add          a3, a2, t3
                  slli         s5, s5, 1
                  sra          t1, sp, t0
                  nop
                  add          a7, t2, s10
                  sltu         ra, s4, gp
                  andi         a6, zero, -1377
                  srl          s4, a2, t1
                  xori         a0, s6, -123
                  slli         gp, t4, 1
                  or           s5, s0, s0
                  andi         t5, a1, 1517
                  sltiu        t2, t4, 1524
                  andi         s4, a6, -1981
                  slt          s1, a5, t4
                  ori          s8, s11, -518
                  ori          sp, s6, 352
                  sra          t1, a6, zero
                  addi         a0, s10, 231
                  andi         t2, t4, -765
                  srli         s4, s6, 1
                  sltu         a3, a1, sp
                  addi         t5, s6, -1240
                  sltiu        t2, t5, 497
                  or           t3, a6, t4
                  slt          a0, t4, a0
                  sll          s7, s4, t2
                  lui          s11, 898309
                  sub          a2, zero, t1
                  xori         t5, t1, -1072
                  slti         s5, t6, -1598
                  sub          sp, s4, gp
                  sra          t6, s10, s9
                  sra          a2, t3, s5
                  or           s1, a1, s11
                  srli         s7, t1, 16
                  srai         zero, s8, 28
                  slt          t0, s5, tp
                  ori          gp, a1, 324
                  lui          s5, 909468
                  add          a6, s1, a7
                  or           a2, a0, s0
                  nop
                  slli         a3, t5, 22
                  srai         ra, a4, 23
                  slt          a5, zero, s11
                  slti         tp, a2, 1826
                  and          a1, a3, t1
                  xori         s8, a5, 1850
                  ori          a4, s6, 1442
                  sub          a3, ra, s6
                  srl          s3, t3, a6
                  srai         t5, s9, 13
                  srl          s5, t6, t1
                  nop
                  lui          s6, 1013299
                  lui          gp, 273324
                  sra          ra, t6, a5
                  add          a3, zero, s10
                  sra          a0, sp, s9
                  ori          ra, a7, 489
                  add          ra, s1, a2
                  or           t0, s0, s8
                  lui          s11, 562688
                  slt          t5, s7, t4
                  auipc        t1, 436194
                  nop
                  andi         a6, a6, -719
                  auipc        gp, 307182
                  nop
                  ori          sp, s3, -189
                  xor          a7, tp, t4
                  srai         s5, s9, 19
                  srai         tp, a2, 12
                  or           t1, s11, s7
                  add          t0, s8, s2
                  sltu         s8, sp, t1
                  sltu         s1, a6, s11
                  slti         t3, gp, 621
                  andi         a6, s6, 835
                  nop
                  andi         t2, a7, 822
                  and          a1, s6, s7
                  srai         t1, t2, 16
                  lui          gp, 786924
                  xor          s2, t4, a1
                  nop
                  slti         a7, ra, 1633
                  srli         gp, t6, 26
                  xor          a5, gp, s10
                  sltu         a0, s10, a1
                  auipc        zero, 1022047
                  and          t6, a1, s6
                  add          s3, s9, zero
                  xor          t2, sp, t3
                  add          s11, s5, t6
                  sltiu        gp, s4, 1613
                  sltu         s11, a4, a3
                  lui          zero, 723339
                  slti         s5, gp, 2
                  sub          s5, s2, a2
                  add          s4, a5, t6
                  xori         a6, s11, 733
                  and          a4, s1, t5
                  xor          s3, a7, a4
                  slti         a5, a1, 964
                  slli         a3, t2, 25
                  nop
                  or           s6, s3, s10
                  xori         sp, a4, -1794
                  addi         s2, s9, 1558
                  xor          a4, a3, s4
                  add          t3, s7, t6
                  xori         s10, s11, -773
                  sltu         s2, gp, tp
                  sltiu        a5, a1, -1100
                  andi         a3, a3, 1526
                  sll          s1, s3, s1
                  sra          a7, s9, ra
                  xor          s7, s8, t5
                  slli         a0, a4, 9
                  or           a7, s2, tp
                  sub          a6, a7, a5
                  nop
                  srl          a7, s0, sp
                  or           a7, a1, s4
                  auipc        t1, 691482
                  srl          t2, sp, a2
                  srai         s4, s4, 31
                  sub          t3, s8, a6
                  slli         t1, a2, 18
                  nop
                  or           s8, s4, ra
                  sltiu        s11, ra, 542
                  and          s6, a2, s2
                  sltu         t3, tp, a2
                  add          t3, a0, a7
                  andi         s8, a4, 1967
                  xori         t5, s0, -1754
                  srai         s4, t6, 9
                  sltiu        s11, a2, 1864
                  and          s11, s0, t3
                  andi         s5, s4, -2045
                  or           s1, a5, a7
                  slti         s5, t4, -1263
                  sll          t5, s0, s9
                  or           t1, a2, s1
                  nop
                  srai         t6, t6, 29
                  sltu         a5, s3, s3
                  slt          gp, s4, s11
                  and          sp, s9, a1
                  srai         t3, zero, 25
                  sltiu        s11, sp, -1942
                  lui          tp, 651144
                  and          t0, a1, t2
                  srl          t3, s6, t1
                  and          s7, s8, zero
                  slli         a3, s2, 13
                  addi         s7, a5, 1698
                  srl          tp, a3, a0
                  ori          s5, a7, -938
                  or           a1, s10, a0
                  addi         t2, t3, -368
                  srl          a6, t2, a2
                  slt          s11, a7, s10
                  srli         t0, s1, 31
                  lui          a1, 666603
                  xori         a3, t3, -731
                  lui          a3, 978811
                  addi         zero, s2, 1181
                  slt          a6, tp, t2
                  srai         s8, zero, 20
                  sltiu        s10, s1, -1072
                  slti         s2, a7, 824
                  sltu         a1, s7, t1
                  slti         t2, a3, -1671
                  or           s3, a1, s9
                  slli         gp, s6, 12
                  or           a2, s11, a0
                  sra          tp, a0, t5
                  sra          a0, ra, a6
                  auipc        tp, 49482
                  sltu         gp, t5, t1
                  auipc        t1, 42397
                  nop
                  add          a2, zero, t2
                  lui          zero, 245542
                  add          s2, zero, gp
                  sll          tp, t0, a4
                  srl          gp, t1, a7
                  sll          s2, s4, t1
                  sra          a7, a2, s0
                  ori          t6, s11, -308
                  and          s1, s6, s2
                  andi         s3, t0, -332
                  andi         s8, s1, 390
                  lui          a2, 296066
                  ori          a4, s5, 282
                  slti         s8, s3, -895
                  add          a6, a6, a5
                  add          tp, t1, t1
                  slli         sp, s8, 3
                  slli         s1, s8, 14
                  nop
                  addi         s7, a1, 322
                  slli         a3, t1, 21
                  slt          ra, s10, zero
                  srli         ra, zero, 6
                  slli         a7, s10, 29
                  sltiu        t0, s2, -632
                  sltiu        a0, t2, -1115
                  xori         a5, tp, -517
                  sltu         s7, t1, ra
                  ori          a0, t4, 1741
                  slt          s1, s6, t1
                  slti         t5, s7, 1598
                  srai         s7, a0, 23
                  andi         tp, a0, -598
                  lui          a2, 183104
                  sltiu        s11, zero, 949
                  and          sp, a2, t2
                  srai         s1, t3, 0
                  slt          a6, s10, s4
                  sltiu        s2, t2, 1900
                  sra          tp, a7, sp
                  xori         a0, s3, -1482
                  srl          s1, s7, t0
                  andi         t6, sp, 1907
                  xori         t2, t5, -617
                  sltu         a2, a0, s8
                  sub          s6, t2, sp
                  lui          zero, 568168
                  andi         gp, s6, 470
                  sltiu        s1, ra, 401
                  addi         a5, t1, 1630
                  nop
                  slli         t2, s0, 0
                  sra          s8, t0, tp
                  xori         s10, s7, 1658
                  andi         zero, t5, -656
                  srl          s8, tp, s3
                  andi         a7, t0, -2048
                  and          t5, s3, t3
                  auipc        gp, 409492
                  andi         a6, s3, 2010
                  lui          s1, 181756
                  sra          a5, zero, a6
                  xor          t5, a3, t5
                  slli         t1, s9, 10
                  auipc        a5, 16537
                  srl          t3, s5, a2
                  and          t5, s3, gp
                  and          t1, s5, t3
                  srli         a3, a2, 15
                  xori         t1, s5, -1298
                  lui          s6, 469816
                  or           t2, s2, t0
                  andi         t2, s4, -854
                  add          s1, t2, sp
                  andi         t6, t3, 2047
                  slt          a5, a5, s11
                  sll          sp, t5, ra
                  slt          a2, a2, s1
                  andi         ra, zero, -1202
                  or           gp, s9, s7
                  slti         a6, s9, -1246
                  sra          a4, t1, a7
                  or           zero, s8, s8
                  and          t3, sp, t2
                  add          a2, t0, t5
                  srai         a7, s4, 15
                  lui          a3, 946961
                  slli         sp, s1, 17
                  or           s3, ra, a1
                  sltu         gp, tp, tp
                  ori          s7, a6, -1257
                  or           tp, s11, s11
                  auipc        t2, 337158
                  auipc        a7, 769625
                  srli         t6, s6, 7
                  or           a6, a5, s8
                  sub          a0, a4, gp
                  add          ra, a6, a5
                  and          zero, s0, s7
                  sub          s8, t1, s6
                  srl          t1, t1, a1
                  sra          a3, sp, s8
                  sra          t0, s7, a4
                  and          t6, sp, sp
                  sltiu        s2, gp, 2016
                  sub          s1, s1, t3
                  slti         a0, t0, -948
                  auipc        a2, 1031939
                  andi         t2, s7, -251
                  slti         s8, zero, 1948
                  slti         s5, a6, -1092
                  sra          a2, s0, sp
                  xori         t1, s2, -942
                  sltiu        s8, s6, 2030
                  sll          a2, tp, tp
                  sltiu        a7, a7, -1494
                  add          a7, gp, a7
                  sll          a7, a7, s11
                  auipc        a3, 132661
                  andi         s2, s6, -74
                  slti         a3, a6, 672
                  ori          t5, s8, 591
                  srl          s4, t5, t3
                  sra          a5, s4, s0
                  srl          a6, a7, sp
                  sub          s10, t6, a6
                  srl          a7, tp, s11
                  xori         s11, t4, 1210
                  slti         s8, a1, 1889
                  ori          s2, zero, -1294
                  andi         a4, a0, -1448
                  sub          t1, s4, s2
                  nop
                  nop
                  srli         t0, s11, 18
                  ori          a2, t0, -1888
                  srl          tp, a2, s2
                  slli         s6, s6, 3
                  srl          a3, s4, tp
                  nop
                  lui          s6, 327090
                  ori          gp, s5, 1894
                  add          s4, a6, t4
                  and          s4, t0, a4
                  addi         a3, s4, 1869
                  andi         a6, ra, -108
                  slli         a5, a6, 28
                  and          t6, s6, t4
                  srli         t5, s7, 9
                  or           tp, t3, s8
                  xori         a7, a2, -593
                  slti         a1, a2, 485
                  ori          s4, t1, -30
                  add          t3, s4, t1
                  and          s2, s5, s2
                  srli         a5, s0, 22
                  andi         s7, a2, -1449
                  and          a7, ra, s10
                  addi         t0, s10, -1021
                  sltiu        gp, s10, 161
                  and          a0, s6, s1
                  add          s1, s6, ra
                  ori          t6, s8, 1771
                  xori         s7, a1, 1816
                  srli         t2, s2, 21
                  auipc        a0, 249450
                  nop
                  and          sp, s6, s6
                  xor          s8, s1, ra
                  sra          t1, zero, s7
                  xori         tp, t2, 1658
                  sltiu        a2, sp, 1103
                  addi         a3, a4, 714
                  xori         s3, ra, 900
                  sltu         s8, s9, s6
                  srli         a2, t1, 3
                  sra          t6, sp, t2
                  srli         s1, s1, 6
                  sltiu        gp, tp, -1587
                  sll          s8, sp, t1
                  sltu         a7, s8, t6
                  srl          s5, s3, s0
                  auipc        a5, 612123
                  xor          t0, s4, s6
                  srai         s3, s8, 30
                  xor          s2, t4, t1
                  and          t1, a1, tp
                  andi         t5, t5, -521
                  slli         t3, s6, 3
                  lui          a5, 959145
                  slti         a2, a5, -21
                  srli         a0, s11, 26
                  add          a1, t0, zero
                  xor          s1, s4, tp
                  srli         ra, s0, 17
                  and          s2, a3, s10
                  or           zero, s5, s9
                  slt          t0, s3, ra
                  slli         a0, s8, 20
                  xori         s1, s8, 1233
                  andi         t6, t4, 925
                  sll          a6, s1, a2
                  nop
                  andi         ra, a2, 552
                  ori          a0, t2, -1503
                  sltiu        zero, t2, 183
                  slt          s10, t3, s11
                  xori         tp, s4, -1653
                  and          t2, t4, a6
                  or           tp, a0, tp
                  ori          t3, a3, -510
                  slt          t0, s11, s7
                  slti         a2, s8, 2034
                  srl          a1, gp, t6
                  nop
                  slt          ra, a1, gp
                  add          a3, a4, t5
                  sub          s8, tp, ra
                  sub          s1, t4, zero
                  addi         s2, s8, 940
                  sltiu        s1, s4, 1761
                  slti         ra, a1, -863
                  sltu         ra, s6, a5
                  addi         s11, tp, -159
                  sub          a2, a6, tp
                  auipc        a0, 957897
                  slti         t0, s7, -926
                  sub          a0, t6, s6
                  add          t3, s0, ra
                  sltu         zero, ra, s0
                  sub          t1, s10, s10
                  xori         a6, ra, 1270
                  ori          s11, s9, -398
                  sra          t6, s5, s2
                  add          s8, s1, a1
                  xor          t6, s7, s4
                  srai         a2, t6, 3
                  ori          t6, s8, -1725
                  srli         tp, t5, 16
                  slt          t6, s0, a7
                  addi         gp, sp, 1600
                  add          t5, s1, a2
                  addi         a5, s1, 218
                  sra          a0, s4, a1
                  srl          s1, sp, a4
                  slti         a0, a3, -1309
                  ori          t6, t0, 1747
                  xori         sp, s4, 1070
                  sltiu        s4, t1, 296
                  srl          s8, tp, gp
                  slti         s4, s11, -583
                  sra          gp, a5, t5
                  addi         a0, a0, 621
                  srai         a5, t2, 7
                  srl          s5, a2, tp
                  sra          t6, s11, t0
                  lui          a1, 979230
                  auipc        a4, 717623
                  sltiu        a2, s3, 14
                  srai         s11, s7, 18
                  and          t3, a7, a7
                  add          s3, a4, a6
                  addi         a3, s8, 1014
                  slt          a0, ra, a1
                  sll          s7, ra, t1
                  xori         a7, tp, 1025
                  sub          t5, s4, t5
                  andi         ra, t5, -335
                  sub          gp, s4, s5
                  andi         zero, s7, 1022
                  sltu         t1, s3, t0
                  xor          a6, t3, a1
                  sltu         a5, sp, t4
                  slt          a5, zero, s1
                  xori         a7, sp, 1232
                  nop
                  nop
                  nop
                  ori          t3, sp, -1122
                  auipc        s5, 312158
                  slt          s7, gp, gp
                  sll          s11, s6, s10
                  or           t1, a7, t6
                  slli         s10, ra, 21
                  slli         s8, t0, 18
                  xor          a3, t6, t2
                  sltu         sp, t2, sp
                  slt          s1, s0, t6
                  srli         s11, tp, 0
                  sltiu        a3, s3, -1162
                  andi         zero, t3, 399
                  sub          gp, sp, s11
                  ori          s8, t5, 1605
                  andi         a4, t5, -1514
                  and          s8, a3, a2
                  srl          t5, s0, s1
                  srai         s10, s6, 1
                  sltiu        s8, s0, -53
                  ori          s10, t0, 813
                  slt          a0, s0, t4
                  ori          zero, s0, 1550
                  or           sp, sp, s8
                  addi         sp, s7, -218
                  add          t5, zero, s10
                  sra          s1, gp, a2
                  sll          s5, t3, gp
                  sltu         s5, t6, t4
                  auipc        a2, 750195
                  srl          a0, a5, s10
                  srli         s5, s11, 26
                  slli         s7, s6, 7
                  lui          a4, 967895
                  sra          t6, s7, s6
                  srli         s2, ra, 16
                  slti         s7, s6, -849
                  sll          s7, zero, t0
                  or           a5, a0, t6
                  slli         a6, a4, 27
                  or           s11, ra, ra
                  xor          gp, t3, t0
                  add          t3, t5, s11
                  srl          a4, a1, s9
                  xor          s10, a7, t1
                  nop
                  add          s2, tp, t6
                  auipc        s2, 1013932
                  sra          t0, s9, s11
                  xori         t0, a4, 159
                  sub          ra, a1, a1
                  nop
                  xor          a7, a3, t1
                  ori          a6, s6, 1923
                  slt          t0, s11, s7
                  nop
                  srai         s11, a4, 14
                  andi         s1, s6, -809
                  xori         tp, zero, 1913
                  srl          a0, s10, s7
                  andi         s2, s6, 439
                  nop
                  nop
                  xori         s8, gp, 728
                  sltu         a2, t6, ra
                  srli         zero, s8, 16
                  andi         s3, gp, -374
                  lui          s2, 555776
                  xori         s2, t1, -574
                  slt          t0, s9, t3
                  sltiu        s7, a2, -371
                  add          t5, s4, s10
                  srli         s10, sp, 15
                  and          gp, s7, t3
                  sltiu        s4, a3, 1440
                  ori          s1, s1, 790
                  slli         a5, s8, 4
                  nop
                  and          t3, a0, s2
                  xori         s1, sp, -1392
                  slti         t3, a1, -1445
                  xori         s3, s7, 1380
                  addi         s4, gp, -72
                  sub          t6, t2, s11
                  lui          s11, 695142
                  nop
                  lui          a6, 592281
                  add          a7, s2, s6
                  slt          t1, s0, s9
                  slti         s10, t5, 831
                  slt          s5, s9, t4
                  srl          zero, gp, ra
                  sltiu        a1, t0, -1641
                  sra          t5, a7, tp
                  xor          s3, s8, t0
                  nop
                  srai         ra, s3, 5
                  andi         tp, s5, 1556
                  srai         t2, t2, 16
                  sltiu        s4, a0, -1895
                  srli         zero, gp, 0
                  lui          gp, 227930
                  sra          t3, a6, gp
                  slli         a6, a3, 26
                  xori         sp, a1, -539
                  xori         t6, s5, -1394
                  nop
                  ori          tp, sp, 239
                  and          s11, t5, s8
                  sltiu        sp, a5, -311
                  srai         t3, t5, 28
                  and          s8, a5, t6
                  sra          a1, a4, t4
                  sra          s11, s11, s3
                  sll          a4, sp, s4
                  srl          t5, t1, s0
                  xor          a5, t4, s10
                  lui          t6, 502731
                  slt          t3, s3, s4
                  and          a1, sp, a6
                  or           t0, ra, s9
                  xori         t1, s6, -1411
                  slli         s3, t3, 26
                  add          s2, a3, a5
                  auipc        t6, 386925
                  and          s10, ra, a0
                  sltu         a5, a5, t3
                  and          s8, zero, t4
                  ori          sp, ra, -256
                  andi         s4, t5, -1623
                  and          a3, a5, t2
                  addi         s10, t2, -1679
                  add          a1, t6, ra
                  sltiu        s2, s9, -1165
                  slli         ra, t5, 14
                  and          ra, sp, t6
                  slti         a7, sp, -1769
                  sll          a2, s1, s11
                  srai         a2, t1, 26
                  or           ra, a5, t1
                  andi         a2, s4, -1681
                  addi         a7, s11, 1647
                  and          t2, s6, s9
                  and          s1, s7, t4
                  or           a3, gp, t0
                  srl          t2, s6, s8
                  auipc        t3, 779902
                  slt          tp, sp, t1
                  srl          ra, t1, s10
                  srl          s11, t6, t3
                  sub          s5, sp, t2
                  and          a0, a1, s8
                  add          a0, s0, s0
                  srl          s1, s3, a1
                  sll          t5, t0, s5
                  sra          a2, s3, tp
                  sltu         s8, sp, ra
                  or           t1, a4, t6
                  addi         ra, a5, -1390
                  ori          ra, s9, -13
                  srl          s10, s5, s3
                  srai         s4, s11, 2
                  srli         t5, a5, 19
                  srai         tp, a5, 8
                  add          a3, s9, t2
                  srl          gp, a6, s4
                  and          a6, a2, s11
                  andi         t6, s6, -25
                  ori          s1, s8, 327
                  slti         s1, s10, 798
                  srli         a5, a0, 10
                  or           s10, a1, t3
                  lui          s5, 826537
                  slti         s7, t1, 279
                  sll          sp, zero, ra
                  xor          zero, tp, t0
                  slli         a0, t5, 7
                  add          a5, t4, s7
                  nop
                  addi         s10, s4, -466
                  andi         t1, a2, 1814
                  auipc        t5, 50829
                  slli         s11, ra, 7
                  xori         s10, a3, -1818
                  slt          t6, s9, zero
                  auipc        a7, 546992
                  addi         t5, s0, -207
                  srl          a4, t0, s0
                  slt          a3, s1, s11
                  sltiu        a7, a1, 1674
                  slt          a2, s1, a3
                  xori         s11, t2, 796
                  sll          t5, tp, s10
                  xori         s10, s8, -186
                  addi         s10, t6, 9
                  and          s11, t6, a1
                  or           s5, t0, s7
                  addi         t6, a0, 96
                  andi         s7, s9, 654
                  auipc        s2, 592483
                  xori         t1, s8, 1662
                  slti         a3, s2, -331
                  nop
                  auipc        s10, 64690
                  sltu         s2, a5, t3
                  add          sp, s9, t1
                  auipc        s1, 160823
                  srli         zero, t6, 9
                  addi         s4, a4, -1481
                  add          s5, s4, s7
                  ori          a5, s9, -1795
                  slli         gp, zero, 21
                  sltiu        a2, zero, 1952
                  add          ra, a0, s3
                  slli         sp, zero, 2
                  slt          t1, a4, gp
                  sra          s11, t0, s8
                  auipc        s5, 769705
                  sub          s7, s8, t5
                  and          a4, s6, s3
                  slti         zero, t6, -2019
                  srl          s2, t2, tp
                  nop
                  ori          a7, s5, 1930
                  auipc        a0, 881929
                  slli         a1, s6, 21
                  sub          s8, a0, t2
                  slt          s8, tp, s8
                  or           a2, t0, s3
                  auipc        s4, 782425
                  srli         gp, s11, 1
                  add          s8, a3, s7
                  nop
                  auipc        t1, 190128
                  srl          a7, a6, tp
                  sub          sp, a2, t5
                  slli         s5, sp, 1
                  ori          t3, t3, -247
                  nop
                  andi         a3, gp, 2020
                  andi         s6, a2, 339
                  sra          a5, a3, s3
                  ori          t0, zero, 721
                  or           a0, t5, a6
                  addi         gp, a0, -281
                  sltu         tp, a6, s7
                  nop
                  andi         s11, a0, 1491
                  nop
                  xor          s1, s10, s2
                  andi         sp, sp, -121
                  and          s3, a4, s11
                  sub          t1, s3, s6
                  sltu         t1, s8, s1
                  slli         t1, gp, 14
                  sltu         ra, s8, s11
                  srai         s2, t0, 5
                  slt          a7, s8, t5
                  sll          s8, t3, tp
                  nop
                  andi         zero, s7, 903
                  xor          t5, a0, a0
                  slt          a4, ra, s0
                  addi         t3, a6, -1384
                  lui          tp, 690209
                  nop
                  andi         a1, s2, 148
                  srai         s5, s4, 3
                  srl          s5, s4, a1
                  slli         ra, t3, 4
                  or           t5, zero, a3
                  and          a1, a3, t6
                  auipc        s8, 777567
                  addi         a5, a0, 292
                  xor          t1, sp, a1
                  srl          a6, s8, t2
                  ori          ra, s7, 101
                  lui          s2, 770804
                  and          s5, t6, t1
                  add          s7, zero, s10
                  or           s1, a1, a1
                  and          s6, t3, a0
                  srai         t0, a4, 21
                  sltu         a1, s6, gp
                  slt          a6, s7, s9
                  or           t6, tp, a5
                  srl          s7, a1, ra
                  addi         sp, t5, 340
                  addi         a2, ra, -12
                  auipc        s6, 730073
                  sub          a4, a2, a7
                  sra          s5, t0, t0
                  add          a3, s1, gp
                  slti         s6, s9, -23
                  nop
                  add          t1, s7, t4
                  or           s10, s10, s6
                  sub          s11, s1, s6
                  sltu         t0, t6, a6
                  add          tp, a2, s4
                  nop
                  add          s4, sp, t5
                  sltu         a0, tp, sp
                  srli         gp, s10, 0
                  lui          s11, 809778
                  or           s1, a4, t3
                  sra          zero, t3, t3
                  ori          gp, t2, -355
                  xor          t6, t2, a5
                  auipc        s5, 152703
                  xori         a3, s8, 1808
                  or           a0, a2, a1
                  srli         s7, a7, 12
                  srli         s2, gp, 21
                  sub          zero, a6, s1
                  lui          gp, 996508
                  andi         s3, s0, 1105
                  srl          a5, a4, a0
                  or           gp, tp, sp
                  and          s11, s11, a7
                  andi         t0, s9, -1739
                  andi         t0, a4, -2021
                  ori          a4, a5, 1758
                  auipc        a1, 488517
                  sltu         t5, s4, s5
                  slti         a3, s0, -1396
                  xori         s8, a1, 1940
                  slti         t6, s9, 254
                  and          t2, a0, ra
                  sub          t0, t0, ra
                  sltu         s7, s8, s0
                  ori          a7, sp, -17
                  lui          s6, 792392
                  slli         t2, s0, 14
                  sll          a6, t0, a6
                  auipc        s6, 852713
                  srli         t6, a4, 9
                  slti         a5, s11, -1411
                  and          s3, t2, tp
                  or           s10, t5, t4
                  nop
                  slti         s3, a7, -1972
                  sll          s4, s2, s0
                  sltiu        t2, t2, 250
                  and          ra, zero, s7
                  sltiu        a4, zero, 1533
                  sll          a6, s8, s6
                  and          t1, zero, t6
                  auipc        t0, 28094
                  auipc        t1, 256044
                  sra          sp, a1, s6
                  ori          ra, s10, -742
                  sltiu        a6, t3, 922
                  slti         s4, tp, 1640
                  slt          a4, a1, sp
                  or           s11, tp, s10
                  and          a6, a0, t3
                  nop
                  sra          sp, a0, t5
                  ori          s5, t6, 313
                  addi         s8, s11, 350
                  xori         ra, s5, -203
                  srli         a3, s0, 29
                  li           a1, 0x7ac5a14 #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x0
                  li           s7, 0xffffffff
                  li           t3, 0xffffffff
                  li           t5, 0x80000000
                  li           t1, 0xffffffff
                  li           s8, 0x0
                  li           a5, 0x0
                  li           a7, 0xcf0be892
                  li           tp, 0xc123148e
                  lui          t1, 6765
                  nop
                  add          t5, a5, t1
                  lui          s8, 900013
                  nop
                  add          s6, t5, t5
                  auipc        a5, 575357
                  auipc        t3, 815643
                  lui          a7, 952073
                  nop
                  nop
                  lui          a5, 462020
                  nop
                  nop
                  addi         s6, a5, -1098
                  sub          a1, t3, tp
                  auipc        s8, 16011 #end riscv_int_numeric_corner_stream_17
                  slli         t6, t6, 1
                  sll          t5, t0, a3
                  srli         t6, t0, 14
                  srai         s10, a7, 4
                  sltu         s3, a1, s0
                  ori          a4, s0, -1442
                  ori          t2, s8, -1656
                  sltu         t2, s6, a0
                  srli         a5, s4, 22
                  sltiu        t0, gp, 1078
                  sra          s4, s6, t4
                  srli         s1, s5, 0
                  srli         s3, s10, 5
                  slli         s4, sp, 10
                  ori          t6, a2, 51
                  srl          s8, s11, s3
                  ori          a7, a0, -2008
                  slli         s3, a7, 3
                  auipc        a5, 1041301
                  sra          a3, s7, t5
                  xori         a3, a7, -1523
                  andi         t3, s9, 107
                  addi         a0, s0, 356
                  sltu         s2, s0, s2
                  slti         zero, s0, -483
                  lui          s8, 649041
                  nop
                  srai         s1, sp, 17
                  ori          zero, s2, 1884
                  xori         s11, sp, 166
                  slti         a1, t6, -1301
                  add          t6, gp, t0
                  srai         t3, t1, 28
                  sltu         t6, a4, s2
                  srl          s8, sp, a7
                  sub          a7, t6, s2
                  andi         s7, s5, 1374
                  ori          s6, t0, -814
                  add          zero, gp, gp
                  or           a3, s4, s9
                  ori          a1, s2, 1507
                  auipc        a1, 443324
                  or           sp, a1, zero
                  addi         s10, sp, 1364
                  addi         t5, s7, 1652
                  srai         a7, tp, 20
                  ori          a3, s4, -1160
                  auipc        s11, 372904
                  slt          s8, s2, s2
                  slli         a3, a6, 27
                  ori          s4, a6, 1509
                  sll          tp, s10, s4
                  and          sp, t3, a3
                  srai         t0, sp, 28
                  srai         t5, tp, 6
                  add          t2, sp, s1
                  slti         a6, gp, -51
                  or           sp, s5, s0
                  srli         s4, s8, 9
                  srl          gp, t5, tp
                  ori          t0, zero, 52
                  addi         t3, a1, -645
                  sub          a7, s8, s1
                  slt          a5, s10, s5
                  addi         s11, s0, -77
                  sltu         s8, s2, s1
                  sll          a2, s10, t3
                  srli         zero, s7, 3
                  auipc        s5, 972034
                  sll          t5, s1, a3
                  lui          zero, 191773
                  srai         s10, t5, 15
                  slli         a2, s5, 12
                  srl          t3, s7, a6
                  sra          s5, t4, a7
                  nop
                  and          s11, a6, a0
                  addi         s1, a0, -1038
                  sra          a3, a3, a5
                  sltu         s3, ra, t4
                  srl          a2, s3, a7
                  sltiu        s10, s11, 356
                  sltiu        a7, t2, -1106
                  sub          a6, s0, a5
                  andi         t2, s6, -1685
                  sltiu        t6, s1, -232
                  sub          a1, a0, t6
                  srl          sp, t3, a6
                  auipc        s11, 757456
                  srli         sp, s8, 29
                  sra          a7, s6, a4
                  sltiu        zero, a7, -1812
                  sll          zero, t4, sp
                  slt          s1, s6, a5
                  xori         s7, tp, 1134
                  sltu         a7, t1, s0
                  xori         tp, s9, 1852
                  andi         a6, a1, 738
                  slli         s4, ra, 23
                  auipc        s1, 868183
                  add          s10, s6, a3
                  slt          a6, s9, s1
                  sub          s2, gp, a7
                  auipc        a5, 512338
                  xori         t1, zero, 20
                  andi         s6, t5, 418
                  addi         a0, s5, -880
                  add          t3, s4, s10
                  sltu         s6, t2, a1
                  sra          t6, a5, t2
                  slti         sp, a1, -1060
                  srl          s4, t1, s6
                  slti         a4, t6, -1025
                  xori         gp, a5, -1976
                  sltu         a6, s1, a5
                  addi         a0, s7, -681
                  slli         sp, a6, 11
                  sll          a7, s9, t1
                  auipc        s8, 906625
                  addi         a5, s9, 217
                  andi         a6, zero, -707
                  slli         a2, a7, 22
                  slti         zero, s2, -1407
                  slli         a1, s10, 28
                  and          s1, s0, s7
                  addi         t2, s2, -731
                  srli         s3, s2, 27
                  or           a0, a4, a3
                  add          a3, s3, s4
                  slti         s7, a2, -33
                  slli         a3, s10, 10
                  sltiu        a3, s3, 994
                  xor          a1, a4, t0
                  sll          s1, a5, s10
                  sltu         t1, s11, s7
                  xor          a4, s1, t1
                  slli         t6, zero, 28
                  xori         s5, a5, -12
                  ori          a7, a2, -134
                  auipc        gp, 178004
                  xor          t6, s6, t3
                  srli         a1, a4, 6
                  andi         a7, a1, 920
                  or           a0, t1, t4
                  add          t0, s7, gp
                  srl          s10, zero, s5
                  srai         s6, zero, 5
                  srai         t1, s9, 31
                  srli         s11, tp, 6
                  xor          a2, s7, s11
                  srai         a0, gp, 17
                  srai         zero, s9, 29
                  and          s8, s11, t0
                  lui          t1, 538922
                  auipc        gp, 549534
                  sltiu        t5, gp, -1260
                  and          s2, tp, tp
                  slt          ra, s2, a7
                  sll          s8, t1, t1
                  srai         s11, s8, 28
                  and          sp, s6, t4
                  xori         a2, t6, 14
                  xor          s6, a5, tp
                  srai         zero, a4, 26
                  sra          s5, s4, s3
                  xori         s4, zero, 1342
                  srli         t1, s8, 20
                  sltiu        s8, zero, -501
                  sltu         a7, s9, t5
                  xor          a2, gp, t3
                  slli         gp, a5, 17
                  srli         a2, s5, 10
                  addi         t1, a4, -1880
                  auipc        ra, 918630
                  srli         a2, a4, 8
                  slli         a2, a1, 25
                  xor          s11, s4, a1
                  addi         s2, t3, 545
                  ori          t5, t4, 1718
                  sltiu        s1, a1, 1154
                  lui          s3, 405428
                  slti         s4, zero, 841
                  xori         zero, tp, -1025
                  sltiu        s10, s7, -534
                  srl          s1, ra, tp
                  srl          zero, s11, t3
                  sltu         a7, t2, t1
                  sll          a4, t2, a4
                  auipc        a1, 931094
                  and          t2, s0, s6
                  and          sp, s4, s3
                  xori         s4, a4, 1191
                  or           zero, s1, s4
                  lui          sp, 270765
                  and          t6, a6, s2
                  addi         a0, s8, 387
                  nop
                  xori         t0, s4, -2027
                  ori          s8, t0, 1534
                  xori         zero, s11, 1427
                  sub          s11, a5, a0
                  ori          s2, zero, 930
                  sub          s2, a6, tp
                  andi         a5, a4, 1531
                  addi         a3, a6, 450
                  xori         a5, s11, 269
                  lui          a6, 130446
                  srai         a6, a4, 16
                  addi         s1, s5, -1150
                  and          zero, ra, a1
                  srai         sp, t0, 14
                  xor          s4, a6, tp
                  andi         a1, a5, 114
                  addi         a7, s9, 1396
                  sll          s10, ra, t1
                  srl          a5, a1, ra
                  slli         s5, ra, 30
                  sltiu        s11, s8, 176
                  or           s11, a2, t1
                  slt          t0, t1, s8
                  sub          s1, s2, sp
                  lui          s1, 290668
                  slli         t2, t0, 14
                  sra          s4, a5, a2
                  lui          a2, 960135
                  andi         a4, s7, 259
                  sra          s10, s7, s4
                  slt          s2, s10, a5
                  auipc        s6, 1014896
                  sltu         s11, a4, a2
                  sltu         t1, t6, s1
                  andi         s1, s9, 971
                  srl          a7, ra, s6
                  ori          t5, zero, -374
                  xori         tp, s3, -875
                  xor          s11, gp, s10
                  slli         sp, s0, 31
                  addi         s3, ra, 1335
                  ori          gp, a5, 1876
                  and          a5, s3, s9
                  sub          t1, s11, s2
                  ori          s5, a3, -771
                  add          t5, s6, a6
                  nop
                  lui          a4, 989375
                  xor          t6, ra, a2
                  ori          a3, s5, -99
                  and          zero, s3, t3
                  srli         a1, s10, 4
                  add          a5, s3, t0
                  auipc        a0, 100915
                  and          t3, s8, t0
                  sll          a2, a6, s9
                  and          s2, zero, a1
                  slti         t2, s10, -1755
                  sltu         t5, a4, a4
                  xor          a6, s4, s4
                  xor          s10, t0, s11
                  lui          a0, 428883
                  slli         s6, a5, 16
                  slti         a5, sp, 626
                  srl          t5, t4, s5
                  sltu         s7, a0, s7
                  sra          s3, t2, t0
                  sub          a7, s7, t2
                  and          t0, a6, s11
                  andi         zero, a1, -694
                  sra          s11, s0, a2
                  sra          s11, a4, t2
                  auipc        a0, 496865
                  lui          t3, 53277
                  sub          s8, t6, s3
                  slt          t1, a7, t2
                  sll          sp, a7, s10
                  andi         a4, a0, 1455
                  auipc        sp, 474840
                  slt          a7, t6, tp
                  and          t2, a1, a4
                  lui          t6, 22844
                  ori          t3, s2, 1456
                  ori          a6, a0, 2035
                  sub          t1, s4, tp
                  sra          s1, t4, t4
                  xori         s1, t3, -372
                  srli         s6, s4, 14
                  ori          s10, t4, 621
                  lui          a5, 178131
                  addi         a7, s4, 541
                  auipc        s8, 480502
                  andi         s11, s1, -1171
                  auipc        a2, 437675
                  xor          s10, gp, a2
                  andi         a3, a3, 1506
                  srl          t5, s9, t0
                  sltiu        a5, a2, 1135
                  xori         t2, a1, 308
                  srl          s10, s2, s6
                  srai         s10, a1, 20
                  or           t0, s9, a0
                  andi         a4, s6, 1103
                  srai         zero, sp, 14
                  srai         ra, a1, 12
                  xori         s4, s1, -1905
                  auipc        s6, 337920
                  sltiu        s2, t3, -1014
                  srai         a1, a1, 18
                  srli         sp, s2, 17
                  sltiu        a7, s1, -485
                  sub          s6, s8, a6
                  srai         s1, s1, 11
                  sltu         zero, s3, s2
                  or           t0, ra, s8
                  xor          a7, a6, s9
                  xor          s5, ra, s10
                  xori         s11, t0, 1943
                  or           sp, t5, a6
                  sltiu        t1, a1, -1757
                  sra          zero, s5, s10
                  lui          t2, 351643
                  xori         t2, ra, -1302
                  nop
                  srai         s4, s5, 30
                  srai         s8, t1, 26
                  srli         a7, s6, 0
                  ori          s11, s9, -1992
                  nop
                  sub          a3, s6, s1
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a4, 0x80000000
                  li           s5, 0xffffffff
                  li           a5, 0xffffffff
                  li           a0, 0x0
                  li           s8, 0x80000000
                  li           a7, 0x0
                  li           ra, 0x80000000
                  li           s1, 0xffffffff
                  li           t3, 0x0
                  lui          a0, 408574
                  auipc        a7, 30022
                  add          s5, ra, a5
                  lui          s8, 317095
                  auipc        s8, 134842
                  auipc        a0, 607302
                  lui          ra, 822000
                  nop
                  sub          a4, s8, ra
                  addi         a4, t3, -245
                  add          s1, t3, s8
                  add          a0, a0, a5
                  sub          t3, a5, s5
                  auipc        t3, 143893
                  lui          a4, 392688
                  addi         a7, s1, 148
                  add          s5, t3, a7 #end riscv_int_numeric_corner_stream_6
                  slli         a0, t2, 30
                  slti         s8, gp, 1192
                  lui          zero, 674376
                  andi         t3, s5, -2034
                  or           s7, a1, s10
                  auipc        s11, 231431
                  add          a3, a7, t1
                  ori          a3, gp, -1256
                  srli         t5, sp, 23
                  xori         a7, t2, -832
                  nop
                  sra          a0, t2, zero
                  sltu         t6, t5, a1
                  sra          t3, s8, a5
                  andi         t1, s4, 1465
                  sltiu        zero, a7, -975
                  add          t2, s5, s3
                  slti         s5, a6, -1017
                  add          a4, s4, a7
                  lui          t0, 505414
                  srli         s5, s4, 1
                  srli         t2, zero, 10
                  srai         sp, a6, 8
                  and          ra, t1, ra
                  add          s1, s7, a1
                  sltiu        a2, a3, 1840
                  sltu         s10, t4, t1
                  sub          s11, s2, a7
                  slli         s11, a1, 0
                  sltu         s2, s10, a2
                  srl          t6, s8, a1
                  slli         s10, gp, 18
                  sra          gp, s8, ra
                  ori          s8, a2, 1825
                  and          s3, a1, sp
                  slt          t1, sp, t0
                  slti         a7, s8, 285
                  andi         ra, a4, -16
                  slli         a3, a3, 10
                  xor          s10, s4, t6
                  srai         s11, s7, 5
                  auipc        t3, 120310
                  ori          t3, t3, 1865
                  sltu         s11, a3, s7
                  sra          s2, gp, t5
                  slt          s11, a2, s8
                  srli         a2, gp, 22
                  sltiu        ra, s2, -1978
                  srai         a1, t1, 27
                  sra          t0, s5, a1
                  and          gp, t4, zero
                  srli         a4, s4, 25
                  and          a4, a6, s7
                  sltu         a6, a2, sp
                  and          s1, t5, a5
                  and          a3, s5, t4
                  sub          a5, s9, t1
                  slli         zero, t0, 13
                  addi         t5, t1, 804
                  ori          t0, a4, -1326
                  nop
                  addi         gp, ra, 407
                  slti         s10, a2, 1521
                  auipc        a6, 397206
                  slli         a1, a2, 22
                  sra          s8, a2, s10
                  sltu         t5, a6, s4
                  sltiu        s11, a3, 121
                  nop
                  nop
                  xor          a1, a2, s3
                  slt          a0, s6, s10
                  andi         a2, s6, 69
                  andi         t0, sp, 1081
                  slt          s5, s10, zero
                  srl          sp, t0, zero
                  auipc        s11, 993040
                  ori          s8, t1, -1449
                  add          zero, t6, s11
                  srai         t2, a2, 27
                  addi         ra, s7, -1645
                  or           a3, gp, s8
                  and          t0, t1, s11
                  srl          a1, s0, s8
                  sub          t5, s4, a1
                  or           a5, s8, a5
                  sltiu        ra, a1, 1641
                  sll          t0, a4, sp
                  slt          gp, t0, t5
                  or           a2, s0, s9
                  slti         s11, a1, -996
                  sltiu        s1, a4, 1423
                  lui          s3, 320508
                  and          a1, t1, gp
                  xori         s8, t2, 1480
                  xori         s6, s0, -1043
                  srl          a2, zero, s8
                  slli         zero, s4, 24
                  slt          t3, s6, t6
                  addi         s10, a1, 1560
                  sltu         t6, tp, t3
                  auipc        t3, 493791
                  lui          a5, 773135
                  nop
                  sub          sp, t0, s10
                  srli         s5, zero, 17
                  add          t0, s0, a1
                  sra          a2, t6, s10
                  or           t5, gp, a3
                  xor          a3, ra, s2
                  add          tp, s5, a2
                  addi         ra, a1, 1695
                  slli         a5, s6, 16
                  xor          s10, s0, a5
                  sll          s5, s9, t5
                  slt          s2, a3, ra
                  lui          a5, 709827
                  nop
                  slt          a5, t5, tp
                  sltiu        zero, a4, 1567
                  andi         s11, s11, 367
                  sltiu        t6, t4, 1028
                  srai         tp, a4, 5
                  slt          a4, zero, t1
                  sll          t2, s8, s0
                  nop
                  srli         s7, zero, 31
                  sub          s6, s8, s5
                  sltu         a5, s3, s9
                  sltu         a7, ra, t2
                  xori         sp, s2, 73
                  lui          a1, 586188
                  xor          a3, s1, s11
                  auipc        a5, 562950
                  xor          t6, t0, sp
                  andi         s5, s2, 1316
                  slli         s8, s8, 20
                  lui          s11, 562933
                  sll          s4, s11, zero
                  xori         s3, t2, 1040
                  slt          a6, a0, a7
                  slt          a5, t3, s2
                  sra          s2, sp, t6
                  slti         s5, t3, -833
                  slt          s6, t5, s5
                  srai         s10, gp, 22
                  add          gp, s2, t2
                  sltu         s3, s9, tp
                  ori          a4, t5, -1593
                  sll          a0, a0, a5
                  andi         a3, gp, -2027
                  and          s5, a1, a7
                  sra          s5, s8, t6
                  add          zero, t1, a5
                  srl          a6, t2, s0
                  nop
                  andi         s11, s6, 619
                  auipc        t0, 562018
                  andi         zero, t4, 698
                  lui          s4, 193843
                  xori         t2, tp, -1987
                  ori          t6, t1, -554
                  ori          tp, t4, -1587
                  slli         a2, a5, 27
                  xori         a7, a2, -1304
                  andi         ra, zero, 1705
                  sltiu        ra, tp, 246
                  add          sp, s11, s1
                  add          t5, s3, s8
                  slli         s8, a1, 29
                  xor          s4, s7, a1
                  slti         t5, t4, -1587
                  sll          t5, t2, s8
                  add          s10, s6, s7
                  xor          t0, s3, t3
                  sra          s7, t3, s9
                  lui          tp, 497922
                  andi         s3, t0, -1995
                  slli         s8, s8, 26
                  slli         s5, s9, 0
                  addi         t0, zero, 482
                  add          s7, t1, s5
                  or           t5, sp, s11
                  and          s8, a0, s4
                  sltiu        a3, ra, 307
                  sub          s1, s1, a2
                  xori         tp, s7, -1462
                  slti         gp, t0, -1798
                  add          t3, tp, s1
                  sra          t6, a6, t5
                  srli         sp, a3, 16
                  andi         a6, s11, -1084
                  sub          s6, s3, a2
                  sll          ra, s7, t2
                  sub          a1, t5, zero
                  and          t1, t5, s4
                  srli         gp, t5, 8
                  srl          a5, t0, t5
                  and          t5, sp, a1
                  sltu         a5, s6, s10
                  sub          tp, zero, s3
                  sra          t3, t3, s3
                  or           a0, gp, ra
                  srli         t0, t5, 30
                  slti         s8, s6, -494
                  andi         a2, s0, -416
                  srli         s3, s10, 29
                  or           s5, s5, a5
                  addi         s2, a3, -1335
                  sub          a0, s2, a5
                  slli         a1, zero, 8
                  auipc        gp, 713474
                  sltu         zero, t1, t6
                  slli         s4, a7, 26
                  slli         a1, ra, 29
                  or           s1, s8, a4
                  sub          s1, s7, s4
                  srl          s6, a5, s6
                  and          s8, t3, a3
                  sll          t6, t6, sp
                  sltu         s3, s6, s7
                  ori          a4, s2, 1360
                  ori          sp, t0, -1078
                  and          s4, t6, sp
                  lui          sp, 257039
                  addi         t0, tp, 791
                  xori         ra, zero, 1769
                  xori         s2, s7, -1779
                  sltiu        s10, t0, -158
                  and          a0, s0, a3
                  nop
                  addi         s8, a4, 1903
                  xor          a3, a0, tp
                  slt          s11, s1, s9
                  auipc        s8, 148378
                  add          s8, s2, s3
                  srli         a0, s7, 13
                  nop
                  sra          t3, a3, s4
                  sltu         a3, s8, a7
                  ori          a0, a2, 154
                  nop
                  add          a4, zero, a2
                  slli         t5, t3, 16
                  srli         s1, s8, 9
                  addi         tp, s8, -410
                  srl          t6, s11, t3
                  nop
                  xori         a5, a6, -1092
                  slt          gp, t4, t1
                  slti         t0, tp, -1639
                  slli         zero, tp, 3
                  xor          t3, s9, s11
                  auipc        s3, 1025013
                  srl          a1, s7, s3
                  lui          s8, 925500
                  and          t5, a4, s7
                  xor          ra, sp, a5
                  sltiu        s3, a5, 1654
                  slt          a7, a6, sp
                  sra          s8, t5, s6
                  srai         a4, gp, 12
                  srai         s5, a4, 1
                  and          t2, ra, t1
                  srl          sp, t6, t2
                  sll          a0, t2, gp
                  sltiu        s7, a0, 87
                  auipc        a4, 210011
                  srli         s11, sp, 1
                  sll          s7, s5, s2
                  ori          s10, a1, 405
                  sll          t2, s1, a0
                  ori          s8, s1, 1374
                  srl          t1, s6, s1
                  sltiu        ra, s6, 511
                  slti         gp, s2, -581
                  slti         s4, a2, 1380
                  slt          s10, s2, s6
                  srl          a1, s11, gp
                  sltiu        tp, zero, 405
                  add          a2, s6, t5
                  srli         s2, a4, 0
                  slli         s1, t0, 30
                  srl          zero, s11, a6
                  slt          s5, s6, s10
                  add          s6, s1, s4
                  lui          a0, 629377
                  addi         s1, zero, 1021
                  slli         a6, a1, 24
                  srli         gp, t6, 12
                  addi         zero, s2, 2025
                  addi         t2, t2, 426
                  and          s8, t3, s3
                  xor          s8, t6, s6
                  xor          tp, a0, a7
                  sra          s4, tp, a2
                  slti         gp, t5, -1133
                  sll          t6, s8, a5
                  slli         t0, s7, 5
                  add          a1, a5, s5
                  and          ra, s3, s7
                  sll          tp, ra, a2
                  sll          s5, a1, gp
                  sltiu        s7, t2, -944
                  lui          s10, 189247
                  nop
                  slli         s7, a1, 17
                  lui          a1, 40949
                  slt          s5, a6, a1
                  and          a7, t1, t2
                  sltiu        tp, t5, 238
                  or           a6, a4, a5
                  slt          s10, s9, t5
                  sll          t0, a3, tp
                  and          s5, t3, t4
                  or           s5, t6, ra
                  slt          a3, a5, s11
                  add          t6, s9, s1
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           ra, 0x0
                  li           a6, 0x80000000
                  li           gp, 0x0
                  li           a2, 0x0
                  li           s6, 0xc1e1b6ad
                  li           s10, 0x0
                  li           sp, 0xffffffff
                  li           s8, 0x80000000
                  li           t6, 0x80000000
                  lui          ra, 785314
                  sub          s3, a2, gp
                  sub          a6, t6, ra
                  addi         s8, a2, 340
                  nop
                  sub          s3, s10, s6
                  auipc        s10, 990532
                  add          ra, t6, ra
                  sub          t6, a2, t6
                  auipc        gp, 134267
                  addi         s6, s10, -1469
                  add          s8, t6, s3
                  addi         s8, a2, 770
                  sub          t6, s3, s10
                  auipc        t6, 724911
                  auipc        s3, 370962
                  add          s10, a6, gp
                  lui          t6, 876534
                  sub          s3, a2, sp
                  nop
                  add          sp, a2, s8
                  sub          s6, a2, sp
                  auipc        ra, 833825
                  addi         a2, s3, -1831 #end riscv_int_numeric_corner_stream_32
                  slti         a7, t4, -1802
                  andi         t1, sp, 1843
                  srli         a0, a5, 3
                  sll          s4, s5, t3
                  xor          t2, ra, zero
                  slli         a0, a3, 11
                  ori          a7, a4, -188
                  sltu         t1, zero, t2
                  sub          a6, s2, zero
                  and          sp, s6, s6
                  srai         s1, ra, 26
                  lui          a7, 852703
                  andi         s7, a0, -1436
                  xori         s7, t3, 251
                  lui          t6, 124200
                  sub          sp, s1, a4
                  lui          t3, 357772
                  lui          t2, 174826
                  nop
                  sra          ra, sp, s5
                  sll          a7, ra, s7
                  andi         zero, a4, 1174
                  lui          s3, 102758
                  srai         s10, a7, 5
                  sra          s1, a7, s2
                  sltiu        a7, s10, 1692
                  xor          s6, s6, s10
                  and          a7, t6, a2
                  srli         s1, a3, 22
                  sltiu        s7, a3, 621
                  slti         zero, a1, 217
                  srl          s1, s3, t0
                  auipc        a2, 415483
                  srl          t6, t2, sp
                  sra          a5, a1, a1
                  srai         s5, t5, 31
                  addi         a7, a0, -901
                  or           a0, sp, s10
                  sll          s1, s0, t4
                  sll          s3, s9, s5
                  ori          s11, gp, 1286
                  nop
                  sll          t0, sp, t1
                  sltu         s8, a4, s1
                  srai         t1, zero, 21
                  slt          tp, sp, t6
                  add          a3, gp, a5
                  auipc        s6, 505521
                  sll          s4, t5, s6
                  sltu         a0, a0, t0
                  sub          s3, t3, a7
                  xori         s11, t5, -1575
                  addi         s10, s7, -1358
                  sltu         a3, s5, a5
                  addi         a5, sp, -440
                  and          s1, t3, t1
                  sra          sp, t0, a7
                  srli         a4, a3, 10
                  slt          s5, s0, s6
                  or           a5, t1, a5
                  sltu         a2, a2, zero
                  sll          s11, s1, s5
                  slti         sp, s2, 1591
                  slt          tp, s0, a1
                  slt          a5, a6, t4
                  ori          s2, a7, -1806
                  slli         a3, a5, 9
                  sltiu        a5, s10, 272
                  ori          s2, s4, 1097
                  srai         s5, gp, 28
                  sra          t1, s10, s10
                  addi         t2, a4, -505
                  sub          t2, s9, a5
                  add          a2, s0, t1
                  and          s4, s2, t6
                  or           tp, t0, gp
                  slti         s3, s2, -648
                  slti         ra, gp, -871
                  sltu         a1, s10, a4
                  add          a1, a0, s0
                  lui          t5, 340101
                  srli         zero, s6, 8
                  sub          a1, a0, s7
                  add          t6, s10, sp
                  andi         a1, t0, 272
                  sltiu        s10, s1, 1727
                  srli         gp, a4, 17
                  ori          t1, s11, 1664
                  slt          t2, a4, tp
                  srli         a0, t3, 25
                  ori          s8, a4, 1508
                  slti         s7, s2, 1046
                  sltu         a6, s0, gp
                  srl          s10, a7, a1
                  sltiu        a5, sp, -903
                  srl          a7, gp, s8
                  sll          a2, t2, s6
                  slli         a2, s5, 22
                  srli         s6, t6, 22
                  and          t6, ra, t2
                  xori         a5, s10, 1048
                  xori         a2, a3, -1819
                  auipc        a2, 885682
                  ori          zero, gp, -1094
                  sra          s1, tp, t3
                  xori         s8, s5, -1914
                  ori          s8, a6, -589
                  lui          ra, 450124
                  xor          t2, tp, s8
                  slt          a3, t4, t1
                  or           a7, t1, s6
                  xor          t6, s0, t6
                  sltiu        a4, s0, -163
                  slli         a5, a7, 5
                  slli         t3, a0, 17
                  lui          gp, 301221
                  xor          a4, zero, a0
                  sltiu        t0, a5, -1562
                  andi         t6, tp, -2044
                  sra          t6, t5, s11
                  add          s10, t0, gp
                  andi         gp, s5, 1956
                  lui          t3, 96540
                  srai         s10, a5, 13
                  or           t5, t2, s2
                  srli         s3, tp, 13
                  sltu         a5, sp, s8
                  slt          tp, s1, s8
                  srl          s1, t3, a4
                  sltu         a7, s8, s5
                  sra          a1, a0, s9
                  sltu         s2, a7, s9
                  srli         s7, tp, 30
                  srli         t3, t6, 19
                  srli         s1, s2, 8
                  andi         s11, a3, -1340
                  add          s6, a7, s7
                  sltiu        s6, s6, -1356
                  xor          a3, t6, t4
                  addi         tp, a1, -1281
                  sltiu        s4, s6, 563
                  sltu         s11, a0, t6
                  auipc        s8, 322624
                  xori         a3, t3, -1657
                  ori          a2, s11, -1085
                  slli         t6, s10, 30
                  or           s8, s10, s5
                  lui          s8, 993798
                  slli         t2, zero, 6
                  srl          a2, t2, gp
                  and          s5, t3, t1
                  srl          s3, t3, a4
                  slti         a1, t1, -774
                  nop
                  lui          s5, 860410
                  xori         s11, t3, -1297
                  addi         t1, s10, -513
                  sltiu        s11, a1, -519
                  slt          a5, s1, ra
                  add          t6, a7, a7
                  slti         s1, s0, 581
                  sub          a2, s1, ra
                  sub          t5, s5, a7
                  srli         s6, s11, 18
                  or           a0, t5, s9
                  sub          s6, a2, a5
                  ori          s7, sp, 1322
                  srl          t3, t1, s7
                  auipc        s1, 666292
                  addi         a0, s10, 157
                  slli         a2, a4, 8
                  slti         sp, sp, 350
                  or           zero, s11, t2
                  slli         tp, t5, 19
                  auipc        a7, 889745
                  xor          sp, a5, a7
                  andi         s8, t1, 1062
                  nop
                  nop
                  sll          t6, s9, s0
                  slt          s2, s3, s1
                  or           tp, a5, s5
                  ori          gp, a4, -916
                  sltiu        s11, a0, -1128
                  auipc        s6, 673401
                  sub          s6, s8, s4
                  sub          a0, s9, t0
                  add          a0, s4, gp
                  srl          a7, t1, tp
                  srai         s7, s9, 7
                  xori         t5, t0, -247
                  auipc        t6, 260472
                  sra          s10, sp, sp
                  srai         s4, s9, 3
                  slli         t0, ra, 1
                  auipc        s2, 765733
                  sll          s4, t5, s2
                  addi         gp, s1, 1676
                  xori         a3, tp, -633
                  slti         gp, a6, -497
                  sub          a2, s3, s1
                  slli         s4, ra, 2
                  slli         a2, a0, 13
                  or           a4, t5, s5
                  srai         tp, a5, 3
                  add          s11, s10, sp
                  sra          s10, zero, sp
                  srl          sp, t0, s0
                  slti         s2, gp, -1482
                  ori          gp, sp, -475
                  auipc        t1, 684015
                  sll          s3, a5, s3
                  xori         a2, t5, -845
                  sll          ra, a1, a0
                  xor          t0, s2, s1
                  sub          s5, s0, t4
                  srl          a2, sp, tp
                  srl          a7, s8, a7
                  nop
                  slt          a1, s6, s9
                  and          tp, a3, a3
                  add          a4, s2, a4
                  ori          s8, a1, -821
                  ori          a6, gp, -1724
                  sra          s8, t5, s5
                  sltiu        s10, s1, -63
                  sll          s8, s1, t0
                  xor          a2, t3, a0
                  sub          t5, a5, a4
                  slli         a2, ra, 26
                  slt          ra, s11, t4
                  sltu         s1, s5, a0
                  auipc        s2, 93793
                  and          ra, t3, t1
                  sltiu        zero, s0, -1041
                  srli         s2, s6, 26
                  sltiu        t3, t0, 636
                  andi         ra, t1, 117
                  nop
                  nop
                  sub          zero, s0, tp
                  and          t5, t4, s8
                  add          a0, tp, s11
                  lui          a7, 785259
                  slti         s5, t5, -1102
                  sltiu        a2, t1, 1765
                  sltu         s1, s1, s1
                  srli         a0, t2, 18
                  andi         a7, s9, -1821
                  auipc        s10, 187972
                  xor          ra, tp, s11
                  nop
                  srli         a2, s2, 0
                  andi         t6, s1, 838
                  andi         s11, gp, 1651
                  xor          a5, t0, s6
                  srl          zero, t5, t6
                  sra          a7, s10, a7
                  add          s10, a7, s8
                  xori         s11, s7, 1367
                  slti         s6, t0, -1004
                  add          s5, a6, s10
                  sll          s6, s8, s10
                  sltiu        zero, sp, -1770
                  sub          s7, t0, a5
                  ori          s2, t1, -316
                  xori         s8, t5, 1720
                  srai         a3, tp, 4
                  sub          s3, s0, s6
                  nop
                  sub          a0, gp, s4
                  addi         t5, t0, -433
                  add          a4, s10, s5
                  slli         s2, zero, 4
                  slli         sp, ra, 25
                  slli         s7, a6, 24
                  sub          a3, s8, s5
                  slli         a5, t6, 24
                  slti         t5, s9, -1791
                  ori          zero, s11, -1629
                  srli         t5, s3, 23
                  ori          a7, a3, 1317
                  slt          a3, s2, t4
                  xor          s4, sp, t6
                  auipc        s5, 405723
                  sltu         s8, s10, t2
                  lui          t6, 362964
                  lui          s8, 454586
                  slli         a4, s5, 15
                  lui          t6, 719206
                  nop
                  srai         s8, t2, 5
                  srli         t5, a2, 25
                  auipc        s8, 685231
                  srli         s10, t6, 9
                  andi         s7, t5, 2010
                  add          ra, sp, t6
                  addi         t3, s7, -1462
                  nop
                  sll          t5, tp, a3
                  sub          tp, t3, t0
                  slli         s8, t3, 5
                  addi         s1, a6, -182
                  srli         s11, s8, 30
                  sll          s2, a1, s2
                  and          tp, ra, t6
                  or           t2, a0, t1
                  ori          ra, s0, -495
                  slt          t6, gp, s3
                  add          s7, t1, s0
                  srli         t6, t5, 3
                  slt          a7, tp, a7
                  or           s8, a1, t4
                  andi         t0, ra, -917
                  slt          s1, ra, a0
                  srli         s6, a1, 10
                  slli         sp, t5, 14
                  or           s8, tp, a0
                  slli         a7, zero, 18
                  sub          a4, t2, a7
                  sll          a3, tp, t5
                  addi         a3, t3, 541
                  lui          a6, 20721
                  slli         a0, gp, 23
                  slti         s7, t0, -1358
                  lui          s7, 156636
                  sltu         s2, s4, tp
                  lui          t6, 433995
                  slt          s8, a2, t4
                  sltu         sp, t1, s9
                  slli         s4, t0, 14
                  andi         s5, a7, 1232
                  slti         a6, s5, -1823
                  auipc        zero, 423468
                  sub          a5, a1, t0
                  sltu         s6, s10, s10
                  andi         s4, a2, 1980
                  srli         zero, t1, 21
                  lui          t0, 1021478
                  or           gp, a7, a3
                  xori         t5, t2, -1331
                  or           s1, s9, s8
                  sltu         tp, s4, a1
                  xor          s3, t0, a0
                  srl          a2, s1, a0
                  srl          a3, s6, s11
                  sltiu        t1, zero, -791
                  addi         s7, gp, -1197
                  slli         a7, t0, 21
                  xori         gp, t3, -296
                  sll          t0, s4, t4
                  xor          a5, s0, s7
                  xori         a0, sp, 978
                  xori         sp, tp, -1886
                  or           s1, a4, t3
                  xori         a2, t6, -546
                  xori         tp, s6, -1633
                  addi         s5, t5, 902
                  sub          s11, s4, s11
                  andi         tp, ra, -254
                  andi         s2, t4, -243
                  addi         a5, s7, 594
                  sltiu        gp, t0, 794
                  srli         a5, sp, 28
                  xor          t2, t3, t3
                  sltu         s7, a4, tp
                  or           t2, t3, t4
                  slli         s8, s2, 25
                  auipc        sp, 176514
                  lui          gp, 953528
                  sub          s7, t0, sp
                  slti         t5, t2, -30
                  add          s2, s1, gp
                  lui          a3, 155468
                  srai         s11, s9, 24
                  add          a4, s5, s11
                  slti         t5, a6, 1130
                  or           s5, a6, a7
                  and          a1, t3, t3
                  add          s1, s6, s9
                  addi         t3, s1, 1800
                  lui          zero, 279700
                  srai         a5, s9, 2
                  or           s1, s10, tp
                  and          s5, a2, a1
                  srl          t3, s9, s3
                  srai         s1, s1, 3
                  or           t0, a4, ra
                  nop
                  xor          sp, a5, s11
                  and          a6, t2, s5
                  add          s10, s2, s4
                  lui          t6, 256009
                  addi         s7, t6, -1702
                  or           s3, s8, s11
                  srai         t2, t2, 3
                  ori          t0, t2, -1210
                  xori         s2, s0, 1751
                  auipc        t1, 973626
                  sub          zero, tp, a6
                  addi         gp, a6, 406
                  add          s11, t6, a6
                  auipc        ra, 408983
                  slti         s11, s2, 1293
                  sub          t6, s8, t2
                  srai         t1, a5, 11
                  andi         s3, a2, 656
                  nop
                  sll          sp, s10, s3
                  slli         ra, gp, 28
                  addi         t6, t0, -1142
                  sra          t2, a5, tp
                  xori         s2, s4, -212
                  slt          a2, a1, gp
                  srli         a4, t2, 30
                  slti         s8, gp, -994
                  slt          s1, a7, a0
                  lui          a2, 460249
                  or           s7, t4, t2
                  srli         s11, s7, 9
                  or           a6, t5, sp
                  sltiu        s10, s11, 43
                  addi         s10, t5, 718
                  srl          s10, t2, s5
                  andi         t0, s6, -77
                  sltiu        s1, t6, 684
                  slti         s11, s10, 439
                  nop
                  add          s4, s4, sp
                  sll          a2, s3, zero
                  srl          t0, sp, t1
                  sltiu        s7, s10, -933
                  lui          t5, 712857
                  sltiu        a4, s7, -1060
                  srai         t0, t6, 28
                  auipc        s5, 881870
                  lui          s6, 539534
                  srli         a3, s1, 11
                  srli         a1, a6, 13
                  srl          s3, t5, s1
                  or           a0, a6, t0
                  xori         a2, s1, -828
                  sltiu        ra, t0, -848
                  and          a0, s8, s11
                  srl          t6, a0, s11
                  slti         s1, s6, -246
                  srl          t1, s4, a1
                  add          zero, t6, t2
                  andi         ra, a0, -855
                  sll          s10, a3, s9
                  sra          a7, s7, s11
                  andi         s1, tp, 379
                  srli         s5, t0, 12
                  lui          ra, 476497
                  sra          t6, a5, s4
                  addi         a4, a2, 1078
                  ori          t3, s4, 227
                  xor          zero, s1, t6
                  sltu         t6, zero, s10
                  srai         t3, t2, 15
                  sll          s2, a0, t5
                  slti         a0, s7, 704
                  sll          a0, s11, t0
                  srl          s10, t3, tp
                  lui          a0, 351058
                  xori         a3, t0, -1483
                  sll          s6, s0, a0
                  xori         a3, zero, 1570
                  nop
                  ori          a4, a7, -1265
                  srl          a4, s0, s7
                  xori         a7, zero, 952
                  srl          s8, s9, t6
                  sltu         s6, ra, t6
                  auipc        s1, 977205
                  lui          t0, 157757
                  auipc        s10, 698321
                  sub          t2, a5, s1
                  ori          a2, tp, 1396
                  addi         tp, a2, -929
                  srai         s6, a6, 0
                  and          s4, s0, s11
                  sra          t1, s0, s5
                  lui          t1, 641906
                  sll          zero, t4, gp
                  srl          s3, gp, gp
                  and          s1, zero, t5
                  lui          a1, 955921
                  sltu         a2, a3, t4
                  xor          t2, a0, s6
                  slti         a2, t5, 2020
                  slt          s3, a2, t4
                  sra          tp, s0, s5
                  srli         zero, sp, 13
                  slli         a3, ra, 25
                  or           s1, t0, t3
                  srli         a2, zero, 16
                  and          t5, s5, s4
                  srli         s6, a0, 5
                  lui          t6, 316130
                  lui          t5, 221840
                  srai         tp, s11, 31
                  nop
                  ori          s11, t2, 602
                  srl          t6, a0, tp
                  and          a4, s9, t0
                  auipc        ra, 870827
                  sltu         s7, t6, a6
                  lui          a1, 872010
                  xor          s1, a5, s10
                  auipc        s8, 606163
                  srli         tp, a0, 8
                  sltu         tp, s2, t3
                  sub          a4, t0, t0
                  xor          a0, s1, t0
                  auipc        gp, 532484
                  add          s10, gp, s5
                  addi         sp, a1, -1179
                  or           s11, t4, gp
                  slli         a6, t2, 2
                  xor          t1, tp, t1
                  andi         a2, zero, 476
                  xori         s7, s4, 1839
                  sltu         a7, s4, ra
                  add          a2, t4, sp
                  addi         s6, s9, 729
                  nop
                  sra          a5, gp, a1
                  sltiu        t1, ra, 891
                  nop
                  xori         s10, t4, -1695
                  slli         s5, a5, 8
                  slti         s11, a0, -1697
                  xori         sp, s11, -655
                  andi         tp, s0, -1843
                  srai         t1, s1, 23
                  addi         s8, a3, -1516
                  andi         s5, s11, -317
                  lui          a5, 263424
                  lui          gp, 190266
                  andi         a5, t5, -311
                  nop
                  sra          s3, ra, t5
                  slt          s1, a4, s9
                  ori          sp, a6, -1793
                  sll          t2, a0, s11
                  andi         zero, t3, 1586
                  and          sp, a4, t5
                  srai         s3, a2, 16
                  xori         gp, a4, -1925
                  addi         a5, t6, 296
                  ori          tp, a5, -595
                  and          a3, s6, a1
                  auipc        s7, 491487
                  sll          s8, zero, tp
                  nop
                  andi         zero, s5, -1056
                  and          a3, s2, a4
                  lui          t6, 625581
                  andi         zero, gp, -418
                  nop
                  slli         s8, s10, 24
                  nop
                  andi         s6, a4, -1995
                  slt          zero, s0, sp
                  andi         a3, s11, 161
                  sltiu        t0, t3, 965
                  slti         t3, s11, 418
                  xori         a0, a7, -45
                  slli         s6, a2, 5
                  srai         s4, t5, 4
                  xor          zero, zero, t2
                  lui          tp, 29098
                  srai         t3, ra, 12
                  sra          a7, s5, s0
                  srli         a7, s10, 10
                  and          a7, t3, t4
                  srai         a5, t5, 0
                  auipc        s7, 25491
                  srl          s4, s6, s9
                  sra          s5, a5, s8
                  slli         s10, t4, 22
                  lui          a5, 173963
                  slt          gp, t0, a0
                  srl          s2, s9, s2
                  ori          gp, gp, -1750
                  srl          s1, s6, s5
                  and          s11, t5, t0
                  sra          s11, a4, s11
                  lui          a5, 405799
                  sltiu        s8, s6, -189
                  addi         s1, s7, 753
                  lui          s6, 905743
                  sra          t3, t0, s5
                  sltu         sp, t3, a4
                  slt          t3, a3, s4
                  lui          a1, 123808
                  sltiu        t6, zero, 1145
                  and          a4, a5, a2
                  sra          t0, a5, t4
                  nop
                  add          a6, s1, a4
                  xori         s2, sp, 1067
                  and          a6, s7, s11
                  add          a3, zero, s10
                  slt          s10, a1, s8
                  srli         a2, t1, 17
                  xor          a0, a1, tp
                  sltiu        tp, a7, 1199
                  srl          s6, t6, t1
                  srai         t5, a7, 9
                  or           t0, s2, s5
                  andi         s8, sp, 1669
                  slt          s5, s0, a0
                  andi         t2, s2, -1712
                  andi         s2, s0, -882
                  srli         t0, s0, 4
                  sll          s4, t6, a6
                  sltiu        zero, s1, 1043
                  srl          tp, s5, t0
                  or           s5, a3, s8
                  sra          s4, a6, s4
                  slti         t6, ra, 1444
                  srl          s11, s6, s1
                  sll          ra, s2, a0
                  addi         t6, s10, 775
                  sra          a4, t0, a6
                  srli         s8, t4, 17
                  auipc        t5, 316803
                  sub          t1, t1, a3
                  addi         s7, tp, 1662
                  and          s10, a0, s2
                  slli         s11, s0, 8
                  add          s8, s9, s3
                  sltu         t1, s8, s6
                  lui          t6, 161007
                  sub          tp, tp, s11
                  and          s2, zero, s4
                  add          s10, s10, s3
                  xori         s2, t2, -1544
                  and          zero, s5, t4
                  or           a6, t2, s8
                  andi         a0, s1, -127
                  sra          t0, s5, t2
                  sltu         s2, s1, a1
                  srli         a7, s10, 4
                  slti         s4, a5, 1055
                  addi         s3, s11, 39
                  sub          t2, zero, gp
                  and          gp, a7, a5
                  srl          gp, t3, t2
                  lui          s11, 199569
                  srli         s11, s5, 2
                  lui          s11, 132777
                  nop
                  srl          a0, s11, ra
                  sub          tp, gp, a0
                  auipc        a3, 853054
                  andi         s8, s9, -1511
                  slt          s3, a1, ra
                  sub          sp, a2, s10
                  addi         s8, t6, 644
                  srai         a5, t0, 10
                  xor          s1, a6, t1
                  srli         zero, t5, 26
                  add          t1, s0, zero
                  auipc        a1, 568992
                  sltu         a2, a1, s1
                  auipc        t2, 29642
                  nop
                  sltu         a3, s1, a4
                  andi         t6, s11, -721
                  slli         t1, gp, 29
                  nop
                  ori          s1, tp, 1974
                  sll          a2, gp, a0
                  ori          s7, a5, 1890
                  sltu         s6, gp, t5
                  slti         a1, t3, -1173
                  ori          t2, a7, -1991
                  xori         a7, s8, -530
                  sll          t5, zero, s5
                  xor          t6, s3, a0
                  xor          a7, s9, ra
                  addi         a7, t1, -540
                  sll          zero, a6, s1
                  sra          t3, ra, s10
                  slti         a3, a4, -1589
                  lui          sp, 620772
                  addi         t5, a7, -1611
                  sltiu        s11, s2, -701
                  slt          sp, sp, s2
                  ori          s3, a6, -169
                  sra          s11, t1, t0
                  sltiu        s1, t3, -806
                  srai         s2, tp, 28
                  sub          a0, tp, t2
                  slli         t6, a4, 19
                  auipc        a5, 117932
                  sltiu        t5, t0, -1079
                  sltu         a1, sp, s5
                  addi         a1, t2, 1662
                  srl          a7, s8, a0
                  addi         a3, a3, 851
                  xori         s7, t1, -1051
                  slti         s11, sp, -361
                  sltu         s1, s0, t6
                  add          a5, t2, s9
                  or           t3, s8, s6
                  slli         a3, a4, 5
                  slt          a3, s5, a6
                  xori         s6, t6, -1590
                  xori         s11, gp, 1657
                  srli         s4, a5, 1
                  or           s8, t6, a6
                  sll          gp, t6, a2
                  sll          a6, zero, s1
                  slt          a3, s11, s1
                  lui          t0, 5607
                  sltu         a0, a5, s4
                  srai         s1, a2, 16
                  sra          s3, a1, t0
                  andi         a2, t4, 621
                  srl          t5, a4, s3
                  or           a3, a7, s5
                  nop
                  sltu         t5, s0, a5
                  slli         s4, s0, 23
                  lui          s4, 543249
                  nop
                  auipc        ra, 712694
                  sltu         a3, gp, s7
                  slti         a7, s2, 881
                  or           t3, sp, s0
                  xori         gp, a0, 1355
                  xori         s7, ra, -301
                  slt          a6, s10, a3
                  add          s10, t5, s2
                  slti         gp, s10, -737
                  or           s8, ra, s7
                  sub          s1, s9, ra
                  sll          s2, s4, s3
                  sltiu        a6, s6, -374
                  add          s1, s4, s10
                  xor          t1, ra, a3
                  srl          sp, s11, t0
                  sra          a4, tp, t0
                  nop
                  srl          a7, a4, t2
                  slti         s1, a4, 1038
                  and          a4, a4, gp
                  and          a6, t5, s9
                  srli         s2, a4, 5
                  lui          s6, 463078
                  slti         ra, s10, 1179
                  add          t0, a6, gp
                  sub          t6, s11, s7
                  auipc        s2, 971212
                  srai         a2, s7, 19
                  srl          s3, s4, gp
                  xori         a5, ra, 515
                  nop
                  addi         t6, t4, -1234
                  addi         a3, a4, -1351
                  xori         t6, s3, 730
                  sra          a3, s0, sp
                  sub          a2, s2, a5
                  sra          s10, zero, ra
                  sra          s6, a2, s2
                  ori          gp, a1, 1447
                  addi         t0, s6, 623
                  lui          a4, 930522
                  nop
                  srl          t3, s9, s0
                  sltiu        t0, s5, 302
                  sra          a2, s10, s3
                  lui          t3, 742139
                  srl          s4, s0, t0
                  and          gp, s2, t3
                  xor          s4, a1, gp
                  ori          a1, s5, -1624
                  sub          a5, t5, sp
                  slt          s4, t5, a7
                  and          t6, t6, a6
                  andi         s3, s0, -322
                  srai         s8, a0, 11
                  ori          s5, s5, 267
                  slt          ra, s8, ra
                  sra          a2, a3, gp
                  ori          ra, a4, -1851
                  addi         t6, gp, -899
                  add          a0, s1, s2
                  auipc        a7, 183734
                  auipc        a7, 919770
                  srl          t5, s1, t3
                  add          a7, s5, s4
                  sll          s8, a3, t6
                  or           a0, a0, a4
                  sra          sp, t6, gp
                  slt          a0, s4, t4
                  srl          gp, s9, a4
                  srli         tp, a4, 5
                  sll          a1, gp, t1
                  sltu         s1, a7, t4
                  xori         s8, s9, 1256
                  andi         a1, a4, -9
                  xori         a6, s7, 71
                  sltiu        t6, s5, 106
                  or           t5, s7, tp
                  and          t3, s1, t0
                  andi         s11, ra, -60
                  and          s11, a4, s7
                  andi         t2, gp, -757
                  xori         s11, t4, 819
                  ori          s11, s5, 415
                  slt          t1, a3, a0
                  srl          s5, t2, a3
                  srli         t3, a6, 20
                  sra          s3, s4, a4
                  nop
                  auipc        t5, 595277
                  sltiu        s11, t5, 594
                  addi         s1, t6, -1580
                  sra          t2, t3, s10
                  or           gp, a3, s1
                  addi         ra, s6, 363
                  sll          s1, s8, gp
                  add          t3, t3, t6
                  slti         s10, t6, 446
                  add          s8, gp, zero
                  srai         a7, a7, 23
                  add          t5, s11, s9
                  slt          s4, t3, a1
                  slli         t3, a1, 16
                  xor          zero, s1, t5
                  sra          s3, s9, a5
                  sltu         a3, s10, t4
                  or           t3, t3, t3
                  sltiu        s10, a6, 698
                  srli         t1, a0, 12
                  auipc        t3, 682782
                  xori         a6, s11, -1878
                  sltiu        t0, sp, -812
                  slt          t6, s1, zero
                  srai         gp, t0, 28
                  slli         ra, s9, 15
                  sltiu        s7, s1, 692
                  sub          t1, s0, sp
                  auipc        s8, 696983
                  slti         sp, s9, -1097
                  srai         gp, s0, 25
                  and          sp, t2, tp
                  slti         a5, t6, -71
                  ori          s3, a6, 1964
                  srai         t3, sp, 26
                  srli         s2, a7, 7
                  slt          a2, t3, s3
                  sll          a4, t1, t2
                  lui          a4, 739113
                  slt          s3, a5, s8
                  srl          a1, s4, a2
                  ori          s8, ra, 200
                  sll          t6, t4, s11
                  sltu         s3, t4, t1
                  sra          a5, s7, a7
                  srl          a0, s1, a5
                  and          gp, s8, sp
                  srai         s4, t1, 16
                  slt          a1, s3, a2
                  add          gp, s11, s4
                  auipc        t0, 293830
                  addi         t6, s3, -118
                  ori          s2, a2, 841
                  sra          gp, a3, a0
                  srai         t3, gp, 1
                  sub          t3, t4, zero
                  slti         gp, a1, -313
                  sll          s7, t0, a4
                  nop
                  sltu         s1, a2, s6
                  lui          s10, 202622
                  ori          gp, a7, 778
                  sltiu        a6, s4, 1343
                  and          a7, gp, s8
                  nop
                  and          s11, a2, a4
                  sltu         s7, gp, s11
                  srai         s10, t4, 24
                  srai         s7, s0, 4
                  sltu         s7, s5, a3
                  auipc        a5, 1023881
                  add          t3, s5, a1
                  sll          s1, a4, s7
                  sltiu        a2, a4, -1114
                  xori         t3, sp, 1816
                  srli         s3, s11, 17
                  auipc        s8, 233565
                  and          a1, s5, s0
                  add          s2, s4, s8
                  auipc        t2, 142624
                  sub          a7, gp, s7
                  add          a1, t5, tp
                  or           s1, tp, s10
                  auipc        s4, 515473
                  slli         sp, t4, 10
                  addi         s1, a2, -320
                  nop
                  or           s8, s3, s10
                  srl          a2, a7, a3
                  auipc        gp, 741655
                  auipc        t3, 774388
                  nop
                  sltu         a6, s1, zero
                  slli         a7, ra, 4
                  auipc        s10, 446703
                  auipc        s4, 262421
                  srli         t5, s5, 15
                  lui          t0, 477197
                  or           s6, s5, sp
                  ori          zero, sp, 1840
                  xori         s1, s9, 1596
                  sll          tp, s1, t0
                  andi         a1, s1, -1463
                  andi         a6, gp, -1164
                  or           s4, s8, a6
                  slli         zero, s0, 21
                  srl          a3, a6, gp
                  xor          a4, s3, s5
                  sll          t3, t1, zero
                  sub          t2, s7, s9
                  andi         s4, t4, 782
                  sll          s6, a0, zero
                  addi         zero, s11, 1969
                  sll          s10, a6, s6
                  add          s6, t0, sp
                  srl          s11, t1, s8
                  srli         gp, ra, 16
                  ori          a6, t6, -1375
                  sra          a2, t5, gp
                  sra          s1, s10, t5
                  xor          s5, s10, a7
                  lui          sp, 710462
                  slli         s3, s10, 2
                  addi         s11, a2, -265
                  xor          a5, zero, gp
                  lui          tp, 629901
                  sub          t6, zero, t6
                  or           t0, a0, zero
                  slt          t0, s5, a4
                  ori          a7, s5, -630
                  xor          t2, s7, a4
                  sub          t0, t0, s6
                  xori         a3, t2, -726
                  sll          t6, ra, s10
                  addi         s4, gp, 1967
                  sub          s4, sp, s1
                  nop
                  srai         zero, s7, 30
                  srli         s6, s0, 15
                  srai         a7, t5, 26
                  sltu         s3, a2, s4
                  addi         a7, a1, -799
                  sltiu        s11, s5, 186
                  add          t0, t0, t6
                  sra          s2, sp, a1
                  and          sp, t5, a6
                  srli         a6, s3, 9
                  sll          t0, t5, ra
                  addi         t3, s6, 1188
                  nop
                  slti         s8, s2, 833
                  andi         s3, a5, -475
                  sll          t5, a5, s3
                  slt          a5, a1, t5
                  srl          a7, s0, s7
                  lui          s4, 879732
                  addi         s5, ra, 257
                  srai         a2, a6, 8
                  auipc        s3, 472094
                  slt          a7, s8, zero
                  addi         s11, zero, -538
                  sll          a7, zero, a3
                  xori         s10, tp, -871
                  ori          t6, a1, 864
                  xori         a5, a5, 490
                  srl          tp, s5, s7
                  sll          t6, t5, t4
                  or           s2, sp, s2
                  sra          a0, t4, a6
                  add          a7, t5, t5
                  sltu         s5, a2, a6
                  sltiu        s2, gp, -496
                  and          t1, t6, t5
                  sll          s8, a7, a2
                  sub          a3, s11, gp
                  or           s7, sp, t2
                  sub          ra, t6, s4
                  lui          ra, 688493
                  slti         gp, t1, 648
                  sra          a3, s5, t2
                  xori         t6, tp, -910
                  andi         s1, s8, -1771
                  andi         sp, sp, 151
                  andi         s7, a2, -531
                  and          t0, a0, s5
                  addi         ra, a7, -204
                  sub          t0, t3, t1
                  auipc        s7, 798483
                  add          s2, t6, a1
                  nop
                  lui          t0, 782404
                  nop
                  addi         t0, s8, -992
                  slti         a0, a3, 1102
                  auipc        t2, 412537
                  xor          s10, s5, s6
                  slti         t2, t0, -1276
                  xor          a7, s2, t0
                  sub          t0, s8, zero
                  sub          s3, tp, s5
                  sltiu        tp, s2, 1376
                  nop
                  xor          a7, s10, t1
                  srli         s4, t4, 16
                  srai         a6, s10, 16
                  sltu         sp, s8, s1
                  srai         t3, a1, 1
                  srl          a4, t4, t1
                  srl          gp, t4, t2
                  srl          a4, s8, s4
                  srl          tp, t5, s3
                  auipc        t3, 333757
                  lui          a3, 625160
                  andi         t1, t1, 332
                  xor          s11, a0, s7
                  slli         t6, a4, 3
                  slli         a7, s4, 31
                  srai         ra, s11, 30
                  lui          a5, 397668
                  sltiu        a3, a3, -1216
                  slt          tp, a0, a7
                  srl          a3, s8, s5
                  and          t0, s6, a7
                  ori          t3, s2, 224
                  and          a4, s0, a0
                  add          a0, s8, a1
                  xori         s7, s0, 865
                  addi         tp, s6, 9
                  slt          a2, s2, gp
                  slt          a0, zero, zero
                  auipc        s6, 559309
                  sltiu        s2, s2, 981
                  slti         t1, s1, 58
                  srli         a0, a5, 10
                  sltiu        sp, s9, -1962
                  slli         a2, t0, 11
                  slti         t1, s3, -184
                  addi         s2, a4, 1046
                  ori          a2, a1, 60
                  sub          s6, t6, gp
                  sub          ra, t0, t6
                  sltu         t3, zero, s0
                  sra          s3, gp, t6
                  sra          s3, s2, t4
                  auipc        s10, 440901
                  slli         s8, a2, 27
                  ori          s11, s4, 665
                  and          tp, s11, s3
                  xori         s4, a2, -1157
                  andi         t6, s10, 1847
                  sltu         t5, t1, gp
                  xor          s1, a2, s6
                  auipc        s1, 703217
                  srl          a3, t6, a0
                  nop
                  sltu         s3, a5, a6
                  lui          a6, 28485
                  nop
                  sll          t1, a4, s6
                  slli         s10, s0, 28
                  lui          a0, 482000
                  sll          t6, a6, a3
                  ori          zero, a5, 82
                  srai         t6, t4, 24
                  xor          a5, tp, a4
                  sll          zero, s8, s1
                  sll          a1, a3, t0
                  add          s10, ra, t2
                  andi         sp, ra, -1576
                  nop
                  sltu         gp, s8, a6
                  slt          s11, a7, a3
                  slli         t6, s6, 27
                  xor          s11, s5, a5
                  lui          s3, 856561
                  xori         s4, s8, 708
                  addi         a4, t4, -1764
                  sra          t3, a3, s6
                  or           s1, a6, t3
                  slt          s2, t3, t3
                  nop
                  sltiu        s1, t3, 867
                  slt          s6, s4, sp
                  slli         s4, a0, 25
                  and          s4, t6, a4
                  srl          s4, s3, a0
                  sra          a2, sp, a1
                  srai         s1, s1, 9
                  lui          tp, 291579
                  srl          t3, s7, zero
                  xori         ra, t3, -1851
                  slt          s5, t0, gp
                  sub          t5, ra, s10
                  andi         a5, t1, -544
                  ori          a6, s9, -430
                  xori         s11, s11, 584
                  sub          a3, s4, s3
                  slt          s7, a7, gp
                  slli         s11, s5, 1
                  auipc        s8, 465641
                  andi         s10, s6, 998
                  sltu         s8, s3, s7
                  lui          t1, 1037984
                  nop
                  add          a3, s11, t4
                  sra          a5, s8, s2
                  sll          gp, s7, gp
                  xor          t3, zero, gp
                  auipc        s3, 551488
                  slt          s4, gp, a6
                  srai         t3, a1, 12
                  andi         a4, s5, 992
                  sll          s2, t6, t6
                  slt          s10, gp, a1
                  auipc        t5, 775447
                  sra          a1, tp, a1
                  slt          s1, t6, sp
                  srl          t5, s1, ra
                  sltu         a0, s3, a4
                  sltiu        a2, zero, 1793
                  sltu         t2, s7, s2
                  nop
                  sub          s11, t2, s5
                  sra          s8, s0, a6
                  srli         s11, a7, 12
                  xor          a5, a0, a0
                  sub          s10, s11, t1
                  xor          a4, t4, gp
                  addi         a7, t3, -1213
                  sltiu        s5, t1, 1257
                  sltu         t5, s7, s4
                  srl          a0, a6, s0
                  sub          a3, s2, s1
                  or           s11, a0, a7
                  sltu         s3, a2, s2
                  or           a3, s10, t5
                  srli         s3, s4, 12
                  srai         t6, s4, 12
                  srai         s7, t4, 8
                  srli         t3, s8, 24
                  sltu         t0, s2, s11
                  sub          s8, a6, t0
                  addi         t3, zero, 1023
                  srl          s6, s5, a3
                  sll          a2, sp, s4
                  srli         a5, s9, 8
                  addi         s1, t6, 1057
                  lui          t0, 697515
                  sltu         s8, s2, ra
                  and          ra, t0, s5
                  slt          s3, s5, s6
                  sltu         s6, t4, a7
                  auipc        s8, 158937
                  sll          a5, sp, t3
                  srai         sp, a3, 23
                  slli         s4, gp, 3
                  or           t1, t3, s11
                  sub          s2, t1, a0
                  sltu         a5, t5, s0
                  srai         a2, a5, 5
                  slt          a4, s0, a1
                  xor          a2, t5, t5
                  auipc        s7, 200550
                  and          s1, a0, a2
                  auipc        s11, 886026
                  sub          ra, a0, s9
                  sub          t3, s2, t1
                  slti         a0, t6, -94
                  sll          sp, s9, a1
                  xor          s1, a7, s1
                  and          t3, s6, s0
                  and          s5, s11, s2
                  sra          t5, s3, s7
                  add          s1, s4, a1
                  slt          s7, t2, t2
                  sltu         s2, t0, s4
                  add          s1, s1, s1
                  sltiu        s6, a4, 1862
                  srai         s7, s1, 30
                  addi         a2, t2, -392
                  xori         t3, s2, 84
                  sltu         a3, s3, s9
                  auipc        zero, 895545
                  ori          t0, s4, -57
                  lui          s11, 491397
                  nop
                  srli         a4, t0, 21
                  srai         s7, t2, 17
                  srai         t2, a5, 5
                  lui          t6, 325792
                  xori         t5, sp, -614
                  add          s7, ra, a5
                  sltu         s8, ra, a6
                  auipc        gp, 825372
                  add          a3, s10, s4
                  auipc        t0, 877048
                  slli         s8, t4, 29
                  sll          tp, s9, s5
                  add          a3, a6, s11
                  xori         a6, t0, -148
                  ori          s1, s8, -1969
                  slli         t3, t5, 18
                  lui          s6, 695412
                  sltu         a4, sp, tp
                  sll          t6, s4, s0
                  sra          a7, s5, a0
                  and          s8, s0, t1
                  addi         a4, s11, 1740
                  sra          a1, a0, a7
                  srl          s7, s5, zero
                  nop
                  srli         gp, s3, 7
                  srai         s10, t3, 30
                  auipc        sp, 755431
                  and          a5, t4, zero
                  xori         s11, s8, -1875
                  add          t3, s0, tp
                  slti         s2, a5, 1449
                  sub          gp, a4, t2
                  srl          t6, t5, t1
                  sltu         t5, a0, s5
                  auipc        s8, 310865
                  auipc        s7, 422694
                  sub          a2, s10, s6
                  andi         ra, s4, -1673
                  slt          s2, ra, t3
                  add          t6, a3, a1
                  sra          s6, t6, tp
                  and          s10, a2, s7
                  lui          s11, 380587
                  or           s6, s6, t6
                  sra          a4, tp, t1
                  srl          t1, t0, s4
                  slti         t3, sp, -1041
                  sll          t2, zero, s7
                  nop
                  ori          t5, a3, -356
                  addi         zero, s7, -1748
                  andi         t0, a7, 449
                  srai         a7, a0, 20
                  srli         t6, t5, 5
                  sltu         s7, a5, t2
                  ori          a6, s7, -70
                  sra          t6, t4, s3
                  auipc        s2, 225921
                  slti         t1, a3, 1616
                  slt          s7, s2, s5
                  lui          tp, 679695
                  srai         a7, s11, 3
                  slt          a5, a7, s2
                  xor          s11, s2, tp
                  slt          s10, s2, s3
                  srli         s8, t4, 20
                  and          a2, t5, t3
                  srli         t5, sp, 16
                  sll          s7, a4, s7
                  auipc        s10, 264680
                  slti         t2, t5, 1374
                  sub          s1, tp, s1
                  add          s4, tp, a0
                  nop
                  sltiu        a7, zero, 1547
                  add          s4, s10, gp
                  sltiu        gp, s1, -195
                  nop
                  xor          s1, sp, t0
                  sra          t0, s1, ra
                  sll          s6, s7, s8
                  or           s7, a0, s2
                  sra          gp, t6, t1
                  sltiu        a2, a4, -1170
                  slti         s1, t5, -954
                  or           t5, zero, t1
                  xori         s2, s11, -704
                  sll          s6, t0, s1
                  lui          s5, 124517
                  andi         t1, a4, 675
                  sltu         s3, tp, a5
                  andi         s10, a7, -1512
                  slti         s5, s3, 640
                  xori         sp, s3, 1324
                  add          t1, a3, zero
                  xor          s7, ra, a1
                  or           a7, a4, t5
                  sra          gp, s4, a0
                  and          t1, s8, t3
                  sra          s7, a5, s9
                  sub          s11, zero, s5
                  and          a1, t2, ra
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           sp, 0x80000000
                  li           t0, 0x0
                  li           t1, 0xe7d8456b
                  li           a0, 0xffffffff
                  li           s11, 0xc240d4d7
                  li           a3, 0x0
                  li           gp, 0x39987607
                  li           s1, 0xd156d49
                  li           s7, 0xc61e91da
                  addi         s11, t0, -1636
                  lui          s7, 188340
                  lui          s3, 588597
                  addi         a0, t1, 576
                  nop
                  auipc        a0, 61688
                  sub          t0, a0, sp
                  addi         t0, sp, -1241
                  addi         gp, s1, -1239
                  add          t0, sp, sp
                  auipc        s7, 466392
                  add          a3, gp, sp
                  add          sp, t0, sp
                  nop
                  nop
                  lui          t1, 885356
                  add          s1, t0, s11
                  sub          t0, s1, sp
                  sub          s11, a0, s11
                  addi         a3, t0, -1774
                  nop #end riscv_int_numeric_corner_stream_12
                  or           t5, t2, a3
                  andi         zero, a4, -521
                  srli         s8, a1, 9
                  andi         t0, sp, 1734
                  add          t0, s2, a0
                  ori          zero, t2, 1771
                  srai         zero, a0, 23
                  sltiu        s1, t3, -1179
                  slti         a7, t1, -533
                  slt          a2, a7, a7
                  nop
                  andi         ra, t1, -1510
                  lui          tp, 720855
                  sub          t6, t6, a1
                  addi         ra, a1, -1937
                  add          a7, s9, a3
                  auipc        t0, 867655
                  slt          a5, s5, s1
                  slti         a3, s4, 55
                  sltu         s4, a5, a2
                  or           t3, a7, s11
                  slt          ra, t5, s2
                  sltiu        ra, a3, 1939
                  slti         s2, s8, 547
                  and          s1, zero, t3
                  or           a5, t5, t0
                  slt          s5, s3, s0
                  auipc        a0, 456622
                  xori         zero, zero, 70
                  sltu         sp, s6, t5
                  nop
                  sltu         sp, s4, s0
                  sub          s11, zero, s0
                  slt          a1, t4, s1
                  slti         s1, t4, 808
                  slli         a5, t3, 11
                  sltiu        s5, gp, 1931
                  xor          t6, a7, a1
                  srai         t3, t6, 6
                  sub          s1, t3, s6
                  sra          sp, t4, s11
                  slli         s11, s6, 24
                  sll          t2, t1, a6
                  addi         zero, s3, -808
                  slt          s4, s0, t4
                  sra          s11, s0, s10
                  ori          s5, t3, 1693
                  sub          s7, s3, t6
                  sll          t6, a1, s0
                  andi         a3, t4, 190
                  sltiu        a4, t0, -1480
                  and          s3, a2, s9
                  andi         tp, s7, -1518
                  slt          t3, s5, a5
                  xor          s2, s3, t5
                  xor          a6, s2, a2
                  slli         sp, zero, 14
                  ori          a2, s5, 2010
                  andi         zero, tp, -661
                  lui          s3, 261075
                  srl          s1, s2, tp
                  srli         tp, sp, 5
                  xori         t3, a4, -814
                  lui          a0, 855957
                  sll          t2, tp, a2
                  srl          s8, zero, s10
                  ori          zero, zero, -1694
                  sra          a1, s7, t5
                  or           zero, t5, a7
                  sra          s11, s4, a7
                  or           t6, a2, s7
                  srl          s4, zero, s2
                  andi         ra, sp, 1451
                  andi         t1, s2, 1120
                  addi         s6, a6, -1611
                  sra          s2, t5, s7
                  nop
                  sub          a7, sp, a2
                  andi         s1, s5, 159
                  andi         s6, s10, 1181
                  slt          a5, t1, zero
                  sltiu        s5, s0, -1831
                  and          t0, a2, a2
                  srli         t2, zero, 25
                  xori         a0, ra, -881
                  srai         a6, a7, 17
                  srai         a0, s8, 15
                  or           s3, s0, s2
                  slli         t0, t6, 5
                  addi         tp, s11, -1698
                  sltu         t5, gp, ra
                  srli         s10, s6, 21
                  sltiu        s7, a2, -1579
                  sltu         t2, s6, t2
                  slt          s5, sp, s6
                  lui          gp, 723127
                  srai         a6, s6, 19
                  lui          a1, 678880
                  xor          s11, t1, a4
                  sra          zero, s5, s1
                  slt          zero, a7, a7
                  sltiu        sp, a6, 819
                  addi         s7, t5, -507
                  sltiu        s2, a4, -616
                  sub          a7, s7, t6
                  sub          s7, s7, t4
                  addi         a0, s1, -1519
                  add          s1, a1, s9
                  add          s7, zero, t4
                  lui          s11, 817136
                  xori         a6, tp, 457
                  sltu         gp, s10, s8
                  and          s10, t3, sp
                  srl          s6, t3, s4
                  auipc        s10, 647723
                  sub          s11, a4, t1
                  slt          t5, s11, t4
                  slt          s7, s10, a7
                  xori         a0, t6, 485
                  addi         a1, s7, 1091
                  auipc        t0, 658739
                  li           t2, 0x1c136c8b #start riscv_int_numeric_corner_stream_28
                  li           s1, 0x80000000
                  li           s6, 0x80000000
                  li           s2, 0xffffffff
                  li           a6, 0x80000000
                  li           ra, 0xffffffff
                  li           a3, 0x5eb86151
                  li           gp, 0xffffffff
                  li           sp, 0x80000000
                  li           t0, 0x80000000
                  add          sp, s1, t0
                  add          t2, a3, a6
                  nop
                  sub          ra, ra, gp
                  lui          gp, 808841
                  lui          ra, 823775
                  auipc        a6, 1029817
                  add          t2, s6, sp
                  addi         s2, s6, -688
                  lui          a3, 884709
                  lui          s2, 403251
                  lui          a3, 410587
                  sub          s2, t0, t0
                  auipc        a6, 79491
                  auipc        sp, 151890
                  auipc        s6, 870277
                  nop
                  addi         a3, sp, -695 #end riscv_int_numeric_corner_stream_28
                  xor          a0, a4, zero
                  and          a1, s7, tp
                  andi         a6, a7, 191
                  or           a3, a6, t5
                  slti         a0, t0, -2023
                  srli         s6, a1, 24
                  slt          sp, s11, s9
                  slt          a0, s1, s0
                  slt          a2, s2, a3
                  and          t2, s3, a7
                  xor          s7, s5, a4
                  slti         a2, a6, 662
                  xori         s5, a1, 1914
                  srai         t0, s10, 20
                  sltu         s3, s7, t5
                  slt          gp, s8, ra
                  sub          a1, t2, a1
                  srl          s4, s5, s2
                  srl          s5, s2, a6
                  slli         s11, s5, 2
                  add          sp, s2, t5
                  ori          s7, s3, -1845
                  xor          a1, a6, a5
                  lui          sp, 277868
                  srli         s2, t1, 0
                  xori         gp, a0, -432
                  sltu         a2, t1, s1
                  or           s8, sp, a2
                  sll          a4, s11, s5
                  lui          s5, 930215
                  and          s5, zero, a5
                  lui          t1, 181592
                  xori         s10, s0, 1703
                  or           s10, s0, s10
                  sll          s1, s0, sp
                  and          s7, tp, a7
                  nop
                  nop
                  addi         t6, a7, 1497
                  addi         s11, a0, 1897
                  and          s7, s4, s8
                  sltiu        a5, a6, 1691
                  xor          s10, s3, a5
                  add          zero, a0, s6
                  sra          s2, a2, a6
                  nop
                  slt          s7, s5, a2
                  slt          gp, tp, s7
                  srl          s8, a1, s7
                  slti         zero, s10, 867
                  slt          s11, t6, s10
                  andi         tp, a3, 979
                  srl          s7, s7, gp
                  srl          s6, s10, tp
                  add          a7, s11, zero
                  srli         a5, t0, 4
                  and          tp, a2, ra
                  sltu         a5, a5, zero
                  auipc        s5, 941468
                  lui          zero, 1042095
                  ori          s7, a1, -1711
                  slti         sp, s0, -1591
                  sltu         a3, sp, ra
                  sltiu        s5, a4, 844
                  lui          gp, 408479
                  xori         s5, s9, -1973
                  andi         a0, t2, -37
                  srl          s8, t6, s4
                  add          sp, ra, a0
                  slt          a0, s5, a2
                  srai         s7, a5, 21
                  sub          s4, t3, t3
                  add          s3, a4, a3
                  addi         s6, s1, 1229
                  sltu         a0, s5, a2
                  srli         s10, a4, 29
                  srl          a4, s2, t3
                  slt          s3, a5, s8
                  and          tp, a5, t3
                  sll          ra, s11, a4
                  add          tp, t3, a3
                  slli         s4, t4, 3
                  sltu         a3, ra, a0
                  andi         a1, t4, 212
                  and          t2, s5, s2
                  and          a2, a0, s11
                  srai         a6, ra, 24
                  sltu         s7, t5, s2
                  or           a5, t4, s0
                  auipc        s7, 325939
                  or           gp, s8, a7
                  xori         gp, t4, -1816
                  addi         ra, a7, 1918
                  ori          s8, s0, 1516
                  or           s4, t2, s4
                  sltiu        s5, a6, 810
                  slti         t0, s11, 766
                  andi         t2, t6, 1249
                  lui          gp, 828997
                  sltu         gp, s10, s3
                  and          a4, s3, s6
                  sll          a2, s8, a4
                  sltu         a3, t1, a3
                  xori         a1, s8, -600
                  add          s1, t6, a4
                  slli         s4, s9, 29
                  andi         a2, a7, -366
                  ori          s10, s3, -114
                  slti         s8, s6, -492
                  sll          t6, t1, tp
                  nop
                  sltu         zero, s9, a5
                  xori         s3, t2, -1242
                  add          ra, t5, a2
                  or           s6, s7, a2
                  auipc        s5, 920645
                  sltiu        a7, s8, 543
                  slt          t0, s10, s11
                  sltiu        s7, s4, -1984
                  sll          s10, a1, a2
                  srai         tp, s11, 15
                  sltiu        s11, ra, 1182
                  slt          a1, t6, ra
                  slti         a1, t6, -825
                  xor          t2, ra, t4
                  nop
                  ori          a5, gp, -738
                  sltiu        a7, s11, 1018
                  add          a5, t4, s0
                  auipc        sp, 108925
                  lui          s10, 911442
                  srl          s7, t2, ra
                  add          a5, t3, a1
                  sltu         t3, s7, s7
                  srli         a2, t3, 30
                  srli         s7, a0, 26
                  sll          s2, a4, s3
                  slt          a0, s10, s8
                  ori          sp, t2, -572
                  add          zero, s1, t1
                  xor          a0, t1, s3
                  xor          ra, a5, s8
                  sltiu        s8, a5, -119
                  nop
                  sra          s8, a4, a5
                  xori         s3, a4, -1189
                  or           t6, a4, t5
                  slli         a7, s11, 30
                  slt          a5, t4, t6
                  auipc        t3, 523950
                  auipc        t6, 508447
                  slli         t0, s1, 22
                  slli         s6, t4, 13
                  srli         t1, t2, 11
                  sll          s4, t0, s10
                  slli         s6, ra, 17
                  sltu         t1, a1, t4
                  srli         a3, a1, 28
                  slli         s3, a6, 27
                  srli         a2, s0, 22
                  or           s4, s9, a3
                  slti         s5, t2, 719
                  sltiu        s5, tp, -117
                  slt          s3, tp, t5
                  slti         a5, a5, 113
                  sub          s11, t1, s5
                  or           s8, s7, s10
                  and          s10, a4, s6
                  slli         zero, s6, 29
                  sub          t1, zero, t2
                  srli         t2, a0, 9
                  add          t5, a1, zero
                  sub          a2, a7, s1
                  ori          a4, s7, 72
                  addi         t6, ra, -1183
                  andi         s8, zero, -1825
                  andi         tp, t5, 399
                  or           t3, s9, a5
                  sub          s6, a7, s4
                  sltiu        s10, a0, -993
                  sltu         t3, s10, a6
                  and          a1, a1, s3
                  sll          t6, s1, s7
                  sll          a5, a4, t1
                  xori         s7, gp, 1697
                  slti         a1, s10, 1181
                  auipc        s3, 245607
                  sub          t6, t3, s1
                  or           s8, t2, a5
                  addi         a5, tp, -453
                  sll          t6, a0, sp
                  addi         t1, s2, -268
                  sltiu        a2, s9, -674
                  srai         s11, a0, 24
                  addi         zero, a7, 158
                  srl          t5, a6, s2
                  srl          a2, s4, ra
                  xor          a0, ra, a6
                  xor          zero, s11, t5
                  andi         a2, a5, -1054
                  sra          a2, gp, t0
                  ori          s3, s7, -331
                  sltu         a0, t2, gp
                  sltiu        s4, s0, 1120
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           s7, 0x0
                  li           a2, 0x80000000
                  li           ra, 0xd44c6de4
                  li           t0, 0xf72ad936
                  li           a1, 0xf9b03fe2
                  li           a3, 0x0
                  li           s2, 0xffffffff
                  li           s5, 0xe0d3c5ea
                  li           a4, 0x80000000
                  addi         a1, t0, 1802
                  add          a1, s2, t0
                  auipc        s2, 968687
                  lui          s5, 18416
                  nop
                  sub          s7, a4, a1
                  sub          a4, s7, a4
                  nop
                  nop
                  add          a4, s5, s7
                  nop
                  addi         s2, a4, 849
                  addi         s2, s5, -1524
                  nop
                  addi         s2, a4, -1531
                  sub          s2, a2, a1
                  auipc        t0, 482450
                  lui          t0, 925906
                  addi         s2, s7, 316
                  lui          s2, 663793
                  lui          a2, 936440
                  lui          a2, 721358 #end riscv_int_numeric_corner_stream_36
                  sll          t3, a7, tp
                  ori          s5, t1, -223
                  auipc        a3, 908552
                  sltu         t3, sp, s10
                  addi         s7, a2, 1457
                  sra          a5, s1, s10
                  sub          a7, a5, a4
                  auipc        s10, 465768
                  and          sp, s7, zero
                  srl          tp, s3, s10
                  sub          s7, tp, s7
                  add          a6, tp, s10
                  or           sp, a2, a3
                  add          a0, a7, t1
                  and          s7, a3, s0
                  sltu         a6, ra, s0
                  and          a7, t5, t3
                  sra          ra, s5, a3
                  sltu         s8, s7, s3
                  xori         t2, s11, 1798
                  addi         sp, s3, 1508
                  sll          s2, a4, a1
                  srli         a2, t5, 29
                  slt          t5, t1, t3
                  auipc        a7, 247997
                  sltiu        a3, sp, 74
                  sltu         sp, a1, t1
                  slt          gp, t1, sp
                  slli         a6, s0, 1
                  addi         t3, t1, -474
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           s7, 0x80000000
                  li           a1, 0x80000000
                  li           t2, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0xffffffff
                  li           t5, 0x0
                  li           a4, 0x6f74d74
                  li           a5, 0x80000000
                  li           sp, 0xffffffff
                  auipc        sp, 614222
                  nop
                  addi         a5, t2, 1248
                  nop
                  add          s7, s8, t2
                  sub          s8, t5, t2
                  add          s8, sp, a1
                  sub          a1, sp, a1
                  auipc        gp, 187574
                  auipc        s2, 258580
                  auipc        t5, 971452
                  auipc        t2, 744624
                  sub          t2, t5, s7
                  sub          a4, s8, a4
                  add          s8, a5, a1
                  addi         s2, s8, -442
                  addi         s7, a1, 95
                  nop
                  lui          s8, 980371
                  nop
                  nop
                  add          a1, s8, s2
                  add          s8, s7, gp #end riscv_int_numeric_corner_stream_34
                  or           a2, a0, a0
                  xori         s5, s2, -245
                  or           zero, gp, s2
                  slli         s2, s1, 21
                  sltiu        t5, a4, -1118
                  or           s11, t6, a1
                  addi         a4, tp, 56
                  srai         zero, a1, 7
                  add          a4, tp, s9
                  sub          a3, a4, s10
                  slti         s10, s11, 1301
                  xori         gp, s3, 1551
                  xor          s6, s3, a4
                  sltiu        s8, t0, 984
                  add          a2, zero, ra
                  add          a2, s11, a0
                  nop
                  slti         t5, s4, -951
                  sltu         s1, t6, s10
                  sltu         a1, s4, ra
                  srl          a5, t2, s9
                  srai         t0, t5, 23
                  srl          a4, s4, a5
                  xor          s7, s4, a0
                  addi         t6, s3, -1695
                  srl          a4, s1, s10
                  and          s5, a4, a5
                  addi         gp, a2, -784
                  and          tp, a4, t1
                  sltu         t6, t4, t1
                  nop
                  add          t5, ra, s7
                  lui          a3, 982339
                  sltiu        s1, t5, 1226
                  sub          a3, s9, t3
                  xor          a2, a3, sp
                  slt          ra, s6, zero
                  sll          a4, tp, t4
                  srli         s3, ra, 30
                  lui          a7, 761821
                  sltu         s3, s1, t4
                  andi         t5, s11, -1627
                  srl          a0, s9, a6
                  srli         s7, sp, 28
                  sub          s4, s7, t3
                  and          s7, s9, s0
                  add          a7, s3, s5
                  and          a4, t5, t3
                  sltu         a7, a7, ra
                  slti         t2, t6, 285
                  addi         a6, t0, 189
                  ori          a1, s11, -1512
                  sub          t2, s4, s9
                  sll          s1, s8, s9
                  andi         a0, s3, 1504
                  auipc        t0, 93820
                  and          s11, a7, s0
                  slt          a7, s0, a7
                  xor          gp, t4, sp
                  xori         s11, s4, 555
                  or           t6, s7, gp
                  nop
                  or           s3, zero, a3
                  ori          s4, s1, 1102
                  sll          t5, t5, t3
                  xori         t3, s6, -763
                  sltiu        t1, sp, -151
                  sra          a2, s8, t5
                  srl          s11, gp, s5
                  sltiu        tp, a2, 759
                  sra          a6, s4, t1
                  xori         t6, t4, -165
                  or           t6, t3, a2
                  srli         t6, a7, 17
                  andi         a5, a5, -1730
                  slt          t2, s6, a4
                  and          s10, t1, s0
                  and          s1, t3, s7
                  xori         s2, s5, -1061
                  slt          t1, s0, s5
                  srl          a4, t1, s11
                  lui          s10, 1041387
                  auipc        a1, 551351
                  andi         s4, a4, 1407
                  srai         a7, s8, 3
                  ori          sp, s0, -707
                  andi         s5, s7, 1275
                  xori         ra, s3, 1484
                  andi         s1, s0, -707
                  srai         t3, s6, 8
                  slli         a7, gp, 7
                  sltu         s1, s8, s7
                  xor          a3, a7, a5
                  sub          t1, s8, s4
                  andi         t2, sp, -703
                  sll          zero, s10, t3
                  auipc        s3, 1037446
                  slti         s7, a7, -1243
                  add          a2, a6, s4
                  xor          t6, s4, s1
                  sra          t2, t4, s3
                  xori         s11, a1, -1541
                  sra          s1, s11, s6
                  andi         t2, zero, -919
                  ori          s11, ra, 102
                  slti         s8, s4, 326
                  andi         s1, a3, 456
                  add          a2, s1, t4
                  slt          a7, t6, s6
                  ori          gp, s6, 1839
                  add          s10, s5, t0
                  add          s11, a2, a0
                  and          s6, s5, s2
                  sltu         tp, a1, s5
                  srl          a3, zero, a2
                  lui          a5, 98475
                  lui          a3, 406414
                  srai         s4, s2, 15
                  lui          a1, 461427
                  xor          sp, s2, a0
                  ori          t3, s2, -2004
                  andi         t3, t5, -1550
                  sra          t3, a2, s0
                  lui          s5, 469300
                  sltiu        zero, a3, -432
                  sltu         s2, t5, a4
                  srai         sp, a4, 17
                  or           t6, a1, a0
                  nop
                  nop
                  sltu         a5, a2, s6
                  slti         a7, s4, -188
                  lui          tp, 101741
                  addi         s8, s11, -727
                  xor          s5, gp, t5
                  srli         tp, t3, 14
                  lui          s2, 1009793
                  sra          a7, t4, t0
                  auipc        s1, 598699
                  srai         s2, s8, 27
                  sub          t5, gp, s9
                  sra          sp, s7, tp
                  xor          sp, zero, s3
                  add          a5, s10, a4
                  slti         gp, t3, 1237
                  srli         s3, s10, 6
                  ori          s11, a4, 1917
                  addi         s6, a7, 929
                  sltu         s4, gp, t6
                  srli         s5, s1, 16
                  lui          s5, 405342
                  slli         a4, s1, 10
                  srl          s3, tp, s7
                  nop
                  nop
                  lui          sp, 6230
                  or           ra, t3, s0
                  add          a7, a5, s11
                  slli         s1, t2, 31
                  auipc        tp, 589371
                  and          t3, t0, gp
                  and          a7, gp, a3
                  addi         s3, s11, -1750
                  slli         s2, s3, 13
                  nop
                  addi         s8, t2, -1200
                  xor          s8, s10, s3
                  srai         s2, t1, 23
                  andi         t2, a1, -194
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s1, 0xf68ef962
                  li           t6, 0xe963a7c6
                  li           t3, 0x0
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           a5, 0xffffffff
                  li           a3, 0xffffffff
                  li           a0, 0x80000000
                  li           a2, 0xa749168a
                  add          s1, t6, t3
                  lui          t3, 963651
                  sub          t6, s1, t3
                  nop
                  auipc        a0, 417301
                  addi         tp, a3, 1648
                  sub          t2, s10, t3
                  nop
                  auipc        t3, 1010578
                  auipc        t2, 71588
                  addi         t2, s10, 457
                  addi         a2, tp, 1338
                  lui          a0, 910805
                  lui          s10, 795070
                  lui          a3, 452846
                  add          a0, a5, a2
                  addi         t3, t2, 1565
                  addi         s1, t2, 1603
                  auipc        t2, 991546
                  add          s10, s10, a0
                  addi         s1, a0, 747
                  lui          t6, 972776 #end riscv_int_numeric_corner_stream_15
                  add          ra, t2, s5
                  add          a2, s0, sp
                  sub          a5, tp, s11
                  lui          s7, 1006346
                  slt          t1, s9, sp
                  slti         a4, t1, 1606
                  sra          a6, zero, a1
                  sltu         t3, a4, a3
                  auipc        s11, 298724
                  lui          a2, 611877
                  sra          s3, t2, t6
                  slt          a2, t5, t2
                  ori          s3, s8, 1353
                  andi         s11, a5, 1585
                  sub          s1, t6, a7
                  srli         t0, zero, 6
                  ori          t3, a6, 1138
                  and          t6, t6, s11
                  and          t3, a4, s2
                  slli         gp, a5, 0
                  addi         a0, t5, 998
                  sltu         a0, s1, t2
                  srl          s11, s3, s1
                  sltiu        s8, s2, -344
                  sub          t2, s9, a3
                  slti         a7, t1, 1770
                  srl          t6, a4, s6
                  and          t1, a0, t6
                  sra          t5, a3, a6
                  and          s2, sp, tp
                  srai         a7, s11, 17
                  ori          a6, t6, -961
                  nop
                  sub          s6, s7, t0
                  sra          s10, zero, sp
                  nop
                  srl          s4, t6, s3
                  lui          tp, 918986
                  xor          t0, a0, t2
                  nop
                  sltu         t3, s1, tp
                  sra          t0, s1, ra
                  sltu         t6, s10, t0
                  xor          s11, zero, sp
                  xori         sp, t1, 1453
                  slt          ra, a0, s10
                  srli         s6, s10, 24
                  slti         s8, s9, 160
                  slti         a5, a7, 1204
                  ori          s1, t4, -626
                  slti         t6, t1, 720
                  and          a5, t0, t6
                  or           a1, s4, s6
                  xor          t0, a0, s0
                  srai         gp, s4, 17
                  slli         s4, s11, 18
                  andi         t5, s7, 1122
                  xori         a0, tp, 834
                  sltu         t6, s3, s0
                  sltiu        zero, s7, 795
                  nop
                  slt          t6, a5, s11
                  srli         t3, s10, 2
                  srli         gp, t6, 23
                  andi         sp, s2, -414
                  ori          s5, a0, -780
                  sll          s7, zero, zero
                  andi         a2, t6, -1804
                  or           s8, s5, s8
                  add          s11, s8, t4
                  slt          s2, a1, a4
                  sll          s2, s2, s6
                  or           a7, s11, s5
                  ori          a2, s8, 97
                  sll          zero, s9, s11
                  andi         a7, a7, 1382
                  nop
                  slt          a0, t2, sp
                  xori         a1, t3, -1697
                  srl          t6, t2, a4
                  srli         a1, a0, 13
                  sll          a0, t4, a6
                  add          a0, sp, sp
                  add          t3, s4, a5
                  xori         a0, s3, 736
                  and          gp, a3, t2
                  srai         a5, tp, 1
                  sltu         tp, sp, a6
                  srli         a2, s10, 4
                  slli         s11, s8, 11
                  sub          a4, s11, a5
                  sll          s1, tp, t3
                  auipc        s7, 725458
                  addi         a6, s5, -938
                  srli         t2, s7, 1
                  srli         s1, t4, 3
                  slli         s7, s1, 24
                  xori         sp, s0, -1940
                  srai         s1, t3, 16
                  add          t6, s7, t5
                  nop
                  nop
                  addi         a2, s6, 707
                  lui          t1, 104145
                  or           s3, a1, a3
                  xori         zero, s0, 1733
                  slli         tp, t5, 15
                  sltiu        s10, zero, 1798
                  and          t6, a4, a5
                  srli         s5, s5, 14
                  xori         s10, s2, -883
                  slli         s1, ra, 26
                  sll          a6, a6, gp
                  addi         s5, sp, -1289
                  slti         s6, tp, -446
                  xori         t3, a5, -2000
                  sll          sp, ra, s7
                  xor          s8, a6, t6
                  xori         a3, s11, -444
                  sll          ra, s11, s6
                  sltiu        s1, ra, 1995
                  sltiu        s6, s3, 82
                  sub          ra, s11, sp
                  srli         a7, s0, 4
                  xor          a2, a3, a2
                  srli         a4, s8, 14
                  and          s11, tp, t1
                  ori          a0, a5, 83
                  andi         s7, a0, -551
                  sltiu        gp, gp, -1329
                  srai         s7, a1, 28
                  sltiu        sp, t3, -215
                  xor          zero, s7, zero
                  and          t0, a1, a1
                  sltiu        gp, a3, -1722
                  andi         s3, s6, 929
                  andi         tp, a3, -1262
                  andi         t2, s2, -1878
                  addi         s8, zero, -1706
                  addi         s3, s5, 1655
                  sub          t5, s2, s8
                  slli         a2, a5, 19
                  xori         a6, s5, -561
                  slli         t6, a1, 31
                  sltu         zero, gp, tp
                  and          s7, s9, t1
                  auipc        t5, 1043643
                  sll          s10, s11, s9
                  srai         s7, s0, 27
                  slti         s5, s4, 1855
                  lui          s11, 858155
                  auipc        a6, 686357
                  and          s1, s0, t3
                  slti         a6, s1, 1793
                  add          a5, s9, t0
                  xori         t3, t3, -970
                  srl          s7, t6, s4
                  srai         s2, s2, 10
                  slli         a3, zero, 30
                  or           t0, s11, s10
                  xor          s5, a0, ra
                  andi         a3, zero, -545
                  lui          s6, 830316
                  add          s8, a2, t5
                  or           s1, a7, s11
                  addi         s5, s11, -1045
                  xor          s6, tp, s4
                  or           tp, t3, a4
                  andi         s3, a1, -230
                  nop
                  or           s7, t6, t6
                  sltiu        s8, a1, 1657
                  lui          s3, 348073
                  slli         a0, s0, 15
                  slt          a0, s3, t0
                  srli         s8, s3, 0
                  addi         t2, ra, 298
                  andi         t2, a6, 902
                  addi         s8, t6, -1232
                  nop
                  srl          a1, t4, s7
                  xori         t5, a1, 1659
                  addi         s3, sp, -1257
                  slli         s5, s11, 19
                  slt          s11, s3, s10
                  sltu         s3, s6, a1
                  auipc        s3, 1011624
                  ori          a2, a4, 419
                  auipc        s2, 182228
                  sll          s10, t4, s10
                  srl          t0, t0, a0
                  andi         s11, s5, 1677
                  srl          s8, s4, s5
                  and          t5, a0, gp
                  sltiu        a4, s4, -55
                  xor          s10, s11, a4
                  srl          t3, a0, a1
                  sra          s8, t2, s6
                  auipc        gp, 264414
                  sub          gp, s0, tp
                  add          t0, t1, t6
                  slt          t3, a4, s9
                  sll          a6, a6, s6
                  sltiu        a5, t0, 321
                  slti         tp, s4, 1956
                  ori          s7, s8, -817
                  slt          t1, t4, a1
                  srai         t3, s5, 16
                  srai         t5, a4, 5
                  sltiu        s8, zero, -478
                  add          s3, zero, ra
                  srai         s11, t6, 22
                  add          s5, t0, s0
                  srai         a1, t4, 5
                  addi         a3, t1, -474
                  srl          t2, t2, s3
                  sltiu        t3, s11, -1206
                  addi         a5, ra, -52
                  or           a1, s7, t3
                  sltiu        a3, sp, 1395
                  srl          t3, t5, s3
                  sra          a4, s9, s1
                  and          a6, s3, a6
                  nop
                  sra          s2, ra, t5
                  xor          s10, s10, s5
                  srl          s2, s11, t1
                  ori          s10, t6, 1841
                  srli         ra, t6, 28
                  sub          tp, a0, gp
                  or           a1, sp, s10
                  addi         t6, a4, 776
                  sltu         s6, s2, a4
                  slti         t3, t3, -1235
                  sra          a3, s3, s6
                  or           a7, t1, s8
                  auipc        t0, 847169
                  slti         t2, a2, 239
                  nop
                  slli         a5, sp, 27
                  slli         s11, a7, 26
                  srli         s10, t5, 1
                  sll          tp, t6, s4
                  sltiu        sp, s7, 1058
                  slli         s8, a3, 23
                  xor          s1, s9, a6
                  srai         tp, s7, 17
                  auipc        t5, 286876
                  and          s6, s3, a1
                  auipc        s7, 1035406
                  slt          t0, t2, s0
                  sltiu        s5, t6, 562
                  andi         a0, s7, -1752
                  sltiu        t6, s6, 566
                  slli         a4, s5, 16
                  nop
                  slti         a5, t4, 1886
                  andi         s11, a6, -838
                  ori          a6, ra, -1932
                  add          t5, sp, s1
                  add          tp, sp, s11
                  slt          a2, gp, a0
                  srl          s4, a7, s5
                  nop
                  sltu         s11, s7, a6
                  add          s10, s5, s7
                  auipc        s1, 732249
                  ori          a3, a5, 821
                  and          ra, t4, t5
                  srli         t0, s9, 11
                  or           gp, t0, s8
                  sltiu        s6, gp, 58
                  slt          s7, t0, s3
                  addi         t3, s10, -187
                  lui          a5, 300957
                  sltiu        a7, s6, 1474
                  nop
                  addi         s2, s3, -61
                  and          a0, t6, tp
                  nop
                  lui          a4, 727759
                  auipc        t0, 656014
                  or           a3, ra, a3
                  slti         s5, tp, -1480
                  auipc        s1, 413502
                  sltu         a4, ra, a7
                  slli         s5, s8, 23
                  slt          sp, t5, a5
                  srli         s3, s1, 18
                  addi         a7, s10, -1198
                  and          a6, t6, ra
                  andi         a6, t4, -876
                  ori          s8, t4, -1430
                  auipc        s3, 117122
                  auipc        a0, 997689
                  add          gp, a2, s4
                  nop
                  slli         t3, t4, 12
                  lui          t6, 190687
                  add          s11, t5, a5
                  sltiu        s2, s9, -1883
                  sra          s1, s11, t2
                  auipc        s7, 1021845
                  xor          s5, a6, t6
                  xori         gp, t4, -609
                  sltiu        a2, zero, 1725
                  xor          a3, a0, t5
                  xori         s6, gp, -1841
                  andi         s11, t6, 1107
                  srl          s2, a0, sp
                  sltu         gp, s7, s3
                  addi         s2, s9, -1955
                  addi         zero, a6, 181
                  srai         s4, s10, 6
                  xori         ra, s10, -1810
                  sltiu        zero, a4, 467
                  ori          a5, gp, -1368
                  and          a4, a7, gp
                  or           ra, s0, s9
                  srai         t5, s0, 9
                  sltiu        t1, s1, 984
                  add          s7, tp, s11
                  lui          s1, 332184
                  srl          t3, a2, a2
                  sra          s11, t3, a6
                  nop
                  sll          s4, s3, s8
                  sra          s8, a4, s2
                  sll          t3, a4, t3
                  srai         t0, t3, 22
                  andi         t3, a6, -650
                  sltiu        t3, a5, 1086
                  sll          s1, a7, s6
                  andi         s8, s8, -1598
                  slli         sp, t0, 30
                  nop
                  andi         sp, s11, 1040
                  slli         t2, t0, 20
                  addi         t3, s1, 425
                  xor          gp, t5, a7
                  auipc        a2, 131422
                  sll          t0, s7, t0
                  ori          a4, a5, -300
                  srli         a6, a3, 16
                  andi         s7, t5, 1940
                  addi         a6, s6, 1014
                  nop
                  slti         s8, gp, 274
                  sub          ra, t5, t1
                  srai         s8, s11, 10
                  slli         s4, t4, 6
                  addi         s11, s4, -968
                  auipc        a3, 856856
                  slli         t5, s11, 30
                  slt          s2, a1, s11
                  sll          a0, tp, s8
                  sll          s3, a4, t1
                  sll          a5, t1, s3
                  slli         s3, ra, 6
                  xor          a7, s5, t5
                  sltu         s11, s6, t3
                  auipc        s8, 394516
                  sub          s8, t4, t6
                  sub          a4, a2, gp
                  xor          a6, s6, s11
                  sltiu        t0, a5, -1955
                  srl          t0, a3, ra
                  xori         s6, s8, 1758
                  slli         s1, t5, 2
                  srl          t5, a4, gp
                  auipc        s11, 506948
                  lui          a1, 674276
                  and          s1, ra, zero
                  slli         t2, s3, 24
                  sltu         gp, s9, t6
                  auipc        t2, 991367
                  srl          a6, s9, ra
                  sra          t5, t1, t0
                  sra          a0, s7, gp
                  add          gp, s6, a1
                  slti         a7, s10, 453
                  srli         zero, s10, 4
                  xori         t1, zero, 260
                  sll          t3, s7, s7
                  addi         t0, s9, -621
                  sltu         a3, a2, a0
                  xori         s8, gp, -742
                  sltu         s8, a2, gp
                  auipc        t6, 323576
                  xor          t1, s8, s9
                  andi         s7, t1, 513
                  slli         s3, a0, 5
                  sub          a2, s10, t1
                  nop
                  sub          s8, a5, t5
                  ori          t2, tp, 1558
                  xori         s11, s1, -406
                  sll          s2, s5, t1
                  lui          zero, 413218
                  slt          a0, a1, s9
                  auipc        s2, 888915
                  lui          s1, 235546
                  or           a7, s9, a3
                  or           t2, s9, gp
                  add          tp, a4, s7
                  andi         s8, a4, 26
                  or           t0, s0, s7
                  addi         s4, gp, 1745
                  nop
                  and          s10, s6, t6
                  sltu         a3, s11, s6
                  srli         s6, s9, 29
                  srl          gp, s11, a1
                  sra          gp, s1, s5
                  sltiu        s6, a7, 1014
                  slt          gp, a5, a0
                  sltu         a0, t4, t6
                  and          ra, s11, a5
                  srl          s11, t0, a3
                  addi         t6, t3, 1329
                  sll          s6, tp, t1
                  and          s5, t6, ra
                  srai         s10, t0, 8
                  slli         s3, s5, 9
                  xor          sp, s5, a3
                  or           tp, t1, t1
                  slli         s7, t4, 29
                  lui          s5, 811569
                  auipc        t2, 1015802
                  sltu         gp, s2, t5
                  xori         a1, a0, 898
                  slt          t3, a0, s5
                  lui          s11, 234812
                  slt          zero, t1, s3
                  sltu         s1, s2, t2
                  xori         a7, a3, -1222
                  slt          t2, s4, t6
                  or           a3, s11, a0
                  sltiu        s10, s7, -1404
                  srli         t5, a3, 21
                  andi         s6, sp, -105
                  addi         s3, a2, 1103
                  ori          s6, t3, -238
                  slli         a3, a6, 14
                  slti         s7, s0, 275
                  xor          s3, t6, s1
                  add          sp, s4, t5
                  sll          a3, t0, t3
                  srai         a6, s6, 0
                  or           t0, s11, s11
                  slt          a2, s1, s11
                  auipc        ra, 418686
                  sll          a4, s6, zero
                  and          s6, a7, s0
                  slti         a6, t5, -655
                  slt          s8, t3, s11
                  sll          s8, s0, t5
                  srai         t1, s4, 3
                  sltu         a0, a0, zero
                  nop
                  add          sp, t5, a5
                  auipc        t6, 258017
                  srli         ra, zero, 10
                  or           a3, t2, a3
                  andi         zero, zero, -490
                  auipc        ra, 613657
                  auipc        a5, 433323
                  or           a7, t6, s11
                  sll          t2, s2, a7
                  slt          t5, a1, s8
                  or           t1, s6, t5
                  xor          t2, s2, s0
                  srli         gp, t2, 20
                  xori         ra, s2, -750
                  andi         a0, s1, 1947
                  addi         gp, gp, -207
                  or           zero, s0, s10
                  and          s5, a3, s8
                  sub          s5, a5, t1
                  add          zero, s4, s2
                  andi         s2, s4, -277
                  andi         t1, s1, 1939
                  sltu         t3, t3, a6
                  lui          t0, 1009819
                  slli         s10, t6, 7
                  slli         t0, a3, 12
                  andi         s4, s6, -727
                  xor          a7, gp, s6
                  sltiu        ra, s6, 1671
                  sltu         s8, tp, t4
                  sltu         ra, a7, a4
                  sltu         t5, a0, s3
                  sltu         s8, s11, s2
                  ori          a2, s4, -1020
                  or           a2, s0, sp
                  slti         a3, sp, -727
                  slli         s8, gp, 15
                  xori         a5, s9, -1993
                  add          s2, t6, s8
                  nop
                  sra          t1, t0, t6
                  and          s5, s1, a5
                  srai         a1, a7, 0
                  srl          s7, s3, t6
                  or           a3, t6, gp
                  slli         s11, ra, 4
                  sra          a5, t6, ra
                  slli         t5, tp, 23
                  or           a3, a6, gp
                  addi         s5, sp, -1805
                  srai         a3, t5, 2
                  lui          t5, 816970
                  ori          s10, t3, -811
                  srli         s3, a3, 14
                  xori         s4, t0, 1255
                  or           a0, s0, a3
                  and          s10, s0, s9
                  slti         s1, t5, 692
                  xor          a7, a3, s7
                  or           s7, s11, s3
                  lui          t1, 577503
                  slt          zero, s7, gp
                  srai         s4, s7, 11
                  sll          t1, t3, a1
                  sltiu        a0, tp, 1743
                  xori         s2, a3, -151
                  add          t5, tp, s11
                  add          t0, t2, s11
                  srai         a6, t4, 29
                  sll          a2, t2, a5
                  and          t5, t0, sp
                  addi         s5, t6, -1014
                  ori          sp, a2, 1963
                  or           a6, a7, tp
                  srli         s2, sp, 15
                  slli         t6, s5, 17
                  sra          gp, s11, a2
                  xori         tp, t6, 1626
                  sltu         t5, t1, t4
                  nop
                  sra          zero, t4, a7
                  or           s11, s5, s10
                  auipc        ra, 979196
                  sub          gp, tp, s7
                  slti         s4, ra, -859
                  sll          t5, a3, t0
                  sra          s8, s5, s11
                  andi         a2, t2, 456
                  xor          s2, t3, s6
                  lui          s8, 315031
                  sub          a0, ra, sp
                  srli         s5, s4, 19
                  addi         ra, s7, -1157
                  ori          s2, s6, -102
                  sll          s10, s8, s3
                  addi         a4, tp, 1266
                  xor          s11, a7, a3
                  nop
                  or           a4, s5, t6
                  slli         tp, a5, 21
                  xori         s8, s3, -1160
                  nop
                  srl          t2, s2, s0
                  sll          zero, s11, t5
                  and          a2, tp, t6
                  sra          gp, t1, a4
                  slli         a5, a0, 21
                  srai         s1, a6, 7
                  addi         s1, a2, 1863
                  lui          a0, 107786
                  lui          t2, 528675
                  add          a3, s5, s9
                  xori         a0, t0, -701
                  ori          sp, s11, 526
                  slli         a6, a2, 15
                  ori          s11, t6, -1911
                  sra          s11, t1, s5
                  sltiu        s5, s5, 684
                  sub          s5, t0, t6
                  sra          s3, s6, a6
                  srl          zero, a6, s6
                  ori          s6, s6, -1091
                  sltiu        zero, t6, -1363
                  srli         t0, t1, 24
                  ori          a6, a1, -598
                  slti         a3, t6, -488
                  nop
                  xor          a4, s11, gp
                  or           a2, tp, t6
                  srli         s6, t0, 17
                  lui          sp, 168137
                  srli         a7, t2, 23
                  sltu         t6, s2, t6
                  sub          a7, s4, a4
                  sub          s1, t2, t0
                  slt          s11, s9, a2
                  ori          t3, gp, -1852
                  ori          a2, s0, -314
                  and          t2, t5, a6
                  srli         tp, sp, 8
                  or           s6, t2, s4
                  auipc        a6, 954985
                  slli         ra, s2, 14
                  slt          s8, tp, t6
                  nop
                  srli         s8, s9, 13
                  sltiu        a0, t0, -329
                  add          a5, sp, a3
                  xor          s1, tp, zero
                  and          sp, a0, t5
                  sltiu        a6, a6, -1353
                  srli         a7, a7, 21
                  sltu         s2, t0, a7
                  and          s5, a1, s8
                  sll          t3, a1, a0
                  slt          t2, a3, s11
                  sltiu        sp, a3, -45
                  and          t3, a3, t2
                  sll          s8, a5, s11
                  srli         ra, a6, 21
                  sll          a7, s5, t3
                  sra          s8, a3, gp
                  add          a7, t0, t6
                  srli         s7, ra, 30
                  slli         a5, s5, 20
                  and          t2, s0, s6
                  xori         s10, a5, 1919
                  srai         tp, s9, 24
                  srl          s3, ra, s1
                  srli         s1, t2, 14
                  nop
                  slt          zero, s11, s6
                  sll          s1, a3, a3
                  sll          s5, s10, s4
                  or           tp, t6, s10
                  srli         a0, s3, 30
                  slt          s1, t3, t1
                  andi         a5, s2, 1310
                  add          ra, t3, t1
                  xor          t0, a7, sp
                  srli         s5, t1, 1
                  srli         tp, a3, 13
                  sra          s6, s5, a0
                  slti         s3, s5, -278
                  slli         t3, gp, 8
                  or           gp, gp, s4
                  slti         t6, t5, 2037
                  srl          s4, a7, a4
                  ori          a2, tp, 1664
                  nop
                  ori          s2, t0, 966
                  srl          a5, a7, tp
                  or           s8, s1, t1
                  andi         gp, s10, -10
                  auipc        sp, 791269
                  ori          s2, s11, -1731
                  sra          s10, s2, s0
                  or           a5, s0, zero
                  xori         a3, s10, -1530
                  sub          s11, a2, t0
                  slti         tp, s9, 622
                  or           s1, s7, s1
                  and          a3, s9, s11
                  auipc        s3, 370164
                  slli         s11, a2, 28
                  srl          gp, t5, a2
                  andi         a4, t6, -385
                  xor          a3, t2, t0
                  srai         s6, s10, 11
                  lui          a1, 829558
                  srai         s10, s10, 12
                  auipc        s7, 729592
                  sll          a0, a0, s9
                  andi         a6, sp, 1325
                  add          s1, s7, t5
                  xor          t0, t0, s8
                  sub          t2, t0, gp
                  add          s3, s2, t6
                  sltu         a5, t2, s9
                  srli         s8, s2, 15
                  xor          tp, s0, t2
                  nop
                  srl          ra, s1, t4
                  sub          s11, s8, s7
                  sltu         t3, a5, s0
                  sll          sp, ra, t6
                  srl          s8, t0, a2
                  lui          a0, 658209
                  sra          t2, t5, s1
                  auipc        sp, 528803
                  xori         s3, t2, 833
                  slt          t6, t5, gp
                  slli         t3, gp, 12
                  and          s6, s6, a2
                  add          a7, s2, a7
                  nop
                  lui          s3, 104759
                  sra          t5, t3, t1
                  add          a2, a0, zero
                  sub          s5, a2, tp
                  lui          s8, 84137
                  add          s8, a7, s6
                  srl          t6, t1, a1
                  sll          s11, a3, a3
                  and          a1, a2, a2
                  srai         gp, zero, 7
                  add          s4, tp, s1
                  srli         t6, s8, 19
                  xor          a0, a7, a7
                  xori         s7, t2, 1312
                  and          t1, s8, s1
                  srl          s1, a0, zero
                  xori         zero, tp, 1644
                  auipc        t1, 861344
                  ori          tp, s2, 1142
                  lui          a0, 948921
                  sll          s5, a5, t2
                  srli         s10, s6, 27
                  sltu         s1, t6, a4
                  xor          t3, s11, t2
                  ori          s6, s9, -1354
                  srl          a0, s11, a7
                  sltiu        a6, s9, -1040
                  slti         tp, s11, 1244
                  xori         s4, t2, 1135
                  srl          s11, s6, s11
                  andi         t6, s7, 361
                  sll          s4, a6, t6
                  auipc        a7, 619339
                  sll          t1, t1, s2
                  add          s8, s5, s2
                  slti         a6, s0, -18
                  addi         t6, t1, 1254
                  slti         s11, s0, 581
                  slt          s1, t4, zero
                  srai         s11, t6, 2
                  slti         a3, a2, -1176
                  andi         s8, s1, -1916
                  lui          s1, 618552
                  ori          s11, t3, -1048
                  addi         s7, a4, 981
                  slt          s10, s7, s6
                  sltu         s8, s0, a4
                  slti         s2, s3, -260
                  srli         zero, ra, 1
                  ori          ra, s11, -1499
                  auipc        a5, 331665
                  xor          s8, s6, t5
                  auipc        t2, 227784
                  srl          t0, t5, tp
                  add          t1, s2, sp
                  ori          a4, s2, 549
                  sltiu        s10, t0, 1188
                  andi         t3, a0, -721
                  sltiu        tp, s7, 964
                  or           t1, s0, s4
                  add          t5, zero, s4
                  sltiu        a7, s2, -587
                  sll          t6, t2, zero
                  nop
                  sltu         s5, s10, tp
                  slli         s10, a5, 28
                  xor          t2, t4, a0
                  sltu         s4, s1, t5
                  slt          s3, s4, a2
                  xor          zero, a3, s0
                  sll          a2, s4, a0
                  sll          s11, t5, s9
                  srli         t1, s5, 5
                  sra          a1, sp, t5
                  sll          s1, a4, a2
                  auipc        t5, 1021502
                  auipc        t5, 243294
                  srai         t2, a5, 17
                  xori         zero, a4, -1847
                  slti         s10, s8, -1544
                  xori         a1, a0, -142
                  auipc        t1, 945745
                  addi         s2, s6, 608
                  xori         t3, t5, -945
                  srl          s2, a1, s4
                  xor          a2, s1, a5
                  lui          a3, 304257
                  or           a6, s9, t0
                  xori         a0, ra, 1241
                  xor          a4, s8, a5
                  srai         s3, s5, 6
                  ori          tp, t4, -542
                  sltiu        a5, t6, 1069
                  xor          s8, ra, s4
                  slti         s4, s11, 531
                  sub          ra, s2, s6
                  ori          t2, a6, 1977
                  srli         a3, a5, 17
                  and          s5, a3, a1
                  slt          t3, s10, a7
                  lui          s3, 935323
                  xor          tp, a7, tp
                  sltiu        s10, s2, 1116
                  lui          s7, 626734
                  srl          a7, s11, a3
                  sub          a3, sp, gp
                  add          s6, a2, s8
                  xori         ra, s2, -1400
                  or           zero, a1, gp
                  or           s3, a7, t0
                  slli         t6, t2, 13
                  nop
                  sltiu        s8, s8, 852
                  nop
                  addi         s3, t1, 1210
                  xori         s4, t6, 589
                  sra          a2, s8, t0
                  srl          s7, sp, a1
                  srai         s3, s8, 19
                  slt          s8, gp, s8
                  sra          a3, a4, a3
                  srai         t3, tp, 31
                  srai         zero, a5, 7
                  xori         s5, ra, 61
                  add          a1, a5, s0
                  add          t5, a1, s6
                  slli         s7, t6, 30
                  lui          t6, 987781
                  slli         a0, t4, 24
                  xor          tp, t2, s3
                  sltiu        zero, t2, -528
                  xori         a3, s5, -214
                  andi         s3, t3, -1701
                  slt          t5, s5, gp
                  or           a7, t4, t0
                  ori          a7, s0, 172
                  srai         t5, gp, 3
                  xori         s2, s3, -198
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           t6, 0x0
                  li           s2, 0x0
                  li           sp, 0xe4da3d5f
                  li           s3, 0xe67a02ae
                  li           t3, 0x0
                  li           a4, 0xfbbd98fe
                  li           a6, 0xffffffff
                  li           t1, 0x80000000
                  li           s10, 0x0
                  nop
                  auipc        t1, 982957
                  auipc        s7, 353086
                  add          t6, a4, t1
                  nop
                  nop
                  sub          a6, t6, t1
                  addi         s7, t6, -1640
                  nop
                  add          s7, t1, sp
                  sub          s3, a6, s10
                  nop
                  sub          t3, s3, t6
                  sub          s10, sp, sp
                  lui          s10, 184258
                  nop
                  sub          s3, t1, s2
                  add          t1, s3, sp
                  auipc        t6, 777560
                  lui          t3, 1037967
                  auipc        s7, 834812
                  add          sp, sp, a4
                  addi         a4, a4, 1311 #end riscv_int_numeric_corner_stream_20
                  add          a7, s7, a4
                  slti         s6, t5, 256
                  slt          s5, s1, zero
                  sra          s2, s10, s8
                  sltu         s5, s3, gp
                  or           a2, a7, s0
                  auipc        t3, 690607
                  add          s11, zero, t5
                  ori          a5, ra, -1242
                  srl          t6, t1, t0
                  xor          s5, t6, a1
                  or           a6, s9, a6
                  lui          t5, 133251
                  slt          s6, s6, tp
                  addi         a5, t6, 1813
                  srai         s11, s8, 26
                  ori          a7, gp, 1304
                  srai         s8, tp, 24
                  xor          s5, s8, t5
                  and          s3, a5, s2
                  addi         s2, s10, 1083
                  slli         s11, s10, 13
                  nop
                  sub          s6, a3, t3
                  and          a5, t6, s2
                  sub          s1, s8, a6
                  and          ra, t2, t2
                  slti         t1, sp, 407
                  auipc        a2, 197785
                  sra          t2, s6, s7
                  sub          a4, s9, t2
                  add          s3, s11, s10
                  or           a0, s4, t6
                  srli         ra, gp, 24
                  add          a2, s10, tp
                  slli         s2, gp, 6
                  ori          t0, tp, 958
                  sltu         s4, ra, t4
                  xor          t0, a3, t3
                  sub          t1, s3, s2
                  sltiu        zero, gp, 1352
                  xor          s3, t1, t4
                  sub          t0, s2, s2
                  or           s8, a5, a4
                  slli         t5, s8, 22
                  xor          s1, t4, zero
                  sub          t3, s0, t2
                  or           s6, s4, s2
                  add          s3, s4, gp
                  srli         a0, s8, 15
                  xor          a0, a3, s6
                  auipc        a4, 351671
                  sltu         s10, a5, t4
                  sltu         a0, t2, t1
                  sltu         s8, s3, a5
                  sll          s10, a3, s5
                  sltiu        tp, s0, -1511
                  srai         t5, s5, 18
                  sra          s4, tp, t2
                  auipc        s1, 449157
                  sll          t1, s2, ra
                  auipc        t1, 281094
                  slli         s4, t6, 24
                  or           a5, t4, a1
                  sltu         s10, s0, a1
                  sub          a2, s5, sp
                  srli         gp, a5, 7
                  sub          t0, s4, s4
                  addi         s6, a6, -933
                  srl          t5, s7, gp
                  auipc        a4, 379535
                  sra          a6, s1, a7
                  xor          s7, a2, t0
                  srl          tp, s8, s6
                  lui          t6, 235155
                  srli         a6, s4, 20
                  nop
                  srai         a0, a5, 9
                  slli         s5, s1, 31
                  or           s3, zero, s2
                  xori         ra, s3, -1850
                  add          sp, s0, s11
                  xori         ra, tp, -1570
                  xor          ra, s3, t6
                  srl          s5, a7, s9
                  lui          s7, 22069
                  ori          ra, t3, -1860
                  andi         a5, t0, 1352
                  sra          s8, t4, s7
                  ori          s10, s10, 691
                  auipc        a5, 205406
                  and          a7, t2, a6
                  add          s8, a5, t1
                  srai         s3, s1, 18
                  nop
                  or           s7, gp, t6
                  and          a2, t1, t1
                  add          t5, t2, t5
                  sltiu        a6, s10, -156
                  and          s8, a1, s8
                  srli         a1, a1, 8
                  slt          gp, s3, s2
                  slli         a7, ra, 22
                  nop
                  srai         s4, t3, 14
                  nop
                  xori         t0, a0, -2001
                  slli         t0, s4, 14
                  xor          tp, s3, s1
                  srl          gp, t0, zero
                  sub          s4, a6, t0
                  sub          sp, gp, a1
                  slt          t2, a1, a5
                  andi         ra, a4, 999
                  or           s7, a0, a6
                  sra          zero, a5, a0
                  slti         a7, a3, 1003
                  sub          a4, s9, s3
                  srl          t6, a3, s10
                  srai         s1, s3, 22
                  nop
                  srli         s7, s11, 3
                  srai         s11, s1, 26
                  slt          s6, s0, s1
                  auipc        a1, 219962
                  or           a0, a7, s2
                  ori          a7, a0, -901
                  add          s4, s7, s8
                  sll          s10, a1, s0
                  and          s2, t2, a3
                  sll          s11, s9, t5
                  sll          t3, s5, s0
                  sltu         s3, s7, s0
                  lui          a6, 15195
                  sltu         s11, t6, a6
                  sll          sp, s9, s7
                  slti         s4, s8, -9
                  lui          t1, 147106
                  addi         a4, s3, -740
                  addi         tp, a2, -388
                  sub          s2, t2, s11
                  sltu         t6, t0, gp
                  sra          t0, s4, t2
                  slt          zero, a7, s2
                  and          a5, s7, t0
                  add          s10, gp, s9
                  sltiu        a0, a3, -600
                  add          s11, t6, a5
                  slt          t3, s1, a4
                  ori          a5, a3, -1093
                  slli         t0, s8, 17
                  xor          gp, s3, s10
                  sltiu        s2, s1, -1166
                  lui          tp, 831408
                  auipc        t1, 244338
                  sltu         s4, s3, t3
                  slt          a3, s4, s3
                  ori          a3, s7, -1917
                  slli         a2, a3, 3
                  auipc        s6, 463960
                  slt          t1, a0, t3
                  ori          s11, t2, -287
                  add          t3, t1, t0
                  xor          s2, ra, s2
                  nop
                  slti         t0, zero, -212
                  slt          a5, a7, s10
                  lui          s5, 944614
                  sll          a7, t3, s11
                  slli         t0, a6, 10
                  xor          ra, a3, s1
                  srl          a3, a3, ra
                  add          ra, a2, a1
                  nop
                  and          a5, a2, zero
                  slti         s1, a2, -1537
                  addi         s11, a1, 1585
                  andi         s6, ra, 1263
                  slti         a0, s3, -1425
                  nop
                  slli         a1, a1, 9
                  auipc        a2, 751538
                  and          a1, sp, s1
                  sltu         t6, gp, s5
                  srl          a3, t4, s9
                  slti         gp, s1, -318
                  sub          t2, sp, t4
                  add          t1, a3, t6
                  slli         s4, a7, 5
                  srli         a7, a3, 15
                  add          s2, s8, sp
                  and          zero, a0, a1
                  srl          a6, a2, s11
                  lui          s8, 340997
                  add          t3, s2, a3
                  addi         s5, a5, 421
                  andi         a4, a1, 894
                  and          a4, s6, s6
                  srai         a7, s1, 20
                  sra          ra, s0, s2
                  slt          s11, s9, sp
                  sltu         s7, a0, a1
                  srli         s5, s4, 0
                  srli         t0, s5, 4
                  sra          t2, t3, sp
                  slt          tp, s1, t0
                  xori         gp, s7, 1765
                  xori         zero, s2, 1076
                  slli         a3, s2, 7
                  ori          sp, t6, -98
                  xor          a6, s5, tp
                  or           s6, gp, a1
                  slt          a2, t5, s1
                  sltiu        ra, sp, 1430
                  xor          a3, a0, a1
                  add          t6, a2, sp
                  slt          a2, s1, a0
                  srai         s5, t2, 8
                  and          a2, gp, a4
                  addi         a4, a6, 1784
                  add          a6, a2, a6
                  sub          a6, s4, a4
                  sub          a3, s0, s3
                  and          a4, s7, zero
                  sll          t1, tp, a6
                  add          t6, s7, s6
                  srai         zero, s11, 21
                  srl          a6, t3, s0
                  xor          s2, t1, t3
                  sltiu        s4, a4, -1096
                  lui          zero, 1029578
                  add          t5, a4, s8
                  or           s8, s0, t0
                  sll          a2, t2, s1
                  sltiu        a2, a4, -1981
                  slt          s11, s3, s9
                  sra          a7, t4, tp
                  addi         s2, a5, -1452
                  sltiu        s8, t2, 1797
                  srl          zero, t0, a7
                  srl          t0, a4, t4
                  sltiu        tp, t5, -1967
                  slti         a4, s0, 642
                  lui          a1, 826743
                  and          s5, a1, s11
                  slli         gp, t1, 5
                  nop
                  sltiu        s11, t6, 1932
                  srl          t1, s11, t4
                  addi         gp, s0, 627
                  sra          s5, t6, ra
                  lui          s7, 827594
                  xor          a1, a4, s6
                  lui          t5, 396158
                  or           s1, s6, s1
                  slt          s10, zero, s7
                  srli         tp, s5, 11
                  slli         t5, sp, 14
                  xor          t5, zero, s0
                  slt          s10, t1, s8
                  srl          sp, s4, sp
                  lui          ra, 240235
                  andi         t0, zero, -1471
                  add          s8, t4, a6
                  andi         s7, t1, -1227
                  add          a0, a3, a4
                  sra          t0, t4, s4
                  sra          a5, a0, s2
                  or           s11, s1, s4
                  sll          s11, t5, s2
                  sll          s2, a7, s4
                  add          s11, s1, a6
                  xori         s5, s10, -713
                  auipc        tp, 368861
                  sltiu        a0, s4, -1496
                  srl          s1, gp, t5
                  sra          t3, s7, t5
                  sltu         a6, t1, ra
                  add          sp, gp, a4
                  auipc        ra, 1044808
                  xori         a1, a6, 423
                  ori          a5, s10, 390
                  xori         s8, s11, 592
                  sltu         s2, a7, sp
                  auipc        t5, 466513
                  sltu         a0, a1, t1
                  slt          a1, t4, a5
                  nop
                  addi         a0, t1, 65
                  addi         s5, t4, -835
                  xor          s5, s5, t6
                  sub          t0, sp, t4
                  sll          a2, a1, ra
                  slt          s6, a5, s5
                  slti         a6, tp, 931
                  slli         a7, a5, 8
                  sub          t5, s8, s5
                  sub          t0, s3, s5
                  sltu         zero, s1, s4
                  slti         t5, s11, -1889
                  sltiu        s1, t6, 1669
                  addi         tp, a0, -152
                  or           a1, s6, a6
                  ori          a3, a4, 931
                  or           t5, s10, gp
                  sll          t3, s8, a7
                  xori         tp, s3, -343
                  sub          a7, s7, s0
                  srl          s5, t2, s7
                  xori         a3, s2, -1126
                  srli         t3, a5, 12
                  sltiu        s10, s4, -1334
                  add          a4, tp, a1
                  xori         t1, t2, 359
                  sll          zero, tp, s0
                  or           t3, a6, a0
                  xori         s10, a7, 1611
                  srai         a2, a0, 3
                  andi         s8, a3, -1632
                  xori         a0, s6, 883
                  nop
                  sltu         s6, a6, s9
                  or           s11, a3, sp
                  add          a5, ra, s10
                  sltu         a7, a4, s3
                  srai         s5, s8, 5
                  srli         s8, zero, 13
                  sra          a0, t4, a4
                  sub          zero, t3, zero
                  xor          s11, a6, s2
                  xori         s1, t0, -897
                  sltu         s3, a0, t0
                  andi         s11, s11, -1976
                  sub          zero, s6, s11
                  slli         ra, a6, 13
                  sltiu        a2, s8, 1243
                  xori         t6, s1, -847
                  or           s2, t6, gp
                  slli         s6, s1, 24
                  slli         s11, s1, 3
                  sltiu        a3, s9, -1873
                  sra          s8, s5, a4
                  xori         t0, s0, 245
                  or           t1, a6, t2
                  andi         s11, s6, 2001
                  slti         a4, a7, 947
                  srl          s4, a7, a5
                  lui          t3, 807869
                  andi         s4, sp, -592
                  srl          s6, ra, s8
                  add          t1, t4, t1
                  xor          s6, t4, a5
                  srai         zero, s2, 22
                  xor          s1, gp, sp
                  or           t2, a4, tp
                  sub          a5, s4, s4
                  lui          sp, 137072
                  or           s10, ra, gp
                  slt          sp, s6, ra
                  srl          a1, a0, a1
                  ori          t0, s4, -382
                  addi         s8, a4, -1848
                  auipc        t5, 630067
                  sra          t3, t0, s5
                  sltiu        zero, s1, 291
                  or           s8, s6, a7
                  auipc        s8, 987006
                  slt          a1, t4, t3
                  sltu         t3, a2, s1
                  slti         t5, s1, -1257
                  sub          sp, s11, zero
                  andi         t6, tp, 298
                  slt          gp, zero, s6
                  slt          sp, zero, s1
                  andi         gp, sp, -563
                  nop
                  or           s7, s8, s11
                  sltiu        a1, s11, 1166
                  xori         a7, t3, 1345
                  and          s11, s6, s7
                  ori          a1, s4, 1831
                  sltu         ra, s10, t4
                  sltiu        s3, s0, -718
                  sra          s5, a5, ra
                  sltiu        s7, a1, 1742
                  xor          sp, s9, s1
                  sltiu        a7, s9, -1017
                  sll          gp, a4, t2
                  srl          a0, t6, s3
                  lui          a1, 311618
                  ori          tp, sp, -1974
                  sll          a0, tp, sp
                  sub          s7, s5, s5
                  nop
                  addi         a0, s8, 451
                  and          s7, s6, a2
                  auipc        a7, 855986
                  andi         s4, s1, -1152
                  slt          a1, t6, t5
                  srl          s3, a7, t4
                  slt          s11, s3, s7
                  xori         s3, s9, -414
                  sub          a0, s6, t2
                  srl          s3, s2, t1
                  addi         gp, s9, 271
                  srai         s1, s5, 15
                  add          s6, a5, zero
                  and          a6, s8, gp
                  or           s11, s7, t1
                  and          s11, a0, s0
                  sltu         a4, t6, gp
                  or           s1, s1, a4
                  lui          sp, 1020268
                  srli         t5, t5, 26
                  ori          s8, a3, -1478
                  srl          ra, s8, t5
                  xor          gp, t1, sp
                  add          a7, s1, t3
                  nop
                  slt          s4, a4, s5
                  srli         a4, s7, 31
                  and          s3, zero, s6
                  andi         a3, s1, 1994
                  ori          s5, a2, -1351
                  srl          tp, s8, s8
                  sltu         sp, a0, a2
                  auipc        s11, 706483
                  srai         a0, sp, 28
                  xori         a5, t4, 1596
                  xori         s11, s10, 1996
                  srl          t0, s11, t2
                  or           tp, s11, s2
                  andi         s7, t6, -173
                  sra          gp, a3, a2
                  or           a7, t3, a7
                  lui          tp, 1037580
                  nop
                  xor          tp, s2, s9
                  sub          a7, s1, s11
                  auipc        a5, 328663
                  nop
                  andi         gp, a6, -293
                  or           s6, t6, s4
                  sll          zero, gp, s3
                  sub          a4, t0, a5
                  sll          s4, t5, s1
                  srai         s4, ra, 8
                  sra          a4, s5, t5
                  sub          a0, t0, s2
                  ori          sp, s8, -1020
                  lui          a1, 1014096
                  sll          s11, a3, a3
                  or           t0, t6, s9
                  xor          t1, ra, t6
                  lui          zero, 885625
                  srl          s1, s1, gp
                  ori          s8, t4, 1344
                  auipc        s6, 810417
                  and          zero, s8, s1
                  srai         a2, s6, 19
                  sltu         a0, t2, a5
                  slli         s1, s9, 16
                  addi         t2, t3, 1648
                  auipc        s2, 578775
                  auipc        t5, 583999
                  sub          a6, s7, s4
                  auipc        s5, 208351
                  nop
                  srai         a6, t3, 31
                  add          t3, sp, zero
                  sltiu        t6, t1, -822
                  sll          s8, a5, a1
                  sra          s10, a3, a2
                  sll          a1, a4, s7
                  slli         s10, t4, 2
                  addi         s6, s3, 13
                  slti         t2, s2, -441
                  srli         zero, a3, 25
                  sltiu        s5, t0, 1157
                  xor          ra, s2, a7
                  sra          sp, s6, s11
                  auipc        tp, 850770
                  srli         t3, s7, 18
                  sra          s4, s4, s11
                  auipc        a0, 116719
                  sll          s11, t0, t0
                  slli         a3, s8, 21
                  and          t5, t1, s0
                  srli         s4, a5, 11
                  srai         t2, s0, 5
                  slt          a1, gp, s9
                  sra          s6, ra, s8
                  slt          t0, a6, sp
                  xori         a0, s3, -723
                  or           a6, t6, s9
                  addi         a3, s9, 1530
                  auipc        a0, 1047719
                  srl          tp, sp, zero
                  add          sp, t1, s7
                  add          t1, s6, t2
                  li           a3, 0x4796c7fd #start riscv_int_numeric_corner_stream_30
                  li           t5, 0x80000000
                  li           t3, 0x80000000
                  li           s7, 0x80000000
                  li           s6, 0xffffffff
                  li           t0, 0xe7a07d63
                  li           s5, 0xffffffff
                  li           s8, 0x32d8ee55
                  li           a6, 0x80000000
                  li           gp, 0xf366f492
                  add          t3, s5, gp
                  sub          t5, t5, a3
                  auipc        gp, 814622
                  add          a6, t3, s8
                  add          a3, gp, t5
                  add          a3, s6, gp
                  addi         gp, a3, 868
                  lui          a6, 750461
                  add          t3, t3, s6
                  auipc        a6, 946291
                  add          a3, a3, s7
                  sub          a6, s5, t0
                  nop
                  auipc        gp, 867898
                  auipc        t5, 105774
                  nop
                  auipc        s8, 269383
                  sub          s5, s8, t0
                  nop
                  auipc        s7, 321902
                  nop
                  addi         s6, a6, 341
                  addi         a3, gp, 1069
                  lui          s8, 58705
                  sub          t0, gp, a6
                  lui          gp, 843319
                  sub          t0, t0, a3
                  addi         s7, s7, 443
                  lui          t0, 522724 #end riscv_int_numeric_corner_stream_30
                  srl          ra, t3, a1
                  lui          a5, 112658
                  sra          a1, tp, t0
                  add          a2, tp, a6
                  slli         a2, t0, 14
                  slt          zero, ra, s1
                  andi         gp, a7, 1557
                  sra          s2, a7, t1
                  or           s3, t2, s8
                  ori          s4, t1, -1796
                  sub          t5, a7, t6
                  ori          a2, ra, -1063
                  sll          a3, t4, a7
                  sltiu        s11, t3, -1898
                  slt          t1, a4, s9
                  auipc        s4, 717605
                  addi         s3, a3, 623
                  slti         t3, a5, -762
                  slt          t3, t5, a6
                  auipc        a4, 475609
                  xori         t5, a5, 1298
                  add          a5, a1, s3
                  or           s1, t4, a3
                  srl          t0, tp, s8
                  sub          a5, t6, a3
                  or           a4, t1, s1
                  ori          s11, s0, 527
                  slli         gp, tp, 2
                  srai         t2, a7, 3
                  xor          s3, s5, s9
                  sub          a3, sp, a6
                  sub          a1, a4, sp
                  srl          s4, s0, s8
                  slli         t1, sp, 3
                  xor          t5, gp, s2
                  sub          t6, a3, s9
                  sra          t6, a1, s0
                  lui          a3, 457224
                  sll          a6, s10, t6
                  srli         s3, a0, 4
                  xori         s10, t4, 693
                  ori          s7, a2, -1306
                  add          s7, t0, tp
                  ori          sp, t0, -1307
                  nop
                  slt          t3, s4, s11
                  sll          s4, zero, a7
                  ori          zero, s0, -9
                  xor          s3, t4, t5
                  slti         t0, zero, 928
                  xori         sp, sp, 1185
                  sltu         t1, t1, s1
                  or           zero, zero, t6
                  addi         ra, a1, 1386
                  sltiu        s11, s5, -253
                  srl          t6, s11, t6
                  or           tp, t0, ra
                  lui          zero, 949169
                  srai         a2, t0, 17
                  slt          zero, a0, a7
                  sra          a3, s10, t3
                  sub          t1, a3, t5
                  sll          a3, t6, zero
                  sltu         a5, t1, a0
                  slt          t3, t2, s6
                  or           t3, s3, tp
                  andi         s7, a1, -496
                  and          s3, a6, a5
                  srl          s11, a0, s0
                  sub          tp, s3, s11
                  sltiu        a7, s6, 1391
                  addi         s10, a0, -1324
                  nop
                  slli         a0, a5, 21
                  srl          a3, ra, s1
                  srli         a2, s4, 15
                  xor          a2, s10, s2
                  addi         t1, s7, 1153
                  addi         s11, t3, 1253
                  srl          s10, a0, a7
                  sub          a5, s9, a0
                  slli         a5, gp, 22
                  slli         s7, t3, 12
                  srli         a7, a5, 25
                  or           sp, t4, s8
                  and          a4, a7, tp
                  slti         s1, zero, 1846
                  sltiu        a5, a3, 268
                  nop
                  and          t1, t5, a5
                  nop
                  andi         s6, s11, -724
                  add          s1, a2, a5
                  addi         gp, s0, -1952
                  add          s1, t0, a7
                  lui          s5, 89922
                  xori         sp, s6, -426
                  auipc        a3, 522462
                  lui          t6, 416984
                  srli         t2, t5, 5
                  ori          gp, s0, -869
                  add          a6, t1, a4
                  slt          s11, gp, s9
                  addi         zero, t5, -2008
                  andi         t5, a2, -554
                  and          s1, s11, t0
                  srl          s6, a2, t6
                  slli         a3, zero, 17
                  sll          sp, t4, zero
                  nop
                  addi         s5, a3, -728
                  slli         s1, s9, 12
                  addi         s3, s6, -1071
                  xori         a7, a3, 328
                  or           ra, sp, a1
                  sll          sp, t2, t4
                  sub          s11, s2, s8
                  srl          s4, a6, s10
                  xor          t2, s11, ra
                  lui          gp, 120786
                  nop
                  slli         t0, s4, 0
                  srai         t5, t3, 26
                  sra          a1, gp, s3
                  add          a6, t5, a2
                  xori         a2, a1, -1803
                  sub          tp, t2, a6
                  ori          s10, s0, -171
                  nop
                  slli         t1, s6, 20
                  slli         a1, gp, 23
                  srli         s2, t3, 29
                  sltiu        t3, s5, 194
                  slt          s7, a6, t4
                  sltu         a6, s4, s11
                  nop
                  slti         t1, a1, 638
                  slt          a0, gp, s8
                  slt          ra, s10, t3
                  sll          t3, t5, t3
                  nop
                  and          s5, t5, t5
                  sll          t1, a3, s2
                  srli         a5, s1, 23
                  lui          s5, 262599
                  auipc        a0, 540640
                  and          s1, s7, s9
                  sltiu        gp, s0, -925
                  auipc        s7, 430410
                  srli         s7, s0, 1
                  add          s3, a3, s0
                  slti         sp, s0, -607
                  add          s7, t0, s8
                  or           s7, t1, a6
                  sltu         a4, t5, s3
                  nop
                  sll          s1, t5, s6
                  addi         s4, a2, -550
                  andi         s8, a7, -1811
                  srli         s8, a5, 12
                  or           a7, t6, s9
                  xor          t3, s3, t1
                  sltiu        a4, s4, 1575
                  slt          gp, t5, sp
                  slt          a1, s3, s3
                  sub          s8, a0, a2
                  ori          s11, t4, -734
                  or           s8, s0, t3
                  sltiu        a0, a5, -1886
                  add          t0, a5, t5
                  slti         a2, a3, 1940
                  sltiu        s1, t3, -933
                  sub          s1, a1, s11
                  slli         a4, a2, 13
                  slt          t3, s3, s3
                  sll          tp, t2, a2
                  sub          s7, a2, ra
                  xor          sp, s3, s8
                  xor          a7, s8, s3
                  srli         t1, s3, 2
                  addi         s8, t5, -1505
                  andi         t0, ra, 834
                  andi         s1, a7, 420
                  nop
                  ori          s7, a1, 298
                  slti         a7, s10, -166
                  auipc        gp, 419274
                  sltiu        t1, s10, 299
                  ori          s2, zero, -1177
                  xori         s2, s11, -1943
                  xori         a3, t4, 89
                  xor          t2, s4, t5
                  sub          s11, s7, t0
                  xor          t6, a6, a5
                  auipc        t1, 105440
                  xor          a4, ra, t0
                  add          t1, s7, a2
                  sub          t6, ra, t2
                  srli         t5, a6, 18
                  addi         a5, a5, 1039
                  addi         t1, t0, -1152
                  sub          tp, a3, a6
                  auipc        s7, 963829
                  srl          s6, s4, a5
                  and          a3, t0, gp
                  add          s6, a5, a0
                  lui          a1, 3120
                  srli         t3, s9, 12
                  andi         t3, a7, 736
                  xori         sp, sp, 1251
                  auipc        t6, 540604
                  and          a3, a5, a3
                  sra          a2, s5, t2
                  slti         s11, a0, -1489
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           s10, 0x80000000
                  li           s8, 0x80000000
                  li           ra, 0xb96c063e
                  li           t6, 0xffffffff
                  li           t0, 0x0
                  li           t2, 0x0
                  li           t3, 0x0
                  li           a6, 0x0
                  li           t5, 0xffffffff
                  addi         ra, t6, -296
                  auipc        ra, 496117
                  sub          t2, t3, s8
                  auipc        s3, 301047
                  nop
                  nop
                  lui          s3, 584297
                  nop
                  addi         t0, t5, -491
                  sub          t6, s8, s3
                  lui          s3, 138501
                  auipc        t2, 998580
                  sub          t5, t2, s10
                  sub          t5, t2, s3
                  nop
                  lui          s3, 64057
                  addi         t5, ra, 54
                  nop
                  auipc        a6, 154018
                  nop
                  add          s8, ra, s10
                  add          t5, s8, t3
                  addi         ra, ra, -831
                  addi         t0, t6, 664 #end riscv_int_numeric_corner_stream_35
                  xor          a0, s8, tp
                  nop
                  add          t2, s5, a5
                  srli         a3, s0, 19
                  addi         a2, a2, -459
                  nop
                  slt          t1, s8, s9
                  srl          a0, a1, t3
                  srai         t6, tp, 17
                  nop
                  srl          s6, t6, a2
                  srli         t1, s9, 27
                  add          t5, a5, s10
                  sltiu        t6, sp, -1865
                  xori         s3, s1, -499
                  srli         s8, a0, 21
                  auipc        t0, 1048409
                  srl          ra, a7, a1
                  slti         s11, ra, -787
                  sll          s5, s1, s10
                  and          s7, a6, s8
                  slti         a4, s0, -26
                  sub          t6, s8, a5
                  auipc        s5, 921176
                  slt          gp, s6, zero
                  add          a4, a1, s7
                  slti         s5, s1, -773
                  sub          s10, zero, s9
                  lui          zero, 736499
                  srl          ra, s1, s0
                  srl          ra, s7, gp
                  xori         a3, s6, 414
                  xor          tp, a4, s10
                  andi         zero, s7, 1583
                  sltu         zero, s0, s7
                  add          a5, t0, tp
                  sra          t6, s8, t0
                  srl          a0, s0, s1
                  lui          t3, 810989
                  nop
                  add          s11, a2, a1
                  auipc        tp, 735305
                  sltu         gp, gp, a7
                  srl          a7, s6, s5
                  nop
                  sltiu        sp, a4, -1581
                  sll          t2, s4, t6
                  sra          tp, s8, a6
                  sll          s2, t1, s5
                  add          s6, zero, s2
                  ori          t5, s1, -1322
                  andi         s2, s9, 662
                  andi         gp, sp, -287
                  sll          sp, t3, s10
                  nop
                  sub          s3, s5, s7
                  slti         t5, a0, -1144
                  slt          sp, ra, s11
                  auipc        s5, 593884
                  auipc        s5, 766194
                  add          s10, a1, s7
                  or           t6, gp, a7
                  srai         s6, gp, 25
                  auipc        s8, 683746
                  sub          a3, s0, t2
                  srli         sp, s9, 23
                  addi         t6, tp, 330
                  sltiu        a2, s10, -622
                  slli         ra, ra, 7
                  add          s1, a6, s1
                  srai         t6, s11, 30
                  srl          tp, a6, t0
                  and          a2, a1, ra
                  srai         a7, sp, 7
                  slli         t3, a1, 28
                  srl          s6, zero, s1
                  andi         zero, t3, -1072
                  sub          s4, t2, s4
                  andi         a2, t2, 359
                  xor          s10, s9, a1
                  slt          s11, a0, a3
                  ori          a6, a1, -884
                  slt          a5, s10, a0
                  sra          s11, a0, a2
                  sra          s2, s6, t1
                  sra          a7, t5, t6
                  srli         a6, s0, 4
                  sltiu        t0, a1, -1345
                  sll          t2, sp, s3
                  srli         a3, s2, 15
                  slt          t6, t0, t4
                  and          a4, gp, s6
                  srl          s1, t4, a1
                  slti         zero, ra, 1775
                  nop
                  xori         ra, a7, -1658
                  andi         t3, s10, -1028
                  auipc        a2, 500765
                  add          gp, t0, s4
                  add          t5, s3, t3
                  sltiu        t2, gp, -349
                  lui          t6, 253624
                  and          s10, sp, t4
                  srai         s11, s10, 26
                  or           s11, a4, s11
                  sub          s2, t6, t3
                  srli         s2, a7, 11
                  ori          a3, a2, 1768
                  sll          s3, s6, s3
                  nop
                  slli         ra, s5, 18
                  sltu         s5, t2, t3
                  slti         t6, s1, -1973
                  sltiu        gp, s2, 101
                  and          a3, s2, s3
                  srl          a3, t5, s2
                  sltu         s5, t1, tp
                  slti         a2, t6, 180
                  addi         t2, t3, -378
                  slti         s10, a6, 843
                  auipc        t1, 321968
                  lui          a0, 76596
                  or           gp, t1, t2
                  slt          s1, t2, a0
                  nop
                  lui          a5, 736463
                  add          a0, s1, a5
                  sub          gp, sp, s6
                  add          t3, a5, zero
                  add          a6, s1, sp
                  slt          s10, s10, s8
                  srai         a6, a6, 12
                  sltiu        t6, s2, 979
                  andi         s6, s10, -1765
                  slt          tp, s5, tp
                  sub          t2, t5, ra
                  sll          a3, a6, a2
                  sll          s2, a3, a1
                  srli         t3, t2, 24
                  xori         a6, t6, -1896
                  sltu         a0, s0, t0
                  srli         s2, a1, 2
                  sltu         s1, a7, t1
                  sub          a7, s6, sp
                  sltiu        s11, t0, -1070
                  ori          t3, s2, 1378
                  sll          t2, a1, s0
                  sltiu        gp, a2, 1190
                  srai         s4, a3, 21
                  lui          s1, 805536
                  and          a7, s7, s7
                  slt          a1, a0, t2
                  srli         a6, s9, 19
                  slli         s4, gp, 8
                  sll          tp, s3, zero
                  addi         s6, ra, -975
                  and          t6, a5, s7
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x80000000
                  li           s4, 0x0
                  li           s10, 0x80000000
                  li           t3, 0xffffffff
                  li           a5, 0x81c41e17
                  li           sp, 0xffffffff
                  li           a6, 0x80000000
                  li           ra, 0x9f482500
                  li           s8, 0x0
                  addi         s2, a5, 1679
                  lui          sp, 147486
                  sub          s8, s10, a5
                  lui          s8, 284456
                  auipc        sp, 430072
                  addi         s8, a5, 1576
                  sub          s8, a5, s10
                  add          a5, a6, ra
                  lui          s4, 1048129
                  sub          ra, sp, a6
                  sub          sp, ra, a6
                  sub          a5, ra, a6
                  auipc        s4, 508234
                  lui          a7, 916576
                  sub          s4, s2, a6
                  nop
                  nop
                  sub          a5, s8, sp
                  sub          sp, s10, s8
                  nop
                  nop
                  lui          ra, 18766
                  sub          s10, sp, t3
                  add          a5, a5, a6
                  sub          ra, t3, t3
                  sub          t3, s4, s4
                  add          s10, s4, t3 #end riscv_int_numeric_corner_stream_4
                  sltu         a5, t0, t3
                  xori         a7, gp, -178
                  slli         t2, a2, 14
                  slt          s6, s11, s1
                  or           a3, s9, s6
                  sub          t3, s6, sp
                  srli         s10, a4, 2
                  srai         t6, a1, 28
                  sltu         a1, a1, s3
                  srai         t3, tp, 0
                  and          s7, s4, s6
                  srli         t3, a7, 29
                  xor          s2, a7, s3
                  sub          s3, t5, a6
                  and          t2, a3, s10
                  nop
                  auipc        s3, 246560
                  or           t3, a5, s4
                  lui          t6, 252959
                  andi         s7, a5, -927
                  or           s8, zero, s4
                  slti         a7, t6, -1458
                  ori          ra, s5, 1458
                  srli         s11, t4, 6
                  or           t3, zero, a3
                  slti         a6, s5, 1437
                  srai         s8, t6, 24
                  sra          s2, s3, s0
                  nop
                  srli         zero, s7, 20
                  addi         a1, t0, -411
                  slt          s4, t5, a1
                  sltiu        a5, s6, -774
                  sra          s11, s8, a6
                  slli         s1, t0, 2
                  slt          s1, a4, gp
                  srl          t1, t5, s8
                  nop
                  addi         a0, s8, 336
                  andi         a6, s5, -1264
                  add          t2, t4, s10
                  sll          s2, s4, s5
                  sltiu        s8, a1, 1126
                  xor          s3, a5, t2
                  ori          s8, t6, 827
                  sltu         t5, s3, s1
                  sub          zero, s0, t6
                  andi         s3, s1, -191
                  andi         gp, a4, 1419
                  srl          t1, s3, a1
                  auipc        gp, 374370
                  xori         a5, s5, -459
                  nop
                  add          t6, a2, s3
                  slti         a0, s7, 955
                  srli         t3, s8, 17
                  sltiu        a0, a4, -914
                  sltu         s4, s1, a2
                  xori         s1, s0, 1070
                  slli         t2, t6, 14
                  sltu         s3, t2, zero
                  xori         s10, t2, -1863
                  andi         s2, s11, 545
                  sra          a1, t6, zero
                  sra          s10, s9, s3
                  add          s10, t1, a4
                  srli         t2, s8, 29
                  sltiu        s1, ra, 1704
                  sltu         s8, t0, a4
                  add          a7, s7, s11
                  auipc        a2, 780420
                  xori         s4, a4, 98
                  slti         zero, ra, 394
                  sltu         s4, s10, a0
                  or           t2, t0, a4
                  nop
                  addi         sp, s0, -1850
                  xor          t5, t6, s9
                  addi         s7, s4, 1204
                  or           s1, a3, zero
                  xor          t5, s8, tp
                  slti         s4, a1, 1809
                  addi         s3, a5, 1146
                  or           a3, s11, s8
                  xor          a0, t2, a2
                  sub          s5, a7, a2
                  srli         s8, a6, 24
                  sub          t2, s2, s9
                  sll          s8, a7, t3
                  slli         ra, s3, 9
                  or           a4, s3, s0
                  or           s11, s7, s2
                  xori         s5, a2, 1381
                  srl          a0, s7, a1
                  nop
                  andi         ra, s3, 6
                  xori         t3, s0, -114
                  ori          s6, s7, -1541
                  nop
                  srai         a3, t6, 3
                  slti         s5, gp, -1512
                  lui          t1, 130512
                  sll          s2, s4, gp
                  sltiu        t5, a0, 117
                  or           t1, zero, a5
                  nop
                  slt          t0, t2, a7
                  addi         s11, a1, -593
                  lui          zero, 374082
                  srli         sp, a0, 6
                  sltiu        s1, a2, -1573
                  ori          s4, s9, 513
                  srai         t0, t5, 7
                  xor          s2, t4, a1
                  sltu         s2, a0, s5
                  slli         s1, a3, 27
                  add          ra, s11, s7
                  auipc        t6, 698516
                  or           s7, t3, s11
                  nop
                  andi         s10, zero, -937
                  xor          a5, a6, gp
                  sub          t1, t3, t3
                  srli         zero, s0, 31
                  auipc        s8, 321367
                  sltiu        s7, a2, -1877
                  slti         ra, gp, 1590
                  add          a2, a0, t1
                  lui          s6, 296712
                  slt          s1, s3, zero
                  nop
                  sub          s5, t2, s11
                  slti         t5, t4, 1102
                  sra          a2, s10, s1
                  srai         s5, gp, 3
                  ori          t2, t1, -1267
                  sra          a6, a0, s7
                  slt          s10, gp, gp
                  sltu         t0, a2, s7
                  sll          s10, t2, t6
                  andi         zero, s6, 203
                  sltu         a0, t5, tp
                  and          t5, s2, t4
                  andi         s11, s7, -1973
                  slti         a7, s4, 1547
                  sub          a7, gp, t4
                  add          s8, s0, t2
                  srli         s5, sp, 11
                  lui          s7, 216404
                  srl          ra, s0, s9
                  nop
                  nop
                  srai         s4, s5, 12
                  sltu         s5, s6, s8
                  slti         s1, s11, -637
                  or           t6, s0, a3
                  auipc        a3, 718213
                  sltiu        s6, a4, -794
                  slt          s3, t6, t2
                  sub          t1, a3, s7
                  srl          gp, zero, a6
                  srai         s11, a4, 8
                  srai         a1, t2, 23
                  and          s1, a4, sp
                  sub          zero, tp, t1
                  sll          t3, s0, s9
                  xori         s1, t5, 1042
                  and          s1, a7, t1
                  sra          gp, s0, s7
                  addi         a1, a7, 201
                  sltu         t2, a3, s2
                  sll          a4, tp, ra
                  xor          s7, t2, s0
                  xori         s5, t0, -308
                  xori         a6, a5, 1240
                  ori          a1, t6, 185
                  slt          a6, s0, s4
                  nop
                  and          a0, a5, sp
                  srai         a7, a5, 10
                  sra          gp, sp, t2
                  sll          gp, t6, gp
                  slt          a4, a7, s7
                  xor          s10, a6, t4
                  slli         s8, a6, 1
                  and          sp, tp, s5
                  srl          t3, s5, s3
                  slt          a4, gp, s5
                  addi         s11, sp, 592
                  or           a5, s7, s4
                  slti         zero, t6, 1227
                  slli         zero, gp, 10
                  sra          a7, s5, s11
                  xori         s1, s0, 838
                  slli         a1, s11, 28
                  sub          sp, zero, s9
                  and          s6, t1, a3
                  and          a4, s10, t2
                  sltiu        t0, s9, -1181
                  addi         t0, a4, -1073
                  sra          s7, t3, t2
                  sra          s1, a1, t4
                  srai         s3, a5, 6
                  xor          s8, a7, s10
                  sub          s4, s6, s4
                  auipc        s11, 248628
                  sll          gp, a2, t6
                  and          s2, s11, t2
                  ori          tp, a7, -305
                  xor          t1, t3, s2
                  srai         s5, a1, 20
                  lui          t6, 412165
                  xor          t6, s4, s0
                  srl          sp, s5, a4
                  xor          tp, s1, t3
                  lui          a5, 241514
                  addi         s11, a6, 367
                  auipc        s4, 180506
                  lui          ra, 568966
                  sltiu        s10, a5, 1407
                  addi         a1, a0, 1473
                  nop
                  slt          s8, a5, ra
                  sltiu        s8, s1, -1170
                  sub          a5, s0, t5
                  srl          a0, tp, zero
                  slti         s8, s2, -991
                  xor          s7, a3, a2
                  srai         s8, t2, 17
                  or           s1, gp, ra
                  sub          zero, t1, t0
                  auipc        s8, 542830
                  sub          a7, zero, t1
                  sltiu        t1, a4, 994
                  srli         t6, t5, 5
                  nop
                  srli         ra, a1, 0
                  sra          t6, a4, s4
                  slli         s10, t3, 17
                  slli         s6, s9, 8
                  addi         s1, a2, -42
                  nop
                  slli         t5, t0, 7
                  addi         a4, tp, -746
                  nop
                  srli         s2, a0, 27
                  nop
                  nop
                  srli         s10, s4, 8
                  slti         a6, a0, -1320
                  srli         t1, s1, 15
                  sll          a2, t0, s3
                  slli         s6, ra, 24
                  sub          gp, s7, t5
                  auipc        t3, 738657
                  addi         s2, s7, -932
                  sll          a0, s7, s3
                  ori          t6, s9, 240
                  slt          s11, s1, gp
                  auipc        t6, 343016
                  srl          t0, s4, a6
                  nop
                  sltiu        s2, sp, 1526
                  andi         a3, s4, 1393
                  xor          s2, t4, s4
                  sltiu        a5, t2, 819
                  xor          t5, t2, s11
                  xori         t6, a6, -369
                  addi         t3, s0, -806
                  nop
                  lui          tp, 217865
                  xori         s5, a1, 571
                  slti         s3, t4, 1964
                  srl          t1, s7, tp
                  slli         a3, t3, 7
                  sltiu        s3, s9, 471
                  slt          sp, s9, s7
                  add          a2, gp, sp
                  srai         a0, ra, 18
                  nop
                  nop
                  ori          a7, gp, -752
                  and          t3, a5, s8
                  xori         ra, a5, -1768
                  sltu         a5, s8, a6
                  lui          s10, 620396
                  xori         a0, ra, 827
                  sra          a4, a0, a6
                  or           s10, t0, sp
                  slli         t5, t1, 10
                  add          s5, t2, a0
                  srai         t1, t2, 13
                  auipc        a3, 292603
                  sub          sp, s11, s6
                  ori          s10, a0, -792
                  lui          a5, 578594
                  xori         s1, s5, 209
                  sltiu        t6, a1, 1931
                  srai         a6, gp, 12
                  slt          a1, a7, t6
                  addi         s10, t5, -1828
                  or           t3, s6, s5
                  sub          s2, a6, a2
                  srai         a1, a3, 25
                  andi         zero, s4, 7
                  addi         a4, s0, -1286
                  sub          s5, tp, zero
                  srai         gp, s7, 8
                  andi         a2, s0, 1082
                  slti         tp, zero, 1382
                  auipc        ra, 434973
                  ori          s5, a6, 624
                  and          t6, t2, a4
                  srai         gp, a7, 15
                  slli         s10, tp, 28
                  srli         a5, s0, 28
                  slt          t2, a0, s8
                  srli         s8, ra, 17
                  or           zero, t4, t1
                  andi         t6, s8, -1228
                  or           s6, t5, t5
                  srl          t1, s2, s5
                  auipc        sp, 262130
                  addi         a1, s0, -1391
                  srli         t3, tp, 27
                  or           sp, t0, a0
                  sra          s1, a1, s3
                  sll          s7, sp, t5
                  srl          s4, a3, s10
                  andi         t6, s10, -1025
                  slti         t1, a1, -1183
                  slli         t0, a7, 4
                  slti         t1, t5, 1615
                  sltu         s8, t0, s0
                  slti         s10, ra, -239
                  sltu         s5, s10, t3
                  and          s1, s0, t6
                  sub          a5, t0, t4
                  sub          t6, s7, s2
                  slli         s1, s0, 18
                  xor          tp, gp, s9
                  andi         s6, t2, -1634
                  sltu         a7, a5, s9
                  slti         a7, ra, -378
                  or           a1, t6, s11
                  slt          a0, s8, t0
                  andi         s1, s11, 1053
                  sltu         s7, s11, tp
                  lui          s6, 118090
                  sll          a0, s4, ra
                  ori          a6, sp, 1155
                  sub          ra, a2, t3
                  srli         a2, s9, 11
                  nop
                  auipc        tp, 858529
                  lui          a6, 765480
                  xori         a3, a3, -808
                  sub          sp, sp, s9
                  auipc        a3, 616979
                  sll          t3, a4, a0
                  nop
                  slli         t1, a3, 19
                  andi         s4, a0, 1711
                  add          gp, s1, s7
                  sub          s7, t4, a0
                  nop
                  sltu         a5, s1, sp
                  slti         s4, t5, 793
                  add          s5, s11, t6
                  addi         s10, gp, -2028
                  slt          t3, a3, a4
                  addi         t0, t2, 1766
                  andi         s5, tp, 1109
                  srli         t2, a7, 21
                  slt          tp, a1, s9
                  addi         a7, s10, 537
                  and          tp, s11, s7
                  or           a6, a7, a7
                  slti         s3, s1, 1844
                  xor          a5, s1, gp
                  xori         s7, a7, 1461
                  addi         s5, s5, 807
                  auipc        s6, 974888
                  and          t3, t6, s5
                  nop
                  srli         s4, a0, 7
                  srai         t2, t3, 2
                  ori          a4, zero, 164
                  srl          a6, a6, t3
                  nop
                  andi         s7, sp, -2012
                  srl          zero, t6, s8
                  srli         a0, s4, 10
                  slli         t2, t3, 17
                  xori         s1, a1, -689
                  slli         s8, t6, 1
                  slt          zero, a6, s6
                  slli         tp, s0, 14
                  srl          t3, a7, t3
                  sltiu        s4, s8, 1191
                  and          a2, s3, s11
                  or           sp, s2, sp
                  sub          s10, a5, s6
                  xor          s1, s1, t4
                  sub          t3, a6, s7
                  lui          a1, 966823
                  srl          t5, a6, t6
                  sub          a1, s7, a2
                  srai         s7, tp, 0
                  lui          s8, 900833
                  srli         t0, s1, 18
                  slli         t3, a5, 18
                  srli         t1, s8, 9
                  and          t5, a3, s8
                  xor          a1, a4, a5
                  addi         s8, sp, 419
                  auipc        s8, 855102
                  addi         sp, t4, -1962
                  sltiu        zero, t2, -299
                  sltu         s6, a4, t2
                  sltu         zero, t4, t3
                  andi         a7, a7, 636
                  slti         s8, a7, -316
                  sll          s6, gp, gp
                  slli         gp, a1, 10
                  xor          ra, s0, zero
                  sltu         a1, sp, t1
                  slti         a0, tp, 530
                  and          a6, s10, t0
                  xori         t3, a1, -1636
                  sra          ra, s4, s11
                  sltiu        s4, s4, -1979
                  lui          s7, 746166
                  xor          s11, t1, a6
                  xor          s3, a4, a6
                  srli         t1, s5, 0
                  nop
                  sll          a1, a1, s8
                  or           tp, a0, t2
                  srai         a6, t0, 25
                  add          t5, a1, tp
                  nop
                  srli         t1, a3, 11
                  slti         a2, s0, -1411
                  srai         t2, a1, 5
                  sltu         a1, sp, t2
                  sltu         t1, a2, ra
                  addi         s5, t2, 1408
                  or           s5, sp, ra
                  xor          sp, t6, s1
                  slti         s6, a6, 212
                  xor          s11, s3, t4
                  sll          s5, s0, s6
                  xori         a6, zero, -314
                  xor          a6, s11, ra
                  sltiu        s11, t6, 358
                  addi         t0, s0, -527
                  lui          s4, 291105
                  xori         t6, s5, 210
                  sra          a2, s10, t5
                  nop
                  ori          ra, s2, 1840
                  sub          s6, s1, t4
                  slt          s7, s2, s1
                  andi         s8, t4, -22
                  slli         a2, s7, 4
                  sltiu        a2, s1, 1704
                  nop
                  nop
                  xori         s10, s11, 824
                  xori         tp, a7, -204
                  sub          a1, a1, a3
                  auipc        s2, 47579
                  addi         t5, s0, 789
                  sltiu        t3, s7, 841
                  auipc        tp, 542547
                  slt          a5, a3, s9
                  andi         a1, tp, -1813
                  srai         gp, s10, 0
                  sub          t2, a3, s0
                  srl          ra, s0, s11
                  sltu         s1, t1, s11
                  slt          a6, s5, s6
                  sltiu        a7, a4, 1609
                  nop
                  or           s3, a3, a6
                  slli         sp, gp, 19
                  sra          a3, a3, a5
                  ori          a0, gp, 108
                  srai         t5, s1, 31
                  sra          s10, zero, s6
                  slti         sp, t5, 483
                  ori          s1, s5, -361
                  sltiu        t2, tp, 769
                  or           t6, t6, zero
                  xor          s1, t1, zero
                  ori          a7, s11, -920
                  srai         a7, a7, 29
                  srai         a3, a1, 4
                  xor          s11, s3, gp
                  xor          s3, zero, t3
                  srai         a3, s8, 10
                  and          a7, s10, a5
                  andi         ra, s2, -674
                  slt          gp, tp, s5
                  srli         a1, zero, 11
                  slt          t5, s4, t4
                  sltu         s2, zero, s8
                  xori         a2, t4, -1852
                  srai         sp, s10, 31
                  add          ra, s5, s1
                  slti         t2, s5, 1198
                  auipc        t6, 1023036
                  nop
                  slt          tp, t3, ra
                  sra          zero, a5, s5
                  srl          t6, a0, t2
                  sub          a5, a3, a1
                  ori          s4, a1, 639
                  srai         t0, s1, 21
                  sltu         s8, s3, t3
                  nop
                  sra          a1, s9, t2
                  lui          a5, 45365
                  auipc        a3, 954825
                  nop
                  xori         t6, a4, 454
                  addi         s5, s2, 1887
                  srai         s1, s5, 0
                  sltu         ra, s3, a5
                  srl          t5, zero, t0
                  slli         s11, s6, 2
                  or           s2, s2, s2
                  add          a2, a6, a2
                  nop
                  xor          s10, a7, s10
                  srli         tp, t6, 9
                  andi         t3, a1, 261
                  slti         s8, a1, 1001
                  auipc        sp, 630767
                  srai         s5, t0, 12
                  sltiu        s10, s10, 1241
                  sltiu        a5, a6, -217
                  srli         s7, a0, 14
                  sltu         t0, a4, s2
                  sub          a3, s8, a5
                  auipc        s3, 812690
                  addi         s8, a1, -777
                  slti         s8, ra, 545
                  slli         ra, t3, 28
                  sub          s5, s10, a5
                  sra          a7, t6, s9
                  addi         t5, zero, -1915
                  srli         a2, s7, 0
                  srl          a7, s11, s2
                  andi         s1, a1, -49
                  slt          s4, a1, a4
                  sltu         s1, s0, a6
                  slti         s7, t2, 504
                  xori         gp, t3, 103
                  addi         a1, t2, 736
                  lui          t0, 566705
                  slt          t0, a6, t5
                  xori         ra, t4, -415
                  andi         gp, t0, 1765
                  slti         gp, t3, 694
                  sltu         a5, a2, a6
                  xor          a7, gp, a7
                  sll          t3, a6, tp
                  ori          a5, s1, 1704
                  sub          zero, s5, s2
                  add          a7, sp, s3
                  xori         sp, t0, -745
                  sltiu        t0, s8, 854
                  slli         a2, t6, 16
                  lui          t3, 611103
                  srai         a7, sp, 31
                  sub          s1, s5, t2
                  sub          s10, t6, s4
                  sub          s6, t5, a1
                  addi         t1, a5, -63
                  sub          s8, sp, s0
                  nop
                  sub          a0, t5, a4
                  sub          zero, s0, a1
                  auipc        t0, 75475
                  sltiu        a5, s4, 881
                  sra          t2, tp, t5
                  andi         s6, t6, 106
                  srl          s10, s2, a2
                  srli         a0, a4, 30
                  auipc        s1, 550094
                  ori          a5, s2, -732
                  sll          tp, t3, t4
                  or           s2, t1, s2
                  lui          t0, 147807
                  slt          s5, a4, a4
                  andi         s3, s5, 1756
                  lui          s1, 992113
                  xor          t5, s2, tp
                  sub          ra, s8, t6
                  auipc        a5, 913650
                  srl          s7, s1, a3
                  sra          a4, sp, s0
                  and          s6, t3, a4
                  add          zero, s3, gp
                  sltiu        tp, a1, 824
                  srai         s7, t1, 26
                  slti         s3, s8, -861
                  slti         sp, s3, 211
                  sub          t1, a5, s9
                  xori         a7, s4, -2031
                  lui          a7, 968564
                  or           a7, s3, a1
                  xor          s5, s7, zero
                  xori         a6, s2, 244
                  add          s6, a7, a1
                  srl          a5, tp, t4
                  sub          s5, t5, t6
                  nop
                  xori         s8, t2, -1271
                  lui          t3, 608178
                  addi         a1, s7, -964
                  auipc        a3, 24308
                  addi         gp, a5, 125
                  nop
                  slt          s1, s11, s10
                  and          a4, t3, a5
                  add          t3, s0, tp
                  slt          s2, a7, s2
                  slti         s11, s4, -527
                  xor          t0, t4, t6
                  or           t6, a5, sp
                  auipc        t1, 838955
                  sub          s1, s11, s4
                  srl          t1, a2, gp
                  ori          sp, tp, 616
                  srai         gp, sp, 16
                  srli         s1, s6, 30
                  andi         t6, zero, 1269
                  nop
                  addi         a3, a2, -130
                  auipc        t1, 521351
                  addi         t2, t2, -1901
                  sub          gp, tp, s4
                  ori          s1, s9, -1755
                  srai         s7, s7, 15
                  lui          tp, 937665
                  srl          s5, a1, a5
                  addi         t0, s11, -366
                  addi         a4, t0, 107
                  srl          t6, s3, a1
                  andi         a4, a3, -1800
                  slt          zero, s5, a5
                  addi         a6, t3, 1544
                  ori          s1, t1, 1342
                  auipc        s5, 815580
                  and          a3, t2, a3
                  xori         s6, tp, -1666
                  addi         ra, t5, -1496
                  nop
                  andi         s5, a3, -621
                  slti         a7, s7, 156
                  or           a3, t2, s4
                  ori          t5, a0, -1606
                  auipc        s5, 1031126
                  srl          a7, t5, ra
                  slt          s3, s11, t0
                  or           a1, t3, tp
                  sltu         s7, s11, a5
                  andi         t2, s1, 1388
                  sub          t2, t1, gp
                  andi         ra, a2, 1874
                  xor          ra, a7, t1
                  andi         t2, s4, -1424
                  auipc        a0, 684395
                  srai         t2, a6, 10
                  or           t3, gp, a0
                  and          a3, zero, t4
                  sub          tp, a5, a2
                  auipc        t5, 76122
                  slt          s7, s1, t2
                  addi         s7, s0, 1636
                  srl          a5, s4, s10
                  slt          s5, a4, s8
                  slt          a2, t6, gp
                  sra          a0, s4, a7
                  and          a5, t4, a2
                  sra          s2, s6, a3
                  sltu         s8, s2, a1
                  sub          a3, s5, sp
                  sll          a3, s6, a0
                  slt          a3, s7, s9
                  andi         s3, a0, -1628
                  or           s11, s5, t2
                  and          s11, s0, s10
                  sll          ra, a5, s3
                  slli         a2, a7, 3
                  add          a1, s5, s11
                  sll          s10, t4, s1
                  slti         a7, t6, -670
                  auipc        s2, 927510
                  addi         a0, s10, 703
                  xori         ra, s0, 1909
                  slti         s11, s3, -1087
                  slti         s10, a5, 1223
                  srli         s6, a1, 30
                  xor          a3, s1, zero
                  slli         s11, s3, 18
                  andi         a6, s8, 1821
                  slt          t0, s3, s4
                  or           s7, sp, t4
                  srl          a5, t5, a1
                  sltiu        s5, s11, -1183
                  sub          s6, s10, s4
                  and          s2, s1, s1
                  sra          a3, s0, gp
                  xor          t1, a0, a4
                  andi         t2, s6, 984
                  slti         t5, s1, -347
                  sll          a6, gp, s2
                  and          sp, t4, s10
                  add          gp, a7, t3
                  sltiu        s10, a7, -9
                  and          t6, s2, t5
                  andi         s4, a0, 1141
                  sltiu        sp, s4, -1941
                  sltiu        s3, ra, -6
                  sra          s4, s3, s4
                  auipc        sp, 4702
                  xor          s5, s2, t6
                  slli         a3, s7, 28
                  nop
                  slt          t5, t3, s7
                  sub          a7, t4, t1
                  xori         tp, a5, 1160
                  sltu         t6, tp, s2
                  sub          s8, t6, a7
                  sltiu        t2, a7, -1157
                  auipc        zero, 551705
                  srl          s1, t2, t4
                  xor          ra, s7, t5
                  xor          a2, t3, a2
                  slt          a4, a7, t4
                  andi         a7, tp, 1631
                  add          s2, a1, zero
                  slli         a0, ra, 5
                  auipc        a7, 279607
                  addi         s7, s9, 1648
                  and          a7, tp, t1
                  slti         s2, a2, 1261
                  addi         s7, sp, -7
                  sra          t2, t5, a0
                  nop
                  and          t2, t1, ra
                  srl          s11, s3, s4
                  xor          sp, a3, t3
                  srl          a3, t1, t3
                  and          s6, ra, sp
                  slt          ra, t3, t2
                  add          a7, a2, t3
                  sra          a5, a2, a2
                  ori          s1, a0, 1668
                  or           gp, gp, t2
                  sra          s5, a2, s9
                  sltiu        t6, t0, 592
                  or           s3, s1, s0
                  add          t3, sp, s0
                  srli         a4, s11, 1
                  slli         a2, tp, 12
                  sll          s1, s1, s10
                  sltu         t3, a7, s0
                  lui          t3, 171692
                  sll          t6, t6, t0
                  lui          a1, 615625
                  xor          t5, s0, t3
                  auipc        s6, 207128
                  slti         t6, tp, 1251
                  ori          ra, a7, 1496
                  nop
                  slli         a6, s10, 8
                  sra          a0, t2, a6
                  xor          a6, a1, tp
                  auipc        t3, 808064
                  slti         s3, s4, -470
                  sltu         s1, t2, a1
                  sltiu        s11, ra, -1794
                  auipc        s3, 977110
                  xor          s1, s5, zero
                  andi         t3, s2, -582
                  sltiu        t1, t6, -995
                  slt          t3, t6, t0
                  slt          ra, s1, s1
                  sltiu        s11, t1, -242
                  lui          a5, 797847
                  sltu         a0, s3, t3
                  add          s7, s5, s9
                  xori         tp, a0, -143
                  sub          a2, s5, s5
                  xor          a1, t2, gp
                  sra          s2, t4, t3
                  addi         gp, s0, -514
                  and          t2, tp, a0
                  slt          a0, a4, a4
                  sra          t6, zero, t1
                  srli         s4, tp, 0
                  srli         t0, s11, 19
                  or           t0, s3, s11
                  xori         s3, s6, -1393
                  nop
                  sll          t0, gp, s1
                  sra          s6, s2, s10
                  slti         s7, ra, -1519
                  add          t6, gp, s8
                  nop
                  sra          s5, s11, zero
                  add          s2, gp, s8
                  xor          s11, a3, s11
                  and          s3, a1, s11
                  lui          s2, 793965
                  sll          tp, sp, s2
                  auipc        zero, 514227
                  and          s2, t0, zero
                  and          s2, a6, t3
                  xori         a6, s11, -2025
                  auipc        t5, 579361
                  srli         s1, a2, 30
                  auipc        t5, 652658
                  sub          a2, a4, s11
                  and          s5, t1, s4
                  xori         a2, a0, -1358
                  addi         a5, a1, -1610
                  sltiu        a3, t6, -1016
                  srai         tp, t2, 17
                  xori         ra, a7, -1227
                  add          a1, gp, s3
                  add          t1, tp, s7
                  addi         s7, s7, 630
                  sra          sp, a1, ra
                  or           a2, a0, s0
                  sra          s5, s0, t5
                  sltu         a6, s4, t1
                  slt          tp, s4, a0
                  andi         sp, s11, 1251
                  addi         gp, t2, -479
                  srli         s2, a5, 30
                  srl          a6, t1, s3
                  sll          s2, s10, s2
                  xor          t3, a6, ra
                  or           tp, a6, a0
                  lui          s10, 135486
                  slti         t1, s6, -319
                  slt          s8, a2, ra
                  auipc        t5, 743982
                  srai         a5, s11, 26
                  add          s1, t4, s8
                  slt          s7, s1, a4
                  srli         sp, s9, 27
                  sub          s8, t5, s2
                  slt          a6, a7, t4
                  ori          t5, a3, -1721
                  xor          tp, s0, s2
                  addi         zero, ra, -1461
                  sltu         a1, s0, a1
                  nop
                  lui          a6, 907819
                  sltu         t2, s11, s4
                  lui          s7, 471885
                  ori          t2, gp, -1138
                  sltiu        a5, a1, -793
                  sra          s11, s0, s3
                  auipc        s1, 331861
                  slli         s6, t0, 21
                  slti         a0, t0, 1800
                  add          a2, t4, s7
                  srli         s3, gp, 29
                  sll          s7, s11, t5
                  lui          a7, 775356
                  srl          s5, t6, s4
                  sub          a3, a5, t1
                  xori         tp, a6, 1257
                  sltiu        s3, sp, -17
                  srai         a4, s4, 22
                  sub          a3, tp, s2
                  auipc        s5, 1015211
                  andi         s7, s2, 1712
                  add          s4, s2, a3
                  or           t6, s4, a5
                  sll          s5, zero, s3
                  addi         a4, t1, 1908
                  sub          s1, s2, s6
                  sltiu        s8, ra, -1519
                  slli         a3, s6, 8
                  sltiu        s7, t4, -518
                  slli         s11, s10, 14
                  auipc        t1, 969620
                  slti         zero, t0, -599
                  and          a1, s8, s5
                  sra          t5, s4, t6
                  srai         s6, a3, 20
                  srli         s8, t2, 18
                  auipc        s3, 219471
                  nop
                  sra          a1, sp, t3
                  srl          s1, t2, a3
                  slti         s8, ra, 1364
                  sub          ra, t0, a3
                  srli         tp, t3, 27
                  sub          t1, s0, a4
                  sub          s5, s11, t0
                  sub          ra, s0, s3
                  sll          s1, a1, a4
                  srli         t3, tp, 7
                  add          sp, t6, s2
                  andi         t6, t2, -868
                  addi         a1, s2, 1278
                  slli         sp, t1, 6
                  sll          t3, zero, gp
                  add          s7, a5, a0
                  andi         a1, s6, 984
                  sra          t2, a3, s6
                  sltiu        t6, s1, -1351
                  lui          s11, 225067
                  and          a5, a7, s8
                  slti         s2, t0, 674
                  srai         s6, a0, 10
                  sltiu        t6, t2, 498
                  slli         s2, t2, 10
                  xor          a4, t4, a6
                  sltiu        a1, a1, -2043
                  xori         s6, s10, 173
                  srl          s8, s1, t0
                  sub          s4, t3, s7
                  sll          tp, s11, s7
                  sub          a1, a7, a2
                  slli         a7, ra, 21
                  or           s5, a0, s3
                  slti         t0, s0, -798
                  srl          a2, s9, s2
                  xori         a1, t0, -170
                  or           t5, a2, s2
                  add          a6, ra, a5
                  ori          t3, s2, -28
                  andi         s6, t2, -43
                  lui          a3, 6482
                  sra          zero, a2, gp
                  sll          s1, ra, ra
                  xori         sp, s7, -850
                  srai         s4, gp, 1
                  nop
                  slt          t6, s8, a0
                  srli         s2, s5, 10
                  andi         t2, a0, 373
                  srl          t0, tp, s8
                  add          a2, gp, s9
                  sra          s11, zero, t5
                  srai         gp, a3, 18
                  xor          s11, s8, s3
                  srli         a5, s3, 9
                  slt          t6, t3, tp
                  sll          a7, t1, s2
                  andi         a3, s3, -1104
                  slti         s7, t2, -318
                  xor          a1, ra, tp
                  sltiu        a7, s1, -458
                  slti         t1, s1, 1661
                  xor          t3, t6, sp
                  lui          s10, 764989
                  lui          t3, 227354
                  or           ra, s2, s9
                  slt          a2, t1, a4
                  xori         t5, s2, -1586
                  sll          t2, a1, s8
                  addi         s7, s0, 104
                  xor          t0, zero, a3
                  sltiu        a3, t2, -1563
                  or           s2, s6, a0
                  sltiu        a7, zero, 659
                  or           s4, t1, s1
                  xor          s3, s1, s4
                  sll          zero, s9, s2
                  auipc        s5, 244843
                  xor          zero, t5, t1
                  or           s10, gp, gp
                  andi         sp, s1, 284
                  slli         ra, a6, 23
                  xor          a7, a1, t6
                  sra          s2, t3, t0
                  xor          zero, s4, t2
                  srl          a2, s7, a5
                  sll          s4, s2, s11
                  sub          tp, t6, s0
                  add          s1, s1, s9
                  ori          s1, a3, -523
                  andi         s8, s10, 626
                  addi         a3, s2, 1258
                  and          s8, s7, s4
                  nop
                  andi         ra, s0, 181
                  xor          t1, gp, tp
                  srl          a7, s9, t2
                  ori          s1, s11, 1982
                  sub          sp, a3, s1
                  add          s11, a6, t6
                  slt          s4, t1, s4
                  and          t1, t1, s9
                  auipc        a2, 186
                  lui          s4, 753791
                  sltiu        s5, s7, 1450
                  xori         gp, s6, 1060
                  srl          s11, a2, a5
                  sll          ra, s9, s2
                  srai         s6, a5, 8
                  srli         t2, ra, 14
                  nop
                  ori          gp, s4, -1899
                  sll          a2, s9, t4
                  lui          t5, 780814
                  srl          gp, t2, a1
                  sltiu        t1, t0, 1015
                  ori          a0, t5, -1559
                  ori          a7, t6, -1250
                  auipc        t2, 887526
                  nop
                  slti         s3, a4, -1091
                  sltu         a2, a5, a7
                  ori          s1, s9, -541
                  and          a7, sp, t5
                  srai         ra, s9, 24
                  addi         s8, s2, 167
                  slli         s1, t0, 13
                  and          s2, t4, s7
                  add          s3, t5, sp
                  ori          a3, s7, 197
                  or           a0, a1, a6
                  ori          s7, t6, -1134
                  srai         t3, a4, 31
                  nop
                  or           s11, s10, s5
                  xor          s7, a2, t6
                  add          zero, t1, t4
                  sltu         a5, s8, ra
                  sll          s11, a2, a1
                  sll          gp, s1, t4
                  auipc        s8, 408162
                  sltiu        t5, s1, -714
                  sra          sp, a4, t2
                  add          t6, s1, s2
                  xor          s8, s4, s7
                  sltu         s6, t0, a0
                  lui          t5, 503487
                  andi         s7, s3, 1615
                  nop
                  sll          s8, t3, a4
                  auipc        t5, 930139
                  nop
                  slli         s11, a7, 17
                  ori          s2, zero, 1109
                  slt          t2, s2, gp
                  sll          t1, ra, t2
                  sll          ra, s11, t1
                  auipc        s11, 50004
                  addi         gp, t2, -1609
                  sll          t0, s7, s0
                  ori          a0, s5, 264
                  srli         sp, s2, 14
                  srli         t6, s3, 6
                  sltu         s11, a1, a0
                  xor          t5, s3, a7
                  slt          a4, s3, s2
                  ori          a4, tp, -1354
                  xori         s6, a2, 1212
                  auipc        a4, 339773
                  sub          ra, s8, s9
                  srli         a6, s2, 1
                  xori         t2, t4, 762
                  andi         t6, s5, -788
                  slli         ra, t2, 30
                  slt          a0, a0, s9
                  srli         tp, zero, 23
                  xori         gp, a4, -71
                  srai         a7, a3, 12
                  or           a5, zero, s9
                  sll          s5, a7, gp
                  sra          t6, t4, a6
                  xori         a6, s5, -1257
                  addi         s1, t0, -1902
                  auipc        a4, 908126
                  andi         t0, a0, -1946
                  slti         a3, a2, 531
                  xor          ra, t1, s5
                  xori         t3, s10, 408
                  or           s4, t4, a1
                  sra          a6, a0, a2
                  nop
                  auipc        s10, 996751
                  srli         s7, s5, 4
                  lui          s11, 426733
                  srli         s11, a3, 8
                  add          sp, t1, t2
                  andi         t1, t3, -1501
                  sub          sp, ra, t6
                  sra          s5, t6, t2
                  li           s6, 0xdc90323c #start riscv_int_numeric_corner_stream_5
                  li           s2, 0x80000000
                  li           a3, 0x80000000
                  li           t1, 0xfa0df8bf
                  li           a0, 0x80000000
                  li           s10, 0xffffffff
                  li           a6, 0x0
                  li           s4, 0x80000000
                  li           t5, 0x0
                  li           t6, 0x0
                  sub          t1, s2, s6
                  auipc        a3, 472040
                  lui          t6, 924081
                  sub          s4, a0, t6
                  nop
                  add          a0, a0, a6
                  add          a3, a3, s6
                  lui          a0, 585428
                  sub          t6, s6, t6
                  nop
                  auipc        t5, 416245
                  addi         s2, s6, 500
                  addi         a3, a3, 1715
                  addi         a3, a0, -1411
                  auipc        a6, 14187
                  nop
                  sub          s10, t1, a6
                  nop
                  nop
                  auipc        a0, 787213
                  sub          s6, a6, a0
                  nop
                  lui          a3, 509722
                  addi         s6, t5, 514
                  lui          s4, 636026
                  auipc        t1, 346432
                  add          a0, a6, a0
                  lui          a6, 238319
                  lui          s6, 102803 #end riscv_int_numeric_corner_stream_5
                  or           t3, t3, s7
                  andi         s10, t1, -1543
                  srli         zero, t1, 4
                  sll          a7, s3, t0
                  sltu         s7, s7, gp
                  lui          a0, 763756
                  sub          a6, t3, t3
                  add          a4, t4, a2
                  lui          s5, 469220
                  andi         s11, gp, -27
                  sltiu        a4, a1, 55
                  nop
                  sra          a1, s11, s8
                  auipc        s2, 327890
                  sltiu        a2, s9, 1231
                  sra          t5, s6, a5
                  sra          s1, s1, s11
                  ori          s8, a1, 736
                  or           a4, a1, a4
                  slti         s2, s3, -1692
                  xor          s5, sp, t6
                  srli         s6, sp, 9
                  and          a1, a4, t0
                  srai         a2, a5, 24
                  sltiu        t0, zero, -1908
                  sltiu        s8, a5, -1957
                  and          s5, t3, sp
                  andi         a3, s0, 205
                  lui          s6, 898573
                  and          s1, s2, sp
                  sra          s5, zero, s7
                  add          s8, a7, gp
                  nop
                  xori         t3, s10, 674
                  auipc        t0, 323830
                  sub          s8, s6, s8
                  and          a0, a1, a3
                  sltiu        t5, a3, 1002
                  srai         sp, a0, 14
                  and          s4, s10, ra
                  sltiu        a3, t6, -1831
                  xori         a3, s3, -792
                  andi         s8, a7, 269
                  sltiu        zero, t0, -1470
                  srli         s6, a2, 3
                  sub          s4, a3, s11
                  sub          s4, s9, t3
                  lui          s4, 510916
                  sll          s2, t6, a7
                  slli         s5, a1, 4
                  slli         s8, s5, 18
                  sltu         s3, t0, a3
                  srli         s4, s1, 17
                  andi         t2, a1, -385
                  sub          s11, a6, s8
                  sltu         gp, t5, s10
                  auipc        t3, 459701
                  andi         t2, s1, 730
                  srl          s6, t3, tp
                  slt          a5, a1, s8
                  sltu         a4, t2, s2
                  slt          zero, t0, a2
                  sub          a5, t3, s0
                  nop
                  or           t3, s5, a3
                  sub          a7, s2, zero
                  add          ra, t1, sp
                  slti         gp, s1, -1339
                  srai         s8, a5, 24
                  sub          s7, t5, a4
                  ori          s1, zero, -1197
                  srai         t3, ra, 22
                  ori          a2, s0, -335
                  nop
                  or           ra, t3, ra
                  add          a2, t0, s0
                  slt          s8, s9, s8
                  slli         t5, t2, 4
                  srai         a5, s7, 7
                  add          s7, a3, sp
                  addi         s2, zero, -1856
                  srai         t5, t4, 13
                  and          t1, t3, a6
                  andi         a5, a6, -644
                  sltiu        t2, a1, 1583
                  ori          s8, t6, 1959
                  and          a7, t1, s7
                  sltu         zero, s1, a4
                  srai         s4, s7, 20
                  and          tp, s7, s5
                  sra          s1, t5, s4
                  sub          s10, ra, s1
                  srl          a7, s2, a0
                  or           t3, s0, s5
                  sltiu        t3, a0, 1509
                  sub          a3, t4, s7
                  or           zero, zero, a7
                  slli         s11, a4, 4
                  sra          s4, a6, s6
                  slti         s8, t2, 69
                  or           a4, a4, a3
                  ori          a4, a3, -948
                  xori         sp, s11, 46
                  sub          a0, s10, t4
                  srl          a6, s7, a6
                  nop
                  or           a2, s4, s10
                  srai         a1, a5, 19
                  addi         zero, a4, -1354
                  sub          t6, s3, s6
                  sltiu        s10, s11, -1149
                  slli         s1, a0, 30
                  or           t3, sp, sp
                  sra          t1, tp, s10
                  slli         a1, s5, 11
                  srai         s11, t6, 1
                  srli         s5, a1, 19
                  auipc        s11, 965812
                  sltiu        a3, a3, -1193
                  sltu         s6, t2, a4
                  and          a1, a1, a5
                  sra          s4, t1, a3
                  xor          t3, s5, s4
                  slli         s10, s7, 12
                  sltu         a1, a7, s8
                  sltiu        s11, s10, 1663
                  sub          gp, s6, s0
                  or           s3, s5, s5
                  auipc        a2, 702506
                  sltiu        t0, t6, -1018
                  srli         a5, t3, 16
                  slt          s5, a6, s0
                  sra          a6, a4, a3
                  sll          s1, gp, t0
                  add          zero, t2, s5
                  srli         gp, tp, 11
                  add          a5, a0, t3
                  srai         s5, t2, 25
                  sra          a0, s9, tp
                  slli         sp, sp, 19
                  lui          t1, 213082
                  srai         s8, t0, 25
                  sra          t1, a0, a0
                  sll          s1, s11, s8
                  sub          a3, s2, a0
                  srli         s6, t1, 26
                  srai         a7, sp, 16
                  addi         a7, s3, -630
                  auipc        s10, 404177
                  or           a3, tp, a7
                  slt          s6, a5, s1
                  slt          gp, ra, a4
                  slti         a3, s4, -1973
                  and          a6, a7, a4
                  nop
                  andi         s11, s2, -916
                  addi         a5, s9, -1635
                  slti         ra, zero, 1342
                  andi         s10, s4, -1136
                  auipc        t1, 644405
                  and          t1, t5, s3
                  srli         tp, t0, 27
                  srli         a6, a4, 5
                  auipc        a6, 218286
                  slt          t2, t0, sp
                  add          t6, s8, s0
                  nop
                  srli         s3, s9, 27
                  sltu         gp, ra, t5
                  ori          a4, s4, -779
                  sltu         t6, tp, gp
                  xor          a5, gp, s11
                  andi         tp, s10, -818
                  srl          s6, a3, a6
                  srli         a7, a5, 6
                  auipc        s6, 194306
                  add          a4, s6, sp
                  auipc        t5, 414706
                  srl          a2, t1, ra
                  auipc        t3, 63987
                  slli         s5, a5, 24
                  srai         gp, a7, 24
                  slt          t5, t4, zero
                  or           s7, a7, zero
                  xor          s1, a6, s1
                  xor          s5, ra, tp
                  or           s1, t3, a2
                  or           s3, a4, a0
                  sltiu        s2, s9, -979
                  srli         t0, t2, 20
                  srl          a4, s11, t6
                  and          t1, a1, s8
                  sltiu        a0, ra, -521
                  xori         a2, t5, -1177
                  or           a4, s9, s11
                  srli         s2, s2, 8
                  and          s3, a5, gp
                  sra          s11, s8, s8
                  sltu         a0, a7, s9
                  xor          s6, gp, t3
                  xori         a3, ra, 1552
                  slt          a3, tp, a4
                  slti         s2, a7, 1410
                  sltiu        s4, zero, 1433
                  and          s6, t3, a1
                  slt          s8, t4, t3
                  nop
                  xori         t3, s2, -17
                  and          s3, t6, tp
                  slt          a3, a4, s8
                  sltiu        s6, a3, 135
                  xor          a7, s4, s10
                  addi         t3, t0, -652
                  sll          tp, ra, zero
                  xor          s10, s0, t3
                  xori         a0, s3, -128
                  and          t5, t2, t4
                  srli         s1, s10, 13
                  nop
                  slli         s4, a7, 17
                  srai         s5, t4, 1
                  slli         t3, a3, 16
                  sra          s1, s0, t2
                  srl          s8, s5, s6
                  slti         zero, a2, 1118
                  or           tp, s3, sp
                  addi         s6, tp, 232
                  sltiu        t1, s6, -694
                  andi         t5, s6, 870
                  or           s11, t0, t2
                  slti         s7, a1, 2002
                  addi         s10, t2, 1625
                  sltiu        a3, s9, -1086
                  xor          s3, t4, s10
                  xor          s6, s1, s9
                  andi         a7, s0, -1056
                  srl          a5, sp, a1
                  addi         s3, a4, -466
                  srai         t3, s9, 31
                  xori         s10, t3, -1870
                  auipc        s8, 241915
                  slt          s3, gp, s7
                  xori         gp, s11, -1564
                  sltiu        s4, t4, -1663
                  sra          ra, s7, ra
                  sltu         tp, t6, a1
                  slt          a2, t2, s11
                  addi         s1, t1, 1715
                  ori          a7, s6, 1843
                  xori         s8, a7, 132
                  srai         sp, s6, 5
                  addi         gp, s4, -700
                  sltu         s4, t1, gp
                  slt          a3, a3, ra
                  sra          s5, t2, tp
                  lui          t2, 534931
                  addi         zero, s3, -266
                  sltu         s2, s8, t2
                  slti         s11, sp, 889
                  add          s1, a3, a6
                  slli         s1, a6, 9
                  xori         s3, s5, -334
                  slt          t3, a1, gp
                  auipc        s8, 630992
                  ori          a3, s11, -1945
                  sra          s8, s3, a0
                  xor          s11, s6, a5
                  addi         t1, s2, 655
                  ori          s1, s11, -1317
                  nop
                  and          t5, s3, s2
                  add          t5, a1, sp
                  auipc        s8, 795159
                  xor          tp, s4, t0
                  srli         s1, t2, 29
                  sll          t1, t2, a1
                  srl          a4, a3, t0
                  srl          s1, s8, s1
                  srl          s1, a0, s4
                  lui          a0, 621027
                  sub          ra, s8, gp
                  xori         s5, a7, -1054
                  sltiu        a4, t4, 141
                  srai         t5, s8, 0
                  nop
                  srli         t0, tp, 30
                  slli         s11, s4, 7
                  sll          t1, gp, s2
                  and          zero, s2, s2
                  slti         t3, s0, -97
                  ori          t2, t4, -1065
                  sll          t0, t1, s0
                  srli         t6, a4, 28
                  andi         a3, t3, 1764
                  srli         s10, s7, 14
                  slli         t5, gp, 23
                  auipc        s6, 308195
                  sub          s8, a5, a0
                  slt          zero, s4, sp
                  or           sp, ra, a1
                  slli         s8, t1, 28
                  addi         zero, t1, -1798
                  and          ra, a2, zero
                  sltu         s5, s7, t2
                  add          s5, zero, a4
                  andi         a6, s9, 1101
                  sltiu        a0, s7, 1098
                  xori         s10, s9, -1619
                  andi         a7, s11, -271
                  or           t5, t5, gp
                  slt          t2, s8, s7
                  xori         t0, gp, 670
                  slti         s11, zero, 346
                  sll          s11, sp, s8
                  lui          s8, 937787
                  and          t0, s8, s1
                  sll          s3, ra, ra
                  xori         zero, zero, 244
                  and          t5, s9, t2
                  xori         a0, s1, -1561
                  or           s11, a4, s8
                  srl          t6, zero, gp
                  andi         s8, s6, -15
                  srl          s11, ra, t2
                  and          s2, s1, a3
                  nop
                  and          s6, a1, s3
                  sltiu        s6, gp, 1934
                  and          gp, a2, gp
                  srli         s1, s4, 26
                  and          s10, s4, t2
                  xor          s1, a2, s6
                  ori          s1, a0, -86
                  and          s3, a3, a0
                  and          s8, a4, t2
                  auipc        a7, 195904
                  sltiu        zero, t2, -1032
                  addi         s8, s0, -477
                  sra          s2, zero, s0
                  sltu         gp, s5, s5
                  xor          a6, s1, s9
                  srli         t5, s10, 3
                  auipc        t2, 908185
                  auipc        t5, 813139
                  srai         a5, t0, 8
                  srli         s10, gp, 14
                  sltu         s4, zero, t2
                  lui          zero, 375332
                  sub          ra, a7, t5
                  nop
                  srli         t0, t6, 21
                  slti         s2, t0, -452
                  add          t5, s8, s3
                  sltu         s5, tp, zero
                  and          s4, t2, s0
                  xori         t5, ra, 455
                  slt          a5, sp, a3
                  sltu         a1, t3, t0
                  xori         s2, s6, 1396
                  addi         s1, t6, 1510
                  xori         a5, s3, -48
                  auipc        tp, 813557
                  xori         s4, s4, -741
                  nop
                  sltiu        t6, t1, 891
                  nop
                  xor          tp, s3, a5
                  add          zero, a6, ra
                  auipc        t3, 758941
                  andi         a7, a7, -1494
                  and          a4, a0, a7
                  sltu         a5, t6, s7
                  srai         s7, s9, 6
                  sltu         a0, gp, a0
                  andi         s5, a3, -82
                  sltiu        a0, t6, 595
                  ori          s4, a2, -330
                  andi         t5, t0, -881
                  ori          sp, a6, 1133
                  and          s2, ra, t4
                  sra          s8, t3, t2
                  sltiu        a6, a6, 1380
                  and          t3, a1, zero
                  and          s4, gp, a5
                  nop
                  sra          zero, t2, tp
                  srl          t6, a7, s9
                  srli         a3, s11, 19
                  slti         tp, a4, 227
                  auipc        zero, 752010
                  xor          s3, s8, zero
                  slli         t2, t6, 27
                  sra          s8, s0, sp
                  srl          a3, a1, zero
                  and          a4, t5, a1
                  xor          t3, s10, sp
                  nop
                  sra          gp, s3, t6
                  slt          a4, s10, a1
                  xori         zero, s10, 823
                  slt          a2, a3, t0
                  nop
                  sltiu        t1, s4, -922
                  srli         a0, s6, 22
                  add          s7, a0, s0
                  xor          sp, gp, s1
                  and          a2, t0, a0
                  xori         t1, a5, 886
                  xor          s5, s4, s9
                  sltu         a4, t4, a3
                  sltu         a4, s7, s9
                  andi         s11, a5, -1450
                  nop
                  ori          t2, s4, -1813
                  lui          sp, 5556
                  slti         a1, a1, -121
                  srl          s1, t0, ra
                  addi         a7, s9, -114
                  and          s10, t5, t5
                  lui          a2, 656670
                  and          s7, t4, gp
                  lui          tp, 701811
                  add          s1, gp, a1
                  sub          s6, sp, zero
                  addi         s4, a5, 1243
                  addi         a4, s5, 1216
                  srai         s10, ra, 31
                  srl          gp, s6, s0
                  addi         a6, t5, 983
                  ori          gp, s1, 1441
                  srai         s6, ra, 20
                  xor          a2, a2, a5
                  addi         s11, a4, -1091
                  sltu         t1, s9, a7
                  sub          a0, ra, tp
                  nop
                  slli         a1, t4, 18
                  slt          a1, a4, a1
                  andi         a5, s4, 507
                  andi         a2, a5, -1055
                  xor          s11, s3, a6
                  and          zero, a2, zero
                  sltu         t2, a3, s3
                  xor          s5, s4, t4
                  ori          t2, s5, 502
                  nop
                  srai         t6, ra, 3
                  sltiu        a7, a0, -86
                  srli         s1, s3, 1
                  and          a0, tp, t3
                  srai         a0, s4, 6
                  andi         s11, s0, 501
                  ori          s11, s4, -1300
                  slli         t1, a2, 18
                  xor          s2, zero, t2
                  lui          s4, 576826
                  andi         a5, s2, 820
                  srl          a4, s5, s3
                  srl          a2, s1, s4
                  srli         s2, s5, 20
                  xor          a0, a6, zero
                  srl          s5, s8, s2
                  addi         s1, t2, 50
                  sra          s1, a0, t4
                  slti         s3, a4, -62
                  sub          a7, s3, a2
                  srai         s2, t6, 13
                  lui          a3, 1035220
                  sltiu        t1, a3, -1697
                  or           s5, s7, s5
                  sltu         tp, s5, s1
                  ori          a7, s4, -637
                  sltu         sp, a7, t6
                  nop
                  xor          zero, a4, sp
                  slli         t5, a7, 14
                  slli         s8, a7, 18
                  auipc        t6, 457822
                  sra          t2, a1, t6
                  addi         a2, sp, -1217
                  lui          zero, 80666
                  srai         s3, s2, 18
                  sra          a5, s7, t4
                  sra          zero, a5, gp
                  sltu         s8, sp, sp
                  slli         ra, s2, 2
                  sub          s5, s7, s8
                  srl          s11, a7, s4
                  ori          t2, t2, 453
                  xori         t1, a6, -1626
                  slt          a3, a2, ra
                  and          a1, t0, s6
                  and          s7, t6, a7
                  add          s1, s2, a3
                  sll          s7, s3, a5
                  srl          s1, s0, a0
                  slti         s7, s0, -331
                  addi         t0, s6, 2036
                  slli         t0, s3, 18
                  sra          a6, a0, s6
                  xor          gp, s7, a5
                  andi         a4, a4, 415
                  sra          t5, tp, s8
                  sltiu        s5, a0, -1546
                  or           s5, a2, a1
                  srl          s5, t0, ra
                  sra          gp, zero, s1
                  slti         s6, s4, -1666
                  nop
                  slti         t6, s9, 1747
                  srai         a4, s1, 13
                  addi         s2, s1, -894
                  add          s4, t3, sp
                  sra          s4, s5, zero
                  sltu         a2, s1, a2
                  srl          a6, a2, t0
                  sra          tp, a3, t1
                  lui          t6, 54420
                  sub          s5, s3, a3
                  slt          s5, t5, a0
                  xor          a4, a5, a7
                  sra          tp, t3, s8
                  srl          s2, s3, sp
                  sll          a7, s11, s3
                  lui          t1, 437486
                  or           t0, a4, sp
                  sll          a5, t0, s2
                  srai         a4, s9, 29
                  nop
                  addi         s5, s1, 1989
                  slt          s1, sp, a5
                  slli         s5, t5, 27
                  srli         s11, gp, 4
                  ori          t0, a6, -449
                  sltu         s11, s6, tp
                  slt          t6, a3, s7
                  add          t6, a3, a2
                  andi         s7, a6, 601
                  sltiu        a3, t3, -895
                  slt          gp, s5, s1
                  srai         t0, t2, 2
                  nop
                  add          t6, s3, t2
                  add          t5, t5, t4
                  andi         s8, a3, -73
                  srli         s6, a7, 7
                  nop
                  sll          s10, tp, t3
                  xori         t0, s6, -1486
                  srl          s5, a4, a1
                  auipc        gp, 324811
                  sll          s1, a1, ra
                  nop
                  nop
                  srai         t6, a1, 31
                  sll          s11, s1, sp
                  srli         tp, s6, 16
                  add          ra, sp, a5
                  xori         a7, a7, 1256
                  srli         t1, tp, 8
                  sub          s10, t5, t4
                  lui          tp, 779177
                  sra          a5, zero, tp
                  srli         s3, s4, 19
                  sll          a2, a0, s9
                  slt          t0, a6, a4
                  add          tp, s3, s11
                  lui          a6, 113023
                  sll          a5, t3, s2
                  sra          a4, t6, s11
                  slt          zero, t2, a5
                  sll          a1, a7, a5
                  sltu         s1, s2, zero
                  sltu         a3, a1, a7
                  sll          s8, s10, s4
                  xor          gp, tp, s6
                  sub          a1, s2, t0
                  or           ra, a2, t3
                  slt          a7, s1, a4
                  or           a5, a3, s9
                  and          sp, a6, a7
                  ori          t2, sp, 1963
                  nop
                  and          a3, tp, t3
                  ori          a4, s2, -709
                  add          a1, t0, gp
                  or           a4, t1, t0
                  srai         a7, t2, 29
                  sra          s8, ra, t4
                  xor          t2, s2, s3
                  sltiu        s7, a6, 1458
                  or           tp, a3, s11
                  and          s10, a6, s1
                  srai         zero, s7, 6
                  sltu         t5, s5, s1
                  xori         a2, s0, 773
                  slt          t2, a3, t2
                  add          s1, t6, ra
                  or           a2, s11, s1
                  ori          zero, a0, 63
                  lui          s8, 785463
                  srai         s6, s2, 16
                  slti         s1, s11, -1320
                  or           tp, s11, s0
                  ori          s8, ra, -741
                  ori          s10, t1, 232
                  slti         s5, s10, 623
                  and          s8, s2, tp
                  slli         t1, s1, 17
                  xor          s1, s9, s6
                  xor          gp, sp, s0
                  addi         t6, a2, -668
                  add          t2, zero, s11
                  or           t3, s7, zero
                  auipc        a0, 170995
                  xor          a0, ra, zero
                  add          a1, s2, a2
                  andi         zero, t3, -317
                  add          t6, a2, a2
                  xor          t6, t1, s5
                  srai         s10, t6, 14
                  or           t6, a0, s4
                  slt          a7, zero, a0
                  lui          s6, 554646
                  slli         s6, a1, 19
                  sltu         s7, tp, t2
                  xor          s8, s1, t5
                  xori         a6, tp, 1131
                  srai         a4, t1, 0
                  auipc        a3, 918134
                  slt          t6, t2, a7
                  nop
                  sltu         a4, s5, t1
                  sltu         a2, t6, s9
                  srl          t2, a4, a1
                  sra          a4, t4, s9
                  xor          s7, s7, s6
                  and          s6, s8, a6
                  srl          s8, a2, tp
                  sltu         s10, a2, t3
                  or           s1, s1, a1
                  auipc        gp, 135793
                  slli         sp, s8, 14
                  srl          s11, a7, a2
                  slti         a6, s0, -378
                  sra          a1, s3, s1
                  sltu         s1, s2, gp
                  xor          s5, a0, a3
                  add          a0, s11, a0
                  nop
                  nop
                  slti         s6, s0, 378
                  srl          a3, t4, a0
                  andi         s2, t1, -1813
                  sltu         t0, s3, s5
                  sub          s8, gp, a2
                  sll          s8, t1, s7
                  sra          s1, a4, s0
                  ori          s1, s10, -274
                  slti         s1, a7, 212
                  srai         ra, s11, 25
                  srl          s11, t4, t4
                  slt          s5, a3, a3
                  andi         t2, a5, 388
                  xori         ra, tp, 1232
                  lui          s5, 358036
                  or           t5, gp, s6
                  nop
                  sll          t1, a4, a2
                  slti         t6, s8, 824
                  addi         s8, t5, -1607
                  slt          t3, a1, a2
                  and          t5, a1, gp
                  auipc        s6, 415597
                  andi         t0, t1, -443
                  srai         gp, s11, 15
                  slli         a7, a0, 7
                  sra          a0, t1, t6
                  xori         s1, s0, -1101
                  slti         t3, t0, 1504
                  sll          a7, s11, zero
                  srli         t6, t6, 20
                  nop
                  or           t6, zero, a5
                  addi         s10, t0, 1638
                  add          a3, t0, a5
                  xori         a3, s10, 326
                  xori         t6, t4, 764
                  and          s5, a6, a1
                  add          s8, s2, s10
                  ori          a5, a4, 1270
                  srai         a1, s7, 11
                  srli         sp, s7, 11
                  srai         a4, t1, 18
                  addi         a1, s11, -545
                  or           a1, t4, a1
                  sll          s5, tp, t3
                  sra          zero, s8, s8
                  sll          a1, a3, ra
                  xor          s4, a4, t0
                  srai         s7, s7, 18
                  sltu         t0, t2, s3
                  sltu         s6, tp, s11
                  srli         a0, a0, 25
                  andi         t3, a2, -159
                  ori          t2, a6, -1429
                  slt          t5, ra, a2
                  sltu         t3, a0, a6
                  slti         a0, a7, 1022
                  sll          a5, a4, s1
                  sltiu        t6, s11, -447
                  srai         a1, s3, 10
                  slli         a0, t1, 21
                  slli         sp, s1, 30
                  sltu         t2, s9, s4
                  sltu         tp, ra, s5
                  ori          tp, s8, -341
                  slt          t1, s1, s5
                  andi         t0, s10, -2
                  addi         zero, s8, -189
                  slt          t5, s10, s10
                  sra          s6, a2, a4
                  srai         s8, t4, 21
                  andi         a6, a2, -317
                  slt          a4, s8, s7
                  nop
                  slt          s3, t3, t6
                  ori          s5, t3, -154
                  sltu         t3, gp, s4
                  nop
                  add          t0, s9, t3
                  sll          a2, a2, s9
                  slli         zero, s1, 17
                  lui          s8, 49802
                  or           a2, s9, s6
                  sll          s4, t2, t1
                  sra          a7, s8, a7
                  srai         tp, a1, 27
                  slt          s8, s10, a2
                  lui          s10, 963225
                  or           t6, s3, a4
                  sltu         a2, a6, s3
                  slti         t0, a1, -1955
                  nop
                  sub          a7, s0, t2
                  xor          tp, a4, s5
                  andi         t6, ra, 356
                  lui          a2, 865616
                  srl          a0, t0, s5
                  slli         t3, a1, 7
                  xori         s6, ra, 1202
                  lui          s10, 217888
                  slli         sp, t3, 30
                  add          t1, t2, a2
                  srai         t5, a2, 20
                  and          s11, t2, s4
                  auipc        tp, 135208
                  lui          s5, 585154
                  sltu         a2, s5, t6
                  srli         t2, a7, 13
                  srl          s6, s11, a3
                  ori          s4, t1, 1700
                  xori         gp, s0, 1708
                  ori          a5, a1, 1302
                  sub          t0, s3, a5
                  sltiu        a1, sp, -1735
                  sltu         s2, a6, s9
                  ori          t0, s11, 1724
                  srl          t3, t6, t6
                  slli         a4, t2, 23
                  srl          ra, zero, tp
                  add          s2, a3, s0
                  slli         s8, a7, 28
                  srli         t6, a4, 30
                  sltu         s4, s10, t4
                  srl          s11, tp, t4
                  sltiu        s2, a0, -1755
                  srl          t5, t3, s1
                  auipc        a0, 424611
                  sltiu        s10, a3, 476
                  ori          t0, zero, -1420
                  xori         s1, zero, -1075
                  sltiu        s1, t6, -297
                  sra          a6, t3, s5
                  srai         t0, gp, 18
                  srai         t3, s0, 13
                  lui          a6, 774681
                  sub          s6, gp, s4
                  xori         t6, t1, 360
                  and          s1, sp, tp
                  sltiu        a7, gp, -922
                  sltu         s7, s10, a2
                  slli         a3, s9, 26
                  andi         tp, a4, 398
                  ori          t6, s8, -504
                  sll          t3, s6, a0
                  addi         s8, t4, 1157
                  xor          s1, s3, t4
                  sra          t2, s11, s0
                  addi         s4, s7, -484
                  auipc        t3, 306889
                  xor          s7, s11, s7
                  sltu         t6, a2, t4
                  xori         s6, s9, -1325
                  andi         a2, sp, 375
                  sll          t3, s10, a3
                  and          s1, zero, t3
                  lui          sp, 861253
                  xor          s7, t1, s6
                  sra          s6, t1, a6
                  slt          a5, t5, s6
                  sll          a7, t4, sp
                  xori         t3, sp, -1382
                  srai         s8, s0, 9
                  andi         t3, t6, -816
                  xor          s10, s11, t0
                  xori         a0, tp, 356
                  sub          a5, t6, t6
                  sltiu        tp, s2, -1698
                  nop
                  slti         s6, s10, -1809
                  or           a2, a5, a1
                  and          s4, t6, t3
                  lui          s7, 803814
                  xori         s2, sp, 758
                  sub          s5, t4, t0
                  sltiu        s4, t1, -1272
                  slli         t0, s6, 2
                  or           s3, sp, s7
                  andi         a0, s11, -923
                  sub          s6, t2, t1
                  sltu         s5, s2, s9
                  sra          gp, s6, t1
                  or           s10, s0, ra
                  slli         a2, s3, 26
                  ori          tp, s4, -85
                  auipc        a3, 464312
                  add          s4, s10, t5
                  ori          t2, s2, 1149
                  sltu         s5, a1, t5
                  auipc        a0, 585673
                  sll          s11, s2, s0
                  sub          s11, t3, gp
                  or           t0, a6, s0
                  srli         s2, t6, 9
                  addi         sp, s5, -272
                  sra          a1, a7, gp
                  andi         a0, t6, -1660
                  add          ra, a4, t2
                  and          t0, s7, t3
                  slti         a7, t0, -1965
                  nop
                  slt          a0, s0, t4
                  sra          s1, t0, s0
                  or           gp, a3, t5
                  sltiu        s8, s9, 715
                  slt          t2, zero, t0
                  sub          s1, t6, s2
                  ori          t6, s8, -1743
                  slti         a0, tp, -735
                  slli         tp, s8, 20
                  xori         a3, a0, 1584
                  sltu         t6, a0, a0
                  addi         s5, s11, -452
                  or           s6, t2, s11
                  and          t6, s6, a7
                  slti         ra, s1, 652
                  addi         gp, t5, -1308
                  xori         t5, zero, 1009
                  xori         s10, s8, -918
                  xor          s2, a0, ra
                  sub          a6, s6, a5
                  srai         s1, t3, 20
                  slli         gp, s8, 13
                  sll          s1, a4, a7
                  or           t5, s9, sp
                  lui          a2, 151555
                  slti         s7, s0, 1213
                  add          s1, a4, s4
                  andi         t1, t2, 1358
                  srli         t6, t5, 27
                  or           t0, sp, gp
                  ori          t6, t0, 317
                  slti         t6, a0, -128
                  addi         a7, s4, -1167
                  slt          t3, s4, t0
                  xori         s8, a6, 1671
                  slti         t1, s11, -236
                  lui          sp, 991870
                  slti         s5, tp, -1257
                  addi         ra, a7, -369
                  xori         a6, a3, -1737
                  xor          a2, s1, t1
                  sll          s3, s11, t4
                  add          t0, zero, s11
                  lui          a3, 652820
                  auipc        tp, 51247
                  xor          s10, s1, s1
                  addi         t2, s10, -1434
                  auipc        t0, 726857
                  sub          a5, t2, s10
                  nop
                  srai         s7, t5, 8
                  sll          a0, a1, s7
                  add          t5, s1, s2
                  xori         t1, gp, 1325
                  srl          a0, s6, s9
                  add          t6, a7, a1
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           t1, 0x80000000
                  li           t5, 0x0
                  li           s6, 0xb53c5f36
                  li           t3, 0xffffffff
                  li           s2, 0x80000000
                  li           a1, 0xffffffff
                  li           a0, 0x0
                  li           s3, 0xffffffff
                  li           t0, 0x0
                  add          s3, t1, a0
                  auipc        s3, 92743
                  lui          t3, 837032
                  lui          t1, 1036096
                  addi         s3, t0, 823
                  add          s3, a0, a1
                  auipc        t0, 847827
                  addi         a1, t3, 479
                  sub          s11, t3, a1
                  add          t0, s3, s11
                  add          s6, t3, t3
                  addi         t1, t3, -608
                  add          s11, a1, s3
                  add          s3, t1, a1
                  addi         t3, t3, 1838
                  auipc        t1, 685790
                  lui          t5, 974052
                  lui          s2, 306807
                  lui          s11, 750060
                  addi         a1, t3, 1068
                  lui          t5, 802392
                  addi         t3, a1, 1517
                  nop
                  auipc        s11, 601284
                  lui          t1, 932880
                  add          s3, t3, a0
                  add          a0, a1, s11 #end riscv_int_numeric_corner_stream_9
                  xor          tp, gp, t4
                  sltu         t2, s6, s4
                  lui          a7, 540035
                  sltiu        t6, s5, 241
                  add          s5, s8, t2
                  slt          t6, s9, a7
                  sra          s1, a1, a0
                  or           s2, a2, a6
                  xori         s10, a0, -23
                  and          sp, tp, sp
                  srai         s10, s2, 17
                  sra          a2, zero, sp
                  or           t1, a4, s6
                  addi         a1, s10, 234
                  andi         a3, t5, 292
                  auipc        t5, 842340
                  xori         a6, s4, -822
                  srai         s7, a4, 24
                  sltiu        s6, sp, -1254
                  xor          a0, t4, s7
                  slt          t5, a5, a6
                  ori          a3, t2, -863
                  auipc        t2, 514181
                  sltiu        t2, a0, 1654
                  slli         s2, a1, 23
                  and          a0, s5, s1
                  or           s11, s4, s2
                  sra          t5, zero, s4
                  ori          a6, sp, 1525
                  srl          s1, ra, s7
                  sltu         s6, a1, a1
                  add          gp, s7, t6
                  slt          t3, zero, t5
                  sll          t5, t0, tp
                  sra          a2, s5, tp
                  sltu         a6, s11, s1
                  slt          s1, t2, s9
                  sra          a6, sp, t2
                  sub          s1, a1, s5
                  sll          a1, t4, t5
                  sub          gp, a1, s8
                  srl          a4, zero, s9
                  sltiu        a0, s11, -151
                  srai         a0, s3, 30
                  lui          t2, 458317
                  ori          s8, s6, 226
                  srai         t0, s3, 28
                  xor          a4, a7, t2
                  xor          a0, s0, a7
                  srli         t6, a1, 17
                  andi         s4, a5, -990
                  add          s1, ra, s2
                  sltiu        t3, ra, -86
                  ori          t3, gp, -896
                  slli         a3, s9, 2
                  srai         t6, t2, 22
                  slti         a2, s0, 545
                  lui          a7, 54214
                  addi         s6, t4, 1983
                  sll          a3, s11, s4
                  slt          s1, a0, a3
                  slli         s2, t2, 31
                  sltiu        t3, t6, 1556
                  ori          s10, tp, -1938
                  slt          a5, t6, tp
                  andi         s7, s1, 687
                  srai         a3, t3, 21
                  srli         t1, a0, 24
                  add          s4, t4, s9
                  and          t1, s4, a2
                  ori          t0, a5, 666
                  slt          tp, a7, a2
                  slt          s1, t5, a6
                  slli         a3, s10, 22
                  addi         s6, t2, -1090
                  andi         t5, a2, 1473
                  srai         s4, a2, 4
                  andi         s11, s10, -837
                  nop
                  sub          a0, t4, s11
                  addi         s8, zero, 615
                  add          t0, zero, tp
                  nop
                  xori         t3, t4, 914
                  srai         t1, a1, 28
                  srl          gp, t6, a2
                  srl          s2, a6, s2
                  slli         t2, sp, 27
                  auipc        a0, 312635
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0xa7b76853
                  li           s3, 0x0
                  li           t3, 0xffffffff
                  li           a6, 0x8e143a27
                  li           a5, 0x6b375d15
                  li           s4, 0xffffffff
                  li           s8, 0x0
                  li           a4, 0x80000000
                  li           sp, 0xffffffff
                  lui          s8, 199613
                  addi         a6, s8, 1965
                  add          sp, s11, a6
                  addi         s3, a4, 16
                  add          s11, sp, s8
                  sub          t3, a6, a6
                  sub          t3, sp, a5
                  add          t3, s4, a6
                  add          a4, s4, s3
                  nop
                  addi         a5, s11, 879
                  sub          s4, t3, a4
                  sub          s4, s11, s11
                  addi         t3, s4, 1607
                  add          a6, sp, a6
                  nop
                  nop #end riscv_int_numeric_corner_stream_14
                  sra          tp, a1, a5
                  xor          a2, s3, s9
                  auipc        a3, 20781
                  and          s2, gp, a6
                  xor          s1, s2, s6
                  ori          t0, t4, 1596
                  srl          s5, s9, ra
                  or           t5, s8, a4
                  xor          a4, s4, s10
                  srai         s7, a1, 21
                  sltu         s1, s3, a3
                  lui          a7, 406910
                  or           s3, t0, s8
                  xori         tp, t6, 1050
                  ori          s11, s9, -1744
                  addi         ra, a1, 1237
                  nop
                  sltu         t6, a6, s4
                  srli         s8, a3, 11
                  srl          s5, sp, s10
                  auipc        t6, 732794
                  and          a3, t4, s6
                  xor          a1, t3, a0
                  srai         s2, a0, 10
                  xor          a7, a4, s9
                  xori         s7, a5, -1309
                  slli         a5, s1, 22
                  slt          tp, tp, s0
                  sltiu        t3, s2, 824
                  addi         s1, t2, -1444
                  lui          sp, 1012091
                  andi         a3, ra, 724
                  add          s8, t1, t2
                  sll          a0, a2, s5
                  lui          a3, 328845
                  sub          t0, gp, a4
                  or           s2, s7, a7
                  and          s6, s11, s8
                  andi         a4, a7, -1594
                  slti         s5, sp, 1274
                  sub          s8, a5, s9
                  xor          s6, tp, a5
                  slt          t1, t4, s2
                  addi         a2, s7, 938
                  xori         s1, s9, -513
                  slti         t3, a6, 1309
                  xori         t2, s10, 1960
                  srai         s8, a6, 19
                  add          gp, t5, a1
                  and          s2, s2, a3
                  ori          a3, t4, -563
                  ori          a1, s9, 770
                  srl          ra, zero, a3
                  sltiu        s4, sp, -258
                  and          s3, a3, t6
                  xori         tp, a0, -2033
                  srl          t0, a1, s11
                  lui          a7, 998269
                  sltu         s4, a6, t2
                  sra          a6, s11, s4
                  add          a6, ra, sp
                  xor          a4, t4, ra
                  add          s5, s3, s3
                  ori          s11, s6, -157
                  sltu         s11, a1, ra
                  sll          a4, s11, t0
                  add          zero, s6, a6
                  srl          t1, s6, s7
                  sll          s6, a7, a7
                  srl          t5, s6, t3
                  and          a3, a2, s3
                  and          s2, a2, t0
                  slli         a5, s0, 27
                  slti         s7, gp, -1866
                  sltiu        gp, a3, -1830
                  srli         s2, s1, 1
                  or           zero, t5, s0
                  andi         t6, s4, 1480
                  sltu         s10, a6, a4
                  srli         sp, a1, 14
                  or           t2, gp, a1
                  sltiu        s11, zero, 1509
                  nop
                  auipc        s4, 447164
                  addi         t1, s0, 856
                  sltu         s2, t1, a7
                  sub          t0, t1, t4
                  and          t3, gp, a2
                  sra          t6, s7, a6
                  sub          t5, a6, s6
                  add          a6, s10, zero
                  auipc        s6, 205413
                  xor          t5, t1, s11
                  or           ra, t6, s8
                  slti         sp, s3, 636
                  slti         tp, s8, 934
                  sub          a1, t5, a1
                  slt          t3, s8, s7
                  add          t2, s11, s7
                  lui          s10, 889826
                  and          ra, t2, tp
                  and          t2, t0, a1
                  xor          a6, t2, t0
                  add          s2, a3, a5
                  lui          sp, 950599
                  xor          a0, s1, tp
                  srai         s6, s1, 10
                  srai         s11, t6, 10
                  srai         t3, s7, 17
                  andi         a0, s3, 1558
                  slti         s10, a3, 645
                  sltu         a3, s4, a1
                  srai         s11, s0, 29
                  sll          tp, a5, a4
                  srl          a2, gp, a2
                  add          s8, a1, t6
                  or           zero, sp, a0
                  srl          t3, s6, s10
                  andi         s5, s0, -1851
                  slt          a1, a3, t0
                  sltu         t1, ra, a3
                  auipc        t5, 337999
                  xor          t1, sp, gp
                  slli         zero, s0, 14
                  and          t1, a4, s0
                  slt          t2, s2, ra
                  ori          a4, t2, -414
                  andi         t0, a5, 418
                  sltiu        a0, s0, -1648
                  nop
                  sltiu        s6, a0, -1750
                  sltu         a4, a2, t2
                  slli         a1, a0, 9
                  xori         s8, t1, -172
                  or           t3, a4, t6
                  slti         t2, zero, -1447
                  sra          s1, s1, s8
                  sltu         a3, s11, a3
                  andi         a3, t5, 266
                  sltiu        t2, zero, 782
                  sub          a5, t6, a5
                  lui          s1, 197696
                  slt          s2, s9, a7
                  lui          zero, 760828
                  add          ra, a1, t0
                  addi         s6, t5, 794
                  slli         a3, s3, 7
                  slti         a5, t5, -635
                  and          s7, s11, t1
                  sltiu        s1, s7, 1570
                  xor          t0, t6, t0
                  nop
                  xori         s7, t1, 465
                  addi         s11, zero, -213
                  and          s2, a7, t6
                  ori          a5, t1, -901
                  sltu         a7, a1, s5
                  srai         t6, t1, 20
                  ori          a6, s8, -1205
                  srai         zero, s5, 17
                  andi         a4, s10, -1277
                  slti         s11, s3, -1444
                  addi         t6, t4, -1944
                  add          a2, a6, t0
                  slt          s10, s9, a0
                  andi         s1, a4, -1901
                  ori          a5, s3, -941
                  lui          a1, 78326
                  xor          t0, sp, s5
                  ori          a5, a5, 458
                  slt          gp, s2, ra
                  srai         s1, s1, 21
                  slli         sp, s3, 16
                  sub          s11, s3, a0
                  and          gp, t6, a6
                  srl          a2, s4, t4
                  slli         a7, a5, 17
                  sll          t0, t1, t5
                  addi         t3, t2, -821
                  xori         sp, t6, 1224
                  or           s10, s0, zero
                  nop
                  sll          zero, s6, ra
                  srai         a1, a0, 28
                  sltu         t2, a3, a6
                  sub          t6, s9, t2
                  srl          a7, a6, s11
                  sltiu        t2, sp, 1106
                  andi         a6, s4, -1660
                  and          a1, s11, s2
                  andi         t2, a7, 311
                  slli         tp, a0, 5
                  xori         t2, t4, 979
                  and          a0, a6, a2
                  xor          s11, ra, s4
                  sltu         a3, t3, t1
                  auipc        s7, 630330
                  lui          s2, 105653
                  lui          sp, 287299
                  addi         s2, s11, 159
                  auipc        a6, 884989
                  sltiu        s8, zero, 1233
                  sltu         t2, s8, a2
                  srai         t3, s11, 24
                  sltu         a7, s11, t4
                  and          a7, a1, a5
                  slti         a4, s7, -1564
                  xori         a4, t5, -32
                  and          s5, s1, s9
                  sltu         a1, ra, a6
                  and          a0, gp, a4
                  nop
                  sub          t6, s4, s11
                  xori         a2, a1, -1170
                  sltiu        s7, t2, -1906
                  or           s5, a3, s0
                  lui          s11, 390658
                  sltu         a5, a0, gp
                  slli         s8, t4, 9
                  sll          s3, t4, gp
                  addi         s7, s1, -198
                  srai         s2, s6, 14
                  sll          t5, s2, s9
                  slt          zero, t3, t3
                  sltiu        a0, zero, -1725
                  slt          sp, s11, s11
                  xori         s2, t1, 937
                  or           tp, sp, s3
                  xor          t5, s1, s4
                  slti         a6, s8, -1708
                  srli         t6, a0, 7
                  sltiu        s8, t1, 1720
                  slt          s11, t4, t2
                  xori         s5, t0, 249
                  auipc        s4, 483873
                  andi         s5, a5, 1459
                  xor          s5, a0, s4
                  add          a1, s9, a6
                  sll          s6, s4, s0
                  srai         s3, s6, 13
                  slti         a1, s11, -312
                  srl          s8, a0, tp
                  and          t0, a4, s2
                  or           sp, zero, s11
                  add          t6, s10, a6
                  or           a6, t1, ra
                  srli         s1, s5, 25
                  sub          a1, s0, s2
                  lui          s5, 317412
                  addi         s11, t6, 1354
                  or           s6, s7, t6
                  srai         a0, t0, 22
                  slli         s10, t6, 7
                  sltiu        s7, t3, 1609
                  nop
                  srli         t3, a6, 31
                  auipc        t5, 748967
                  sltiu        a0, t5, 1928
                  and          gp, a6, zero
                  sltu         s11, a1, s5
                  srai         t6, a2, 12
                  xor          s2, a1, t2
                  nop
                  and          s3, t2, a3
                  slli         s3, a6, 5
                  ori          a7, s0, 541
                  sra          a6, s0, s2
                  slt          tp, s2, tp
                  sltiu        s1, a5, 1383
                  srl          s3, t0, sp
                  or           s2, t0, s2
                  srl          t2, t5, t2
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           gp, 0x5e9e2e6a
                  li           a1, 0x0
                  li           t5, 0x80000000
                  li           a6, 0xffffffff
                  li           s3, 0xbee5d5ec
                  li           t6, 0x80000000
                  li           s2, 0xa1ffb186
                  li           ra, 0x7f73d4b2
                  li           sp, 0x80000000
                  addi         s2, a6, 949
                  nop
                  nop
                  addi         a6, t2, -907
                  addi         s3, s2, 786
                  auipc        a1, 1026183
                  sub          sp, t6, ra
                  add          ra, s3, s2
                  nop
                  add          t6, gp, t6
                  add          sp, ra, t6
                  addi         sp, t6, -1720
                  sub          t6, t5, t2
                  nop
                  nop
                  addi         s2, a1, -1026
                  lui          ra, 70737 #end riscv_int_numeric_corner_stream_7
                  sltiu        a6, s5, -680
                  slli         t6, s2, 23
                  slt          s7, ra, s5
                  srli         s8, t6, 1
                  slt          t3, a6, t5
                  and          s3, s7, ra
                  srl          sp, s10, ra
                  xor          t3, gp, sp
                  and          a6, s8, s4
                  and          s6, s1, a1
                  andi         ra, t0, 1990
                  slli         gp, s11, 21
                  addi         a1, a6, 1690
                  auipc        t2, 321272
                  or           s8, s9, s2
                  add          a5, s7, s2
                  sltu         s7, ra, a0
                  slt          t3, a3, gp
                  srl          t1, t0, s10
                  or           a6, gp, a5
                  auipc        t1, 475565
                  add          s6, s7, t1
                  sub          t5, zero, t0
                  auipc        s5, 115219
                  sll          t1, a2, s8
                  sub          s6, s11, a3
                  lui          s3, 973363
                  or           t6, s1, t6
                  sra          s2, a7, t1
                  sub          s8, gp, s8
                  addi         sp, s11, 777
                  sltiu        s8, t4, -313
                  sltu         t3, a4, t5
                  add          s1, s1, t1
                  and          t6, ra, s9
                  sub          s8, t4, t4
                  and          zero, gp, a0
                  xori         a3, s3, -897
                  slli         tp, s7, 25
                  srli         gp, a7, 10
                  xori         a4, tp, 1653
                  add          a3, a3, t0
                  addi         a5, ra, 903
                  ori          ra, s8, -62
                  xor          ra, sp, t2
                  nop
                  slti         s8, t0, -418
                  and          s8, s3, s8
                  auipc        t3, 611675
                  auipc        s4, 929171
                  xor          zero, t6, s4
                  auipc        a0, 442351
                  sltiu        a4, tp, 1231
                  and          a5, gp, tp
                  sll          sp, a4, a1
                  srli         t2, s4, 26
                  xor          s8, s3, a0
                  slt          t2, a5, s1
                  xor          s1, s9, zero
                  sra          a0, t5, s5
                  or           s8, a6, t6
                  lui          s6, 993568
                  xori         t6, s11, -354
                  srai         gp, s9, 0
                  xori         ra, sp, -1046
                  add          t3, s1, t2
                  sll          t0, a1, a0
                  slti         a2, zero, 642
                  xori         a0, a7, -1350
                  slli         s8, a1, 23
                  ori          s10, t3, 1623
                  addi         t5, t1, -574
                  sra          a1, t0, a7
                  srli         s6, s5, 13
                  sll          s6, a5, a3
                  srli         a0, s7, 2
                  sll          s8, s8, t3
                  sltu         s4, gp, t5
                  sub          s11, a2, s2
                  xori         s4, s0, -2032
                  auipc        a3, 662224
                  srl          a7, s11, t6
                  sra          s8, s2, a5
                  and          s8, t4, s6
                  slt          t2, s6, a4
                  nop
                  sltu         t1, a0, t5
                  ori          t2, tp, -1612
                  srai         t2, s1, 21
                  srli         a2, s5, 6
                  sra          t2, zero, s7
                  sll          s8, t5, t4
                  nop
                  sra          sp, s2, s0
                  xor          s8, s2, s3
                  addi         s1, s10, -286
                  xori         s6, t2, 1613
                  and          a7, sp, s3
                  ori          s6, t5, 1298
                  slli         sp, s1, 2
                  sub          t1, s1, s1
                  lui          a3, 996307
                  lui          t3, 723732
                  or           s11, a0, s7
                  addi         s10, s8, -647
                  xor          ra, t5, s8
                  and          s4, a2, t5
                  srai         a4, s0, 31
                  lui          a2, 698994
                  slti         a3, s5, -263
                  srai         s7, t2, 3
                  slli         s6, sp, 7
                  addi         t0, t5, -981
                  nop
                  slti         t6, t5, -1151
                  sra          s7, sp, t5
                  sll          s2, t3, a4
                  sub          zero, a2, s3
                  xor          s8, s6, zero
                  slt          s10, s8, t3
                  ori          sp, s7, 1817
                  add          ra, a4, a0
                  sra          a0, s8, s9
                  xor          t6, t5, t2
                  slti         t1, s0, 1780
                  ori          ra, a7, 1881
                  sltiu        s4, a6, 813
                  srai         a6, s2, 7
                  lui          s10, 466080
                  srai         t6, s11, 19
                  slli         ra, t4, 0
                  sltiu        s6, tp, 982
                  add          s1, s10, a4
                  xori         a3, t4, 801
                  and          s5, s3, s3
                  sub          s10, s2, gp
                  nop
                  and          s2, s4, ra
                  ori          zero, a6, -360
                  slti         sp, s10, -2023
                  andi         a5, zero, -781
                  sltu         sp, s5, zero
                  srli         t3, s11, 15
                  srli         s2, a5, 11
                  srl          a7, t5, t6
                  srli         a6, t1, 23
                  sub          t5, s2, s5
                  slti         ra, t6, 1477
                  sll          t6, s7, s7
                  or           s2, ra, s4
                  addi         a0, s9, -864
                  lui          s6, 833052
                  addi         s1, s2, -713
                  and          s3, ra, s11
                  xori         s11, t1, -105
                  sub          s8, t3, a1
                  sll          gp, ra, ra
                  srl          zero, s5, a2
                  srai         sp, t1, 8
                  sra          s3, tp, s11
                  nop
                  sltiu        a6, tp, -456
                  sll          ra, t5, s4
                  lui          t2, 852986
                  sltu         t2, t6, t2
                  sll          ra, s4, s5
                  slli         s6, s6, 28
                  srai         t0, s8, 1
                  slli         a3, s10, 6
                  srli         zero, a0, 20
                  sub          zero, a1, s2
                  slli         s2, t3, 30
                  srli         a3, s8, 9
                  xor          a0, s8, t4
                  sub          s10, ra, s3
                  addi         a1, s8, 1090
                  srli         a0, t6, 28
                  nop
                  sra          a3, t3, a0
                  andi         a7, a2, -1927
                  srli         s6, s2, 27
                  auipc        t3, 557695
                  add          s8, s3, t0
                  slli         s11, zero, 24
                  andi         t6, a1, 1649
                  addi         s3, a0, 1886
                  ori          t3, s5, -711
                  andi         a0, s7, -1882
                  srai         t1, t6, 22
                  sub          s11, s8, s3
                  srai         s11, s1, 4
                  andi         t5, a5, 451
                  addi         t6, a2, 1805
                  sub          a0, s9, t4
                  slti         s3, a1, -1225
                  srai         gp, s9, 28
                  addi         s1, t1, 1886
                  add          s5, gp, t5
                  sra          a3, a4, s10
                  sub          s4, t0, a0
                  sra          a7, zero, a5
                  xor          a5, s4, s5
                  sltiu        tp, ra, -189
                  or           s7, t3, t4
                  sub          t3, s5, s0
                  srai         a5, a0, 23
                  sll          t2, ra, s1
                  addi         a2, ra, -996
                  ori          t5, s7, -1206
                  add          a4, a1, a7
                  auipc        s10, 343882
                  or           t2, a0, a5
                  andi         ra, s11, -1308
                  nop
                  add          a1, a4, s2
                  slti         sp, t1, -1054
                  addi         a7, s11, -81
                  and          s4, ra, s10
                  auipc        s5, 33349
                  sltiu        a7, s3, -1345
                  nop
                  sub          a3, s4, zero
                  addi         a5, s0, 1593
                  slti         a3, t4, 1059
                  nop
                  sll          gp, s0, t2
                  slli         t5, a5, 23
                  sll          ra, t4, s5
                  nop
                  sltu         s8, t5, t5
                  sltu         s6, s2, s0
                  nop
                  add          s7, t6, a1
                  srl          s6, t3, a6
                  or           a5, zero, s9
                  ori          s8, s2, -328
                  srli         s6, s10, 11
                  or           gp, s8, s1
                  slti         t6, s3, 757
                  sll          zero, a1, s11
                  slti         a5, s6, 29
                  sll          sp, a4, s9
                  slti         a0, s9, 1608
                  srl          t6, s3, s1
                  add          t6, a2, zero
                  andi         a2, s3, 209
                  addi         s6, sp, -1508
                  ori          t0, t0, 1353
                  nop
                  sltiu        t1, a7, 1896
                  srl          s10, t6, t6
                  sra          tp, s7, t0
                  auipc        s11, 239328
                  sltiu        a0, t1, -1079
                  lui          gp, 598964
                  srli         s3, ra, 18
                  slt          a1, s1, a4
                  sltiu        a0, s11, 430
                  andi         s5, s11, 1378
                  sll          a5, t2, t1
                  sltu         s4, s8, s7
                  addi         t1, s8, 2
                  sll          a1, s5, s11
                  ori          s4, s9, -645
                  or           s1, s10, a1
                  addi         t6, tp, -636
                  ori          tp, t6, 833
                  or           sp, a2, t1
                  srai         t1, a2, 11
                  slti         a2, a5, 1141
                  sltu         ra, s0, s10
                  andi         t3, a1, -1875
                  srl          s10, t2, s2
                  slli         t0, t0, 23
                  slli         t2, t5, 7
                  srli         t0, t5, 29
                  ori          sp, t3, -25
                  srai         s3, ra, 17
                  sub          s3, a2, ra
                  add          s11, a2, a1
                  srli         s8, s10, 23
                  slli         s4, t2, 8
                  lui          a7, 619155
                  add          t1, s9, s2
                  or           zero, t5, a7
                  sltu         a4, t2, a1
                  sltu         s1, s4, s5
                  lui          s6, 349777
                  slli         t0, a2, 16
                  xor          t1, t0, gp
                  andi         s5, a5, 1825
                  sltu         s1, a5, s0
                  slli         t2, t3, 24
                  addi         a5, sp, 613
                  and          a0, a1, t1
                  srai         s8, s9, 3
                  addi         s6, zero, 654
                  add          ra, t2, a4
                  xori         s11, s10, 41
                  and          t0, t4, s11
                  sll          a4, t0, s7
                  sra          a0, s6, gp
                  slti         a7, t4, -2033
                  add          s4, tp, s0
                  xor          gp, s5, s7
                  srli         a0, a4, 17
                  srai         t0, a1, 10
                  addi         t3, a3, 952
                  sltu         sp, gp, a6
                  sub          t1, ra, t2
                  lui          t5, 299103
                  andi         gp, s2, 597
                  or           s1, s3, s7
                  or           s4, s3, s11
                  srl          tp, t5, t6
                  add          s6, s9, s9
                  slli         a5, s7, 11
                  andi         zero, a1, -1769
                  lui          t5, 703870
                  lui          s8, 204666
                  andi         s6, gp, 1776
                  auipc        ra, 807156
                  sll          s5, a3, s5
                  auipc        a2, 131343
                  xori         s7, a2, -1725
                  sltiu        s5, a5, -974
                  add          s7, a0, s8
                  slti         a2, s9, 64
                  lui          t3, 821352
                  sltu         s11, t4, s1
                  srl          s11, gp, t6
                  and          zero, s6, t3
                  or           a6, t3, s3
                  add          t5, gp, zero
                  xori         gp, t0, -1600
                  slti         tp, a4, -1139
                  nop
                  lui          t2, 3230
                  nop
                  srai         s10, t5, 2
                  srai         s1, a0, 8
                  add          zero, s10, s5
                  andi         s4, a0, 133
                  slt          tp, s10, a3
                  lui          t6, 142510
                  sll          t6, a5, s7
                  srli         s8, s3, 10
                  sltiu        ra, s10, 627
                  andi         t6, s6, -1924
                  add          t2, s10, s0
                  srli         s3, t0, 14
                  nop
                  srai         zero, a5, 22
                  sub          sp, s6, s9
                  sra          a7, a2, a0
                  slli         a2, s9, 31
                  sra          a0, gp, s1
                  and          t2, s2, a2
                  and          s11, s4, s8
                  andi         s10, s7, 695
                  addi         a2, a6, 1338
                  sltiu        t2, zero, 2000
                  xor          s10, s7, zero
                  lui          s5, 131146
                  and          s2, s7, s6
                  addi         ra, s7, 1104
                  sltu         s5, t4, t4
                  sltu         t1, a6, a0
                  nop
                  xori         s11, a3, 1520
                  nop
                  lui          zero, 82418
                  srai         t2, t1, 3
                  xor          t6, zero, sp
                  xor          t6, t4, t0
                  slli         a0, ra, 12
                  add          t6, s4, a1
                  nop
                  ori          s7, s7, 2018
                  slti         a6, s3, -1480
                  auipc        a6, 428053
                  auipc        sp, 412831
                  and          ra, s10, t6
                  srai         s2, t2, 23
                  sll          t2, s1, s11
                  ori          zero, s10, 1603
                  sltu         gp, t0, t4
                  and          ra, t2, t4
                  sra          a2, t6, s9
                  sra          zero, s4, tp
                  slti         t3, s5, 1464
                  sltiu        s5, t6, 531
                  ori          s2, sp, 213
                  sub          t2, t0, s9
                  or           s5, a6, s0
                  addi         a1, s10, 1412
                  lui          s10, 95980
                  slti         a0, t3, -34
                  and          a6, s3, a4
                  andi         gp, t4, 1044
                  and          a3, tp, a2
                  nop
                  nop
                  slt          s11, s6, s9
                  slti         t0, tp, 1438
                  srl          a7, s1, s0
                  slti         a6, a1, 1076
                  slli         sp, s0, 26
                  andi         a3, a4, 1826
                  ori          gp, zero, -1827
                  sltu         a7, s4, tp
                  and          tp, sp, tp
                  sltiu        s8, a0, -452
                  srl          s4, tp, s10
                  or           sp, s8, s5
                  srai         s7, ra, 20
                  and          a7, a4, a6
                  srai         a0, zero, 26
                  ori          s2, s5, -806
                  auipc        t6, 81681
                  ori          a2, zero, 1051
                  addi         a0, s0, 1361
                  slli         s2, s9, 31
                  slti         s5, a6, -967
                  or           a2, ra, zero
                  add          a2, t5, s0
                  ori          tp, gp, -2048
                  ori          a3, t2, -1289
                  addi         s4, t5, 1253
                  sltu         s3, s8, a2
                  add          s10, a7, t2
                  add          s8, a7, s5
                  slt          s2, s3, s10
                  xor          a3, a7, s6
                  srli         gp, t1, 13
                  slt          t5, s2, s7
                  sltiu        s11, a3, 191
                  sltiu        s2, a4, -926
                  sltiu        t2, s6, 996
                  srl          a0, a4, a0
                  xori         a5, t3, -1123
                  nop
                  slli         s8, s8, 21
                  slti         tp, a1, -2044
                  auipc        t6, 900137
                  sra          t3, t3, t1
                  srli         s1, zero, 12
                  srli         a5, ra, 10
                  andi         zero, s5, 788
                  sra          a5, s11, s2
                  addi         s11, s7, -1708
                  addi         t3, s7, -691
                  sltiu        a1, s8, -146
                  sub          t3, t3, t0
                  slti         s10, a4, -817
                  sra          a4, tp, a3
                  sub          s1, a4, t1
                  or           t3, gp, s10
                  srai         sp, a7, 5
                  slt          tp, ra, s11
                  add          s8, s7, a6
                  and          a0, s0, a7
                  sll          a2, s9, t1
                  nop
                  sltu         a5, ra, t2
                  ori          s6, s3, -730
                  xori         a4, ra, -1399
                  sra          s3, a5, a5
                  add          s1, s2, s6
                  slti         ra, s4, 1683
                  or           ra, t4, t1
                  srai         gp, gp, 11
                  sub          s2, t4, s10
                  ori          a4, sp, -1002
                  slli         s7, s7, 24
                  add          s6, t0, s3
                  slti         t1, t0, 1424
                  sub          a2, s9, a2
                  xor          s3, s10, t3
                  add          s6, s6, a4
                  andi         t3, t1, 1617
                  slli         s10, s9, 10
                  nop
                  ori          s2, s1, -913
                  auipc        zero, 877615
                  sltu         s8, t2, s2
                  lui          a7, 241646
                  slt          a2, t6, a2
                  add          a3, a5, zero
                  xor          t5, t2, t4
                  ori          s1, s4, 595
                  sltiu        gp, a7, 1728
                  sltu         s6, t6, a5
                  andi         s10, s10, -889
                  slli         s10, gp, 27
                  slli         t3, a3, 0
                  lui          s10, 248937
                  add          a0, a0, s10
                  ori          a1, a6, -920
                  sltiu        s3, s9, 1079
                  auipc        a2, 564388
                  lui          s10, 412815
                  and          s1, t3, s6
                  nop
                  slti         t0, s0, -1911
                  and          a2, gp, tp
                  slt          tp, s9, s2
                  xori         s10, s0, 763
                  or           ra, t2, a2
                  addi         s1, t0, 1085
                  lui          a1, 442716
                  auipc        a3, 367289
                  srl          t1, s8, t1
                  sub          a3, s7, s0
                  auipc        t3, 914906
                  or           s6, a4, tp
                  slli         t1, sp, 4
                  auipc        t1, 481577
                  ori          gp, s11, 1669
                  srai         s1, t1, 22
                  sll          s11, a7, s8
                  sll          a3, s11, a2
                  sltu         a0, a4, s0
                  add          a4, t1, a5
                  ori          t2, s8, 1562
                  or           t6, t4, s10
                  slt          s7, t3, ra
                  andi         s1, t0, 116
                  or           gp, a4, sp
                  lui          a5, 543316
                  and          s2, a1, a3
                  or           a6, zero, ra
                  srai         s11, a1, 12
                  ori          s1, a3, -497
                  xor          tp, t6, s5
                  addi         gp, a1, 190
                  slti         s10, zero, -1298
                  srai         s10, tp, 31
                  srli         a6, sp, 13
                  or           a5, t2, a2
                  xori         gp, t4, -411
                  sll          t6, t4, t2
                  addi         a7, a4, -38
                  andi         sp, a1, -410
                  sll          a5, s4, ra
                  addi         a1, a6, -1293
                  sra          a4, s2, a1
                  addi         s4, a0, -1635
                  add          t3, s9, s7
                  srl          s8, zero, sp
                  sra          s5, s8, a7
                  srli         s2, t6, 13
                  sll          a5, s0, s11
                  srai         s3, a0, 20
                  andi         t5, a3, -997
                  srai         sp, a3, 7
                  lui          s4, 777201
                  or           s5, s5, a5
                  nop
                  sltiu        s8, s10, 1220
                  andi         tp, a1, -29
                  srl          s8, zero, s9
                  and          s1, a3, s4
                  xor          t5, tp, a5
                  slli         a2, s10, 9
                  srai         a7, s8, 15
                  lui          a6, 292331
                  slt          a7, s9, a6
                  andi         a4, a4, -459
                  srai         a1, s5, 3
                  nop
                  sltu         t2, s0, s2
                  srli         a7, s2, 8
                  xori         a0, s0, 751
                  lui          t2, 491503
                  sltu         a5, tp, a3
                  andi         s1, t1, -84
                  addi         s6, t1, -1243
                  xor          s4, s1, s0
                  srl          sp, sp, t4
                  sltu         s10, s4, s9
                  auipc        a5, 805344
                  srli         ra, zero, 1
                  sub          s10, s8, t3
                  slti         a4, t6, -1255
                  slli         a7, s10, 0
                  andi         s10, a7, 1305
                  and          a5, tp, s3
                  sltu         t1, a7, a0
                  sltu         t1, s0, ra
                  srl          a4, s8, sp
                  sltu         a4, s3, t3
                  andi         t3, s2, -1932
                  slli         a7, a7, 18
                  sra          gp, s3, t6
                  ori          t6, a2, 1115
                  sltiu        s8, s1, -964
                  addi         gp, tp, 319
                  slti         tp, zero, 470
                  xor          a2, t3, s2
                  sub          s8, t2, t3
                  or           zero, t0, a3
                  xor          t2, s3, a2
                  ori          s2, t3, 636
                  slli         t5, t6, 6
                  sltu         gp, s10, a3
                  srli         ra, a7, 27
                  ori          ra, s4, 1240
                  add          sp, s1, s11
                  slli         t0, s4, 17
                  srli         t0, t0, 25
                  and          t6, s2, a0
                  xori         tp, t5, 1856
                  nop
                  srl          a4, a2, s2
                  srai         s3, t1, 30
                  nop
                  xor          s6, s9, s7
                  sub          t3, a0, sp
                  sltu         s5, t4, s7
                  slt          t2, s5, a6
                  addi         t2, s8, -1887
                  lui          sp, 605428
                  slti         zero, s0, 1361
                  slt          s10, t4, tp
                  add          a4, t6, t1
                  sltiu        s3, t1, -187
                  add          s1, t6, a0
                  auipc        a4, 62611
                  srli         s11, s7, 21
                  slti         s7, s9, -64
                  auipc        gp, 57465
                  lui          s1, 981330
                  srai         s1, t5, 29
                  xor          a3, s10, zero
                  andi         a3, t6, -1672
                  nop
                  auipc        t5, 300258
                  andi         s1, s3, -867
                  xor          s2, t3, sp
                  nop
                  xor          s1, a7, a5
                  slt          a5, t6, s0
                  sltiu        zero, t5, 1790
                  sltiu        s1, a2, 1492
                  xor          s8, s1, a5
                  sltu         t2, gp, s4
                  srli         t6, s1, 4
                  add          a5, a7, s5
                  lui          a1, 288284
                  lui          sp, 653440
                  xori         a0, sp, -1889
                  nop
                  sub          a5, s3, t1
                  and          t5, t2, a6
                  srl          a6, s11, t2
                  slt          a3, t4, s7
                  srli         s8, a5, 13
                  xori         t6, a6, -1968
                  sltu         a7, tp, t1
                  xori         t0, a3, -38
                  sltiu        a2, t2, -510
                  srli         ra, t3, 19
                  and          t6, t0, s3
                  srli         t6, s7, 10
                  slt          s10, s11, t2
                  sll          s6, a5, tp
                  sub          t5, s0, s10
                  or           s8, s4, a4
                  lui          s6, 798185
                  or           a5, a4, ra
                  slli         a4, s1, 25
                  add          t2, a3, tp
                  andi         s5, ra, -626
                  slti         a0, t5, -614
                  slt          a4, sp, s5
                  srl          s5, t4, s6
                  sltu         s8, s7, a1
                  sll          t1, s9, zero
                  ori          s11, a2, -1024
                  or           t1, s8, zero
                  addi         a6, gp, 601
                  andi         a6, s4, 170
                  slt          t3, s2, s0
                  sra          a3, t6, s1
                  addi         t0, t4, 404
                  nop
                  add          gp, a6, sp
                  andi         t0, s10, -1903
                  sra          ra, t1, a6
                  srli         s6, t4, 15
                  srli         s8, s6, 30
                  sub          s8, s9, s4
                  or           a4, zero, tp
                  andi         tp, zero, -990
                  srl          s8, a4, s11
                  andi         s4, s3, 829
                  srli         a3, a6, 18
                  srl          ra, t0, zero
                  slli         a7, tp, 3
                  srai         s7, t5, 16
                  sltu         s7, t6, a4
                  and          a1, zero, s1
                  srli         s3, s10, 25
                  srli         a1, t6, 1
                  slli         s5, t0, 5
                  addi         zero, s6, -2035
                  andi         a0, a0, 683
                  xori         s4, a7, 1640
                  nop
                  or           s7, s7, tp
                  auipc        s8, 935556
                  nop
                  and          a3, s7, a7
                  and          a7, s3, a2
                  srli         s11, s2, 6
                  slti         t6, a0, 162
                  slt          a4, a6, s11
                  srl          a4, s8, s11
                  xor          a0, gp, t2
                  nop
                  lui          t0, 893705
                  lui          s1, 620992
                  ori          s3, t1, -1378
                  ori          a7, a2, 1737
                  ori          a3, s5, -686
                  srli         t3, ra, 2
                  sltu         t0, s11, s8
                  sltiu        t2, s4, -117
                  slt          a3, s5, a4
                  nop
                  ori          s4, a0, -894
                  sll          gp, a7, t0
                  sra          sp, t0, a3
                  srai         s5, a6, 5
                  sll          sp, t0, t6
                  or           s6, a5, t6
                  xor          t1, s8, s8
                  sra          s11, a1, sp
                  nop
                  xori         t6, a0, -678
                  xori         s11, a6, -1272
                  srli         s3, a2, 19
                  sltu         s10, s4, t6
                  slti         t3, t3, 1912
                  and          zero, s9, a6
                  addi         s4, zero, 1060
                  sra          t5, s7, t5
                  sra          sp, zero, a3
                  add          tp, gp, s7
                  sll          s8, tp, s0
                  slt          s4, sp, s6
                  sra          s10, a3, t6
                  addi         s6, s10, -47
                  sll          a3, a2, s0
                  auipc        s7, 1045012
                  lui          s2, 1020200
                  nop
                  sltiu        s4, s7, 755
                  and          s11, s7, s3
                  add          a7, s1, ra
                  srli         s3, s6, 2
                  add          ra, s11, a1
                  srl          t5, sp, t6
                  ori          s10, t6, 996
                  nop
                  and          s1, s10, s11
                  lui          a2, 125118
                  auipc        t6, 535044
                  xori         gp, a2, 199
                  srli         a6, a5, 10
                  srai         t5, t6, 8
                  ori          s11, s4, 126
                  sub          s11, t4, ra
                  andi         tp, a3, -2035
                  nop
                  nop
                  sltu         s1, a4, gp
                  or           s7, a3, zero
                  addi         a4, s4, -1784
                  add          a0, t1, a0
                  slti         a5, t3, -1444
                  or           s5, sp, a4
                  or           s1, zero, s10
                  sll          s5, s9, a5
                  nop
                  ori          s7, t5, -43
                  slli         a0, s10, 5
                  addi         a7, a7, -1526
                  xor          tp, t5, a7
                  sll          a7, a6, a2
                  nop
                  sltu         s6, s4, a7
                  xori         s10, t3, -945
                  andi         tp, gp, 1126
                  srli         a0, tp, 11
                  addi         t1, a5, -1582
                  slti         sp, ra, 1737
                  xor          tp, gp, a3
                  srl          a2, s2, a0
                  sltiu        a4, s9, 387
                  sra          a3, ra, s10
                  andi         s11, s6, -1604
                  slli         a6, s3, 4
                  ori          s4, ra, -1456
                  slti         t2, s3, -990
                  add          a0, s11, a1
                  sra          s5, t4, s10
                  nop
                  sra          a6, s6, s8
                  andi         a3, zero, -596
                  and          a2, sp, t1
                  xor          t2, t5, t6
                  and          ra, a4, s2
                  sltiu        a7, a6, 367
                  nop
                  and          t0, a4, t4
                  xori         t0, sp, -370
                  xor          a2, s6, a3
                  xori         s8, t3, 608
                  sub          a7, s0, s8
                  add          t3, t0, s11
                  sll          a6, a3, ra
                  srl          a6, s4, ra
                  srli         zero, ra, 28
                  sltiu        s11, s4, -1769
                  ori          zero, a3, 1913
                  srai         a2, s5, 1
                  sub          t2, zero, s2
                  slti         gp, s1, -695
                  nop
                  addi         t1, s9, -1916
                  srai         a1, s7, 25
                  addi         a0, s10, -1733
                  or           a3, a7, t1
                  andi         ra, ra, -1328
                  auipc        a0, 396704
                  sll          t2, a6, zero
                  xori         s10, a1, 1744
                  ori          a2, a4, 1044
                  xori         s2, a7, -1569
                  srli         a2, t2, 9
                  nop
                  addi         s1, a7, 231
                  sub          t1, s2, a3
                  add          s5, a5, zero
                  add          t3, a7, a4
                  lui          t3, 517150
                  lui          t3, 196062
                  sll          zero, a6, a5
                  nop
                  ori          ra, t2, 930
                  slti         a0, a6, -1925
                  srai         t3, tp, 24
                  nop
                  sra          s4, s2, t2
                  srl          ra, t4, ra
                  andi         s2, s3, -2023
                  srai         a0, t6, 10
                  ori          zero, s5, 30
                  srl          s2, tp, t5
                  xor          t0, a6, s6
                  xor          t0, a0, a4
                  srli         s10, tp, 8
                  sltu         a6, t5, gp
                  sra          t5, s10, s10
                  srl          t1, t1, s11
                  andi         zero, ra, -397
                  srli         s4, sp, 27
                  srl          a6, s0, s2
                  xori         zero, s5, 587
                  auipc        a7, 212613
                  auipc        t1, 839610
                  sltu         a4, s4, sp
                  sra          t2, a5, s11
                  addi         a3, tp, 1990
                  sra          gp, a7, s9
                  ori          t3, ra, 954
                  srli         a1, sp, 20
                  sltiu        s4, s4, 590
                  srai         a5, a5, 24
                  slli         s2, a4, 16
                  srai         s10, zero, 9
                  sltu         tp, a3, sp
                  add          sp, zero, a6
                  lui          t0, 16976
                  srai         s6, a3, 13
                  srl          tp, t0, t2
                  and          s6, s10, s4
                  srli         a4, s1, 4
                  andi         zero, s2, -738
                  add          a7, s5, s8
                  sltu         t0, s0, s5
                  addi         gp, s0, 207
                  xori         t1, sp, 1652
                  srai         s1, a4, 1
                  sltu         sp, a6, s8
                  srl          gp, s10, zero
                  sltu         a4, t2, t2
                  add          a1, a4, t4
                  slti         a2, t0, -1745
                  and          s7, s7, s11
                  srl          a1, a1, t2
                  lui          zero, 904389
                  nop
                  srli         t5, a2, 15
                  lui          sp, 969890
                  ori          s1, a4, -1907
                  slti         s1, zero, 1638
                  xor          a1, a5, t1
                  sll          t0, t3, s3
                  slt          a7, a4, gp
                  srl          t0, tp, a4
                  sub          s10, s6, a6
                  andi         s11, s5, 55
                  auipc        a2, 753813
                  and          ra, a4, ra
                  ori          s5, t4, -361
                  srli         a2, zero, 20
                  sltiu        s10, t3, -890
                  srai         s10, gp, 4
                  nop
                  sll          ra, s4, t6
                  or           s4, a7, a6
                  auipc        s5, 770552
                  sra          t2, s3, sp
                  sll          s2, a6, s1
                  lui          t0, 610275
                  slt          a3, s5, s0
                  auipc        a0, 952764
                  sltiu        t2, gp, 2021
                  add          t6, sp, s7
                  addi         s4, zero, 247
                  and          t2, t1, a3
                  ori          t3, a3, 877
                  or           a0, t4, s0
                  xori         s8, a0, 1090
                  or           a4, t1, tp
                  andi         s8, t2, -1416
                  addi         s6, tp, 928
                  sll          s1, t4, s11
                  or           t2, t4, s10
                  slt          a1, s5, a1
                  xor          a1, s3, t3
                  sltiu        s11, ra, -1274
                  sltiu        a3, s9, -1350
                  add          ra, s1, a2
                  sub          a6, a6, a1
                  lui          sp, 937315
                  or           a3, s11, t3
                  slt          a2, t2, a7
                  lui          t6, 552054
                  sub          a5, s11, a0
                  slt          t2, a0, s5
                  sra          zero, a4, a0
                  sub          t3, s11, s3
                  srli         s2, s1, 0
                  sub          s6, t5, s1
                  auipc        s3, 176522
                  sltu         a4, t3, a5
                  srl          s5, s10, a4
                  andi         t5, s1, -298
                  sltu         a0, s5, s2
                  srl          t2, s3, a1
                  sltu         gp, a7, t4
                  auipc        a0, 454001
                  srli         s11, s2, 17
                  srai         t6, s9, 20
                  slli         a7, s10, 7
                  or           s3, s8, t4
                  slt          s7, s11, s0
                  add          a0, s11, s2
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_24
                  li           s8, 0xb7604082
                  li           t2, 0x80000000
                  li           a3, 0x80000000
                  li           s1, 0x0
                  li           s11, 0x364366fb
                  li           a4, 0x54e7689e
                  li           a5, 0xffffffff
                  li           s2, 0xbd4c61d2
                  li           s10, 0x80000000
                  lui          s10, 997264
                  sub          t2, s8, s2
                  nop
                  lui          s1, 764246
                  lui          s10, 403871
                  addi         t2, a3, 1922
                  auipc        s1, 708162
                  auipc        t2, 753528
                  sub          t2, a5, s1
                  add          t2, s1, s1
                  lui          sp, 830845
                  nop
                  auipc        s1, 323886
                  lui          a3, 664157
                  lui          s10, 968289
                  addi         s8, a3, -1305
                  nop
                  sub          s2, a4, a5
                  lui          s11, 1014626
                  add          s8, s11, s2
                  nop
                  add          s8, s10, s1
                  sub          s2, s10, s8
                  lui          s2, 840996
                  nop
                  auipc        a3, 335205
                  nop
                  nop
                  sub          t2, s8, a5 #end riscv_int_numeric_corner_stream_24
                  sra          s8, sp, a5
                  addi         t2, ra, -150
                  addi         ra, a5, -1836
                  srl          t6, s1, s9
                  slti         a6, a3, 937
                  auipc        t1, 206717
                  ori          s5, sp, -1354
                  srli         ra, s3, 27
                  and          a1, a2, gp
                  xori         s1, t3, -284
                  add          a3, gp, s11
                  and          gp, t5, a1
                  srli         a0, a3, 24
                  add          s5, t4, t2
                  sltiu        s7, t5, 1419
                  and          s8, s4, s6
                  srai         a2, s5, 2
                  andi         t0, s9, -1656
                  or           a1, t4, s0
                  auipc        a6, 1048346
                  add          a3, s6, t3
                  slt          t6, a2, t3
                  lui          a2, 32517
                  srai         a7, a3, 8
                  or           tp, s11, a2
                  xori         s8, zero, -683
                  auipc        s5, 15457
                  slt          s3, t6, s0
                  srl          s2, tp, s8
                  srl          a0, t3, a2
                  sll          s5, s5, a0
                  slli         s1, t1, 16
                  add          zero, t5, gp
                  slti         t1, t5, 837
                  auipc        a0, 1037604
                  sra          sp, a3, s7
                  auipc        t6, 255408
                  sltu         s1, s6, t1
                  nop
                  and          s3, s0, s0
                  slt          sp, s5, zero
                  srli         s1, s1, 21
                  andi         a6, s8, -802
                  slti         s7, zero, -1686
                  slt          s4, t1, a4
                  xori         a3, s0, -2002
                  slti         a6, t2, -1893
                  add          sp, s10, s11
                  nop
                  sll          a0, s3, t0
                  sltiu        a1, t6, -570
                  sra          a2, s1, t0
                  and          a2, t4, gp
                  slt          a7, t3, t6
                  sltiu        a5, tp, 1482
                  andi         t1, a6, -35
                  auipc        s6, 251212
                  andi         s4, ra, 1081
                  auipc        t6, 602360
                  srl          t0, t1, a1
                  sub          s8, t6, a0
                  ori          a1, a3, -54
                  sltu         t5, t5, t2
                  sltiu        s11, t2, 981
                  sll          s7, gp, t3
                  slt          t3, s2, ra
                  add          s1, s2, s2
                  sra          s3, a3, s9
                  slt          a2, s0, ra
                  xori         t1, t3, 1742
                  nop
                  lui          a2, 14243
                  slli         tp, s8, 18
                  sra          s5, a0, t3
                  sltu         s6, s6, t5
                  sll          sp, s8, a3
                  srli         a1, t4, 12
                  sra          s5, s0, a4
                  sll          s10, t5, t2
                  xor          t6, t1, a1
                  andi         t5, sp, 1774
                  slti         s7, tp, -1818
                  sltu         zero, s4, gp
                  auipc        t3, 17648
                  sltiu        t2, a3, 1152
                  srl          sp, s3, ra
                  slti         zero, sp, 1851
                  sll          a5, t2, gp
                  sll          s1, sp, a5
                  srli         s6, a2, 20
                  auipc        s6, 191122
                  sltu         s6, s4, s1
                  sltu         tp, a6, s7
                  or           a7, s4, s8
                  andi         t6, s11, 1101
                  lui          s1, 881177
                  sltu         t3, gp, s7
                  sll          t2, s3, gp
                  slli         sp, t5, 15
                  xori         s6, s11, 1196
                  andi         s10, a5, 2042
                  slt          sp, a6, a4
                  sltu         s3, s5, s9
                  lui          a0, 425748
                  slli         s11, s10, 22
                  lui          s5, 305187
                  slli         s5, t0, 7
                  and          s8, t5, a6
                  sub          s3, zero, t5
                  or           gp, s2, a0
                  xori         ra, a2, -1742
                  srl          t5, s7, a6
                  slti         s4, s7, 1060
                  sra          s8, s11, s11
                  srai         t5, a7, 6
                  slt          t5, t2, a4
                  ori          a4, ra, -429
                  srai         a6, ra, 19
                  addi         t0, s11, -1882
                  srai         a7, a5, 11
                  srl          t1, s0, s10
                  srl          s10, s0, a4
                  slt          s2, a6, a7
                  xori         zero, s4, -642
                  sltu         t5, t3, tp
                  slti         s6, a2, -1497
                  slt          s7, t3, sp
                  sltiu        tp, t4, -328
                  xor          t1, a6, s5
                  ori          s8, a2, 975
                  auipc        s10, 751995
                  srli         tp, s8, 7
                  sltu         ra, s11, s3
                  xori         zero, s8, -1244
                  addi         s10, s8, -1726
                  addi         a6, s4, -1908
                  xori         t1, sp, 288
                  nop
                  slti         t3, s8, 1322
                  sltiu        a6, a1, 777
                  slli         s7, t3, 4
                  xor          zero, t1, a3
                  add          s10, a4, s0
                  sra          s8, a7, t4
                  and          t0, t3, s11
                  sub          t6, t0, t0
                  srai         s8, a1, 31
                  srai         t0, a2, 5
                  addi         s8, s0, 681
                  sltu         t2, a5, s1
                  xor          a6, gp, a1
                  slti         s6, s5, -1359
                  lui          a5, 987826
                  xor          s5, s7, t3
                  sltu         a3, a5, a7
                  andi         s6, sp, 1546
                  add          a0, tp, gp
                  sub          s1, tp, s4
                  slli         s8, t0, 19
                  slti         a5, t4, -649
                  lui          s7, 950463
                  sltiu        a7, a6, 192
                  addi         t0, s7, -1688
                  sub          a4, a4, a0
                  xor          a3, s9, a3
                  slli         ra, s10, 12
                  sll          s11, s8, s9
                  srl          s4, s5, t6
                  sltu         t6, t2, s10
                  auipc        s2, 287823
                  ori          t3, t5, 1112
                  sltu         s8, s6, sp
                  add          s1, s6, a4
                  srai         t6, s11, 23
                  sub          s6, s9, s5
                  sub          t0, s7, s3
                  sra          a2, sp, t6
                  sra          a6, tp, s5
                  ori          t6, s7, 498
                  xor          t5, s7, gp
                  srai         gp, s8, 24
                  slt          s10, zero, t0
                  srli         t2, t1, 22
                  or           t3, t5, s11
                  or           a4, s2, a1
                  sra          s3, tp, a5
                  ori          tp, s6, -334
                  sltu         a4, s10, s3
                  add          a6, s8, t1
                  nop
                  slti         t0, t2, -752
                  slt          t1, zero, t0
                  slti         a7, s9, 549
                  addi         sp, s1, 557
                  slt          s7, sp, s5
                  sra          t1, s9, t3
                  sll          a4, gp, sp
                  xori         tp, a5, -1229
                  sltiu        s5, t1, -1759
                  auipc        s11, 181486
                  srl          s5, s6, s11
                  sll          t2, s2, s7
                  slt          s11, a5, a1
                  andi         s11, t4, 29
                  add          a7, s6, t2
                  sra          tp, a6, s7
                  srai         t1, tp, 4
                  slli         s6, s2, 25
                  srl          a2, s8, s11
                  slt          s5, t0, s1
                  srli         a0, s2, 5
                  lui          s5, 667839
                  sltu         a3, s3, a2
                  sltu         s8, s4, t6
                  and          t0, a3, s1
                  srai         s10, s4, 13
                  ori          t6, a7, -1441
                  andi         gp, a0, -382
                  lui          s7, 907191
                  ori          a3, a2, 1777
                  slti         s8, s5, 1906
                  lui          s7, 332519
                  xor          t2, a1, s7
                  srl          a0, a0, s3
                  andi         t5, a5, -1459
                  sltiu        a7, ra, 909
                  ori          t5, t2, 792
                  xori         s7, a0, 499
                  srli         s5, t1, 17
                  add          zero, t2, s1
                  sll          s5, a6, s9
                  addi         s2, t6, 514
                  slt          a6, t6, tp
                  xor          s5, s7, s2
                  andi         tp, t2, 350
                  sltiu        ra, tp, 79
                  andi         gp, t2, 436
                  slti         t5, t0, -540
                  sll          a5, t4, sp
                  nop
                  or           a5, s3, t3
                  nop
                  or           s5, s6, s3
                  sll          a2, s9, s1
                  andi         a5, t3, 1382
                  slt          s1, a6, s11
                  srl          t1, a1, t5
                  addi         t6, s3, 1404
                  xor          s8, a2, a0
                  slti         t2, t4, 505
                  and          a2, s8, a6
                  slti         s8, s8, -208
                  sub          ra, t0, t1
                  addi         s7, a7, -1584
                  ori          a1, s2, -1606
                  addi         s8, s5, 1062
                  sra          ra, t0, s10
                  sltu         a1, a1, s10
                  or           a0, t6, a0
                  auipc        a0, 109931
                  nop
                  xori         t3, s4, 1085
                  xori         a0, s3, -1075
                  sltu         s5, a2, s10
                  add          a0, a4, t4
                  ori          t0, gp, -789
                  slt          s11, s0, t4
                  slti         t1, s8, -1323
                  ori          s3, s8, 172
                  sltu         a3, s6, s5
                  srl          t1, s1, s3
                  srl          a6, a4, s5
                  srl          t3, a3, s8
                  sub          zero, s4, t5
                  andi         t2, t4, -1103
                  auipc        s4, 8719
                  srl          t1, s8, t0
                  xori         s4, gp, -1743
                  or           tp, t5, t0
                  or           s10, s10, s7
                  addi         a7, a7, 62
                  and          a2, t5, s8
                  sll          t2, a7, s8
                  srl          s3, a0, gp
                  sll          a7, s7, sp
                  and          sp, ra, t4
                  sltu         ra, sp, a4
                  nop
                  srl          a0, t5, ra
                  xor          sp, s4, tp
                  xori         tp, s9, 1304
                  sll          s4, t2, t4
                  srli         s4, s7, 28
                  slt          s2, a5, s3
                  and          a0, a4, s9
                  ori          s3, t2, 1906
                  or           s8, s0, a3
                  or           tp, s1, t6
                  srl          t3, zero, t0
                  sltiu        tp, a6, 938
                  slti         s3, a5, 1954
                  srai         s1, t6, 10
                  srai         a0, a5, 17
                  ori          s1, s8, 440
                  srli         s5, sp, 2
                  slli         gp, tp, 24
                  ori          s7, s7, -554
                  nop
                  srl          s5, a6, t3
                  add          a3, t1, a5
                  slti         a5, a1, 1778
                  ori          t2, t2, 95
                  or           sp, ra, a6
                  andi         a4, s6, -34
                  xor          gp, ra, s9
                  add          t1, ra, a2
                  nop
                  sltiu        s3, t1, -1003
                  slti         s1, zero, 603
                  lui          a7, 959107
                  auipc        s1, 566748
                  slti         a1, t2, -1756
                  srli         t2, s6, 8
                  sub          s5, a0, t3
                  xor          ra, a3, s2
                  srl          s11, gp, s7
                  xori         a7, ra, 1014
                  slti         s4, t4, -475
                  xori         a0, a0, 662
                  slli         s8, zero, 15
                  sll          s2, t6, s2
                  ori          t3, s6, -844
                  xor          a3, a7, t1
                  slt          s3, t5, t0
                  nop
                  sltiu        a0, a2, 1540
                  sltu         s6, s2, s7
                  slt          s5, s7, s8
                  lui          a0, 874795
                  lui          gp, 481849
                  xori         a3, a4, 503
                  slt          ra, s4, zero
                  sltu         t3, a1, a5
                  srl          s7, s5, a2
                  nop
                  xor          a4, s9, s6
                  srai         a3, zero, 5
                  sub          sp, a2, t1
                  sll          s11, s1, ra
                  auipc        t6, 84335
                  or           a6, a0, s9
                  and          t0, s2, t1
                  andi         s6, t0, -676
                  or           s5, s1, s7
                  slli         a2, sp, 0
                  auipc        gp, 604751
                  slti         t1, s11, 1224
                  srai         a7, a3, 16
                  xor          s3, a1, s10
                  srl          s8, gp, a0
                  sll          a7, sp, s2
                  nop
                  slt          s5, a1, t6
                  slt          s7, t6, zero
                  nop
                  andi         ra, gp, -520
                  nop
                  xori         a7, t5, -1748
                  xor          s11, s9, t0
                  ori          a3, s6, 1291
                  srai         ra, zero, 2
                  slti         s6, a5, -237
                  andi         s1, s7, 524
                  add          s2, t2, t3
                  xor          ra, t5, s0
                  slti         a2, tp, -1732
                  sll          t0, s6, t6
                  lui          a6, 174482
                  lui          a6, 574084
                  andi         gp, s3, 1928
                  ori          s10, sp, 792
                  sra          a3, a0, sp
                  sltiu        t5, a3, -118
                  xori         sp, t4, -720
                  lui          gp, 690464
                  lui          s7, 636920
                  sltu         a0, t1, s2
                  ori          s11, t0, -1040
                  sra          s2, t5, s2
                  slli         s6, a5, 7
                  slt          s5, zero, t5
                  sra          s4, t2, s8
                  xori         t1, a4, 936
                  addi         s2, s7, -405
                  slti         gp, s7, 217
                  slt          s4, a3, s1
                  sub          a4, t5, t3
                  or           t0, s9, s10
                  xor          a4, a7, s3
                  and          s4, zero, a1
                  lui          a2, 564964
                  slli         s8, a2, 30
                  sra          a0, a2, a3
                  srli         a3, sp, 18
                  srl          a5, s10, a2
                  sltu         a7, t3, t1
                  andi         a4, gp, -3
                  or           t0, a3, t1
                  or           s7, a4, t3
                  sltiu        a0, s10, 1826
                  nop
                  addi         s2, s7, -521
                  addi         t3, a5, -1922
                  srli         zero, sp, 16
                  sltiu        tp, a2, 445
                  xor          a2, a2, zero
                  ori          s10, ra, -516
                  srli         zero, t3, 5
                  auipc        t6, 175035
                  sltiu        s10, s1, 278
                  sra          a3, t6, a3
                  auipc        s3, 1046649
                  sll          a3, s8, s9
                  add          zero, s6, zero
                  nop
                  sltiu        t0, ra, -959
                  add          a7, a4, s8
                  sltiu        s11, t1, -968
                  and          t0, t3, s7
                  srli         sp, gp, 20
                  lui          s5, 100726
                  srli         t5, s4, 12
                  slt          s6, a2, a3
                  slti         s5, t3, -865
                  and          s7, s5, s11
                  and          tp, ra, s9
                  sub          tp, a2, t5
                  andi         tp, a2, -1202
                  addi         ra, s3, 867
                  sll          t3, a5, t3
                  srli         a5, s6, 22
                  sltu         a0, sp, s4
                  sra          s2, a2, s9
                  auipc        s1, 96394
                  or           a6, s10, sp
                  xori         s5, t5, -109
                  sltu         zero, ra, t3
                  or           tp, t5, sp
                  srli         s8, gp, 21
                  sra          tp, a2, s1
                  srl          s1, t6, t1
                  add          a2, a3, tp
                  addi         t2, s11, -846
                  srl          s10, s10, s11
                  auipc        ra, 827254
                  sra          s1, s8, t3
                  lui          a1, 421519
                  addi         a7, s4, 222
                  or           s3, tp, a1
                  addi         s8, s2, 1389
                  nop
                  slti         s4, s7, 1116
                  sltu         ra, a7, a2
                  sub          s11, t3, a6
                  sltiu        s5, t5, 991
                  sll          a1, a4, a6
                  nop
                  auipc        a2, 390544
                  slli         t0, s6, 30
                  auipc        a4, 11011
                  andi         a4, s9, -149
                  auipc        a3, 279225
                  xori         s1, zero, -787
                  auipc        s1, 931963
                  add          t2, t4, t3
                  add          a1, gp, a6
                  slli         s6, t2, 24
                  sltiu        s2, s6, -804
                  slti         zero, a4, 581
                  or           s5, a1, s9
                  addi         a1, a3, -652
                  xori         t0, sp, -1809
                  andi         tp, a5, -1139
                  addi         a4, s1, -410
                  slti         t5, t6, 659
                  xor          s10, t0, a3
                  auipc        t3, 564136
                  sll          ra, ra, a4
                  slt          gp, s8, s3
                  addi         s1, a7, -1449
                  sltu         s11, s7, s3
                  sra          s10, t2, s10
                  andi         t0, s2, -468
                  andi         a7, s2, 1637
                  srai         a5, sp, 28
                  nop
                  xor          t2, s2, s0
                  slt          gp, a4, a5
                  srli         s11, s4, 5
                  sltiu        s1, zero, -492
                  slt          s11, a2, a1
                  xor          a0, a5, tp
                  sll          a6, a5, zero
                  sub          s4, t2, tp
                  lui          a3, 800565
                  or           a6, s4, s0
                  srli         s1, s2, 21
                  slti         gp, gp, 427
                  sub          s5, s10, t4
                  nop
                  sltiu        a7, s5, -1733
                  sll          s11, zero, t6
                  auipc        s11, 613086
                  sub          s1, a5, s6
                  addi         s2, tp, -1677
                  add          sp, s2, s9
                  srli         s8, s7, 13
                  or           t0, a1, a5
                  sra          zero, a0, s9
                  andi         s7, a0, 1516
                  srl          a0, a7, s5
                  sub          t1, s5, a5
                  ori          s11, t4, -1561
                  add          t0, t5, gp
                  sll          a7, a1, t3
                  add          gp, t4, a7
                  sub          s5, t1, s3
                  srl          a7, a6, s10
                  slli         t1, gp, 21
                  nop
                  slti         a5, a2, -1761
                  addi         t6, tp, -6
                  andi         s4, s1, 2037
                  add          s11, s8, t1
                  andi         a0, sp, -1530
                  or           a4, t5, a2
                  srai         s11, t4, 15
                  srli         s11, zero, 25
                  andi         tp, tp, 1244
                  slli         s5, tp, 31
                  sll          s11, a4, s8
                  auipc        s3, 713035
                  sltiu        t3, a5, 102
                  srli         s2, s9, 31
                  sltu         t6, t6, s6
                  sltiu        s10, s5, 1008
                  sltu         s3, a2, t0
                  srai         t2, s6, 14
                  slli         s2, s0, 2
                  srli         s1, a7, 28
                  slli         s1, a5, 28
                  srai         t6, s0, 16
                  addi         sp, a7, -2008
                  addi         s10, s6, -959
                  xori         a6, s8, -1688
                  sra          t5, a4, s11
                  slti         s5, a7, -1467
                  sub          a4, t1, ra
                  add          sp, s11, t0
                  slli         sp, a2, 15
                  and          t5, t2, s2
                  sltu         s5, t2, a7
                  srli         s11, gp, 1
                  sub          a3, a6, t4
                  srai         a0, s4, 4
                  slti         s3, ra, -477
                  slli         tp, a0, 17
                  auipc        s1, 769907
                  add          s11, a6, a1
                  lui          gp, 635297
                  sltiu        gp, sp, 425
                  sub          gp, s10, t6
                  srl          ra, a2, s8
                  ori          gp, s11, -428
                  sra          s7, s5, s2
                  slt          s1, s1, s8
                  nop
                  addi         a3, t2, -103
                  or           s10, t2, a3
                  xor          s3, t6, a3
                  slli         t0, s11, 13
                  lui          a7, 292270
                  sltiu        s11, a3, -1503
                  sltu         gp, s2, a0
                  xori         sp, s4, -1052
                  sltiu        sp, s7, -468
                  slti         t1, s1, 828
                  srl          s8, t2, s8
                  add          s1, s4, ra
                  add          ra, a0, s2
                  slt          s3, a4, ra
                  sltu         a7, s11, a1
                  sltiu        t2, sp, -1941
                  sltu         a0, s6, s11
                  xor          t1, gp, t6
                  add          t2, a6, a1
                  ori          tp, a2, -97
                  auipc        t2, 583820
                  srli         gp, sp, 13
                  add          t1, a5, t3
                  addi         gp, s9, 58
                  ori          t1, a2, 1001
                  and          s8, s8, a3
                  srl          s7, a1, s2
                  xori         s4, a6, 1735
                  sltiu        s4, s1, 437
                  sltu         ra, a2, a5
                  xor          s5, t4, a1
                  lui          s3, 617598
                  lui          s7, 784402
                  slt          s1, s2, s7
                  srl          a0, t1, s6
                  sltiu        s11, s5, -919
                  slt          s6, t5, a2
                  sltiu        t2, s10, 964
                  andi         a1, gp, 963
                  sub          a7, a7, gp
                  slt          s7, s2, s7
                  slt          s6, a1, a1
                  slli         a4, s1, 10
                  xor          t5, a1, t6
                  auipc        a4, 580905
                  sub          a4, a0, t5
                  nop
                  andi         a5, zero, -1010
                  and          s4, t2, s6
                  xori         a1, t4, 1471
                  add          t2, t1, t2
                  slti         a7, s7, 943
                  srai         gp, s1, 0
                  or           a0, s1, s1
                  sll          t2, sp, a4
                  or           s3, gp, tp
                  srl          s5, s10, sp
                  xor          s6, s7, s10
                  srl          sp, s6, ra
                  srai         a1, a6, 12
                  srli         s3, a5, 10
                  nop
                  slti         zero, ra, -1192
                  and          s11, a5, a0
                  lui          s8, 429045
                  addi         s1, a7, 1296
                  lui          s6, 31019
                  or           tp, s0, s6
                  li           a2, 0xa68faaf0 #start riscv_int_numeric_corner_stream_22
                  li           s1, 0x0
                  li           gp, 0xcd09e00b
                  li           a4, 0x0
                  li           t1, 0x80000000
                  li           s10, 0x80000000
                  li           a0, 0xffffffff
                  li           a7, 0xffffffff
                  li           s8, 0xf7d09625
                  li           a3, 0x4eac662d
                  sub          s10, a3, s1
                  auipc        s10, 60383
                  add          s10, a2, a7
                  add          a7, s10, s1
                  auipc        t1, 796334
                  nop
                  addi         a7, s8, 1793
                  nop
                  sub          t1, gp, a0
                  add          gp, s10, s10
                  auipc        t1, 193872
                  sub          s1, a2, t1
                  nop
                  lui          a4, 777514
                  sub          s8, a0, s8
                  sub          a7, t1, a0
                  auipc        s8, 1022935
                  sub          t1, t1, gp
                  add          a3, a4, a0
                  add          a3, s1, s10
                  addi         a7, a0, -983
                  lui          gp, 313230
                  nop #end riscv_int_numeric_corner_stream_22
                  addi         a2, s3, -2040
                  srl          t1, tp, a1
                  nop
                  sub          s3, s9, a4
                  nop
                  nop
                  andi         a7, a5, 1038
                  srl          a4, t0, a3
                  nop
                  sltu         s7, sp, s6
                  xori         s1, a6, -1860
                  auipc        s6, 222698
                  sra          a4, s10, s4
                  lui          s7, 582965
                  auipc        t6, 1016491
                  sltu         t5, ra, a6
                  srai         s1, t2, 1
                  srli         t5, s4, 24
                  ori          a3, s1, -1080
                  srli         s11, s7, 23
                  add          s5, a4, s6
                  srl          s6, s8, sp
                  slti         s4, s6, -546
                  andi         s5, a0, -926
                  xori         s8, sp, 1460
                  slt          ra, a0, a5
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xffffffff
                  li           gp, 0x80000000
                  li           sp, 0x0
                  li           s6, 0x80000000
                  li           t0, 0x0
                  li           t3, 0xffffffff
                  li           s11, 0xffffffff
                  li           a0, 0x80000000
                  li           t5, 0x0
                  sub          s11, t0, s8
                  addi         gp, t5, -380
                  sub          a0, s8, s10
                  sub          gp, gp, t0
                  addi         s11, s8, -1452
                  sub          sp, gp, s8
                  sub          t0, s6, sp
                  lui          sp, 773756
                  addi         s11, t0, 868
                  nop
                  sub          a0, t5, t5
                  addi         s6, t0, -889
                  addi         t0, t0, -1393
                  sub          gp, t0, t5
                  sub          s11, t3, s11
                  addi         t5, a0, 1448
                  sub          s8, s11, s11
                  sub          t0, t0, s10
                  sub          gp, gp, sp
                  add          s6, s11, t0
                  lui          gp, 573138
                  auipc        gp, 809318
                  auipc        s10, 462980
                  nop
                  nop
                  auipc        s6, 752985
                  lui          gp, 373053
                  sub          sp, a0, s8
                  addi         t3, sp, 1853
                  addi         t3, gp, 892 #end riscv_int_numeric_corner_stream_0
                  lui          t5, 138783
                  and          a1, a6, sp
                  slt          a4, t3, t1
                  slt          a0, a7, s11
                  add          sp, s2, s3
                  sra          t6, sp, t1
                  or           s7, s2, s9
                  sll          tp, a4, s0
                  slli         t6, zero, 31
                  ori          a3, t1, -1610
                  and          s4, zero, sp
                  ori          ra, a7, -1465
                  lui          s2, 1015581
                  sub          s11, sp, a6
                  and          s6, s6, a6
                  srai         s4, s0, 22
                  ori          s10, a0, 949
                  xori         t0, s1, 745
                  sltiu        s10, zero, 244
                  sra          t6, a4, sp
                  ori          s3, s4, 1669
                  xori         s6, a1, 1144
                  sra          sp, s3, sp
                  slt          s4, s3, t2
                  slli         t6, t1, 25
                  add          s3, t2, t2
                  or           s11, t2, t0
                  srl          sp, a1, s5
                  xor          s8, s10, s0
                  sltu         t1, t0, a5
                  sltu         s2, t0, t6
                  or           a7, t1, t6
                  sub          a6, zero, ra
                  srai         a4, a2, 12
                  sll          s11, s4, a0
                  srli         s4, a2, 10
                  slti         t2, s6, 575
                  add          t5, a0, s10
                  sll          gp, s3, a3
                  sltu         a0, a5, t5
                  add          zero, a6, s8
                  ori          zero, a2, -1778
                  srli         tp, s3, 15
                  xori         a1, sp, -1213
                  add          s8, a3, gp
                  slli         a7, t1, 18
                  srl          s11, a3, s6
                  slt          s5, gp, s10
                  nop
                  sltu         gp, zero, t5
                  or           s11, sp, s11
                  ori          s11, s10, 1498
                  andi         a6, s9, -1998
                  andi         a3, s11, -1359
                  sra          a7, tp, s4
                  nop
                  auipc        s2, 811902
                  xor          a6, gp, s7
                  andi         a4, a0, 620
                  slt          s8, s1, t4
                  xori         t5, a7, -1886
                  or           tp, a0, t4
                  lui          a0, 360903
                  sll          s10, t5, s10
                  lui          a1, 426733
                  and          s10, t6, a0
                  andi         sp, s2, 1586
                  sll          a4, t6, s0
                  addi         s6, t5, -321
                  or           a6, t1, s5
                  xori         s6, s0, 94
                  slli         s1, s7, 3
                  srai         a6, s10, 3
                  slt          s5, a0, t6
                  andi         s4, a7, -1319
                  slt          a1, tp, t2
                  andi         s2, t6, 1874
                  srai         s1, a3, 2
                  sll          s8, s6, a6
                  srli         t2, a4, 30
                  or           a4, t2, s2
                  sub          a0, s4, ra
                  nop
                  add          s8, t6, gp
                  sub          a0, s7, a7
                  andi         a2, s9, 1153
                  and          sp, zero, a2
                  slti         a3, a7, 1841
                  and          a7, a4, s6
                  lui          t5, 670808
                  sltiu        s3, a1, 453
                  sltiu        a2, a2, 1515
                  sub          t1, a5, a6
                  xori         a6, t6, 467
                  sltu         sp, a2, a1
                  slti         a2, s2, 996
                  sll          a5, s9, zero
                  srai         t3, s0, 27
                  xor          t0, t2, a7
                  auipc        t3, 231957
                  or           a5, a4, s8
                  srli         t5, t0, 28
                  andi         tp, s3, -238
                  andi         a3, a6, 1033
                  addi         s11, a0, -828
                  xori         zero, a1, -1104
                  srli         a7, t0, 13
                  ori          a3, t5, -541
                  sltiu        sp, t5, -302
                  sll          zero, t3, s5
                  xori         zero, a1, 1936
                  and          s7, s4, a3
                  srai         a0, zero, 2
                  sll          s11, ra, t4
                  ori          s3, s2, -622
                  add          s1, s0, s7
                  sltiu        s3, a3, 963
                  addi         s1, a0, 235
                  sra          s1, s3, gp
                  srai         tp, s0, 29
                  auipc        s5, 550289
                  add          s4, s0, s2
                  sll          s3, s10, t6
                  slti         sp, s1, 1179
                  xor          sp, a0, s6
                  sltiu        s6, s2, -1969
                  xor          sp, t6, t0
                  sltu         a6, s8, a5
                  sltu         t6, t5, s10
                  add          a6, t5, t2
                  srai         s5, t6, 19
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           sp, 0x22d7719b
                  li           a1, 0x0
                  li           s6, 0xffffffff
                  li           s4, 0xffffffff
                  li           s8, 0x0
                  li           tp, 0x80000000
                  li           t6, 0xedbff4a3
                  li           s5, 0x0
                  li           ra, 0xffffffff
                  add          tp, s6, sp
                  sub          a1, s5, a1
                  addi         ra, ra, -640
                  nop
                  nop
                  sub          t6, a6, sp
                  sub          s8, s6, s6
                  addi         sp, s5, 1688
                  auipc        s6, 870121
                  add          tp, s8, tp
                  addi         s8, t6, 1780
                  sub          ra, ra, s6
                  addi         sp, sp, 219
                  nop
                  nop
                  auipc        s5, 973177
                  addi         t6, ra, 1449
                  addi         t6, s5, -374
                  addi         s6, t6, -533
                  nop
                  add          a1, t6, a6
                  lui          sp, 631866
                  addi         s8, t6, 1306
                  lui          t6, 1007859
                  lui          a1, 87759
                  auipc        tp, 755308
                  add          s5, ra, s8
                  sub          t6, tp, s6 #end riscv_int_numeric_corner_stream_13
                  xori         s3, a0, -1638
                  auipc        s6, 998987
                  or           ra, t0, s11
                  srl          t6, t5, s5
                  lui          sp, 704492
                  xori         t6, s3, 652
                  auipc        s1, 550358
                  and          ra, s7, t3
                  and          s2, s8, t5
                  lui          a1, 676993
                  auipc        t1, 698143
                  nop
                  and          a7, t1, s9
                  slli         a6, s0, 28
                  srl          s1, s4, t4
                  slti         s2, sp, 1070
                  sra          t6, s11, s6
                  auipc        t0, 441577
                  srai         s4, a1, 2
                  slli         s8, t3, 0
                  sub          t1, s7, a5
                  srai         s6, t3, 8
                  sltiu        s11, sp, -274
                  addi         s3, a5, -179
                  sltiu        t6, a0, 979
                  or           a3, a5, a6
                  sll          zero, tp, s6
                  ori          s11, a0, 493
                  addi         a5, a3, 39
                  srli         s2, a5, 30
                  lui          a5, 623419
                  addi         t6, t2, -1049
                  nop
                  lui          a7, 167039
                  add          s2, a7, t2
                  xori         gp, t1, -2031
                  add          t0, t1, a4
                  sltu         s10, s7, s7
                  ori          a2, t1, 1572
                  ori          t0, s3, 152
                  slli         tp, s2, 2
                  sra          s11, s8, ra
                  and          s2, s5, s8
                  xori         a2, a6, -121
                  add          a7, s1, a4
                  lui          a1, 176807
                  slli         a1, s6, 16
                  and          a6, t0, s7
                  sra          t3, t4, s6
                  srli         s6, s10, 5
                  nop
                  sra          s5, s0, sp
                  srl          t3, s4, t4
                  srai         t1, s0, 2
                  srl          s1, t5, t6
                  xori         ra, t1, -882
                  add          tp, a6, a2
                  auipc        a4, 903216
                  or           s3, a1, t5
                  sll          a2, s6, s1
                  addi         zero, a1, -1180
                  sra          s5, t0, a0
                  add          a6, s3, t5
                  ori          a1, t3, 887
                  and          zero, t6, a5
                  add          t2, gp, a4
                  lui          s5, 839605
                  sra          t0, s3, s1
                  xori         gp, s11, 1872
                  sltiu        s4, a6, -682
                  nop
                  lui          t2, 798278
                  srli         s5, s0, 1
                  auipc        a3, 712862
                  xori         a4, s6, 1609
                  ori          t3, t5, 1182
                  sub          s2, s5, s7
                  auipc        s5, 842449
                  srl          a2, t3, a5
                  xori         t6, a6, -715
                  xori         s6, tp, -1220
                  srai         s2, s6, 19
                  or           ra, s5, zero
                  sltu         a2, t4, t5
                  ori          t5, s8, 371
                  auipc        a3, 264297
                  xori         gp, zero, 1601
                  and          s3, a1, s10
                  srl          t5, a0, a3
                  sub          a7, s7, a1
                  slt          a0, t6, t0
                  srai         t5, s5, 27
                  slti         a3, s10, 640
                  sltiu        s6, a2, -1522
                  or           s4, a7, s9
                  sub          s8, s5, s10
                  andi         s10, a0, 175
                  addi         s4, s1, -1212
                  slt          zero, tp, a3
                  addi         t0, s6, 1418
                  lui          s10, 85273
                  xori         s2, ra, 643
                  or           a2, s3, t6
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s4, 0xffffffff
                  li           a2, 0x80000000
                  li           ra, 0x0
                  li           a5, 0x0
                  li           s5, 0x0
                  li           gp, 0x80000000
                  li           s1, 0x80000000
                  li           t0, 0x80000000
                  li           s7, 0xf7c760eb
                  auipc        a2, 1016221
                  sub          s1, a2, s4
                  sub          s1, s7, ra
                  sub          a6, a6, a6
                  auipc        s7, 788398
                  nop
                  lui          s4, 604876
                  addi         s7, ra, 595
                  add          s1, s1, t0
                  nop
                  sub          s1, s4, a6
                  auipc        ra, 226103
                  nop
                  add          t0, a2, a6
                  nop
                  add          gp, a5, a2
                  auipc        a2, 788483
                  nop #end riscv_int_numeric_corner_stream_1
                  xor          t3, s7, s1
                  slli         s7, s0, 2
                  add          s2, s3, sp
                  xor          s2, s11, a7
                  slt          a3, s0, s0
                  auipc        a2, 557952
                  slt          s5, s1, zero
                  add          t2, tp, a0
                  slt          a4, sp, s3
                  srl          a4, t2, t1
                  srai         s1, s3, 28
                  sra          s7, zero, s7
                  srai         a2, a1, 15
                  slli         s5, a7, 22
                  slti         a7, gp, 857
                  and          s10, gp, s2
                  lui          t6, 1007736
                  srai         t3, sp, 2
                  auipc        ra, 124696
                  sltiu        a7, s8, -10
                  or           gp, t6, s10
                  srai         a6, a7, 25
                  slti         ra, s5, -1981
                  addi         t6, a7, 705
                  lui          a1, 32025
                  sra          s1, s7, s10
                  add          s11, t3, a6
                  lui          gp, 230411
                  srli         s11, t4, 15
                  srl          gp, t1, ra
                  srl          s6, t5, t6
                  slti         t0, ra, 1874
                  slt          sp, t4, a2
                  li           s10, 0x8060f1e5 #start riscv_int_numeric_corner_stream_10
                  li           t2, 0x0
                  li           t5, 0xbb080654
                  li           tp, 0x8d707f5a
                  li           s4, 0xffffffff
                  li           t1, 0xf41025bf
                  li           t3, 0x80000000
                  li           a5, 0x80000000
                  li           s8, 0xb03ab620
                  li           s11, 0xa5d2f760
                  lui          s10, 666291
                  auipc        s11, 770952
                  addi         s10, t5, 1999
                  add          a5, a5, t5
                  sub          t2, t3, t2
                  nop
                  addi         t3, s4, 695
                  add          s8, s10, t3
                  sub          tp, s4, t1
                  lui          t3, 314242
                  nop
                  add          t1, t5, t1
                  lui          t2, 497014
                  lui          s10, 530580
                  auipc        s4, 372071
                  auipc        a5, 739354
                  sub          t3, s4, t1
                  addi         a5, s8, -1575
                  lui          a5, 242588
                  lui          tp, 165036
                  auipc        a5, 196721
                  add          t5, t5, t5
                  sub          t1, a5, s11
                  add          s11, t1, s4
                  auipc        s11, 452021
                  add          t5, t3, s10 #end riscv_int_numeric_corner_stream_10
                  srl          a4, a4, t1
                  xori         t3, t5, 58
                  slli         s7, s1, 31
                  srli         t5, a0, 13
                  slli         a1, a3, 13
                  addi         s3, s6, 1849
                  xor          s11, s6, t1
                  srl          a7, t5, a4
                  sltu         a3, a6, s0
                  xori         s4, s2, 1557
                  srli         t0, s11, 25
                  add          t0, a6, gp
                  and          zero, t4, sp
                  xori         a6, tp, 1993
                  add          a7, ra, sp
                  addi         sp, sp, 1521
                  nop
                  addi         t1, a3, 463
                  and          t5, s4, a1
                  nop
                  sra          tp, s4, t1
                  auipc        s2, 59681
                  nop
                  slt          t1, a3, s11
                  nop
                  xor          tp, s8, s9
                  slti         s10, t2, -1298
                  sra          s1, s2, s0
                  sltu         t2, s3, a5
                  srai         s4, s6, 16
                  and          t1, s7, sp
                  srli         s11, gp, 29
                  addi         a1, s0, -505
                  srli         t5, a3, 22
                  addi         s2, s9, -508
                  srli         a0, t2, 27
                  slt          t0, a0, s6
                  sub          s5, a5, a4
                  slli         t6, a2, 13
                  add          a3, s0, s10
                  addi         s5, s6, -957
                  andi         zero, a1, 1679
                  sub          a7, s8, t1
                  xori         s5, s8, 1480
                  add          s5, s1, s10
                  nop
                  ori          s4, s0, -612
                  add          a2, a1, a1
                  sltu         s4, s5, t6
                  lui          zero, 383053
                  xori         a4, ra, -1141
                  addi         a0, s1, -1994
                  xor          t6, s0, a5
                  srl          s6, ra, s1
                  xori         s6, a4, -155
                  sltu         tp, s9, sp
                  sll          s8, t2, s9
                  slt          a4, s11, sp
                  auipc        t1, 279208
                  or           s7, ra, t5
                  lui          a3, 399701
                  sub          s1, t3, a2
                  add          s10, t3, a2
                  auipc        s5, 361351
                  nop
                  add          s11, a4, a2
                  ori          a5, s9, 366
                  srl          sp, s4, t3
                  sll          s8, t3, ra
                  sub          t1, a4, s0
                  xor          s8, s3, s7
                  sll          s7, t6, a6
                  slti         s8, a3, -877
                  lui          zero, 741936
                  addi         gp, s10, -468
                  slt          t3, a7, s10
                  auipc        a4, 776588
                  andi         t3, a6, 1591
                  lui          t6, 506891
                  srai         s5, zero, 1
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_25
                  li           s7, 0xeee024f8
                  li           s11, 0x80000000
                  li           t3, 0x80000000
                  li           ra, 0x80000000
                  li           t1, 0x0
                  li           gp, 0xffffffff
                  li           a1, 0xb5f46d78
                  li           s3, 0x0
                  li           s4, 0x0
                  lui          s3, 311932
                  lui          s3, 47368
                  nop
                  nop
                  auipc        s4, 32472
                  nop
                  sub          tp, s3, t1
                  auipc        ra, 159581
                  addi         tp, s4, 1879
                  auipc        t1, 59812
                  nop
                  sub          ra, t1, ra
                  auipc        a1, 115255
                  addi         s7, gp, 127
                  add          t3, a1, gp
                  auipc        s7, 289726
                  lui          ra, 24492
                  auipc        s11, 125976
                  nop
                  lui          s3, 988505
                  add          s3, s4, s11
                  auipc        s11, 335092
                  add          s11, t3, s3
                  lui          s3, 634947
                  nop
                  lui          t1, 492877 #end riscv_int_numeric_corner_stream_25
                  lui          a0, 417437
                  sltu         s11, t4, s3
                  lui          s10, 950095
                  xori         a7, ra, 1283
                  nop
                  andi         a4, s9, -422
                  sll          s11, a0, s0
                  sub          s5, a4, s11
                  andi         t3, s1, -1122
                  andi         a1, s7, 1511
                  srai         t3, zero, 1
                  srl          a3, s6, zero
                  sltiu        s10, a5, 1901
                  nop
                  srl          ra, a4, s6
                  srai         a2, a1, 19
                  sltiu        a7, s3, -1346
                  nop
                  lui          a0, 507460
                  sll          t1, s9, a5
                  srl          t3, s11, a0
                  srl          s8, t0, t0
                  srai         zero, s9, 19
                  nop
                  sub          s11, a6, t4
                  srli         s8, a4, 12
                  sltiu        t1, a2, 806
                  slt          a7, t0, s11
                  srai         s11, t6, 11
                  slt          a3, a3, t5
                  slt          a5, s6, s5
                  slt          a4, gp, s10
                  or           gp, sp, t5
                  xori         s8, s0, 1248
                  and          t1, a4, tp
                  andi         s6, s4, -1792
                  auipc        t1, 183615
                  nop
                  srli         tp, a0, 2
                  lui          a1, 257473
                  addi         s3, s8, 1990
                  srl          s10, t2, t0
                  and          t1, a4, t5
                  sll          gp, s11, a4
                  andi         gp, a3, -2044
                  auipc        a2, 147180
                  srl          a7, a3, s5
                  and          s3, a3, s4
                  slli         zero, s8, 5
                  auipc        tp, 1005743
                  slli         sp, sp, 3
                  slli         s4, sp, 8
                  lui          s10, 565581
                  slti         t5, sp, -362
                  slt          ra, t0, s11
                  addi         a3, s6, 1569
                  lui          s6, 89745
                  add          sp, s5, s6
                  xor          t2, ra, s0
                  or           s11, a4, s5
                  sra          a1, a1, tp
                  lui          a4, 933035
                  or           a2, gp, a4
                  or           zero, s2, s2
                  or           s6, ra, a4
                  sub          a4, a7, t3
                  sltiu        s5, s8, -1332
                  xor          s11, s5, a5
                  lui          a3, 556798
                  sltu         a6, a0, s1
                  srl          a4, s6, t6
                  andi         s1, a7, 439
                  add          s10, ra, s6
                  nop
                  sub          t5, s4, s0
                  slt          t1, a0, ra
                  auipc        zero, 963216
                  sra          ra, ra, s9
                  lui          s8, 698611
                  slli         s7, a7, 27
                  and          s1, s3, t2
                  srli         s10, t1, 16
                  addi         a3, a0, 199
                  sll          gp, s5, a5
                  slli         sp, sp, 16
                  sll          gp, a6, s11
                  sltiu        a6, t2, -1984
                  srai         t6, ra, 20
                  sltu         gp, a3, s11
                  sub          s5, a4, a6
                  sltiu        a2, t6, -997
                  add          a5, t4, s10
                  add          s8, a6, a3
                  xori         gp, t2, 157
                  andi         t6, s8, -1380
                  addi         a7, t4, -1958
                  srai         s2, t4, 22
                  sra          t6, s4, tp
                  auipc        ra, 712809
                  sltu         a1, ra, a4
                  srli         s4, a0, 15
                  and          s3, gp, t5
                  andi         a1, t1, -364
                  xori         t2, a0, -1526
                  andi         a6, t5, 1280
                  addi         sp, a6, -1398
                  xor          s8, t3, t6
                  and          s11, s0, a2
                  sltiu        s8, t1, 1848
                  sra          zero, a4, s2
                  slti         t6, s9, -963
                  add          a4, a1, t3
                  add          a6, gp, s5
                  srl          sp, t4, s0
                  or           a5, t5, a3
                  auipc        a4, 1037580
                  ori          s7, a6, -1384
                  auipc        t2, 645385
                  slt          t6, t4, sp
                  xor          s2, t4, a3
                  sll          sp, a6, a6
                  srli         t3, s4, 17
                  sltiu        s1, s5, 34
                  sltiu        t6, sp, -978
                  lui          a6, 872078
                  or           a2, ra, s11
                  sll          s1, s2, sp
                  slti         s8, s7, 363
                  slti         ra, t0, 1848
                  and          t2, s5, sp
                  xor          s4, a6, s0
                  srl          a7, s6, s3
                  sltiu        a7, gp, -674
                  sll          t5, a3, zero
                  and          t0, t5, sp
                  ori          zero, s10, 540
                  and          s5, s7, s8
                  srl          s5, t0, s1
                  add          t3, a2, t2
                  sltiu        t2, a3, -496
                  sra          s11, a2, sp
                  ori          s2, gp, 1296
                  srli         s4, t6, 20
                  and          s3, s11, a6
                  auipc        a2, 195350
                  nop
                  nop
                  xor          t2, a0, s3
                  slti         gp, sp, -2017
                  srai         s11, tp, 16
                  sll          t5, t6, s5
                  slti         a0, s0, -1371
                  sll          t2, t5, t5
                  and          t0, s1, tp
                  ori          t5, s0, 1176
                  sltiu        a0, a3, 950
                  ori          gp, t2, -71
                  andi         s8, a6, 969
                  sub          a1, sp, t0
                  srl          ra, gp, s11
                  auipc        a7, 840521
                  srl          t3, s8, s9
                  andi         s11, s9, 979
                  add          s1, a6, ra
                  ori          t5, a4, -319
                  xor          ra, a0, t6
                  slt          a7, s7, s9
                  slt          t1, t0, a1
                  addi         a3, a3, -7
                  srl          t0, t5, t0
                  slli         s3, a3, 17
                  srai         a4, a0, 24
                  auipc        a1, 105592
                  addi         a0, s2, 1705
                  xor          a0, s10, a0
                  slli         s8, s1, 23
                  lui          t5, 320130
                  slt          t6, s1, t5
                  sltu         s8, a6, t0
                  or           s11, s8, a6
                  srli         t5, a0, 18
                  andi         tp, a7, 1555
                  sltiu        zero, t6, 1882
                  xor          a6, s11, s9
                  srli         t2, s6, 13
                  slt          gp, t1, s9
                  add          s8, t0, t0
                  srai         a7, t2, 2
                  srli         s8, tp, 24
                  sll          a1, s5, a1
                  xori         s4, s1, -638
                  andi         s10, s8, -1023
                  sra          s2, gp, s7
                  or           s1, s7, s6
                  ori          a4, a2, 647
                  srli         a6, s4, 14
                  nop
                  xor          sp, s7, s4
                  slti         s7, s6, -487
                  addi         t3, a1, 438
                  andi         s11, s8, 1851
                  auipc        s6, 1000420
                  srl          t1, a6, s9
                  lui          t3, 448836
                  lui          t6, 435185
                  xor          s5, s3, s7
                  lui          sp, 234023
                  srai         s5, a4, 18
                  addi         a7, s2, -924
                  xori         a3, a5, -194
                  lui          s7, 200147
                  lui          a7, 489025
                  srai         t6, a2, 24
                  xori         ra, t5, -643
                  xori         t6, a6, -1243
                  srai         t0, a6, 4
                  slt          t0, s1, a0
                  ori          t6, s6, -1610
                  slli         t3, s1, 30
                  srli         s8, s6, 3
                  sub          s7, s6, s9
                  sll          ra, a0, tp
                  slt          t5, sp, sp
                  nop
                  nop
                  sltu         t6, zero, s6
                  srli         s5, s6, 13
                  la x29, test_done
                  jalr x0, x29, 0
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
                  addi x25, x25, -4
                  sw  x8, (x25)
                  add x8, x25, zero
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x25, x8, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x7, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x7, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x7, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x7, x10, ecall_handler
                  li x10, 0x1
                  beq x7, x10, instr_fault_handler
                  li x10, 0x5
                  beq x7, x10, load_fault_handler
                  li x10, 0x7
                  beq x7, x10, store_fault_handler
                  li x10, 0xc
                  beq x7, x10, pt_fault_handler
                  li x10, 0xd
                  beq x7, x10, pt_fault_handler
                  li x10, 0xf
                  beq x7, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
                  mret

load_fault_handler:
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
                  mret

store_fault_handler:
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x8, x25, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  add x25, x8, zero
                  lw  x8, (x25)
                  addi x25, x25, 4
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
