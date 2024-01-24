.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  li x19, 0x0
                  csrw 0x304, x19 # MIE
                  mret
init:             
                  li x0, 0x9
                  li x1, 0xe
                  li x2, 0x2
                  li x3, 0x0
                  li x4, 0xf06bb420
                  li x5, 0xff777ffe
                  li x6, 0x80000000
                  li x7, 0xb
                  li x8, 0x3
                  li x9, 0xd
                  li x10, 0xfd25305a
                  li x11, 0x282c8560
                  li x12, 0xb044f670
                  li x13, 0xfcfb8759
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x2e447f6c
                  li x17, 0x2367ff56
                  li x18, 0xfa269634
                  li x19, 0x8
                  li x20, 0xfe61bb5c
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xf
                  li x26, 0xf69243cd
                  li x27, 0x320f0374
                  li x28, 0x0
                  li x30, 0xfcafedf9
                  li x31, 0x7973b402
                  la x29, user_stack_end
main:             li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           ra, 0x0
                  li           s3, 0x80000000
                  li           a5, 0x80000000
                  li           s11, 0x0
                  li           gp, 0x80000000
                  li           tp, 0x0
                  li           s8, 0xffffffff
                  li           s0, 0x0
                  li           a1, 0xf688e145
                  nop
                  sub          a5, sp, s3
                  addi         s0, gp, -50
                  add          tp, ra, s8
                  addi         s8, tp, -310
                  addi         ra, a5, 564
                  sub          s8, s3, a1
                  lui          s0, 867907
                  add          tp, a1, a1
                  add          a5, sp, s8
                  lui          sp, 140944
                  add          tp, ra, s3
                  sub          s8, ra, a1
                  addi         tp, tp, 1924
                  add          tp, s8, tp
                  lui          ra, 750280
                  lui          a1, 238782
                  addi         ra, s8, -409
                  sub          a5, tp, sp
                  add          tp, gp, s8 #end riscv_int_numeric_corner_stream_11
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s3, 0x80000000
                  li           s11, 0xffffffff
                  li           a3, 0x9406d39
                  li           t5, 0x0
                  li           a6, 0x0
                  li           a0, 0xffffffff
                  li           t1, 0x80000000
                  li           gp, 0x0
                  li           s8, 0x80000000
                  auipc        t1, 853408
                  lui          a3, 324850
                  sub          t5, a6, t5
                  addi         a5, a3, -489
                  auipc        a6, 306448
                  sub          gp, a6, gp
                  lui          a5, 619161
                  nop
                  sub          s11, a0, a3
                  lui          a5, 511526
                  addi         a3, a5, -1127
                  lui          a3, 423834
                  addi         a3, t5, 645
                  lui          t1, 637893
                  add          a3, s11, a0
                  sub          s8, t1, a6
                  sub          a3, a3, a6
                  nop
                  nop
                  add          s8, a0, s3
                  addi         s8, a5, -893
                  addi         s3, a6, -1611 #end riscv_int_numeric_corner_stream_18
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t5, 0x0
                  li           a1, 0x0
                  li           s0, 0xb3487516
                  li           s11, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0x411b782f
                  li           a3, 0x0
                  li           s8, 0x68709773
                  li           gp, 0x1711b1bc
                  addi         t5, ra, 1578
                  addi         a1, s8, -1582
                  lui          s11, 587389
                  lui          s8, 437942
                  addi         a1, ra, 44
                  auipc        t2, 283409
                  lui          a1, 817781
                  sub          s8, a3, gp
                  sub          a1, ra, t5
                  auipc        a3, 811524
                  lui          s8, 935724
                  sub          a1, sp, s0
                  sub          t5, t2, s0
                  sub          s11, t5, a3
                  addi         ra, t2, -1144
                  nop
                  addi         a3, t2, 1953
                  auipc        gp, 134983
                  addi         sp, t5, -672
                  nop
                  addi         s11, sp, 1352
                  add          s0, a3, a3
                  add          s0, t5, t2
                  lui          s11, 440331
                  add          s11, sp, s0 #end riscv_int_numeric_corner_stream_14
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           a7, 0x6d8f1450
                  li           sp, 0xffffffff
                  li           s2, 0x81fe50f1
                  li           s0, 0x4b894ad3
                  li           s11, 0x0
                  li           t0, 0x0
                  li           s1, 0x0
                  li           s4, 0x80000000
                  li           t2, 0x80000000
                  nop
                  addi         s11, t2, 1890
                  nop
                  add          t2, s2, a7
                  lui          t2, 900393
                  add          s4, s4, s2
                  sub          t0, a7, s1
                  auipc        s0, 988904
                  addi         t2, sp, -156
                  add          a7, t2, s11
                  auipc        s0, 898335
                  sub          s11, t0, t2
                  sub          s1, s2, t2
                  addi         s10, s1, 174
                  add          s1, sp, s2
                  lui          sp, 245346
                  sub          s1, a7, s2
                  sub          s11, s4, a7
                  lui          s4, 8195
                  add          t0, a7, s0
                  sub          s11, s11, t0
                  addi         t2, t0, -1015
                  lui          s10, 508906
                  addi         t2, s11, -1901
                  lui          s1, 645250
                  lui          s0, 647978
                  auipc        a7, 769676
                  add          a7, sp, t2 #end riscv_int_numeric_corner_stream_29
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           t2, 0x0
                  li           s1, 0x5c3478c0
                  li           t1, 0x80000000
                  li           a2, 0x80000000
                  li           t0, 0xffffffff
                  li           t6, 0x0
                  li           ra, 0xffffffff
                  li           tp, 0xffffffff
                  li           sp, 0x0
                  sub          s1, tp, s1
                  addi         t2, s1, -605
                  nop
                  nop
                  addi         t6, s1, -1077
                  auipc        s1, 604852
                  addi         s1, t0, 17
                  auipc        t0, 10407
                  lui          t6, 772219
                  addi         t0, s1, 1730
                  add          a7, t0, t6
                  lui          t2, 663753
                  addi         t2, tp, -1765
                  lui          a7, 70803
                  sub          t2, s1, s1
                  auipc        a2, 288373 #end riscv_int_numeric_corner_stream_23
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s11, 0xffffffff
                  li           s6, 0x0
                  li           a0, 0x0
                  li           s8, 0x0
                  li           t1, 0x41b1f98e
                  li           a6, 0x80000000
                  li           a1, 0x0
                  li           s10, 0x0
                  li           t0, 0x0
                  auipc        t0, 341826
                  auipc        s6, 492730
                  lui          a1, 547512
                  add          a1, a0, s2
                  auipc        t0, 893535
                  auipc        s6, 372305
                  nop
                  sub          s6, s8, a0
                  sub          t0, s6, a1
                  auipc        a6, 997144
                  addi         t0, a6, -1654
                  addi         t0, a6, 1160
                  add          a1, a6, a1
                  lui          s10, 430055
                  addi         s2, s11, -370
                  lui          s11, 822956
                  addi         t0, t0, 1710
                  lui          a1, 871370
                  add          t1, t0, a1
                  auipc        s6, 639693
                  auipc        a0, 172209
                  sub          t1, t1, s11
                  add          s11, s8, a1
                  auipc        s8, 450408
                  sub          s11, a0, s8
                  auipc        t0, 785087 #end riscv_int_numeric_corner_stream_10
                  li           s4, 0x861e4b33 #start riscv_int_numeric_corner_stream_21
                  li           a2, 0x0
                  li           t6, 0x0
                  li           s11, 0xffffffff
                  li           t0, 0x30e576c1
                  li           ra, 0xffffffff
                  li           tp, 0xe8194be
                  li           sp, 0x0
                  li           t3, 0x17764cba
                  li           s0, 0xffffffff
                  lui          tp, 95678
                  sub          t0, s4, tp
                  add          t6, s0, tp
                  auipc        sp, 578529
                  sub          t0, t0, a2
                  add          sp, t0, s4
                  auipc        t0, 626318
                  addi         s0, s0, 459
                  lui          sp, 887671
                  add          t3, s11, sp
                  addi         sp, s4, 1014
                  nop
                  addi         s11, t3, -1694
                  add          ra, s11, a2
                  lui          s0, 549839
                  auipc        sp, 938606 #end riscv_int_numeric_corner_stream_21
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a6, 0x0
                  li           s3, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0x67c00fea
                  li           sp, 0x80000000
                  li           a7, 0x0
                  li           t1, 0x80000000
                  li           s4, 0x0
                  li           a2, 0x0
                  sub          a7, s7, s4
                  addi         s10, a7, 636
                  lui          a2, 404300
                  lui          a2, 689333
                  add          s7, t1, a2
                  nop
                  addi         s4, t1, -977
                  sub          a7, s4, t1
                  sub          a2, s10, sp
                  lui          s4, 418191
                  addi         s10, t0, -1073
                  add          s4, t1, s7
                  auipc        t0, 190525
                  add          s3, s7, s10
                  lui          a7, 992892
                  auipc        s4, 540139
                  nop
                  sub          t0, a2, t0
                  lui          a6, 297000
                  nop
                  add          a7, a6, a7
                  add          s10, s7, a6
                  nop
                  auipc        a2, 834710 #end riscv_int_numeric_corner_stream_15
                  li           t0, 0x10802cb0 #start riscv_int_numeric_corner_stream_9
                  li           t6, 0x80000000
                  li           a7, 0xffffffff
                  li           s10, 0x80000000
                  li           a5, 0xffffffff
                  li           t5, 0x80000000
                  li           s1, 0xb72ac862
                  li           s4, 0x66b88278
                  li           s5, 0x0
                  li           a3, 0xffffffff
                  auipc        s1, 600703
                  addi         t0, s10, -833
                  addi         s1, s10, 1422
                  auipc        s1, 47593
                  lui          t6, 999734
                  auipc        s10, 718727
                  nop
                  auipc        a7, 714050
                  lui          s10, 196407
                  lui          a7, 668116
                  sub          s4, s1, s10
                  sub          a3, s10, s1
                  add          s4, a5, a5
                  auipc        t0, 96056
                  nop
                  lui          t0, 319999 #end riscv_int_numeric_corner_stream_9
                  li           ra, 0xbb48c2d #start riscv_int_numeric_corner_stream_37
                  li           s7, 0x0
                  li           t0, 0xffffffff
                  li           s2, 0x0
                  li           a7, 0xffffffff
                  li           s6, 0x80000000
                  li           a5, 0xffffffff
                  li           tp, 0xffffffff
                  li           s1, 0xffffffff
                  li           s0, 0x0
                  nop
                  nop
                  add          s7, tp, a5
                  add          s7, a5, s2
                  auipc        s7, 883848
                  nop
                  sub          s6, tp, s7
                  lui          s2, 515414
                  sub          a5, s2, ra
                  nop
                  sub          s1, s6, a5
                  add          ra, s0, s1
                  add          s7, s1, tp
                  sub          a5, a5, ra
                  add          s6, a5, a5
                  add          s0, a7, s1
                  sub          t0, s6, s1
                  add          a5, tp, s6
                  add          s0, s2, ra
                  add          s6, s6, a5
                  sub          a7, s2, s6
                  addi         a7, a5, 941
                  nop
                  sub          tp, tp, s0
                  addi         a5, s6, 1959
                  auipc        t0, 347635
                  auipc        s0, 721844
                  lui          a5, 562667 #end riscv_int_numeric_corner_stream_37
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           s7, 0xffffffff
                  li           t3, 0x5c4831b1
                  li           a3, 0x3f617c8f
                  li           a1, 0xffffffff
                  li           ra, 0x6eb4a168
                  li           s8, 0x505e6405
                  li           s6, 0x80000000
                  li           t5, 0xffffffff
                  li           t6, 0x80000000
                  nop
                  addi         t5, a1, -928
                  sub          ra, s8, a1
                  add          t5, t5, ra
                  sub          gp, t6, a1
                  lui          s7, 533601
                  auipc        s6, 60941
                  addi         s6, ra, -810
                  auipc        t3, 119974
                  addi         a3, t6, 998
                  lui          t5, 469093
                  add          t3, gp, a3
                  add          a3, s8, t3
                  nop
                  nop
                  sub          a3, s8, a1
                  sub          gp, s6, s6
                  nop #end riscv_int_numeric_corner_stream_38
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           gp, 0xffffffff
                  li           sp, 0x80000000
                  li           a0, 0x80000000
                  li           a6, 0xffffffff
                  li           a2, 0xffffffff
                  li           s0, 0xffffffff
                  li           tp, 0x80000000
                  li           t2, 0x0
                  li           t5, 0xffffffff
                  add          a0, a6, a2
                  add          t5, a2, s4
                  add          gp, tp, gp
                  lui          sp, 846966
                  sub          tp, s0, a2
                  add          s4, gp, s0
                  add          t2, a0, gp
                  addi         a0, s0, 1910
                  addi         t5, s0, 294
                  auipc        gp, 227968
                  auipc        s0, 688435
                  addi         t2, a2, 386
                  sub          gp, a2, t5
                  addi         tp, t5, 1882
                  auipc        t5, 90191
                  sub          t2, gp, s4
                  auipc        a2, 254777
                  add          t5, a6, tp
                  addi         sp, tp, -890
                  lui          sp, 708842 #end riscv_int_numeric_corner_stream_1
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_31
                  li           s10, 0xffffffff
                  li           tp, 0x80000000
                  li           a2, 0x0
                  li           t3, 0xffffffff
                  li           s0, 0x687915c4
                  li           s5, 0x0
                  li           s6, 0xffffffff
                  li           a0, 0x0
                  li           t0, 0x0
                  auipc        s6, 218665
                  nop
                  sub          a0, s0, t3
                  lui          t0, 72399
                  addi         s5, a0, -1609
                  addi         a0, s6, -1077
                  addi         t3, t3, 1870
                  addi         t3, a0, 649
                  sub          s0, s6, tp
                  nop
                  lui          s10, 358386
                  auipc        a6, 298546
                  add          a0, s10, t0
                  addi         a0, s10, -1325
                  nop
                  auipc        a2, 617477
                  sub          tp, a0, t3 #end riscv_int_numeric_corner_stream_31
                  li           t3, 0x905ee78a #start riscv_int_numeric_corner_stream_17
                  li           s5, 0x87bca810
                  li           t5, 0x80000000
                  li           a0, 0x0
                  li           t2, 0x0
                  li           gp, 0x0
                  li           ra, 0xffffffff
                  li           t1, 0xffffffff
                  li           t0, 0x0
                  li           s10, 0xa25c40c
                  sub          s5, s5, t3
                  nop
                  sub          t1, t3, t2
                  addi         t1, gp, -166
                  add          t1, t3, s10
                  auipc        s5, 725978
                  add          t3, s10, a0
                  addi         t2, t3, 367
                  sub          a0, s10, ra
                  auipc        t1, 415674
                  addi         gp, s10, 1326
                  auipc        t1, 408337
                  addi         s5, t3, 587
                  addi         t3, t5, -424
                  nop
                  auipc        s5, 149893
                  addi         t3, ra, 1962
                  sub          gp, a0, t1
                  nop
                  sub          t3, ra, t1
                  addi         t0, a0, 133
                  sub          gp, t3, a0
                  lui          a0, 764017
                  add          t3, t1, s5
                  nop
                  nop
                  sub          t5, s10, s5 #end riscv_int_numeric_corner_stream_17
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_20
                  li           t6, 0x0
                  li           t1, 0x0
                  li           s5, 0x50139f18
                  li           s6, 0x32c4efe7
                  li           t2, 0x80000000
                  li           a3, 0x0
                  li           a5, 0x80000000
                  li           a7, 0x0
                  li           t5, 0x0
                  auipc        t5, 779239
                  lui          a7, 292645
                  nop
                  nop
                  add          t2, s0, s6
                  add          s0, s0, a5
                  sub          a7, a3, s5
                  add          a3, t2, t5
                  lui          t1, 469379
                  addi         s6, t2, 1710
                  sub          s0, a5, a3
                  lui          s6, 668973
                  auipc        t1, 486395
                  addi         t2, s0, 169
                  add          t1, a3, t2
                  add          t1, t2, s0
                  auipc        s5, 222062 #end riscv_int_numeric_corner_stream_20
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           ra, 0xaba84dd5
                  li           s3, 0x0
                  li           a2, 0xffffffff
                  li           t1, 0x3da35c3e
                  li           gp, 0x979f47d1
                  li           sp, 0xffffffff
                  li           t0, 0xffffffff
                  li           a3, 0x165883cf
                  li           t5, 0xffffffff
                  nop
                  sub          t5, ra, t1
                  sub          a3, a3, a3
                  addi         ra, t5, -1634
                  addi         t5, ra, 840
                  addi         ra, a3, 1580
                  auipc        s6, 573734
                  nop
                  add          s3, t0, ra
                  add          s6, a2, gp
                  addi         t0, a3, -637
                  lui          t0, 978808
                  lui          s6, 14878
                  add          ra, ra, s6
                  nop
                  lui          t5, 668354
                  auipc        t0, 800267
                  add          a2, s3, t1
                  auipc        a3, 439679
                  addi         t5, t5, 680 #end riscv_int_numeric_corner_stream_30
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s1, 0xa6633e60
                  li           t1, 0xffffffff
                  li           s5, 0x9713f092
                  li           t5, 0x0
                  li           sp, 0x0
                  li           a1, 0x572fdedc
                  li           gp, 0xf2885a4f
                  li           a6, 0xffffffff
                  li           t2, 0x80000000
                  addi         gp, s5, -1050
                  lui          a3, 126964
                  addi         sp, t5, 1809
                  auipc        s1, 907507
                  sub          s5, t5, t1
                  lui          t1, 598304
                  auipc        t5, 911462
                  add          a1, s5, t5
                  addi         gp, t1, 1153
                  sub          s5, a1, s5
                  addi         a3, s1, -250
                  nop
                  nop
                  sub          a1, t1, t2
                  lui          t5, 589058
                  auipc        a6, 304479
                  addi         a1, s5, -1526
                  nop
                  addi         a3, a3, 575
                  nop
                  auipc        a6, 295544
                  add          t1, t2, t2
                  lui          t1, 250550
                  nop
                  add          t2, a6, t2
                  sub          s1, a1, s1 #end riscv_int_numeric_corner_stream_8
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           gp, 0x80000000
                  li           s6, 0x80000000
                  li           sp, 0x80000000
                  li           ra, 0x80000000
                  li           a3, 0x1e761132
                  li           s3, 0x0
                  li           t6, 0x0
                  li           s0, 0x80000000
                  li           t2, 0xc9262ece
                  nop
                  sub          s6, s10, a3
                  auipc        s3, 797152
                  add          ra, s3, s0
                  lui          sp, 731422
                  nop
                  sub          s3, t6, t2
                  addi         ra, t6, -1661
                  add          s0, s10, ra
                  addi         s0, s6, -1381
                  add          s6, a3, gp
                  lui          ra, 662679
                  add          ra, a3, a3
                  sub          s10, ra, s3
                  addi         a3, ra, 241
                  auipc        t6, 831744
                  addi         s10, s0, 660
                  nop
                  auipc        t6, 553118
                  auipc        a3, 888195
                  auipc        ra, 284627
                  sub          s6, a3, t2 #end riscv_int_numeric_corner_stream_2
                  srai         a0, s8, 3
                  srl          t1, s1, gp
                  slti         a5, s4, 1888
                  slt          tp, gp, a0
                  sltiu        s10, s7, 179
                  xor          a5, t2, t1
                  sub          t3, a0, s7
                  slli         t6, t2, 9
                  ori          zero, s4, 1054
                  srli         s11, a5, 23
                  sub          s5, a6, s7
                  sll          s1, t6, s8
                  slli         a1, a2, 13
                  or           a0, t5, a6
                  sltiu        sp, s2, 735
                  auipc        a3, 214888
                  xori         s8, s9, 1321
                  sub          t5, a0, a3
                  srai         s4, s7, 13
                  lui          t1, 986896
                  xor          s0, s11, t3
                  auipc        a2, 393091
                  or           t1, t1, a1
                  addi         s8, t4, 1793
                  add          sp, s5, s9
                  sltiu        s8, s10, 559
                  slt          s0, s6, sp
                  slli         a5, s7, 2
                  xor          t5, s5, a3
                  slli         a3, s11, 13
                  sltiu        s7, ra, -1294
                  xori         s2, t0, 675
                  slt          s3, t1, a2
                  slt          s10, s2, ra
                  auipc        t3, 872535
                  sltiu        t5, s6, 535
                  srl          a5, tp, s10
                  sra          t6, t1, t3
                  srai         a1, sp, 19
                  sub          s6, t0, s1
                  andi         s5, t1, 1134
                  xori         t1, a6, 548
                  sll          a3, t2, tp
                  slti         sp, s8, 532
                  sub          ra, a1, a2
                  sltiu        t5, gp, -875
                  addi         t6, s11, -1049
                  or           a0, gp, t5
                  add          s8, a6, sp
                  srai         s6, t1, 18
                  auipc        a0, 678914
                  ori          a0, gp, 2
                  slt          a6, s8, t2
                  ori          t6, a3, 1430
                  sll          s8, s4, a4
                  lui          t3, 858964
                  xor          gp, s9, a5
                  or           zero, s0, t4
                  xor          a0, s2, tp
                  andi         t5, a4, 914
                  srli         s1, zero, 21
                  xor          ra, t2, a4
                  sltu         t2, gp, zero
                  slti         s7, t6, 1286
                  sltiu        t3, gp, 1141
                  slli         s10, s6, 0
                  and          a0, a4, t1
                  or           a5, a5, ra
                  srli         t6, a5, 25
                  sltiu        s1, tp, -1665
                  or           ra, t3, t5
                  sltiu        s8, s6, 1730
                  nop
                  andi         ra, s9, 451
                  auipc        a0, 854120
                  ori          a5, zero, -1747
                  xori         a5, ra, 376
                  sub          s11, gp, a3
                  nop
                  sll          s3, zero, s10
                  xori         s8, a0, -949
                  lui          s0, 612344
                  srl          s0, t1, s6
                  andi         a7, s1, -1358
                  auipc        t6, 873072
                  andi         t3, zero, -360
                  sra          s1, s8, s10
                  or           s10, s6, s1
                  add          s0, t3, s5
                  sltu         t6, t2, a5
                  xori         s1, s4, -1720
                  slti         s5, gp, 355
                  sltiu        t2, t1, -1202
                  sltu         a2, t6, s11
                  ori          s11, s10, -513
                  slti         s10, s2, -1616
                  slli         s11, s10, 12
                  srai         t5, t0, 30
                  xori         s7, s4, 371
                  srl          tp, a4, a1
                  sltiu        s0, t6, -1079
                  slti         s7, t2, 1800
                  xor          tp, s2, s11
                  nop
                  slti         zero, a0, -1555
                  srl          a3, s0, s0
                  and          s11, t6, t0
                  and          sp, s0, a7
                  andi         a6, a0, 1431
                  andi         s10, s3, 1928
                  xor          a3, zero, s1
                  sub          s8, s9, t6
                  slti         s2, s1, 1420
                  addi         s4, a3, 1438
                  sub          a3, tp, s0
                  xori         s2, zero, 1274
                  slti         s4, a7, -603
                  xori         t0, tp, -660
                  auipc        s5, 605086
                  sub          a5, s1, t0
                  lui          s4, 756553
                  addi         a2, a1, 2047
                  slti         a6, ra, 1277
                  slti         s11, a5, 70
                  srl          t6, s6, s11
                  slt          s11, a3, a0
                  xori         t3, gp, 1414
                  sub          t5, s11, s7
                  xori         t1, ra, -1165
                  andi         a7, t4, 1502
                  add          s6, t5, tp
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0x80000000
                  li           a7, 0x0
                  li           t2, 0x0
                  li           s6, 0x80000000
                  li           a2, 0xffffffff
                  li           a5, 0xffffffff
                  li           ra, 0x0
                  li           a6, 0x80000000
                  li           a1, 0xab966b50
                  addi         a6, a2, -987
                  nop
                  sub          s6, sp, ra
                  auipc        ra, 668718
                  auipc        a2, 944470
                  auipc        a6, 72017
                  addi         a6, s5, 832
                  nop
                  lui          s5, 406017
                  add          a7, a2, s5
                  auipc        a2, 130752
                  lui          a2, 505656
                  add          s5, a6, a6
                  lui          s6, 441929
                  addi         a5, a2, 1898
                  sub          a2, sp, a1
                  sub          a7, a6, a7
                  nop
                  nop
                  add          a6, s5, a7
                  nop #end riscv_int_numeric_corner_stream_19
                  sub          s10, a0, s0
                  sub          a2, t5, s3
                  sub          t1, sp, t3
                  and          s0, s7, s6
                  sra          a0, s9, t2
                  slli         t0, s8, 17
                  nop
                  srai         gp, s1, 7
                  and          s0, ra, tp
                  srai         zero, t4, 21
                  srai         zero, t5, 1
                  nop
                  sltiu        t0, t4, 1237
                  add          ra, t2, sp
                  nop
                  lui          sp, 448059
                  srli         gp, s3, 21
                  or           s10, a4, s6
                  xori         t5, s11, 1709
                  addi         t1, s0, -1335
                  srai         gp, s2, 15
                  sltiu        a2, tp, 1572
                  sra          t1, a0, zero
                  slt          a1, t1, a1
                  or           t2, sp, zero
                  srai         a5, s2, 27
                  sub          t2, t5, s9
                  or           s4, s10, t0
                  and          tp, t0, tp
                  sll          s8, s9, a3
                  sll          a6, a1, zero
                  sub          a2, a3, zero
                  auipc        a7, 5208
                  sra          a6, a7, t0
                  addi         t0, s8, -960
                  nop
                  and          s4, a6, sp
                  srl          t1, s8, s1
                  lui          s6, 657933
                  sltiu        t1, s7, 263
                  sll          s6, s5, t1
                  srai         sp, a6, 23
                  lui          s1, 498818
                  andi         s6, ra, 1070
                  slt          s2, a5, ra
                  xor          s2, t6, sp
                  sltiu        s0, a0, -1774
                  lui          s2, 316947
                  xori         s8, t5, 408
                  slt          a5, t6, tp
                  slli         a5, s3, 3
                  slt          s11, a1, t2
                  slt          t5, a4, s0
                  add          a7, s11, t4
                  sra          t6, a2, s8
                  slli         zero, a7, 12
                  slti         a5, a5, -1347
                  andi         s4, s11, 1499
                  srli         s0, sp, 20
                  srai         a0, s7, 28
                  srl          a7, s5, s1
                  addi         s10, s7, -1728
                  sltiu        s2, t4, -284
                  srl          t1, zero, a6
                  srli         s6, s8, 27
                  slli         sp, ra, 29
                  lui          s2, 810881
                  sltu         s11, sp, sp
                  xor          ra, s1, s5
                  srl          t3, s10, ra
                  or           s2, t5, t3
                  addi         a1, a1, -1486
                  auipc        a1, 563846
                  slli         a3, t1, 18
                  lui          s7, 264123
                  slt          s4, a1, t2
                  auipc        a5, 712042
                  lui          t1, 6994
                  nop
                  sra          a0, s5, a1
                  and          s7, s8, t2
                  or           sp, s7, a4
                  xori         gp, ra, 1674
                  srli         s10, t3, 12
                  sra          t6, a7, s3
                  slt          a7, sp, a5
                  nop
                  srai         s4, t1, 18
                  add          a3, s6, a5
                  slti         t0, s2, -65
                  slti         s3, a6, 606
                  slti         a7, s0, -696
                  auipc        a7, 752696
                  lui          a7, 542736
                  sll          s4, a1, sp
                  auipc        a3, 86072
                  ori          s10, s2, 737
                  sll          a0, s10, s0
                  srli         sp, ra, 4
                  and          a3, s11, t2
                  lui          s10, 322210
                  andi         s4, a1, 197
                  add          tp, sp, a2
                  sltiu        s8, a2, -1909
                  slt          t1, ra, t4
                  srli         sp, t0, 1
                  slti         a2, t0, 2022
                  srl          a1, a2, s6
                  srl          s11, t3, ra
                  slt          s8, s2, a6
                  add          s5, t0, zero
                  nop
                  sll          t2, a2, s11
                  sltu         a7, s5, t5
                  slti         t0, s2, -1724
                  nop
                  slt          a5, t4, a6
                  slli         s1, s4, 6
                  nop
                  sll          t5, t3, a5
                  sltiu        s11, t0, -201
                  andi         t6, a4, -387
                  or           s0, a6, a3
                  srli         t0, a2, 16
                  sra          s10, t6, tp
                  srai         a2, t4, 4
                  srl          s10, s11, t2
                  sll          t6, a7, s6
                  auipc        ra, 28745
                  add          s2, s9, s1
                  slti         a0, gp, 278
                  auipc        gp, 782704
                  or           s6, t2, s2
                  sltiu        s11, s5, 1675
                  sra          a5, t6, s4
                  sub          a3, a2, t2
                  nop
                  sub          ra, s0, ra
                  add          t0, s11, t2
                  xori         ra, a6, 1007
                  slt          sp, a1, a3
                  slti         tp, t6, 1184
                  xori         s1, s0, -689
                  ori          s7, gp, 625
                  andi         a6, s10, 1745
                  slli         s1, a0, 27
                  slti         t5, s7, 2036
                  xor          t0, s4, s3
                  and          a5, a4, a1
                  srl          s11, s6, s6
                  lui          t1, 1030331
                  slti         s6, s2, -93
                  nop
                  srai         s6, a7, 29
                  sra          s0, s6, t0
                  sll          t6, a0, s0
                  srl          s11, sp, s0
                  srl          a6, ra, gp
                  srli         t3, a6, 14
                  sll          a5, s5, a2
                  srl          s7, s3, s1
                  srl          s4, a0, zero
                  and          s6, s9, ra
                  nop
                  sltiu        t2, a0, 818
                  sltiu        tp, zero, -2016
                  or           a0, a0, s0
                  srli         s11, s5, 4
                  and          a7, s10, tp
                  xori         a5, s9, -564
                  srai         a7, tp, 26
                  srli         s7, a0, 12
                  sra          a2, s10, s1
                  srl          t5, s2, s0
                  andi         t6, ra, -1310
                  xori         s5, ra, -361
                  or           a7, t4, s4
                  xori         t6, s3, 583
                  andi         t2, s9, -1568
                  xori         a7, t2, 1458
                  addi         s6, t1, -297
                  andi         t5, t6, -633
                  sll          a3, a0, a3
                  sltiu        t6, a5, 68
                  slti         t1, zero, 1539
                  srl          s7, ra, s6
                  nop
                  nop
                  and          s1, s1, s7
                  auipc        a7, 277729
                  slti         s0, t4, 289
                  sra          gp, t0, a3
                  xor          t2, s7, s7
                  srl          s7, s11, a2
                  add          s8, a0, s5
                  slti         a3, s3, 1267
                  nop
                  xori         sp, a0, 712
                  ori          s7, a2, 99
                  sub          t1, s11, a7
                  add          s7, s4, a7
                  sub          s6, t2, a7
                  andi         sp, s6, 1023
                  sltu         t6, sp, a0
                  slli         tp, ra, 2
                  andi         s4, s10, 1903
                  xori         ra, s0, -679
                  andi         s6, a7, 513
                  add          a0, s9, t5
                  slt          a6, sp, t1
                  sub          zero, a2, s0
                  xor          s11, sp, a3
                  srai         t5, tp, 8
                  sra          a0, t0, a7
                  sltiu        a2, a2, -284
                  xor          s3, t0, s10
                  sra          a7, t5, t0
                  slti         s8, s1, 1630
                  sub          t0, s8, a1
                  xor          a3, s4, tp
                  sltiu        s8, t1, -758
                  addi         s8, a3, 1763
                  sub          a0, s2, sp
                  andi         s6, a0, -1212
                  slt          s2, s1, t5
                  or           a6, a0, t0
                  lui          a3, 45223
                  addi         s5, a0, 1803
                  srli         a5, a2, 18
                  addi         t6, t1, 1613
                  srl          sp, s2, s10
                  auipc        t3, 125872
                  sra          t5, a0, a4
                  add          a0, s10, a3
                  xori         a3, tp, 1547
                  andi         s5, a6, -642
                  andi         t0, s10, 407
                  sltiu        a5, a4, 1254
                  slti         s10, s9, -475
                  andi         s2, s5, 618
                  auipc        s10, 1008295
                  sltiu        s10, s6, -655
                  and          sp, sp, a5
                  sra          t0, s10, t5
                  srli         tp, s6, 18
                  xor          t5, t2, t3
                  xor          s5, s10, s3
                  ori          sp, gp, 664
                  auipc        s0, 2760
                  slli         ra, s8, 18
                  xori         s5, a1, -1421
                  auipc        s10, 304108
                  ori          s0, tp, 488
                  add          s2, s4, s11
                  slti         s10, s3, 1995
                  slli         s1, s2, 31
                  sub          s1, a0, gp
                  nop
                  sll          s4, t6, s7
                  sltu         t0, t2, t4
                  slt          s3, t3, a1
                  andi         t3, t4, -787
                  srl          a1, a6, tp
                  sra          s7, t5, s5
                  sltu         s5, s6, a7
                  andi         s1, s8, 1645
                  slt          a7, ra, a2
                  xori         s7, a7, 1407
                  ori          s11, a3, -1836
                  sltu         t5, a5, t1
                  srl          a3, a7, a6
                  nop
                  nop
                  andi         a5, s3, 1617
                  sll          s5, s1, t2
                  srli         t0, s2, 21
                  lui          tp, 365225
                  auipc        ra, 23416
                  lui          a5, 217980
                  sltiu        t5, s0, 279
                  andi         a7, a6, -14
                  ori          a2, a1, 1407
                  srli         s3, s10, 2
                  srl          t2, a7, s5
                  nop
                  sltu         s8, t5, ra
                  or           s7, s11, s6
                  auipc        a1, 122102
                  sub          t1, a3, tp
                  and          s7, ra, a6
                  sltu         a5, a5, t0
                  slt          a5, t0, s0
                  srl          a7, a5, t2
                  lui          s7, 231912
                  ori          s0, s10, 547
                  sub          s6, a5, s5
                  nop
                  sra          t2, a2, gp
                  nop
                  sra          s4, s2, t2
                  slti         s3, t3, 999
                  sll          a2, s6, a7
                  srai         zero, s11, 13
                  andi         s11, s10, 342
                  or           a5, s8, s10
                  sltu         a3, a7, t2
                  addi         a3, s4, -865
                  sub          a3, a3, s4
                  nop
                  lui          a5, 430209
                  xor          s5, s6, a1
                  nop
                  slti         a6, s5, -392
                  xori         a0, sp, -152
                  slti         a7, t3, -1243
                  srl          a3, a3, t3
                  lui          t3, 104180
                  nop
                  slt          t2, t4, zero
                  sltiu        a6, a0, 946
                  andi         ra, s1, -1411
                  lui          s5, 843829
                  slti         s1, a5, 945
                  srl          s5, t2, t3
                  xor          s4, s5, s2
                  sll          s6, t4, sp
                  srli         s1, a0, 10
                  addi         t3, a7, -1745
                  xor          ra, a4, s10
                  addi         zero, t5, 710
                  slti         s1, a2, 1301
                  addi         zero, s6, 185
                  sub          a2, tp, a7
                  slt          a7, tp, s11
                  sltu         t3, a4, t1
                  slt          t5, s7, t3
                  sll          sp, s3, a3
                  srli         s10, t3, 5
                  addi         sp, s0, 84
                  xori         t6, s3, -816
                  sra          s4, s4, sp
                  sub          a6, t5, a3
                  addi         a6, sp, -70
                  sub          a3, a5, t5
                  nop
                  and          s5, t2, s6
                  add          t0, a3, t3
                  sra          zero, a0, s11
                  srli         s1, t1, 30
                  sltu         s5, t1, a2
                  srli         s7, a4, 20
                  add          t5, s3, a7
                  srl          t5, a4, s4
                  sra          t6, s4, s6
                  sltu         t3, ra, a1
                  auipc        a3, 749562
                  srl          ra, t1, s6
                  ori          a3, s11, 1055
                  add          a2, ra, t5
                  slt          a7, t2, t5
                  nop
                  sra          t5, gp, a5
                  sltu         t6, a1, sp
                  or           ra, s8, s5
                  slt          s6, sp, gp
                  sltu         t2, a2, t2
                  srl          a3, a7, a6
                  auipc        s8, 1011578
                  nop
                  ori          s1, gp, 566
                  lui          s2, 457091
                  slt          zero, t1, s7
                  sltiu        zero, t5, -205
                  addi         a5, a0, 1853
                  sra          s3, sp, s3
                  nop
                  sub          t2, s9, t5
                  sll          s6, t1, s9
                  srli         sp, a3, 14
                  sub          ra, a2, t5
                  srl          ra, s2, s1
                  add          s8, s0, gp
                  andi         s5, a7, -1131
                  sltu         s4, t5, s8
                  sltu         s10, t6, a6
                  auipc        s2, 881626
                  slt          a3, ra, a7
                  xori         ra, s2, 1256
                  sra          a1, t3, a1
                  sltiu        t5, s10, -1496
                  srli         tp, s7, 15
                  sll          zero, a5, s4
                  sltu         s7, a3, s11
                  slt          a3, s8, s10
                  and          sp, sp, a6
                  srl          a7, s9, t1
                  srli         s6, s4, 21
                  srl          a2, s2, s5
                  slli         s5, s10, 14
                  sub          s10, a4, gp
                  srl          s7, s11, a0
                  slti         t6, t6, -980
                  add          sp, s10, a3
                  or           zero, s0, s6
                  xori         s1, a6, -99
                  addi         t0, s3, 578
                  ori          s5, s5, -1577
                  sra          s1, a1, t1
                  addi         s2, s0, 1354
                  nop
                  andi         t6, s5, -1094
                  srli         a0, s4, 17
                  lui          s8, 416340
                  sll          s7, zero, t5
                  sra          t1, a7, a7
                  sltu         t3, a6, s7
                  sra          s1, zero, s10
                  andi         ra, t2, -1947
                  lui          t1, 229146
                  ori          t2, a2, 1545
                  slli         t5, t1, 1
                  sltu         a2, ra, a3
                  slti         s1, sp, -1950
                  sltiu        gp, a4, -479
                  srli         t2, t4, 5
                  nop
                  xor          s5, zero, s4
                  and          s8, s3, a5
                  slti         s3, t6, -1504
                  sltiu        ra, sp, -69
                  xor          s10, s0, a5
                  srai         t6, tp, 8
                  slli         a5, t2, 25
                  auipc        s4, 41935
                  srl          s7, t4, t3
                  sltu         sp, s5, s8
                  srl          s5, tp, zero
                  nop
                  sra          s0, s3, t4
                  srl          t5, t5, t1
                  srai         a7, t5, 26
                  or           s11, t5, t1
                  xor          t1, s2, s1
                  lui          sp, 589000
                  auipc        a3, 200522
                  or           a7, tp, t1
                  sra          a1, s4, t0
                  sll          s7, s6, t4
                  slt          s2, s2, a5
                  sltu         a5, s8, s8
                  slti         t1, t3, 1172
                  slt          a5, a1, gp
                  andi         s2, s2, 660
                  sub          a3, s11, a3
                  sltiu        a7, s8, -1934
                  and          a5, s9, s8
                  sltiu        t1, t6, 1451
                  sll          t1, s10, sp
                  slt          a0, a2, sp
                  andi         s8, a5, 1589
                  xor          a0, t1, tp
                  add          a7, s4, s7
                  auipc        sp, 931781
                  sub          t6, a7, ra
                  addi         s1, s0, -1518
                  auipc        s1, 678815
                  sra          ra, s0, a6
                  sltu         s8, a4, t4
                  xori         t3, s0, -344
                  xori         a5, t1, 714
                  lui          s2, 943170
                  or           t6, t1, a3
                  nop
                  andi         a2, s11, 453
                  nop
                  ori          ra, s1, 1025
                  ori          t6, t2, 1121
                  sltu         a1, t3, zero
                  slli         t3, s6, 26
                  xor          sp, t1, t6
                  sub          a0, gp, zero
                  addi         t0, s7, -677
                  xori         s1, s2, 1918
                  sub          s6, a0, s9
                  srai         a2, t0, 31
                  slti         t5, a5, 1143
                  slti         s5, s11, -1843
                  auipc        zero, 11479
                  xori         t1, s1, 598
                  sltiu        s3, t6, -1701
                  lui          s0, 94314
                  sltu         t6, a0, t0
                  srl          t0, s3, a3
                  add          sp, s0, a2
                  sltu         s10, a3, t3
                  srai         a5, zero, 18
                  lui          s11, 617515
                  add          a1, a7, s9
                  addi         a6, a4, 157
                  slti         s0, a2, -1315
                  srl          s10, s5, s11
                  srai         t3, a0, 20
                  addi         a0, s11, -1166
                  srli         a2, a6, 25
                  sub          t5, a0, s3
                  srli         a0, a6, 11
                  sltu         gp, s7, a5
                  xori         a3, tp, 1961
                  ori          gp, ra, 1815
                  slti         t5, zero, 1744
                  or           zero, s10, ra
                  slli         s4, s1, 5
                  and          a2, sp, a6
                  nop
                  ori          s3, t5, 1001
                  sltiu        t0, s10, 1175
                  sltu         a0, t2, zero
                  sll          t6, t5, s1
                  and          a0, s7, s8
                  sltu         s11, t5, tp
                  lui          a2, 935608
                  and          t0, s3, t4
                  srl          s10, a5, t2
                  slli         s2, a6, 14
                  addi         s3, s8, 1961
                  and          s0, s8, t2
                  ori          s1, a0, 365
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           a0, 0xffffffff
                  li           a2, 0xffffffff
                  li           a3, 0xc5930441
                  li           s7, 0xffffffff
                  li           gp, 0x0
                  li           sp, 0xffffffff
                  li           t2, 0xffffffff
                  li           a6, 0xf0436565
                  li           ra, 0x2a6baf5c
                  sub          a3, sp, a2
                  sub          a0, a2, a2
                  auipc        a6, 724542
                  lui          a6, 606612
                  lui          a6, 331064
                  lui          s7, 289619
                  add          a0, a6, ra
                  auipc        sp, 981491
                  lui          ra, 1032340
                  nop
                  addi         sp, ra, 949
                  lui          t2, 539895
                  addi         sp, a0, -800
                  add          a0, gp, a3
                  lui          a0, 175968
                  add          a2, ra, a2
                  add          a0, sp, gp
                  lui          a3, 643488
                  lui          sp, 721135
                  add          a2, a6, a3
                  auipc        a2, 948896 #end riscv_int_numeric_corner_stream_39
                  sltu         t0, a2, a0
                  sll          s10, a6, a4
                  xor          t6, s10, a2
                  ori          a3, a5, 1164
                  srl          s0, t3, s10
                  add          sp, a2, t5
                  auipc        t3, 187788
                  nop
                  srl          ra, zero, s4
                  sltu         a7, zero, a7
                  and          a2, t3, a0
                  andi         s4, gp, -1764
                  or           s0, s10, a6
                  srl          t6, a1, s2
                  ori          t3, a6, -538
                  xor          s1, a3, a5
                  srli         s2, gp, 11
                  sub          s4, a7, a7
                  nop
                  sra          a2, a6, a4
                  addi         a5, a1, -850
                  and          s4, s2, sp
                  addi         a1, s4, 1115
                  sll          s0, a1, s2
                  sltu         a2, a5, sp
                  sra          ra, zero, t3
                  sltiu        s10, t6, 1829
                  slt          a7, t3, tp
                  auipc        s5, 595159
                  add          s3, a2, t2
                  xor          t2, a3, s2
                  srai         t6, zero, 24
                  auipc        s11, 718015
                  srai         s0, a3, 14
                  slti         a2, a7, -158
                  slli         s1, a5, 9
                  addi         s10, s1, 1443
                  auipc        a0, 633192
                  lui          s7, 276815
                  srai         t3, a1, 17
                  sll          a0, t4, s1
                  sltu         s4, s9, a3
                  ori          a6, s1, 1009
                  and          s7, tp, a4
                  slt          s2, t5, gp
                  nop
                  or           s5, a1, gp
                  sltiu        s1, s1, 1824
                  sltu         s2, a4, s2
                  xori         s8, t6, 566
                  sltiu        t5, a0, -1437
                  slli         gp, t0, 20
                  slti         a5, a5, 1001
                  and          s1, t0, s7
                  srli         a5, t3, 11
                  sltiu        t2, a4, -403
                  add          s3, t5, s1
                  or           t3, a4, s9
                  srl          t2, a0, t6
                  srl          s2, s4, a3
                  add          s5, t0, s6
                  sltiu        s7, gp, -748
                  add          a0, a4, zero
                  sra          s4, t3, s10
                  and          t2, s6, s3
                  xor          a0, sp, s5
                  sltiu        a6, sp, 119
                  sltu         a3, zero, s0
                  lui          t6, 386146
                  slt          a7, s0, s3
                  andi         sp, ra, -1480
                  slli         a0, a5, 0
                  xor          a7, t4, t6
                  nop
                  auipc        s8, 405122
                  auipc        s5, 45293
                  slt          t6, s5, t6
                  srli         a0, s2, 20
                  srli         a0, t5, 23
                  add          a3, a0, tp
                  addi         s10, s5, 7
                  andi         t1, s4, -529
                  slti         a2, t4, -1586
                  nop
                  andi         t3, a1, -1378
                  srai         a1, s10, 21
                  ori          s8, t0, 1710
                  lui          t1, 332477
                  lui          s6, 525563
                  srai         a2, t6, 23
                  and          s8, s8, s9
                  andi         t3, t1, 1848
                  sltu         zero, s4, a6
                  ori          s11, ra, 1977
                  ori          t6, s8, -832
                  slti         a3, s7, 273
                  add          s11, s1, gp
                  srai         s2, tp, 28
                  add          t0, s2, s10
                  sltu         a1, s8, s8
                  addi         t0, t6, -838
                  sltiu        a7, t3, -1129
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s10, 0x0
                  li           t1, 0xffffffff
                  li           t6, 0xffffffff
                  li           t3, 0x80000000
                  li           s7, 0x8fc803f6
                  li           tp, 0x0
                  li           s6, 0x80000000
                  li           s4, 0xffffffff
                  li           s8, 0xffffffff
                  lui          tp, 773517
                  add          t6, s10, s8
                  nop
                  sub          s1, s1, t3
                  add          s4, s6, s8
                  nop
                  addi         t3, s1, 1111
                  auipc        tp, 843048
                  sub          s4, s1, s1
                  auipc        t3, 253767
                  add          s7, t3, s10
                  nop
                  add          t6, t6, tp
                  sub          s7, t6, s6
                  add          s1, s10, tp
                  nop
                  nop
                  auipc        t6, 907532
                  auipc        s4, 429080
                  auipc        tp, 58787
                  add          s7, s7, s7
                  auipc        s10, 681524
                  nop #end riscv_int_numeric_corner_stream_7
                  slt          t3, s9, s5
                  xori         gp, s3, -224
                  add          s5, a6, s1
                  xor          t2, s10, sp
                  ori          a6, a7, -1751
                  slt          a6, a3, tp
                  or           a5, zero, t2
                  sub          a6, ra, t0
                  add          a5, a2, s1
                  srl          a5, a1, a7
                  sll          a3, a5, sp
                  sltu         tp, s10, s4
                  slti         s8, a4, 1391
                  ori          ra, sp, 1252
                  slti         t6, a4, 278
                  xori         t5, a0, 820
                  slli         gp, t1, 30
                  srli         s8, a3, 2
                  add          s2, a0, s7
                  andi         a7, t2, 277
                  ori          s7, a6, 700
                  addi         t1, tp, -1748
                  andi         a3, a2, -634
                  xor          s8, t0, t2
                  srli         s3, s9, 11
                  nop
                  nop
                  slt          t3, tp, t2
                  sub          s6, s8, a7
                  andi         t1, s11, 255
                  or           s10, s7, t3
                  or           s3, s6, t4
                  lui          a2, 595419
                  addi         s4, s7, 1459
                  slt          a5, zero, t0
                  xor          s8, a4, s1
                  auipc        a1, 941842
                  or           a6, t2, gp
                  add          a1, s3, zero
                  slti         a2, s1, -1441
                  srli         s8, s11, 6
                  srai         a5, s1, 19
                  xori         s1, a7, 374
                  sll          s11, s9, a1
                  slt          s4, s2, t1
                  lui          t2, 17373
                  sll          ra, s2, a4
                  sltiu        s6, t6, -1215
                  srai         s3, s10, 7
                  add          tp, s3, a0
                  sub          tp, a0, a6
                  and          gp, s7, s3
                  xor          a7, t4, a1
                  lui          s11, 162606
                  sub          s10, a7, zero
                  andi         a5, t3, -643
                  slti         t2, gp, 777
                  and          s6, s8, s11
                  and          s11, a5, s3
                  nop
                  andi         s1, t3, 710
                  slti         s10, s7, -7
                  sll          t3, s4, s3
                  slti         s2, s3, 215
                  andi         s3, ra, -603
                  andi         s10, s2, -363
                  xori         s8, a6, -231
                  ori          s6, gp, -1066
                  srai         a7, t4, 18
                  and          s2, t3, s0
                  srl          t0, t4, t4
                  nop
                  addi         s8, gp, -22
                  slt          s5, gp, s0
                  auipc        t3, 1026676
                  nop
                  or           s5, s1, t5
                  xor          a2, a0, a4
                  slti         t2, a1, 1898
                  sub          t1, s11, s4
                  nop
                  slt          a1, t0, s5
                  srli         s0, t6, 15
                  slli         t5, s10, 15
                  sltu         s1, s9, ra
                  slti         t3, t0, -639
                  auipc        t0, 213654
                  sll          s11, t6, a5
                  srl          t5, t1, s4
                  lui          ra, 672796
                  addi         t1, t2, -113
                  xori         gp, a1, 1478
                  sltiu        t1, t5, 1580
                  xori         t6, s10, -1785
                  sltiu        t2, s1, 890
                  sra          a1, s5, a4
                  xor          ra, a4, gp
                  sltiu        t5, s1, -1363
                  nop
                  or           s0, s10, a2
                  andi         s10, tp, -574
                  andi         t2, a3, 1115
                  lui          ra, 873456
                  srli         a0, a5, 9
                  srli         ra, s6, 8
                  auipc        t5, 635522
                  sub          s6, tp, s2
                  slti         a1, s10, 849
                  srl          t0, tp, s11
                  sra          zero, ra, s7
                  xor          s1, s4, t0
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0x943e2ced
                  li           s10, 0xffffffff
                  li           t5, 0x80000000
                  li           a7, 0x0
                  li           ra, 0xffffffff
                  li           t6, 0x80000000
                  li           s2, 0x80000000
                  li           sp, 0x310f4260
                  li           s11, 0x12fcab0a
                  add          ra, a0, sp
                  sub          a0, a7, a0
                  nop
                  nop
                  auipc        a0, 93052
                  addi         a0, ra, -2041
                  nop
                  nop
                  add          s2, a7, s11
                  nop
                  nop
                  nop
                  addi         s11, t3, 53
                  lui          ra, 92626
                  addi         sp, t6, 1152
                  sub          s11, s2, s2
                  lui          sp, 1045763
                  add          ra, a0, a0
                  auipc        s2, 542124
                  auipc        a0, 146921
                  addi         t5, s11, 979
                  addi         sp, s11, -1321
                  lui          s10, 784809
                  addi         t5, ra, 632
                  lui          a0, 688864
                  lui          t6, 870498
                  auipc        t6, 82623
                  addi         t3, a7, 1587
                  addi         t6, t5, -758
                  sub          t6, t6, t5 #end riscv_int_numeric_corner_stream_3
                  ori          t3, a3, 823
                  add          s10, s4, a5
                  ori          a1, s1, 130
                  nop
                  slti         gp, s10, 215
                  addi         a0, t3, -94
                  lui          s10, 950817
                  auipc        s11, 987364
                  srl          a7, a6, sp
                  and          a2, s3, gp
                  lui          t5, 335821
                  xor          a3, s5, s4
                  sub          sp, t0, a1
                  and          t5, gp, s3
                  sltu         sp, t0, s9
                  sltiu        a7, t4, 227
                  sltiu        a1, ra, -14
                  sltiu        a3, s6, -319
                  slli         s4, s7, 1
                  slt          s3, t1, t2
                  addi         s4, a0, -1160
                  or           s0, a4, s9
                  andi         s3, s11, -921
                  srai         t0, sp, 8
                  sub          t5, t5, s11
                  slli         t6, s5, 25
                  srli         a0, t2, 12
                  lui          s4, 610763
                  sub          s10, a7, a6
                  slti         a7, gp, 463
                  addi         s6, a1, 1397
                  auipc        t5, 496156
                  addi         s4, s6, -1291
                  slt          s6, s3, a7
                  slti         a2, s5, 1626
                  srl          s4, t2, a1
                  and          t3, t1, s1
                  sltiu        s11, a0, 103
                  nop
                  xor          a1, s8, s11
                  srl          s3, a4, a5
                  sra          a1, s1, s10
                  lui          t1, 26586
                  nop
                  srli         zero, t2, 27
                  lui          s10, 604637
                  sub          t6, a0, ra
                  xor          a1, a2, s1
                  sub          s2, a1, t2
                  sra          t0, s10, t1
                  nop
                  xor          s2, gp, tp
                  or           s3, a2, s9
                  sltu         s5, t4, s2
                  xor          s5, s10, s9
                  srl          a5, s7, a3
                  sltiu        t3, s11, 753
                  auipc        a3, 260788
                  xori         t3, s6, 1050
                  nop
                  lui          s5, 239196
                  andi         s10, s11, -1632
                  slti         s2, s10, -1327
                  or           s4, t0, s7
                  andi         s10, tp, 1177
                  or           s10, s4, a6
                  sub          t5, a5, s0
                  sll          s6, s11, s10
                  sub          t6, gp, t6
                  addi         s8, gp, -107
                  slli         t1, s7, 12
                  or           tp, sp, t5
                  xor          s11, gp, s10
                  ori          a6, s8, -616
                  add          t0, a2, zero
                  srli         s5, a7, 5
                  or           ra, s7, s2
                  sltiu        s1, gp, -1815
                  xori         a5, t6, 1606
                  nop
                  nop
                  andi         t6, s1, -89
                  srai         sp, tp, 23
                  andi         s10, a3, 1369
                  auipc        ra, 283636
                  srli         sp, a5, 22
                  add          t1, s6, s6
                  sll          ra, s9, a3
                  sltiu        a7, sp, -1972
                  addi         s4, sp, -1040
                  addi         s11, s4, -1285
                  sra          t0, a6, ra
                  slti         s6, s6, 1868
                  srai         a3, s9, 12
                  add          t5, a6, s2
                  xor          gp, t1, s9
                  srli         tp, s3, 21
                  auipc        a7, 493989
                  slti         s6, a7, -1146
                  addi         s4, a3, 1744
                  nop
                  and          tp, a5, a4
                  slli         a2, gp, 7
                  slt          a5, s1, a1
                  ori          s6, t1, -254
                  srai         ra, s3, 23
                  sltu         s11, s3, s3
                  or           s10, s6, t1
                  nop
                  nop
                  sltiu        t3, t0, 1766
                  srli         a7, tp, 26
                  auipc        s4, 129646
                  and          s7, s8, t5
                  srai         s11, s7, 11
                  nop
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           s1, 0x80000000
                  li           sp, 0x1d17e278
                  li           s10, 0x0
                  li           s3, 0xffffffff
                  li           s2, 0x8ed79d06
                  li           tp, 0x0
                  li           t1, 0x0
                  li           a1, 0xaaf173ae
                  li           t5, 0xf3f4db8a
                  sub          tp, tp, s10
                  nop
                  nop
                  nop
                  addi         s10, s10, -728
                  auipc        s4, 998521
                  lui          a1, 462771
                  add          s4, s2, sp
                  sub          tp, s1, tp
                  add          sp, s4, sp
                  addi         a1, a1, 1497
                  nop
                  lui          t5, 267484
                  addi         t5, s1, 1861
                  add          a1, t5, s1
                  nop
                  nop
                  auipc        s1, 214749
                  sub          s1, s1, sp
                  nop
                  addi         s3, s1, -575
                  lui          a1, 1014009
                  lui          tp, 1020662
                  lui          a1, 289927
                  addi         s4, tp, 1347
                  sub          s2, s3, s10
                  add          s4, sp, s4
                  lui          a1, 798206
                  auipc        s4, 866192
                  add          tp, s4, s10 #end riscv_int_numeric_corner_stream_34
                  sub          t0, s1, t3
                  andi         t2, a7, 1968
                  sll          a1, s10, s1
                  xor          a3, t6, zero
                  lui          t3, 328345
                  and          t6, ra, s11
                  sltiu        a7, s0, 1106
                  slt          a2, a3, t3
                  sltu         s4, s8, a3
                  sll          s4, t5, t3
                  srl          t5, s6, a4
                  nop
                  slli         a6, t2, 17
                  slt          s6, tp, a4
                  xori         t6, gp, -1094
                  and          s11, s1, t2
                  ori          a5, s0, 1562
                  slli         gp, s5, 14
                  add          ra, a6, s4
                  xor          a1, s3, s9
                  srl          t5, a1, s8
                  srl          s10, gp, gp
                  sltu         t3, t5, s6
                  sub          zero, a5, t0
                  slt          s10, s8, s4
                  xor          s1, s4, ra
                  addi         a0, ra, -1649
                  xor          a5, t1, s10
                  slli         gp, t5, 18
                  sltu         t0, a5, a4
                  srai         s4, t6, 9
                  xor          t6, s11, t0
                  xor          s5, gp, t3
                  auipc        t2, 728859
                  slti         t2, t2, 265
                  or           s5, s10, t6
                  sll          s6, a3, t1
                  addi         ra, t5, -425
                  addi         a3, t2, -239
                  add          a1, t1, s2
                  auipc        s6, 332973
                  sra          s4, sp, a4
                  addi         t5, a7, -914
                  srai         s1, gp, 25
                  slti         s8, gp, -908
                  nop
                  slti         a7, tp, -1248
                  slli         t1, t6, 29
                  nop
                  slt          s1, s3, s2
                  and          s4, s2, a3
                  or           s5, zero, s2
                  sltu         s10, zero, a5
                  ori          a5, tp, 662
                  nop
                  xori         s6, a3, -1334
                  sltu         t6, a2, a3
                  lui          sp, 932676
                  srli         a2, t3, 4
                  sub          a2, t0, s1
                  add          s5, a3, a7
                  sra          s3, s10, s2
                  srl          t3, a3, s8
                  xor          t3, a3, s7
                  sub          t5, s11, s4
                  or           zero, zero, zero
                  sll          t5, t3, t2
                  srai         t3, a3, 7
                  sltu         a5, s3, a6
                  srl          ra, t5, s11
                  sll          t3, zero, ra
                  and          tp, s8, a2
                  sltu         s6, s1, a3
                  lui          t2, 651106
                  auipc        a2, 561146
                  slli         s3, a5, 15
                  nop
                  or           s11, s7, a1
                  srai         a5, s6, 4
                  andi         t6, s8, -1870
                  slli         s11, s8, 0
                  auipc        a2, 729690
                  auipc        tp, 119011
                  slti         s10, a4, 1162
                  xor          t2, s0, s5
                  lui          t5, 541711
                  nop
                  sub          zero, s8, t6
                  lui          t1, 453182
                  or           s10, s9, a1
                  srai         s0, a6, 1
                  sltiu        t5, gp, 290
                  auipc        s0, 953636
                  addi         t5, a3, -1684
                  sltiu        t0, a0, -2013
                  xor          a7, tp, t5
                  addi         s0, s7, -1381
                  nop
                  addi         zero, a1, 1107
                  sltu         a2, s7, s1
                  auipc        a3, 516831
                  ori          t1, s5, -112
                  auipc        ra, 90262
                  andi         a1, s2, 780
                  sub          t3, a2, t1
                  or           a5, s7, t5
                  xori         sp, t6, -302
                  addi         s5, s0, -320
                  slt          a2, a2, gp
                  srli         zero, s11, 0
                  addi         s5, zero, 1730
                  sll          a2, s2, a7
                  slt          a0, gp, a1
                  sll          s6, t2, a2
                  sltu         s6, a6, s10
                  slti         s2, gp, -267
                  sub          t1, s3, tp
                  auipc        a7, 329947
                  sltiu        sp, t1, 872
                  lui          s2, 834631
                  srli         gp, s10, 11
                  sltu         a1, a0, t4
                  sltu         a3, s1, s9
                  srl          s10, t0, s0
                  sll          s3, s1, ra
                  sltu         sp, s11, t2
                  srli         s3, s8, 26
                  slti         ra, a6, -1723
                  sltu         t5, t6, a3
                  sll          s5, a3, a7
                  nop
                  addi         s5, sp, 516
                  auipc        s8, 65080
                  srli         a6, s3, 30
                  slli         a2, s10, 19
                  and          s4, t2, t5
                  srai         a6, sp, 15
                  add          a0, s1, a3
                  slti         t2, s2, 1
                  slt          sp, t3, t2
                  xor          a6, t4, a2
                  xori         s7, a3, -1922
                  srli         s1, s5, 8
                  or           s8, s4, a4
                  sll          t0, tp, s6
                  sll          sp, a1, s10
                  sra          t1, s6, t6
                  andi         gp, a6, 1543
                  or           t6, t6, s2
                  sra          s0, s8, t5
                  addi         s5, t3, 1196
                  sra          s0, a6, t5
                  sltu         ra, s0, a7
                  lui          s0, 129221
                  srai         t3, s9, 21
                  srl          t2, s4, a5
                  srl          a7, s4, a4
                  lui          s3, 908468
                  srai         s6, s9, 17
                  srli         a2, s3, 19
                  sltu         s4, t6, a2
                  lui          t3, 837105
                  srl          a0, s4, a1
                  or           a7, s9, tp
                  sra          t1, t6, s7
                  auipc        a1, 853787
                  sra          a1, s2, a0
                  xori         a0, t5, 173
                  xori         a6, s10, 493
                  or           a5, t3, t1
                  slli         a0, a1, 30
                  srai         s5, s0, 22
                  lui          s7, 675213
                  sra          s6, s4, zero
                  sltiu        tp, a1, 248
                  ori          s4, t4, 611
                  ori          s2, a1, 1648
                  srl          sp, t0, s1
                  add          s8, a1, ra
                  add          t0, s1, s5
                  sll          t5, s9, s11
                  xori         s8, s10, -356
                  and          ra, s1, zero
                  slli         s0, a5, 15
                  sra          t0, a6, s0
                  andi         t1, s7, -1926
                  auipc        sp, 221545
                  auipc        a1, 85759
                  xori         zero, s4, 1968
                  lui          a6, 344690
                  and          gp, a5, t6
                  srl          s8, a2, a6
                  srli         a5, s3, 1
                  nop
                  slti         ra, s6, -619
                  auipc        gp, 210769
                  andi         a2, t2, -1874
                  nop
                  slt          s10, s9, a7
                  sub          a5, s6, tp
                  srai         t1, s9, 24
                  xori         tp, a0, 345
                  srl          t5, s3, t0
                  and          s10, s5, t4
                  sltiu        s2, gp, 704
                  andi         s0, s3, -1236
                  sll          sp, a4, a5
                  and          s4, a5, t2
                  srl          t3, s3, t5
                  slli         t5, t3, 8
                  add          t6, t2, t5
                  lui          s6, 689354
                  or           zero, t5, s5
                  srl          a7, t6, s2
                  andi         s8, a2, 1405
                  andi         s7, s5, -737
                  xor          sp, s7, s9
                  addi         s5, a1, -554
                  sub          a1, t2, s7
                  ori          s3, t6, -1062
                  srai         s11, gp, 26
                  and          s7, a5, a5
                  sra          t0, tp, a2
                  slt          t2, a6, a3
                  sltu         s6, a7, a7
                  sra          a6, s11, s4
                  auipc        a2, 660865
                  xor          t2, tp, t3
                  sub          s11, t5, t4
                  or           t1, t0, gp
                  sltiu        t0, ra, -100
                  nop
                  nop
                  sra          t2, t3, s6
                  ori          s3, a3, -1732
                  andi         s7, t4, 1863
                  nop
                  srl          t5, t4, sp
                  add          t2, gp, zero
                  srli         a6, a6, 17
                  srli         a5, t4, 8
                  add          s11, a7, tp
                  slti         s2, a7, -174
                  ori          t2, s10, -166
                  and          t2, a5, a7
                  sra          s11, t3, a1
                  ori          t6, s9, 230
                  nop
                  andi         s5, t0, 89
                  auipc        s5, 462585
                  andi         ra, s8, -587
                  andi         ra, zero, 384
                  nop
                  sra          t5, s9, a4
                  srai         s10, s9, 4
                  and          tp, a0, zero
                  nop
                  srai         tp, s7, 5
                  add          tp, t2, tp
                  add          a2, a4, gp
                  sltiu        s3, a1, -1265
                  xori         s1, a3, -1363
                  slt          s10, a3, ra
                  slli         s4, t6, 14
                  sra          s10, s8, a0
                  ori          a3, s8, -1003
                  ori          s2, a6, -1839
                  and          t6, s0, a4
                  srli         gp, t6, 9
                  slt          t2, s1, a0
                  slti         a7, s9, 699
                  srl          t0, s9, s4
                  srl          s6, s1, t6
                  srl          t2, a4, s10
                  sltiu        zero, tp, 1227
                  and          s0, s0, gp
                  sltiu        a5, s11, 1338
                  srai         a0, a3, 17
                  sll          s1, t0, a1
                  add          gp, a5, a4
                  srli         s2, s1, 30
                  and          s5, a4, a5
                  srai         sp, s9, 7
                  or           s6, s2, s1
                  lui          a3, 68259
                  slti         s10, a5, -688
                  add          s4, t1, sp
                  sll          t3, a1, ra
                  sub          t5, t0, s8
                  ori          t0, s5, -826
                  add          a0, s11, t1
                  srl          s2, tp, s0
                  auipc        s11, 242117
                  andi         s3, s3, 1404
                  or           a0, t6, s11
                  andi         t1, t3, -1418
                  sll          a7, s0, a4
                  sltu         a3, t2, a4
                  and          sp, a5, s3
                  srai         s1, s4, 9
                  srai         ra, a0, 16
                  xor          t5, s9, a7
                  sltiu        a6, t2, -996
                  or           s3, a1, zero
                  or           s1, t3, t5
                  srli         t1, a5, 9
                  xori         tp, s1, 924
                  lui          a6, 458138
                  sltiu        a5, a3, -1128
                  sra          t5, s11, a7
                  ori          t6, t4, -902
                  addi         a3, t2, -1700
                  auipc        t3, 118175
                  xori         a1, a3, -1891
                  sra          s2, s4, t2
                  xor          a6, t5, gp
                  andi         t5, s11, 2000
                  nop
                  ori          s8, gp, -554
                  addi         s8, s0, -1530
                  slti         t6, a4, 806
                  sll          s11, s11, t5
                  addi         s11, gp, -82
                  slt          s3, s1, t6
                  xor          s1, s3, a7
                  sltu         ra, a6, ra
                  sltu         t2, sp, a1
                  add          a3, t6, a5
                  or           s3, s5, a7
                  srai         s0, gp, 8
                  sltu         t6, t5, t6
                  sltu         s1, zero, s8
                  srli         s4, ra, 1
                  srai         a0, s5, 31
                  add          s8, a6, s6
                  srl          s2, a6, a2
                  slti         t5, a7, -1805
                  and          t5, t6, zero
                  sub          s4, s1, s3
                  or           s4, s0, s10
                  slli         t3, gp, 5
                  ori          t3, a2, 1929
                  add          s3, ra, s9
                  sltu         a3, s9, a6
                  add          s8, tp, zero
                  sltu         s5, s0, tp
                  ori          a3, a5, 1749
                  srli         gp, s2, 27
                  or           s0, a1, t5
                  sltu         t2, s1, a4
                  xori         s3, s10, 1980
                  nop
                  add          a2, t3, t0
                  lui          s2, 143650
                  sltu         s10, s4, a3
                  add          a2, s4, s0
                  slt          a0, s1, a4
                  andi         s8, s8, -1942
                  srai         t1, t4, 5
                  slti         a5, t0, 1840
                  sltu         a3, t1, t6
                  auipc        t5, 798781
                  sltu         a2, a2, t6
                  addi         a6, s8, -1252
                  sll          s8, a2, a5
                  auipc        s6, 12928
                  and          t1, s7, t1
                  slti         s11, s1, -692
                  andi         tp, s0, -1759
                  srli         s4, t3, 30
                  slti         a2, zero, 1958
                  slt          s10, s2, s2
                  or           s8, a6, a7
                  srai         a3, t1, 26
                  or           s1, s7, tp
                  slt          a2, ra, t6
                  sltiu        gp, t4, 1684
                  and          a5, s4, s7
                  slli         t1, t1, 19
                  and          a6, s7, gp
                  addi         t5, t5, 987
                  andi         s7, s2, -722
                  nop
                  nop
                  lui          t6, 680547
                  sub          s11, a1, gp
                  xori         a6, s10, 1907
                  slti         t1, t0, -956
                  nop
                  sll          s4, s4, t2
                  andi         s5, t0, 885
                  nop
                  addi         a1, gp, 1728
                  addi         zero, s8, 1911
                  slt          a1, t6, t3
                  sltu         a0, t4, s4
                  add          t2, s9, a5
                  xori         a1, s2, 54
                  and          zero, s3, a7
                  and          a6, t4, s10
                  nop
                  xori         a3, s5, -1628
                  ori          s2, a0, -1089
                  xor          zero, a5, a2
                  and          s6, t2, s0
                  srai         tp, s5, 3
                  and          t2, tp, s3
                  sub          zero, s3, t6
                  and          a7, s8, t4
                  lui          s4, 875615
                  auipc        s2, 368617
                  andi         s5, s6, 1278
                  srl          s3, tp, t0
                  andi         gp, a7, -526
                  lui          s11, 961450
                  lui          a7, 740096
                  sub          s1, a5, s5
                  srai         tp, a7, 26
                  srl          a0, a2, s3
                  lui          t5, 193304
                  srli         t5, s4, 0
                  srai         ra, s1, 25
                  slt          t2, s3, s9
                  andi         t1, sp, -516
                  sll          sp, zero, s8
                  xori         s1, a2, 1501
                  sll          s7, tp, s11
                  slli         s4, t1, 22
                  andi         t6, s7, 1076
                  add          s8, t0, sp
                  xori         a0, s2, -590
                  sll          s6, a5, s1
                  xor          a6, s1, s2
                  srli         s3, a0, 14
                  sub          a5, t6, t5
                  slt          s0, gp, a2
                  auipc        s11, 973279
                  srli         tp, a3, 27
                  andi         zero, s2, -1822
                  srl          gp, a1, a2
                  and          a5, a6, s6
                  sll          s6, s2, s4
                  or           s3, a3, a4
                  slt          s1, t0, s6
                  xor          ra, t6, t3
                  sltiu        zero, ra, -1034
                  sltu         a3, s1, a1
                  sub          t6, gp, ra
                  sltu         s1, gp, a2
                  andi         t3, ra, 1757
                  xori         s4, a6, 1203
                  sltu         ra, a0, tp
                  ori          zero, s10, 1269
                  addi         ra, s1, 53
                  auipc        a7, 41625
                  or           s4, a5, s10
                  sltiu        s2, s7, 157
                  xori         gp, a0, 1549
                  slli         a6, t2, 20
                  auipc        s4, 365951
                  sub          s6, t0, t1
                  nop
                  or           s2, s11, tp
                  xor          gp, s4, s4
                  xori         gp, a7, -1126
                  srai         a5, s7, 10
                  andi         t3, s5, -1180
                  and          t1, a6, t3
                  andi         t1, tp, -1023
                  and          s11, s2, t2
                  auipc        t6, 492366
                  slt          a0, tp, s9
                  slli         gp, s5, 12
                  xor          s4, t2, a3
                  add          t5, a0, s8
                  nop
                  sll          t1, s7, a3
                  sltu         t5, s8, s3
                  srli         s8, ra, 9
                  xor          s10, t3, tp
                  sltu         s5, zero, a7
                  nop
                  srli         t6, s7, 25
                  auipc        a2, 740905
                  auipc        s0, 307989
                  srai         a5, gp, 29
                  slli         s7, s11, 24
                  xori         sp, s4, 1711
                  or           t1, t6, t2
                  ori          ra, s2, 1528
                  srai         s7, t5, 17
                  add          a0, t2, s9
                  lui          s10, 552451
                  slli         t1, sp, 6
                  lui          s4, 144704
                  sra          s1, s7, a2
                  sub          tp, a5, tp
                  add          a2, a1, t6
                  sll          s11, gp, tp
                  addi         s10, a2, 316
                  add          a6, sp, s2
                  srl          a0, t3, t6
                  slti         a3, t0, -2024
                  sltu         a2, t4, t0
                  srl          ra, a3, s6
                  xori         t3, s9, -1856
                  sltiu        a6, t5, -1674
                  slt          s4, t2, a3
                  xori         t2, s5, -1587
                  sra          a5, s1, s0
                  andi         a2, s2, 773
                  lui          a6, 553837
                  ori          s0, t2, 1808
                  srli         a2, s5, 15
                  xor          s5, s11, a3
                  and          s3, s6, s3
                  sltiu        s4, s10, -593
                  andi         s2, t6, -522
                  srl          s8, s0, t3
                  auipc        a5, 543476
                  xori         t1, tp, -127
                  add          s4, a6, a3
                  lui          a3, 113366
                  lui          a3, 918786
                  sra          t0, a6, gp
                  slt          s2, a4, s11
                  xor          s3, s11, s7
                  auipc        a0, 345279
                  sltiu        t6, a7, 10
                  xor          a5, ra, s6
                  ori          sp, a4, -1421
                  sltu         s7, sp, s2
                  andi         t0, t0, -1745
                  xori         gp, s7, 232
                  slt          s2, s2, a3
                  sltu         t5, t4, s1
                  ori          zero, a7, -1042
                  sltu         s4, ra, s1
                  or           s0, s3, s4
                  lui          s2, 523930
                  and          s3, tp, s8
                  slti         s0, t3, 384
                  srli         gp, t0, 9
                  ori          zero, a1, -903
                  sll          s6, s4, t2
                  or           s3, a7, zero
                  sra          t3, t4, a2
                  slli         t2, gp, 26
                  srli         a1, s9, 31
                  nop
                  sltiu        t2, s8, -1285
                  ori          t1, s1, -1000
                  nop
                  sra          s10, a1, s11
                  sub          t1, zero, a6
                  andi         t2, s2, -1484
                  addi         s3, s1, -104
                  slt          sp, a7, t6
                  and          s7, a1, t1
                  sub          a1, a2, s5
                  lui          t3, 639249
                  sub          a5, s8, ra
                  lui          s1, 31742
                  slli         ra, t2, 15
                  xori         a7, a3, -493
                  lui          s11, 23890
                  add          s10, t1, a0
                  sltiu        a5, a3, -1933
                  srai         a5, a5, 22
                  ori          a2, tp, -338
                  or           s6, s2, s3
                  auipc        s1, 173980
                  nop
                  sub          t1, a4, t4
                  sll          t6, s6, a5
                  or           a3, t0, gp
                  and          a5, s2, s2
                  slti         t1, sp, -143
                  srli         t5, s8, 16
                  ori          s8, t6, 963
                  srli         gp, a3, 20
                  ori          t5, s4, -1485
                  srai         a2, s6, 20
                  auipc        a3, 8443
                  nop
                  ori          s11, a3, 67
                  and          s8, s11, s6
                  slti         s10, s5, 975
                  nop
                  nop
                  slt          gp, gp, s5
                  sltu         t3, a4, s7
                  sra          tp, a1, t5
                  addi         a7, tp, -1307
                  srl          s3, t6, t6
                  slli         s8, sp, 6
                  or           a5, t0, ra
                  srli         zero, s2, 8
                  srli         s3, tp, 4
                  slli         t6, s4, 12
                  sltu         s5, s1, tp
                  andi         s3, t3, 1043
                  sltiu        s4, a1, -1577
                  add          t1, s1, t1
                  sll          s2, t3, s3
                  and          t6, gp, gp
                  srl          t3, a7, s5
                  xor          t0, t1, s6
                  sltiu        t3, gp, -1659
                  and          gp, s10, a1
                  srl          t5, a0, a0
                  add          a1, s6, s11
                  auipc        s6, 971305
                  slt          t6, t5, zero
                  and          s6, a0, t4
                  xor          s5, s0, s1
                  slt          s4, t2, s7
                  slti         s6, ra, 1362
                  nop
                  andi         tp, tp, 701
                  srl          s6, t3, t2
                  or           a0, s3, s11
                  xor          s5, s11, gp
                  sltu         t6, s9, s2
                  lui          tp, 387574
                  slli         s8, tp, 5
                  slli         s10, a7, 18
                  nop
                  slli         sp, s2, 28
                  slti         s3, s3, 1012
                  add          t2, ra, s11
                  sll          a5, s1, a3
                  srai         t2, t5, 22
                  or           s6, s8, s5
                  lui          ra, 333888
                  sub          gp, s7, s6
                  sltu         a7, t0, t6
                  srli         s7, s6, 18
                  and          a3, s0, a4
                  auipc        t1, 626704
                  or           s11, s1, a5
                  sltiu        s6, s5, -1612
                  sub          a5, a1, t5
                  add          s5, a6, s1
                  ori          t3, s0, 1261
                  or           s0, gp, zero
                  xor          a6, t2, s3
                  add          s11, t5, s8
                  xor          t5, ra, s9
                  add          a5, sp, s0
                  srai         s1, a6, 25
                  ori          a3, a2, -1670
                  slti         a3, a4, 1772
                  andi         s10, s2, 816
                  addi         s8, a5, 291
                  nop
                  srli         t3, s1, 12
                  sltu         s11, s11, t6
                  slli         t3, t5, 0
                  lui          a3, 843649
                  nop
                  or           s1, s7, a6
                  srli         t5, sp, 9
                  lui          s1, 788477
                  srli         t0, s10, 23
                  slli         a3, a7, 28
                  sra          s10, a7, s8
                  slli         s11, s8, 17
                  sltu         t6, s9, s2
                  auipc        a5, 828395
                  srli         tp, t3, 5
                  addi         a3, s10, 1834
                  slti         s0, s3, -343
                  add          zero, ra, a7
                  srl          s4, a3, s11
                  nop
                  sltu         s10, t2, ra
                  andi         a6, a5, 1204
                  andi         a2, a5, -1675
                  sub          a3, t2, s11
                  lui          s10, 504186
                  ori          s10, s3, -125
                  sra          a3, s6, t4
                  slt          s6, t4, s5
                  andi         a0, t4, 942
                  and          a2, s10, ra
                  addi         s7, s6, -57
                  nop
                  sra          s3, a6, a1
                  or           a6, s0, a6
                  sra          a6, s4, s7
                  sll          sp, t4, t0
                  or           a7, sp, s4
                  sll          s4, a6, s3
                  sub          t5, t0, t0
                  slt          s11, ra, s11
                  or           a5, s2, s4
                  srai         a0, zero, 30
                  sra          t2, s8, a1
                  lui          t6, 994030
                  slli         s2, t2, 5
                  lui          t5, 466666
                  xori         t1, t6, -1366
                  addi         s11, a2, 1343
                  nop
                  xor          a7, s0, a3
                  nop
                  slt          s5, t1, zero
                  or           s3, t3, s10
                  auipc        sp, 462938
                  addi         s1, s5, 1129
                  sll          s0, t1, a6
                  xor          s3, s7, a2
                  slt          ra, s8, s2
                  or           t3, a4, a2
                  srl          gp, s5, s6
                  xori         s2, s2, 776
                  xori         a2, ra, -342
                  and          s8, s2, a4
                  or           t6, s1, s11
                  xori         s2, a4, -287
                  sltu         s3, t6, s2
                  auipc        gp, 797139
                  slli         t6, s2, 29
                  add          a0, s2, s3
                  xor          s5, s0, t5
                  srli         s7, s5, 16
                  or           gp, tp, a3
                  or           s2, t4, t1
                  srli         a3, s4, 2
                  slt          zero, sp, s6
                  srli         t5, a7, 24
                  xor          tp, a3, a3
                  nop
                  sll          a3, s10, s0
                  and          a7, s11, t4
                  addi         s8, s7, -2023
                  srli         s5, s2, 1
                  sll          t3, zero, s8
                  sltiu        s11, gp, 1320
                  xori         t3, t5, 267
                  slti         a0, t3, -1425
                  addi         s8, s5, 878
                  sra          t3, s4, tp
                  xori         s10, s8, 251
                  xori         zero, gp, 1634
                  xori         s10, t2, 1520
                  sltiu        t3, a3, -222
                  auipc        t2, 10207
                  srai         s4, s5, 26
                  slt          a1, s2, t5
                  or           zero, s8, s4
                  and          s4, a6, t0
                  sll          t5, a7, a0
                  ori          t3, s9, 287
                  sltu         s1, s5, s10
                  ori          a2, gp, 42
                  sra          s3, s4, s9
                  srai         s5, t2, 28
                  slt          t3, t0, s0
                  sll          s11, sp, sp
                  xori         zero, s9, -2011
                  srai         a2, t4, 1
                  xor          t1, s0, tp
                  sub          s11, a0, a7
                  sll          a3, a7, s5
                  lui          s6, 65679
                  sltiu        a3, a1, -221
                  slt          t2, s7, a1
                  and          s3, sp, a6
                  xori         sp, s0, 2045
                  or           sp, s3, a2
                  addi         gp, a1, -565
                  auipc        a5, 834881
                  srl          s11, s9, zero
                  and          s2, s5, t2
                  sltiu        a0, s10, -1404
                  slli         a0, gp, 4
                  slti         a2, s10, 704
                  slti         t2, s8, -228
                  andi         a5, a1, -921
                  srl          s5, s10, t6
                  andi         a2, s4, 1075
                  srli         t6, s10, 0
                  or           t1, s9, s2
                  and          s0, tp, t2
                  srai         s8, s10, 29
                  sll          s3, gp, a4
                  xori         t5, t2, -1048
                  slt          a0, s0, gp
                  slti         s10, s0, -627
                  sltu         sp, s5, s5
                  ori          s0, a3, -1701
                  ori          s5, a6, -842
                  and          a0, a1, zero
                  srl          t0, s7, a0
                  ori          s0, s1, 396
                  sra          a5, s11, s6
                  ori          s10, a0, -1469
                  slti         s1, a1, 1552
                  or           sp, s6, s2
                  srli         s1, a6, 29
                  and          a5, a7, sp
                  slt          t5, s9, t6
                  addi         s3, s11, -1426
                  lui          t6, 543006
                  auipc        tp, 362196
                  srl          a6, s3, s8
                  sub          s1, t1, a5
                  addi         s4, t1, 497
                  slt          s2, t4, a1
                  ori          s10, t4, -1224
                  and          s5, a4, a7
                  nop
                  sll          a3, s6, t6
                  sltu         a2, t2, s5
                  lui          t5, 700167
                  auipc        t6, 490440
                  nop
                  slti         s7, a1, -944
                  slli         a1, a2, 22
                  sltu         gp, gp, s10
                  add          t3, s7, ra
                  and          a0, zero, sp
                  lui          s2, 703154
                  or           s2, a7, gp
                  sll          a7, s1, s2
                  sll          s3, s8, s9
                  slli         sp, t2, 20
                  add          t3, a0, a1
                  sub          t6, a2, a1
                  andi         s1, s2, 40
                  add          s2, a2, t1
                  sll          a2, a6, s6
                  andi         t5, gp, 809
                  srli         s6, a1, 18
                  srl          s11, s6, s7
                  add          gp, ra, s3
                  sll          sp, a4, t1
                  sra          s11, s4, t0
                  add          t5, zero, s9
                  srl          s5, a6, a6
                  auipc        ra, 944657
                  addi         tp, s9, 1339
                  sltu         s7, s9, t5
                  lui          s8, 988116
                  sll          s0, s6, t0
                  or           s2, t5, s11
                  auipc        s5, 28723
                  addi         a1, zero, 1852
                  sll          s7, a2, a3
                  add          s6, s10, t6
                  sltiu        t6, a3, -1984
                  slli         a3, t2, 11
                  sltu         s6, ra, s10
                  nop
                  sltu         s8, t6, tp
                  srli         s11, t6, 29
                  sub          t6, a4, s4
                  and          t6, sp, t4
                  ori          t6, t2, -1934
                  sll          s4, t5, s0
                  addi         s0, t5, 1818
                  srl          s1, s6, s11
                  or           a3, s0, s7
                  lui          a5, 663060
                  ori          s7, sp, 1251
                  and          s5, a2, a4
                  ori          s10, s11, 885
                  andi         s4, a3, 1973
                  sltiu        s2, a1, -609
                  sll          s7, t3, s9
                  xori         s5, s8, -148
                  nop
                  xor          ra, s0, s8
                  sltu         s1, s1, tp
                  srai         t2, a5, 25
                  xori         a0, zero, -601
                  xor          sp, t5, a4
                  auipc        s5, 151217
                  slti         t2, t0, -669
                  lui          ra, 317343
                  srai         s3, a5, 4
                  auipc        zero, 921396
                  auipc        t1, 287479
                  and          a6, a6, t6
                  sub          t1, zero, a5
                  and          s8, a5, tp
                  slti         a0, s4, 51
                  srai         sp, a1, 4
                  auipc        s8, 512236
                  sltu         a6, s8, s8
                  slli         s4, t2, 25
                  xori         sp, t6, 1465
                  add          a6, a7, tp
                  sll          s5, t5, t0
                  addi         s1, t2, -445
                  xor          s1, s0, s5
                  xor          t3, s5, s11
                  slt          t0, tp, a4
                  or           a5, s1, a3
                  sll          s1, s9, a0
                  and          t5, s2, a0
                  auipc        s11, 454476
                  sll          s1, a1, t1
                  slti         s1, s1, -1637
                  slt          s2, a2, a0
                  xor          zero, s10, s1
                  slli         s11, a6, 11
                  srl          a0, a5, t3
                  auipc        s6, 73090
                  xor          a0, s7, t6
                  or           ra, t5, gp
                  xori         tp, t6, 646
                  slli         t1, s7, 3
                  sra          t0, a2, t2
                  slt          t1, sp, a2
                  addi         s6, s6, -1982
                  and          s10, s4, a7
                  sub          a7, a0, t4
                  slti         a0, s7, -1878
                  slti         s8, s7, 670
                  auipc        s10, 500656
                  srai         zero, a3, 23
                  xori         a2, gp, -1863
                  xori         s8, a4, -1971
                  srli         sp, t1, 20
                  srl          a0, t6, s4
                  sll          s7, t0, a1
                  xori         s3, t4, -458
                  or           s8, a0, a0
                  auipc        a1, 95047
                  slli         a2, s8, 11
                  sra          t5, t6, s4
                  slli         s8, a7, 3
                  or           zero, s4, t5
                  srli         s10, a1, 13
                  srl          s7, s5, t4
                  slt          ra, t2, a2
                  ori          s5, a4, 1460
                  sra          a5, s1, t4
                  andi         s8, ra, 1593
                  slt          s2, s9, s4
                  ori          t1, s5, 1086
                  srl          zero, t4, a6
                  andi         s5, zero, -1895
                  lui          s11, 691126
                  and          a2, a0, s10
                  nop
                  srli         a2, t4, 22
                  slti         a0, t6, 873
                  sltu         a1, a1, s4
                  sra          a3, a1, gp
                  or           a2, s10, ra
                  add          zero, a5, a1
                  sra          t0, zero, s5
                  nop
                  slti         s11, a7, 1433
                  sll          a0, a2, ra
                  or           ra, a3, s3
                  and          s2, s9, t2
                  srli         s0, a3, 6
                  srl          s6, tp, s2
                  srli         t3, tp, 25
                  sll          zero, s5, s3
                  andi         tp, s5, 821
                  xori         s8, zero, 530
                  xori         s7, a7, 54
                  andi         s8, s3, 727
                  slli         s6, a7, 27
                  slli         s1, s5, 17
                  sra          a3, s6, a7
                  srai         tp, t1, 7
                  sll          zero, t2, a3
                  sltiu        a1, ra, -1332
                  xor          t1, t4, a0
                  lui          gp, 595548
                  slt          t0, a0, s4
                  sltu         t6, s0, s0
                  and          gp, a3, t1
                  srl          a3, s1, a7
                  sra          t5, s2, ra
                  auipc        t2, 262079
                  slti         t6, a6, 1196
                  slli         tp, t5, 26
                  sltiu        gp, s0, 649
                  nop
                  slli         tp, a7, 24
                  slti         a7, tp, -1729
                  xor          t6, a0, a6
                  srli         tp, s9, 16
                  srli         t0, t5, 27
                  sra          a6, a1, tp
                  auipc        a5, 467454
                  srl          s5, tp, s2
                  srl          ra, t4, s2
                  sll          t1, t3, t2
                  srl          t1, s3, tp
                  add          s6, a6, s0
                  addi         s3, s3, -1862
                  sltu         a6, t4, t2
                  auipc        s6, 639437
                  add          t1, s6, s4
                  and          t1, t4, a5
                  slti         s5, a1, 57
                  or           s4, t2, s9
                  slt          t6, s10, a4
                  add          a3, t4, a0
                  srai         t5, s2, 24
                  slti         t6, a2, -1704
                  or           s1, s1, s10
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x7a54661c
                  li           sp, 0xffffffff
                  li           t0, 0x0
                  li           t1, 0x0
                  li           t2, 0x80000000
                  li           s1, 0xffffffff
                  li           t6, 0x31395524
                  li           s2, 0xffffffff
                  li           s6, 0x80000000
                  nop
                  add          s1, t0, s1
                  add          t6, s5, s5
                  nop
                  nop
                  nop
                  sub          s6, s2, s1
                  nop
                  auipc        t6, 684335
                  sub          sp, t6, t0
                  lui          t2, 864567
                  nop
                  addi         s6, t6, 2032
                  add          s1, sp, s6
                  add          s5, t0, a2
                  sub          s6, sp, t6
                  addi         t0, sp, -435 #end riscv_int_numeric_corner_stream_5
                  sra          t5, a4, a3
                  auipc        s2, 605159
                  or           a5, t6, a7
                  slli         zero, s11, 6
                  sll          a3, s0, s3
                  andi         zero, t0, -163
                  ori          t3, t2, -1954
                  sltiu        a0, zero, 180
                  xor          s8, a4, sp
                  addi         s11, s10, 1041
                  lui          s5, 352304
                  nop
                  addi         sp, a7, -1689
                  add          a3, t4, a4
                  xori         s7, s3, -825
                  xori         a3, s10, 1465
                  slli         s2, s1, 13
                  addi         t3, s11, 56
                  sltu         s7, t4, a0
                  xori         a6, s1, -1
                  srai         t1, s11, 17
                  addi         sp, gp, -76
                  ori          s2, s2, -1090
                  and          zero, tp, t1
                  sll          ra, t1, a5
                  auipc        s1, 452177
                  srai         s7, s5, 28
                  sra          s6, s9, ra
                  sll          s10, t5, s3
                  slti         a5, t1, 595
                  and          s11, zero, s6
                  sltu         s0, t3, a2
                  srai         s11, a6, 15
                  or           a2, s3, t1
                  sub          a6, s5, s9
                  sub          s8, s6, zero
                  lui          tp, 1046558
                  sll          a7, s11, s7
                  slt          a3, a1, s10
                  sltiu        t3, t0, -663
                  srl          t2, t5, tp
                  or           t3, s6, sp
                  add          s10, s2, t1
                  andi         gp, tp, 1904
                  xor          s3, t2, a1
                  lui          t0, 808371
                  sltiu        s5, s1, 1754
                  xor          s2, gp, t2
                  and          t0, t6, s7
                  addi         t0, s5, -760
                  lui          a1, 786227
                  xor          sp, t1, a4
                  sll          t0, t6, a5
                  srli         a0, s7, 25
                  xor          a3, a1, a6
                  or           a3, s11, ra
                  or           a6, s8, a2
                  addi         sp, a5, -482
                  xor          s10, a0, s4
                  nop
                  srai         s7, a3, 27
                  and          s4, t6, t1
                  srli         s0, a3, 29
                  and          s0, s5, t5
                  nop
                  auipc        s7, 207325
                  andi         t5, s11, -1673
                  sra          s6, a5, a3
                  slt          sp, t5, s2
                  srli         s8, a0, 18
                  lui          a5, 206651
                  sltu         a3, s7, ra
                  slt          s2, zero, s5
                  lui          t2, 139737
                  andi         t6, s9, -1906
                  slli         a2, t4, 18
                  sltiu        s11, s7, 2005
                  slti         a5, s9, 1484
                  auipc        gp, 324717
                  slti         t2, s3, -1888
                  srli         s1, s10, 16
                  sll          s4, t6, s9
                  and          tp, s1, t4
                  andi         t6, a7, 616
                  srli         s5, s5, 12
                  sub          s3, a4, t6
                  srai         s4, a5, 7
                  srl          t0, s3, t2
                  nop
                  sub          a6, s9, a4
                  or           zero, s9, s6
                  xor          s10, a6, t4
                  auipc        s5, 945728
                  sll          sp, s1, s11
                  srai         t6, s4, 22
                  sltiu        a2, a2, 24
                  and          s10, s9, t1
                  nop
                  or           s4, zero, s11
                  and          s3, s11, t5
                  srl          a7, s7, a3
                  sub          s0, zero, gp
                  xori         t5, a2, 1482
                  sltu         a5, s7, a2
                  srli         t3, s8, 6
                  sra          zero, tp, t1
                  lui          s6, 532724
                  andi         s0, t0, -1387
                  xor          a6, gp, tp
                  sll          gp, s1, s9
                  srai         s6, gp, 5
                  xor          s3, a3, a7
                  lui          s2, 756974
                  slti         s5, tp, -1929
                  srl          t0, zero, t2
                  srli         tp, s9, 6
                  slt          s4, s3, s9
                  and          s11, a7, a2
                  or           t0, a3, a0
                  sll          ra, zero, a4
                  srl          s4, s9, a7
                  sltu         a0, s0, t6
                  srai         s2, s9, 12
                  auipc        s0, 895903
                  or           s3, s8, s0
                  addi         a1, t3, 525
                  sra          s0, t4, s6
                  andi         zero, s8, 1041
                  sra          ra, a3, tp
                  and          t3, s9, t6
                  addi         t6, s6, 498
                  add          a6, s0, t6
                  ori          s4, t1, -1046
                  srai         s2, t5, 1
                  srl          s1, t2, tp
                  or           a2, s6, s3
                  srl          s8, s8, t5
                  xori         a0, t2, -1389
                  addi         s7, s3, -1100
                  slt          tp, s2, zero
                  and          s5, a6, a4
                  lui          a5, 918935
                  lui          ra, 208291
                  slti         t6, s7, -664
                  sll          s8, t0, s0
                  slt          sp, s4, s8
                  ori          s10, t2, -1741
                  nop
                  srli         a7, s5, 2
                  or           s11, sp, s7
                  slt          s5, tp, a3
                  sltiu        a1, t1, -1773
                  slli         t6, t5, 0
                  slli         a7, t5, 1
                  nop
                  sra          a7, a6, s8
                  sll          gp, gp, t1
                  or           a3, t6, s10
                  and          a2, a2, zero
                  sll          a0, a7, a7
                  auipc        s3, 514258
                  srai         s6, s2, 8
                  add          s8, s0, a3
                  nop
                  slti         s8, a4, -239
                  srai         s7, t3, 2
                  srli         s11, gp, 16
                  sra          sp, s11, a2
                  or           a3, s3, t0
                  slli         a5, a2, 9
                  or           sp, s2, s5
                  or           tp, t5, a3
                  nop
                  sub          s5, s9, s11
                  sltiu        s5, t0, -410
                  addi         a6, s0, -840
                  sub          s7, a1, sp
                  sra          s2, zero, s10
                  sra          s11, t1, s9
                  nop
                  auipc        s0, 31125
                  sub          a0, t2, a6
                  ori          tp, s3, -1921
                  and          t2, sp, s0
                  sltiu        s4, t0, 757
                  xori         a3, a4, -826
                  lui          a0, 232439
                  or           a7, tp, a5
                  srl          s5, t2, t4
                  xor          sp, zero, s3
                  slli         s3, a7, 20
                  srl          gp, s2, s4
                  xor          s11, t1, t3
                  andi         a3, a0, -509
                  srai         s10, ra, 26
                  sra          s8, a3, zero
                  sll          t2, a6, a2
                  sra          tp, gp, s10
                  nop
                  slti         a5, a6, -1136
                  xori         t1, t1, -126
                  lui          s4, 242055
                  slti         t5, sp, 980
                  auipc        a0, 49316
                  auipc        t2, 159496
                  slti         a5, s1, 314
                  sltu         s10, t2, s7
                  srl          s5, a5, s3
                  srai         s0, t6, 8
                  sltiu        s8, a2, 199
                  andi         a0, ra, -1000
                  sub          sp, s8, t6
                  xor          a0, s2, t5
                  and          s8, zero, s3
                  sll          s2, t0, s8
                  auipc        s2, 970229
                  sll          gp, s2, t5
                  lui          a6, 224404
                  xori         a0, s8, 168
                  xori         t5, t6, -1769
                  addi         t5, gp, 183
                  and          t3, s0, t6
                  lui          s2, 517175
                  srai         s5, s4, 22
                  sltu         a7, zero, a5
                  sltu         ra, s4, s4
                  or           s1, s6, s8
                  and          t0, s11, a2
                  srai         s1, s3, 28
                  slti         a1, t5, 850
                  addi         tp, t5, -238
                  and          s11, t2, tp
                  sra          t2, s9, t2
                  andi         a3, t6, -46
                  slt          s3, s6, zero
                  addi         s1, gp, -1455
                  auipc        s4, 625226
                  andi         ra, s9, -583
                  xori         s5, a4, 357
                  or           s11, s1, s6
                  srli         a5, t4, 29
                  sra          s7, tp, t0
                  nop
                  and          a6, ra, t2
                  or           s11, t4, ra
                  srli         s7, t4, 7
                  auipc        s5, 837890
                  auipc        zero, 481677
                  srli         s1, t0, 9
                  and          a2, a7, s6
                  sra          gp, s10, a1
                  slti         t2, ra, 204
                  slli         a7, t5, 27
                  add          s11, s2, sp
                  sltiu        a6, a2, -768
                  srli         t0, a2, 17
                  sltu         t5, t6, s0
                  or           t0, zero, gp
                  sltu         t3, t2, ra
                  srl          s0, s5, s7
                  nop
                  xor          tp, s6, gp
                  srli         a1, a0, 25
                  and          tp, a0, a4
                  slti         a5, s3, -1620
                  auipc        s11, 924427
                  slt          a0, s5, s6
                  sltu         s3, t6, s0
                  xori         t6, s3, 1103
                  sra          a3, a4, s0
                  or           t6, s8, s11
                  sra          s6, s0, s9
                  add          a2, t0, t2
                  sltu         sp, t4, tp
                  slti         a3, t6, 1029
                  or           t1, a1, s6
                  srl          t1, s3, a1
                  srai         t5, a1, 26
                  nop
                  xor          a2, a3, a6
                  sll          t2, gp, gp
                  addi         a5, s1, 1064
                  slt          t0, s8, s0
                  srai         s1, a0, 0
                  add          s1, t5, a2
                  sra          s8, s3, tp
                  slli         gp, s0, 12
                  and          a5, t6, t0
                  ori          s2, a0, -1461
                  srl          s1, sp, s0
                  xori         ra, tp, 2029
                  add          s11, s4, a2
                  andi         a5, s0, 542
                  sra          zero, t3, a3
                  auipc        s6, 104884
                  nop
                  sll          a6, t4, a2
                  lui          t3, 315143
                  andi         ra, t0, 1264
                  xor          t5, a2, t4
                  sltu         a6, t4, t0
                  slt          t5, s10, s9
                  sub          s0, t5, a6
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s1, 0xffffffff
                  li           tp, 0x0
                  li           s7, 0x80000000
                  li           s10, 0xffffffff
                  li           gp, 0x7ab66093
                  li           ra, 0xffffffff
                  li           a6, 0x64209eb6
                  li           s0, 0x80000000
                  li           a1, 0xffffffff
                  lui          s10, 628234
                  addi         s1, a6, -95
                  addi         gp, a1, 1386
                  add          a6, tp, s10
                  auipc        ra, 632743
                  auipc        tp, 806888
                  sub          a1, tp, s1
                  addi         s0, s10, 1196
                  nop
                  lui          s7, 145637
                  lui          s1, 737837
                  addi         s0, s1, -1153
                  add          s1, s0, t2
                  auipc        t2, 167416
                  addi         s10, t2, 1915
                  addi         ra, a6, -1213
                  sub          s0, s1, s1
                  add          s7, tp, t2
                  lui          t2, 906618
                  addi         s10, tp, 1060
                  addi         s1, a1, 1396
                  lui          t2, 975772 #end riscv_int_numeric_corner_stream_16
                  nop
                  add          sp, zero, t6
                  srai         s8, a1, 1
                  sltiu        s8, s1, -667
                  sub          a7, s11, s11
                  lui          s11, 592148
                  auipc        t3, 1043357
                  xori         tp, t5, -1752
                  sub          t5, s3, s2
                  slti         sp, zero, -731
                  sll          t0, s1, a6
                  sltiu        ra, s10, 1908
                  add          s7, sp, t2
                  ori          t5, a6, 1610
                  slti         s1, a1, 853
                  slt          s5, s5, a3
                  xor          s3, s8, s10
                  sltiu        ra, zero, 78
                  li           s11, 0xac8cd0b4 #start riscv_int_numeric_corner_stream_24
                  li           s7, 0x0
                  li           s0, 0x80000000
                  li           t5, 0xffffffff
                  li           s4, 0x354a4f62
                  li           s6, 0x80000000
                  li           s3, 0xffffffff
                  li           s1, 0x4604ae33
                  li           a3, 0x0
                  li           s10, 0x80000000
                  auipc        s1, 334901
                  sub          s1, s4, s7
                  sub          s4, s1, s1
                  nop
                  sub          s1, a3, s0
                  auipc        s4, 562852
                  nop
                  nop
                  addi         a3, a3, -177
                  add          a3, a3, s11
                  sub          s7, s10, t5
                  sub          s3, a3, s11
                  sub          s1, s3, s0
                  nop
                  add          s0, s7, s3
                  auipc        s4, 787197
                  nop #end riscv_int_numeric_corner_stream_24
                  ori          a5, s10, -296
                  andi         s5, s3, 198
                  add          s5, a5, ra
                  sll          t3, a3, zero
                  addi         t6, t6, 860
                  xori         t5, a3, 1097
                  slti         s4, t4, -1569
                  nop
                  auipc        t5, 591075
                  sub          s3, t3, zero
                  add          sp, a1, s9
                  lui          zero, 517062
                  srli         s0, a7, 5
                  and          a5, s3, s10
                  srli         t0, a0, 21
                  addi         s11, t2, 273
                  slt          sp, s1, s9
                  sltu         t3, s11, t3
                  sll          a1, s1, s5
                  nop
                  or           s1, gp, sp
                  or           t3, a5, s8
                  slt          tp, s2, t4
                  slli         a3, s2, 20
                  srli         zero, s7, 15
                  srl          s5, t5, a3
                  sll          a6, t1, t5
                  xori         a5, t0, -1001
                  slti         t6, s3, -828
                  slt          a3, s8, t4
                  sltiu        a2, a1, 628
                  sltu         s6, s3, s5
                  xor          t1, zero, s11
                  xori         sp, a2, -1673
                  slli         ra, a0, 24
                  sltu         zero, s8, s11
                  ori          t1, s10, -978
                  sub          sp, t5, s9
                  slt          gp, a3, s3
                  slt          s0, s2, a6
                  slli         a3, s5, 11
                  ori          t6, s10, 489
                  ori          t1, t0, 564
                  srai         s11, a7, 27
                  srai         t6, a6, 13
                  ori          a3, ra, 1706
                  srai         a6, s1, 10
                  xor          s5, s0, s4
                  slli         a2, s10, 7
                  sltiu        a2, t2, -247
                  and          gp, s10, s7
                  slti         a6, s9, -110
                  and          t3, s0, a0
                  and          sp, s8, a3
                  add          a2, s3, s10
                  sll          t2, s2, s2
                  and          s5, a7, tp
                  xor          s6, s5, t6
                  sll          t2, s6, s1
                  slli         t5, sp, 13
                  slli         s1, s1, 20
                  sll          a6, s8, t2
                  srl          a1, a3, a3
                  slli         s0, t1, 25
                  add          s1, a2, t2
                  and          s4, s8, s7
                  slt          a7, a1, a2
                  add          s3, s5, s6
                  sltu         a6, t6, t0
                  auipc        a3, 937300
                  slli         s8, t5, 24
                  slt          a1, a7, gp
                  andi         s7, s9, 1764
                  slt          s10, a5, s10
                  sltu         s7, t1, ra
                  sltu         a5, t4, s6
                  nop
                  sltiu        s4, s11, 134
                  sub          s10, t6, t3
                  sltu         zero, a5, s10
                  srl          t5, s10, s8
                  sub          s11, s8, a6
                  auipc        s1, 641751
                  add          s11, a3, s9
                  xori         t3, s8, 1611
                  slli         a0, t4, 24
                  andi         zero, t2, -1562
                  add          s4, sp, a3
                  sltiu        tp, a5, -1241
                  sltiu        zero, a7, 1640
                  xor          s4, t1, s4
                  xor          tp, a1, t1
                  srli         s2, t5, 30
                  slti         a2, zero, -720
                  slli         s11, t1, 0
                  sub          a3, a3, s0
                  srai         s0, tp, 16
                  sll          s2, s11, a6
                  slti         a0, a5, 1889
                  srl          a7, a6, s8
                  slli         t2, s6, 3
                  sltu         a5, a1, a5
                  nop
                  or           a7, s2, sp
                  sub          a6, s8, t2
                  srai         zero, s5, 7
                  or           s7, s11, a6
                  srl          t5, gp, t1
                  sltiu        t1, tp, 915
                  andi         a1, tp, 174
                  or           s8, s7, ra
                  and          s0, t2, t1
                  xor          s8, s4, a5
                  slt          gp, a6, s4
                  or           t0, t6, s0
                  sltu         ra, s8, a4
                  andi         ra, a0, -428
                  srl          t0, s6, a1
                  lui          s1, 304617
                  nop
                  ori          sp, a1, 737
                  slli         s1, s11, 22
                  addi         t6, a2, -1782
                  srai         a2, s4, 21
                  and          gp, s7, a3
                  srl          t2, s2, s3
                  sub          s3, ra, s4
                  xor          s11, t0, tp
                  sra          a1, s8, s7
                  andi         a2, ra, -729
                  auipc        s5, 228555
                  auipc        s2, 256593
                  slt          s0, s5, ra
                  ori          s4, sp, 210
                  slli         s1, a2, 10
                  srai         a3, a7, 31
                  addi         t0, t4, 1462
                  xori         s5, s2, 962
                  ori          t0, s5, 62
                  sltu         sp, t2, s11
                  xor          gp, s1, tp
                  or           gp, s5, a6
                  srli         a5, s10, 17
                  slt          s1, ra, ra
                  slli         a3, s7, 8
                  ori          t3, s4, -368
                  xor          a5, t1, s4
                  add          a3, s8, s11
                  srl          t3, s11, s9
                  xori         t1, sp, 547
                  auipc        s1, 946132
                  sltiu        s10, tp, -1839
                  srai         s3, tp, 20
                  sll          a2, s1, a4
                  addi         a3, s1, -1729
                  ori          zero, t3, 1675
                  srai         a0, a0, 13
                  addi         a7, t4, -1601
                  addi         a7, s3, -2030
                  auipc        a7, 141533
                  and          a2, a0, t3
                  nop
                  sltu         s11, ra, s5
                  lui          t6, 163851
                  lui          a6, 897431
                  slt          s4, ra, a7
                  auipc        t6, 212955
                  nop
                  sll          tp, s4, s3
                  addi         s8, s11, 1907
                  ori          t6, t0, 1865
                  auipc        s2, 23805
                  andi         a5, s3, -1682
                  srai         a6, t5, 28
                  addi         tp, s10, 1955
                  lui          t0, 139952
                  slti         tp, s4, 1312
                  srai         t2, s8, 16
                  srli         a1, gp, 19
                  sll          zero, a1, t0
                  slt          t1, a5, t3
                  and          t6, a6, s0
                  slti         s7, t0, 1280
                  addi         a5, s1, 438
                  lui          s11, 731308
                  sltu         t3, s4, t0
                  srl          ra, a1, s3
                  add          t3, s8, ra
                  slti         t3, a3, 502
                  nop
                  srl          a1, a1, s10
                  slli         s0, sp, 8
                  sltiu        t3, a3, 1174
                  srl          gp, a1, s3
                  sll          a0, s10, t1
                  and          a5, s11, s10
                  addi         a7, s10, 1714
                  srl          s11, gp, a1
                  addi         tp, t4, 1008
                  sltiu        gp, t5, -2012
                  addi         t2, a2, 1378
                  add          a2, s8, a2
                  srl          zero, t1, a2
                  sra          s6, s9, s5
                  add          s7, s1, a0
                  andi         t2, s11, 1471
                  srl          a1, a0, s8
                  slti         s10, t2, -376
                  sra          s2, s0, a6
                  lui          s10, 578904
                  addi         a2, t3, -1810
                  and          a5, s8, t2
                  srli         s1, s10, 20
                  srai         s8, a2, 7
                  sll          s0, s3, a7
                  ori          t6, t5, 1216
                  slti         t1, s1, -238
                  slt          tp, s0, t1
                  and          zero, s11, a7
                  xor          t5, s10, sp
                  sltu         tp, t3, t3
                  or           a3, t3, s5
                  srli         zero, s11, 30
                  nop
                  sltu         s5, s2, t5
                  sub          a0, s10, s9
                  sra          s2, s9, s6
                  slt          a7, sp, sp
                  sltu         a6, zero, t5
                  srai         t1, a2, 30
                  lui          s10, 746658
                  sltiu        t5, a0, -218
                  auipc        a7, 126536
                  sra          s5, s4, s10
                  lui          s10, 365998
                  sub          a1, s5, t1
                  andi         s11, gp, 766
                  sra          s7, a2, a4
                  and          t3, t4, t3
                  ori          a5, s6, -1001
                  andi         a7, s0, 1241
                  sra          s8, s2, ra
                  lui          s1, 339213
                  add          s11, t2, a3
                  addi         s7, ra, -929
                  sra          s1, s0, s3
                  xor          a1, a5, zero
                  and          s11, s11, sp
                  sra          tp, s6, a4
                  lui          s6, 365586
                  sub          t5, s1, s4
                  auipc        a1, 843164
                  sub          ra, t4, s2
                  sra          a6, t1, a5
                  and          a0, sp, ra
                  or           a5, sp, a3
                  slti         t0, t6, -1922
                  lui          s1, 876114
                  nop
                  sra          t3, a6, sp
                  addi         sp, s11, 578
                  slti         zero, s10, -1839
                  lui          t6, 1011521
                  or           gp, t0, s6
                  sra          a3, t0, s10
                  srl          t0, a7, zero
                  sra          zero, s9, sp
                  ori          s7, a0, 1855
                  srai         a6, a0, 1
                  or           t1, s10, a3
                  sltu         a3, s6, a4
                  sltiu        t0, t6, 1106
                  andi         s8, t2, 1857
                  lui          a0, 12686
                  sra          s6, s9, a7
                  sub          a3, s8, s3
                  sra          a7, a0, ra
                  lui          s10, 874980
                  srli         s2, s4, 6
                  andi         s7, t3, -1948
                  slti         a6, t3, 264
                  sltu         ra, a4, a2
                  srli         a2, s7, 15
                  sra          ra, a1, s5
                  addi         a6, zero, 1891
                  srli         a5, ra, 28
                  and          s5, a7, t3
                  xor          a3, s4, s0
                  sub          t6, a5, s4
                  and          a7, s1, a3
                  srl          tp, a7, t5
                  xori         a3, a4, 560
                  addi         ra, s1, -1787
                  slli         zero, a1, 15
                  slt          s11, s10, t4
                  lui          a3, 884814
                  slli         s10, zero, 1
                  auipc        gp, 917003
                  or           s3, zero, s7
                  srl          s1, tp, s11
                  andi         s0, a3, 1374
                  slli         ra, zero, 23
                  auipc        s6, 815325
                  slt          s4, zero, a7
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           s7, 0x0
                  li           t1, 0x0
                  li           s2, 0x6c22d5ff
                  li           s4, 0x357a5e4d
                  li           a1, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0xffffffff
                  li           sp, 0x784771a0
                  li           s3, 0x80000000
                  sub          s3, a1, sp
                  nop
                  sub          s5, sp, s3
                  auipc        sp, 290429
                  lui          a1, 508286
                  lui          s8, 925437
                  addi         a1, t6, -510
                  sub          s8, s8, s7
                  add          s5, s8, s5
                  lui          s8, 8619
                  add          a1, s4, s8
                  auipc        sp, 617400
                  lui          s8, 19427
                  add          s7, s8, t6
                  auipc        sp, 274204
                  add          s8, a1, s7
                  auipc        sp, 88609
                  sub          t1, s2, t1
                  auipc        s5, 202717
                  nop
                  addi         a1, s3, 1833
                  addi         s7, s7, -929
                  lui          s8, 901742
                  auipc        t1, 798017
                  lui          s7, 151899
                  add          s4, a1, s2
                  lui          s8, 217154 #end riscv_int_numeric_corner_stream_27
                  lui          s11, 504928
                  sltu         t0, a4, tp
                  xor          a5, sp, s10
                  xor          s6, ra, s8
                  nop
                  slli         s10, s11, 20
                  srli         t3, a5, 31
                  ori          a0, a7, 1595
                  xor          s8, a2, t0
                  ori          a0, a7, -102
                  or           s1, a7, s6
                  sltu         s4, a3, s4
                  or           s3, a2, s8
                  auipc        s7, 1017553
                  auipc        s1, 999697
                  nop
                  lui          a6, 564231
                  add          s8, s5, s3
                  add          s1, t3, a4
                  srli         t3, gp, 22
                  sub          t0, tp, a0
                  slti         s7, a4, -2020
                  and          gp, ra, t2
                  sltu         s4, tp, s7
                  addi         s3, s2, 1796
                  add          s2, s2, a1
                  slli         s11, t4, 17
                  ori          t5, a3, 885
                  sll          s5, t2, t0
                  sltiu        tp, a1, 1778
                  sll          gp, a3, sp
                  sll          s7, s4, s0
                  xor          s11, gp, tp
                  srai         a6, t5, 7
                  slt          a6, s0, a6
                  sra          a6, t6, a5
                  andi         s6, s1, -1538
                  add          s2, s1, a3
                  xor          s1, s4, a3
                  andi         s1, tp, -602
                  xor          t0, s0, s6
                  andi         t1, a3, 509
                  srl          ra, s0, s5
                  sll          a1, t3, a4
                  or           a5, s1, a2
                  sll          t6, s4, a4
                  srai         tp, t4, 24
                  addi         zero, a4, 727
                  sltu         s8, s6, s4
                  sltiu        a0, s7, -660
                  sra          s10, s10, t4
                  auipc        s2, 527081
                  ori          t3, s8, -319
                  slt          s11, tp, s7
                  li           s10, 0x6b9008ed #start riscv_int_numeric_corner_stream_28
                  li           s1, 0x80000000
                  li           gp, 0x0
                  li           a5, 0x0
                  li           s7, 0x80000000
                  li           s11, 0xf118f5ef
                  li           s6, 0x80000000
                  li           a2, 0xffffffff
                  li           t6, 0xffffffff
                  li           ra, 0x80000000
                  add          s10, a2, a5
                  sub          s10, s6, gp
                  addi         s11, s6, -1498
                  sub          a2, a2, s1
                  auipc        a5, 350533
                  add          s7, s10, s6
                  auipc        s10, 789348
                  lui          s10, 659242
                  addi         s10, s6, -1133
                  sub          gp, s6, s1
                  nop
                  nop
                  nop
                  sub          a2, s7, s7
                  add          ra, s11, s7
                  auipc        s10, 654196
                  sub          gp, s7, a2
                  sub          s11, a2, s1
                  nop
                  nop
                  addi         gp, s1, -478
                  nop
                  nop #end riscv_int_numeric_corner_stream_28
                  xor          s6, s0, zero
                  sltiu        a1, t4, 940
                  sltiu        a6, s1, 141
                  srli         s6, a5, 6
                  andi         t1, s2, 1277
                  sltu         tp, s5, s5
                  add          s0, t6, a3
                  srl          tp, ra, t0
                  auipc        s2, 882909
                  srli         t5, t1, 29
                  nop
                  ori          gp, s0, 1833
                  sra          t5, s3, a3
                  xori         gp, s1, -1722
                  ori          t3, s5, -394
                  lui          a1, 674399
                  srli         a3, t1, 7
                  add          a5, zero, t4
                  nop
                  srl          s8, s0, t6
                  sub          a1, s9, s4
                  srai         s6, gp, 3
                  xori         a2, t6, 1791
                  sub          t6, t6, s10
                  or           gp, s11, a0
                  ori          t3, a5, 718
                  addi         sp, a1, -942
                  slt          t3, t2, s11
                  ori          t0, sp, 1971
                  lui          ra, 669106
                  sra          t6, a3, s1
                  addi         s7, a4, 636
                  ori          s2, s11, -603
                  xor          s7, a7, s6
                  sltiu        sp, a0, -1476
                  addi         s10, t2, 1944
                  ori          s1, a3, -29
                  sub          a7, a3, a4
                  nop
                  xor          a6, a3, s10
                  addi         s8, t1, -1824
                  auipc        a0, 197440
                  xori         t3, t5, 517
                  sltiu        a5, tp, -1389
                  slti         s5, s8, -672
                  xori         s1, sp, -540
                  sltiu        sp, t3, 1240
                  ori          s10, s10, -436
                  nop
                  sll          s7, s9, tp
                  andi         a7, sp, 362
                  srl          a7, s11, a1
                  sltu         s6, s5, s5
                  sll          a5, a6, t6
                  auipc        t6, 1009558
                  sub          s8, a4, s0
                  auipc        t3, 539988
                  xor          a7, t3, ra
                  slti         gp, ra, -1225
                  and          s6, s4, s5
                  addi         s5, s5, -1357
                  sra          t1, s9, a6
                  add          s8, a6, s3
                  slti         a1, t0, 751
                  andi         s2, t4, -2021
                  andi         s8, t1, -1902
                  add          t5, s0, s3
                  sub          s3, s5, s8
                  auipc        s1, 442860
                  sltu         gp, s9, a6
                  auipc        gp, 177736
                  sra          s10, sp, ra
                  andi         s0, s11, -508
                  xor          a5, a2, s0
                  slli         s3, a2, 17
                  lui          t1, 163041
                  or           s7, s11, t3
                  add          s8, a3, t2
                  ori          t5, tp, -1199
                  srli         t0, s1, 20
                  nop
                  andi         t1, t6, -1784
                  addi         s4, t6, -735
                  srl          t0, s6, a6
                  andi         gp, a7, 1913
                  addi         t1, a5, 195
                  add          t5, zero, t2
                  srai         a6, s2, 0
                  xor          s10, ra, a2
                  sll          s10, a5, a2
                  and          ra, s1, s8
                  slti         ra, s7, -914
                  add          s11, a1, s3
                  and          tp, gp, t0
                  and          a3, t0, s5
                  addi         s7, a5, 1616
                  srl          s2, a6, s8
                  ori          t0, tp, -812
                  xori         a6, s2, 1198
                  srli         t5, t3, 30
                  or           ra, s1, s2
                  sra          a2, a6, s7
                  sltu         s6, s6, ra
                  xori         s5, s2, 3
                  slli         s4, a1, 13
                  slli         t0, s0, 28
                  sra          s10, s2, s7
                  ori          zero, t0, -1760
                  slli         s1, s3, 2
                  or           zero, s5, a7
                  auipc        a6, 540983
                  andi         a2, s3, -1204
                  xor          s1, s8, s8
                  auipc        s11, 683414
                  and          t3, s11, a5
                  nop
                  and          s11, a6, t1
                  and          sp, t4, s4
                  sll          t6, a7, t0
                  addi         t1, s7, -589
                  add          s3, a2, a6
                  andi         zero, ra, -253
                  srl          s1, a3, gp
                  xori         a3, a1, 1460
                  add          t6, t1, s1
                  slt          t3, s1, sp
                  add          ra, s11, t3
                  xori         t2, t5, 187
                  or           t3, t0, t6
                  sll          t3, t3, t6
                  slt          zero, t3, a1
                  xori         s7, s9, 873
                  srli         t3, a4, 4
                  slli         s11, a6, 24
                  nop
                  add          s5, s7, t6
                  srli         a5, a4, 2
                  srl          s11, a1, ra
                  slli         t2, s2, 10
                  slti         s8, s11, 1699
                  andi         a0, a5, -298
                  addi         t1, s8, 1912
                  lui          a1, 1031830
                  slli         s3, a5, 20
                  slt          a3, t0, zero
                  auipc        a6, 974155
                  xor          ra, t6, t0
                  auipc        a1, 757659
                  srl          s5, s9, a7
                  srai         a3, s8, 8
                  and          t6, t4, s11
                  auipc        t5, 465828
                  ori          tp, t1, -47
                  slt          a2, t1, sp
                  srai         a6, s7, 3
                  sltiu        s7, t2, 1866
                  srai         a2, s6, 28
                  slli         t0, s0, 21
                  srli         a6, a5, 1
                  add          s6, a1, a6
                  sltiu        a5, s4, -170
                  auipc        t3, 497336
                  srai         sp, a6, 6
                  sll          t6, s11, s4
                  slli         tp, s7, 31
                  or           a7, t4, tp
                  srai         t5, a2, 5
                  xori         s4, zero, -277
                  srai         t3, s7, 27
                  addi         ra, a6, 1181
                  addi         a1, s2, 264
                  srai         tp, s10, 22
                  sub          s0, t4, tp
                  xor          t5, t4, s9
                  sll          t3, s5, a2
                  srl          ra, t2, a2
                  srl          t2, s2, s7
                  sra          t2, s7, s0
                  sltiu        s10, s3, 1880
                  auipc        t0, 105418
                  slt          a2, t6, s9
                  sll          s7, ra, s11
                  slti         t5, t5, 468
                  slt          a7, t4, s8
                  sll          t0, a0, a3
                  sltiu        s10, t3, -1029
                  sltu         s7, t0, s2
                  and          a5, s6, s9
                  sltu         t3, a1, a1
                  slti         t6, a1, -1886
                  sltiu        a0, a5, -1402
                  xori         s0, t6, 855
                  nop
                  slt          a6, tp, ra
                  auipc        a5, 310183
                  slti         a1, s0, -1596
                  xor          a7, t5, s7
                  and          a5, a0, a4
                  slt          tp, t4, a7
                  xor          s11, s8, t4
                  slli         a0, s7, 22
                  xor          t1, t4, a2
                  andi         a2, s8, 1343
                  slti         s10, s4, -1729
                  lui          a7, 251581
                  auipc        gp, 313953
                  sll          s4, zero, zero
                  andi         s6, gp, 1246
                  andi         t5, s8, 785
                  addi         a1, a0, 517
                  xor          s5, s11, s6
                  srl          t5, a4, t3
                  andi         ra, sp, 1400
                  add          a6, a6, s1
                  xor          s0, sp, a0
                  sll          t5, ra, s3
                  xori         s1, a0, 1381
                  nop
                  nop
                  ori          a5, s11, -1275
                  ori          t5, a2, 163
                  addi         a2, s3, 171
                  or           s7, tp, t0
                  sltu         tp, a2, tp
                  ori          s1, ra, -65
                  sll          t2, s9, a6
                  and          a0, s0, s0
                  sra          s11, a6, s0
                  xor          sp, a1, a4
                  add          s3, s11, a2
                  srl          a5, s10, s4
                  xori         a6, s1, 1103
                  sub          s5, s4, a4
                  nop
                  sub          s1, a0, sp
                  xor          s4, t3, a0
                  and          a6, s10, t2
                  lui          s4, 528658
                  sll          sp, s2, s7
                  sub          t1, tp, a4
                  andi         s1, s5, 1061
                  xori         t5, a5, -934
                  nop
                  srai         t0, t5, 31
                  addi         a5, t1, 1326
                  lui          s6, 550638
                  sltiu        zero, s1, -581
                  slt          s8, s5, a1
                  srli         s2, a6, 10
                  sltiu        a1, a5, 1962
                  and          t0, s3, t2
                  sltiu        zero, a1, -1558
                  addi         zero, gp, -1262
                  srai         s1, t0, 11
                  slt          a6, t3, s5
                  srl          a5, t0, s7
                  auipc        s4, 717881
                  slli         s8, zero, 11
                  addi         s3, tp, -1429
                  and          t6, a7, s7
                  slt          t0, a6, s1
                  or           s2, s6, a4
                  srl          tp, a1, s0
                  slti         gp, a1, -1530
                  xor          s1, s9, s9
                  sll          s3, a5, zero
                  or           a0, ra, a6
                  andi         t5, s7, -25
                  ori          t0, s2, -809
                  sltiu        zero, s1, -1744
                  add          s1, t4, gp
                  sll          a2, t0, gp
                  xor          a6, a1, t0
                  auipc        s8, 586742
                  lui          t1, 444876
                  sll          s6, t5, a7
                  sub          t6, t2, gp
                  srai         a5, a2, 23
                  sltu         s4, s10, a7
                  srl          t6, t4, gp
                  nop
                  sra          tp, t3, a2
                  srli         s1, a1, 15
                  auipc        s7, 77499
                  ori          s11, a4, -1986
                  sltiu        a0, a6, 927
                  lui          s3, 153639
                  sll          t6, s10, a1
                  srai         s11, a6, 24
                  srli         tp, s5, 0
                  and          s1, s4, s3
                  xori         t6, s3, -1983
                  slti         s2, s7, 398
                  andi         t1, a6, -1778
                  sra          s4, s8, a0
                  srl          s8, s2, a6
                  xor          s4, gp, a3
                  srai         a2, s10, 22
                  xor          a5, a1, tp
                  or           s7, t1, s1
                  auipc        a6, 622349
                  sltiu        zero, s2, -381
                  sltu         t3, t5, a5
                  andi         t1, s8, 1524
                  sub          s5, a7, t2
                  and          a6, s4, gp
                  slt          a3, s2, a2
                  slli         s6, s7, 9
                  slti         s6, t0, 11
                  slt          s8, gp, zero
                  xori         a0, s2, 507
                  sltiu        tp, s2, -1775
                  sub          a0, a3, t1
                  sltiu        a6, a0, 645
                  slli         t1, s0, 6
                  slli         t2, t6, 22
                  andi         s2, gp, 270
                  or           t2, s6, t5
                  auipc        s8, 797170
                  addi         t5, a6, -926
                  addi         s8, s7, 1878
                  sub          s0, s6, s5
                  xori         a6, s1, 1216
                  nop
                  sll          a3, s1, s2
                  sltu         s0, s5, s1
                  or           s8, s5, zero
                  lui          s11, 1034964
                  srai         a7, s2, 29
                  srai         zero, a1, 30
                  slti         tp, t1, 940
                  addi         sp, t5, 1317
                  add          t1, a0, a1
                  addi         s0, t4, 1818
                  sll          gp, t4, gp
                  add          t6, s4, s2
                  sltiu        a1, a5, 1416
                  andi         s6, s10, 301
                  srai         s11, a2, 20
                  srl          s4, s9, s5
                  xor          a6, t6, a6
                  or           ra, tp, a2
                  sra          s8, s4, t5
                  slt          a7, t2, t2
                  srai         s4, t6, 2
                  srl          s3, t5, zero
                  xori         a5, sp, -812
                  srai         t2, t5, 3
                  ori          t2, s2, -1780
                  auipc        t0, 848003
                  slt          s11, tp, t5
                  slti         s6, s9, 1681
                  sltiu        t2, t2, 1785
                  slt          t1, a7, s4
                  sltu         s5, gp, t5
                  sll          s10, zero, a6
                  srl          s7, s11, s11
                  addi         sp, a1, -266
                  srli         a0, a4, 23
                  and          s6, a5, ra
                  srl          a6, s8, gp
                  or           s10, a7, ra
                  slli         s8, s0, 19
                  sll          s4, ra, a7
                  sra          t2, ra, t1
                  slti         s1, a6, 221
                  slli         zero, s11, 12
                  nop
                  slt          gp, s6, gp
                  sll          t5, s7, t3
                  sra          s11, t0, a3
                  sltu         sp, gp, t2
                  or           t3, s11, t5
                  sub          s8, a1, a1
                  and          s3, s0, s0
                  sll          s1, t6, t6
                  auipc        t6, 188112
                  or           a3, t5, t1
                  sltiu        s6, t3, 1212
                  srai         t5, a2, 26
                  ori          ra, ra, -371
                  add          sp, sp, t4
                  ori          a7, t4, -115
                  sltu         t3, a4, a1
                  sub          t6, s2, s5
                  slti         a2, t5, 1395
                  srai         t3, s4, 15
                  slti         t2, s0, -701
                  xori         sp, sp, 1352
                  add          s1, t6, t2
                  andi         a7, gp, 584
                  auipc        t6, 422548
                  slt          a3, s2, a7
                  sltu         zero, t2, s1
                  lui          s11, 623559
                  sltiu        a3, ra, 1764
                  sll          s4, a3, t0
                  slli         a5, s10, 25
                  srli         s8, a6, 21
                  lui          s3, 814098
                  and          a1, a2, t5
                  auipc        ra, 295265
                  ori          s5, s8, 1117
                  srl          s1, ra, s6
                  sll          s11, t0, a7
                  or           s11, s3, t4
                  sltiu        t3, tp, -1738
                  sub          s3, a4, a1
                  or           s4, s1, s11
                  srl          t5, t2, t2
                  sub          s2, a4, s6
                  andi         a0, a3, -616
                  or           s8, s10, sp
                  lui          t6, 224684
                  nop
                  xor          s4, a3, s1
                  sll          a6, t5, a6
                  srl          s11, s0, t4
                  slt          s8, s8, t3
                  andi         t1, s0, -1801
                  auipc        s7, 571981
                  add          s6, s6, s5
                  srai         s6, a1, 7
                  nop
                  sltu         zero, s9, a6
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_33
                  li           t2, 0x80000000
                  li           s0, 0xffffffff
                  li           t3, 0x28d92500
                  li           ra, 0x733d9015
                  li           s8, 0x80000000
                  li           t1, 0x80000000
                  li           s5, 0x0
                  li           gp, 0x80000000
                  li           t0, 0x80000000
                  addi         s5, s8, -379
                  nop
                  lui          t2, 1007585
                  sub          a7, s0, a7
                  sub          t3, s8, a7
                  auipc        t0, 912045
                  sub          s5, t1, t0
                  addi         t1, t2, 663
                  addi         ra, t3, 231
                  sub          s8, t0, gp
                  addi         ra, gp, -1007
                  sub          s5, s8, ra
                  addi         s0, s5, -832
                  nop
                  lui          t1, 44247
                  auipc        s0, 557702
                  auipc        t2, 1006085
                  sub          t1, s5, gp
                  nop
                  sub          t0, ra, a7
                  nop
                  auipc        gp, 404245
                  nop
                  addi         t2, s0, 107
                  lui          t0, 228518 #end riscv_int_numeric_corner_stream_33
                  andi         s1, s9, -915
                  sll          a2, gp, a2
                  andi         s4, s8, 1250
                  add          sp, a2, a4
                  srli         a3, t3, 22
                  add          t2, a0, sp
                  andi         ra, s0, -2023
                  sltiu        s11, ra, 1824
                  andi         gp, a0, -1077
                  srl          s7, s9, s8
                  andi         a1, a3, 1954
                  addi         tp, s7, -819
                  sll          tp, a5, a1
                  lui          a5, 10943
                  and          a1, tp, zero
                  nop
                  sra          t6, s3, s0
                  srl          a5, s11, s10
                  and          s0, t1, tp
                  sltiu        s2, s2, -885
                  xori         a7, a6, 548
                  srl          a6, a3, t1
                  sub          a3, t5, a6
                  srl          a7, s9, t6
                  ori          s5, s2, -901
                  slli         tp, a7, 17
                  add          t0, s6, sp
                  slli         a6, s11, 30
                  xor          s10, zero, s0
                  sltu         s6, a6, tp
                  slt          s2, gp, t5
                  andi         a3, t5, 994
                  slt          a1, s2, s7
                  srl          a3, s7, gp
                  or           s10, s2, s1
                  sll          s5, t2, tp
                  xori         s10, s10, 603
                  andi         t6, s0, 300
                  srai         s7, s4, 10
                  xor          a1, a3, sp
                  lui          a3, 470250
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s10, 0xffffffff
                  li           t3, 0xffffffff
                  li           a3, 0xc6178643
                  li           t6, 0x80000000
                  li           ra, 0x0
                  li           a0, 0xd86f6d42
                  li           s3, 0x80000000
                  li           s8, 0x2b79eb7a
                  li           gp, 0x0
                  addi         a3, t3, 1445
                  sub          gp, a3, t1
                  add          a3, s3, s3
                  addi         t3, s3, 1640
                  nop
                  addi         s8, s10, 557
                  nop
                  auipc        s3, 404299
                  nop
                  nop
                  sub          ra, ra, t1
                  sub          s3, t3, a3
                  nop
                  lui          a0, 406176
                  sub          s10, s3, t1
                  nop
                  addi         t3, a0, 356
                  nop
                  nop
                  lui          t6, 55804
                  sub          s8, t1, gp
                  auipc        t3, 722864
                  auipc        t6, 697091
                  auipc        gp, 854274 #end riscv_int_numeric_corner_stream_13
                  slt          s1, a0, t0
                  or           a6, t1, s1
                  sub          t3, s8, s6
                  sll          s3, a6, a6
                  slt          gp, s5, a6
                  slti         t5, a5, -712
                  nop
                  slti         t3, a3, -941
                  srai         sp, zero, 18
                  ori          s1, a4, 1295
                  sltu         s3, a1, a6
                  srai         s3, sp, 28
                  and          s8, t5, s1
                  srai         s2, tp, 10
                  sltu         s8, s10, t3
                  lui          s0, 734328
                  sltu         t1, s9, a7
                  xor          s0, a7, ra
                  xori         sp, t4, -1275
                  auipc        tp, 828256
                  and          s2, a7, s3
                  srl          sp, s8, t3
                  slt          t2, s3, a5
                  sltiu        s11, t0, 745
                  nop
                  xor          s0, ra, a0
                  sub          t1, ra, s1
                  addi         a6, zero, 39
                  slli         s2, s8, 12
                  add          a2, s9, s6
                  slli         s3, t5, 19
                  sltu         a2, s0, a1
                  addi         s10, t4, -2037
                  ori          t1, a3, 1560
                  or           a3, s10, t1
                  sltu         a1, s5, a7
                  xori         s7, s7, -456
                  nop
                  add          tp, s1, s2
                  slti         a1, s7, -1318
                  ori          s10, a2, -1298
                  sub          t3, zero, a1
                  or           s1, s4, t2
                  lui          a7, 729544
                  srli         s1, t4, 24
                  srai         a5, s2, 28
                  slli         s8, t2, 14
                  sltu         s1, s10, s9
                  slli         s5, a6, 2
                  xor          sp, s3, t4
                  sra          t0, s8, tp
                  sra          s7, s0, s7
                  sra          s1, s2, a7
                  sltiu        tp, t1, -797
                  sub          s6, t1, a2
                  and          sp, s3, s0
                  addi         t1, t1, -14
                  lui          t2, 342035
                  add          tp, s7, s3
                  or           a7, s9, s11
                  srl          a2, t3, a6
                  srai         t1, tp, 16
                  xor          a7, a2, zero
                  srai         zero, a1, 0
                  slli         s2, s4, 11
                  srai         sp, s9, 8
                  slli         s2, t6, 26
                  slti         s6, a5, -204
                  srl          a5, s1, t4
                  andi         ra, a6, 292
                  add          a1, s10, a1
                  addi         zero, a2, -1159
                  add          a5, gp, a4
                  sll          t0, sp, s4
                  sltu         s7, s9, sp
                  slti         s1, gp, -1247
                  srl          sp, a5, s6
                  sra          s4, t1, a1
                  srli         a5, gp, 13
                  srai         s0, a7, 8
                  lui          s7, 373279
                  sub          t2, s6, s3
                  sltiu        s4, s5, -81
                  auipc        a2, 595912
                  slli         s3, s11, 14
                  sub          t2, s9, a4
                  ori          s2, zero, -1039
                  srai         s7, a2, 18
                  addi         tp, zero, -1684
                  xori         t0, sp, 1314
                  slti         a0, a3, -472
                  sra          a6, s9, t2
                  sub          s8, a3, s10
                  slt          a3, s10, a4
                  and          gp, a3, a1
                  andi         gp, gp, 1670
                  srli         s6, t6, 26
                  slt          t2, t4, s1
                  nop
                  andi         s8, a3, 968
                  and          s5, zero, s4
                  sltu         a5, a3, s5
                  add          s11, t1, s10
                  andi         s8, a1, -1608
                  nop
                  addi         a3, a6, -1014
                  lui          t3, 231977
                  andi         a7, a2, 1555
                  slli         s10, t2, 30
                  slt          t0, a4, s1
                  sltu         tp, s10, s0
                  and          tp, s4, t3
                  ori          a5, gp, 479
                  or           a0, s2, a4
                  ori          a1, s8, -516
                  srl          gp, t1, a1
                  sltiu        tp, a6, 1225
                  xori         a0, s1, -513
                  auipc        t5, 62424
                  lui          s10, 854024
                  addi         s10, a7, -1093
                  xor          a7, t2, s11
                  andi         a6, t4, -1072
                  sltiu        t3, t0, -1493
                  andi         s1, t2, 458
                  sra          t1, tp, a1
                  nop
                  srl          gp, ra, a0
                  xori         s8, t3, -16
                  addi         gp, tp, 991
                  sltiu        t2, ra, -667
                  auipc        a3, 495128
                  addi         t3, a7, 1
                  auipc        s0, 546270
                  slli         s4, t0, 5
                  sltu         a1, a5, a7
                  sra          t1, s6, s8
                  addi         a2, s9, 1643
                  sra          a5, s5, s10
                  srl          t3, sp, ra
                  sltiu        a5, a7, 264
                  sltu         a3, s6, a1
                  sltiu        a0, t4, -1756
                  xori         s10, a7, 1008
                  xor          a2, tp, t0
                  slli         a5, s10, 19
                  srai         a7, s4, 28
                  sub          gp, a3, gp
                  andi         s0, a1, -1044
                  xor          ra, gp, a4
                  auipc        t1, 160464
                  slt          s11, gp, s6
                  andi         a5, t4, 1502
                  sll          s5, s3, s6
                  ori          s7, zero, -1889
                  slt          t3, ra, t5
                  sll          s2, a5, t0
                  slt          t3, a5, zero
                  auipc        s11, 331145
                  sltiu        zero, gp, 2008
                  lui          s8, 1017495
                  xori         sp, s5, 657
                  srl          zero, a2, s2
                  ori          ra, s4, -460
                  sltu         s1, s1, s3
                  add          a0, zero, t0
                  sub          t6, a2, s3
                  xor          s7, s9, sp
                  srai         a3, s10, 14
                  addi         a6, t6, -1819
                  auipc        s8, 371215
                  sra          s10, ra, a4
                  andi         t5, a3, 96
                  xor          s5, a3, t1
                  sltu         t1, a4, s7
                  or           a7, t3, s8
                  sltu         s11, a6, s9
                  add          tp, zero, a7
                  auipc        s10, 516031
                  sub          a1, sp, a3
                  srai         t3, a4, 4
                  auipc        s1, 837181
                  sltu         ra, s1, a3
                  or           a3, t6, a2
                  xori         a2, a1, 1850
                  xor          a2, s7, t3
                  addi         t6, tp, -979
                  srli         s5, tp, 21
                  slti         a1, s6, -152
                  lui          s8, 184349
                  and          t2, t1, t0
                  xori         a2, sp, -11
                  sltu         s10, t4, gp
                  auipc        s3, 964614
                  slt          a0, a5, a4
                  slli         zero, gp, 11
                  or           t5, zero, zero
                  srli         s1, s3, 16
                  or           s11, sp, t6
                  add          s6, s5, a1
                  slli         a1, t1, 19
                  slli         a0, t2, 16
                  sltu         a0, t0, s0
                  sltiu        sp, t1, 1065
                  slti         t1, a6, -1846
                  slt          t3, t5, t4
                  xor          s8, a1, a4
                  sll          t1, s9, s5
                  and          s7, a3, s5
                  slli         ra, s4, 22
                  or           a0, t1, s4
                  xori         a1, sp, 553
                  srl          t0, t1, s4
                  sltu         s7, s1, t1
                  sra          a1, a4, a0
                  xori         a7, s5, 115
                  slli         s4, a7, 17
                  sra          t2, a7, ra
                  andi         t2, s8, 401
                  addi         zero, s11, 1238
                  sll          s11, t4, s11
                  srli         a3, t2, 15
                  andi         t6, s11, 1440
                  andi         a2, s9, 199
                  slt          s10, sp, s6
                  sra          s11, s3, tp
                  sltu         t2, a2, gp
                  srli         s3, zero, 13
                  slti         s6, t5, 1675
                  slt          t6, a4, a0
                  add          s6, a5, s5
                  xor          s11, s11, s7
                  srl          a2, t1, a4
                  sll          ra, s6, sp
                  add          s8, a2, s7
                  xori         a2, t0, 1088
                  auipc        t3, 842468
                  sltu         tp, tp, s9
                  andi         a2, ra, 798
                  sra          s8, t6, a7
                  sll          t1, a4, s5
                  add          s3, s4, s3
                  sra          tp, t2, t5
                  or           a6, t1, s2
                  and          a3, a5, t6
                  srai         s6, s2, 18
                  slti         t0, a3, 837
                  lui          s5, 159446
                  slli         t5, t5, 25
                  slli         a5, t4, 20
                  sltiu        s2, s10, -1425
                  srl          sp, a5, a5
                  sll          a7, s11, t4
                  ori          t5, t4, -1795
                  slti         a6, s1, 966
                  sll          ra, t6, ra
                  addi         t1, s3, 623
                  ori          gp, t1, 95
                  or           a2, a0, t0
                  slli         a0, a1, 14
                  add          s5, a2, s9
                  or           a3, s3, t3
                  or           gp, t6, t3
                  lui          a5, 730741
                  srai         s2, gp, 26
                  xor          gp, t1, zero
                  srli         s1, s6, 13
                  srai         a0, t1, 17
                  xor          s4, s10, gp
                  xori         s6, s10, -967
                  nop
                  sll          s6, s11, a4
                  sltu         gp, s6, sp
                  srli         t3, s9, 14
                  sll          a0, gp, s8
                  srli         tp, s0, 4
                  slt          a1, s3, s1
                  sll          a5, t6, s1
                  sll          a2, s10, s7
                  slli         t3, ra, 4
                  sltu         s0, s2, t5
                  auipc        a7, 957761
                  ori          t0, t6, -625
                  addi         t1, t6, -955
                  addi         a3, s8, -825
                  andi         a5, a7, 1168
                  addi         s8, t1, -687
                  xor          s0, a2, t4
                  addi         s5, t5, -1620
                  addi         s1, a7, -1880
                  sltiu        a7, sp, -1786
                  slli         tp, s11, 28
                  and          sp, s10, s1
                  sra          s0, a3, ra
                  or           a7, s6, s7
                  slli         t0, t2, 7
                  nop
                  srli         s2, s6, 21
                  slt          t2, a1, ra
                  or           s4, sp, s7
                  slli         s10, zero, 1
                  sltu         t2, a7, t6
                  lui          s1, 844472
                  sub          t6, s11, s9
                  sltiu        s5, s1, 402
                  srli         s1, s5, 7
                  srai         a7, s10, 3
                  auipc        s2, 347794
                  ori          a7, t1, -78
                  ori          t5, sp, 383
                  sll          a5, s4, s5
                  sltiu        a0, a3, -278
                  nop
                  sltiu        t5, a3, -2010
                  sll          gp, s7, s6
                  sltu         gp, s10, zero
                  sltu         s3, t6, t5
                  sub          t2, s0, tp
                  ori          t0, s7, 1655
                  xori         t6, t4, -279
                  and          s7, t5, s10
                  add          t6, a1, s2
                  andi         a0, t0, 91
                  srai         s11, t0, 7
                  sra          gp, s8, a6
                  srai         s8, t2, 25
                  slt          s6, t2, a7
                  sltiu        a6, a0, -1442
                  sub          a5, t6, s11
                  andi         s8, s7, -498
                  srl          t2, s1, s3
                  sltu         s4, a1, a5
                  slt          t1, s6, s4
                  sltu         s11, a2, zero
                  srli         t0, s1, 18
                  ori          s2, s5, -616
                  auipc        zero, 548928
                  addi         t6, a1, -984
                  lui          s7, 89546
                  lui          t0, 953760
                  sltiu        a5, a4, 1593
                  sltiu        s11, a0, 1459
                  ori          a1, a6, 113
                  srai         s2, t0, 27
                  xor          sp, s3, gp
                  xori         a7, a1, -1492
                  sltiu        a2, a4, -1596
                  add          s3, s5, s3
                  sub          s7, a2, s6
                  and          t1, s5, a7
                  sltu         a3, ra, t6
                  nop
                  srai         s4, a4, 30
                  srl          a0, a3, gp
                  ori          a7, t5, 573
                  sll          t6, ra, sp
                  sll          s3, t2, s1
                  slli         s8, s8, 10
                  xor          s7, a4, a3
                  slt          s6, t5, s4
                  auipc        s3, 922875
                  lui          s2, 674458
                  sltiu        sp, s9, 1126
                  or           t3, t2, a1
                  ori          s3, s4, -1377
                  or           s4, t2, s10
                  srai         tp, s0, 25
                  addi         s0, s4, -1695
                  ori          sp, a0, 122
                  nop
                  sra          s8, s4, t5
                  sub          s6, s0, s10
                  slt          s2, s5, tp
                  addi         gp, s7, -165
                  sltiu        t2, a4, 521
                  srai         a3, t3, 28
                  xor          t3, a4, a2
                  nop
                  sltu         sp, gp, a1
                  ori          t3, s10, -218
                  srl          t0, t2, t2
                  and          t6, s10, s5
                  slli         a7, a4, 20
                  srli         gp, ra, 22
                  and          a7, a4, t1
                  sltu         s4, a1, t3
                  slti         a5, t2, -992
                  slt          t6, s9, a1
                  slti         s2, t2, 1925
                  xori         a7, t3, 1233
                  sltu         s1, s10, t2
                  lui          a1, 883212
                  sltiu        t1, s0, -1405
                  slt          s8, tp, ra
                  slt          t3, t5, s5
                  lui          a7, 590701
                  or           s6, zero, s1
                  slli         a3, s11, 24
                  slti         s2, t5, -557
                  auipc        t1, 586176
                  xor          tp, s7, s6
                  slt          a2, a2, s10
                  slli         s8, s10, 29
                  lui          t1, 577390
                  slti         t3, t3, 989
                  nop
                  slli         sp, s10, 11
                  lui          t3, 454901
                  sll          s7, s8, t5
                  sltu         s3, sp, s7
                  ori          s5, a0, -1962
                  or           s1, s8, t6
                  and          gp, s1, s9
                  lui          zero, 282882
                  xori         t0, s4, 1682
                  lui          gp, 155251
                  slli         s2, a3, 4
                  andi         a6, s10, -1189
                  xor          ra, t6, a5
                  sltu         t5, t5, s11
                  and          a3, gp, tp
                  sub          a6, a1, a1
                  auipc        gp, 926634
                  auipc        a6, 120826
                  slt          sp, a5, a6
                  or           a5, s1, a1
                  sll          t1, s7, s10
                  sra          t5, s8, t5
                  ori          s2, s8, 415
                  srli         s6, sp, 30
                  slt          s11, sp, zero
                  ori          t0, a7, -1688
                  xori         s2, a1, 1599
                  andi         s6, a0, -131
                  slt          a6, s8, s1
                  srli         t1, a2, 15
                  slt          a7, a1, a2
                  andi         s3, t2, 1187
                  xor          s10, tp, s0
                  auipc        s3, 549026
                  sltiu        t3, a1, 660
                  andi         t2, ra, 1308
                  slti         s0, t6, 1532
                  addi         sp, t1, -412
                  ori          zero, s5, 1992
                  auipc        s8, 148000
                  xori         s7, a2, -1225
                  sltiu        s2, gp, 642
                  slti         tp, a4, -1343
                  sltu         a6, s8, s7
                  srli         t2, t2, 11
                  and          s1, a4, gp
                  sub          a0, t6, a1
                  lui          s7, 243727
                  srl          a6, a3, a2
                  addi         zero, t1, -1121
                  slti         ra, a1, -576
                  lui          ra, 697142
                  auipc        a0, 314762
                  ori          s3, a4, -2047
                  slli         gp, t2, 5
                  add          t5, t6, zero
                  srai         a5, gp, 16
                  slt          t1, a5, s6
                  and          s6, a3, t2
                  xori         s1, zero, 374
                  slti         s0, s5, -1246
                  slti         t3, t5, 336
                  addi         a3, t2, -368
                  srl          s8, a4, s2
                  addi         a3, a6, 320
                  sltiu        a7, a6, -1264
                  srli         s10, s10, 10
                  lui          tp, 685431
                  andi         t2, a3, -248
                  addi         a6, ra, -1119
                  add          s7, s7, s2
                  xor          a2, ra, sp
                  srai         s4, a7, 6
                  srli         t0, t6, 11
                  slli         a2, a5, 6
                  addi         gp, a2, -973
                  sra          s11, a6, t3
                  andi         a6, a0, -1185
                  sub          sp, s8, a3
                  xor          t0, t2, a6
                  sub          a3, s10, gp
                  slt          a1, t1, s5
                  srai         s0, s10, 10
                  sll          s2, sp, s2
                  sra          a3, a4, a0
                  xor          a0, t1, a1
                  auipc        t3, 953305
                  add          a7, t4, s1
                  auipc        a6, 701264
                  xori         s2, tp, -282
                  and          tp, s6, a3
                  srai         a7, gp, 8
                  sltu         a5, s9, t6
                  xor          sp, s7, s4
                  nop
                  add          s7, s10, s4
                  sll          sp, a3, s10
                  or           s2, a1, a4
                  sll          a5, t4, t5
                  sltu         s7, sp, t0
                  slli         t2, ra, 13
                  srli         sp, t3, 26
                  xor          s0, s7, s1
                  nop
                  xori         s10, s6, 15
                  and          a5, t6, s7
                  sll          s2, ra, s2
                  slli         t3, t4, 25
                  sltu         a3, s2, s9
                  and          sp, zero, s6
                  auipc        a7, 661130
                  srl          s3, s9, s4
                  and          s8, t5, gp
                  andi         a0, t1, -78
                  ori          a3, s5, -143
                  lui          t2, 405040
                  sub          a2, a3, sp
                  srl          ra, t4, s6
                  nop
                  xori         a2, s2, 466
                  and          s11, a1, sp
                  xori         a0, s7, 781
                  slti         s6, ra, 1867
                  andi         t3, s6, -1370
                  slli         a5, a7, 29
                  sub          s8, s11, s9
                  xor          s4, s3, gp
                  or           s10, s8, s5
                  andi         s6, t1, -130
                  slti         t6, t2, 383
                  slti         s11, s2, -21
                  slt          s7, s5, s7
                  xor          s8, a6, a5
                  srli         s3, s4, 6
                  auipc        sp, 765392
                  add          s4, ra, s2
                  auipc        a2, 36675
                  nop
                  ori          zero, s5, 212
                  slti         s6, s6, 1254
                  addi         sp, s11, -1332
                  srl          tp, a6, s6
                  xor          t6, s6, s3
                  sub          s1, t6, s1
                  xori         tp, s5, 1219
                  sra          sp, s10, a6
                  nop
                  slti         a2, t6, 1164
                  nop
                  sra          a5, t5, a1
                  slt          s0, s5, t1
                  srai         s6, t3, 29
                  or           a7, s11, s3
                  add          s2, s4, s3
                  sltu         s1, s11, sp
                  sra          t3, a1, s3
                  srli         a0, a1, 29
                  slti         gp, t2, 1610
                  auipc        a0, 949541
                  addi         zero, s4, 862
                  auipc        a3, 771108
                  srl          t1, t5, t3
                  lui          s11, 414960
                  or           t2, tp, s5
                  sub          t3, t0, t1
                  auipc        gp, 1022956
                  or           tp, t0, a5
                  xori         t2, s10, -388
                  srli         s7, s5, 30
                  add          zero, t2, zero
                  ori          zero, a3, 1668
                  add          a7, a0, t2
                  sltu         s10, s2, a6
                  and          s10, sp, s5
                  srl          a0, sp, s8
                  sltu         s10, a4, s5
                  xor          t6, t5, t3
                  nop
                  sra          a7, t2, a4
                  srl          s11, s4, gp
                  slt          s3, t3, a1
                  srl          s11, a0, t4
                  ori          a2, s5, -615
                  ori          ra, t2, 1271
                  xor          a1, a7, a6
                  addi         tp, s4, 1682
                  slli         s0, a6, 21
                  ori          a0, a6, -307
                  andi         t5, ra, -387
                  add          a2, a4, s2
                  sltiu        ra, sp, -218
                  or           a1, t1, a4
                  lui          t6, 439732
                  slt          s8, t0, s0
                  or           a5, t0, s3
                  sll          tp, sp, a2
                  srli         s0, s5, 2
                  sra          s1, a1, t3
                  srli         a5, a2, 3
                  nop
                  ori          a3, s10, -104
                  srl          a5, zero, tp
                  srli         gp, a0, 30
                  sra          s4, t0, s9
                  xor          s0, t3, s0
                  lui          s2, 63661
                  ori          s0, tp, 1132
                  auipc        s11, 42573
                  sltiu        a6, t6, -557
                  addi         s5, s1, 45
                  xori         s4, a4, 1055
                  slli         s1, s5, 26
                  slli         t3, s6, 23
                  slti         a6, s6, 1720
                  srai         s6, ra, 18
                  sll          t6, a4, t6
                  lui          t5, 83280
                  sll          s10, zero, s4
                  ori          s7, a2, -235
                  srl          s2, s11, s5
                  andi         a5, a6, 584
                  ori          s7, s9, 1574
                  slti         s1, a7, 1935
                  srli         s8, gp, 31
                  lui          a7, 920483
                  auipc        t3, 214453
                  sltiu        a1, s8, 1478
                  sll          s8, s6, a4
                  slli         gp, zero, 1
                  nop
                  or           a0, s3, gp
                  add          s7, a5, t3
                  sltiu        s1, sp, -641
                  sll          s10, t3, t3
                  slti         a7, s1, 1669
                  lui          s11, 569280
                  srli         s11, t6, 29
                  auipc        a6, 82335
                  xor          s1, a3, a6
                  slli         t5, s0, 31
                  nop
                  sltu         s5, t4, s5
                  nop
                  srli         a7, t3, 5
                  srl          t5, s11, a1
                  auipc        ra, 695160
                  nop
                  addi         zero, t5, 52
                  lui          s2, 888051
                  srai         t3, a2, 28
                  sll          zero, a6, s1
                  lui          s1, 395075
                  sub          t3, a6, zero
                  or           t3, a4, a5
                  or           a2, s9, s2
                  andi         s5, s8, 308
                  or           a2, a3, s7
                  xor          a6, t2, ra
                  andi         s11, t3, 483
                  sltu         gp, s2, s4
                  sltiu        t2, a5, -614
                  srl          t6, s3, a0
                  slli         s0, s6, 28
                  slti         t6, t1, 1020
                  srai         t1, a4, 0
                  sra          s3, t0, a0
                  sub          a2, s3, s6
                  nop
                  and          t2, t3, tp
                  add          a3, s3, t4
                  sra          a5, ra, s4
                  ori          a5, t1, 635
                  nop
                  addi         ra, s9, -470
                  add          t2, t1, s6
                  xori         s11, s5, -902
                  ori          sp, a3, -772
                  srl          a2, a6, a6
                  sub          a5, s6, t2
                  lui          sp, 219952
                  and          s0, t6, a3
                  auipc        s8, 495756
                  slt          s7, s0, a3
                  slti         a6, s7, 1794
                  slt          s5, t5, a1
                  slt          s0, s3, t4
                  sll          t2, s1, s6
                  xor          s4, s4, t0
                  or           a0, t4, t4
                  xori         s7, sp, -1326
                  auipc        sp, 273567
                  slli         t2, s7, 3
                  sll          t0, a7, s1
                  or           gp, s3, t1
                  add          s0, ra, a7
                  and          s1, a0, t5
                  ori          s4, a6, -571
                  srli         ra, a4, 15
                  addi         a1, a7, 442
                  add          s1, t6, s5
                  sll          gp, a5, s1
                  slti         t0, ra, 636
                  sll          a2, a5, s4
                  xori         s10, zero, 899
                  andi         t3, a6, 667
                  sltiu        sp, s5, -795
                  slt          s8, t1, gp
                  xor          a5, s11, t4
                  sub          a3, s6, sp
                  sra          a7, a5, s0
                  srl          s1, s6, a7
                  xori         t6, sp, -1739
                  sltiu        t5, s0, 723
                  auipc        zero, 903066
                  slt          t5, s10, zero
                  nop
                  srai         t2, a3, 7
                  srl          t2, t5, a5
                  or           a3, a6, s10
                  nop
                  slli         gp, t6, 10
                  add          s4, zero, s0
                  auipc        a0, 258713
                  slli         t6, t5, 29
                  srai         t2, s11, 10
                  sltu         s6, s11, a1
                  lui          sp, 939319
                  sltiu        a1, t3, -900
                  slti         a6, a7, -1623
                  xor          s1, a5, t4
                  andi         a1, t1, 1937
                  addi         tp, s7, -1230
                  and          a3, zero, a6
                  and          ra, t2, t3
                  auipc        s5, 514919
                  addi         s0, t2, 232
                  srl          s0, t1, ra
                  sltiu        t5, s2, 698
                  slt          gp, t1, a7
                  sll          t1, t5, s11
                  slti         s3, ra, -856
                  xor          a5, t0, ra
                  auipc        a0, 84067
                  srai         a3, tp, 28
                  sltiu        a5, t1, -1196
                  add          s2, tp, a0
                  sltu         a0, t1, s7
                  slti         s4, a0, 264
                  xor          t5, t3, a1
                  add          ra, s4, s5
                  sll          a3, a3, gp
                  lui          ra, 1027374
                  srli         t5, t6, 8
                  sltu         sp, a6, s4
                  ori          tp, s7, -1458
                  sltiu        s5, a5, 1850
                  srai         t1, t4, 8
                  slt          s8, gp, t2
                  auipc        s5, 897438
                  sll          s4, tp, sp
                  sub          t5, a3, t5
                  slli         a5, a1, 22
                  lui          zero, 688860
                  addi         t5, ra, 1042
                  slti         s10, a6, -864
                  auipc        s2, 74462
                  xor          s10, zero, s1
                  nop
                  sra          a2, t1, zero
                  and          s2, s2, a0
                  xor          s4, zero, gp
                  ori          t5, s11, 1425
                  or           s3, a7, tp
                  sll          gp, t2, a5
                  lui          s0, 400298
                  nop
                  auipc        s11, 550491
                  addi         s6, s1, 1371
                  andi         a5, s7, -1611
                  slti         s1, a2, 66
                  or           sp, a2, s3
                  auipc        s11, 196662
                  srl          t3, s10, s1
                  srl          s4, t3, s11
                  slli         s4, a7, 13
                  srli         gp, a5, 11
                  sra          s7, gp, s11
                  slti         t0, t4, 638
                  lui          zero, 378601
                  sra          s11, t3, s1
                  slti         s10, a5, -1477
                  srli         t3, gp, 8
                  addi         s8, a2, -1007
                  lui          t2, 856411
                  srli         s0, gp, 19
                  srl          a1, t4, sp
                  or           s8, a3, zero
                  auipc        t3, 105202
                  lui          t6, 789412
                  addi         a0, t6, -785
                  sub          sp, t5, a4
                  auipc        a6, 806720
                  or           a6, gp, s4
                  sll          a2, s1, zero
                  slli         a0, s9, 16
                  xori         a3, s7, 731
                  and          s1, a6, s7
                  slti         tp, tp, -1529
                  slt          t3, t4, t3
                  ori          tp, a2, -1927
                  addi         s0, s5, 412
                  nop
                  or           tp, s3, a7
                  nop
                  xori         tp, t5, -525
                  nop
                  xori         s8, a5, 1143
                  nop
                  andi         a2, t2, -1629
                  srl          a5, s7, gp
                  sltiu        t1, a1, 1317
                  xor          t3, s7, tp
                  andi         s5, zero, 735
                  xor          a5, s7, a5
                  ori          s10, a0, 637
                  ori          s0, s4, -35
                  xori         s10, t5, 1486
                  add          s7, t2, s3
                  sub          s7, sp, s4
                  andi         a7, t1, -1560
                  srai         zero, tp, 0
                  nop
                  sra          a2, gp, s7
                  srai         ra, t2, 7
                  sltiu        a5, a7, -719
                  srai         s11, a1, 31
                  ori          t0, t4, 1972
                  sra          t6, s11, a3
                  sra          s5, a2, a0
                  sub          s8, t0, sp
                  nop
                  srl          t1, s6, a6
                  addi         t5, s7, -1099
                  add          s1, s3, s11
                  nop
                  add          sp, s3, s8
                  srai         a0, gp, 14
                  addi         t5, s1, -1900
                  sra          a0, a5, s0
                  addi         a3, a5, 1775
                  xori         a7, a1, 191
                  ori          s6, t1, -456
                  sltiu        t5, a5, -969
                  nop
                  sra          a2, zero, s1
                  sub          s2, t0, tp
                  sra          s5, s4, t5
                  nop
                  srai         t2, a4, 17
                  lui          a7, 626119
                  auipc        tp, 967030
                  slti         a6, t5, 1803
                  auipc        a0, 471815
                  sra          s7, t3, s4
                  xori         s11, a2, 1868
                  slt          zero, s5, t0
                  lui          s10, 71640
                  slti         s8, a2, 397
                  sra          a5, t4, s5
                  or           s1, t0, s8
                  ori          s1, s3, 771
                  sub          a7, t5, a0
                  srli         t3, s3, 12
                  and          s1, t1, s9
                  xor          gp, t6, a7
                  slli         tp, a4, 11
                  addi         s6, a2, 695
                  addi         zero, t0, -119
                  or           t3, t2, t4
                  slt          s5, zero, s1
                  sll          tp, a7, s1
                  and          s4, gp, a2
                  sltu         s4, s0, s7
                  sltu         a2, sp, s9
                  lui          a7, 667811
                  auipc        a7, 18070
                  sub          gp, s9, s2
                  addi         s6, gp, -507
                  or           a3, a7, a5
                  srl          s1, s10, s7
                  slti         s8, s5, -1880
                  or           t1, t2, s5
                  sll          sp, t3, a3
                  add          sp, t5, ra
                  srli         a3, a1, 31
                  slli         t6, s10, 18
                  sra          s8, t0, s6
                  and          a5, sp, t0
                  lui          gp, 708012
                  sll          s2, s11, s7
                  ori          a0, s7, 526
                  srl          s5, s4, gp
                  auipc        t1, 705528
                  sra          s0, a1, ra
                  slti         t0, a2, 393
                  andi         a0, s8, -1576
                  srai         a0, a0, 7
                  auipc        gp, 600121
                  srai         tp, t2, 9
                  nop
                  auipc        s10, 884484
                  auipc        tp, 750777
                  srai         s1, t3, 21
                  sltu         ra, t3, a4
                  srl          s4, a5, zero
                  auipc        t1, 18475
                  sltu         s8, s5, s0
                  srli         gp, s4, 8
                  slti         t5, a7, -1359
                  sltiu        s7, s9, -1107
                  ori          s5, s2, 1216
                  nop
                  or           ra, t5, s5
                  sub          s6, a0, a0
                  srli         s3, s6, 26
                  or           s3, t2, tp
                  sub          sp, t6, t0
                  srl          tp, t5, t5
                  xori         a5, sp, -1069
                  xor          a3, a6, zero
                  andi         s3, t4, 1182
                  slli         t0, tp, 7
                  auipc        s8, 500041
                  sltiu        t5, s11, -1973
                  addi         s10, s9, -1529
                  and          s1, t6, s5
                  sll          a1, gp, sp
                  andi         s0, s11, -1960
                  sll          ra, gp, t2
                  sra          s11, t6, a5
                  slti         t3, s10, -529
                  sltiu        s7, s0, -1247
                  slti         s8, s11, 405
                  or           a1, t0, a7
                  xori         a3, s8, 229
                  srl          s11, t2, a0
                  sltiu        s6, t4, -2044
                  srai         t5, a3, 6
                  and          a5, t6, s2
                  slli         ra, t5, 5
                  add          a2, a4, s5
                  slt          gp, s11, ra
                  nop
                  slt          s3, a0, s11
                  xori         t5, s6, -1796
                  slli         s4, ra, 1
                  xor          t1, sp, sp
                  sltu         s4, a2, s7
                  slti         t0, s10, -898
                  sll          s4, ra, a3
                  andi         s1, s10, -654
                  or           t2, t4, t5
                  auipc        s5, 546332
                  ori          gp, s9, -263
                  slt          s0, s8, t0
                  ori          s3, sp, -80
                  addi         sp, t4, -358
                  nop
                  xori         s3, a4, -1478
                  lui          s1, 374514
                  auipc        gp, 922940
                  auipc        s2, 633344
                  sll          s1, t1, s9
                  addi         a3, t5, -1002
                  auipc        zero, 770184
                  sra          zero, a2, t2
                  xor          sp, a4, t4
                  sltu         a3, s6, a0
                  slt          t1, a0, sp
                  or           gp, sp, gp
                  sub          ra, a1, s11
                  sltiu        ra, s9, 782
                  slti         ra, a0, -759
                  slt          a0, t1, ra
                  auipc        s7, 153348
                  addi         sp, a2, 18
                  and          sp, s11, s4
                  nop
                  sll          a2, a3, ra
                  srl          a7, a4, a4
                  add          t2, sp, t0
                  lui          t3, 754660
                  srl          zero, a6, t2
                  sra          tp, s5, s11
                  or           s2, zero, t5
                  add          s11, a7, t2
                  slti         s11, sp, 130
                  sub          a0, t6, s3
                  addi         s0, tp, -835
                  addi         s3, a7, 1135
                  and          a1, sp, s9
                  ori          a0, zero, -1037
                  or           t2, t0, sp
                  slti         s2, a2, 1830
                  srli         zero, t5, 18
                  xor          a6, zero, a7
                  slti         t6, s1, 17
                  sltu         s2, s9, s3
                  sra          t0, s8, a1
                  sltiu        s0, t1, -1513
                  xori         s0, s10, 1306
                  sll          s10, s0, s1
                  xor          a3, gp, s2
                  andi         s3, s4, 1394
                  srai         tp, t0, 12
                  and          tp, a5, t6
                  sll          s8, s6, s11
                  ori          ra, s4, 1706
                  sltiu        s11, s4, 610
                  slt          s1, s9, zero
                  and          s1, s4, s4
                  addi         s11, a1, -1441
                  xori         s11, tp, -1647
                  slt          tp, t1, s4
                  andi         a3, t3, 1847
                  nop
                  addi         t3, ra, -509
                  slli         a6, s0, 12
                  add          gp, a0, s1
                  slti         a3, t6, 760
                  srai         a0, a4, 14
                  xor          t6, t1, t1
                  or           s11, a1, a2
                  addi         s5, t6, -1831
                  add          s3, a3, zero
                  sltiu        t5, s6, -863
                  slt          a7, t1, sp
                  nop
                  add          t2, a4, s10
                  sltu         sp, a3, s2
                  and          a7, s0, a7
                  nop
                  srl          t2, t0, t6
                  lui          a5, 926289
                  slli         t6, a3, 28
                  xor          a1, t4, t3
                  slli         sp, t0, 17
                  slt          s0, t4, t4
                  sll          a1, a4, s5
                  and          t5, gp, t5
                  slti         s0, t2, -1538
                  sltiu        t5, s9, -688
                  xori         s3, s10, -307
                  lui          s11, 141854
                  ori          s10, t1, 1119
                  add          s10, s9, a7
                  slli         s5, a7, 7
                  srli         a1, s6, 15
                  sra          s2, s2, a1
                  addi         s1, a5, 188
                  srli         t5, s9, 12
                  ori          zero, t0, -252
                  or           t6, s0, t1
                  add          s8, s6, t6
                  addi         t1, a7, 1092
                  slti         a7, a6, -244
                  srl          s1, s11, s9
                  sll          tp, t1, a5
                  ori          a7, zero, 868
                  sra          s10, s2, s9
                  lui          s0, 67016
                  lui          a2, 471942
                  add          s1, zero, t6
                  xor          t6, ra, a2
                  xor          zero, a7, a5
                  nop
                  sltu         a1, s1, s3
                  slti         a3, a4, 1474
                  or           t5, gp, s0
                  srl          s11, t0, t3
                  or           t3, t3, s11
                  sltiu        s10, t3, 1943
                  xor          s6, a3, a3
                  or           sp, t0, a5
                  or           zero, s8, zero
                  nop
                  srli         a6, a2, 18
                  slli         tp, a1, 21
                  srai         s0, t0, 11
                  sub          s11, s11, t5
                  add          a7, s10, s11
                  ori          a2, t3, -146
                  slt          ra, a2, t2
                  slt          s11, a5, a3
                  sltu         s10, s7, s11
                  slt          t0, s9, t1
                  slli         a3, s11, 19
                  sltu         s10, s1, a7
                  xori         t5, t5, 1959
                  sra          s8, s0, t6
                  add          s2, tp, s0
                  srl          s11, s7, sp
                  ori          a6, a5, 1276
                  srli         gp, s5, 7
                  slli         zero, a6, 21
                  lui          s0, 884960
                  srl          a6, a7, sp
                  sra          t2, t3, ra
                  sltu         s6, t4, a5
                  srli         sp, s2, 24
                  srai         a6, s11, 21
                  slt          t5, a2, t4
                  nop
                  sra          a7, a1, sp
                  srl          t5, a3, a6
                  andi         a3, tp, 51
                  srli         t6, s11, 29
                  ori          a7, tp, 881
                  auipc        t5, 461281
                  slli         s2, t0, 8
                  lui          s8, 79970
                  addi         ra, a2, 701
                  sub          a5, gp, t0
                  srai         a0, s5, 24
                  srai         a7, s4, 22
                  lui          s11, 430555
                  srl          a1, a5, s0
                  slli         sp, a6, 22
                  slli         t6, s5, 31
                  sra          s10, s10, t6
                  sltu         s5, t3, s11
                  auipc        a5, 445638
                  slli         s0, tp, 31
                  ori          a1, s2, 210
                  andi         a2, tp, -79
                  lui          ra, 804140
                  srli         a6, a3, 31
                  auipc        a7, 333736
                  slli         a7, s6, 8
                  sra          a6, s6, s5
                  addi         t3, s9, -471
                  sltiu        s1, gp, -2021
                  auipc        a2, 518477
                  slli         a0, a2, 0
                  sll          a2, s6, s8
                  srli         ra, s2, 4
                  and          a7, s2, a3
                  nop
                  andi         a5, tp, -268
                  slt          tp, s6, gp
                  slt          a6, a1, s4
                  or           s8, t0, s11
                  andi         s2, a4, -162
                  ori          s6, ra, 624
                  srl          a2, s10, s8
                  sub          zero, s0, s10
                  or           a5, zero, a6
                  andi         t2, zero, -220
                  srl          t1, t1, a7
                  slli         s8, t1, 16
                  sltu         s8, a1, s3
                  slti         gp, t6, 1695
                  xori         a0, s4, 1703
                  add          a7, gp, gp
                  sub          a3, gp, s8
                  nop
                  xor          t1, s3, s0
                  slt          a3, a1, zero
                  xor          sp, a5, t2
                  slti         s1, zero, 1087
                  slti         a0, s4, -1696
                  nop
                  sub          s4, a7, s3
                  sll          s7, t3, a7
                  addi         a3, s7, -1982
                  slti         a1, a7, 1093
                  xori         s4, a3, -1090
                  sltu         ra, t1, s1
                  slti         s8, a7, -1526
                  sltiu        s3, t3, -1796
                  srli         s2, tp, 2
                  xor          s7, s4, gp
                  sub          s10, s0, a6
                  sub          s6, zero, t6
                  slli         zero, sp, 12
                  srai         s2, a3, 2
                  andi         sp, t0, -1171
                  nop
                  slti         s1, s4, 2002
                  srl          ra, s11, s0
                  auipc        s8, 280283
                  slti         a2, s9, -1390
                  ori          s6, s8, 433
                  sub          t3, t4, t6
                  lui          zero, 235999
                  sra          s6, s9, s10
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           a5, 0xffffffff
                  li           sp, 0xffffffff
                  li           tp, 0x0
                  li           t2, 0x83df0dd0
                  li           s6, 0x0
                  li           a2, 0x80000000
                  li           a1, 0x52f8e6db
                  li           t5, 0x80000000
                  li           t0, 0xffffffff
                  addi         a5, s6, -755
                  sub          t5, t2, t0
                  auipc        a5, 456398
                  addi         a5, t0, -76
                  lui          t2, 747409
                  add          tp, a5, t0
                  add          tp, t5, a1
                  nop
                  sub          a1, t0, s8
                  addi         t0, t5, 1905
                  auipc        s8, 603426
                  nop
                  addi         s8, t2, 1408
                  lui          a5, 126074
                  auipc        s8, 1015135
                  auipc        a1, 425320
                  addi         sp, sp, -1480
                  sub          s8, sp, s8
                  add          t2, sp, tp
                  auipc        a2, 16174
                  add          s6, a5, a2 #end riscv_int_numeric_corner_stream_32
                  auipc        s7, 772718
                  and          s4, a1, t2
                  srai         s6, t3, 21
                  srai         t2, gp, 18
                  slti         a2, tp, 1412
                  srai         t6, t0, 11
                  xor          s2, s9, s10
                  srl          a1, t1, a0
                  add          zero, t5, s2
                  slli         t5, ra, 2
                  andi         t6, gp, -1736
                  srai         a3, s7, 6
                  slti         s2, s1, 1996
                  lui          t5, 439953
                  sub          s7, t0, sp
                  srai         gp, s10, 7
                  auipc        zero, 205638
                  slli         t2, gp, 28
                  xori         a3, s7, 662
                  add          s1, a6, t4
                  and          a2, tp, t4
                  slti         a0, gp, -792
                  sra          s4, ra, sp
                  addi         s1, a7, 1644
                  srl          t2, s9, t2
                  xori         t6, a6, 29
                  andi         a5, a6, -240
                  or           s0, s8, gp
                  slti         a7, s10, 971
                  nop
                  slli         s1, s4, 27
                  srl          t3, t5, a6
                  xori         s0, ra, 1680
                  srl          s8, s7, t4
                  sra          s2, s6, s3
                  xor          a2, s4, s6
                  slt          a3, s11, s4
                  add          gp, t2, zero
                  sltiu        t0, t5, 1860
                  slti         s6, s10, -1901
                  addi         a2, t1, -1347
                  slli         a3, t2, 12
                  srli         s2, tp, 13
                  sll          s3, t2, t6
                  srl          s6, t6, t4
                  slt          s11, t4, a1
                  xori         t5, zero, -1885
                  srl          s2, ra, ra
                  sltiu        t6, a1, 1030
                  and          s3, sp, a7
                  and          s10, a3, t2
                  and          s3, t0, t6
                  slli         t0, a6, 27
                  slt          ra, t4, s9
                  ori          s10, a5, 1823
                  lui          t5, 439129
                  or           s6, s5, a0
                  or           t3, t2, s0
                  nop
                  nop
                  xor          tp, a2, zero
                  sltu         tp, a0, s11
                  srl          t2, s4, zero
                  nop
                  xori         t3, a4, 767
                  auipc        s6, 239913
                  nop
                  and          s1, t4, t3
                  sra          s3, s4, t2
                  sra          s0, a6, sp
                  sltu         a2, t1, t3
                  slli         gp, t4, 29
                  addi         s4, a3, 1484
                  slli         a7, ra, 23
                  sll          t3, zero, s3
                  and          s7, s4, t0
                  sll          s1, t1, s5
                  addi         t6, s11, -1095
                  slt          t0, t0, a2
                  slli         a1, ra, 19
                  sub          a7, s2, s9
                  slti         a5, t6, 657
                  sltu         a6, s3, t1
                  sltiu        a7, a6, 1014
                  nop
                  andi         t6, s0, -1880
                  and          t6, t1, a5
                  slti         t1, t6, 316
                  sll          s10, a7, ra
                  slli         s8, s0, 0
                  srli         s4, s2, 14
                  add          a3, s2, t0
                  nop
                  addi         s0, t4, 584
                  lui          s6, 35721
                  srli         t1, s7, 9
                  srli         s8, a3, 27
                  or           t6, a4, t1
                  sub          t6, t1, a2
                  sra          s1, a7, t0
                  xori         tp, tp, 1028
                  srli         a7, a4, 7
                  and          ra, a0, a0
                  xor          t6, a6, sp
                  addi         t5, zero, 932
                  auipc        tp, 328445
                  sltu         s5, a5, a3
                  sra          a7, a5, s1
                  srl          a2, t0, s3
                  slti         a7, s3, -2024
                  slli         t2, t2, 10
                  srai         s8, a4, 6
                  add          t1, a5, t3
                  and          a7, zero, a4
                  and          s1, t1, a6
                  and          s11, t0, tp
                  and          t5, t5, s5
                  auipc        t2, 541208
                  slli         s4, t0, 8
                  or           s6, a6, s9
                  sll          s7, t5, a6
                  sll          t3, s8, a0
                  or           a1, sp, tp
                  sra          s2, zero, tp
                  xor          s2, sp, s10
                  slt          s0, t3, t6
                  add          t5, s3, t6
                  nop
                  auipc        t2, 381780
                  or           tp, zero, t1
                  ori          s0, a5, 1893
                  srli         gp, a2, 28
                  sub          a0, sp, a7
                  xori         s11, t6, -330
                  xori         s6, s5, -300
                  slli         a1, a4, 10
                  lui          s8, 336056
                  xori         s0, s0, 1754
                  srai         s3, s10, 12
                  auipc        t6, 886735
                  srai         t0, s10, 15
                  slli         t1, t5, 25
                  sll          s2, s4, a3
                  andi         zero, s11, -707
                  addi         a3, s6, -747
                  srl          s2, s3, s9
                  srli         t1, s3, 13
                  and          sp, a1, s7
                  sltiu        s2, t6, -1787
                  add          s10, t6, sp
                  sltiu        gp, s5, -988
                  sll          a7, a5, s8
                  auipc        s10, 372201
                  srli         a6, t4, 25
                  slti         t5, zero, 1613
                  srl          t2, tp, t1
                  sltiu        t0, s11, -490
                  addi         a7, a5, 1781
                  xori         a6, a6, -623
                  lui          a6, 796993
                  sltu         s1, a6, s2
                  nop
                  sub          s3, s3, ra
                  srai         t2, a2, 1
                  sll          t3, a5, s0
                  sub          s7, s3, gp
                  xor          s0, s2, sp
                  auipc        s3, 328768
                  slti         tp, a0, 1302
                  xor          t0, s11, s10
                  xor          gp, t4, s2
                  sra          a2, s3, t4
                  sltiu        a1, t1, -846
                  sra          t0, tp, s11
                  add          s6, s7, a3
                  xor          t3, s6, t1
                  add          s5, s5, a0
                  add          t2, s11, sp
                  andi         s7, s0, -729
                  slli         a5, zero, 3
                  ori          t5, t4, 1906
                  sub          a5, a2, s10
                  lui          t6, 274785
                  sll          s3, a0, a0
                  srl          s8, a0, s1
                  lui          t6, 737414
                  sltiu        s8, a7, 1271
                  srli         s6, a4, 14
                  or           t6, s9, s6
                  srl          t1, a6, a0
                  add          t0, t2, a1
                  add          s7, a5, s3
                  srli         s5, s11, 20
                  sll          s1, gp, a1
                  xor          a6, t1, sp
                  addi         a0, t4, -1426
                  nop
                  xor          zero, s4, t5
                  srli         s3, s2, 21
                  lui          t2, 74152
                  slti         s11, zero, 124
                  slli         s1, s2, 22
                  nop
                  xor          s5, s2, sp
                  ori          s8, t6, -1420
                  nop
                  or           s10, t0, s7
                  slli         a6, sp, 23
                  srai         s8, s11, 11
                  or           a1, s7, a6
                  add          t3, t0, t2
                  andi         s5, s9, -516
                  add          a6, a2, a3
                  srl          t6, a4, s4
                  auipc        s11, 755796
                  auipc        a7, 880060
                  srl          a3, s3, sp
                  nop
                  srl          a2, a7, tp
                  slli         s2, a0, 7
                  auipc        s6, 970436
                  addi         ra, a4, -947
                  ori          t3, a6, 911
                  slti         t6, zero, 453
                  srli         s1, t3, 12
                  nop
                  sltu         s8, t6, s3
                  or           s6, a1, s9
                  srli         a5, a1, 29
                  srl          a3, t5, a2
                  andi         s0, t5, 95
                  xor          zero, s8, s1
                  sltiu        a0, s0, -1234
                  sra          t1, t1, s10
                  xor          t2, a7, a4
                  sltiu        s10, s11, -1372
                  nop
                  auipc        s10, 145610
                  slti         tp, a7, -917
                  slli         a5, ra, 1
                  addi         s8, a4, 1276
                  srl          a0, a6, s4
                  auipc        a3, 846236
                  and          s7, s7, s6
                  sub          s10, a4, zero
                  addi         s3, a0, -1981
                  nop
                  addi         t5, s4, -390
                  andi         s11, s3, 1173
                  sltiu        a5, s5, -2037
                  sub          a1, s7, ra
                  or           a0, s0, s8
                  xor          s8, sp, t2
                  nop
                  add          a3, s5, a7
                  srai         zero, s3, 28
                  sltiu        a2, a1, 931
                  addi         s1, sp, 1661
                  sltu         t6, a0, t6
                  srli         s1, s0, 5
                  srli         a2, s3, 9
                  srai         s2, t1, 23
                  slti         s1, s5, -1784
                  xor          s3, t6, zero
                  xori         s3, t3, -687
                  sub          a1, tp, a1
                  srai         s10, s1, 4
                  xori         t5, t4, -575
                  srai         a1, t6, 10
                  sltu         a3, s6, a2
                  sll          s1, a0, t0
                  slt          s0, s5, zero
                  ori          a0, t6, 330
                  and          s5, s2, s3
                  addi         t5, s2, 1598
                  ori          s0, ra, -948
                  xori         a7, s11, -508
                  sltiu        tp, t6, 362
                  xori         a5, s6, -1040
                  srl          zero, s6, t2
                  sltiu        tp, s8, 1517
                  sltiu        s8, t4, -768
                  srli         t6, s9, 26
                  sub          a5, t5, s1
                  srai         s8, s0, 8
                  sltiu        t2, s1, -360
                  srli         s1, s4, 4
                  nop
                  sltiu        s2, a6, 1746
                  sub          s1, s6, s1
                  nop
                  srl          ra, sp, t1
                  addi         t3, s10, 749
                  xori         t5, sp, 11
                  lui          t5, 562745
                  xori         a7, s3, -1716
                  addi         zero, s6, -286
                  srai         a1, tp, 7
                  srli         a3, s4, 20
                  slti         a6, s5, -871
                  slli         s7, t4, 23
                  srai         a2, ra, 17
                  srli         s4, s7, 23
                  xor          t6, a2, a5
                  xori         sp, s10, -51
                  lui          s7, 569860
                  xori         s2, a1, 86
                  sll          s6, s2, t4
                  srl          tp, s6, s9
                  xor          a3, t6, s3
                  ori          a2, a3, 511
                  srli         a7, a0, 13
                  srai         a1, gp, 29
                  addi         a5, a5, -1663
                  slti         t5, t2, 786
                  slti         a0, t4, -207
                  srai         gp, s3, 12
                  lui          s4, 442271
                  add          s0, s5, s6
                  sll          gp, s9, a0
                  and          sp, a2, s7
                  srl          a0, s7, s9
                  addi         t3, t4, 1383
                  slli         t0, s9, 30
                  xori         a5, s8, 1880
                  slti         gp, s10, -917
                  slt          s10, s3, t5
                  slti         s11, s11, 1866
                  or           a5, a7, a7
                  slti         s0, s9, 336
                  add          ra, ra, gp
                  add          tp, tp, s10
                  sltu         s0, a7, a6
                  srl          s3, t5, t5
                  xori         s11, t2, -80
                  sltu         sp, gp, a0
                  add          sp, s0, s6
                  add          sp, t1, gp
                  slli         s7, s11, 12
                  xori         s0, a2, -75
                  nop
                  slt          t0, zero, s4
                  slt          s2, ra, t1
                  auipc        s6, 190009
                  add          t0, t3, zero
                  xori         a5, t3, -1446
                  sll          a2, s1, t5
                  sltu         a1, tp, a0
                  lui          s11, 907580
                  srl          s5, s9, s4
                  lui          a0, 1036453
                  and          a1, a1, a5
                  or           s7, s3, t3
                  slt          a6, zero, t0
                  add          zero, s8, a2
                  addi         a5, t1, 830
                  sltiu        a7, tp, -360
                  sub          a2, t6, a2
                  srli         t6, zero, 21
                  lui          s4, 95700
                  sltu         t1, t5, a5
                  sltiu        ra, s0, 1854
                  andi         s1, s9, -638
                  addi         s2, t4, 584
                  slli         t6, s3, 13
                  lui          t3, 631441
                  ori          s1, a3, -566
                  srl          tp, a0, s2
                  slti         s10, a3, 946
                  xor          t1, t5, a1
                  slti         t3, s9, -1252
                  sltiu        s10, a5, -1734
                  auipc        sp, 700088
                  sltiu        t2, s6, -238
                  srl          s0, gp, s7
                  andi         t1, s11, -1570
                  sltiu        s2, a4, -746
                  sltu         s6, a1, zero
                  sltu         t0, s1, a5
                  xori         t3, a3, -339
                  add          t2, a3, a4
                  andi         zero, s4, 43
                  srl          s10, s11, s9
                  slt          t6, s7, a0
                  addi         a2, sp, -751
                  slt          s8, tp, a4
                  xori         tp, s1, -1298
                  srli         t6, t1, 31
                  sra          s11, sp, a0
                  sltiu        s4, t4, 753
                  srl          t2, s1, t2
                  slli         s8, s2, 23
                  addi         t2, a4, 1502
                  or           tp, sp, a4
                  or           s5, s3, a7
                  add          a6, s9, t2
                  sra          t2, t0, a5
                  slt          s3, ra, s0
                  sltiu        a2, s6, -1133
                  sub          a2, t0, t5
                  sltiu        s3, s6, -957
                  nop
                  sra          t5, t6, a0
                  srl          a3, s9, s10
                  srai         s5, a5, 9
                  and          s8, s6, a4
                  addi         t1, a2, 1275
                  slt          s8, sp, a1
                  sub          a3, t3, s1
                  nop
                  slti         s11, a0, -1874
                  xor          s10, s4, a2
                  xori         a5, t6, 773
                  auipc        s2, 395954
                  add          s0, a6, a5
                  sltiu        a6, s3, 1352
                  xor          a2, a4, a6
                  srl          gp, s1, s3
                  xor          t1, ra, a0
                  sltiu        s6, s8, -973
                  sra          s7, t6, tp
                  or           a0, a3, t4
                  srl          s5, t5, s1
                  sra          a1, s9, s3
                  srli         a5, a3, 24
                  srl          t2, a7, a2
                  sll          a5, a4, t1
                  andi         t1, t4, -1143
                  sltu         zero, t1, s11
                  auipc        s4, 433209
                  slti         gp, s10, -419
                  xor          t0, gp, s0
                  slli         t5, t5, 18
                  srai         t6, t3, 11
                  addi         s4, s2, -203
                  xori         s11, tp, 1283
                  srli         s0, s7, 31
                  srai         a0, t0, 17
                  xor          a1, s1, t3
                  lui          s11, 963010
                  srli         s8, ra, 5
                  nop
                  and          a0, gp, a7
                  sltu         s10, a6, s0
                  or           t3, a1, t3
                  xori         a7, zero, 457
                  sll          s2, t4, t1
                  andi         zero, s3, 983
                  srai         s5, s7, 10
                  or           ra, a7, s3
                  sltiu        a6, s8, -1820
                  ori          s1, a2, -789
                  srai         s5, a4, 13
                  and          s2, s0, a5
                  srl          t1, s4, tp
                  add          gp, a7, zero
                  srl          a7, ra, a2
                  nop
                  sltu         s11, s1, s9
                  ori          a2, ra, 1085
                  xor          s1, s3, s1
                  addi         ra, s9, -1265
                  and          a1, t3, s0
                  nop
                  sll          s3, gp, a7
                  ori          a7, ra, 948
                  xori         a7, s1, -1297
                  sltu         s6, tp, t1
                  slli         t3, s9, 26
                  add          t2, a4, tp
                  or           t6, zero, s0
                  srli         t1, s9, 6
                  sub          t2, s5, s9
                  ori          s10, gp, 1608
                  addi         s10, s0, -1275
                  nop
                  addi         s1, a1, -1408
                  sll          s6, t1, zero
                  lui          s2, 764567
                  sltiu        s7, s4, -130
                  sub          t0, s0, s3
                  auipc        zero, 725124
                  srai         gp, t3, 27
                  srli         t0, s8, 1
                  or           t6, a4, tp
                  sltiu        a5, t6, 1994
                  andi         t5, gp, 1132
                  lui          s3, 89808
                  and          t0, a4, t1
                  sra          s7, t3, t2
                  slti         t1, t3, 312
                  add          s6, zero, t3
                  srai         a3, t4, 13
                  nop
                  and          t5, a1, t3
                  srl          s1, ra, s5
                  xori         a1, s4, -294
                  slli         s10, s5, 9
                  srai         a1, a3, 5
                  sub          s3, a2, ra
                  sub          a5, s11, s4
                  addi         sp, t0, -863
                  lui          a2, 348161
                  slti         t3, a5, 1681
                  add          a0, s5, a0
                  and          s8, t2, zero
                  and          s6, s10, a7
                  slti         a0, s1, 1392
                  slt          t6, a1, s6
                  andi         s7, t6, -535
                  ori          s8, t0, 1404
                  srai         gp, a3, 2
                  srai         t0, a2, 9
                  xori         s4, s11, -1373
                  nop
                  sltu         s5, s5, t2
                  and          s4, sp, s9
                  sltu         s6, sp, t1
                  lui          s11, 252570
                  slti         a3, gp, -440
                  or           s6, s9, t2
                  lui          s0, 471859
                  slt          s10, s8, t6
                  andi         sp, s0, -3
                  sltu         a7, a1, s3
                  or           s4, s2, s3
                  xor          a2, s7, a4
                  slti         s1, gp, -625
                  srli         s11, s6, 12
                  srai         a7, tp, 24
                  addi         a0, zero, -1100
                  srli         s1, a3, 20
                  andi         t1, a0, -1189
                  or           s3, t6, a0
                  sub          s11, t3, s6
                  nop
                  ori          zero, s3, 982
                  add          s0, t5, ra
                  xor          s4, s9, s1
                  srli         s6, a2, 17
                  srli         a1, sp, 12
                  sll          s0, s11, s4
                  nop
                  nop
                  xor          s0, t1, t6
                  slli         s3, s3, 31
                  sra          a6, a3, a0
                  srli         s6, s3, 16
                  sub          gp, s8, s8
                  sll          gp, a2, s2
                  sll          t0, t1, s11
                  srl          t2, s6, s2
                  slli         s0, zero, 25
                  sltu         a0, s8, sp
                  slt          t5, a2, s9
                  auipc        a2, 689740
                  lui          a5, 443443
                  and          s5, s6, a6
                  sra          a0, s1, s11
                  lui          a6, 850928
                  xor          a6, t2, zero
                  xori         a1, a3, 1974
                  and          a5, s1, t3
                  xor          s7, s2, a3
                  auipc        s2, 968364
                  auipc        s10, 110227
                  or           s4, s2, ra
                  srli         gp, sp, 25
                  xori         t1, a7, -1043
                  srl          s3, a5, a4
                  auipc        t6, 272797
                  andi         a7, tp, -1193
                  ori          s10, s6, 743
                  addi         t1, a0, 852
                  sub          t1, a1, t5
                  slli         a3, s7, 25
                  auipc        gp, 741800
                  slli         a3, s6, 18
                  add          s6, t1, t6
                  srli         a1, tp, 12
                  and          t3, s5, t6
                  xori         s6, gp, -767
                  nop
                  sltiu        t0, t3, -1331
                  lui          a0, 864529
                  sltu         a2, s9, a5
                  srai         s2, zero, 25
                  slli         ra, s7, 11
                  sra          tp, t2, s0
                  sltiu        s2, s2, 688
                  slti         s0, t6, -5
                  srai         t3, t0, 28
                  sll          s8, s2, t1
                  slli         a6, a3, 23
                  and          s1, s9, t2
                  addi         s2, t4, -977
                  srai         s8, s11, 3
                  sra          a7, s9, gp
                  sltiu        s7, zero, -744
                  slti         t2, s5, -11
                  slti         s0, s7, -400
                  srl          s5, s6, s9
                  sub          s10, a1, a2
                  or           a7, a6, s9
                  xori         sp, t1, 1258
                  andi         t1, a5, 2036
                  sub          s10, zero, a4
                  lui          t3, 501847
                  xori         t1, a1, 1356
                  slti         a1, t4, 1672
                  auipc        tp, 963639
                  xor          ra, a5, s9
                  auipc        a2, 420581
                  xori         sp, sp, 93
                  srli         a2, s8, 12
                  sub          s2, s2, s0
                  addi         a2, a7, 1683
                  srl          t6, a0, s7
                  sra          s11, t1, sp
                  andi         t5, a5, 1568
                  sra          s10, ra, tp
                  sltiu        t0, t0, 1357
                  or           s2, a4, s8
                  nop
                  add          t3, ra, s2
                  slti         s2, s9, 1674
                  sltiu        s8, a5, 745
                  slli         a2, a6, 29
                  srl          t1, sp, s7
                  nop
                  slti         a7, s1, -701
                  auipc        a7, 496173
                  and          a1, t3, t0
                  sltiu        t6, a4, -617
                  add          t6, s9, gp
                  or           s0, t3, s10
                  sll          t5, s5, s3
                  sltiu        a6, a5, -812
                  nop
                  xor          a6, t2, s1
                  addi         zero, a1, -1489
                  xori         t3, s6, 40
                  srl          s7, s1, s6
                  andi         a2, a5, 2005
                  auipc        s0, 470438
                  sub          a6, a0, tp
                  or           s11, ra, sp
                  sltiu        s3, s1, 1953
                  slti         sp, t6, -1326
                  srai         t3, a5, 18
                  xor          s0, s2, t0
                  slti         a5, gp, 1944
                  xor          t5, a1, a1
                  auipc        ra, 569460
                  slli         s6, s5, 29
                  xori         s2, s7, 1182
                  sltiu        s7, s0, -65
                  sra          tp, gp, a0
                  ori          a0, s7, 831
                  xori         s3, t2, 752
                  addi         t2, t1, -1202
                  auipc        t6, 771553
                  sltu         tp, s0, tp
                  lui          s10, 887807
                  slti         s7, s5, -2047
                  srli         s8, zero, 5
                  srai         a6, a2, 11
                  xor          a3, a0, s6
                  andi         a6, a4, -1968
                  andi         t5, t1, -933
                  sra          s6, a0, s5
                  add          t0, t2, t3
                  sll          t5, tp, s11
                  srai         a7, tp, 21
                  addi         s3, ra, 1895
                  andi         a3, s8, -985
                  slti         a6, a3, -1179
                  sltiu        zero, a2, -53
                  xor          gp, zero, s7
                  sra          ra, s11, s0
                  sra          s0, s9, ra
                  add          tp, s8, ra
                  add          t6, sp, sp
                  nop
                  auipc        t3, 308115
                  lui          sp, 257975
                  xori         t3, a3, -1561
                  sltu         sp, s5, a5
                  add          gp, a6, t3
                  add          s2, a5, s8
                  xori         a5, sp, 1624
                  slt          t0, zero, t1
                  sra          s0, a7, a5
                  slli         a5, tp, 12
                  sltiu        t6, t2, -1330
                  or           s0, ra, s7
                  sra          t3, s4, t3
                  slti         t1, s1, -1876
                  slt          t5, t0, t5
                  srli         zero, a6, 25
                  andi         s1, a0, -904
                  srai         t0, s11, 28
                  sra          s10, a2, a1
                  lui          t3, 736129
                  or           t1, s8, a3
                  lui          t0, 108825
                  lui          t5, 710473
                  lui          t2, 541697
                  addi         tp, a1, 303
                  auipc        sp, 69982
                  nop
                  sltu         a7, s1, s10
                  srai         s5, t2, 8
                  sll          gp, t5, s1
                  slti         a1, gp, 197
                  srl          s11, a0, s4
                  srli         a6, tp, 21
                  nop
                  slli         a5, zero, 5
                  lui          t5, 687689
                  lui          s11, 392181
                  addi         s4, t4, 732
                  add          gp, a6, t6
                  srli         t5, s1, 28
                  slli         ra, t5, 1
                  srli         s1, s7, 26
                  sub          t6, s1, s9
                  slt          tp, tp, t2
                  srai         t3, s1, 0
                  and          sp, s6, a2
                  slti         s3, a5, 1865
                  slti         tp, s8, 1968
                  and          gp, gp, s0
                  sltu         a6, a2, s0
                  or           t1, a4, s1
                  slt          tp, tp, t0
                  lui          s10, 236929
                  and          s1, a1, sp
                  sra          t6, a3, t4
                  srl          t3, gp, t2
                  auipc        t1, 584148
                  ori          s5, s1, -859
                  sltu         tp, tp, zero
                  xori         zero, t3, -280
                  and          s11, a4, t6
                  slti         t3, s9, 1367
                  sltiu        a3, a1, -1738
                  or           s7, s1, s3
                  slti         sp, sp, 408
                  sra          a1, t5, a7
                  and          a1, t2, a2
                  xor          a0, a7, s0
                  srl          s3, a3, zero
                  slt          t6, a7, t6
                  sltiu        t3, s9, 796
                  slti         s3, zero, 1874
                  ori          s6, a4, 1288
                  sltiu        s4, tp, 1956
                  slli         zero, t2, 25
                  lui          s4, 987018
                  andi         a5, s0, 1491
                  xor          a5, a0, a5
                  addi         a6, ra, 205
                  add          a1, t1, t6
                  sltu         t1, s11, s1
                  andi         t2, s10, -1865
                  slti         s7, s0, 1730
                  andi         t3, s1, -365
                  nop
                  srai         a2, s3, 14
                  slti         s1, s4, -592
                  srai         s4, t3, 13
                  ori          gp, s11, -201
                  nop
                  sll          zero, t6, s6
                  sltu         a7, t2, a6
                  ori          gp, s2, -1499
                  sra          a5, s7, s1
                  srai         t5, s11, 5
                  xor          s5, s7, tp
                  sltiu        s8, t6, -1357
                  sub          a7, s4, a3
                  srl          s3, s3, t1
                  sll          a1, s4, t4
                  sra          s2, a7, s8
                  or           s10, s11, s4
                  andi         t6, t0, 394
                  srai         s10, sp, 14
                  nop
                  srl          s7, t5, s4
                  sltu         s5, a7, s0
                  xori         a7, a7, -1586
                  slti         s7, zero, 1388
                  slt          s0, s5, t4
                  ori          t3, s6, 1197
                  and          s2, ra, s8
                  sra          t5, s0, tp
                  sll          a6, s10, t6
                  nop
                  xori         a3, a4, -1216
                  nop
                  andi         a1, s1, -1560
                  add          t0, s2, s6
                  xori         a0, s8, 1607
                  slt          s3, t0, t3
                  slli         t1, a4, 6
                  xori         a2, a2, 583
                  sll          t1, a6, t2
                  slti         sp, s1, 1271
                  sub          ra, t2, t2
                  andi         s11, t5, 1969
                  slt          s0, t0, a1
                  ori          a1, t6, 879
                  or           s5, s11, a0
                  sra          a6, t6, ra
                  auipc        s11, 17797
                  sltu         zero, s9, t2
                  add          s10, t3, s1
                  nop
                  or           a3, s9, t4
                  sltu         t3, s6, t2
                  or           s1, t0, tp
                  sll          a5, a7, s4
                  ori          t5, ra, 742
                  ori          s8, a1, -319
                  sltu         gp, s7, s10
                  srai         s11, s2, 23
                  auipc        gp, 839735
                  or           t5, t6, t0
                  srli         a3, t3, 13
                  auipc        t3, 89808
                  sub          a1, t3, sp
                  xor          t6, s6, s9
                  xor          s0, s6, a2
                  xor          gp, t1, t5
                  sll          t6, ra, t5
                  nop
                  sll          s8, a7, t0
                  and          s6, a1, s0
                  sub          a1, a1, a3
                  andi         a7, s6, 1106
                  sll          zero, a0, s7
                  sll          t6, s6, t6
                  slti         s4, t4, -900
                  nop
                  sll          ra, a3, t2
                  or           s5, a1, ra
                  andi         s11, a0, 952
                  auipc        ra, 1043237
                  add          t6, t3, a2
                  lui          s11, 29896
                  xori         a7, sp, 871
                  slt          s5, s5, a0
                  addi         s8, t5, -835
                  xor          t2, sp, s3
                  andi         s7, a6, -1678
                  slt          sp, t1, a5
                  and          a5, sp, s3
                  srli         t3, ra, 18
                  sltu         gp, t0, t0
                  sltu         a0, a2, sp
                  nop
                  slt          a1, a4, a2
                  sltiu        ra, s7, 1376
                  slli         t1, a2, 5
                  lui          s6, 217563
                  sra          s11, s10, t0
                  nop
                  add          tp, s0, t4
                  sll          a2, t6, gp
                  slt          a5, t3, s3
                  add          sp, a1, t0
                  srli         tp, a3, 31
                  srai         tp, s8, 5
                  or           t6, s10, a2
                  addi         a3, t6, -1121
                  addi         a2, a4, -622
                  sub          s2, t2, s5
                  add          s5, s0, t6
                  auipc        s4, 57515
                  xor          t5, sp, s1
                  sltu         gp, s9, tp
                  sltiu        s10, t0, 17
                  add          a5, t4, a7
                  slt          s1, a3, t6
                  srai         a2, zero, 3
                  sltu         gp, tp, s11
                  srai         a2, s1, 18
                  sub          a7, t3, s6
                  or           a2, s9, s0
                  sll          a3, a6, a5
                  srli         s7, s6, 18
                  addi         t0, s2, -571
                  addi         ra, s10, 957
                  sub          sp, s4, t5
                  srai         t6, s1, 0
                  sltiu        zero, ra, 137
                  add          t1, a3, s7
                  andi         a6, a6, -1098
                  srl          zero, t5, s4
                  lui          a1, 150988
                  srl          s1, tp, s11
                  sra          zero, a1, a0
                  slti         a7, a0, -1540
                  srl          t2, s0, a1
                  xori         gp, t5, -1407
                  sll          s6, a6, t1
                  sltiu        t2, s10, 261
                  slli         gp, s5, 23
                  srli         s6, t2, 15
                  ori          a0, a3, 1179
                  sll          a6, a1, a1
                  sltiu        s4, s8, 2000
                  sra          a7, a4, s7
                  sra          s2, a2, s0
                  srai         zero, s1, 26
                  sra          s0, s2, t6
                  slt          t6, t1, s1
                  andi         t6, zero, -1688
                  xori         t0, s9, 897
                  srli         zero, zero, 8
                  sub          a2, t3, s7
                  xor          a1, s8, a2
                  sub          ra, s8, a2
                  or           s10, sp, ra
                  srli         gp, tp, 10
                  srai         t6, t0, 3
                  srai         zero, a7, 15
                  sltu         s1, s2, s8
                  sltu         a7, s6, t4
                  andi         a1, t6, -1127
                  xor          t1, a6, s7
                  sub          tp, a3, s7
                  xor          a3, sp, t5
                  lui          t6, 102137
                  xor          s1, a3, s7
                  sltiu        t5, t6, -191
                  sll          gp, t5, t5
                  andi         a0, t4, -330
                  srl          t3, t6, a3
                  nop
                  slt          s2, a5, a5
                  ori          s2, t5, 91
                  sltiu        gp, s10, 558
                  sll          s0, t6, t3
                  lui          t5, 639563
                  lui          t2, 340871
                  sub          t2, s8, ra
                  or           gp, t6, s3
                  srai         a0, a6, 6
                  and          t1, t0, s11
                  slt          tp, s8, t1
                  lui          s2, 748827
                  slli         a7, ra, 20
                  addi         a7, a1, 1885
                  ori          s10, s5, 1621
                  slt          a1, a1, s6
                  ori          ra, s11, -742
                  xor          a7, s6, zero
                  andi         t1, s6, -871
                  nop
                  nop
                  sltu         sp, t3, s3
                  andi         s10, s7, 1834
                  slt          s10, a7, s9
                  srl          gp, s4, s11
                  slli         a0, a0, 7
                  srl          a0, t3, gp
                  slli         s2, tp, 20
                  slti         a3, a1, 1425
                  srai         zero, s5, 7
                  andi         a2, gp, 1636
                  sll          a1, a4, a7
                  andi         a3, a0, -532
                  add          t5, a4, t4
                  or           a6, s11, zero
                  srai         s2, gp, 8
                  sltiu        s4, s11, 457
                  srai         s11, a1, 25
                  sra          a7, s0, s6
                  slli         zero, zero, 16
                  sltiu        s6, a3, -1949
                  andi         t1, s10, -1179
                  lui          s8, 933957
                  or           s4, s2, t4
                  and          s4, t2, a0
                  ori          sp, t3, 43
                  lui          t1, 1009587
                  srli         a5, s3, 9
                  andi         s2, sp, -1930
                  slt          s10, t6, s0
                  srl          s0, s5, s0
                  srli         s2, a7, 19
                  andi         a2, tp, -1778
                  sub          a7, s3, s6
                  nop
                  auipc        t6, 305743
                  sra          s4, a6, s10
                  ori          a0, zero, -638
                  slti         a7, t6, -722
                  addi         t5, s8, -1718
                  slt          s2, s4, s5
                  slti         s7, s11, 1784
                  sll          tp, s9, s10
                  lui          s1, 694688
                  addi         a2, s5, 1214
                  slt          s2, t0, t1
                  sltiu        s7, a2, 522
                  and          t6, t5, t0
                  or           a3, t0, sp
                  xor          s6, s0, a6
                  sll          s1, s5, a1
                  addi         a1, t1, -859
                  or           gp, sp, s0
                  and          s1, s3, s4
                  slli         s4, s2, 4
                  slt          t0, a6, a4
                  sub          t5, t2, s0
                  lui          t5, 685193
                  and          s0, a0, zero
                  auipc        a1, 854183
                  addi         s2, a2, 1864
                  lui          s1, 886880
                  slli         t0, s0, 3
                  or           a7, s11, a2
                  and          s8, t5, s11
                  sltiu        a0, s11, -1979
                  slti         a5, a0, 729
                  srai         t3, s6, 27
                  xori         a7, gp, 1730
                  nop
                  addi         t3, t5, -297
                  andi         s5, s10, -1865
                  srai         a0, t2, 16
                  and          a5, s7, a5
                  slli         s0, t1, 5
                  nop
                  sltu         t6, t6, t0
                  andi         ra, zero, 558
                  sll          t0, t4, t5
                  or           s5, t0, s10
                  xori         s3, a1, 1374
                  srl          a5, a6, s3
                  slli         s6, a4, 30
                  or           a1, s6, a3
                  srai         a2, s5, 8
                  sll          a2, s1, s2
                  andi         s0, a0, -1345
                  sll          gp, t6, s3
                  sra          s1, t6, a4
                  slti         sp, a5, -512
                  sltu         tp, zero, s10
                  sll          a6, s6, t2
                  or           sp, a2, gp
                  slli         s6, gp, 7
                  slli         sp, zero, 23
                  slt          t0, t6, s10
                  srl          t6, gp, t3
                  srl          s3, s2, gp
                  slli         s3, s1, 4
                  sll          s3, s2, s7
                  slli         a5, s11, 19
                  xori         s1, a4, -611
                  andi         a6, a2, 586
                  add          s8, tp, s8
                  add          t3, s8, s6
                  addi         t5, s7, -972
                  slt          s2, s10, s7
                  xori         a6, s0, -500
                  and          s8, t3, a2
                  srai         s0, a1, 6
                  srai         a1, a0, 2
                  slti         s6, s1, -1938
                  xor          zero, s4, t1
                  or           s4, a7, s5
                  xori         s8, ra, -1187
                  xor          s5, a6, s8
                  andi         t0, a4, 1951
                  sltiu        s8, tp, 1016
                  slli         s5, s5, 10
                  sltiu        s6, t2, -1510
                  nop
                  sra          s2, a5, s1
                  srai         a0, t5, 28
                  srai         a0, s4, 27
                  srai         s7, t0, 12
                  srl          a0, sp, t2
                  slti         a3, s7, 1810
                  sub          s8, t2, s8
                  sltu         a0, t3, ra
                  auipc        s3, 935470
                  andi         t2, s9, -827
                  lui          s4, 915384
                  sub          s8, t0, tp
                  slti         gp, sp, 1929
                  slt          a6, a0, t5
                  lui          t0, 690209
                  sra          sp, t0, tp
                  xor          s3, s8, a5
                  lui          t6, 145279
                  addi         tp, t6, -1712
                  sltiu        a5, t4, -1406
                  sub          s4, t5, tp
                  slli         s11, zero, 6
                  add          t6, tp, tp
                  add          t2, a7, t6
                  ori          a7, a7, 660
                  sub          s11, a2, s6
                  nop
                  sll          tp, a2, a4
                  sub          t1, t1, zero
                  sll          tp, sp, s3
                  sra          a2, s6, t3
                  sll          s2, s1, ra
                  slli         t5, a2, 5
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s6, 0x80000000
                  li           s10, 0x80000000
                  li           t1, 0x84990534
                  li           a7, 0x80000000
                  li           a1, 0xb903aeb
                  li           a0, 0x80000000
                  li           tp, 0x845efc78
                  li           a5, 0xffffffff
                  li           t3, 0x80000000
                  lui          s6, 529498
                  add          a5, tp, tp
                  sub          s5, tp, s6
                  auipc        a1, 495961
                  auipc        tp, 190435
                  add          a1, a1, tp
                  auipc        a0, 189165
                  add          a7, a5, s5
                  addi         s5, s10, -183
                  add          a5, a5, t3
                  add          tp, tp, a5
                  lui          t3, 65419
                  addi         a5, t1, 173
                  add          t3, a5, t1
                  add          t3, tp, s5
                  addi         t3, a7, -896
                  sub          a0, s10, s10
                  add          t1, s5, a1
                  lui          a0, 337895
                  auipc        a7, 837138
                  add          s6, s6, t3
                  sub          a5, a1, a5
                  add          tp, a0, a5 #end riscv_int_numeric_corner_stream_4
                  sltu         t1, a2, a4
                  slli         s8, a1, 29
                  andi         s10, t6, -1565
                  andi         s8, ra, -422
                  slt          s0, t1, tp
                  or           a6, a0, a1
                  srai         s11, s9, 10
                  srl          a2, s9, tp
                  sll          t0, a1, a2
                  and          a6, s1, sp
                  slli         zero, s7, 15
                  andi         zero, s4, 1686
                  ori          t3, t6, -946
                  xor          ra, s6, s9
                  auipc        zero, 57217
                  srl          s6, a7, tp
                  slti         t6, s9, 1309
                  slli         ra, s8, 21
                  sltiu        tp, ra, 1707
                  xor          t2, t1, gp
                  sltu         a5, sp, s3
                  sra          ra, s11, s8
                  sltu         a5, a5, s3
                  slli         s4, s9, 21
                  sub          a0, t3, s0
                  sll          a3, t6, a4
                  addi         t2, a1, 1095
                  andi         gp, a5, -1334
                  auipc        a1, 859780
                  sub          s8, s3, gp
                  addi         s5, s4, -1904
                  lui          a6, 85334
                  and          s0, s0, a7
                  or           a7, t6, s3
                  slli         a6, t2, 30
                  sll          s5, tp, t4
                  sub          gp, t4, s0
                  add          t1, a1, a5
                  add          a3, sp, t5
                  sltiu        a5, ra, 455
                  slt          ra, a2, t2
                  xor          ra, zero, s4
                  and          t1, s0, sp
                  or           zero, zero, t0
                  lui          ra, 932798
                  slli         a6, s2, 6
                  slti         a7, s11, 83
                  srli         t1, ra, 21
                  and          t6, s0, t0
                  and          t0, s9, t5
                  slli         tp, s5, 19
                  or           s5, s4, t5
                  andi         t6, gp, -1970
                  nop
                  auipc        s5, 540759
                  sra          a2, s3, zero
                  sra          gp, a3, zero
                  sra          s5, a2, t0
                  auipc        a3, 365658
                  xori         t6, s4, -773
                  srli         t5, s8, 12
                  xor          t6, s2, s11
                  andi         t1, gp, -617
                  ori          s1, s3, -781
                  addi         s8, a3, 475
                  addi         a6, t3, -1052
                  sub          a0, t0, s7
                  srli         t2, gp, 5
                  lui          sp, 865728
                  andi         a1, t0, -752
                  ori          t0, gp, 1033
                  sub          a1, a3, t6
                  add          ra, t2, tp
                  or           s0, s1, gp
                  srli         t5, s3, 4
                  slli         a2, sp, 22
                  sltiu        s0, t6, -584
                  xori         ra, a4, 930
                  srl          s2, a3, s2
                  sltiu        tp, zero, 526
                  sltiu        ra, s0, 434
                  srai         t6, t2, 1
                  srai         s3, s2, 18
                  srli         s1, gp, 8
                  ori          sp, gp, 312
                  and          s7, s11, a7
                  addi         a7, tp, -1455
                  ori          s1, s9, 370
                  add          ra, a4, t3
                  srli         s11, s11, 4
                  srai         s8, s3, 13
                  xori         s3, sp, 1969
                  srai         s6, zero, 23
                  slti         s5, s4, 1664
                  slt          a3, t5, s7
                  srl          s3, a4, t0
                  slt          a2, sp, a6
                  sra          a6, s8, sp
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           gp, 0x0
                  li           s5, 0x0
                  li           t6, 0xc643b8f3
                  li           s0, 0xe8870a56
                  li           t3, 0x1cfae627
                  li           s8, 0x642e2fdf
                  li           a1, 0x1aadce22
                  li           s3, 0xf55c5120
                  li           a2, 0x80000000
                  nop
                  sub          s5, t3, s0
                  auipc        s5, 386244
                  add          t3, a1, s3
                  sub          t6, s5, gp
                  lui          gp, 600719
                  add          a1, s3, a2
                  nop
                  lui          s3, 588914
                  lui          a2, 927065
                  add          t6, s0, s8
                  lui          a2, 576994
                  add          s3, s3, a1
                  auipc        a1, 57833
                  lui          t6, 820346
                  nop
                  sub          a1, a2, s5
                  auipc        s8, 816046
                  nop
                  nop
                  auipc        gp, 106462
                  auipc        a1, 143347
                  addi         t3, s3, 752
                  auipc        s5, 334042
                  lui          t3, 740763
                  lui          s8, 221549
                  sub          s5, s8, s0
                  add          s3, s0, a1
                  sub          a1, t6, gp
                  add          a1, s0, s0 #end riscv_int_numeric_corner_stream_25
                  slt          s10, t4, s10
                  andi         s5, s9, 1001
                  srli         a0, a5, 23
                  sltu         s1, s9, s0
                  lui          a2, 414442
                  slli         s6, a2, 26
                  srli         a6, sp, 23
                  lui          a6, 493094
                  sll          s10, t5, t5
                  slti         s3, t5, -1523
                  sub          s3, s1, s7
                  xori         t2, s6, 542
                  lui          s7, 329517
                  sltiu        s4, t6, 1427
                  addi         a0, t3, 880
                  ori          a0, a1, -1844
                  andi         a5, s2, -1348
                  sll          ra, a6, t4
                  srai         a2, s2, 22
                  srai         s1, gp, 14
                  sltiu        t1, a3, -1436
                  ori          s11, a4, 675
                  or           t6, s11, a1
                  xori         a5, s1, 1499
                  and          s10, s0, s4
                  lui          a2, 874487
                  sub          s6, a0, a4
                  slt          t2, s0, t6
                  sub          t2, a3, a3
                  and          s1, t1, s0
                  sll          s1, a5, s4
                  or           s10, t3, t0
                  sltu         ra, a1, gp
                  slli         t0, s8, 19
                  srai         s3, zero, 14
                  addi         s4, a2, -1810
                  slti         s5, tp, 984
                  or           t2, tp, gp
                  lui          a1, 364593
                  addi         a5, s3, -1075
                  ori          sp, a3, 378
                  andi         s1, gp, 96
                  add          s10, sp, s11
                  sll          ra, a1, t0
                  lui          s1, 499788
                  slti         s2, s1, 585
                  sltu         a3, gp, a3
                  slli         a6, t1, 20
                  or           zero, zero, t4
                  srl          s8, s11, s1
                  srli         s10, t6, 15
                  slt          s4, s4, s5
                  addi         t3, s0, -391
                  ori          a1, s9, -84
                  and          s8, s8, s7
                  add          s6, s0, s0
                  xor          s8, a3, ra
                  xor          gp, s0, a5
                  auipc        a5, 130251
                  and          t3, t6, s6
                  sltiu        s0, s10, 595
                  ori          s4, s9, 1725
                  lui          s1, 774331
                  xori         sp, s3, -1745
                  ori          a1, s8, 1813
                  slt          t3, s8, s2
                  nop
                  sra          sp, s3, s8
                  sub          t2, t4, a0
                  slti         s1, ra, 1225
                  addi         s4, s7, 887
                  and          s10, a5, t3
                  sltu         t2, s10, t0
                  add          s5, a6, a4
                  addi         s8, gp, 1828
                  add          tp, s1, t1
                  or           s3, tp, a4
                  sltu         a7, s8, s0
                  sltiu        t2, gp, 1665
                  auipc        gp, 627128
                  slli         a7, a1, 20
                  sll          sp, sp, gp
                  srl          s6, a7, t3
                  srai         sp, t3, 1
                  auipc        s7, 257393
                  srai         tp, a4, 23
                  sll          s8, s10, t6
                  slt          s0, s10, s2
                  sra          t1, a6, a3
                  srli         t0, t5, 1
                  srai         a3, s3, 8
                  sll          gp, sp, s5
                  srl          a1, s11, tp
                  sub          s4, s0, s0
                  slt          a6, s11, s6
                  addi         t0, t5, 1759
                  andi         tp, s5, -1846
                  srai         t2, gp, 23
                  srli         gp, s7, 19
                  sub          a3, a5, s10
                  sub          s2, t5, s6
                  ori          s2, t6, -1857
                  and          s7, sp, t3
                  slti         t2, zero, 1839
                  slt          t3, s11, s7
                  lui          a5, 764587
                  srli         a7, a3, 9
                  addi         a0, s3, -1183
                  xori         s6, a1, -661
                  sll          s4, s8, a6
                  xor          sp, s4, s2
                  xor          t1, s9, s0
                  or           s10, t2, s5
                  sltiu        a1, t4, 1130
                  sltu         a0, s7, a5
                  sltiu        a5, s1, 556
                  srai         t3, t5, 24
                  andi         s10, s4, 2033
                  nop
                  slli         a6, a2, 6
                  slt          sp, t6, gp
                  sltu         s3, a4, a0
                  xori         s7, a0, -1593
                  slti         a2, t5, 1809
                  xor          ra, t1, a3
                  and          s1, a0, a1
                  lui          a2, 154637
                  sra          a7, s0, t5
                  add          s7, ra, a5
                  slli         a7, s0, 29
                  addi         ra, s4, 1210
                  sra          t0, ra, a1
                  xor          s5, gp, a3
                  lui          t5, 461069
                  slti         a6, sp, 1023
                  andi         s11, t5, 462
                  auipc        a7, 753367
                  andi         ra, s4, 175
                  xori         a3, a6, 1259
                  sltiu        a3, a2, 308
                  slli         t5, a7, 2
                  or           zero, s5, s8
                  andi         s10, t3, -1361
                  auipc        tp, 362978
                  sltiu        s1, a1, 452
                  sltu         t2, t6, s7
                  sub          s11, s6, a3
                  slli         t5, t5, 12
                  sltiu        s11, s2, -28
                  slti         t5, s11, -1654
                  add          s0, s10, s10
                  add          sp, a4, t3
                  addi         a0, s9, 28
                  sra          a7, s8, tp
                  xori         s6, t2, -960
                  addi         s6, sp, -747
                  srai         zero, ra, 12
                  add          a5, tp, sp
                  srli         t2, s6, 8
                  sra          s4, s5, s5
                  sltiu        a3, s10, -782
                  and          s3, s3, s8
                  or           a3, zero, a5
                  sra          s8, s5, t3
                  srli         s5, s8, 5
                  auipc        a7, 453560
                  sltiu        zero, a7, -1891
                  slt          s11, t3, s0
                  srli         s11, s10, 24
                  auipc        a3, 759979
                  srl          t5, t0, s0
                  slti         zero, a4, 1978
                  and          zero, gp, s9
                  xor          s11, t5, s10
                  auipc        s11, 714908
                  or           s7, a7, s10
                  sltiu        s2, s3, 879
                  or           s6, gp, a6
                  or           a1, t0, a5
                  andi         tp, s4, -1281
                  ori          a3, sp, 448
                  sra          s4, s10, a6
                  sub          a6, t1, a1
                  addi         a7, sp, -463
                  sra          t1, t3, a7
                  slli         s4, a5, 3
                  lui          a1, 85347
                  auipc        t3, 408466
                  nop
                  and          s0, t3, a5
                  auipc        s10, 390081
                  or           zero, a6, a7
                  xori         a3, t2, -1283
                  xori         s11, t3, -1612
                  srai         gp, a5, 23
                  xori         a6, s9, 1838
                  lui          t1, 410347
                  slli         t1, tp, 4
                  sll          t5, s10, a6
                  srli         s5, s8, 19
                  sll          s2, s4, s1
                  lui          s8, 864502
                  sub          t5, s5, s6
                  slt          t1, gp, s8
                  and          a1, t6, tp
                  nop
                  slt          s7, s3, t0
                  ori          s5, a0, 1243
                  sltiu        s4, a1, -1293
                  add          t1, a2, t0
                  auipc        a3, 869738
                  lui          a2, 303134
                  lui          t3, 887183
                  ori          t2, a0, -970
                  srl          sp, t0, s10
                  sltu         t1, s8, s4
                  add          t5, t4, zero
                  or           a0, a1, s11
                  srai         t3, a2, 2
                  sra          t3, s10, t0
                  auipc        gp, 624753
                  sltu         s2, s7, s4
                  or           s1, a2, a4
                  srai         s7, t5, 6
                  ori          s6, s4, 1133
                  srai         gp, t2, 15
                  auipc        s10, 2555
                  or           a7, a6, s7
                  slt          a5, a1, s1
                  slt          a7, gp, a6
                  srli         a6, t5, 4
                  srl          zero, s0, s8
                  or           t1, t4, t1
                  sltu         zero, s7, s7
                  srli         a2, s0, 22
                  sltiu        gp, zero, -533
                  add          s2, s9, t1
                  sll          a3, a6, s1
                  slli         a3, s0, 22
                  andi         a1, t6, -227
                  ori          s3, gp, -796
                  sltu         tp, t1, a5
                  ori          t0, ra, -853
                  slt          gp, s9, a7
                  ori          s6, tp, 1303
                  ori          a0, ra, -1484
                  srl          t0, s0, zero
                  and          t1, a7, s11
                  slti         t6, t6, -1103
                  srl          ra, s11, s0
                  ori          s6, t6, -1966
                  add          s3, t2, a3
                  auipc        s11, 38571
                  sub          ra, t4, s10
                  addi         a2, zero, -308
                  srai         s7, a3, 2
                  sltiu        s10, s6, 1969
                  srai         a7, s9, 4
                  slti         s4, a6, -1662
                  andi         s7, a5, -1787
                  addi         a1, t0, 644
                  sub          s6, a7, t6
                  sltiu        ra, ra, 769
                  slli         s2, a5, 8
                  srli         a5, s3, 31
                  sltu         s7, zero, s9
                  srli         t0, a7, 9
                  lui          a5, 336255
                  addi         ra, s1, -718
                  sra          a3, t2, s1
                  xor          s8, s0, s7
                  sltu         s11, a0, s8
                  auipc        s8, 750932
                  srl          s11, s5, s7
                  or           t2, s6, t5
                  slt          s8, s4, a6
                  srl          a5, t4, s11
                  slli         a3, t1, 2
                  sltu         a6, s8, s5
                  sra          s11, a2, s9
                  nop
                  add          a0, ra, a6
                  or           zero, s6, s2
                  srl          tp, ra, t1
                  ori          a5, t6, 1787
                  addi         s7, tp, 297
                  slti         s7, s9, 854
                  sub          t5, a1, a5
                  or           t0, s2, sp
                  sltu         a3, s10, a6
                  sltiu        s10, s7, 999
                  or           a2, s4, a0
                  slli         a5, s5, 25
                  li           t0, 0x13658535 #start riscv_int_numeric_corner_stream_0
                  li           s0, 0xffffffff
                  li           s11, 0x80000000
                  li           a3, 0x80000000
                  li           a5, 0x0
                  li           t6, 0x80000000
                  li           tp, 0xffffffff
                  li           a1, 0x80000000
                  li           s3, 0x80000000
                  li           t3, 0x80000000
                  nop
                  lui          a5, 537507
                  nop
                  lui          tp, 88212
                  add          t3, t6, t3
                  auipc        s3, 466952
                  lui          t6, 948207
                  sub          a1, t3, tp
                  auipc        a1, 1013613
                  add          s0, s3, s0
                  add          s3, a1, a5
                  auipc        t0, 625561
                  lui          s0, 28311
                  add          a3, s0, t3
                  lui          s3, 724039
                  auipc        s0, 328519
                  addi         s0, s3, 775
                  auipc        s3, 631976
                  add          t3, s3, s11
                  add          a1, t0, s3 #end riscv_int_numeric_corner_stream_0
                  srl          s3, s2, tp
                  and          s6, a0, s7
                  slli         s5, s5, 29
                  sub          s2, t3, a3
                  srl          t5, s11, s5
                  andi         a1, s1, 1870
                  xor          s6, a4, s2
                  or           zero, s10, a3
                  sltiu        s10, s7, 1028
                  nop
                  ori          a3, t4, -278
                  srai         t2, s0, 24
                  xor          a7, s2, a5
                  nop
                  srl          a5, s4, s8
                  nop
                  xor          s7, a2, t4
                  sltu         s5, gp, a4
                  sra          t5, a3, t6
                  andi         s7, s2, -1755
                  or           t0, t5, zero
                  nop
                  and          a2, s10, t3
                  or           a6, t2, a0
                  addi         ra, s6, 1048
                  srl          ra, a7, s7
                  sra          s2, s4, s4
                  sll          s5, t3, a1
                  sltiu        s8, t3, 1396
                  add          s2, t1, t0
                  xor          s6, a5, t1
                  sltu         a7, gp, a3
                  xor          a7, t1, s8
                  sll          s0, s4, sp
                  sra          s3, a2, s2
                  sub          a1, t2, gp
                  sltu         s6, t3, t2
                  lui          a1, 744559
                  xori         tp, gp, 1765
                  sltu         ra, s1, s11
                  or           sp, a3, a4
                  ori          t2, s11, 54
                  sltu         s8, sp, s1
                  add          t1, a0, t0
                  and          t6, t1, t0
                  xori         s5, a5, 745
                  sltiu        a2, s0, -509
                  slt          s7, a4, a4
                  sub          a7, t0, a0
                  slti         s11, s11, 1071
                  ori          s11, s2, 793
                  sub          t3, a2, s8
                  and          t6, zero, a1
                  lui          s3, 534749
                  add          s11, s10, s3
                  xori         t1, a5, 251
                  ori          s10, t2, 1495
                  sltu         ra, s1, s0
                  nop
                  or           s2, tp, s8
                  slt          s3, a6, tp
                  srai         t0, a1, 27
                  or           s7, a5, t6
                  sra          s0, a2, a3
                  andi         s2, a2, -2041
                  sll          a5, ra, t4
                  sub          s8, s11, zero
                  xori         s11, ra, 1503
                  or           a5, s3, t4
                  xor          s4, s1, s5
                  srl          s2, s11, s2
                  and          t5, a1, s4
                  sltu         a0, t2, s0
                  sub          s11, t5, s10
                  nop
                  sub          a7, t5, a4
                  xor          t5, a5, a4
                  sll          a6, s4, a6
                  xor          s6, t5, a0
                  xori         tp, t1, 1665
                  sra          a5, s7, a2
                  sltiu        s0, a2, 854
                  xori         s1, s2, 874
                  addi         s7, s3, -1911
                  sub          s11, s4, a0
                  ori          t2, s11, -1472
                  srai         s1, a2, 25
                  sra          t6, s5, s2
                  and          a1, s0, s10
                  lui          t6, 518942
                  xor          s5, t5, t1
                  or           sp, tp, s5
                  sltiu        a5, a1, -223
                  sub          s2, a3, s0
                  xori         tp, a6, -1120
                  andi         s1, t2, 692
                  or           s11, s3, a0
                  srli         s6, s1, 5
                  sll          a0, t4, s2
                  sub          a6, gp, t4
                  addi         t5, zero, -75
                  or           t6, s6, s1
                  slt          a5, a0, a6
                  addi         s10, a1, 1294
                  add          a0, a6, t6
                  srl          s0, s0, t0
                  sltu         t0, t0, ra
                  sltu         s0, t2, sp
                  auipc        s10, 589892
                  addi         s5, gp, -1644
                  xor          a2, s4, t4
                  xori         s5, a4, -924
                  sltu         a5, sp, sp
                  or           t3, ra, t0
                  srl          s4, a6, a3
                  slti         t6, t4, 760
                  srli         s10, s9, 5
                  sra          a0, t5, s3
                  sltiu        s3, s4, 1266
                  sub          t0, s0, t1
                  sra          t3, t1, a0
                  ori          s10, a1, 247
                  lui          s0, 949609
                  slt          t0, gp, s4
                  addi         s4, s6, 1492
                  xori         a0, s1, 953
                  srai         s8, s4, 14
                  sltu         gp, tp, s11
                  ori          sp, t3, 1847
                  slli         s1, t1, 30
                  add          sp, t5, t3
                  slli         s10, a3, 10
                  sltu         a3, t5, a4
                  ori          t6, gp, 1127
                  slt          s6, t0, zero
                  sra          s11, s10, s9
                  auipc        s1, 641604
                  sra          a1, a2, t6
                  srai         sp, tp, 22
                  auipc        s10, 970272
                  sub          a7, s5, t2
                  sltu         s3, s4, s1
                  add          s0, a5, t3
                  or           s8, a6, t6
                  xor          a3, t2, s10
                  or           a0, t4, a2
                  sra          s8, t2, a1
                  sub          s8, zero, a3
                  slli         a1, a7, 11
                  lui          s11, 731677
                  andi         s11, s9, 759
                  srli         s11, t1, 29
                  slti         gp, a5, 61
                  sltu         t6, ra, t1
                  sltu         t5, zero, a6
                  and          s1, a0, s0
                  and          s5, a5, s7
                  addi         s2, s1, -833
                  slt          s1, gp, s0
                  slti         s8, t0, 221
                  sll          a1, t5, t2
                  lui          zero, 880822
                  slli         s5, s11, 12
                  slli         s3, gp, 20
                  slli         s0, t3, 4
                  xor          a2, s10, s8
                  add          tp, s11, s2
                  sra          s2, a7, s8
                  ori          s2, gp, -241
                  ori          t3, t6, 84
                  sltu         s6, a0, a6
                  nop
                  xor          t1, s6, s9
                  sub          s10, s11, t4
                  or           s4, s6, a6
                  slt          s4, a1, s7
                  add          t5, t4, tp
                  addi         zero, s3, 247
                  sltu         a1, s5, s11
                  sltu         s10, zero, t3
                  sra          zero, s4, t5
                  sltu         s11, tp, t2
                  lui          t0, 78712
                  auipc        zero, 293144
                  slti         a2, s3, 755
                  slti         s1, s2, 1095
                  xori         t6, a4, -1182
                  addi         s1, s6, 2021
                  add          a0, s0, a3
                  sub          s8, t6, s3
                  slti         s5, a4, 227
                  ori          a2, s8, -1660
                  srai         t1, s10, 13
                  sltu         t1, t6, a0
                  addi         a7, a3, -635
                  nop
                  srl          a5, t5, s9
                  andi         s2, t0, -315
                  addi         s11, a2, -960
                  ori          t6, a6, 1600
                  xori         a2, s7, -125
                  slti         s8, t1, 779
                  or           s7, tp, a7
                  srl          s11, zero, s11
                  addi         gp, s0, 671
                  srai         tp, s1, 19
                  srli         a5, s1, 14
                  or           gp, s5, s5
                  lui          tp, 971136
                  srli         a5, s7, 29
                  nop
                  sll          t6, s0, s7
                  slti         a6, sp, -1826
                  or           a7, t2, ra
                  xori         s2, s0, 854
                  slli         t6, s4, 16
                  sra          s1, a6, s4
                  srl          s2, t4, t4
                  srli         s7, a2, 6
                  lui          s4, 505657
                  sll          s8, a3, s5
                  lui          a6, 365535
                  srl          t5, a7, a7
                  andi         t6, a7, 1703
                  addi         s7, a3, -1857
                  lui          gp, 793711
                  xor          a2, s11, s5
                  xor          s0, zero, s5
                  nop
                  auipc        t1, 929360
                  and          t2, t1, a6
                  slt          s6, a0, a3
                  sra          t2, t1, t3
                  slti         s1, s8, 498
                  and          t6, s7, t3
                  nop
                  andi         s1, a7, -1267
                  slt          a5, s9, s9
                  srai         a3, t3, 8
                  andi         gp, a3, 1432
                  add          s3, s2, gp
                  sll          a7, a0, a1
                  xori         s8, t0, -1483
                  slt          t2, t0, s4
                  srl          s2, s1, t4
                  add          a3, s8, s2
                  srai         a6, t5, 18
                  srli         a5, t4, 15
                  nop
                  xori         t5, s10, 97
                  or           t6, t4, s1
                  slti         t1, s2, -791
                  sltiu        t3, t2, 931
                  sltiu        gp, s6, -1448
                  or           s6, t3, s5
                  sll          gp, s5, ra
                  sltiu        t3, ra, 1473
                  add          s11, a5, a5
                  and          s3, zero, a7
                  xor          a1, t6, s9
                  lui          a0, 800036
                  slti         a6, s10, -718
                  xori         t6, t6, 1120
                  sll          s3, t1, s3
                  srai         a1, s9, 3
                  srai         s0, s11, 13
                  ori          t6, ra, -816
                  auipc        s11, 642066
                  sub          s1, a4, t5
                  ori          t2, a7, -88
                  srai         a6, gp, 6
                  slli         s7, a2, 1
                  slli         s5, s11, 18
                  srai         a7, t6, 5
                  sub          t5, a5, a5
                  auipc        a5, 50719
                  slli         a3, t6, 30
                  slt          s0, a7, a6
                  xori         s8, t6, -15
                  sltiu        t5, s1, 890
                  andi         t1, s3, -890
                  slti         tp, a4, -233
                  sltiu        tp, s10, 597
                  slti         sp, s4, -1199
                  srl          s8, t2, a5
                  srli         s3, s6, 22
                  xori         t1, tp, -1931
                  srli         t0, t0, 4
                  xori         s10, a5, -1589
                  add          s1, sp, t2
                  slli         s3, s8, 0
                  slt          a0, s10, tp
                  sll          a2, a5, t5
                  sub          gp, s2, t0
                  xori         a3, tp, 1864
                  xori         a2, s7, -850
                  sll          ra, s8, a7
                  xori         s6, s2, -1770
                  sltu         a3, a3, a1
                  slli         s5, t3, 19
                  xori         s8, s8, -1189
                  xori         a5, a2, 4
                  xor          a2, sp, s1
                  srli         zero, s3, 20
                  lui          a0, 483419
                  lui          s8, 650815
                  auipc        s2, 596410
                  nop
                  auipc        a6, 782351
                  add          a1, a6, a1
                  sub          t3, a6, s9
                  srl          a6, tp, s3
                  sra          s8, t4, s4
                  add          a6, s6, a1
                  srai         gp, s1, 30
                  slti         s0, sp, 1192
                  sub          a1, t0, a0
                  sub          s4, a0, t4
                  auipc        a0, 598902
                  auipc        t1, 564344
                  sub          s8, t3, t6
                  add          a7, s6, s5
                  andi         a5, t6, -1068
                  or           t2, gp, gp
                  sltu         a5, t6, s9
                  and          s8, s10, t1
                  sub          s1, s2, s4
                  slti         a2, s10, -1386
                  sltu         s11, s5, a4
                  andi         sp, a0, 266
                  xor          t2, a5, t6
                  xor          t5, t6, t2
                  nop
                  srli         a1, t4, 7
                  slti         gp, t6, 670
                  slti         tp, s4, 394
                  xori         t5, s11, 1677
                  slli         s2, s2, 28
                  slti         tp, zero, -1230
                  or           a6, t4, sp
                  sub          zero, t5, a0
                  add          s1, sp, gp
                  sra          s8, t2, t6
                  srli         a5, s10, 24
                  auipc        s6, 604186
                  lui          s3, 484131
                  srli         t6, s10, 10
                  sltiu        a1, t6, 2018
                  sltiu        zero, s5, 1786
                  auipc        a1, 234112
                  sltu         t3, t2, s0
                  xor          sp, gp, t4
                  andi         t3, t6, 874
                  xori         zero, s9, -536
                  add          s2, s0, t5
                  and          gp, t5, ra
                  slli         a5, s11, 1
                  xor          gp, s11, s3
                  sltu         a0, a2, gp
                  slli         s5, t0, 28
                  or           a1, gp, s7
                  sra          a3, s7, s4
                  slti         tp, t6, -1548
                  slt          t5, s6, a7
                  ori          s0, s5, -966
                  sltu         s10, s1, t2
                  slli         t5, s11, 3
                  lui          t1, 581060
                  sll          s5, ra, s9
                  xor          t2, t6, s9
                  sub          a7, ra, a5
                  addi         t5, s1, 1640
                  sltu         zero, t1, t4
                  nop
                  auipc        t5, 308665
                  sltu         a1, a5, s1
                  andi         t0, gp, -908
                  slti         s6, s5, 1723
                  xor          a2, tp, tp
                  xor          a1, t4, a6
                  add          s0, a1, s1
                  and          s1, a0, zero
                  slt          t2, a2, t4
                  xor          t2, a6, s5
                  srl          a7, t5, zero
                  slt          zero, a7, zero
                  slti         s5, t3, 633
                  xor          ra, s5, ra
                  xor          zero, s5, a3
                  srai         t1, s0, 19
                  xor          t5, s4, s8
                  sub          s5, a0, s4
                  sll          t3, a1, t4
                  and          s4, a0, s10
                  ori          a1, t0, -436
                  slli         a7, t1, 12
                  srli         a2, s5, 31
                  sltu         t1, s1, s0
                  sll          s11, a6, a6
                  sll          a2, a0, a2
                  add          s6, s4, t5
                  xori         a3, a3, 1316
                  srl          a0, sp, s4
                  sltiu        gp, sp, -1391
                  slti         t1, s2, 1685
                  andi         t3, a1, -926
                  slli         s1, s2, 14
                  or           t1, a2, sp
                  addi         t6, t3, -603
                  sltu         s0, sp, gp
                  sltu         a6, a0, s4
                  ori          s8, s0, 41
                  slt          s6, s8, s8
                  nop
                  slli         t5, sp, 13
                  slt          s3, t0, t1
                  lui          gp, 855382
                  nop
                  srli         s11, a1, 14
                  sra          s11, a2, t1
                  slt          a7, zero, tp
                  auipc        t5, 240421
                  srli         sp, tp, 10
                  slt          s11, a1, t6
                  auipc        s4, 417252
                  sll          s0, a3, a6
                  sub          a7, t6, zero
                  and          a3, s0, gp
                  or           s0, a4, a5
                  add          s1, a1, s8
                  nop
                  srli         s11, t3, 20
                  and          a7, t2, a2
                  slli         a0, s5, 14
                  slti         a7, s8, 974
                  and          s4, s2, t2
                  sll          s3, s9, s2
                  sltu         a5, s5, t3
                  sub          s5, s2, gp
                  nop
                  sra          gp, t3, a2
                  sltu         t5, s2, a4
                  srl          sp, a4, s6
                  nop
                  sltu         s5, s1, a2
                  srai         t2, t2, 21
                  nop
                  xori         s7, gp, 1958
                  srli         a0, s8, 3
                  add          a6, s10, s7
                  slt          ra, s10, s2
                  lui          gp, 529694
                  or           ra, t2, gp
                  slt          s4, a4, t3
                  xori         s0, s9, -1526
                  nop
                  sll          t1, s3, gp
                  andi         zero, a5, -838
                  sltiu        s10, t4, 230
                  or           t1, s5, a3
                  add          a6, a2, sp
                  sub          s10, a3, a5
                  slti         a6, s3, 371
                  ori          s2, s10, -1616
                  and          s3, t0, s7
                  lui          s7, 187138
                  or           t0, s10, s4
                  slti         a2, s5, -1984
                  sub          t1, t1, s9
                  slti         s0, a4, 1283
                  slti         t0, sp, 646
                  sltiu        a6, a3, 354
                  xori         s11, s7, 1130
                  or           gp, s9, t5
                  xor          t5, sp, s7
                  slt          s11, zero, s10
                  sltiu        t6, t0, -615
                  xor          s7, t3, a6
                  srai         a5, s11, 14
                  slt          tp, a1, s9
                  slti         sp, t0, -1186
                  or           s2, a5, s7
                  slt          a6, s0, ra
                  sltiu        sp, tp, -741
                  nop
                  xori         s0, a6, -1135
                  xori         t2, a4, -1222
                  xor          t2, s10, t1
                  slt          sp, t3, a2
                  sll          a2, t6, s5
                  ori          s10, t3, -1574
                  sltu         s0, a0, t5
                  ori          t2, t5, 170
                  slli         a3, t6, 0
                  sra          t3, s0, t2
                  srai         a5, s5, 26
                  sltiu        a0, a1, 607
                  xor          t0, s9, ra
                  srai         sp, a5, 16
                  and          s5, t6, s9
                  ori          s5, s3, 1435
                  slti         sp, tp, -352
                  srl          s5, a4, t5
                  andi         a5, zero, 1788
                  srl          s1, t5, t1
                  andi         s1, a6, 1179
                  srai         t5, a1, 4
                  sltu         s7, a0, s6
                  sltiu        a0, s9, 800
                  addi         ra, s6, 1731
                  slt          a7, s9, t2
                  slt          a7, s2, s11
                  slti         sp, t0, -1288
                  add          tp, s7, sp
                  sra          ra, t1, s8
                  srli         s0, s4, 22
                  slt          s11, s10, tp
                  sra          zero, a1, t0
                  auipc        s8, 689888
                  sra          a1, s9, t5
                  sub          tp, s8, a5
                  slli         s11, a2, 20
                  xori         s5, a1, -1217
                  srl          gp, s11, s5
                  ori          a1, a3, 461
                  xori         tp, t0, -549
                  lui          a3, 106617
                  or           a2, gp, gp
                  andi         gp, a5, 1646
                  sub          s0, a5, s9
                  ori          s3, t6, 525
                  ori          ra, a2, -510
                  ori          t2, s2, -1329
                  slti         s7, t5, -234
                  ori          a7, t6, 780
                  srai         s1, t4, 16
                  nop
                  nop
                  sll          s0, s2, s8
                  sub          s2, ra, s11
                  slt          s8, s9, s7
                  and          t1, t1, s6
                  nop
                  ori          zero, t5, 915
                  sub          t5, s2, sp
                  sub          t6, s11, s10
                  or           s11, ra, a1
                  srai         s2, s9, 22
                  slli         s6, gp, 0
                  sll          s1, sp, t1
                  slli         s10, s2, 17
                  addi         a5, s9, -201
                  sra          s1, s5, s9
                  slli         zero, a1, 4
                  sltiu        t1, t4, 1412
                  andi         a7, s11, 1361
                  ori          s4, t4, 1855
                  nop
                  slli         zero, s4, 7
                  andi         s0, a1, 2015
                  xor          s3, s3, t5
                  slt          s6, a1, t5
                  xor          ra, s6, a4
                  lui          s7, 777722
                  slti         zero, a0, 85
                  sltiu        t5, s9, 1428
                  slti         t2, a7, 1499
                  sltiu        t5, a2, -1280
                  add          zero, zero, s5
                  ori          a3, a5, 978
                  xor          t2, t3, a2
                  xor          s10, sp, a4
                  and          t3, s7, sp
                  add          a2, tp, a3
                  or           s11, t2, s0
                  ori          s1, a7, -693
                  srai         s2, a0, 7
                  slt          t2, a6, s3
                  slt          t0, a0, s1
                  lui          a0, 303782
                  srli         a0, s8, 14
                  and          s0, a0, t0
                  and          a2, s10, s3
                  ori          a3, a3, -686
                  srl          t5, sp, t1
                  sub          s11, s2, s6
                  xor          a2, ra, t4
                  lui          a7, 78632
                  sub          t3, s8, t4
                  slt          sp, t4, ra
                  slti         ra, s7, 420
                  or           s1, t6, s7
                  xor          t6, s3, a7
                  srl          a1, s5, s11
                  sub          gp, a1, s11
                  slt          t0, s3, s2
                  slli         s0, t2, 5
                  auipc        s0, 985307
                  slti         s6, t2, 328
                  sltiu        gp, s4, 633
                  sub          tp, s1, a2
                  or           a6, t0, a0
                  slt          gp, ra, gp
                  xor          s0, t4, tp
                  srli         a2, s1, 18
                  addi         a6, t3, -1578
                  slli         s1, a4, 19
                  ori          s6, a7, -674
                  sll          s3, a3, a4
                  or           s5, s5, s11
                  sltu         t3, a3, s8
                  srli         a6, s6, 27
                  ori          t2, a1, 392
                  or           t0, a1, s11
                  andi         s5, a2, 1218
                  slti         a0, a0, -801
                  and          t1, t6, s2
                  sll          t5, s7, t6
                  nop
                  ori          s3, s0, -339
                  slt          a3, t4, a3
                  ori          a0, s5, -1322
                  xori         s1, s4, -605
                  sltiu        s3, t0, -1342
                  addi         s5, s2, 1203
                  ori          s1, s0, -737
                  xor          s4, t1, s1
                  and          a2, s1, s4
                  srai         s1, s4, 2
                  andi         a0, s8, 1231
                  lui          a3, 948332
                  nop
                  andi         a0, a1, -562
                  sll          s5, s6, s5
                  sltu         a1, gp, s11
                  sltu         t2, s10, s7
                  srli         s2, a6, 18
                  xor          a0, s0, a5
                  srl          t3, s3, ra
                  srli         s11, gp, 10
                  srai         s10, s8, 13
                  slti         a1, s1, -30
                  or           a1, s1, s5
                  sltu         t0, t2, s7
                  xori         s6, a6, -1089
                  slli         t0, t3, 24
                  xori         t1, t2, 2025
                  addi         s3, s11, -1115
                  sll          s7, t5, s9
                  addi         s8, a1, 946
                  slt          s1, t1, t5
                  or           s8, a4, t1
                  nop
                  slli         s0, t1, 8
                  add          a6, a1, a6
                  ori          s6, a7, 1106
                  add          s3, a7, s7
                  lui          a7, 416875
                  sltiu        t2, s7, -1806
                  sra          t6, gp, t1
                  add          s5, a7, ra
                  xor          t5, a6, s8
                  sltiu        a0, t3, 153
                  add          a7, a3, a1
                  xori         ra, s6, 943
                  andi         sp, s10, -470
                  auipc        t0, 545013
                  and          t2, a1, t4
                  slli         s3, sp, 6
                  sltiu        t2, s8, 1065
                  addi         tp, a6, -1689
                  auipc        s10, 559169
                  sub          t6, t4, s3
                  sra          s3, a5, s10
                  and          s8, a6, s10
                  ori          t2, t0, 1818
                  srai         s0, s11, 9
                  xor          t6, a6, a3
                  sub          s2, s9, t6
                  and          zero, zero, a3
                  slti         t5, s0, -674
                  slti         a1, s2, 744
                  andi         a2, s6, 530
                  add          s5, t2, t0
                  nop
                  sub          s10, s8, ra
                  srai         a7, s1, 24
                  xori         s0, s6, 1174
                  or           tp, tp, t0
                  add          s5, a7, t6
                  srli         s11, s3, 13
                  xor          s3, a6, t6
                  nop
                  sub          t3, s1, sp
                  sra          s2, t4, a3
                  xor          t3, sp, a4
                  lui          s4, 735988
                  sub          s5, a0, s3
                  andi         a3, s3, -503
                  slti         t5, t3, -226
                  slti         s10, t1, -1584
                  sub          a6, a5, a0
                  lui          s6, 618952
                  ori          tp, a0, 925
                  sltiu        ra, a4, -950
                  and          t2, t5, s3
                  auipc        s8, 705573
                  slti         a2, s0, 1237
                  andi         t1, s3, -1825
                  sll          ra, s7, s5
                  srai         s8, ra, 12
                  srli         s10, t2, 8
                  slli         zero, ra, 21
                  and          s11, zero, sp
                  andi         a0, tp, -1008
                  srli         ra, t2, 6
                  srli         a2, s9, 22
                  sltu         s10, s0, sp
                  or           s10, t4, zero
                  slli         ra, s3, 24
                  srai         s0, s1, 30
                  sra          tp, s11, s0
                  srai         s4, s2, 28
                  xor          s1, s2, t2
                  srl          t2, s2, s11
                  sll          s11, s5, zero
                  slti         s0, t3, 345
                  andi         a0, s9, 356
                  xori         s7, s3, -50
                  auipc        tp, 1030209
                  ori          t0, s11, -1126
                  ori          t6, s3, 1379
                  lui          sp, 680966
                  add          s6, a1, s11
                  sltu         s10, gp, a1
                  slt          a3, t5, s1
                  sltiu        t3, a7, 384
                  sub          a0, s8, gp
                  srl          s11, gp, s2
                  add          s10, zero, t3
                  slli         t5, a2, 1
                  srli         sp, gp, 13
                  sra          a2, t0, s8
                  nop
                  addi         s8, s4, -849
                  sltu         t0, s11, t4
                  slli         s5, tp, 13
                  xori         tp, s9, -1218
                  srli         t2, a6, 17
                  sra          a1, t5, a3
                  and          s4, ra, t1
                  lui          s6, 363893
                  addi         s3, s4, -1746
                  slti         zero, t2, 1681
                  li           s2, 0xfe10fa7e #start riscv_int_numeric_corner_stream_12
                  li           s3, 0x8e242e58
                  li           tp, 0x0
                  li           t3, 0xca85ed1c
                  li           s5, 0x9cb5206c
                  li           t6, 0x6395b643
                  li           t5, 0x80000000
                  li           a6, 0x642f64a0
                  li           gp, 0x86e1f0af
                  li           a5, 0xd0139c16
                  nop
                  lui          tp, 231538
                  lui          t3, 875288
                  addi         t6, s5, -1005
                  add          a5, a6, a5
                  auipc        t5, 179279
                  sub          tp, gp, tp
                  sub          gp, t5, s2
                  lui          a5, 640026
                  lui          a5, 153952
                  nop
                  sub          t5, s2, tp
                  addi         gp, s3, -4
                  add          gp, s5, a6
                  addi         t6, s3, -1374 #end riscv_int_numeric_corner_stream_12
                  add          a5, t5, a4
                  sltu         t2, t0, s10
                  or           a2, s1, t0
                  lui          s11, 169227
                  srai         ra, s10, 22
                  srai         s0, t6, 24
                  nop
                  sub          a1, t3, a6
                  srl          zero, t3, t0
                  srli         t0, t6, 4
                  slt          t5, s10, s2
                  or           ra, s3, a3
                  slt          s6, s0, t2
                  sra          t2, a6, t5
                  srl          a7, a1, a3
                  srai         a3, s10, 29
                  sltu         t1, t6, t0
                  add          s10, ra, s4
                  sra          a3, t1, s11
                  srl          a0, t4, a6
                  nop
                  sltiu        t5, a4, 223
                  sll          s11, t5, t6
                  xori         s7, t0, 748
                  srai         t5, s6, 17
                  nop
                  sll          t2, s2, t6
                  and          tp, s1, zero
                  lui          s3, 935632
                  sub          a7, a1, s5
                  ori          s1, a6, 593
                  addi         t6, s11, 737
                  srl          s0, s4, a0
                  lui          a1, 677953
                  nop
                  ori          zero, s6, -959
                  sub          t6, s0, a7
                  sra          s6, a1, zero
                  slli         s7, a1, 21
                  xori         a3, t4, -786
                  nop
                  sltiu        a3, a0, 594
                  srai         tp, a6, 9
                  sltiu        a7, a0, -58
                  slli         gp, t5, 19
                  auipc        s10, 70220
                  nop
                  andi         tp, a3, 1901
                  sltiu        s0, s2, 1440
                  sltiu        s2, a2, 419
                  or           a6, t2, a5
                  xor          s6, s7, t2
                  sub          a5, a5, t1
                  sll          s5, zero, t5
                  sll          t5, s3, tp
                  lui          a1, 822539
                  sra          a5, a5, a5
                  srli         tp, a6, 26
                  slt          a3, s7, s2
                  and          a1, t4, t3
                  nop
                  sub          a0, a0, s11
                  xor          a7, a6, t0
                  sltu         a7, s7, a6
                  srl          t6, t1, t3
                  nop
                  lui          tp, 795054
                  sltu         t3, sp, a7
                  sll          s10, a7, zero
                  add          s10, s1, t2
                  lui          t3, 344894
                  and          tp, t5, s0
                  sltiu        t3, t2, -77
                  srl          t0, s3, t0
                  sltu         gp, sp, a6
                  sra          t3, t4, zero
                  xori         t5, t0, 170
                  and          s3, a3, s0
                  ori          t6, s9, 855
                  sltu         s3, sp, t6
                  slti         s10, a2, 1632
                  slli         zero, ra, 20
                  srai         a5, s4, 10
                  sltiu        s3, a0, 1710
                  andi         a6, tp, 1158
                  slti         t0, s4, 1176
                  andi         a0, t5, 1405
                  lui          t0, 676234
                  sll          s10, a0, s6
                  slli         a5, s0, 8
                  ori          t6, t1, 928
                  sll          a6, s9, s6
                  lui          s5, 171250
                  srai         s8, sp, 4
                  xor          t1, t2, s2
                  or           t0, s5, a5
                  slt          t1, s4, s8
                  xor          s6, a4, a2
                  srl          s11, gp, s10
                  andi         a2, s11, -646
                  addi         a7, s9, 1224
                  ori          gp, a5, -440
                  lui          a0, 465831
                  slti         t0, a6, -941
                  or           s4, a1, a7
                  sltu         s5, t0, s4
                  sub          s1, t2, s1
                  sltiu        sp, t5, -1535
                  auipc        t2, 495712
                  srl          s7, t1, s4
                  lui          t3, 565995
                  slti         s5, s2, 839
                  auipc        t3, 865650
                  srai         s5, t6, 22
                  auipc        t0, 76359
                  sra          t1, s9, s3
                  add          s7, tp, a2
                  ori          s5, s2, -530
                  andi         a1, sp, 902
                  sra          a6, a4, t1
                  ori          a5, ra, 457
                  and          t0, a6, a6
                  lui          s5, 701306
                  xori         sp, zero, -171
                  slti         tp, s5, -1824
                  srai         a3, s11, 10
                  or           s11, ra, s9
                  and          a5, a5, s0
                  nop
                  slt          ra, s9, s9
                  nop
                  slli         s3, s11, 5
                  lui          s11, 330524
                  sltiu        s4, s1, -347
                  auipc        t3, 477894
                  and          a0, s3, t4
                  or           a2, s5, a2
                  xori         t0, t2, -1061
                  auipc        t5, 997612
                  xori         t1, ra, 538
                  nop
                  and          a7, zero, a1
                  addi         t0, s1, -1328
                  sll          a0, t2, a4
                  xor          a1, a3, s3
                  ori          s8, s3, -661
                  andi         s10, s4, -366
                  ori          t1, s8, -2036
                  srl          s5, a4, sp
                  xor          s3, t0, s1
                  sub          a2, t0, s10
                  sra          s0, s8, sp
                  nop
                  auipc        gp, 737108
                  slt          s10, s10, t2
                  sub          s6, a2, a6
                  or           s3, a6, s4
                  slli         zero, sp, 4
                  sltiu        sp, ra, 310
                  srl          s6, gp, a6
                  slti         s0, t5, -1636
                  add          s1, a7, a6
                  slt          s4, s11, s10
                  or           s4, a6, a4
                  slt          t3, a6, a2
                  slt          ra, t3, s6
                  addi         t1, sp, 1177
                  addi         sp, a3, -1275
                  andi         a6, s10, 255
                  srai         gp, t0, 25
                  srai         t5, t0, 21
                  and          t6, a5, a0
                  andi         a3, gp, -498
                  sltiu        s7, tp, 1018
                  slti         s10, s8, 291
                  or           s10, t2, s5
                  or           a7, a1, s8
                  sltu         a3, t1, a0
                  ori          s8, sp, 1690
                  slli         s7, s4, 22
                  sll          t5, a3, s6
                  nop
                  sll          t2, a7, t4
                  slli         s2, s9, 1
                  srai         sp, a6, 6
                  auipc        zero, 976138
                  srai         a3, s6, 12
                  sltu         sp, s0, s6
                  srai         sp, s9, 29
                  sll          t0, a2, s5
                  auipc        s3, 634223
                  sltu         s1, a1, a0
                  lui          t2, 793959
                  sub          a2, a3, a3
                  addi         a6, t4, 1353
                  or           s6, a7, t4
                  sra          tp, zero, gp
                  ori          s3, zero, -62
                  slli         t1, ra, 27
                  xor          t3, t5, a1
                  add          s4, s8, s1
                  srl          s10, t5, s6
                  srai         t0, a4, 31
                  sltiu        s2, a3, 1198
                  and          s3, t1, a4
                  sub          s6, t6, a6
                  xori         a3, s11, 1241
                  auipc        s11, 317374
                  sll          a5, t6, t0
                  slt          t5, s1, t3
                  srli         t6, t6, 5
                  xor          gp, s3, s5
                  sub          a1, a5, s6
                  slt          s7, s4, s4
                  sll          s10, s2, a2
                  xori         t3, s5, -521
                  andi         a5, a1, -233
                  sltu         gp, s5, tp
                  add          t3, s0, t1
                  slt          s8, s2, t0
                  auipc        s7, 310718
                  and          a0, s1, s11
                  auipc        t6, 111667
                  srl          s8, tp, s3
                  srai         s1, s8, 29
                  xori         ra, s0, -421
                  srai         s0, a1, 5
                  srli         t2, a5, 21
                  srai         s5, t3, 0
                  srl          s4, s9, t3
                  srl          t0, s5, a1
                  lui          s6, 532136
                  lui          s0, 744579
                  sll          s2, s4, a2
                  sub          t1, s0, t4
                  and          a7, a4, a2
                  addi         a6, t6, 1951
                  xori         a5, t2, 1746
                  xori         s10, s1, 1843
                  and          s6, t3, s2
                  srai         t3, s1, 1
                  sll          s3, a6, t6
                  sll          s0, s4, t1
                  sll          s1, a4, s11
                  auipc        s7, 54414
                  srl          s6, s1, t2
                  ori          a0, gp, 1068
                  ori          a7, s2, 1867
                  ori          s10, t1, -1147
                  srli         s2, t1, 22
                  srli         s7, t0, 19
                  slli         s11, a4, 9
                  add          t2, s11, s1
                  srli         a7, gp, 1
                  srai         a1, s11, 6
                  slt          a3, t3, a5
                  sll          t2, a1, a7
                  sra          tp, t0, s10
                  andi         s2, a3, 1032
                  srai         a2, s5, 26
                  addi         a6, a6, -307
                  auipc        s5, 343883
                  xori         t0, a1, -1061
                  lui          t1, 578278
                  nop
                  sltiu        s5, gp, 764
                  sll          s3, s9, s0
                  srl          s5, s2, a3
                  sra          a0, s2, gp
                  sltiu        zero, a3, 409
                  slt          ra, t2, t1
                  sltiu        t0, s3, -2018
                  xori         t0, a4, 1218
                  xori         t5, sp, -1952
                  auipc        s5, 56662
                  srli         a3, a2, 20
                  xor          zero, t1, a7
                  slti         t0, t0, 1170
                  srai         s0, s2, 27
                  srai         s0, a0, 9
                  xor          s3, a5, t3
                  srai         s10, t1, 30
                  sll          a5, s8, ra
                  xori         s7, a1, 1771
                  li           t0, 0x96bf65e5 #start riscv_int_numeric_corner_stream_35
                  li           a5, 0x80000000
                  li           s7, 0x5d27cc0a
                  li           a2, 0x0
                  li           a7, 0xffffffff
                  li           s1, 0xffffffff
                  li           t3, 0x80000000
                  li           sp, 0x0
                  li           s2, 0xffffffff
                  li           ra, 0x1b7cc784
                  add          a5, a7, t0
                  nop
                  nop
                  nop
                  addi         s7, s1, -1474
                  addi         a5, a5, -665
                  addi         a2, t3, 139
                  lui          t0, 877799
                  nop
                  sub          a2, ra, s1
                  addi         t3, t0, 251
                  sub          s2, a2, s1
                  lui          a2, 897922
                  nop
                  add          a7, sp, a2
                  sub          sp, s1, t0
                  lui          a7, 539435
                  lui          s2, 243951
                  sub          a7, s7, s2
                  sub          s2, t3, t3 #end riscv_int_numeric_corner_stream_35
                  ori          s7, tp, 773
                  sltu         a1, t6, a3
                  slli         t1, zero, 6
                  srai         s0, s10, 18
                  sltiu        s6, s6, -132
                  sll          t6, t6, s8
                  slti         s4, s1, -1318
                  nop
                  and          s7, t0, t3
                  srli         t3, s3, 2
                  srl          a0, a4, s9
                  lui          ra, 236890
                  ori          a7, a6, -538
                  slti         s6, a0, 1679
                  slti         t1, s10, 293
                  xor          a3, s6, s6
                  andi         sp, t6, 1047
                  sll          gp, s2, s8
                  xor          s5, a2, s7
                  lui          a0, 1033117
                  srli         a1, t1, 19
                  slli         t6, t2, 4
                  lui          s10, 661264
                  add          t1, a6, gp
                  nop
                  and          s3, a5, s8
                  slti         s7, a2, -1463
                  xor          s7, sp, t5
                  andi         s6, t5, 601
                  srai         t3, a5, 13
                  xori         t3, s6, 1607
                  xori         t6, a1, -487
                  andi         a3, a6, 129
                  lui          s2, 418406
                  addi         tp, sp, 354
                  slti         a2, s5, 39
                  nop
                  srai         s2, t1, 30
                  slti         s4, t4, -1639
                  slli         t6, t6, 21
                  sltu         tp, s1, tp
                  andi         a5, s1, 1869
                  sltiu        gp, t4, 537
                  auipc        a6, 159379
                  srl          s11, a0, s2
                  sll          s0, s2, s3
                  srai         s1, a2, 15
                  auipc        a7, 270560
                  auipc        a0, 221327
                  and          s2, zero, gp
                  slli         t6, s4, 28
                  slti         t1, ra, 51
                  sltu         s6, a0, s10
                  xor          s11, t6, t1
                  srai         s8, s1, 28
                  add          t6, a6, a1
                  andi         s5, a4, -185
                  addi         s2, s10, 611
                  nop
                  addi         s5, t1, 2026
                  xori         s0, s2, -1275
                  or           a1, t1, s8
                  sltu         s8, t4, s10
                  sltu         s1, s5, tp
                  or           t0, tp, a6
                  or           s1, s11, t5
                  andi         sp, a0, 916
                  sltu         a1, ra, s2
                  sltiu        s3, t4, -1361
                  sltiu        s7, s2, -1366
                  srli         s4, t1, 20
                  xor          s2, zero, s10
                  nop
                  slt          sp, a4, a3
                  and          a5, s11, a2
                  slt          gp, a6, t3
                  srl          s11, s7, s4
                  nop
                  srl          t5, t1, t1
                  sll          t1, s7, s8
                  add          s4, ra, tp
                  lui          s3, 844010
                  srli         s11, gp, 30
                  srl          a0, t1, a3
                  sll          s8, s6, s8
                  or           sp, ra, gp
                  sll          t6, t6, a2
                  sub          s3, a2, s9
                  sltu         s2, s9, s2
                  srl          s5, t4, a2
                  auipc        a6, 343324
                  or           a6, tp, s7
                  xori         t5, s1, -258
                  lui          s2, 167128
                  and          a6, s4, s10
                  srl          s5, t2, gp
                  add          t2, sp, s0
                  sltiu        s3, s3, -210
                  lui          zero, 999705
                  ori          s8, t3, 789
                  nop
                  xori         s7, a7, -104
                  srl          a5, t3, a1
                  sltiu        a3, a3, -1473
                  slt          ra, gp, gp
                  slt          s3, t0, s4
                  xor          tp, s11, t5
                  srai         a3, s11, 11
                  nop
                  lui          a5, 461936
                  lui          t1, 437802
                  or           s8, s11, s6
                  add          t1, t4, s11
                  or           a2, s10, s9
                  srai         s11, s1, 14
                  sll          s1, t5, ra
                  sra          a0, s6, t4
                  addi         sp, t5, -385
                  slt          a7, zero, t2
                  lui          a5, 962945
                  srli         s11, a5, 26
                  lui          s1, 759647
                  sll          tp, s5, s8
                  or           a5, s7, s7
                  slli         a5, t4, 26
                  ori          t2, s6, -202
                  auipc        t6, 713199
                  ori          a1, s5, -1762
                  or           s2, s8, t4
                  srai         t5, a2, 10
                  or           a6, s8, s8
                  ori          s6, s10, 1119
                  ori          ra, a3, -710
                  srl          s7, t4, t6
                  addi         s0, t0, -1692
                  srai         ra, gp, 20
                  andi         t6, t2, 580
                  srli         a3, tp, 1
                  sltu         t3, t4, s4
                  add          s1, s0, t3
                  addi         tp, s10, -2034
                  add          sp, a2, a1
                  sra          s3, s6, a3
                  xori         t6, s9, -305
                  auipc        a5, 471193
                  addi         a6, s7, 828
                  addi         a2, ra, 231
                  lui          t5, 602861
                  xori         t3, s10, 407
                  srai         t0, a5, 8
                  sub          s10, a2, t2
                  xor          s11, t1, s8
                  andi         s5, a7, 1356
                  sltu         s7, tp, a0
                  lui          gp, 243256
                  sltu         a7, s10, t1
                  addi         a6, a1, 711
                  sra          s0, s1, s9
                  ori          t1, s0, 337
                  srl          a2, a4, s1
                  srli         s11, a1, 6
                  andi         a1, gp, -797
                  ori          sp, gp, -1098
                  slt          ra, ra, s11
                  slli         t2, sp, 16
                  sltu         s0, s2, s7
                  and          a3, s4, s9
                  srli         s1, t3, 15
                  sltu         gp, s6, zero
                  srai         a1, t1, 27
                  sub          s5, a2, tp
                  sltiu        s1, ra, -1909
                  sll          zero, tp, t6
                  addi         t6, tp, -1418
                  slti         a7, s7, -99
                  xor          s8, s10, t6
                  nop
                  slli         a7, gp, 29
                  sra          a5, a1, t1
                  addi         ra, s11, 289
                  sltu         a3, t3, tp
                  add          zero, s8, a4
                  sltu         gp, t6, s6
                  slti         s7, t6, -575
                  lui          s5, 974078
                  srli         t2, s9, 0
                  xor          s5, s8, s6
                  auipc        a3, 1004681
                  add          ra, s1, t0
                  srl          s11, a6, a6
                  xori         s0, t3, 1547
                  xor          t1, s4, ra
                  lui          ra, 1020574
                  or           s10, s6, s4
                  nop
                  nop
                  addi         t0, a3, -1763
                  sra          gp, a7, a6
                  srl          s2, zero, t3
                  slti         t5, s10, 922
                  srl          t3, gp, s8
                  lui          a0, 796515
                  xori         sp, s6, 869
                  sltiu        a5, s8, 1375
                  addi         a1, a2, 1142
                  addi         a6, a4, 1150
                  nop
                  slli         a1, t6, 11
                  and          a3, a5, s6
                  xori         a3, t1, -713
                  slli         a1, s4, 18
                  srli         t3, t1, 16
                  srl          a2, a0, s1
                  sltiu        a5, t1, -764
                  slt          s3, t2, s10
                  srai         t6, s11, 21
                  addi         s4, s9, -199
                  xori         t3, t6, 1849
                  or           t3, a3, a4
                  auipc        s1, 660147
                  slt          s2, a5, s0
                  lui          s10, 246985
                  and          tp, t1, t4
                  ori          sp, s9, -87
                  andi         a2, s10, 1668
                  sra          a6, ra, s3
                  slli         a3, t2, 25
                  sra          s5, zero, s7
                  and          t2, s3, a6
                  add          t1, s5, a3
                  addi         a5, s9, -1363
                  ori          ra, t1, 1726
                  nop
                  srai         s10, ra, 3
                  auipc        s0, 912762
                  add          s10, t1, t6
                  andi         t1, s4, -896
                  srl          s5, a7, s0
                  ori          s2, a5, -93
                  srl          s5, a3, t2
                  add          t0, ra, t5
                  andi         s10, s9, 1846
                  sll          s2, t3, a4
                  slt          sp, a6, s0
                  nop
                  sra          a0, s9, s5
                  sll          gp, a2, s6
                  srai         s2, s8, 18
                  add          a1, a0, s1
                  sltu         s4, s6, s7
                  nop
                  slt          s11, t0, gp
                  slt          zero, s7, s2
                  and          a0, s5, a1
                  or           a3, a3, a0
                  sll          a3, s0, sp
                  sltiu        s1, t0, -426
                  srai         a5, s7, 5
                  sltiu        t3, sp, -697
                  slli         a2, t6, 2
                  sll          t0, ra, t4
                  srli         sp, s8, 1
                  andi         tp, t3, -1569
                  slti         a1, t4, -16
                  srli         tp, t0, 7
                  addi         t5, s8, 166
                  srl          ra, tp, ra
                  slli         s10, s4, 10
                  slt          s6, s10, a4
                  srl          zero, gp, t0
                  srl          sp, a4, a0
                  sub          s4, a6, s8
                  slli         s5, t2, 8
                  and          t3, tp, t6
                  srai         s8, gp, 1
                  andi         tp, s1, 1688
                  slti         t3, t2, 1144
                  addi         a2, gp, 1514
                  and          a2, s0, a5
                  ori          ra, t6, 1072
                  andi         t2, gp, 417
                  srli         sp, s6, 30
                  sub          s10, t2, s3
                  nop
                  xor          a5, zero, s7
                  xori         s5, s8, 903
                  andi         s4, sp, 927
                  lui          t5, 211698
                  srli         tp, sp, 27
                  sltu         t5, s11, a5
                  slti         t1, s11, -1409
                  or           a6, tp, s10
                  srai         s6, a3, 9
                  or           sp, s3, s1
                  sub          ra, s4, s1
                  lui          t6, 559529
                  and          t6, a0, a1
                  add          a7, a4, s1
                  sra          s1, tp, t1
                  nop
                  sra          a3, t2, s0
                  lui          s8, 842537
                  srl          s10, t3, t3
                  sltu         t2, s2, gp
                  andi         t3, gp, 1566
                  addi         gp, t5, -2001
                  add          t0, a2, s5
                  sltiu        gp, t0, -1465
                  sltiu        s8, a5, -940
                  srl          tp, t3, s1
                  srl          s7, gp, s3
                  or           s7, s7, s9
                  addi         s2, s10, -177
                  slli         ra, s11, 4
                  or           t1, tp, s3
                  srai         s6, s2, 12
                  xori         s4, t0, 1406
                  sra          s6, s2, sp
                  ori          s4, s0, -693
                  xor          s2, t6, a2
                  and          t6, t2, a7
                  add          t1, a3, s4
                  ori          s5, t0, 612
                  srl          a5, s11, s11
                  and          a5, s0, s4
                  lui          sp, 523936
                  andi         a7, a6, -1228
                  and          t1, s0, s8
                  or           ra, s1, s8
                  or           s8, s8, zero
                  srli         t3, s5, 11
                  auipc        a6, 368451
                  or           s5, t1, s1
                  sll          s10, ra, zero
                  lui          s8, 976392
                  sub          t6, s2, zero
                  sltiu        s5, t0, -1949
                  andi         a0, s9, 1175
                  andi         t5, t0, -854
                  sll          s8, a2, s2
                  slt          a2, s6, s8
                  or           a2, a4, a0
                  srai         s3, s6, 4
                  and          t1, a4, s9
                  or           s2, zero, s1
                  auipc        t1, 826602
                  slt          s10, a1, t4
                  slli         s3, ra, 17
                  srli         s5, tp, 8
                  slt          s8, s2, a4
                  sub          s11, t4, a0
                  and          s10, t1, t4
                  slt          t6, s7, a0
                  slt          t3, s6, sp
                  srai         t6, t1, 30
                  lui          tp, 545365
                  sll          s5, a6, tp
                  nop
                  lui          t0, 309385
                  xori         ra, s0, 1126
                  or           t3, a6, s0
                  addi         t6, t6, 312
                  sltiu        s7, t0, -894
                  add          a1, tp, t3
                  sltiu        a3, a0, 1635
                  sltu         s11, a3, t2
                  sltu         sp, t4, a5
                  xori         s2, t0, -1700
                  nop
                  and          s0, s6, t1
                  auipc        s1, 549408
                  srai         a2, a4, 17
                  slli         t1, t6, 13
                  srl          t6, t2, s10
                  xori         t5, t3, -1821
                  lui          s11, 109612
                  and          s3, t1, t2
                  slt          s4, a6, a7
                  sra          s11, a1, t2
                  srl          tp, t2, a0
                  slt          gp, a7, t1
                  addi         t6, t3, 772
                  and          t6, s1, s9
                  or           a6, a6, a2
                  slt          ra, a5, s1
                  xor          s3, t6, t1
                  sll          ra, t1, zero
                  slti         ra, s3, 1001
                  and          s3, a3, a0
                  addi         a7, s6, -1504
                  and          a6, s10, a6
                  srli         a7, s6, 18
                  ori          gp, zero, 234
                  xori         t5, t4, -1853
                  auipc        s5, 890627
                  sll          t5, t1, ra
                  srl          t0, t3, s1
                  nop
                  li           a1, 0x32114451 #start riscv_int_numeric_corner_stream_26
                  li           gp, 0x61fae42f
                  li           a6, 0x80000000
                  li           a0, 0x80000000
                  li           s0, 0x0
                  li           t3, 0xffffffff
                  li           s5, 0x0
                  li           ra, 0x415ff32
                  li           s7, 0x0
                  li           s1, 0x0
                  lui          t3, 875119
                  lui          s5, 913282
                  addi         s0, a0, 703
                  add          t3, ra, t3
                  addi         a6, s7, 1126
                  add          a6, t3, s5
                  add          s1, s1, s5
                  sub          a0, s5, s1
                  add          s5, a6, s5
                  add          s1, gp, ra
                  auipc        s7, 345836
                  auipc        a0, 290219
                  nop
                  nop
                  add          gp, a1, s7
                  addi         s5, t3, -368
                  auipc        s5, 958133
                  sub          gp, s7, s5
                  addi         a0, a0, 1057
                  lui          a6, 244437 #end riscv_int_numeric_corner_stream_26
                  nop
                  sub          tp, a3, s2
                  slli         t5, s5, 4
                  ori          a0, t5, -23
                  srl          s5, a2, s6
                  lui          s4, 526840
                  xor          s5, t5, tp
                  sltiu        s1, t2, 1803
                  and          s1, s4, s10
                  sltu         s2, s4, gp
                  ori          t2, a6, 917
                  slli         t5, sp, 14
                  addi         ra, s4, -707
                  slli         s8, a1, 29
                  srli         t1, tp, 3
                  sltu         a2, gp, t4
                  srli         gp, zero, 24
                  sub          s6, s0, s3
                  xori         s7, s10, -1871
                  sltu         s2, a7, s6
                  xor          t1, t3, t0
                  andi         s0, s7, 1576
                  sltiu        s1, s10, 1232
                  slli         s4, a6, 31
                  sltiu        s4, t2, -641
                  slti         a6, t4, -1662
                  srli         gp, s0, 15
                  srli         s8, s0, 1
                  xor          s5, t3, s7
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_22
                  li           t2, 0x0
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  li           t0, 0x0
                  li           s4, 0xe24c0832
                  li           s1, 0x0
                  li           s8, 0xffffffff
                  li           s10, 0x0
                  li           s0, 0xa4d74cb
                  sub          s6, s8, t0
                  sub          a2, s1, s0
                  addi         s8, s4, 1301
                  lui          s0, 265198
                  nop
                  addi         s10, t0, -870
                  sub          a5, a5, s0
                  add          t0, s8, s10
                  add          s4, s1, a2
                  sub          s6, s1, s1
                  nop
                  auipc        t2, 62844
                  sub          s4, s4, a2
                  nop
                  lui          t2, 70066
                  lui          s10, 614343
                  addi         s4, s8, -160 #end riscv_int_numeric_corner_stream_22
                  addi         t2, a4, -1093
                  addi         sp, s10, 862
                  sra          a5, t1, t3
                  srli         s8, t6, 16
                  srl          t6, t4, tp
                  srli         a6, a3, 0
                  srli         zero, zero, 2
                  slt          zero, gp, s5
                  sra          s2, a5, a5
                  addi         tp, gp, -923
                  srai         t2, t4, 4
                  sub          s8, a2, tp
                  slt          t3, a4, zero
                  srli         s8, a4, 25
                  srl          t1, a1, s8
                  andi         s0, a0, -442
                  auipc        tp, 86130
                  nop
                  xor          a3, s2, a1
                  nop
                  nop
                  srli         ra, t5, 15
                  andi         s1, s3, 1320
                  or           s11, s2, a1
                  sub          s4, s0, gp
                  addi         a7, s9, 663
                  xori         s8, s7, -1478
                  xori         ra, t1, -1737
                  slti         sp, sp, -1525
                  xor          t3, ra, a5
                  and          t5, s7, sp
                  and          a0, a0, t6
                  sub          gp, a1, a0
                  auipc        a5, 10471
                  sll          a3, s7, s1
                  add          s5, s5, t2
                  nop
                  sltiu        zero, s5, -319
                  and          s4, a4, ra
                  sra          s0, s6, t2
                  nop
                  srli         tp, a0, 18
                  addi         tp, s8, 642
                  addi         t0, s2, -513
                  lui          t0, 94238
                  slli         s4, zero, 16
                  add          s7, gp, a3
                  slti         s6, t1, 829
                  sub          a6, s7, a0
                  sub          a0, t5, s0
                  srli         t3, sp, 7
                  srl          s4, s7, sp
                  auipc        t0, 81539
                  srli         t3, a3, 12
                  andi         s7, s3, -696
                  sra          t0, a3, t6
                  sll          a5, a2, s2
                  sltiu        s7, s10, 647
                  addi         t0, s3, -838
                  srli         s4, s5, 31
                  srai         a5, s2, 31
                  sll          t5, t3, t4
                  srl          s1, s5, t6
                  slt          s4, sp, tp
                  sra          t1, a6, s0
                  sll          t6, tp, t6
                  sltiu        s8, s6, 428
                  auipc        tp, 270943
                  slt          sp, t3, s6
                  srli         sp, t0, 5
                  auipc        s8, 957251
                  slt          s5, t6, t3
                  andi         a5, zero, -594
                  add          tp, a6, t2
                  addi         ra, ra, 2046
                  slti         s3, t0, -1366
                  andi         s4, t1, -356
                  lui          t1, 103622
                  srli         gp, s7, 18
                  auipc        s7, 41742
                  lui          a3, 30828
                  add          s11, a1, s9
                  auipc        t0, 765047
                  sltiu        s11, s0, 567
                  slt          s11, s10, a2
                  andi         tp, s9, 908
                  andi         t1, s4, -129
                  lui          s1, 268432
                  add          ra, s5, a5
                  ori          s0, s2, -1548
                  and          t3, ra, t2
                  sltu         t3, a2, t3
                  sltu         a2, ra, a6
                  sltiu        a6, t3, -565
                  srli         a6, tp, 5
                  sltu         s11, zero, s9
                  slli         a7, ra, 5
                  srai         a1, a0, 29
                  or           s4, s3, t3
                  srl          s5, t3, s4
                  xori         a6, s8, -1195
                  andi         t2, a3, 345
                  srai         s6, s4, 11
                  sltiu        gp, t2, -430
                  srai         t1, gp, 15
                  and          s2, gp, s10
                  or           s2, s3, gp
                  sra          t2, a7, zero
                  ori          t0, s9, 743
                  nop
                  and          s2, tp, zero
                  slli         a0, s4, 16
                  srai         s1, t6, 21
                  sltiu        a2, a5, -1743
                  lui          s6, 188446
                  sra          s6, t2, s3
                  srl          zero, a7, s10
                  lui          t6, 783112
                  auipc        t3, 952281
                  srli         s3, a2, 30
                  srli         t1, t1, 12
                  xori         zero, s5, -771
                  addi         s8, t4, -622
                  sra          s8, a0, a0
                  srai         s7, tp, 8
                  sra          a7, t3, s5
                  sub          a0, s5, s10
                  add          a1, s4, gp
                  andi         s10, a0, 411
                  nop
                  nop
                  auipc        s8, 213431
                  add          t1, t6, s11
                  srli         s11, s1, 16
                  auipc        sp, 832187
                  slt          a5, gp, a4
                  addi         t1, ra, -1777
                  sll          t5, t0, s1
                  lui          a2, 309349
                  addi         a1, s2, 1090
                  sll          a5, t6, s0
                  addi         t5, t0, -325
                  xori         a6, s2, 1650
                  add          t1, s9, t1
                  xor          a2, s10, zero
                  andi         a1, a1, -691
                  auipc        ra, 845064
                  andi         a5, t3, -1754
                  xor          a5, s9, s7
                  slt          a0, t2, a2
                  slli         s10, t6, 15
                  ori          gp, t5, 737
                  or           s2, a6, t3
                  lui          gp, 634650
                  or           s1, t2, a0
                  slli         t1, s10, 13
                  sra          s4, t2, t0
                  andi         a2, a4, 1706
                  sltiu        zero, t0, 557
                  sra          s11, a2, tp
                  addi         s7, s5, 1286
                  srli         a2, a4, 14
                  xor          s3, t2, t0
                  and          a5, t0, s5
                  srl          s6, gp, a6
                  srl          a1, t2, s9
                  srl          a7, a2, a1
                  slli         s11, t5, 27
                  slli         sp, s2, 1
                  lui          s6, 69187
                  sltu         s0, s1, s3
                  addi         s1, a6, -741
                  sub          s0, a6, s6
                  addi         tp, a6, -174
                  sltiu        s11, s6, -226
                  sub          t5, s11, s5
                  addi         t5, t3, -892
                  ori          a2, s3, 2044
                  nop
                  addi         t3, t0, -1240
                  xor          s1, t5, s9
                  sltiu        a7, s0, -751
                  srai         t2, t2, 17
                  sra          a5, s0, t6
                  sra          a1, s2, s5
                  srai         s8, t3, 2
                  ori          a2, t2, -1529
                  and          sp, a0, ra
                  add          sp, s1, zero
                  auipc        sp, 651633
                  srai         s7, s10, 26
                  slt          a7, tp, a2
                  slli         a2, t4, 20
                  add          t2, t4, t0
                  addi         s10, s1, -1728
                  sub          gp, a0, tp
                  lui          t2, 148667
                  addi         a1, s9, 72
                  ori          a5, s5, -853
                  sll          zero, s6, a4
                  addi         s2, a0, -1125
                  sub          ra, s3, s8
                  slti         s11, t2, 201
                  xori         t6, t1, 10
                  slt          tp, s4, s7
                  sltu         s8, a4, s11
                  add          t0, t0, t2
                  and          t2, a4, s6
                  sltiu        s6, sp, -2039
                  sltiu        t0, t4, -1328
                  sub          t6, a7, t2
                  addi         s1, s11, -583
                  sra          gp, s11, s9
                  sltiu        s3, t5, 52
                  xor          t3, a3, s7
                  srai         a5, tp, 7
                  srl          s1, a2, s0
                  slt          s2, a2, a1
                  slti         s3, a2, 1694
                  auipc        s2, 220304
                  slt          t5, s3, zero
                  add          zero, a2, s0
                  auipc        t0, 22665
                  xori         a1, tp, 825
                  and          t0, t4, t2
                  ori          s11, t2, 202
                  srl          a3, s0, s1
                  slli         a6, s1, 7
                  slti         t1, t0, -1596
                  sra          t6, a4, s7
                  sub          s8, a7, a6
                  auipc        s4, 754820
                  sltu         a3, gp, s10
                  and          s5, a0, zero
                  slli         a3, s9, 12
                  andi         s5, a3, -1745
                  sra          s11, gp, s0
                  nop
                  addi         zero, a7, 21
                  add          gp, t6, s7
                  sub          s8, a5, t2
                  xor          t5, a0, s8
                  addi         t2, t3, -602
                  nop
                  srai         a1, a7, 19
                  srai         t2, a1, 15
                  and          s1, s1, t4
                  ori          t3, s7, -1201
                  addi         s3, a3, 1849
                  addi         a3, a1, -679
                  addi         s6, a2, 1631
                  xor          s3, s7, a0
                  auipc        a0, 606250
                  slli         s2, t4, 23
                  srl          zero, a3, t0
                  slti         t0, s2, -463
                  sub          s5, s9, s6
                  andi         s0, a7, -938
                  nop
                  sltiu        t0, s9, -1834
                  xor          sp, s8, a2
                  sltu         a0, t3, a3
                  add          s0, zero, t4
                  xor          s2, s8, zero
                  sra          zero, s8, s7
                  slt          a0, zero, t5
                  and          s3, t0, a0
                  ori          s0, a5, 101
                  sra          a6, s1, s11
                  add          s0, s10, s0
                  sll          s0, tp, t2
                  srai         t1, t5, 6
                  slt          a7, s7, zero
                  sub          a2, a5, s8
                  sll          a2, s5, a4
                  addi         s6, s9, 307
                  or           a1, s4, s4
                  srl          s8, s10, s7
                  auipc        s10, 895921
                  slli         s10, zero, 8
                  addi         sp, s6, -1133
                  or           s1, a7, a1
                  auipc        t0, 398903
                  sra          a3, a5, ra
                  lui          a6, 161640
                  sll          s2, t0, s3
                  sub          a0, t6, s3
                  sltiu        a5, s0, -1894
                  lui          t1, 740684
                  slti         s11, t4, 2047
                  srl          t1, a2, ra
                  auipc        t3, 886674
                  xori         a0, zero, 182
                  sll          s6, t3, s10
                  srli         t0, s4, 1
                  lui          s6, 499816
                  xori         a3, t4, 1168
                  sra          s1, s10, tp
                  nop
                  andi         s5, s1, 955
                  slli         s2, tp, 25
                  and          s6, s0, s0
                  ori          s1, sp, 1856
                  slt          s4, s11, t4
                  addi         s6, s11, 1494
                  sltiu        ra, a0, 920
                  srl          s10, s8, s2
                  addi         s5, a7, -615
                  sub          s7, a7, s4
                  srl          a3, s6, tp
                  srli         t3, s11, 23
                  and          a7, s11, t4
                  slt          s5, t1, gp
                  slli         s7, t0, 9
                  slti         tp, s6, -321
                  andi         s2, s2, -461
                  slti         a7, a6, 1911
                  and          t6, ra, gp
                  nop
                  addi         s11, a7, -405
                  sltu         a1, t3, s4
                  ori          t3, s4, 1052
                  or           s11, s0, zero
                  addi         s10, t0, -1979
                  xor          ra, a2, t2
                  or           s8, s11, s2
                  slti         s6, t1, -85
                  lui          t0, 936720
                  lui          s5, 985523
                  slti         t0, ra, 659
                  xor          s0, s1, s8
                  add          a0, a3, gp
                  sltu         t3, ra, t3
                  sltiu        ra, ra, 1394
                  sltu         a7, a7, a4
                  andi         s3, zero, 1791
                  ori          s0, t3, -1872
                  xor          t3, s6, s11
                  ori          s8, a7, -1547
                  xor          s1, s8, zero
                  srl          s7, a0, tp
                  add          s5, s1, a4
                  sub          a0, s1, s4
                  auipc        t3, 64086
                  ori          t3, t2, -1430
                  slti         gp, t1, -1686
                  sll          sp, a1, a6
                  slt          s10, a4, a3
                  srl          t0, s3, a6
                  and          s7, t6, t5
                  sltiu        t1, t6, -1374
                  andi         s3, s5, -81
                  andi         a6, s3, -1329
                  ori          s0, zero, 1518
                  lui          a1, 29579
                  slt          s7, a5, a1
                  lui          s6, 594092
                  srai         t2, s8, 22
                  slt          a2, a4, t6
                  sltu         a6, gp, s5
                  sltiu        s1, s8, -974
                  add          t5, a4, s9
                  sltiu        t5, s8, 91
                  or           t6, s1, t4
                  xor          tp, s7, s11
                  andi         t6, s1, 1557
                  or           ra, a1, t0
                  ori          s0, ra, -261
                  and          t3, a0, s10
                  slti         s8, a1, -897
                  srai         a3, s3, 15
                  auipc        a3, 30826
                  andi         s3, a2, 1459
                  sltiu        t5, s0, -573
                  sll          s2, t5, s7
                  sll          s6, zero, s2
                  srli         a7, sp, 5
                  sub          s0, s6, a4
                  xor          s2, s3, gp
                  lui          s2, 213350
                  and          t2, s9, a3
                  sltiu        t1, s2, 632
                  andi         s1, t5, -2047
                  nop
                  srli         a7, a6, 13
                  andi         s7, t4, 791
                  xori         s1, a1, -882
                  ori          s7, a1, 1509
                  srli         zero, s11, 8
                  sll          a5, s8, s5
                  xori         t2, a1, -629
                  nop
                  xor          gp, a5, sp
                  auipc        s7, 149958
                  and          t6, s7, s0
                  or           t1, s1, t5
                  slt          s2, a1, s1
                  srl          a1, s4, t2
                  sltiu        t3, zero, -1152
                  andi         s4, t6, -382
                  xori         s5, t4, 889
                  add          a6, a7, a5
                  sltiu        t0, s2, 2011
                  srai         tp, gp, 2
                  sra          a1, s3, tp
                  or           t5, t1, a2
                  auipc        ra, 942661
                  or           a1, t3, t1
                  sltiu        a3, a1, -1842
                  slt          a0, s7, ra
                  slli         t2, a4, 17
                  lui          s1, 244292
                  auipc        s4, 859458
                  slti         s2, t5, 1905
                  srli         t6, a2, 13
                  lui          a3, 93711
                  addi         s5, zero, -850
                  ori          t3, t0, 1794
                  slt          s10, t2, t4
                  slti         s7, s9, -1294
                  ori          a5, s2, 1166
                  srli         s2, s9, 27
                  andi         t3, t6, -77
                  lui          s11, 23874
                  srli         t6, s11, 1
                  xor          gp, s3, s4
                  srl          a3, s7, s11
                  slt          t3, sp, ra
                  and          s11, s7, t6
                  addi         s6, sp, 1371
                  ori          s10, zero, 1732
                  srai         sp, zero, 26
                  sll          a2, t2, gp
                  and          s6, s11, s11
                  sltiu        s6, a7, -1908
                  ori          s6, a5, -1225
                  srl          s10, a5, s2
                  slti         sp, s8, 567
                  srl          a3, gp, s9
                  or           t3, t2, s0
                  xor          s1, s11, s6
                  slti         t6, t4, 1090
                  ori          t5, s3, 881
                  and          a5, s3, s0
                  xor          t6, a4, t2
                  srl          sp, t1, tp
                  slt          t2, t0, s8
                  sltiu        t5, s11, 126
                  srl          a3, s4, a0
                  xor          s2, a1, s2
                  auipc        s11, 41292
                  sltiu        zero, a3, 1259
                  sra          s0, s10, t6
                  nop
                  sll          zero, s8, s1
                  ori          s0, s6, 858
                  lui          s4, 565721
                  sra          a2, a3, t0
                  srli         gp, t3, 18
                  slli         t5, a0, 15
                  xori         tp, ra, -1960
                  srli         s3, s11, 28
                  andi         t5, t2, -513
                  slt          a2, t0, s9
                  sll          ra, ra, s4
                  addi         a6, t2, 802
                  andi         s4, zero, -594
                  srl          s8, t1, a3
                  auipc        s5, 83828
                  sll          gp, s4, t6
                  and          s5, a5, s0
                  or           t2, a4, tp
                  slli         a6, ra, 18
                  xori         s8, s11, 1519
                  auipc        a1, 504631
                  sltu         t0, s5, t2
                  srli         ra, s9, 8
                  xori         tp, s5, -35
                  srl          s1, zero, s8
                  or           zero, a0, t4
                  or           s7, a3, t4
                  sll          sp, t3, sp
                  auipc        a0, 971432
                  and          s1, a4, a7
                  sltu         a6, gp, s4
                  ori          a6, a7, -1783
                  xor          a0, zero, a4
                  sltiu        s8, t6, 562
                  xor          t1, a6, a1
                  addi         a6, s7, 1367
                  add          s8, t6, t1
                  srli         t3, a1, 12
                  or           a7, s1, s9
                  slli         s0, a5, 29
                  sltiu        s10, s4, 1323
                  xori         a2, t4, 364
                  xor          sp, s2, gp
                  and          s2, t1, t0
                  sra          t1, a3, s10
                  srli         s7, s5, 5
                  add          a5, a3, s8
                  auipc        tp, 116152
                  srli         s0, s6, 29
                  add          s11, a1, a0
                  sub          tp, s4, a4
                  srli         s11, a7, 20
                  slt          t5, s1, s8
                  sra          a3, a4, s10
                  slti         t6, s3, -1375
                  add          a0, a3, tp
                  auipc        s8, 268359
                  slt          gp, a2, gp
                  nop
                  nop
                  srli         t0, a1, 6
                  auipc        a7, 866360
                  xori         t1, a0, -112
                  slti         t0, a5, 358
                  slt          s0, s9, a1
                  ori          t3, s7, 1409
                  andi         t3, s11, -791
                  sll          s5, a2, s5
                  auipc        a0, 822712
                  add          gp, a1, sp
                  srli         t6, a4, 29
                  slti         s5, a1, -2039
                  or           a2, a7, a2
                  srai         a0, t0, 19
                  addi         s6, t1, -291
                  slt          s7, a1, tp
                  add          s8, s7, a5
                  srl          t1, s6, t3
                  xor          t3, a2, s8
                  addi         s11, a7, -1386
                  andi         a6, t6, -573
                  nop
                  ori          s5, t0, 1377
                  slli         a1, t6, 10
                  auipc        s4, 714311
                  auipc        a5, 563406
                  ori          zero, a2, -672
                  sll          ra, ra, s5
                  sll          a5, t6, s8
                  sltiu        a7, zero, 400
                  or           a6, s11, sp
                  addi         t2, a0, 290
                  auipc        s7, 1003129
                  sra          a1, t2, a1
                  sub          a7, a3, s1
                  srl          s8, t4, a5
                  srl          s10, s11, s2
                  sra          s1, s0, s2
                  add          s11, tp, t0
                  auipc        s11, 295303
                  srai         s10, t5, 16
                  or           sp, a7, a0
                  xori         a3, s5, -1417
                  sra          t2, s11, s7
                  sltiu        t0, s4, -155
                  srli         a1, a2, 15
                  auipc        a1, 226379
                  xor          s1, s4, s2
                  nop
                  add          a3, s9, t4
                  addi         a0, t0, 1323
                  ori          t2, s0, 1182
                  lui          s11, 57252
                  and          ra, t3, a5
                  sltiu        s2, t3, -2011
                  and          t6, s9, t0
                  ori          t1, a3, 1124
                  auipc        s5, 950501
                  sra          t6, s7, s4
                  srli         a3, a4, 2
                  and          a3, t5, s5
                  slti         a1, a4, 1472
                  slt          gp, s4, s10
                  xori         t6, s10, 1065
                  xori         t3, s7, 1003
                  sltiu        s4, sp, -1702
                  slt          s6, s3, sp
                  sltu         t5, gp, sp
                  slti         s0, tp, -1946
                  auipc        a0, 75221
                  sra          t5, sp, s1
                  auipc        s6, 1020764
                  srli         t0, a7, 18
                  sltu         s1, t2, a1
                  sub          a5, s7, a3
                  andi         a2, a3, -1825
                  add          s8, a1, a4
                  xori         s8, s11, -488
                  sll          s11, t2, a6
                  lui          ra, 596765
                  add          a2, s3, t5
                  sra          sp, t4, a7
                  sra          a0, a4, s11
                  sltiu        s6, a0, -12
                  addi         a2, s10, -1250
                  srli         t2, s4, 23
                  sltiu        s8, tp, 1119
                  auipc        s11, 25312
                  sltu         t3, gp, t1
                  xori         s8, s8, 96
                  slti         t1, t3, -442
                  addi         a3, t3, -770
                  xor          s11, a0, s5
                  auipc        sp, 490172
                  srl          t3, s8, s3
                  srai         s2, sp, 24
                  andi         a7, s3, -2001
                  sub          s3, t2, s2
                  slt          tp, t1, t5
                  sltu         a5, t6, gp
                  slli         t6, a4, 8
                  sub          a0, t4, a2
                  addi         t6, s9, 1377
                  auipc        t6, 647450
                  xor          a2, t1, s5
                  auipc        a0, 290211
                  srl          s8, gp, s5
                  ori          t2, s2, -1010
                  and          a3, t3, t1
                  lui          s5, 863843
                  slti         t6, gp, -1997
                  srli         ra, t2, 10
                  or           s3, s7, t1
                  srli         t5, a7, 14
                  slt          t6, s2, s1
                  addi         sp, t1, 835
                  sra          a1, s5, s7
                  sll          a5, s1, a7
                  srli         s7, gp, 30
                  addi         s3, s0, 1108
                  ori          s8, s0, -755
                  ori          a7, s2, 519
                  xor          a2, s4, s3
                  sra          a6, a1, t0
                  or           t5, t1, s9
                  xori         t1, s3, 1766
                  srli         a3, a3, 13
                  sll          a1, a0, a5
                  auipc        s6, 746886
                  slli         a5, zero, 21
                  sll          s11, s2, t4
                  add          s10, s6, t5
                  or           a2, s2, zero
                  lui          a3, 990578
                  srai         t2, tp, 0
                  sltu         a6, s10, t2
                  nop
                  auipc        t6, 541469
                  add          s11, s4, s8
                  add          s3, s1, s10
                  or           s8, s11, s4
                  sub          t2, s4, a5
                  sltu         tp, s7, s6
                  add          a6, ra, zero
                  ori          s7, a0, 1281
                  srli         s6, t6, 23
                  andi         s3, tp, 1759
                  sltiu        a0, a0, 1881
                  srai         zero, a1, 26
                  srli         s1, a0, 29
                  sltu         s8, a6, t5
                  sra          t2, a2, t5
                  slt          a0, s6, t0
                  sub          s11, a4, ra
                  addi         s0, ra, 1549
                  and          tp, t6, t5
                  srl          t0, s9, s11
                  lui          s5, 387379
                  ori          s0, t6, 1929
                  slli         t0, s11, 25
                  or           s8, t5, zero
                  add          s10, s11, a2
                  srli         s2, t3, 17
                  slt          t0, t5, t5
                  sltiu        s7, t1, -1183
                  sub          t2, t4, a0
                  ori          s1, t2, 923
                  and          s7, s5, a4
                  lui          s3, 1001831
                  slti         s6, s5, 939
                  sll          s4, t2, tp
                  addi         t0, a3, -1176
                  add          a0, sp, s9
                  and          s11, tp, a5
                  andi         s6, s2, 1326
                  srai         t5, t1, 16
                  slti         s5, a0, -617
                  srl          s10, s8, zero
                  xori         t0, zero, 1722
                  auipc        t3, 710090
                  slli         t0, s2, 20
                  xor          a5, t1, a1
                  sltu         t1, zero, t5
                  slli         s1, s5, 31
                  add          gp, s10, a3
                  addi         s11, t6, 1296
                  or           s8, s10, a1
                  slt          s7, s4, s10
                  ori          s6, s0, -816
                  and          s0, a0, s0
                  auipc        s4, 688013
                  srl          t1, s0, s4
                  xor          gp, a3, t0
                  srl          zero, s3, t0
                  and          t1, s4, a2
                  sub          t6, t2, s4
                  sll          s2, s7, s4
                  or           s2, tp, gp
                  srai         gp, s10, 25
                  sltiu        a1, s2, -391
                  or           t3, a3, a2
                  sltu         s5, sp, a0
                  sub          s6, s3, zero
                  or           s3, a3, t2
                  auipc        s0, 89283
                  andi         a5, s9, -1820
                  lui          s6, 379614
                  sltu         a6, s9, ra
                  and          tp, t6, t3
                  sra          s5, s1, t6
                  add          s8, s8, s5
                  auipc        a0, 201167
                  sltiu        s5, a0, -1817
                  srli         a0, t0, 28
                  ori          t0, s3, 1763
                  lui          t5, 42751
                  andi         s11, s11, -1650
                  and          s1, t1, t6
                  or           a3, s1, t3
                  xor          s5, a7, a0
                  sltiu        a5, t6, -710
                  sltiu        t3, ra, 481
                  sra          t2, a4, ra
                  add          t3, s11, s11
                  andi         s2, a2, 1739
                  slti         s5, a6, -746
                  srl          a1, t2, s1
                  ori          t3, t1, -457
                  sll          s8, a3, s8
                  slt          a1, a3, t3
                  and          t5, a5, ra
                  sltu         a2, s2, ra
                  slti         s5, s1, 745
                  srai         t1, s2, 28
                  slti         s0, zero, 1013
                  xori         gp, s5, 1276
                  addi         a5, s6, 1311
                  and          s10, tp, a2
                  slt          s6, s3, s4
                  slli         t6, ra, 23
                  add          t3, s5, zero
                  or           ra, a5, a6
                  xor          s8, s2, t6
                  and          zero, t2, a0
                  sub          t3, s7, a5
                  sll          s0, zero, t3
                  sra          t5, s5, s0
                  xori         s11, s7, -586
                  addi         ra, t0, 1238
                  ori          s1, s2, 1754
                  andi         a1, s0, 669
                  sltiu        s1, a0, -2047
                  auipc        t1, 1026102
                  sltu         a7, s11, t4
                  slti         gp, s5, 1009
                  nop
                  xor          s5, s7, s4
                  nop
                  slli         a6, s10, 7
                  srl          gp, a1, s3
                  lui          a3, 938215
                  or           t5, sp, zero
                  slti         s6, t3, 926
                  ori          a2, s4, 1861
                  sub          a1, sp, a0
                  srli         a0, s8, 15
                  and          t5, s9, a5
                  sltu         s4, s10, t0
                  and          s7, s5, a3
                  or           s11, s5, t3
                  srli         s4, s11, 4
                  addi         ra, t1, -2033
                  auipc        s0, 186765
                  srli         s10, t3, 28
                  xor          t0, t1, a7
                  srli         s7, gp, 29
                  addi         a0, a6, -1601
                  srl          t3, tp, t2
                  addi         a5, t5, 905
                  and          s7, a6, a1
                  addi         a2, zero, 1967
                  sltiu        s8, s5, 817
                  slli         t2, s7, 9
                  sra          a7, a6, a1
                  andi         a3, a1, 405
                  slt          t3, a5, t4
                  srai         t5, s8, 30
                  nop
                  add          a2, a5, s0
                  sra          t3, s6, s10
                  nop
                  xori         t2, t4, -957
                  sltu         ra, s4, s5
                  srl          a5, t2, s8
                  sub          s6, ra, s1
                  slti         s2, t0, -675
                  sltiu        s11, s9, -716
                  or           a1, t1, t0
                  lui          sp, 962579
                  slt          s7, a3, s3
                  srai         a0, a4, 20
                  auipc        s10, 635023
                  andi         t5, s9, 360
                  sub          a3, t5, s8
                  and          t6, a5, s7
                  addi         s8, a3, -800
                  auipc        t3, 820698
                  sltiu        a2, s4, -1243
                  sll          s8, s4, a0
                  sra          tp, s3, t0
                  addi         s11, s0, 1885
                  xor          a3, s11, s6
                  ori          s4, t1, 1218
                  srli         t3, t5, 24
                  nop
                  sub          t3, t2, s11
                  slti         s10, tp, 832
                  sra          a2, gp, s7
                  nop
                  xori         a5, a3, -1932
                  sll          s3, t5, t0
                  and          a5, t6, s3
                  slti         a2, a3, 1503
                  addi         s3, s6, 1079
                  lui          s11, 515117
                  srai         s6, s7, 30
                  or           t6, t4, s4
                  nop
                  sra          tp, s11, s4
                  xori         s10, a4, 978
                  addi         s11, t3, -149
                  lui          s8, 427561
                  auipc        a2, 389218
                  srai         t5, s4, 7
                  srl          s11, ra, s7
                  slti         t2, t1, -1133
                  xori         zero, s8, 1490
                  xori         s8, s10, 1426
                  add          a2, t6, a4
                  sub          a2, s5, t0
                  srai         s3, s8, 13
                  sub          t1, sp, a2
                  ori          t5, a1, 798
                  xor          t1, t4, t6
                  srli         a7, a4, 23
                  sltiu        s11, s9, -1326
                  sll          s7, t2, a0
                  sll          a3, a5, t1
                  sra          a3, a6, s0
                  sltu         a3, s6, t0
                  sltu         sp, s0, a1
                  srai         t5, t2, 17
                  xor          a0, s7, s10
                  slti         a3, s11, -386
                  slti         s5, t5, 723
                  slti         t5, tp, 1638
                  sra          tp, a1, s8
                  sub          t3, s3, s11
                  sltiu        t2, s4, -1610
                  srli         s6, s8, 8
                  slt          zero, t3, tp
                  srai         ra, gp, 13
                  add          a7, s2, a3
                  slt          t2, s9, a0
                  xor          t0, s2, s11
                  srai         a3, t4, 25
                  ori          a0, s5, 879
                  srai         a2, a0, 10
                  srai         t6, a0, 5
                  sub          s6, t3, s2
                  auipc        gp, 565664
                  add          a0, a2, a2
                  add          t2, s10, zero
                  srl          tp, s10, a5
                  add          a3, t1, t6
                  slti         s4, a4, -372
                  sltiu        t5, s11, -58
                  lui          ra, 943070
                  srli         t1, a1, 17
                  sltiu        s0, t4, -594
                  ori          s2, a1, -1942
                  ori          s8, s2, 1828
                  sltu         t1, zero, zero
                  ori          t1, s9, -828
                  xori         s7, t6, -1799
                  xor          s1, a5, a2
                  srli         t3, s10, 4
                  nop
                  and          a7, tp, t4
                  lui          s1, 196005
                  sltiu        t6, a7, -903
                  andi         tp, gp, 261
                  auipc        sp, 953016
                  sra          t0, s4, a6
                  sltu         a5, t2, zero
                  ori          t5, a6, -1763
                  slt          s8, sp, ra
                  slt          s7, t5, t4
                  sra          s6, s5, t6
                  sra          s0, t5, a5
                  add          s0, a5, a6
                  xori         t1, ra, 1912
                  lui          s4, 1037504
                  and          a5, zero, a4
                  sra          s5, t1, zero
                  andi         s10, t1, 1258
                  lui          s1, 201352
                  slti         tp, a1, 713
                  auipc        sp, 583615
                  andi         a2, s1, -754
                  or           tp, s4, a3
                  srai         s2, s11, 15
                  srli         a0, sp, 7
                  auipc        a3, 270450
                  add          s2, s8, s1
                  and          t6, a6, ra
                  slti         t2, s5, -957
                  ori          s5, ra, -1572
                  slti         t1, tp, -1836
                  addi         sp, a2, 739
                  andi         t1, a7, -1734
                  andi         a1, a5, -1221
                  sltu         a7, s10, t5
                  srai         t6, a7, 4
                  slli         gp, a4, 8
                  srl          s6, s10, t2
                  and          a0, a5, ra
                  slt          gp, s6, s7
                  slli         s2, tp, 25
                  andi         s10, t5, -143
                  srai         s8, a5, 12
                  sra          t1, a7, ra
                  srl          gp, t4, tp
                  sra          s11, zero, s2
                  srl          t1, s4, sp
                  slli         sp, a7, 26
                  add          a3, t1, s1
                  sll          sp, a4, s11
                  add          tp, s9, a5
                  srai         s3, sp, 13
                  and          a6, a3, t6
                  xori         s5, s4, 1927
                  sltiu        t5, s7, -1085
                  sll          s11, s6, s5
                  sltu         a1, a5, zero
                  or           s10, s4, gp
                  andi         s11, s0, -1910
                  ori          t6, s9, 533
                  sra          s11, tp, ra
                  xori         t0, a4, 1414
                  srl          t3, t3, a2
                  slt          s0, t4, a1
                  add          t0, s9, a3
                  andi         s11, s9, 1946
                  sll          a3, s7, a7
                  slt          a0, a7, s9
                  xor          t3, a4, t0
                  sub          t2, a6, t0
                  sltu         s5, t2, t1
                  sub          zero, a0, t4
                  addi         s0, s5, 710
                  slli         sp, zero, 28
                  xori         s7, a1, -1771
                  lui          s7, 647703
                  andi         t6, s6, 1089
                  ori          zero, a4, 1973
                  or           t3, s10, a4
                  sltu         s5, t4, a5
                  or           s10, a4, a7
                  srai         t1, s9, 18
                  sra          s0, t1, t3
                  xor          a3, t6, a4
                  xor          s1, s1, a0
                  slt          a5, zero, s4
                  lui          s4, 880369
                  auipc        gp, 911568
                  sra          a0, s4, tp
                  srli         t5, t2, 6
                  ori          a3, a5, -663
                  slli         gp, zero, 5
                  srli         s5, t3, 26
                  lui          a5, 222119
                  sltiu        t1, t5, 846
                  sltiu        s2, s8, 1596
                  ori          tp, gp, -838
                  add          gp, s11, s0
                  nop
                  sra          a7, a1, ra
                  srli         s8, t1, 30
                  sltiu        t0, s0, 129
                  and          tp, tp, ra
                  and          ra, s1, t3
                  xor          s8, tp, t4
                  sra          s5, ra, a0
                  nop
                  slti         a5, s6, 154
                  andi         tp, zero, 1904
                  ori          t0, a6, 319
                  lui          ra, 798396
                  slli         a5, tp, 5
                  sltiu        t2, s7, 171
                  sltu         t1, a2, s5
                  slli         a7, t6, 26
                  addi         t2, s2, 1917
                  andi         a1, a2, 2000
                  sltiu        s0, a3, -2016
                  sll          t1, s9, a6
                  sltiu        s1, gp, 1905
                  slli         t3, s1, 1
                  srli         s5, s10, 20
                  xor          s3, s2, a5
                  lui          s5, 305860
                  sra          t3, t1, sp
                  sub          s8, s10, a0
                  add          s11, t5, t0
                  ori          tp, s5, -1340
                  sub          a1, s10, gp
                  srl          zero, s6, a0
                  srai         a6, s2, 14
                  sltiu        a7, a2, -156
                  srai         sp, t4, 1
                  nop
                  xor          t6, s7, a3
                  auipc        t6, 542119
                  srai         s11, a7, 8
                  srli         s3, a7, 27
                  sra          s7, s10, s5
                  add          a0, t0, s11
                  xor          a7, s11, t5
                  sltu         s0, s2, a7
                  slli         a3, t4, 18
                  slti         s1, zero, -269
                  auipc        s10, 590699
                  sll          s11, a0, s7
                  srli         s11, zero, 5
                  xori         s10, s5, -252
                  auipc        s3, 255090
                  sltu         zero, s5, a0
                  sltiu        s11, tp, -718
                  slt          s5, s2, t4
                  and          t5, zero, t1
                  slli         s2, s3, 11
                  xor          a3, zero, a7
                  slti         s4, s0, -801
                  lui          gp, 1045112
                  addi         a5, a2, -404
                  srli         s1, s2, 2
                  and          s4, t5, a2
                  srl          zero, a0, t6
                  sll          zero, a5, t5
                  sltu         t5, t6, t6
                  addi         t6, a5, 760
                  or           a2, a4, s5
                  or           s8, gp, s3
                  sub          a7, gp, a1
                  add          s10, a5, s4
                  srai         s11, s3, 10
                  and          sp, s4, s9
                  andi         s11, t2, -1695
                  and          ra, s0, s2
                  sltiu        t0, t1, 1039
                  sra          s11, s11, a3
                  xor          s5, a3, gp
                  xori         gp, t3, 1086
                  sub          zero, s4, s4
                  srl          zero, tp, a6
                  andi         s3, s10, 153
                  auipc        a3, 1006486
                  xori         s10, a6, -252
                  sltu         ra, t3, t1
                  srli         a2, gp, 17
                  xori         s8, a5, -641
                  nop
                  or           sp, a7, s2
                  sltu         a6, s9, ra
                  srl          t6, a7, s9
                  auipc        t5, 401518
                  lui          a7, 56036
                  and          t1, t0, s10
                  add          a2, sp, a3
                  sltiu        s0, a6, -653
                  andi         a1, t3, 379
                  sll          tp, t2, t1
                  sltiu        s6, s8, -509
                  srai         a3, gp, 21
                  lui          s8, 334895
                  srli         ra, a3, 5
                  lui          s7, 477356
                  add          tp, t6, t0
                  addi         s8, a7, 371
                  srai         s8, a0, 27
                  slti         t5, t4, 372
                  slti         tp, sp, -1262
                  or           gp, a1, t4
                  sltu         s0, t4, a3
                  and          s1, s11, gp
                  nop
                  xor          a3, zero, a6
                  slli         a0, ra, 3
                  sub          t5, sp, s5
                  srl          t3, a5, t4
                  slli         s5, s5, 13
                  sub          s5, tp, a5
                  or           s3, s4, t6
                  addi         a3, t3, -1817
                  xor          t5, a2, a7
                  auipc        s10, 84972
                  sll          s4, t1, a0
                  sll          s5, s8, a2
                  srai         s7, a5, 6
                  auipc        s7, 722947
                  srl          t5, t5, s0
                  addi         s6, a4, 925
                  slli         s6, a7, 23
                  andi         a0, sp, 1792
                  srl          a5, a0, ra
                  add          ra, zero, a6
                  srai         s8, ra, 15
                  xor          ra, s0, s1
                  sra          s7, a3, a5
                  auipc        t5, 917246
                  sll          s7, a5, s11
                  auipc        s1, 396856
                  ori          s10, gp, -145
                  slt          a0, t6, gp
                  ori          s4, gp, -1752
                  srl          s11, t0, zero
                  sub          s8, t0, a1
                  xori         s2, zero, 1272
                  sra          s0, t5, tp
                  add          s10, s7, gp
                  add          ra, a6, a1
                  auipc        a2, 636310
                  add          sp, a1, s8
                  sra          s5, s8, ra
                  addi         s5, s11, 638
                  slli         t1, t6, 2
                  and          s10, a4, s0
                  srai         a5, t2, 7
                  xori         s2, a4, -1643
                  srai         s10, a4, 16
                  andi         a3, gp, 1426
                  srli         sp, s2, 15
                  slt          s8, a2, t1
                  nop
                  andi         ra, s7, -1700
                  add          t5, a4, s2
                  slt          ra, a2, t5
                  sltu         a0, s0, zero
                  sub          a5, t1, t6
                  and          s10, a7, tp
                  lui          a5, 934624
                  auipc        a1, 762633
                  srai         s10, s8, 23
                  xor          s7, a6, s9
                  add          a7, s2, s7
                  srli         a5, s9, 10
                  xor          s6, s10, a6
                  addi         s4, s0, -339
                  srli         a2, ra, 23
                  sub          a5, t6, a1
                  nop
                  sll          ra, s3, a5
                  srl          a6, a6, s8
                  slli         s5, s9, 21
                  slt          sp, a0, s2
                  xor          s5, a4, t0
                  auipc        a3, 951916
                  add          s11, a0, s2
                  sub          a0, gp, s7
                  srai         gp, s6, 4
                  xori         s5, s11, -1593
                  srai         t0, s2, 12
                  sub          sp, s10, s5
                  sra          ra, a2, s8
                  slli         s11, s4, 19
                  slti         t6, s1, 201
                  slt          a7, s2, t1
                  sub          s6, s9, a3
                  sra          tp, sp, s8
                  srl          tp, a6, s9
                  slli         zero, t1, 1
                  srli         t2, s0, 1
                  nop
                  lui          t6, 173753
                  or           t3, t2, sp
                  sltu         a5, s9, s6
                  ori          a5, a1, -761
                  xor          zero, a1, t4
                  and          a0, t0, t3
                  auipc        s0, 341592
                  addi         s3, a4, 1529
                  sll          sp, t5, s0
                  srl          a2, tp, t0
                  addi         sp, t1, 1007
                  xor          a2, s0, tp
                  nop
                  sub          s7, a4, a3
                  addi         ra, t2, -237
                  auipc        s0, 411288
                  sltiu        s4, a6, -1747
                  slti         t2, tp, 1081
                  xori         tp, t0, -887
                  addi         s8, gp, 461
                  and          tp, a0, a3
                  slt          s1, s9, t1
                  or           a1, s8, s11
                  lui          gp, 794971
                  slti         a2, s6, -712
                  addi         t5, t5, -2027
                  or           a7, a6, s10
                  sltu         t0, ra, s11
                  andi         ra, tp, -156
                  ori          t2, t1, 1833
                  addi         s8, t1, 1328
                  sltiu        s10, t6, 472
                  nop
                  sll          s0, a1, a1
                  addi         ra, s4, -51
                  sltiu        a6, s10, 1257
                  srli         s1, a5, 14
                  addi         s1, s0, 563
                  andi         a3, a4, -744
                  andi         s4, s3, -1188
                  srl          s5, s4, a3
                  slli         s0, a4, 29
                  lui          a6, 277001
                  lui          a3, 415845
                  srl          t1, t4, tp
                  auipc        t2, 882490
                  slli         t2, t4, 28
                  slli         tp, s10, 8
                  srai         gp, s6, 10
                  addi         a5, t2, 347
                  sra          s0, ra, a1
                  add          a5, a7, s0
                  lui          s1, 618922
                  srl          t2, sp, t1
                  sra          a0, a5, t3
                  sltu         tp, t3, s0
                  sltiu        s0, s2, 1026
                  nop
                  srl          s10, s0, ra
                  andi         a0, s2, 1693
                  slli         a7, a2, 13
                  addi         a6, t2, -408
                  slt          a7, gp, s11
                  lui          s10, 342742
                  ori          t5, s3, 1598
                  sltiu        s11, a6, 1571
                  or           s5, s1, a0
                  sltiu        t0, gp, -292
                  and          t6, s9, t1
                  or           s1, a4, s6
                  nop
                  ori          s7, t0, 1084
                  sll          s11, sp, s0
                  slti         a3, tp, -1960
                  srai         s0, a4, 11
                  srai         a5, t5, 17
                  nop
                  srai         a5, s8, 27
                  andi         s8, s2, -1258
                  slli         t5, a5, 18
                  sll          s0, a4, t3
                  lui          s5, 112925
                  add          s5, gp, s7
                  addi         a6, a2, 181
                  sub          zero, zero, s0
                  srl          s5, a3, s5
                  srli         a0, t2, 25
                  andi         a2, a5, 1988
                  sll          a2, t4, t3
                  slt          t6, a5, a2
                  or           a5, t2, t4
                  xori         s4, t3, 945
                  sltu         t6, s10, s10
                  slti         s1, s5, -647
                  srli         s0, a5, 14
                  nop
                  nop
                  srai         a3, s11, 7
                  sra          s1, s0, s10
                  ori          t1, a4, -1734
                  auipc        s11, 456023
                  srli         t5, tp, 14
                  sltu         s1, a2, ra
                  lui          a6, 44194
                  addi         s2, s11, -222
                  sub          ra, s0, a6
                  sltu         s6, a7, t5
                  sltu         s0, s9, s11
                  sltu         s5, sp, a3
                  andi         s11, a7, 1215
                  nop
                  slti         gp, a7, -866
                  addi         s3, a1, 890
                  sra          t6, s4, a1
                  and          gp, zero, s8
                  slt          a3, t6, a1
                  xor          t2, a2, t5
                  or           s7, t3, a0
                  add          tp, a0, a2
                  sub          t6, sp, a2
                  or           s5, t4, a1
                  sra          t2, a0, t5
                  lui          a5, 861721
                  sub          sp, t0, a4
                  sub          a0, s7, gp
                  or           a3, zero, s3
                  addi         a2, t5, -1094
                  lui          zero, 900430
                  ori          s5, s0, 1400
                  nop
                  andi         a2, a2, -1693
                  srl          gp, zero, t3
                  xori         a3, s8, 2039
                  srl          a3, s5, gp
                  or           s11, s0, t1
                  sra          s0, s3, a4
                  srai         s1, s11, 8
                  and          t0, a7, t3
                  slli         s2, s11, 7
                  lui          ra, 633774
                  lui          gp, 595438
                  srai         s8, s7, 31
                  srai         t5, s1, 28
                  sltu         s8, s11, t2
                  ori          zero, ra, 958
                  add          a6, a1, s8
                  ori          zero, zero, 580
                  slli         t1, t1, 23
                  slt          s5, t2, a1
                  addi         a0, a0, -656
                  srli         s5, s6, 21
                  and          a1, zero, tp
                  nop
                  srli         a0, t6, 10
                  and          s2, a6, a1
                  sltu         t2, a3, a5
                  add          a0, a4, zero
                  srai         s6, s3, 4
                  and          s4, s7, a1
                  sra          s8, s2, s0
                  xori         a3, s11, 271
                  addi         s5, s2, -1763
                  sll          s2, sp, a4
                  slti         a3, s9, -1691
                  srai         s8, s0, 6
                  slti         s11, s1, -1761
                  lui          zero, 212629
                  add          a2, t0, t5
                  sub          s8, s6, s7
                  and          t6, s9, a1
                  sub          t0, sp, tp
                  lui          a3, 65608
                  lui          s2, 1042323
                  sltu         t6, t6, s11
                  sll          ra, s11, s10
                  xor          s1, t3, s4
                  slt          s7, s0, t0
                  ori          a7, s9, 1542
                  nop
                  slti         s6, t0, -1556
                  sltiu        s7, s0, -163
                  addi         t1, a2, 101
                  andi         s6, s8, 1692
                  ori          a7, t2, 596
                  lui          s8, 721509
                  srl          t3, gp, t0
                  srli         s1, gp, 26
                  auipc        s3, 883141
                  sltu         s6, a5, s8
                  addi         s11, a2, -1131
                  lui          t6, 213180
                  slli         t0, a3, 7
                  sub          ra, s3, s7
                  add          a1, a3, ra
                  add          s4, s9, a5
                  srli         a2, a5, 16
                  srai         s8, t4, 26
                  nop
                  slti         gp, a2, -789
                  srl          t6, s1, t1
                  addi         s7, zero, 1534
                  add          t6, t5, a0
                  addi         a2, a2, -1691
                  xor          zero, zero, s10
                  and          a6, s10, a4
                  slli         a5, s9, 7
                  xori         a3, a7, -139
                  auipc        s0, 926101
                  slti         a5, t6, -1485
                  srai         a5, s0, 13
                  or           s0, t2, t5
                  ori          t5, s8, -198
                  or           t1, s10, a5
                  sltu         t6, s7, t6
                  sub          s11, a1, s5
                  sra          s6, t4, s9
                  andi         t0, a3, 1610
                  auipc        a7, 934025
                  sltu         s6, t3, s4
                  addi         s3, s2, -1027
                  lui          gp, 885411
                  sll          s5, sp, sp
                  lui          a7, 526190
                  srli         a3, s3, 24
                  xor          s6, s0, t1
                  srli         a7, s8, 20
                  ori          s0, s9, 1504
                  nop
                  auipc        s2, 657283
                  sub          s11, a2, tp
                  lui          t5, 486988
                  lui          tp, 768024
                  xor          s1, ra, s7
                  or           t6, t2, ra
                  sltiu        t6, a3, -1427
                  slli         s0, t1, 11
                  and          s6, t2, s6
                  lui          s6, 13079
                  xori         s10, t6, -217
                  srli         a0, t0, 20
                  sll          ra, a2, t5
                  and          s5, s10, a2
                  sltu         a5, t5, t2
                  slti         a5, t1, 1776
                  auipc        t3, 503905
                  srai         s2, t5, 14
                  ori          s5, a7, 1784
                  addi         a2, s10, 999
                  sll          s1, sp, s5
                  auipc        s1, 612454
                  add          t1, a1, t2
                  xor          s2, t0, s5
                  andi         t1, a1, 1641
                  add          a5, a2, s7
                  sra          s5, s9, t2
                  or           s11, s11, t1
                  slli         zero, t3, 23
                  srai         a2, s1, 25
                  add          s6, s5, a4
                  sltiu        s8, gp, 390
                  sra          t6, a0, s8
                  sltiu        s11, gp, -517
                  addi         s11, a2, -1338
                  slli         t1, s7, 29
                  srli         a2, a0, 9
                  slti         s8, s9, -55
                  srli         s5, ra, 26
                  addi         s7, t1, -995
                  sub          a3, s3, t2
                  srai         sp, ra, 4
                  xori         s8, t3, -871
                  srli         s7, s10, 10
                  srai         s2, a4, 27
                  srli         s10, t1, 22
                  lui          sp, 981575
                  srai         a6, t0, 18
                  sll          t5, s4, t4
                  sub          s10, a7, s1
                  slti         a2, a0, -114
                  sra          t6, a5, a7
                  sll          a7, s7, s0
                  slli         tp, t3, 8
                  srl          t6, a4, zero
                  xori         a2, t6, 780
                  nop
                  add          sp, t1, s3
                  slli         a0, s5, 11
                  nop
                  ori          s1, gp, -1215
                  srli         s7, t1, 21
                  slli         sp, s5, 27
                  sra          a3, t3, a3
                  slti         sp, s2, -1590
                  xori         s0, a4, 1685
                  add          t2, t4, s8
                  sltiu        a6, tp, -1520
                  srli         s2, t4, 17
                  slti         s8, gp, 1593
                  slli         t3, s5, 20
                  andi         a0, gp, -1781
                  slli         s2, t3, 30
                  srai         s0, s6, 1
                  srl          s5, s3, s7
                  auipc        gp, 551951
                  lui          s7, 468811
                  slti         a0, a2, 890
                  auipc        t3, 486971
                  lui          t1, 776396
                  sra          s4, t2, s3
                  ori          a5, s3, 1255
                  andi         s8, a7, -1055
                  add          sp, a2, a7
                  and          t5, s7, a5
                  lui          t3, 678093
                  sll          s4, s1, a4
                  slti         s7, t2, -1201
                  addi         s11, s0, -925
                  or           a0, s6, zero
                  ori          s5, t0, 1687
                  nop
                  slt          tp, a0, t1
                  slti         a1, tp, -1257
                  sltu         s4, t6, s0
                  andi         tp, s2, -1939
                  andi         t3, t5, -1594
                  sra          s6, a7, a5
                  andi         a7, s11, 1446
                  srli         t0, t6, 22
                  slli         s4, a6, 19
                  slti         a6, s8, 698
                  or           s1, s6, ra
                  lui          t3, 1013015
                  or           s3, tp, s5
                  auipc        a6, 731265
                  addi         t0, ra, -1313
                  sltiu        tp, t3, 1545
                  xori         s7, t4, -1425
                  xor          a0, s6, zero
                  lui          s10, 740954
                  lui          s5, 283503
                  sra          a6, s11, ra
                  sltiu        ra, s8, 703
                  auipc        s8, 895230
                  slt          s0, a7, t1
                  srl          a6, a2, t1
                  srai         s1, a4, 16
                  srli         gp, sp, 17
                  sll          s8, s8, s4
                  slt          s3, t2, s5
                  sll          a0, sp, s10
                  sra          t6, gp, a2
                  slli         s1, a5, 24
                  slti         ra, t3, 38
                  sltu         a3, a1, a5
                  add          zero, zero, t2
                  nop
                  slli         gp, s11, 29
                  auipc        t3, 463567
                  sltiu        s2, t2, -464
                  slt          s3, s1, s5
                  srl          a6, sp, s6
                  sll          gp, a5, a1
                  addi         a0, s7, 1415
                  nop
                  srai         s7, t6, 16
                  slt          gp, gp, s7
                  srl          s8, s8, t4
                  xori         a0, s11, -944
                  sra          a3, a3, zero
                  ori          s11, t3, 1167
                  or           a1, s10, a7
                  lui          s0, 67921
                  sub          tp, s7, a3
                  addi         tp, s6, -1157
                  sltiu        gp, s1, 739
                  sll          t3, a1, t3
                  auipc        a2, 696690
                  sub          t6, s6, s8
                  or           s3, t2, t4
                  xor          a2, t2, sp
                  sltiu        a6, tp, 1494
                  and          a7, s4, t1
                  add          s11, s8, t5
                  srli         a2, a0, 25
                  nop
                  xori         a6, t6, -2029
                  sltu         s4, s11, gp
                  sra          s8, t1, s10
                  andi         a6, a4, -1190
                  srl          a6, s10, a0
                  and          ra, t2, s9
                  sub          t1, s5, s10
                  and          s2, a5, a7
                  srli         a3, a0, 18
                  sltiu        a0, tp, 343
                  srai         s2, t1, 17
                  andi         s5, s4, -372
                  nop
                  slli         s10, s8, 22
                  srl          s1, t3, s0
                  slt          t1, s4, gp
                  sra          s8, a2, a4
                  or           t6, t1, s9
                  ori          a2, s10, -970
                  and          t1, s9, a3
                  srai         sp, sp, 17
                  slli         s3, t5, 14
                  sltu         t3, t0, s0
                  slt          t6, s6, s1
                  add          a1, t5, s10
                  slt          s2, s11, t3
                  add          s1, a6, t0
                  slli         a2, a6, 26
                  srl          s5, t3, s2
                  sltiu        t1, s11, 266
                  xor          t6, s8, a3
                  xori         a3, s8, 988
                  srl          a3, s7, a5
                  andi         s7, s3, -1148
                  sub          s11, s5, a3
                  srai         a5, s8, 11
                  slt          a6, s2, a5
                  ori          gp, s5, 1930
                  slt          ra, a4, a6
                  xor          s11, ra, t4
                  slti         s10, t3, -1710
                  lui          a1, 34154
                  ori          a6, s10, -275
                  slli         t6, s8, 20
                  sltiu        t6, s6, 1504
                  sub          s10, ra, s9
                  nop
                  andi         t3, gp, 398
                  andi         s8, s0, 255
                  sltiu        gp, a5, 506
                  xor          s3, a1, s7
                  xor          sp, t6, s3
                  xor          tp, ra, s9
                  srl          s10, a7, gp
                  xor          t3, s6, s4
                  xor          a0, s4, s7
                  slli         s4, s5, 23
                  add          s0, s10, a4
                  sltu         t6, sp, a3
                  add          s11, t5, a0
                  slli         t5, a5, 6
                  ori          t6, t1, -1219
                  sltiu        a2, ra, 1320
                  slt          ra, a3, s0
                  srli         t2, s5, 26
                  srai         s0, s9, 2
                  srai         a0, s4, 12
                  addi         s10, a7, 449
                  lui          s11, 929532
                  xori         s7, s11, 1854
                  srli         t5, s2, 0
                  or           s1, s2, zero
                  and          t1, t1, s5
                  ori          s7, t0, -1215
                  srl          s0, a4, s6
                  slli         sp, s8, 24
                  sll          tp, t0, t0
                  auipc        a2, 547658
                  sra          sp, zero, s2
                  and          s11, s5, s7
                  ori          a3, sp, -1576
                  sra          a6, ra, a2
                  lui          a0, 966586
                  lui          ra, 210657
                  or           s1, s8, a6
                  ori          s1, a3, -1762
                  slli         ra, a7, 9
                  srli         t5, tp, 3
                  sub          s0, t4, s6
                  slt          tp, s5, s3
                  nop
                  srli         a7, s1, 15
                  auipc        zero, 471031
                  or           s1, s1, t4
                  sub          t1, s4, sp
                  sltiu        s5, s5, -2015
                  sltiu        s6, t0, -1086
                  auipc        a7, 662713
                  srli         ra, s10, 7
                  srai         s2, a4, 31
                  slli         t1, s1, 6
                  auipc        s1, 992951
                  srli         s6, t6, 31
                  andi         a1, s8, -1724
                  sub          s10, a4, a5
                  and          s1, t4, s5
                  xor          zero, a4, s8
                  sub          t2, t3, a6
                  and          s7, t0, a4
                  andi         a3, s4, -1112
                  sltiu        t1, a6, 1403
                  srli         s11, s1, 12
                  lui          t3, 543761
                  auipc        s6, 814457
                  srl          s5, t4, t1
                  auipc        a6, 277445
                  nop
                  sra          a2, t3, tp
                  slli         a0, t4, 17
                  nop
                  sltiu        t5, tp, -914
                  sll          t2, s11, s8
                  srai         s2, a4, 26
                  srl          s2, a5, a2
                  sub          a7, a4, s4
                  xor          s0, a4, s7
                  sra          s10, zero, t5
                  slli         a6, s10, 4
                  slti         a0, tp, -1343
                  sltiu        s5, s0, 487
                  ori          a1, s0, -433
                  andi         a2, t4, -1029
                  ori          t3, s0, -906
                  nop
                  sub          t0, s10, a4
                  sltu         a3, s2, s7
                  srl          a5, a2, t4
                  sltiu        a3, t3, -768
                  xor          a7, s3, s5
                  add          s3, s8, t1
                  nop
                  and          s0, s7, s5
                  slt          s11, s9, s4
                  sub          s4, s5, s4
                  nop
                  srl          a7, gp, s2
                  add          a6, s5, a6
                  sll          s8, s4, t6
                  sll          s6, ra, a4
                  xor          s8, t0, t3
                  lui          t6, 291963
                  sll          t5, s11, a1
                  xori         zero, t0, 1322
                  slti         t5, s2, -1526
                  lui          a7, 836260
                  srli         sp, s4, 16
                  slli         a1, s6, 18
                  srl          t1, t1, s2
                  slt          s11, t0, t0
                  add          t6, s9, s5
                  slti         a1, zero, 770
                  or           sp, s1, a0
                  slli         a7, s6, 1
                  and          t5, t0, s0
                  sra          s10, s4, a3
                  add          t3, a6, a5
                  lui          a7, 381093
                  srai         a2, a6, 31
                  xori         sp, a6, 1631
                  or           a1, a3, s6
                  auipc        a7, 192906
                  slt          t2, ra, t5
                  addi         a1, a0, -1282
                  sra          s8, s4, s8
                  slti         t1, s11, 1380
                  xori         a2, s8, -1679
                  xori         t6, a4, -357
                  lui          gp, 700564
                  srai         s6, s11, 31
                  ori          s7, s0, -1328
                  ori          a2, t2, 152
                  addi         a1, a3, 1455
                  and          zero, a3, s8
                  sll          s4, t6, s1
                  xor          s2, s0, t5
                  xor          s5, t1, s7
                  auipc        s7, 820069
                  srai         a0, s10, 23
                  slt          s5, s6, t1
                  srai         ra, s0, 14
                  sll          s0, s9, a6
                  sub          s7, t0, s5
                  sll          gp, s0, s1
                  sub          t5, s7, a7
                  and          t6, gp, t1
                  srli         tp, s5, 26
                  srli         s5, s11, 20
                  slli         a0, t6, 29
                  sltu         s0, a0, a6
                  auipc        t1, 48944
                  srli         t5, a0, 21
                  auipc        ra, 742195
                  nop
                  srl          s7, tp, s3
                  andi         sp, a4, 2005
                  xor          ra, t2, s0
                  sltu         s1, a7, t4
                  srli         ra, gp, 18
                  auipc        gp, 922269
                  xor          a2, a4, a5
                  andi         zero, t5, 581
                  auipc        s6, 372597
                  sub          zero, s1, a1
                  add          s2, a0, t2
                  sltiu        s1, a3, 454
                  sub          a7, s0, s9
                  xor          a0, s2, s6
                  addi         t1, a6, 875
                  sra          s5, a3, t6
                  and          t1, a1, a7
                  add          ra, t5, s7
                  nop
                  sub          ra, zero, zero
                  slti         s1, s11, -820
                  or           s8, a1, s4
                  slli         a5, s1, 30
                  andi         a6, tp, 158
                  xori         s1, t3, -1071
                  slt          s0, s7, ra
                  srai         t0, t6, 22
                  addi         s10, s2, -940
                  or           sp, t6, t0
                  auipc        a3, 826276
                  ori          ra, tp, -1602
                  and          t1, s9, t2
                  xori         a3, s7, 957
                  sltu         t0, t4, s3
                  lui          a2, 1031148
                  xori         s3, s2, -979
                  srai         s5, tp, 11
                  lui          zero, 697942
                  sltiu        a3, t0, 1725
                  nop
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_36
                  li           s10, 0x0
                  li           s5, 0x80000000
                  li           t1, 0x0
                  li           a5, 0xffffffff
                  li           tp, 0x80000000
                  li           t5, 0x2c1f79ad
                  li           sp, 0x42753a50
                  li           gp, 0x0
                  li           t2, 0xffffffff
                  add          s3, s3, sp
                  lui          tp, 680020
                  add          s10, t5, s10
                  auipc        s5, 194164
                  nop
                  nop
                  add          sp, a5, t2
                  lui          a5, 807487
                  auipc        gp, 815282
                  add          t2, a5, sp
                  addi         t1, s5, -1440
                  lui          t1, 191472
                  nop
                  auipc        s10, 831050
                  auipc        t2, 775079
                  add          a5, s10, s3
                  add          sp, tp, t1
                  nop
                  addi         tp, s5, 912
                  lui          tp, 75476
                  addi         s5, t5, -141 #end riscv_int_numeric_corner_stream_36
                  addi         ra, a1, 1201
                  addi         zero, s10, 1673
                  or           a6, s7, t2
                  addi         s10, gp, -908
                  sltiu        t5, a2, -750
                  slt          t2, s9, a1
                  xori         a0, gp, 113
                  ori          t3, s8, 1991
                  or           s10, s7, ra
                  srli         a5, zero, 0
                  sltiu        s0, a2, -1112
                  auipc        t2, 449035
                  xori         a1, t5, 596
                  sltu         s0, t1, s6
                  sltiu        t0, t1, -906
                  sub          t5, zero, tp
                  slli         a3, tp, 22
                  addi         s6, s2, 1095
                  sll          gp, a2, t1
                  and          a7, t2, t4
                  addi         a6, ra, 850
                  slli         t3, t2, 13
                  sub          s5, s9, t2
                  auipc        a5, 350234
                  add          a3, a4, sp
                  lui          s1, 534581
                  sll          s7, a7, s1
                  slti         a5, a4, 1209
                  lui          s10, 1013879
                  auipc        gp, 817207
                  or           t1, zero, zero
                  sub          s5, t2, a4
                  ori          s3, s0, 171
                  xori         s2, a0, 550
                  sltiu        s2, t2, -388
                  xori         s1, t5, -612
                  slli         s4, zero, 2
                  xor          s8, s10, ra
                  slt          s8, t6, a6
                  and          a2, a1, ra
                  xor          t3, a5, tp
                  xori         t0, a7, 2015
                  xor          a6, a7, s8
                  srl          a6, s0, a7
                  srl          t3, a3, a6
                  slt          s7, a4, s9
                  sltu         a3, t5, t0
                  sra          s8, a4, s0
                  xor          s8, t6, s1
                  slli         a1, s3, 17
                  auipc        s10, 920868
                  slti         s5, ra, 701
                  slli         s10, s10, 5
                  and          gp, s3, a0
                  and          s1, s7, a7
                  srli         a1, zero, 28
                  lui          s11, 924422
                  or           s5, s2, s2
                  or           a6, s1, zero
                  sltiu        gp, s4, -1655
                  add          a0, a1, s7
                  slli         gp, s11, 27
                  or           s7, a1, t3
                  addi         s1, s4, 1525
                  addi         s4, s1, -1397
                  srai         t5, s8, 27
                  sra          s0, tp, a3
                  slli         s5, s9, 31
                  sub          a7, s6, t2
                  ori          tp, zero, -1226
                  slli         tp, ra, 5
                  andi         s0, s4, -1682
                  xori         a5, s3, 351
                  srai         ra, s4, 13
                  sltiu        t5, a2, 1161
                  addi         a2, s1, 464
                  nop
                  srai         s0, s8, 11
                  or           a0, s6, s8
                  srl          t0, a3, s0
                  ori          t2, s10, -643
                  sltu         a5, zero, s8
                  andi         s6, ra, -101
                  xor          t3, s10, t3
                  sub          t5, ra, ra
                  add          a6, a6, a0
                  addi         a6, t6, -39
                  nop
                  sltiu        s6, a2, 10
                  slt          a0, s6, t4
                  slti         t3, s8, 1638
                  xor          t5, a1, s4
                  and          zero, a6, gp
                  add          s11, s3, zero
                  sltiu        ra, t6, 1758
                  srl          t2, s0, a4
                  ori          sp, s2, 2045
                  sltu         s11, a2, s0
                  and          s6, a5, s7
                  slti         s11, sp, 1232
                  ori          s2, a5, -621
                  srai         a1, s11, 26
                  sub          s3, a1, gp
                  sltu         zero, a7, s1
                  sll          s2, a5, t4
                  srli         gp, t4, 14
                  add          s6, a1, s11
                  srli         s11, s7, 0
                  andi         a0, s1, 1841
                  xori         gp, t4, -823
                  sll          a1, t0, s9
                  xor          ra, a6, t6
                  srl          t2, s11, t3
                  addi         s7, zero, -892
                  and          t3, s4, ra
                  slti         t2, ra, -2022
                  srl          s7, s8, a0
                  andi         a6, tp, -1824
                  sra          a5, s7, t1
                  slt          s1, s7, t6
                  sltiu        s6, t2, -872
                  xori         t5, a7, -617
                  lui          t6, 543525
                  lui          s2, 335566
                  slt          ra, t0, s8
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s7, 0x0
                  li           a0, 0xffffffff
                  li           t3, 0xffffffff
                  li           a3, 0xfb562743
                  li           s10, 0x0
                  li           s5, 0x0
                  li           a2, 0x3d7458e0
                  li           a6, 0x80000000
                  li           a5, 0xffffffff
                  nop
                  addi         t3, a2, -1885
                  sub          s5, a5, s10
                  lui          a6, 1037639
                  sub          a6, a6, t3
                  lui          a5, 847971
                  auipc        a2, 107568
                  auipc        a0, 127319
                  add          a6, a3, a2
                  auipc        a6, 370315
                  add          s10, a0, s10
                  sub          a0, s7, a2
                  lui          a6, 868775
                  lui          a5, 875714
                  addi         a3, a5, -245
                  sub          s5, s7, a5
                  addi         a6, a0, -1801
                  sub          a6, s5, t3
                  lui          a6, 873626
                  lui          s7, 540975
                  lui          a5, 21160
                  lui          s7, 886987
                  auipc        a2, 339933 #end riscv_int_numeric_corner_stream_6
                  srai         a3, a4, 29
                  nop
                  srl          a7, a1, s1
                  slt          t0, a5, a7
                  slti         t5, s11, -105
                  add          s1, gp, s9
                  xori         t3, tp, 148
                  andi         a2, a3, 1418
                  or           t1, t6, sp
                  slt          s2, a4, t4
                  sltu         a1, a6, s4
                  ori          a5, a5, -1507
                  srl          a0, s3, s3
                  xor          a5, t3, a5
                  sub          a2, s9, a0
                  sll          gp, ra, s6
                  sltu         s0, t5, a1
                  ori          s11, a4, 904
                  lui          s11, 743576
                  andi         s1, s9, 1969
                  slli         s11, tp, 17
                  sll          tp, s3, tp
                  lui          s10, 534305
                  xor          a1, zero, s6
                  lui          a3, 606151
                  srli         s11, s3, 23
                  srl          a2, s3, a1
                  srl          t6, s9, s1
                  slti         s10, t1, 1188
                  auipc        a0, 55270
                  sub          t3, t6, s6
                  slti         ra, s3, 825
                  sra          s5, s3, a2
                  xori         a5, s6, 1431
                  and          s10, t0, s3
                  xori         sp, s0, 1313
                  sll          s4, s1, s7
                  andi         s11, s9, -1834
                  slli         s2, t0, 17
                  or           a0, a1, s10
                  srai         s3, tp, 1
                  sltu         a7, a5, a4
                  andi         t6, t0, -1969
                  srai         sp, s6, 29
                  add          s0, a6, tp
                  srl          a0, s2, a6
                  andi         s6, s9, -1397
                  slti         s6, s2, 186
                  nop
                  slt          tp, a5, t4
                  xor          s2, a3, t3
                  or           s1, s10, a5
                  nop
                  slt          s11, a3, s9
                  addi         s8, t4, -1863
                  srl          t2, s8, s1
                  auipc        a3, 840339
                  and          t2, a3, s4
                  slt          s8, t2, a7
                  or           gp, a7, t3
                  srai         t2, zero, 22
                  auipc        t0, 771233
                  srai         s7, a5, 10
                  and          tp, t5, t0
                  xori         s0, t0, 1439
                  addi         s1, zero, -1767
                  sub          t0, a1, a2
                  lui          a6, 849265
                  srl          s1, s5, s4
                  and          s3, s0, s4
                  andi         t2, a4, 1772
                  and          s2, a4, t0
                  slt          a7, t1, gp
                  sll          zero, a1, gp
                  xor          t1, s4, s1
                  sltiu        t2, s3, -1695
                  srai         s11, t4, 27
                  xor          a0, gp, s7
                  andi         s1, s6, 1394
                  srli         s10, s4, 27
                  sltiu        s5, t5, -1611
                  ori          ra, sp, 1835
                  and          sp, tp, s1
                  and          gp, t0, t3
                  addi         a5, s5, 874
                  sltu         a1, zero, a6
                  sltu         s0, s4, a6
                  sltiu        t3, s3, -876
                  xori         tp, t1, 1806
                  srl          t1, t6, s8
                  auipc        a5, 591346
                  andi         s5, t4, 18
                  srai         s7, t4, 16
                  sltu         a1, s0, s0
                  slt          t2, s11, s4
                  sub          t5, sp, s2
                  lui          t0, 889438
                  slt          t5, sp, a4
                  sltu         s2, t5, a7
                  xori         a2, a3, 699
                  srai         t5, s1, 4
                  or           a2, s9, a5
                  srl          t1, s8, s3
                  xor          s2, s2, s3
                  sltiu        s2, s0, -947
                  srli         a0, t5, 3
                  addi         s2, t5, 1371
                  auipc        s8, 781785
                  slti         s1, a5, 1201
                  sra          a1, t2, zero
                  addi         s8, t3, -823
                  auipc        s7, 609285
                  add          s8, a1, a6
                  addi         s11, a6, -1220
                  andi         s6, s7, -255
                  slti         t5, a6, -495
                  and          a1, a3, s8
                  sltiu        a1, t2, -2021
                  srl          s7, t6, t4
                  or           s8, t0, a1
                  srli         a5, s1, 19
                  slli         s2, a5, 25
                  auipc        a7, 66122
                  srai         a2, s10, 17
                  and          t6, zero, ra
                  srli         a5, s5, 19
                  nop
                  slt          a6, s2, a6
                  sra          s1, s8, s11
                  add          sp, sp, zero
                  srl          t0, t5, s6
                  auipc        t3, 792201
                  or           s6, t3, t6
                  auipc        t5, 815431
                  and          s7, s2, a0
                  srai         a7, t6, 26
                  andi         t1, a4, -485
                  sll          s1, a6, s4
                  and          a5, s7, s1
                  slt          s0, zero, t4
                  nop
                  slli         a5, s6, 10
                  xor          a6, s11, t2
                  andi         a1, s9, -533
                  slti         t1, sp, 726
                  xor          a7, a2, t4
                  nop
                  add          a1, t3, t2
                  and          a3, s10, s8
                  srai         ra, a4, 2
                  and          sp, s6, s7
                  andi         tp, s3, -384
                  and          gp, sp, a4
                  srai         t1, t0, 22
                  xori         s1, t1, 1106
                  addi         s10, s3, -43
                  add          s8, t1, s8
                  xor          tp, s7, t3
                  add          t1, a1, s4
                  nop
                  or           s10, t4, s9
                  slti         tp, s10, 2036
                  sra          a7, gp, a0
                  auipc        s2, 234643
                  and          sp, t0, t6
                  srli         t3, s4, 11
                  srli         s2, a1, 17
                  nop
                  srli         t5, tp, 2
                  slli         a3, a2, 0
                  xori         sp, a1, 522
                  lui          s8, 1028864
                  lui          t2, 644146
                  nop
                  auipc        a7, 226970
                  auipc        a1, 592444
                  ori          a6, a0, 1663
                  auipc        gp, 204522
                  and          a6, s0, t0
                  xor          s3, s3, s2
                  srl          a5, gp, a5
                  xor          a5, s5, tp
                  or           s8, s8, t1
                  auipc        s11, 1042257
                  slti         s8, s3, 1090
                  sra          gp, gp, s2
                  srl          zero, t6, s1
                  slt          a0, gp, s3
                  andi         t6, s3, -490
                  lui          gp, 379238
                  sra          s10, a6, s1
                  slli         a3, t0, 10
                  xor          t5, sp, t2
                  add          s2, t2, gp
                  auipc        t3, 278146
                  or           a6, s0, t3
                  xor          gp, s0, s9
                  srli         a3, s4, 17
                  srli         t1, t6, 10
                  add          s8, s4, a3
                  sltu         s11, a0, a4
                  sll          s7, t0, a4
                  srli         s4, s7, 7
                  srl          t5, t1, a1
                  andi         s6, s4, -605
                  add          t6, sp, a4
                  srli         s10, a0, 28
                  srli         gp, s4, 15
                  xori         s3, t6, 1448
                  andi         t6, t4, -1568
                  slli         a1, sp, 2
                  xori         a0, s3, 256
                  andi         s1, t5, -494
                  sub          a5, zero, t0
                  ori          t0, t2, 1460
                  auipc        a7, 89345
                  auipc        s0, 223383
                  srai         s0, t1, 23
                  srl          t1, s0, t0
                  srl          ra, s0, t3
                  auipc        t1, 798048
                  addi         zero, t1, 1552
                  sra          s10, t4, a4
                  xori         s8, s10, 563
                  nop
                  sltu         t0, t6, a5
                  slti         a7, t3, -506
                  sub          s3, zero, a7
                  and          a2, s10, sp
                  auipc        a6, 773977
                  sra          s2, s1, a7
                  slli         t5, a5, 13
                  lui          s8, 725241
                  slli         a7, ra, 16
                  sra          t2, s4, t1
                  auipc        t5, 507692
                  add          s3, s8, a5
                  or           s6, a2, a4
                  sub          s5, s4, a7
                  slti         s4, a6, -1044
                  sra          s1, gp, t6
                  addi         s7, a7, 1696
                  sltu         a3, s10, a4
                  addi         s1, ra, 1336
                  xori         s1, t6, -1626
                  slli         t3, t1, 7
                  lui          ra, 716025
                  srai         tp, a6, 10
                  addi         s1, ra, 1754
                  add          s2, s4, a7
                  sra          a0, s2, a0
                  slti         s8, sp, -1376
                  andi         a3, t2, 941
                  and          s3, sp, a2
                  slti         t3, a3, -647
                  xori         t6, s6, -1408
                  sra          s8, a5, zero
                  slti         s7, zero, 1571
                  add          a1, s3, s6
                  slt          a5, a0, a3
                  srli         a7, zero, 30
                  nop
                  sub          s4, a2, s0
                  add          t5, a1, t6
                  sltiu        a2, s5, 128
                  srai         a2, a0, 4
                  slti         gp, a1, -459
                  or           s3, t3, s0
                  andi         s5, s9, -1687
                  xori         s2, a4, -1080
                  srli         a0, a7, 8
                  srai         s1, s8, 6
                  ori          s7, s9, -852
                  sltiu        t3, s6, -1596
                  xori         sp, s7, -299
                  srai         t0, t2, 24
                  sll          t5, s8, a1
                  xori         s5, s9, 1587
                  srli         a0, a6, 3
                  slli         s6, t1, 31
                  sra          a2, s1, t5
                  slli         s8, tp, 20
                  nop
                  ori          t3, a2, -1692
                  srai         a3, s1, 19
                  nop
                  lui          s2, 879948
                  sltiu        zero, t0, -1309
                  auipc        s0, 821640
                  or           t5, a4, s10
                  and          s11, a2, t3
                  sra          s3, s7, sp
                  add          a7, a4, zero
                  srai         a2, t6, 3
                  slli         a0, s10, 15
                  andi         a7, t6, -622
                  and          t2, ra, t5
                  slt          s11, tp, t3
                  sra          a5, t0, a1
                  add          a5, a3, a0
                  xor          a5, a1, a0
                  addi         s8, s4, 922
                  auipc        a7, 320571
                  andi         s8, t3, 711
                  srl          a0, t2, a3
                  sltiu        s6, a1, -685
                  slt          gp, s8, s3
                  nop
                  add          s8, s9, t2
                  sra          t5, a4, a1
                  or           t3, tp, t6
                  sll          a7, t5, s8
                  sll          s6, zero, a1
                  sub          s10, s0, t0
                  sltu         s7, a1, t6
                  auipc        a1, 766364
                  sub          s5, s9, s8
                  sltiu        a0, s3, 957
                  xor          s1, t2, s10
                  xor          s1, t3, sp
                  slt          t2, a5, a1
                  sltu         s2, t1, t5
                  slt          sp, a4, s11
                  srai         gp, s11, 29
                  nop
                  sll          a7, s9, t1
                  xori         s4, sp, -270
                  nop
                  sltu         s3, t4, s5
                  slti         zero, t6, 2031
                  sub          a0, a4, t5
                  xori         t6, t0, -706
                  lui          t3, 550377
                  and          a5, s10, a1
                  andi         s7, t2, 1765
                  nop
                  sll          s1, s5, t5
                  ori          tp, s1, -1317
                  sra          s0, t5, t4
                  xor          ra, s6, s11
                  srl          s1, t2, t3
                  or           a3, t6, a2
                  nop
                  nop
                  add          s8, t1, s2
                  xori         s8, gp, 1939
                  lui          t6, 253425
                  sltu         t3, t1, tp
                  or           s3, t4, s6
                  add          t2, a0, s0
                  sra          t1, zero, s6
                  xori         a5, ra, 665
                  ori          s1, s4, -1886
                  sra          t5, s6, t2
                  slti         s3, s11, 1347
                  or           s1, a1, s0
                  slti         t6, s2, 1344
                  xori         a1, a6, 1666
                  auipc        t5, 984371
                  or           a7, s8, tp
                  ori          t6, a1, 1799
                  auipc        t0, 248736
                  srl          s1, t2, t5
                  addi         t2, s10, 730
                  addi         s7, a1, -624
                  xor          gp, tp, s11
                  addi         s0, a4, 1565
                  srl          a7, t1, t4
                  srli         t3, s3, 20
                  slti         a3, a1, -1384
                  srli         s11, t2, 29
                  ori          zero, t0, 534
                  srli         ra, a1, 20
                  ori          a0, t6, -1544
                  slt          a1, a1, a5
                  srli         a1, s2, 8
                  addi         s4, a4, -1939
                  sltiu        s1, s4, -1272
                  or           s11, a1, a2
                  ori          sp, s5, 1781
                  addi         s8, s4, 416
                  slti         t6, t0, 1966
                  sltiu        sp, t6, -1480
                  addi         s1, s6, -1359
                  ori          s8, t3, -953
                  slti         s5, s7, 1329
                  sltiu        a0, s3, -121
                  srai         s8, a5, 15
                  ori          t1, s8, -843
                  slli         a0, a7, 12
                  sltiu        a7, t0, -1059
                  sltiu        a7, a1, -1041
                  xor          t2, t3, a4
                  and          a5, a3, a5
                  and          ra, a1, s8
                  sra          a7, s7, a7
                  sra          s8, s1, s2
                  sll          s0, a5, s8
                  andi         s8, t3, 918
                  nop
                  srl          s6, s9, t5
                  and          s0, t4, s4
                  sltiu        t1, t2, -321
                  andi         gp, a0, -1686
                  sub          s4, s9, t6
                  srli         s5, s6, 16
                  slli         a2, zero, 8
                  sub          a6, a0, t3
                  add          s8, a1, s1
                  sll          a1, a1, sp
                  lui          s4, 397837
                  add          s3, tp, t5
                  srli         a0, s3, 22
                  srli         tp, s1, 22
                  xori         s8, s8, -11
                  add          a3, a0, s10
                  xori         s6, s1, 601
                  addi         t1, s9, 1393
                  add          a3, t0, t6
                  xor          t1, s6, a1
                  sltiu        t2, tp, 470
                  and          s7, ra, s10
                  srai         a0, gp, 2
                  auipc        s0, 923700
                  nop
                  ori          s8, s4, 1691
                  addi         t3, s6, -1125
                  ori          a3, sp, -47
                  addi         zero, s3, 123
                  ori          zero, t3, 982
                  xor          sp, s11, t6
                  or           a1, t3, s3
                  lui          s5, 29167
                  sll          t5, gp, tp
                  xori         a2, a7, -582
                  slt          a2, a5, s9
                  xori         zero, gp, -1832
                  srli         a0, a5, 19
                  srl          sp, a5, s7
                  auipc        t3, 941031
                  sltu         t5, tp, gp
                  sltu         t0, a6, sp
                  xori         s2, a4, 1057
                  andi         zero, s11, -1348
                  andi         s7, gp, -1876
                  add          s2, s6, t5
                  srl          t6, a6, t1
                  lui          s10, 224120
                  and          s0, a2, s1
                  srl          a6, a2, tp
                  sll          s1, s6, t4
                  andi         tp, tp, -1826
                  nop
                  slli         s10, sp, 8
                  sub          s5, t0, a0
                  auipc        t3, 172506
                  srl          t5, a0, s1
                  sll          zero, t3, s10
                  ori          s7, s3, -140
                  srai         s11, gp, 16
                  or           a7, s7, t5
                  ori          s0, t0, 1675
                  nop
                  auipc        s10, 568637
                  xori         t0, s7, -730
                  srai         s1, s2, 20
                  slli         s10, sp, 11
                  srai         s6, s9, 4
                  addi         s11, s0, -1411
                  lui          t3, 807832
                  add          s1, a3, s8
                  srl          tp, ra, s3
                  ori          t6, a5, 75
                  sltu         t6, s2, sp
                  slti         s0, t4, -1170
                  xor          s6, s5, t6
                  nop
                  auipc        a1, 33074
                  sub          t3, s1, a7
                  sltu         s1, tp, t1
                  srli         s5, s11, 28
                  slti         a3, t3, 1694
                  slti         zero, ra, -762
                  xor          a0, s4, gp
                  sll          s11, sp, t4
                  nop
                  slti         s8, t6, -1987
                  sll          s0, s4, s8
                  srli         s7, t2, 11
                  sltiu        s10, s8, 2020
                  slt          a0, s0, a5
                  sub          sp, s4, s4
                  add          s0, a7, s5
                  sltiu        a6, ra, 1932
                  srl          gp, s11, s9
                  lui          t2, 836179
                  slt          s11, tp, t0
                  addi         s11, ra, 667
                  addi         a0, t0, -262
                  add          a1, t6, s8
                  xor          s3, a1, a1
                  sra          s8, s0, t2
                  slt          ra, s9, ra
                  sra          s11, tp, a7
                  or           s0, t3, s10
                  and          t3, s1, s1
                  sll          t3, s9, s11
                  srai         s4, a3, 9
                  srai         t2, sp, 11
                  add          sp, s2, s7
                  srl          a0, ra, t2
                  slti         s1, tp, 832
                  and          s5, s1, a3
                  xori         ra, s1, 1772
                  add          s7, s1, s3
                  sll          a0, s1, a2
                  lui          s6, 438503
                  slti         t0, s10, -376
                  auipc        s3, 568165
                  andi         s7, t5, -1424
                  add          a3, s8, s8
                  slli         a2, sp, 13
                  addi         t3, a7, 1693
                  add          s4, t3, t2
                  sltiu        a7, t4, -1442
                  ori          t3, s0, 312
                  xori         a3, a3, -590
                  slti         tp, s7, 1243
                  or           a5, ra, s3
                  srli         zero, a0, 8
                  slt          gp, s9, a0
                  sltiu        t1, s2, 1070
                  srai         gp, a1, 28
                  srai         t1, gp, 22
                  addi         s8, s10, -1254
                  or           a6, a2, s1
                  srli         s5, t1, 26
                  sltu         t5, s5, s9
                  srai         ra, ra, 20
                  sub          t0, a1, a4
                  addi         s10, a3, -592
                  andi         a0, t4, -1833
                  sltiu        s6, a1, 1681
                  xori         t6, s9, 1847
                  sltiu        a3, sp, 1420
                  slli         a7, t4, 17
                  srli         s6, ra, 1
                  slli         a3, sp, 14
                  srli         t2, gp, 31
                  sra          gp, s7, s10
                  or           a7, tp, a0
                  or           t1, s3, s11
                  xori         s5, s4, 725
                  sltu         a2, s1, gp
                  andi         s10, s7, 503
                  slt          s5, a1, t6
                  slt          s10, s4, s3
                  slli         a7, s5, 18
                  sub          t1, ra, tp
                  ori          a1, s8, 160
                  sltiu        s5, s6, -983
                  slti         t3, s6, 833
                  sll          s4, s6, s0
                  sltiu        t3, tp, 551
                  slli         a5, s4, 31
                  xor          a1, s0, s10
                  sltu         s6, t0, t3
                  xor          a2, a0, t5
                  srai         s6, a6, 11
                  srai         s3, s9, 4
                  srli         tp, a6, 21
                  sub          s0, a5, tp
                  add          t3, s6, a3
                  srl          s8, sp, t3
                  srl          a7, t3, s3
                  srl          zero, s5, t5
                  or           sp, a2, t6
                  lui          t2, 626847
                  slli         a0, zero, 26
                  and          a7, a5, a0
                  ori          t5, t2, 321
                  and          a3, s0, t4
                  srai         a5, a1, 18
                  sll          a6, t1, s8
                  slt          t6, t6, t3
                  srli         s2, a4, 4
                  sra          s5, s2, s4
                  sltu         s0, s6, s0
                  xori         a3, s9, -1596
                  ori          s3, sp, 1232
                  xor          s1, a6, s3
                  ori          zero, s8, 2011
                  slt          a7, a0, s6
                  slti         t2, s4, 1767
                  xor          s10, t0, a0
                  xori         a3, s3, -719
                  ori          tp, zero, 889
                  xor          s0, s7, t3
                  srl          s3, s3, t3
                  slli         a2, a1, 31
                  andi         s1, tp, 1129
                  and          s8, s11, a1
                  slli         zero, s2, 28
                  sltu         s8, a1, a3
                  xor          s8, s0, gp
                  addi         a5, ra, 1515
                  nop
                  sra          a0, t1, t5
                  addi         s2, t2, 1605
                  sltu         a7, s9, s11
                  slti         s1, a7, 1221
                  xor          sp, a4, a7
                  andi         s6, ra, -1681
                  srl          s3, s11, s11
                  sltu         t3, t1, s0
                  add          zero, t6, tp
                  sltu         t6, tp, s8
                  xori         t6, a3, 408
                  sll          t1, s1, gp
                  or           a3, s8, s5
                  sll          s11, t2, s4
                  sll          tp, s7, s4
                  sltu         s2, s1, zero
                  sll          s11, t3, s10
                  slti         t2, t0, 1993
                  andi         sp, s5, 877
                  addi         a2, ra, 1635
                  xor          s10, sp, a1
                  slti         t1, t5, 647
                  nop
                  srai         s2, a1, 12
                  sub          t1, s9, t0
                  auipc        s0, 240779
                  nop
                  xori         s1, t4, 710
                  sltiu        sp, s10, -1897
                  slt          s6, zero, t5
                  sltiu        s3, s11, 1680
                  lui          t0, 787862
                  addi         s5, s0, -1924
                  addi         s0, a5, -1187
                  lui          s2, 965522
                  srli         a3, ra, 14
                  sub          s0, zero, tp
                  sltu         s5, a2, s10
                  slli         zero, zero, 1
                  srl          tp, a5, s5
                  sltu         a6, t5, s8
                  srl          t6, a1, gp
                  or           s7, tp, s7
                  srl          s5, t4, a1
                  add          tp, s11, t2
                  lui          zero, 292892
                  xor          t5, s5, a4
                  and          s6, t4, tp
                  slli         s8, a4, 17
                  sll          s11, t3, a5
                  add          s3, zero, ra
                  sll          gp, t6, s8
                  xori         t5, s9, 1855
                  sub          a2, a3, a7
                  sra          s4, sp, s5
                  slli         t1, a7, 4
                  ori          a1, s3, 991
                  slt          tp, s6, s0
                  sltiu        s7, t1, -1258
                  sll          ra, s5, gp
                  lui          s4, 633154
                  srl          t2, a4, s2
                  xori         a1, t6, -1916
                  and          s10, a2, s0
                  and          t5, sp, gp
                  and          s3, t1, s4
                  xor          a2, t6, a1
                  ori          gp, s7, -1971
                  nop
                  sltiu        s11, s5, -1133
                  add          s3, tp, t1
                  sra          t3, gp, s8
                  sll          gp, tp, s8
                  sll          t2, t5, t2
                  slt          gp, t2, t0
                  and          s10, s9, a4
                  sub          s2, a0, a7
                  sltu         t1, t3, a4
                  auipc        s0, 660006
                  and          gp, t0, s1
                  sra          s4, t1, a4
                  srli         s6, s1, 4
                  andi         tp, s0, -61
                  srl          s5, a4, a2
                  sll          a5, s4, t3
                  sll          t3, t2, a0
                  xor          gp, t6, t2
                  and          s1, t6, a0
                  sltu         s3, zero, sp
                  lui          s1, 103675
                  auipc        a6, 272973
                  xor          sp, tp, a6
                  auipc        t5, 634498
                  slti         s5, s1, -510
                  sub          a2, gp, s9
                  lui          zero, 940236
                  slli         s0, t5, 22
                  lui          s11, 311258
                  addi         t2, sp, 1617
                  add          sp, s5, a4
                  sltiu        sp, a4, 1360
                  ori          sp, s0, 1635
                  add          zero, t5, t4
                  and          t1, a3, a1
                  srai         tp, t6, 20
                  addi         s11, s4, 1953
                  addi         s3, tp, 1548
                  sltu         t5, a0, s3
                  srl          t6, a7, a5
                  add          t3, ra, s3
                  andi         s5, s3, -467
                  lui          s1, 482104
                  sra          s2, tp, t5
                  sll          t3, s2, tp
                  sub          t1, t6, gp
                  slti         s6, a1, -83
                  sltu         a6, a2, t4
                  srl          gp, t4, t0
                  sub          s6, t2, a7
                  andi         s5, a0, -1650
                  slti         s2, t5, -599
                  lui          s2, 186779
                  addi         sp, tp, 1939
                  sltu         t5, s4, a0
                  lui          t2, 761728
                  add          tp, zero, ra
                  la x14, test_done
                  jalr x0, x14, 0
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
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  addi x25, x25, -4
                  sw  x29, (x25)
                  add x29, x25, zero
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x19, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x19, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x1
                  beq x19, x9, instr_fault_handler
                  li x9, 0x5
                  beq x19, x9, load_fault_handler
                  li x9, 0x7
                  beq x19, x9, store_fault_handler
                  li x9, 0xc
                  beq x19, x9, pt_fault_handler
                  li x9, 0xd
                  beq x19, x9, pt_fault_handler
                  li x9, 0xf
                  beq x19, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
                  addi x25, x25, 4
                  mret

load_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
                  addi x25, x25, 4
                  mret

store_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
                  addi x25, x25, 4
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
                  addi x25, x25, 4
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
                  addi x25, x25, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  add x25, x29, zero
                  lw  x29, (x25)
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
