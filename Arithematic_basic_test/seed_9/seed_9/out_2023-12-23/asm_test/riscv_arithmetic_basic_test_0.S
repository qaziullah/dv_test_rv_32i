.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  li x21, 0x0
                  csrw 0x304, x21 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x6
                  li x2, 0xfd271f3a
                  li x3, 0x0
                  li x4, 0xb45e3a78
                  li x5, 0xf3539446
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x970c203e
                  li x9, 0xfb2ea4f6
                  li x10, 0x4056b390
                  li x11, 0xf862cdf0
                  li x12, 0x31ce0973
                  li x13, 0xc0107c90
                  li x15, 0xff4e9b7e
                  li x16, 0x80000000
                  li x17, 0xf1dca2a3
                  li x18, 0xe
                  li x19, 0xfb3fcf36
                  li x20, 0x80000000
                  li x21, 0xfdb012bb
                  li x22, 0xf3eadba7
                  li x23, 0x9
                  li x24, 0x80000000
                  li x25, 0x8
                  li x26, 0x0
                  li x27, 0xfe8386bd
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0x80000000
                  la x14, user_stack_end
main:             li           a2, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s5, 0xffffffff
                  li           t0, 0x0
                  li           s2, 0x80000000
                  li           t2, 0xffffffff
                  li           s11, 0xffffffff
                  li           ra, 0x582f3dd8
                  li           t4, 0x0
                  li           a7, 0x80000000
                  li           sp, 0x0
                  auipc        t0, 466921
                  lui          ra, 1022609
                  addi         s5, a2, 1335
                  addi         sp, s5, 1572
                  lui          a2, 321920
                  lui          a2, 854695
                  auipc        a2, 734025
                  add          a2, t2, a2
                  add          s11, ra, t4
                  nop
                  nop
                  auipc        ra, 714437
                  sub          t2, sp, t2
                  lui          a7, 845156
                  addi         ra, t2, 695
                  auipc        t2, 426872
                  nop
                  addi         ra, t0, -510
                  add          s11, s5, t4
                  sub          s11, s11, t4
                  sub          a7, s11, t0
                  lui          s5, 700337
                  sub          s11, sp, sp
                  addi         t4, s11, -549 #end riscv_int_numeric_corner_stream_13
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s11, 0x0
                  li           s4, 0xa4743d90
                  li           s10, 0x0
                  li           ra, 0x3164bba0
                  li           t2, 0x80000000
                  li           t1, 0x80000000
                  li           t5, 0x80000000
                  li           s7, 0x0
                  li           s9, 0x80000000
                  auipc        t2, 118141
                  sub          t1, s11, a0
                  lui          t5, 444006
                  lui          ra, 667918
                  lui          s4, 303720
                  nop
                  add          t1, t1, s7
                  lui          s9, 205833
                  sub          s4, t2, t1
                  addi         t1, t5, -1946
                  auipc        t2, 710772
                  addi         s10, s7, 208
                  auipc        s11, 660132
                  nop
                  auipc        s4, 704880
                  lui          t2, 515821
                  auipc        a0, 513340
                  addi         a0, ra, -100
                  lui          s7, 132141
                  add          t5, s7, a0
                  add          t5, t1, t5 #end riscv_int_numeric_corner_stream_18
                  li           t1, 0x8d5ba5e6 #start riscv_int_numeric_corner_stream_3
                  li           s3, 0xbeecb04b
                  li           s5, 0xffffffff
                  li           a2, 0x0
                  li           s6, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0x80000000
                  li           t0, 0x80000000
                  li           a1, 0x80000000
                  li           s2, 0x8a41338c
                  add          a2, s8, s2
                  lui          a2, 463310
                  nop
                  nop
                  auipc        a2, 983640
                  nop
                  nop
                  nop
                  add          s2, s3, gp
                  addi         s3, s2, -945
                  nop
                  auipc        s3, 100981
                  nop
                  auipc        t0, 206439
                  lui          s3, 307053
                  auipc        s2, 315271
                  addi         a1, s8, -756
                  auipc        s5, 346067
                  sub          s6, a1, s6
                  sub          gp, s8, s5
                  sub          a2, t1, gp
                  sub          s2, s6, t1
                  sub          a1, t0, s2
                  lui          s2, 853583 #end riscv_int_numeric_corner_stream_3
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s5, 0x80000000
                  li           s1, 0x0
                  li           s6, 0x73021dba
                  li           t4, 0x80000000
                  li           a3, 0xffffffff
                  li           t5, 0xffffffff
                  li           a6, 0x80000000
                  li           t3, 0x80000000
                  li           s7, 0x87612746
                  add          a6, a6, s6
                  auipc        t3, 560415
                  addi         a3, t5, -179
                  addi         s5, a6, 801
                  addi         a6, t5, -1924
                  addi         t5, s6, 1820
                  auipc        t5, 203188
                  auipc        t4, 559844
                  lui          t5, 62778
                  auipc        t5, 278224
                  addi         a6, s6, 1882
                  sub          s1, s1, t3
                  sub          a2, t5, a3
                  add          a2, s6, a6
                  nop
                  addi         t3, a2, -373
                  sub          s6, a3, t4
                  addi         s7, a2, 153
                  auipc        a3, 155587
                  add          a2, a2, a2
                  lui          a3, 436354
                  add          t5, a2, t4
                  addi         t4, s7, -1201
                  nop
                  nop
                  auipc        s7, 968504 #end riscv_int_numeric_corner_stream_2
                  li           t0, 0x5bc4410d #start riscv_int_numeric_corner_stream_22
                  li           s9, 0x80000000
                  li           s4, 0x80000000
                  li           t3, 0x80000000
                  li           s11, 0xc19bb61f
                  li           t2, 0xd0fa3c2a
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  li           sp, 0x0
                  li           a6, 0xffffffff
                  add          a7, t3, t0
                  addi         t2, t2, -1122
                  add          t3, t3, a6
                  nop
                  nop
                  nop
                  nop
                  nop
                  lui          tp, 126149
                  auipc        s9, 582525
                  addi         a6, s4, -1981
                  lui          sp, 183046
                  sub          t3, s11, t0
                  addi         s9, sp, 45
                  auipc        t0, 298768
                  sub          t2, s4, t3
                  nop
                  sub          t3, sp, t0
                  auipc        t2, 522663
                  lui          s9, 287991
                  lui          t3, 1023753
                  sub          s11, s9, s4 #end riscv_int_numeric_corner_stream_22
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           t4, 0xffffffff
                  li           a2, 0xffffffff
                  li           ra, 0xffffffff
                  li           s8, 0x80000000
                  li           t0, 0x80000000
                  li           t3, 0x13e05f79
                  li           tp, 0xd0e5bd30
                  li           s2, 0x0
                  li           a7, 0xffffffff
                  addi         s2, ra, 742
                  addi         tp, t3, 151
                  add          ra, t3, a2
                  add          s1, t4, ra
                  nop
                  nop
                  sub          s2, s2, tp
                  add          s2, tp, t4
                  addi         t0, t0, -1322
                  addi         s8, t4, 979
                  nop
                  lui          a2, 748214
                  sub          s2, s8, a7
                  nop
                  add          a2, t0, s8
                  lui          t3, 635361
                  addi         s1, s2, -446
                  auipc        t4, 998717
                  lui          t0, 606290
                  addi         s8, s1, 577
                  lui          t3, 243305
                  lui          a2, 938069 #end riscv_int_numeric_corner_stream_23
                  li           s9, 0xc02adb67 #start riscv_int_numeric_corner_stream_11
                  li           s10, 0x9876f324
                  li           a2, 0x80000000
                  li           a7, 0x0
                  li           t4, 0x80000000
                  li           a0, 0x80000000
                  li           s6, 0xef18ce29
                  li           tp, 0x0
                  li           s1, 0x0
                  li           s0, 0xaf66780c
                  auipc        s10, 50699
                  addi         t4, s1, -782
                  sub          t4, t4, tp
                  nop
                  sub          s1, tp, s10
                  addi         s0, a2, -779
                  lui          a7, 1026513
                  add          s10, t4, s9
                  add          tp, s0, a0
                  nop
                  auipc        t4, 713375
                  auipc        tp, 224889
                  lui          a2, 777932
                  sub          s10, t4, s0
                  add          a0, s10, tp
                  add          s10, tp, t4 #end riscv_int_numeric_corner_stream_11
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s5, 0xb434c89f
                  li           t2, 0x83b44738
                  li           s9, 0x8f98bf4e
                  li           gp, 0x80000000
                  li           s3, 0x0
                  li           t5, 0x80000000
                  li           a3, 0x9bb6e5ad
                  li           sp, 0x0
                  li           s11, 0x0
                  nop
                  nop
                  auipc        gp, 707681
                  auipc        s9, 181145
                  add          sp, s9, sp
                  nop
                  add          s3, t5, a3
                  nop
                  lui          s3, 499706
                  nop
                  addi         s5, t5, 522
                  sub          s11, a3, a3
                  auipc        s3, 23792
                  lui          s9, 148485
                  lui          t5, 395715
                  addi         t2, t2, 571
                  nop
                  sub          s9, s4, s9
                  sub          a3, t2, s9
                  nop
                  addi         sp, s11, -182
                  nop #end riscv_int_numeric_corner_stream_31
                  li           t2, 0x88c6d17c #start riscv_int_numeric_corner_stream_37
                  li           tp, 0x0
                  li           s7, 0x0
                  li           ra, 0xffffffff
                  li           s3, 0xffffffff
                  li           sp, 0xffffffff
                  li           a3, 0x0
                  li           s11, 0xffffffff
                  li           s5, 0x80000000
                  li           a7, 0x0
                  addi         t2, a7, -1401
                  nop
                  nop
                  auipc        a3, 353644
                  lui          a3, 106631
                  nop
                  add          sp, t2, s3
                  add          sp, ra, ra
                  lui          sp, 990248
                  lui          ra, 625813
                  auipc        s5, 876554
                  auipc        s11, 759724
                  add          a7, tp, s3
                  addi         a3, s5, 69
                  nop
                  lui          a3, 162736
                  add          tp, a3, tp
                  auipc        tp, 623090
                  sub          sp, sp, s7
                  add          s11, a7, t2
                  addi         s3, s11, -1613
                  add          a7, tp, t2
                  lui          a7, 723250
                  lui          tp, 612123
                  nop
                  lui          a3, 247523 #end riscv_int_numeric_corner_stream_37
                  li           s0, 0xebcb8229 #start riscv_int_numeric_corner_stream_33
                  li           ra, 0xffffffff
                  li           sp, 0x80000000
                  li           a1, 0x0
                  li           a2, 0xc945b19d
                  li           a3, 0x0
                  li           a6, 0xaa0ce4f
                  li           s11, 0x80cd0abf
                  li           s3, 0xffffffff
                  li           tp, 0xbd2dd54d
                  sub          s11, s11, s3
                  auipc        a3, 60448
                  nop
                  sub          s11, a6, s0
                  nop
                  nop
                  addi         a3, a1, 1092
                  add          a1, tp, ra
                  add          ra, tp, tp
                  add          sp, s3, a1
                  lui          a6, 361013
                  auipc        s0, 385034
                  sub          tp, sp, a1
                  nop
                  auipc        s11, 618895
                  nop
                  auipc        a6, 886223
                  nop
                  nop
                  sub          s0, a2, a1
                  auipc        s0, 139298
                  sub          sp, tp, s3
                  sub          sp, a3, tp
                  lui          a2, 771017
                  addi         s3, a6, -1528
                  addi         s0, a3, 1036
                  auipc        s0, 907112
                  auipc        a3, 587466
                  lui          sp, 52460 #end riscv_int_numeric_corner_stream_33
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           sp, 0xaa56b8e1
                  li           tp, 0xdc355057
                  li           a3, 0x0
                  li           t3, 0xffffffff
                  li           t1, 0xffffffff
                  li           gp, 0x80000000
                  li           s3, 0xffffffff
                  li           t4, 0x98e32f40
                  li           t5, 0xffffffff
                  auipc        sp, 265861
                  auipc        sp, 55821
                  addi         t3, sp, 1547
                  auipc        t5, 358123
                  sub          t1, sp, tp
                  auipc        t3, 1001408
                  sub          ra, sp, sp
                  auipc        a3, 560844
                  sub          a3, ra, t4
                  lui          t1, 849381
                  auipc        sp, 292722
                  nop
                  nop
                  lui          t5, 1046498
                  lui          s3, 946308
                  auipc        t5, 262894
                  auipc        sp, 773257
                  add          sp, tp, a3
                  add          a3, gp, t1
                  lui          tp, 184232
                  addi         ra, s3, -740
                  nop
                  sub          gp, t5, s3
                  auipc        a3, 895369
                  sub          sp, sp, tp
                  nop
                  sub          t3, sp, t4
                  nop
                  add          t4, a3, t5
                  addi         s3, t3, -1545 #end riscv_int_numeric_corner_stream_15
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           a2, 0x9b65d010
                  li           s9, 0x80000000
                  li           s8, 0xffffffff
                  li           s3, 0x4a7feeb8
                  li           a1, 0x80000000
                  li           s5, 0x80000000
                  li           t1, 0x0
                  li           t2, 0x6a73ed0e
                  li           s10, 0xffffffff
                  add          s8, a1, s9
                  add          a2, t2, t1
                  auipc        s10, 994055
                  addi         s9, a2, 1570
                  auipc        t1, 7453
                  lui          a2, 23706
                  add          s5, s10, a2
                  lui          s0, 540764
                  auipc        t2, 487246
                  auipc        t2, 784961
                  addi         s9, a1, 768
                  sub          t1, s0, s8
                  addi         s0, t1, 2047
                  add          t1, a2, s9
                  addi         t2, a2, 225
                  nop #end riscv_int_numeric_corner_stream_35
                  li           a2, 0xfff58210 #start riscv_int_numeric_corner_stream_10
                  li           s4, 0xffffffff
                  li           t4, 0xedcce660
                  li           s11, 0x80000000
                  li           s3, 0x0
                  li           a1, 0x0
                  li           t3, 0x0
                  li           s0, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x0
                  sub          a6, t4, t3
                  auipc        s3, 655081
                  nop
                  lui          s3, 938280
                  sub          a6, s4, s3
                  sub          s3, a6, s11
                  auipc        s0, 472198
                  nop
                  addi         a6, s4, 2024
                  lui          a1, 369978
                  auipc        a1, 192094
                  sub          s0, a6, a6
                  sub          s9, s4, s3
                  lui          s4, 216902
                  sub          s3, s0, a2
                  addi         s11, s4, 854
                  sub          s0, s3, a2
                  auipc        t4, 404750 #end riscv_int_numeric_corner_stream_10
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           t0, 0xa7975daa
                  li           ra, 0x6d177e04
                  li           a1, 0x0
                  li           s0, 0x80000000
                  li           t3, 0xffffffff
                  li           t5, 0x0
                  li           t4, 0x80000000
                  li           tp, 0x80000000
                  li           s6, 0x0
                  addi         t3, s2, 888
                  auipc        a1, 496877
                  sub          a1, tp, ra
                  add          t4, ra, s6
                  add          s2, tp, s2
                  sub          a1, t3, t0
                  add          s0, t0, t4
                  sub          t4, s2, a1
                  lui          t0, 573913
                  lui          s0, 943503
                  nop
                  auipc        s0, 555417
                  lui          t5, 183237
                  lui          s6, 333587
                  sub          s0, s6, a1
                  lui          tp, 901876
                  auipc        tp, 873638
                  add          s2, a1, t4
                  add          s2, s2, t0
                  add          s0, s2, t3
                  add          a1, a1, tp
                  nop #end riscv_int_numeric_corner_stream_30
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           t4, 0xffffffff
                  li           s6, 0x0
                  li           s4, 0x80000000
                  li           a7, 0x80000000
                  li           s2, 0xffffffff
                  li           a1, 0x80000000
                  li           s11, 0x0
                  li           s7, 0x1d88a092
                  li           s10, 0xffffffff
                  addi         a1, s6, -1615
                  sub          s6, a7, s6
                  sub          t4, a7, t4
                  lui          s7, 438196
                  sub          a2, t4, s6
                  nop
                  lui          s4, 1005608
                  sub          s11, a7, s11
                  add          s6, a1, a2
                  sub          s2, a7, s6
                  lui          a7, 671700
                  nop
                  addi         s10, s10, -390
                  addi         a1, a1, 1795
                  auipc        t4, 91110
                  lui          a1, 965221
                  sub          s4, s4, s6
                  nop
                  auipc        t4, 665879
                  lui          s6, 644646
                  lui          t4, 917128
                  add          s6, a7, s6
                  add          s2, t4, s10 #end riscv_int_numeric_corner_stream_1
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s8, 0x0
                  li           t1, 0x0
                  li           t2, 0xffffffff
                  li           a0, 0x0
                  li           tp, 0x0
                  li           s11, 0x80000000
                  li           s10, 0x0
                  li           t3, 0xeab5b92f
                  li           s3, 0x0
                  add          s3, s10, s11
                  addi         s9, t3, -1193
                  lui          s8, 300126
                  add          t3, s8, t1
                  addi         t2, s10, -1576
                  nop
                  add          a0, t3, s11
                  addi         a0, tp, -1203
                  nop
                  sub          t3, tp, s3
                  add          s9, a0, t2
                  nop
                  add          s10, s9, t1
                  auipc        t3, 737351
                  add          s11, t3, t1
                  add          t2, t3, s9
                  lui          s9, 405339
                  auipc        s11, 624642
                  nop
                  lui          tp, 13297
                  nop
                  auipc        tp, 351883
                  nop
                  nop
                  add          t1, s10, s3
                  sub          tp, a0, t2
                  auipc        tp, 206314
                  addi         t1, s3, 1062 #end riscv_int_numeric_corner_stream_0
                  li           s3, 0x902797e2 #start riscv_int_numeric_corner_stream_19
                  li           t4, 0xffffffff
                  li           s2, 0x0
                  li           tp, 0x0
                  li           s6, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0x0
                  li           sp, 0x80000000
                  li           a2, 0x80000000
                  li           s7, 0x80000000
                  addi         s6, gp, -1801
                  lui          a2, 29921
                  lui          sp, 145599
                  nop
                  add          a2, s6, a0
                  lui          a0, 274924
                  sub          s6, gp, a2
                  lui          t4, 823644
                  lui          s7, 517757
                  addi         s3, t4, -1373
                  sub          s7, a2, gp
                  nop
                  sub          gp, s3, a2
                  lui          gp, 873253
                  addi         a2, s3, -1013
                  sub          tp, s7, tp
                  add          a2, tp, tp
                  addi         a2, t4, -245
                  add          a0, a2, s3
                  add          t4, gp, s2
                  nop
                  addi         s2, s3, 2002 #end riscv_int_numeric_corner_stream_19
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           s6, 0x0
                  li           s0, 0xffffffff
                  li           t4, 0xe3ab1e35
                  li           ra, 0x80000000
                  li           a2, 0x0
                  li           s8, 0xffffffff
                  li           s9, 0xf873d558
                  li           s10, 0x80000000
                  li           s2, 0xffffffff
                  auipc        s9, 381104
                  sub          s8, s0, s10
                  nop
                  addi         ra, sp, 425
                  addi         sp, sp, 1107
                  lui          sp, 582904
                  addi         s8, s9, -1113
                  sub          s9, a2, sp
                  addi         s0, s6, 1103
                  add          s10, t4, sp
                  lui          s6, 837941
                  lui          ra, 977872
                  add          s10, ra, t4
                  addi         s2, s0, 2033
                  addi         s9, ra, -1751
                  auipc        ra, 712368
                  nop
                  auipc        s0, 52860 #end riscv_int_numeric_corner_stream_21
                  li           s8, 0x7c6bd686 #start riscv_int_numeric_corner_stream_7
                  li           t1, 0xffffffff
                  li           ra, 0x80000000
                  li           tp, 0x0
                  li           s4, 0xffffffff
                  li           a0, 0x0
                  li           a7, 0x0
                  li           a1, 0xffffffff
                  li           a3, 0x0
                  li           t2, 0x990005e4
                  lui          t1, 226487
                  sub          t1, t1, ra
                  nop
                  add          a0, t2, a1
                  lui          s4, 353832
                  sub          s4, s4, a0
                  auipc        t1, 917500
                  lui          a7, 272957
                  addi         a3, t1, 433
                  nop
                  auipc        s8, 359267
                  auipc        a3, 75247
                  add          t1, ra, a7
                  nop
                  auipc        a3, 737840
                  nop
                  auipc        a3, 492191
                  nop
                  addi         a3, s4, 467 #end riscv_int_numeric_corner_stream_7
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           ra, 0x0
                  li           t5, 0x1395c5c4
                  li           a6, 0x0
                  li           tp, 0xed9a2258
                  li           t4, 0x8223cabf
                  li           t1, 0x80000000
                  li           s0, 0xffffffff
                  li           sp, 0xa508a638
                  li           t2, 0xffffffff
                  add          tp, t5, ra
                  lui          t2, 736391
                  add          tp, t4, t2
                  addi         t2, t4, -1334
                  addi         sp, tp, -1271
                  auipc        t2, 466334
                  addi         ra, t4, -1553
                  nop
                  auipc        t4, 610973
                  add          sp, t5, t1
                  auipc        s11, 588395
                  addi         ra, tp, 1691
                  sub          t4, tp, ra
                  lui          a6, 94130
                  nop
                  nop
                  lui          t4, 62849
                  auipc        a6, 346793
                  sub          a6, tp, ra
                  lui          s0, 755765 #end riscv_int_numeric_corner_stream_4
                  li           s5, 0x84557c74 #start riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff
                  li           t0, 0xffffffff
                  li           s3, 0x6c5ae509
                  li           s10, 0x80000000
                  li           s8, 0x7936cd9f
                  li           a7, 0x5ea02eba
                  li           s9, 0x80000000
                  li           gp, 0x80000000
                  li           a0, 0xffffffff
                  auipc        s3, 311287
                  auipc        s10, 946499
                  sub          s3, s10, s8
                  sub          s10, s10, s7
                  nop
                  auipc        a0, 975735
                  sub          gp, t0, s8
                  lui          t0, 737736
                  auipc        s9, 317740
                  lui          s8, 257273
                  lui          a0, 752773
                  lui          s8, 1046015
                  sub          a0, s5, s8
                  nop
                  nop #end riscv_int_numeric_corner_stream_12
                  sra          tp, tp, s7
                  srai         a2, t2, 24
                  xor          zero, a1, s9
                  add          a0, s2, zero
                  add          t1, zero, ra
                  addi         s11, t3, 954
                  andi         t5, s0, -317
                  slti         t5, t0, -1526
                  sra          t3, a4, t6
                  sltu         sp, s4, s7
                  xori         s8, zero, -1602
                  addi         a0, a4, -928
                  sra          t3, t5, s7
                  srai         a1, s1, 13
                  slti         t2, s6, -720
                  sltiu        t5, a3, -1536
                  slt          tp, ra, t6
                  and          s8, s9, s8
                  sra          t2, s3, t5
                  andi         s6, s0, 929
                  sltiu        t0, a2, -1825
                  srli         s9, t3, 14
                  slt          t0, s3, ra
                  slli         s3, a2, 22
                  auipc        s0, 80645
                  auipc        t2, 703194
                  slli         t5, s6, 16
                  lui          s5, 821929
                  sll          s4, t1, s6
                  sll          s9, s9, s2
                  sra          s2, a0, t2
                  srl          t1, a5, t6
                  slli         s7, s7, 10
                  xor          a6, a1, t2
                  nop
                  xor          s7, a6, a6
                  andi         s5, s6, -1463
                  sltiu        s5, a7, 1173
                  xor          zero, t0, t4
                  sub          s4, tp, a4
                  sll          s11, s2, sp
                  or           zero, t2, s10
                  lui          t4, 743948
                  srli         s11, s10, 7
                  auipc        t1, 666468
                  srai         t2, zero, 28
                  slti         t0, s0, -1884
                  sltiu        s5, s8, 1639
                  add          s4, a1, s3
                  sll          t2, s3, s5
                  lui          sp, 712367
                  or           t4, a7, gp
                  sll          a2, s11, s10
                  ori          sp, t6, 1232
                  addi         a6, a0, -1302
                  or           t4, a0, sp
                  xori         s9, tp, 337
                  xor          t4, gp, a7
                  andi         s0, t5, 679
                  ori          a1, s7, 405
                  srl          ra, a2, s9
                  srli         t5, t1, 28
                  slti         ra, s8, -252
                  andi         a0, a1, 1428
                  ori          t1, t1, -11
                  sll          ra, s10, ra
                  and          sp, a0, tp
                  lui          s1, 743362
                  addi         zero, s3, -999
                  slli         ra, a0, 28
                  sub          ra, zero, a1
                  sub          s3, s10, t4
                  and          sp, s9, s2
                  ori          t3, t1, -1672
                  auipc        gp, 206664
                  add          t3, s0, s5
                  srai         s8, a1, 4
                  srli         s9, a1, 27
                  slli         t1, t1, 12
                  sll          s8, a7, t0
                  sll          a3, t3, s4
                  srai         t1, a2, 17
                  or           a7, s10, t1
                  andi         ra, t6, -1676
                  add          a7, s6, t0
                  xor          a1, ra, s11
                  srai         t4, s4, 21
                  xor          a1, s7, s8
                  slt          s8, sp, s8
                  sltiu        s10, s9, 1300
                  andi         a7, tp, -2028
                  sltiu        t4, a5, 756
                  slti         s11, s7, 1153
                  slli         tp, gp, 17
                  xori         a0, t5, -986
                  sltiu        a1, a4, 668
                  auipc        s6, 195535
                  slti         s11, ra, -1435
                  ori          s10, a1, 867
                  srli         gp, s7, 9
                  srli         t2, a4, 9
                  slti         a0, a3, 883
                  sltiu        s5, a0, 883
                  srai         s2, t5, 4
                  nop
                  andi         a6, t0, 463
                  slli         a3, s3, 4
                  add          s2, s9, t2
                  sll          s9, a2, sp
                  srl          t4, ra, a7
                  srai         t3, t2, 3
                  sltiu        a6, s2, -435
                  xor          gp, a2, s11
                  sra          a1, s10, a0
                  lui          t5, 920650
                  srli         gp, s5, 13
                  add          s3, s5, s4
                  srl          t0, s11, a1
                  and          t5, a4, s2
                  nop
                  sra          s10, gp, a1
                  xori         s8, a1, 1946
                  srli         s4, ra, 29
                  srli         t3, s2, 22
                  auipc        a3, 355334
                  addi         zero, s3, -368
                  slli         sp, s8, 4
                  xor          t3, t4, a5
                  xori         a0, s0, -854
                  srai         s11, s10, 5
                  andi         t4, t5, -1440
                  sltiu        t3, s10, 1301
                  sub          s8, t3, t0
                  andi         a3, t1, 1312
                  xor          t1, s4, s3
                  slli         s7, t6, 31
                  lui          t2, 828028
                  xori         ra, gp, 1219
                  or           s11, a3, s1
                  nop
                  slti         gp, t5, -347
                  addi         s8, t4, -254
                  srl          t1, s7, ra
                  srli         a6, a4, 6
                  andi         s7, a1, -1743
                  srai         t5, s8, 15
                  sra          a0, a5, t1
                  xor          s6, zero, a0
                  add          s2, s1, tp
                  sra          s11, s11, a5
                  sltu         a2, a1, tp
                  lui          t4, 193768
                  srli         s9, gp, 11
                  slti         sp, s8, 663
                  sra          a6, a5, s3
                  xor          a2, s5, t5
                  xor          a0, s10, a6
                  sll          tp, s6, t5
                  addi         s11, a0, 1271
                  sltiu        a3, t2, 426
                  andi         t1, a3, -1522
                  lui          gp, 382516
                  add          a6, ra, t6
                  slti         s7, t0, -1794
                  ori          s10, s4, 412
                  slt          s6, t6, s0
                  and          zero, s5, t5
                  sll          s0, s3, a6
                  xori         t5, a0, 1990
                  nop
                  srl          s4, a4, t6
                  slti         sp, s3, 575
                  auipc        s5, 112767
                  lui          a2, 109105
                  sltiu        t4, s0, -310
                  xor          a0, a6, s5
                  xor          s2, t0, s10
                  sra          t2, t2, s11
                  xori         s10, a4, 1859
                  auipc        s2, 531553
                  and          tp, s3, a3
                  sra          t3, s0, a0
                  srai         ra, s7, 14
                  sub          s10, a3, a1
                  lui          s10, 587624
                  addi         t5, a7, 1628
                  andi         ra, s11, 1774
                  sltu         s11, a5, s4
                  and          zero, a4, s10
                  srli         s11, sp, 8
                  srai         a7, s7, 18
                  sltu         t1, t6, zero
                  srli         tp, sp, 25
                  xor          s3, t0, t4
                  slt          s5, s4, a0
                  sltu         s11, a7, s7
                  slti         a6, t3, 52
                  add          s3, s3, s9
                  or           t1, a5, a7
                  sltiu        s10, s2, 2024
                  addi         a7, t5, 790
                  slli         t1, ra, 21
                  srl          sp, a6, s9
                  srai         s2, gp, 8
                  andi         a6, s4, -255
                  sra          t4, t6, t5
                  srai         a6, a1, 1
                  add          t0, a2, s4
                  xori         t1, a1, -1488
                  lui          s7, 180986
                  slt          s1, t3, s4
                  slt          t1, s9, t2
                  lui          t3, 82946
                  sltiu        s11, ra, -1952
                  xori         zero, gp, 1791
                  slti         t5, t6, 1211
                  nop
                  lui          a3, 875431
                  slt          s6, s4, gp
                  xor          gp, t5, a0
                  sra          s8, s0, s6
                  xor          s9, s2, a3
                  srai         t3, a6, 7
                  addi         s8, tp, 925
                  auipc        t5, 689300
                  xori         a7, ra, 504
                  sltu         t1, t3, s0
                  ori          t1, s7, -1785
                  slti         a2, s5, -588
                  sll          t5, a6, s10
                  sra          t2, s3, t2
                  sltu         s6, s2, zero
                  lui          t5, 332908
                  sra          s11, s10, t0
                  xor          s6, t3, t4
                  xor          a7, t4, s8
                  nop
                  addi         s5, zero, 1883
                  lui          a2, 907448
                  slt          a7, a5, a4
                  srli         t0, s4, 2
                  andi         s5, s0, 1895
                  xor          t5, ra, a1
                  nop
                  sltu         a0, a1, t4
                  sltiu        s3, a5, 949
                  andi         a3, a4, -1075
                  sub          a6, a2, zero
                  slti         a2, a4, -1209
                  srai         t0, s11, 16
                  slt          sp, s10, a0
                  srl          gp, a1, s10
                  sub          a0, a2, s6
                  sll          s9, a5, t1
                  slti         a3, s8, 1344
                  addi         s2, a5, -524
                  slt          s11, s9, t1
                  srl          s8, s7, zero
                  sltu         s9, a6, s11
                  srai         s4, gp, 26
                  nop
                  addi         s3, a5, 1488
                  or           s0, sp, s4
                  add          s1, ra, t4
                  addi         a0, a2, 374
                  and          s5, t2, s1
                  slti         s6, s5, -369
                  sub          a0, s7, ra
                  ori          s6, t5, 1872
                  xori         s3, s5, -1867
                  srl          a2, s7, gp
                  andi         a1, t1, -1496
                  slt          s8, tp, s3
                  sltu         a6, a5, a0
                  sltiu        sp, t1, -151
                  lui          a1, 285898
                  sll          a6, a0, t6
                  sub          s5, a4, s7
                  andi         tp, a6, -1870
                  slt          zero, tp, a2
                  sltiu        t2, a6, 845
                  slt          sp, t1, s11
                  xori         s8, a5, 182
                  nop
                  xor          s3, s6, a6
                  nop
                  slli         a3, a0, 13
                  sra          a7, t4, s10
                  nop
                  sltiu        a3, s5, 1127
                  sltu         a6, t4, s2
                  slti         t2, tp, 1944
                  srli         s4, s9, 23
                  sub          t5, t1, s6
                  or           s1, s6, s0
                  xor          a6, t2, s8
                  addi         s9, zero, -1132
                  andi         t0, t6, -25
                  slli         t1, s10, 12
                  srli         ra, s11, 24
                  srl          s5, t6, s11
                  auipc        a7, 487414
                  sll          sp, t0, a5
                  slt          s11, tp, t0
                  srai         gp, s3, 19
                  andi         s7, sp, 287
                  sll          sp, tp, a0
                  nop
                  sub          t5, sp, a6
                  sltiu        s4, a7, 353
                  xor          s4, a1, t5
                  srli         s3, t6, 2
                  slti         a6, sp, 882
                  lui          a0, 99294
                  srli         a2, t0, 19
                  sra          s9, s8, s1
                  slt          zero, t5, s5
                  addi         t1, tp, -173
                  slti         a1, t6, -1204
                  slti         s11, s0, 660
                  xor          s7, a4, gp
                  and          s2, a1, tp
                  and          s3, zero, s2
                  sub          ra, t1, a1
                  srai         s9, s10, 20
                  sll          a0, a7, s4
                  xori         zero, s11, 1347
                  xori         s5, s0, 649
                  sub          a6, a2, s9
                  addi         sp, t4, 600
                  andi         zero, s1, -207
                  ori          tp, s4, -817
                  nop
                  slli         t4, a7, 31
                  xor          s11, a6, t6
                  slt          gp, ra, t4
                  add          t2, s0, s10
                  srl          t2, ra, gp
                  slti         a3, t0, -772
                  nop
                  sltiu        zero, t1, -1676
                  xor          s7, s1, t3
                  sltiu        s4, t2, 544
                  srli         t0, sp, 22
                  sub          t4, s10, a7
                  lui          ra, 11016
                  or           a3, s0, s11
                  ori          s0, s1, 145
                  slli         s8, ra, 6
                  lui          a0, 198881
                  slt          s10, a5, a0
                  srai         s1, s5, 5
                  sll          s4, t1, s4
                  srl          s7, ra, a1
                  slti         tp, s5, -1556
                  ori          a2, a5, -488
                  add          s8, tp, gp
                  addi         tp, s2, 150
                  xori         s11, s8, -642
                  sll          gp, s7, s5
                  add          s11, s3, s6
                  srai         s1, s8, 29
                  sub          s10, tp, t5
                  slti         t5, a3, 686
                  nop
                  xor          s0, zero, t4
                  srli         ra, tp, 19
                  or           t4, a2, s6
                  slt          gp, s2, s7
                  srai         t3, ra, 4
                  slli         sp, s5, 23
                  sltiu        tp, s5, 459
                  ori          s3, a6, -158
                  xor          a2, s5, s2
                  sll          t1, a7, a2
                  nop
                  slli         s11, a5, 1
                  add          s11, t3, s10
                  sll          ra, s8, s9
                  add          s0, s4, a7
                  ori          gp, a2, -1159
                  lui          a1, 581084
                  auipc        s8, 859495
                  and          s0, tp, t4
                  ori          t1, s5, -1951
                  lui          s7, 715559
                  lui          t1, 22458
                  srai         s6, gp, 27
                  sll          a6, t6, gp
                  auipc        t0, 414329
                  sltiu        s7, ra, -235
                  srli         sp, a4, 29
                  nop
                  sra          t3, s0, sp
                  lui          s7, 80273
                  srl          ra, a4, s5
                  sltu         s9, sp, s5
                  srai         gp, a7, 23
                  ori          a0, t3, 1678
                  lui          a1, 574222
                  nop
                  slti         s11, t5, 446
                  auipc        s6, 714282
                  srai         ra, gp, 12
                  srl          t3, t4, tp
                  sltu         a0, s10, a0
                  nop
                  addi         s11, s11, 517
                  auipc        t1, 936025
                  andi         s8, ra, 1569
                  sltiu        s7, s8, 213
                  srai         s7, s1, 7
                  slli         a6, s1, 20
                  auipc        t3, 890294
                  nop
                  sub          s6, a7, a6
                  sltiu        a2, a4, -2
                  lui          s1, 971108
                  slti         sp, t5, -1659
                  slti         t0, a5, -1738
                  or           s6, tp, s0
                  auipc        a7, 871852
                  xor          t5, a7, t3
                  srli         s3, s3, 15
                  ori          s6, a2, 377
                  slti         s6, a7, -390
                  sll          t5, t3, t6
                  ori          a1, ra, 1623
                  addi         t2, s9, -719
                  and          a2, s3, gp
                  addi         t4, a6, 493
                  lui          a0, 68145
                  auipc        a6, 141488
                  or           a2, a0, s8
                  sra          s5, s3, t3
                  slt          s7, tp, tp
                  addi         a6, a1, 218
                  xor          a6, s2, a7
                  or           ra, a6, s7
                  slt          zero, a6, a6
                  and          t2, gp, a7
                  xori         s6, t0, -1908
                  slti         s2, s1, -16
                  or           t2, a5, s10
                  nop
                  srli         gp, t3, 7
                  addi         t4, t6, 1297
                  xori         s6, ra, -790
                  or           s9, s6, a5
                  addi         a0, s0, -1191
                  slli         t0, a1, 4
                  and          t0, t2, s9
                  slti         s9, tp, -100
                  slli         a1, a1, 26
                  slli         t5, a6, 13
                  add          a6, t6, s11
                  srai         s5, s8, 21
                  auipc        ra, 907414
                  srl          s5, a2, t4
                  xor          t4, t4, gp
                  srl          a2, a3, a6
                  slli         a2, zero, 27
                  andi         a3, t1, -1861
                  addi         t4, s5, 1078
                  sub          t1, t6, a0
                  auipc        a2, 256070
                  xor          s10, s0, s9
                  sll          t2, a1, a1
                  addi         s1, t6, 1418
                  sub          sp, ra, a4
                  andi         t4, t6, -1005
                  slti         sp, t6, -991
                  lui          a2, 1002663
                  srli         t5, t1, 21
                  srli         a1, s4, 17
                  sltu         tp, s6, s7
                  srai         zero, zero, 20
                  and          t5, s0, t5
                  sra          gp, t4, t6
                  addi         a6, t5, -528
                  srai         s9, s6, 31
                  andi         a0, t6, 382
                  sltiu        s7, zero, 977
                  sll          s7, s0, t4
                  nop
                  auipc        s0, 897933
                  sltiu        a2, s5, 764
                  xor          s7, t4, s9
                  sltu         s11, t5, sp
                  and          s6, a2, t4
                  slti         s11, s8, 1112
                  xor          sp, s0, s0
                  nop
                  xor          s10, a7, s5
                  srl          a7, a5, a3
                  srai         gp, t4, 21
                  slli         s5, s3, 31
                  sltu         t1, s11, t2
                  add          t2, s9, a6
                  or           s1, s7, a0
                  xori         s5, a0, 1129
                  slt          t4, a0, s1
                  slt          s9, a5, sp
                  srai         a3, a5, 18
                  auipc        a1, 765888
                  andi         s9, tp, -1912
                  xor          t1, a7, s2
                  srli         t3, s0, 17
                  ori          a1, a7, -364
                  xor          t3, sp, t3
                  and          s10, t5, s3
                  sll          tp, a2, zero
                  sltiu        a6, s9, 1966
                  auipc        t3, 33028
                  auipc        a3, 142646
                  srli         s0, t5, 23
                  srai         s4, t1, 20
                  lui          t4, 291565
                  sll          a6, a1, s10
                  sltiu        s2, s7, 1605
                  andi         gp, s7, -1285
                  ori          s6, a4, 1841
                  xori         tp, t1, 701
                  add          t0, a5, t6
                  lui          s6, 39997
                  ori          a2, s5, 1210
                  lui          ra, 232482
                  or           a6, a2, a5
                  srl          a3, s2, s8
                  srli         t5, s0, 17
                  sltiu        a0, s5, -1307
                  xor          t1, s10, tp
                  andi         s5, zero, 689
                  srli         t2, s8, 21
                  srai         s5, sp, 3
                  srai         t2, zero, 18
                  slt          s7, t0, s10
                  sra          s10, gp, t0
                  sll          a1, a2, s2
                  slti         s7, sp, 1573
                  xori         a2, ra, -1080
                  ori          sp, t4, 973
                  srl          s0, s1, zero
                  slti         tp, s6, 1388
                  sltu         a3, a2, zero
                  xori         s9, a6, -39
                  or           t5, t3, a5
                  slt          s4, a6, tp
                  sll          s10, a7, s3
                  lui          a7, 600381
                  andi         gp, s7, 524
                  lui          s3, 773493
                  sra          s3, sp, s1
                  xor          zero, s0, t5
                  srli         t1, a5, 10
                  lui          ra, 997185
                  sra          a7, t5, t0
                  srl          s6, a5, a2
                  add          t0, s6, t6
                  nop
                  sra          t0, t2, gp
                  sltu         t5, s3, a4
                  slli         zero, s3, 7
                  sll          tp, s9, a0
                  andi         s7, t4, 132
                  srai         s8, a7, 2
                  slti         s3, t3, 967
                  ori          t5, t2, 1219
                  ori          s4, s0, 1045
                  auipc        a2, 89119
                  slt          s7, s11, sp
                  sltiu        t1, a3, -1066
                  add          s0, s8, s9
                  srli         a3, t1, 23
                  srli         s9, s2, 1
                  auipc        a3, 420705
                  sub          gp, t1, tp
                  auipc        s11, 993228
                  lui          s0, 1035193
                  sll          a0, s6, a6
                  andi         a7, s5, 588
                  slti         s10, t2, -228
                  sll          t5, s0, s8
                  sub          s11, ra, s4
                  lui          t5, 796309
                  xori         s5, a1, 810
                  lui          t3, 179452
                  lui          t0, 809936
                  slli         a2, s2, 8
                  andi         a3, a1, -1331
                  or           t4, s5, s6
                  nop
                  add          s7, s9, s2
                  srli         t1, s1, 20
                  andi         a3, s5, -1128
                  addi         zero, t5, -1159
                  sltiu        t3, a1, 379
                  sub          s9, s4, tp
                  sub          t1, s11, tp
                  andi         s0, s5, 723
                  nop
                  and          t2, s10, s0
                  or           s4, ra, t0
                  sll          tp, t2, s5
                  auipc        t2, 326162
                  auipc        t1, 838409
                  addi         s7, sp, 414
                  add          s1, t5, t0
                  add          s9, a6, tp
                  sltiu        t0, t3, 1164
                  slti         s5, zero, 666
                  lui          a3, 584193
                  or           s10, s7, a5
                  or           s7, a7, tp
                  lui          a0, 42972
                  xori         zero, a4, 230
                  sltu         t1, s10, s3
                  srli         a0, s1, 21
                  srl          tp, sp, a4
                  sll          s0, t0, s1
                  slti         t1, t0, 1579
                  slt          s5, t0, a0
                  ori          a0, t1, 603
                  xor          a3, t3, a7
                  srai         zero, t1, 27
                  xor          s7, t3, t3
                  sll          t4, zero, ra
                  or           a2, s8, a7
                  slt          a0, s5, s2
                  slti         s3, a0, -1132
                  sub          t3, t4, t5
                  or           s6, a4, s7
                  lui          s7, 791740
                  sltu         t4, a5, s0
                  nop
                  sub          a0, a7, s11
                  auipc        s10, 604355
                  xori         t0, t1, 271
                  xori         a0, tp, -704
                  andi         s7, t2, -1670
                  slt          s7, s11, a7
                  sra          s8, t4, t6
                  and          gp, s1, a0
                  srli         t2, t1, 20
                  slt          s4, a2, s6
                  srai         a2, sp, 20
                  andi         s6, s2, -842
                  slt          t1, a0, a4
                  sltiu        t1, tp, 1858
                  xori         gp, s1, -1237
                  srli         s7, t2, 29
                  srai         a7, t0, 21
                  slt          s7, a1, s2
                  ori          s0, t5, 1092
                  sltu         ra, a5, s5
                  or           a3, t3, s6
                  andi         ra, t1, -313
                  sll          s0, ra, tp
                  ori          gp, a1, 874
                  andi         s7, tp, 1636
                  xor          zero, a4, s8
                  srli         t5, t3, 30
                  srli         t3, t6, 20
                  andi         sp, s6, -219
                  sll          s6, ra, s3
                  sltiu        s3, s3, 546
                  lui          s4, 685604
                  srli         t4, s8, 30
                  srl          gp, s5, a6
                  add          s2, t1, a1
                  add          s10, t3, a7
                  xori         t4, t2, 1204
                  srai         a1, tp, 1
                  sub          a2, tp, t6
                  addi         t2, s1, 1943
                  srl          a7, a3, s0
                  srli         s3, t5, 22
                  srai         sp, s6, 10
                  or           t4, zero, s10
                  lui          a2, 99639
                  auipc        s2, 115903
                  sltu         s7, a2, a1
                  sra          s0, t4, s2
                  sltu         ra, s11, a6
                  sll          t0, sp, t1
                  srai         t3, a2, 4
                  srai         s9, a6, 16
                  addi         s3, s6, -168
                  nop
                  or           s2, t6, s9
                  or           a6, a6, a6
                  and          a3, gp, a2
                  addi         gp, s7, -1514
                  auipc        a3, 256066
                  nop
                  xori         a3, s0, 1908
                  slti         a1, s2, -688
                  and          s5, s7, s2
                  sra          zero, s1, s3
                  slt          s3, s0, s6
                  nop
                  sub          t5, t1, t2
                  sra          a0, a2, t1
                  add          gp, t1, gp
                  srl          s9, t3, gp
                  andi         s1, tp, 912
                  addi         t0, sp, -574
                  xori         zero, gp, 557
                  sll          s4, t1, s5
                  auipc        s9, 36442
                  slli         t3, a2, 5
                  xor          a2, s7, s6
                  srli         s11, s10, 0
                  xor          a2, s3, t6
                  lui          s6, 150058
                  sra          zero, a4, s10
                  auipc        t0, 563976
                  ori          t0, a3, -1189
                  and          a3, zero, a1
                  srai         t3, s2, 22
                  srai         s0, sp, 19
                  slti         s9, tp, -1584
                  sltu         s4, t5, gp
                  and          a3, a4, t0
                  nop
                  slli         tp, ra, 13
                  slt          t4, s11, s2
                  sltu         s6, s10, a0
                  andi         s6, t3, -675
                  xori         s11, t5, -714
                  slti         a3, s8, 166
                  nop
                  andi         s5, s7, -1411
                  slt          s11, ra, a2
                  xor          sp, a4, t1
                  add          t0, t0, s10
                  add          a6, tp, a6
                  and          t4, a7, s7
                  auipc        t1, 45697
                  srl          t4, s2, s0
                  xor          s4, t0, gp
                  sub          s10, a2, a4
                  slti         t4, a2, 1757
                  or           s0, a5, t6
                  addi         gp, a6, -474
                  nop
                  slli         t2, ra, 20
                  slli         s4, s1, 29
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t5, 0x80000000
                  li           tp, 0xffffffff
                  li           s3, 0xffffffff
                  li           s0, 0x80000000
                  li           a2, 0x50ce74f7
                  li           a3, 0xffffffff
                  li           s6, 0xffffffff
                  li           s1, 0x4e0341d8
                  li           a6, 0x80000000
                  addi         a6, s6, 2015
                  add          a6, s3, tp
                  auipc        s6, 332536
                  auipc        t5, 358403
                  lui          s6, 935941
                  auipc        s3, 337889
                  add          a3, s3, a6
                  lui          s0, 55903
                  add          s3, s0, s1
                  auipc        tp, 201021
                  auipc        a3, 211356
                  add          tp, t5, s1
                  auipc        t5, 917386
                  lui          a2, 451554
                  addi         t5, t5, -1889
                  sub          a6, s0, a6
                  auipc        s1, 822730
                  auipc        s3, 692148
                  addi         tp, a2, -505
                  sub          a3, s3, a6
                  nop
                  nop
                  lui          s3, 210325
                  add          tp, tp, s6
                  addi         s8, a6, 1329
                  lui          a3, 877621
                  addi         s6, s1, -1078
                  addi         a2, a6, -1522
                  addi         s6, s3, -991
                  add          a6, t5, a3 #end riscv_int_numeric_corner_stream_14
                  slt          t5, a1, s9
                  sltiu        sp, gp, 307
                  srli         s6, sp, 10
                  sra          s6, t4, s5
                  slli         s1, a5, 24
                  ori          s1, s7, -1279
                  add          t5, s0, a7
                  add          t4, a2, t2
                  slti         a0, s10, 493
                  xor          t1, a7, t6
                  addi         s9, t5, -2037
                  slti         ra, a2, 336
                  add          s4, t0, s11
                  ori          s3, sp, 1770
                  ori          s11, a6, -1530
                  slli         a3, s6, 15
                  or           zero, t3, a6
                  and          a2, a7, t4
                  slt          ra, a6, a1
                  ori          a0, t4, 1476
                  srli         gp, s6, 19
                  sltiu        s5, gp, -124
                  add          s5, t2, s7
                  srl          a7, a0, s2
                  lui          a6, 279301
                  sub          t5, s8, s0
                  add          s6, t2, t3
                  srai         gp, zero, 4
                  sll          t2, t5, gp
                  and          s7, t4, s10
                  sra          a6, a4, a7
                  slli         a2, a7, 2
                  lui          s7, 449642
                  ori          a2, s4, 472
                  xori         t3, s9, 1745
                  slli         s9, s3, 10
                  or           sp, zero, t0
                  add          s8, a4, a6
                  and          s7, gp, tp
                  andi         t2, s9, 47
                  add          a0, s11, a3
                  srl          s10, t1, s2
                  sltiu        sp, s8, -1599
                  addi         s3, s7, -1078
                  xori         a0, s3, 65
                  andi         a6, s2, -11
                  lui          a6, 706205
                  sll          s2, s9, s6
                  slti         s3, zero, 1431
                  and          gp, ra, tp
                  add          t1, a6, a1
                  sltiu        a7, s11, -1033
                  nop
                  slli         a0, s0, 22
                  add          a0, s3, t3
                  or           a0, t3, a1
                  slli         s1, s6, 9
                  ori          s2, a1, -2034
                  slli         t2, s1, 1
                  srli         s2, a0, 1
                  slti         s5, ra, -1132
                  lui          gp, 34920
                  srli         t3, t6, 31
                  sub          t5, sp, s2
                  nop
                  srli         t4, s1, 5
                  lui          t5, 125297
                  xori         tp, a5, -1795
                  slt          tp, ra, a4
                  sub          sp, s11, s10
                  xori         a3, a6, 903
                  sub          tp, s5, a0
                  or           a0, s2, s1
                  andi         t2, s10, 1781
                  auipc        a0, 540978
                  srl          a6, t3, a2
                  sltu         s3, a3, s5
                  srli         s6, tp, 19
                  and          s8, tp, s10
                  lui          t5, 1026449
                  xor          s4, tp, t2
                  lui          s7, 989688
                  srl          a3, zero, a5
                  slli         s11, t4, 28
                  srai         tp, a0, 2
                  sll          s9, a5, a1
                  slt          s5, s8, t6
                  srl          a7, s5, t4
                  srli         s10, a7, 26
                  lui          a2, 938151
                  xor          tp, s8, tp
                  srai         t3, t6, 2
                  auipc        s1, 618601
                  addi         t3, t0, -1752
                  or           s5, a3, s5
                  addi         s5, t3, -1677
                  xori         a0, tp, 690
                  lui          s5, 324626
                  ori          ra, zero, 1693
                  and          tp, t1, a7
                  sra          t1, sp, t4
                  sltu         s8, tp, a5
                  slti         a7, sp, 194
                  slli         t0, t5, 16
                  add          s6, s6, sp
                  auipc        s9, 361184
                  nop
                  lui          t2, 592545
                  srl          zero, s2, t4
                  andi         s5, t1, 1779
                  sra          gp, t4, s5
                  addi         s7, tp, 1262
                  slti         t4, t3, 1942
                  xori         s1, s2, -1341
                  nop
                  ori          s4, s4, -1940
                  lui          s7, 246973
                  sra          t2, s8, t6
                  srai         t3, s1, 16
                  sltu         sp, s4, t6
                  slli         sp, s8, 27
                  sra          s10, s4, s9
                  xori         a7, s2, 679
                  sll          s5, a1, s7
                  srl          s6, a0, s3
                  slti         s4, gp, -211
                  xor          a2, t3, a5
                  sll          t2, t0, s1
                  sll          a3, a5, a4
                  sll          t0, s11, ra
                  addi         a3, s10, -1429
                  sub          t3, a6, a6
                  add          t1, s5, s11
                  srl          a6, t6, t0
                  auipc        a1, 180248
                  sub          zero, t1, a0
                  add          t5, a2, s4
                  and          t4, t0, s8
                  sra          t1, tp, a3
                  sltu         s8, s4, s11
                  srl          t5, t0, gp
                  ori          a0, t1, -265
                  slti         sp, a3, -1288
                  slli         t0, s8, 30
                  xor          a2, t2, s0
                  nop
                  sra          sp, a7, a7
                  sll          t3, s10, s10
                  xori         t2, sp, 1369
                  sra          tp, t3, s10
                  slti         s3, s11, -727
                  xori         s0, a4, 1523
                  slti         tp, s4, 38
                  lui          s0, 632634
                  xori         zero, s1, -564
                  add          gp, s8, a6
                  nop
                  sltiu        a3, s2, -1775
                  nop
                  srli         a7, zero, 13
                  or           t1, s8, t4
                  sll          t5, s6, s10
                  sltiu        sp, s6, 491
                  auipc        s11, 798851
                  sll          sp, t5, t6
                  auipc        t2, 323203
                  ori          s5, s9, -350
                  sra          a6, s3, sp
                  slli         a3, s10, 14
                  slti         a7, t1, 915
                  sll          s2, t6, a4
                  sltiu        a7, s10, 415
                  ori          t2, t3, -646
                  and          s8, a1, s6
                  srli         t4, t1, 0
                  add          a3, t5, a7
                  addi         t1, sp, 871
                  xor          a1, tp, gp
                  ori          a3, a7, -1283
                  sltu         s9, a3, s2
                  add          t5, ra, s3
                  srai         t4, t3, 5
                  ori          s8, s5, 1519
                  xor          s6, a3, gp
                  andi         a7, a1, -976
                  ori          s2, s1, 886
                  nop
                  ori          s8, s6, -1708
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           s11, 0xd8f68ba9
                  li           s10, 0xffffffff
                  li           t2, 0x80000000
                  li           s2, 0xffffffff
                  li           tp, 0x0
                  li           t0, 0xffffffff
                  li           s3, 0x0
                  li           a3, 0x0
                  li           gp, 0xffffffff
                  add          tp, tp, a3
                  nop
                  addi         gp, t2, 1350
                  lui          tp, 878284
                  lui          s2, 895351
                  add          s10, s10, a3
                  add          s2, s8, s10
                  addi         s8, a3, -1651
                  lui          s2, 509944
                  sub          s8, s11, s11
                  addi         tp, a3, 1701
                  auipc        s10, 788163
                  lui          a3, 361423
                  auipc        tp, 666407
                  addi         t0, t2, 2046
                  sub          s10, tp, t2
                  addi         t2, t2, -686
                  nop
                  addi         t0, gp, 818
                  nop
                  lui          t2, 137491
                  sub          tp, t0, s8
                  nop
                  add          s8, tp, s2
                  lui          s3, 15
                  sub          tp, s8, s11
                  lui          t2, 855948 #end riscv_int_numeric_corner_stream_25
                  and          a3, a2, s10
                  auipc        t3, 1028417
                  slli         a6, tp, 5
                  xor          s5, s2, a6
                  xor          t1, a5, t5
                  xori         a0, a6, 1456
                  or           s4, t2, t1
                  and          gp, s10, t2
                  sra          t4, a1, a4
                  nop
                  andi         a2, a1, -1650
                  or           s9, a4, t6
                  slti         t0, a3, 579
                  add          s7, a0, zero
                  sltiu        ra, t3, -946
                  srai         s10, t6, 30
                  nop
                  addi         t5, tp, -1399
                  sub          a3, s11, tp
                  lui          ra, 101114
                  slti         t3, t0, -1845
                  ori          s7, gp, -1673
                  sra          s0, s9, tp
                  auipc        t0, 939401
                  sub          t3, s10, zero
                  and          s3, t1, s6
                  andi         t2, s0, 1475
                  srai         a3, tp, 6
                  sltiu        s2, t5, 1859
                  ori          gp, s8, 678
                  auipc        s0, 431882
                  ori          a6, t2, 401
                  sra          tp, gp, t3
                  auipc        ra, 697479
                  slli         s9, zero, 16
                  nop
                  srai         t3, t6, 12
                  auipc        gp, 705716
                  srli         s9, a1, 30
                  auipc        ra, 447575
                  ori          a7, a6, 1439
                  slli         s0, tp, 30
                  addi         s8, a3, 1801
                  ori          t5, s4, 1207
                  xor          s10, t4, s8
                  and          s11, a4, t4
                  sltiu        t5, gp, -479
                  srli         s0, gp, 11
                  andi         sp, t2, 702
                  srai         s4, t4, 24
                  sltiu        a2, sp, -56
                  srai         a2, t3, 22
                  sltiu        t2, s5, 1538
                  auipc        tp, 89121
                  sll          s8, s2, s9
                  srl          s9, t0, s3
                  auipc        s6, 661769
                  sll          t5, s11, s11
                  slti         t0, s7, -70
                  andi         a2, s3, -695
                  addi         ra, s7, 763
                  slti         t0, a2, 1081
                  andi         s10, t4, -1091
                  and          t1, a3, t3
                  nop
                  xor          a6, a7, sp
                  or           s9, s5, s10
                  sub          s2, t6, s3
                  sltiu        s8, s0, 1294
                  lui          s10, 954848
                  addi         s2, a3, 664
                  sll          s1, t1, s11
                  srai         s9, t6, 2
                  sltiu        t4, ra, 51
                  srl          t5, a1, s7
                  add          s11, t5, a6
                  and          t4, t5, t1
                  sub          a7, t3, s11
                  andi         s7, s0, -732
                  nop
                  sll          s4, s2, a2
                  sra          t0, s1, a6
                  srl          gp, ra, s10
                  sltiu        t4, t0, 638
                  slli         t5, gp, 15
                  xor          t3, a5, s11
                  slti         a0, sp, -1947
                  xori         s11, s7, 519
                  andi         t3, s8, 1719
                  sll          s5, s7, a6
                  or           a0, s3, a2
                  lui          s7, 734964
                  sll          s5, s9, t5
                  sra          s0, a0, s7
                  srai         t4, zero, 5
                  slti         s8, ra, -17
                  slt          s7, s3, t5
                  ori          sp, s1, 1950
                  add          t1, t0, s6
                  srli         t4, t5, 23
                  xor          tp, a7, s11
                  and          t2, s8, tp
                  xor          s0, a2, a3
                  auipc        s6, 296212
                  andi         s3, a2, 876
                  lui          a6, 66839
                  srl          s11, t5, s0
                  slli         s2, t3, 11
                  ori          a3, t0, 159
                  srl          s8, s6, a1
                  nop
                  xori         a0, t6, 695
                  slti         t1, tp, 1081
                  add          s7, s9, t3
                  xori         s9, a0, 1894
                  srl          s7, t4, t0
                  ori          t4, gp, 745
                  lui          s6, 74231
                  sra          a3, t3, s4
                  sll          s5, a5, a7
                  sll          s7, a0, s7
                  andi         t0, s0, 1504
                  xori         s1, t3, -578
                  sll          t5, s8, a5
                  ori          a2, t1, -1976
                  slti         tp, s0, -1733
                  addi         s6, t6, -1218
                  slti         t4, s8, 1101
                  srl          t4, a6, s5
                  xor          s7, a3, s7
                  nop
                  nop
                  srai         s10, t3, 23
                  sll          s4, s9, a5
                  sra          t0, t1, s9
                  slti         a0, a7, 880
                  sra          ra, t0, a4
                  addi         t2, t3, -389
                  lui          s7, 771994
                  lui          t2, 246057
                  slti         s4, a3, -658
                  slti         a3, a3, 501
                  or           s9, s0, s9
                  xor          a1, a5, s5
                  slli         s5, s5, 12
                  slti         t1, s8, 181
                  sra          s9, t5, s11
                  auipc        ra, 56396
                  slti         s11, ra, 864
                  sub          t1, s10, s5
                  xor          t4, zero, s6
                  ori          s0, t3, -608
                  ori          t3, ra, -382
                  sub          t1, s2, s10
                  srl          s3, a3, a2
                  add          s10, t5, a7
                  addi         gp, t4, 1271
                  slt          s6, ra, s11
                  sltiu        a7, s10, -649
                  srl          a2, zero, a0
                  andi         s11, tp, 1122
                  srl          s10, t6, t0
                  andi         a0, sp, 885
                  xori         t5, t2, -1921
                  auipc        gp, 801721
                  sra          t2, s4, s0
                  slt          s11, s1, t6
                  sub          s11, s2, sp
                  slt          s9, sp, s1
                  lui          s7, 791262
                  slti         s1, s2, -786
                  srl          ra, a7, a6
                  xori         s10, s9, 701
                  andi         s11, s3, -821
                  xori         gp, a0, -1234
                  and          s6, a6, t2
                  nop
                  srl          t1, t4, s0
                  xor          s10, a7, a3
                  srli         s10, s11, 11
                  ori          a6, gp, -1843
                  sra          t3, s3, zero
                  sltiu        a0, t4, -75
                  sub          zero, s5, a4
                  and          s7, t3, tp
                  nop
                  sra          t0, s3, a6
                  addi         s2, s3, 1858
                  addi         s11, s6, -681
                  srai         s6, a6, 12
                  srli         ra, s8, 31
                  andi         s8, s8, -673
                  lui          s4, 906889
                  and          gp, t2, a4
                  ori          t3, t6, 1881
                  xor          a3, a1, t5
                  nop
                  or           a2, t2, ra
                  slt          a0, gp, a0
                  sltu         s11, s2, s8
                  slti         t5, zero, 1359
                  slli         t4, t4, 7
                  srai         t5, a3, 30
                  slt          s3, tp, t3
                  sll          t4, s11, zero
                  slli         gp, t5, 26
                  srai         a1, zero, 17
                  slli         s6, t4, 12
                  or           t1, a6, gp
                  ori          a7, s10, 1119
                  ori          a1, t4, -1021
                  slt          s8, a6, t6
                  andi         a2, s0, -1169
                  add          s4, s11, gp
                  slli         t2, a0, 5
                  slli         a0, zero, 30
                  ori          t4, zero, 762
                  ori          a2, s1, 1402
                  sltiu        s10, a4, 480
                  sub          s1, a4, s3
                  slt          a7, s5, t1
                  sll          s10, t6, s2
                  srl          s3, gp, t4
                  addi         t3, t5, 1537
                  addi         s8, sp, -1490
                  xori         s7, a4, 1666
                  auipc        s4, 411705
                  sltiu        s8, s11, 135
                  xori         a1, t6, -1541
                  srai         t0, a4, 31
                  slti         s0, s1, 823
                  and          t0, s9, s11
                  slli         s8, t1, 21
                  or           s3, a4, s7
                  slti         a7, s10, 1612
                  ori          s4, s7, 1702
                  sra          t5, a4, a0
                  xori         s5, s6, -1029
                  add          a0, s7, t2
                  slt          s1, t2, t4
                  or           tp, gp, s6
                  xor          t4, s2, t0
                  or           s0, s4, s3
                  sltiu        s5, a5, -104
                  nop
                  xori         zero, s7, -921
                  xor          s6, sp, s5
                  xori         a3, s11, -1080
                  slt          s4, a6, s8
                  nop
                  srli         t5, t2, 12
                  srl          t1, t2, ra
                  xori         ra, sp, -1674
                  srai         t4, s6, 23
                  ori          s8, s10, 406
                  slti         s0, s5, -1629
                  slli         s8, s3, 10
                  sll          t3, a6, a1
                  srli         s6, s1, 23
                  xor          s10, s3, s7
                  srli         s8, s1, 25
                  add          s6, s10, a0
                  or           t1, s4, tp
                  auipc        zero, 474987
                  andi         t5, a3, -1431
                  add          ra, a7, s8
                  xori         a2, s0, -443
                  ori          sp, s8, -204
                  and          a1, s0, a2
                  sra          a2, s0, a4
                  sub          a0, s6, s4
                  sub          s1, t1, t0
                  sltiu        t1, tp, 1370
                  andi         s9, t5, -188
                  srli         s5, s8, 15
                  xor          t5, s9, s2
                  xori         s7, s4, -65
                  sltiu        t5, t5, -1897
                  sltiu        s2, s1, -1923
                  srai         s8, s10, 26
                  xor          a2, t2, t2
                  srai         s8, s2, 19
                  auipc        zero, 841076
                  srl          t2, zero, s9
                  srli         a0, s1, 22
                  sll          a1, a0, s7
                  sub          tp, a5, a4
                  sltiu        s7, t0, 1290
                  xor          sp, s1, s6
                  andi         sp, a4, -586
                  sltu         a2, t1, a7
                  addi         s4, s1, -138
                  ori          s2, t1, 656
                  xori         a7, gp, -191
                  srli         ra, t5, 31
                  slt          a6, s6, s5
                  slli         ra, t0, 29
                  srl          a6, a6, gp
                  add          t0, a1, s10
                  add          s6, tp, s7
                  srli         s10, s6, 2
                  sll          a0, s7, sp
                  srai         a1, s2, 15
                  slt          s8, s2, s2
                  lui          gp, 1035436
                  slli         t4, s1, 5
                  xor          s5, s5, a6
                  ori          t2, t1, -1517
                  sltiu        t1, s10, 158
                  auipc        a2, 982676
                  srli         a1, zero, 20
                  ori          a2, a3, -1854
                  slt          s7, s2, s10
                  sll          s3, zero, sp
                  sltu         t4, t1, s1
                  sra          s6, a2, t5
                  andi         s1, t6, 1112
                  slti         zero, s9, -1956
                  sltiu        zero, t6, -906
                  xor          a0, s5, gp
                  sub          t4, s4, a6
                  xor          a1, s4, s7
                  andi         t5, a5, -707
                  and          a2, sp, t6
                  add          s6, t3, a3
                  sll          s2, s8, s4
                  and          a1, a5, tp
                  andi         s4, t3, 1400
                  auipc        t1, 1010460
                  srli         a0, t1, 24
                  lui          a2, 712060
                  nop
                  xori         s7, s11, -1027
                  andi         a0, zero, 727
                  sra          s4, s5, s2
                  sltiu        t4, ra, -1689
                  xori         t4, a3, 268
                  sltiu        zero, t5, 846
                  slli         t5, gp, 13
                  sub          s2, s5, sp
                  add          a6, a6, t3
                  or           a6, s9, a3
                  srai         s9, s1, 29
                  slti         t4, s0, 299
                  andi         zero, a6, 1766
                  add          a3, t1, s0
                  slt          s11, s2, s11
                  sll          s7, a4, gp
                  or           tp, s2, t3
                  sltiu        s1, s1, -289
                  slti         t5, t3, 1969
                  slt          t4, sp, t6
                  sltu         s0, tp, t3
                  addi         t2, gp, -1884
                  or           s7, t0, t1
                  addi         gp, a2, 317
                  ori          zero, a7, -1172
                  xori         s4, t1, -66
                  sll          a0, sp, t3
                  add          a7, a4, t4
                  sltu         s3, s2, zero
                  slli         s3, s8, 1
                  xor          a3, t2, t6
                  ori          t2, t4, 1421
                  sll          t1, a2, s9
                  lui          a7, 13815
                  nop
                  add          t1, s9, a6
                  and          t0, s5, s8
                  slti         s10, s4, -1584
                  nop
                  slti         s9, t5, -690
                  slt          a7, t0, zero
                  nop
                  sra          tp, t2, t2
                  sub          t0, s4, t0
                  sltu         t1, a6, a0
                  xor          zero, a1, zero
                  or           gp, s10, s0
                  slt          s6, a5, s11
                  srai         a3, zero, 1
                  srl          s6, t5, s3
                  auipc        t4, 999823
                  sub          t4, s0, a5
                  addi         ra, gp, -1916
                  sra          s9, ra, s4
                  slli         a3, a1, 19
                  sll          s3, s10, ra
                  slli         t2, s8, 4
                  slti         s7, t4, 775
                  slt          a7, s4, t2
                  srai         t2, t0, 29
                  sra          a1, tp, a0
                  srai         s9, a5, 23
                  or           ra, t0, t5
                  add          sp, t5, t5
                  slt          s5, a3, s6
                  sltu         zero, s3, a6
                  ori          a6, a0, -1138
                  sltiu        ra, a6, 844
                  or           a6, s6, s11
                  slt          s2, a0, t0
                  slti         t2, s3, -1810
                  and          a0, a2, a6
                  sltiu        a3, sp, 1685
                  slti         a2, a7, 291
                  sll          tp, s2, s3
                  slli         s9, t5, 22
                  slli         ra, a1, 18
                  andi         t0, ra, 1434
                  or           a1, s8, a3
                  ori          t1, a6, 1861
                  xor          t5, s8, t2
                  slli         gp, tp, 28
                  srl          t4, a0, s1
                  ori          zero, s10, -325
                  auipc        s11, 65636
                  auipc        t4, 267779
                  nop
                  and          t1, a1, t6
                  auipc        t3, 235061
                  and          a2, t2, s7
                  lui          s1, 769501
                  add          t5, s2, t6
                  xori         s4, s1, -1731
                  sra          t2, zero, t3
                  auipc        s4, 661698
                  slti         t2, a5, 675
                  addi         s2, s7, -933
                  andi         s5, a4, -8
                  sll          s0, a1, a4
                  slt          s8, zero, gp
                  xori         s11, s7, 1916
                  or           t0, s5, sp
                  and          a2, a4, t2
                  slli         a0, s3, 21
                  andi         s2, t1, -540
                  xor          s8, s6, t3
                  slli         s1, s2, 24
                  slti         tp, s8, -1184
                  sltu         sp, s10, a7
                  srli         ra, t3, 20
                  and          s9, t3, a2
                  addi         t5, s4, 1907
                  sltiu        a3, s4, -1852
                  and          a0, s9, s2
                  srl          t3, a5, s4
                  slt          s7, a4, s11
                  sll          s6, a2, t0
                  srl          s7, s5, t2
                  add          a3, sp, sp
                  xori         s3, s0, -1438
                  slli         t0, s8, 22
                  slli         a1, s9, 27
                  and          s3, s2, tp
                  slt          s11, s1, a6
                  add          s11, zero, s11
                  add          t5, s7, t4
                  sltu         t1, s10, tp
                  sltiu        t1, a7, -312
                  srl          t4, gp, zero
                  xor          s1, a5, a2
                  ori          s3, s6, -1557
                  xor          t1, t0, s9
                  srli         a6, gp, 3
                  sra          t2, s9, s2
                  add          t4, s8, a4
                  slt          s1, a3, gp
                  lui          s3, 833023
                  xor          a0, t4, a4
                  addi         tp, s11, 653
                  sll          s7, a5, t0
                  srli         t5, t6, 11
                  ori          s11, s11, 1967
                  xori         s5, sp, -1957
                  nop
                  lui          s7, 202209
                  srai         s10, t0, 17
                  srai         s9, s1, 23
                  xori         s5, t3, 464
                  andi         a7, t6, 1862
                  slti         sp, t4, 1336
                  slli         s6, s5, 0
                  addi         a0, s0, 396
                  auipc        a0, 586637
                  or           ra, a2, a3
                  add          s0, gp, s5
                  sltu         s11, s8, s2
                  lui          t1, 90398
                  ori          a6, s2, -733
                  slt          a3, s11, a3
                  xori         s10, s1, 1335
                  add          a1, gp, t1
                  andi         s6, s6, 1812
                  addi         s7, ra, 1156
                  xori         s7, t1, 1150
                  xori         s3, a0, -1877
                  sltu         zero, s1, a7
                  sltiu        t4, tp, -1390
                  addi         t5, zero, 1162
                  or           s1, t3, t2
                  sra          gp, s10, t2
                  srl          s9, s3, t1
                  srli         ra, s3, 9
                  xori         t5, s4, 204
                  slli         s2, s6, 21
                  auipc        s1, 704348
                  sub          a0, t0, s4
                  slti         s8, a0, -1787
                  slt          a1, t5, s6
                  xori         s6, s6, -1571
                  and          ra, s0, t5
                  sll          a1, s10, ra
                  or           t5, a0, s4
                  sltiu        a2, tp, 430
                  xor          a3, a0, s0
                  auipc        s8, 166314
                  slli         t3, zero, 8
                  xor          s10, s8, s10
                  slti         a3, s4, -238
                  or           a3, a2, s5
                  or           a3, t6, t5
                  sltu         s5, t4, s0
                  srl          sp, ra, s0
                  auipc        s0, 314190
                  srl          t4, a1, t2
                  and          a2, t3, s0
                  add          s7, s8, s2
                  slli         t2, t1, 23
                  slt          gp, a2, s11
                  nop
                  slt          s0, ra, t3
                  or           a0, s2, t0
                  sub          s2, gp, t3
                  slti         s1, t6, -1919
                  xori         s9, a5, -1607
                  slti         s5, gp, -367
                  sltu         t2, t4, a7
                  srli         a0, s8, 4
                  xor          t3, s3, s8
                  and          t0, t2, s6
                  auipc        ra, 592940
                  srli         s9, a0, 15
                  auipc        a7, 100719
                  xori         a3, s10, 1231
                  slt          s6, a3, t4
                  xor          a6, s1, t1
                  ori          a6, a7, 288
                  sltiu        a0, s9, -1941
                  xori         t5, s4, -1067
                  addi         t2, s9, 1704
                  xor          s9, s4, a1
                  addi         s9, s9, 1686
                  or           s9, t0, a0
                  or           t2, t1, t4
                  srli         t0, s4, 2
                  andi         a3, t5, -495
                  add          t2, t5, a4
                  srl          t5, zero, t1
                  auipc        tp, 2854
                  or           ra, s3, zero
                  xori         ra, a0, -806
                  slt          a1, zero, s7
                  or           s1, s3, s0
                  or           sp, t1, s1
                  lui          sp, 293468
                  srai         t3, s3, 3
                  addi         a0, a4, -1975
                  srl          s4, sp, a6
                  srli         zero, t0, 10
                  auipc        t5, 248684
                  slti         s3, s2, 1260
                  ori          gp, s1, 207
                  or           t2, tp, s10
                  srai         a2, t2, 4
                  auipc        a1, 951089
                  auipc        t1, 395236
                  slti         zero, s7, -862
                  lui          s7, 772039
                  sltiu        t5, tp, 364
                  andi         s1, s11, 1246
                  sltiu        s0, s8, 2025
                  or           s9, a7, t2
                  nop
                  slti         s5, t2, -1233
                  nop
                  auipc        a2, 539989
                  nop
                  sll          zero, t3, s3
                  sub          s10, gp, a4
                  or           s8, t6, s3
                  slti         s3, a1, -986
                  or           s4, a3, t5
                  slti         s6, gp, 1973
                  xor          a1, a6, t5
                  ori          a1, s4, -1027
                  srli         t0, a0, 5
                  lui          s8, 784499
                  sra          s9, t4, t1
                  sra          s3, s10, s4
                  srai         tp, t4, 6
                  srli         a0, ra, 25
                  nop
                  andi         s9, s7, 1081
                  sll          a6, a0, t4
                  xor          s3, s5, a3
                  srai         a3, s2, 1
                  srl          a7, a6, a4
                  add          a6, a7, t2
                  sub          t5, s9, t0
                  xor          t2, s4, s8
                  or           t1, s7, a1
                  srli         s8, a4, 22
                  sll          s5, t3, a0
                  nop
                  sll          tp, t3, sp
                  and          t1, t5, s1
                  slt          a3, s10, t5
                  or           tp, t1, s11
                  srl          t1, ra, t6
                  srl          s5, t4, s5
                  sltiu        s6, a4, 1532
                  nop
                  slti         s11, s10, -1598
                  xori         t1, s6, 584
                  sra          gp, a3, t4
                  or           sp, s9, s8
                  slti         a1, s4, 358
                  slti         zero, s1, -82
                  or           a2, s2, t0
                  sltiu        t0, s1, -412
                  andi         t1, s8, 205
                  slli         s3, t5, 14
                  sub          a1, t5, zero
                  nop
                  slt          t1, a5, s7
                  sub          gp, a0, s4
                  srli         t1, t3, 6
                  addi         s5, a1, 513
                  xor          ra, s11, tp
                  add          a1, s6, sp
                  sra          s0, s8, s1
                  srai         sp, s9, 10
                  srl          a6, a6, gp
                  addi         a3, sp, -1568
                  add          t2, t0, s7
                  slti         a3, s2, 425
                  sra          s11, s0, s1
                  sltu         t0, a6, t6
                  sltiu        s1, t2, -654
                  nop
                  andi         gp, t6, 838
                  sll          a2, s3, s6
                  auipc        s10, 641431
                  xori         s7, a0, 1842
                  xori         s6, a5, -503
                  sra          zero, zero, a6
                  xor          t4, a3, s9
                  srai         s3, a2, 21
                  sub          s0, t3, s2
                  slt          t4, a1, a6
                  and          t2, a5, a1
                  sll          ra, s8, zero
                  sltu         s4, zero, a1
                  add          t5, t4, a5
                  sltu         s4, t1, s11
                  slli         t2, a0, 22
                  ori          s9, a2, -508
                  slli         t1, gp, 18
                  sltiu        gp, zero, -1787
                  srl          s6, s2, t6
                  srai         a3, t1, 10
                  addi         t0, a5, -908
                  srli         a6, zero, 17
                  sltu         t4, a0, s11
                  or           a2, t5, t3
                  andi         s0, s8, 459
                  lui          s3, 810858
                  sll          a0, t1, zero
                  sub          s3, ra, t4
                  srl          ra, s6, s4
                  srl          s9, a5, sp
                  and          zero, s3, s11
                  andi         ra, a1, -286
                  sltu         a7, a6, t4
                  xor          s5, a2, s1
                  slti         s11, s11, -402
                  xori         gp, s5, -1769
                  addi         a2, a6, 166
                  ori          zero, s11, -522
                  slli         s2, sp, 27
                  srli         s3, a3, 23
                  srli         s2, s3, 19
                  srl          s0, a3, t3
                  xori         s7, s10, -1895
                  nop
                  sltiu        s11, t5, 1498
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_20
                  li           t1, 0x0
                  li           a1, 0x80000000
                  li           ra, 0x80000000
                  li           a3, 0xfd1a05de
                  li           t2, 0xc7202f8d
                  li           gp, 0x80000000
                  li           s1, 0x0
                  li           t3, 0xc59d4f15
                  li           a0, 0x80000000
                  auipc        t1, 811534
                  sub          s1, s1, t5
                  add          a1, t2, t3
                  addi         a1, t1, 1416
                  nop
                  sub          ra, t3, t5
                  addi         t1, t3, -201
                  auipc        t1, 107715
                  add          s1, t1, a3
                  addi         s1, t5, -401
                  lui          t3, 720790
                  add          t1, t3, a3
                  lui          t1, 976457
                  lui          a3, 376257
                  add          t3, a1, t5
                  sub          a0, s1, gp
                  lui          t1, 721892
                  add          a0, a0, gp #end riscv_int_numeric_corner_stream_20
                  sll          a7, s0, s3
                  auipc        ra, 3987
                  and          a3, t4, s2
                  nop
                  sub          a2, a3, t3
                  andi         s7, a7, 1152
                  slti         sp, t1, 277
                  sltu         a2, t0, a6
                  auipc        t5, 445351
                  or           s1, s5, a5
                  xori         t0, t2, 1578
                  xor          s11, s4, tp
                  sra          a7, tp, s7
                  nop
                  sll          t2, zero, s10
                  lui          a3, 257082
                  or           t1, t4, s3
                  xori         t4, a5, 834
                  srai         s0, a6, 26
                  ori          s6, t3, 323
                  sra          s5, t6, a4
                  sra          s11, s7, ra
                  slti         s2, s8, 1079
                  sll          s4, s1, a7
                  sltiu        a0, t1, -40
                  and          t1, s0, t6
                  slti         s4, s8, 1322
                  xor          a1, zero, s6
                  xori         s11, tp, -979
                  slt          s6, s4, a0
                  lui          t1, 309359
                  srli         s11, t0, 10
                  ori          a6, sp, -1591
                  add          s7, a1, s1
                  ori          tp, s7, 1058
                  slt          s2, s1, a2
                  addi         t4, s4, 1379
                  sltiu        s0, a3, 1853
                  and          a3, t5, t5
                  auipc        t3, 1029556
                  slli         s7, s4, 9
                  sll          s9, t3, t2
                  addi         s1, s6, -824
                  srl          a3, s7, s2
                  addi         a6, zero, 1751
                  sra          s2, s6, s4
                  andi         t0, s4, -1158
                  sll          s11, t1, a2
                  auipc        a0, 57342
                  addi         t4, s11, -1575
                  sltu         s6, a6, tp
                  ori          t5, t5, -17
                  auipc        s0, 733684
                  xori         s11, s1, -1280
                  andi         a2, a0, 1761
                  sra          s3, zero, a2
                  sltiu        a3, a2, -729
                  srli         t4, s1, 10
                  ori          t4, s1, -1699
                  srai         t0, ra, 22
                  srli         s7, s4, 13
                  xor          t2, s9, t0
                  addi         t4, s4, -1103
                  nop
                  slt          gp, s5, zero
                  sltu         s7, zero, s7
                  auipc        s9, 213766
                  ori          s0, s2, -665
                  addi         gp, s10, 1954
                  slt          a7, a2, t6
                  lui          s6, 166498
                  srl          zero, t2, a1
                  add          s6, t0, tp
                  sll          a7, a1, t3
                  nop
                  xori         a1, s2, -1988
                  andi         a2, gp, -1295
                  sll          s11, a3, s9
                  srai         s9, ra, 7
                  andi         s8, t4, 927
                  and          a3, s1, gp
                  sub          t0, s4, s1
                  lui          s2, 457083
                  nop
                  xori         gp, t1, 380
                  sub          s8, ra, t4
                  or           a6, t0, s4
                  slt          s0, ra, s10
                  sub          t1, s7, s8
                  nop
                  and          s10, s6, s11
                  add          a6, s8, a0
                  and          s4, s11, a6
                  xori         t0, t0, -785
                  nop
                  slli         s0, t5, 2
                  ori          t1, a7, 85
                  lui          a2, 296671
                  addi         s4, s0, 1286
                  srli         s10, t4, 9
                  add          a1, s5, s6
                  andi         tp, t3, -1755
                  slti         a1, s1, -1367
                  slti         t2, s0, 817
                  add          t5, t1, s3
                  or           s7, s7, s2
                  srli         s3, a6, 7
                  sltu         s9, t4, t3
                  ori          s5, a5, 765
                  nop
                  sub          gp, a6, a2
                  and          s4, a6, s1
                  slt          t4, s10, zero
                  and          t2, s7, tp
                  lui          t1, 606594
                  sub          s1, t3, s2
                  slti         a2, s6, -681
                  andi         a0, tp, -3
                  srai         t3, zero, 13
                  sltu         s9, zero, t5
                  srli         t5, t4, 7
                  slli         t2, a6, 10
                  addi         t4, ra, 1915
                  sub          a1, a4, s10
                  sub          sp, s10, t0
                  or           s9, tp, t2
                  addi         sp, t6, 1323
                  lui          a2, 486225
                  sra          s7, a7, t2
                  add          s9, s10, t3
                  sra          a1, s3, t5
                  sra          a3, s0, s0
                  slti         sp, s11, 345
                  slt          a1, s9, s5
                  add          t1, t3, s0
                  srai         a1, gp, 9
                  addi         t0, s1, -982
                  srl          t1, s6, zero
                  sub          s8, sp, s9
                  xori         s0, a6, -601
                  xor          t3, s1, t0
                  sltiu        a6, s4, 807
                  ori          gp, s2, -1045
                  ori          s11, gp, 232
                  nop
                  sltiu        t2, ra, -960
                  sra          t4, t1, sp
                  xor          s4, sp, s7
                  lui          t2, 19413
                  xor          a1, a6, t2
                  sll          a2, a0, t4
                  or           s4, zero, s10
                  sub          s10, ra, t3
                  xor          s3, s6, gp
                  srli         ra, s3, 11
                  sltu         a2, s3, tp
                  xori         a7, zero, 1502
                  slti         tp, s2, -1242
                  ori          t2, a2, -871
                  srai         s2, zero, 27
                  lui          s4, 158351
                  slli         a0, s4, 24
                  nop
                  auipc        s1, 943517
                  slli         s10, s9, 22
                  nop
                  addi         tp, a4, -1493
                  auipc        gp, 305643
                  sll          a0, a0, s6
                  sltiu        gp, zero, -1240
                  srli         tp, t2, 23
                  srai         sp, t4, 1
                  sltu         s11, a7, a3
                  add          t4, s8, a5
                  lui          a2, 180857
                  sll          t0, s2, s8
                  lui          t0, 682688
                  slli         a1, s1, 11
                  ori          a7, a0, 336
                  or           s3, s2, s7
                  sra          s4, zero, t3
                  srli         a3, t4, 23
                  xori         zero, s0, -750
                  srai         s7, tp, 10
                  sltu         a2, s9, s11
                  and          t2, tp, a3
                  srli         s2, s3, 8
                  add          gp, t5, a3
                  lui          a7, 962762
                  slti         gp, zero, -678
                  sub          s3, s0, t4
                  addi         a3, a1, -1302
                  auipc        a3, 749284
                  add          s7, s3, t3
                  sltiu        s3, s10, 1939
                  slti         a3, s7, -1184
                  xor          s3, s5, s2
                  sll          s8, s0, s6
                  add          t5, t2, a6
                  sub          s1, t0, t5
                  sltu         t5, s1, a6
                  add          t4, s2, tp
                  nop
                  srl          s11, t2, s4
                  srl          t2, s5, gp
                  xori         s7, s9, 649
                  srli         gp, a7, 18
                  nop
                  slli         s10, s9, 27
                  sll          t3, s1, a2
                  and          sp, a0, s1
                  xori         s4, t2, -477
                  sra          sp, s5, s0
                  srai         s1, a4, 8
                  nop
                  xori         a0, a5, -1163
                  add          s11, s8, t4
                  andi         s2, s7, 516
                  srl          zero, a1, a7
                  slli         s0, t0, 14
                  xori         s2, a4, -1131
                  lui          a3, 795777
                  auipc        a2, 659812
                  sltiu        t4, sp, -445
                  and          s8, s8, t2
                  andi         s8, s11, 1936
                  srl          s11, s1, a5
                  nop
                  and          s9, a6, s0
                  sub          zero, s3, s1
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_24
                  li           t5, 0xffffffff
                  li           sp, 0x6c1652c2
                  li           s0, 0xffffffff
                  li           ra, 0x0
                  li           a6, 0x9f6253ba
                  li           t0, 0xffffffff
                  li           s10, 0xffffffff
                  li           s4, 0x0
                  li           t1, 0x0
                  addi         a6, ra, -1760
                  add          s0, ra, a3
                  sub          t1, t0, a6
                  addi         sp, t0, -1842
                  addi         t1, s4, -1609
                  addi         a3, s10, 699
                  sub          s10, a6, s10
                  nop
                  sub          t1, t5, t0
                  addi         a6, t1, -1087
                  auipc        s10, 309928
                  lui          s4, 726946
                  lui          s10, 61903
                  auipc        a3, 463452
                  lui          s10, 344328
                  lui          ra, 146054
                  sub          a3, ra, t1
                  addi         t5, a6, 923
                  sub          a6, s0, a6
                  auipc        sp, 810856
                  addi         s10, s4, 312
                  addi         s0, a6, -557
                  add          a3, s4, t0
                  nop #end riscv_int_numeric_corner_stream_24
                  nop
                  slt          a6, s11, t2
                  xor          s1, t0, zero
                  nop
                  auipc        t1, 390139
                  auipc        t5, 665151
                  srli         a3, s3, 23
                  srl          gp, t3, s11
                  addi         sp, s5, -1459
                  sltiu        s8, t3, -851
                  add          tp, s7, s4
                  sltiu        s10, s8, -1130
                  xori         t5, s2, 760
                  auipc        sp, 419193
                  srai         a1, t1, 23
                  sra          s9, s4, t6
                  sub          t5, t5, t4
                  slli         s4, a2, 19
                  srai         tp, s7, 17
                  slt          s7, tp, ra
                  slli         s7, s8, 11
                  sltiu        t3, t5, 1078
                  srai         t5, s3, 29
                  sltu         s0, ra, s4
                  lui          tp, 820834
                  andi         sp, a5, 974
                  sll          t3, s11, a7
                  addi         t4, a1, 1297
                  addi         t5, a6, -1588
                  add          t4, gp, ra
                  xori         s11, t1, -44
                  slt          s7, t4, s8
                  srai         tp, zero, 12
                  or           s10, t2, s5
                  ori          zero, t3, -1613
                  srai         a3, tp, 25
                  nop
                  andi         t0, s5, 1905
                  or           s7, t0, a7
                  xor          s3, gp, t0
                  xori         t0, a2, -826
                  sub          t0, s0, a4
                  sra          sp, a3, a3
                  add          sp, t2, a4
                  nop
                  sub          s2, s5, t1
                  slt          s9, t0, t0
                  andi         a2, gp, 903
                  sra          a3, a3, t1
                  srli         s3, s7, 27
                  and          s5, s1, s6
                  auipc        s8, 903527
                  xori         s4, s7, 26
                  sltiu        t3, s9, 460
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s11, 0x80000000
                  li           a2, 0x80000000
                  li           s0, 0x80000000
                  li           s8, 0xab579feb
                  li           s1, 0x9e605108
                  li           tp, 0xffffffff
                  li           s7, 0xffffffff
                  li           t4, 0x0
                  li           sp, 0x0
                  add          sp, tp, s1
                  addi         s8, sp, -1273
                  nop
                  sub          tp, tp, s8
                  lui          s11, 360189
                  addi         tp, s11, -620
                  lui          s8, 75201
                  auipc        s7, 875013
                  sub          s1, s0, s8
                  sub          s11, s8, a2
                  nop
                  addi         s11, a2, 212
                  lui          s11, 349703
                  nop
                  add          s7, sp, s0
                  add          a2, s11, tp
                  lui          s7, 168936
                  sub          s7, t4, s1
                  addi         tp, s7, -1578
                  add          a2, s8, t4
                  sub          s7, a2, sp
                  auipc        s8, 786924
                  add          s2, a2, s8
                  nop
                  lui          s7, 415975
                  sub          s0, tp, s2 #end riscv_int_numeric_corner_stream_17
                  auipc        s4, 468462
                  srl          a0, a0, zero
                  lui          t2, 577181
                  ori          ra, a4, 479
                  slt          t3, a0, a6
                  slli         s11, s5, 30
                  sub          s0, a7, a6
                  sltu         s5, s6, t6
                  auipc        a0, 927534
                  srli         a1, t4, 27
                  slt          a2, a4, s10
                  sub          s1, a4, a6
                  sub          t0, zero, a7
                  lui          s11, 897875
                  andi         s6, a4, 1235
                  srl          s7, a2, a5
                  addi         a6, t3, -1570
                  slti         s6, ra, 1716
                  xor          s6, t3, ra
                  nop
                  srl          a1, t2, s9
                  slti         a1, s7, -1245
                  ori          t3, zero, 1164
                  slti         a3, a7, 1006
                  slt          t4, a6, a5
                  xori         s0, t3, -761
                  slli         sp, a0, 21
                  or           s8, a0, t2
                  or           zero, s7, a4
                  slti         gp, gp, -917
                  sub          s6, t4, t0
                  andi         a2, s6, -1233
                  addi         s7, t2, 1968
                  or           a7, zero, a2
                  sra          s11, a2, sp
                  and          t3, sp, a7
                  xori         t0, a6, 1078
                  nop
                  ori          s7, ra, 276
                  slti         t3, t6, 1142
                  or           s9, s2, s4
                  sra          t3, a7, s8
                  srai         sp, t6, 12
                  sra          t4, t1, s8
                  nop
                  auipc        a7, 789042
                  srli         a1, t2, 9
                  or           s3, s6, t3
                  andi         a1, t4, 687
                  or           zero, t3, a5
                  slt          a2, s4, s3
                  auipc        a7, 490294
                  slt          a6, s1, t5
                  andi         t1, t4, 1448
                  or           s5, s4, s4
                  add          a3, a3, tp
                  ori          s10, sp, 1142
                  srli         gp, s5, 26
                  auipc        tp, 1032240
                  xor          a2, s8, s9
                  xor          a1, s7, t4
                  nop
                  srai         s11, s4, 9
                  xor          t2, gp, a5
                  srai         s9, t1, 26
                  andi         t2, a5, -128
                  or           t3, a2, s1
                  lui          s8, 701325
                  addi         a6, a3, 1884
                  xor          t2, t4, a7
                  srai         a2, s7, 6
                  slli         t2, zero, 1
                  and          t4, s9, a3
                  or           a2, t2, t3
                  sll          s8, t6, a5
                  andi         t2, s11, 1981
                  nop
                  xor          s9, t3, s1
                  sub          t0, t0, s7
                  sltu         s8, s1, s2
                  srai         t5, a6, 6
                  srli         t5, s6, 20
                  slli         sp, s5, 14
                  lui          s6, 232879
                  srai         t2, a7, 12
                  srl          t3, zero, s3
                  slli         t2, t0, 17
                  andi         a0, s10, -132
                  and          s7, t3, s1
                  srai         s9, a5, 23
                  srai         ra, s5, 3
                  srli         t4, t0, 20
                  sltiu        s4, t4, -1644
                  andi         sp, a3, 501
                  auipc        s1, 985242
                  srl          ra, ra, ra
                  srl          tp, s3, s11
                  xori         s8, a1, -1508
                  add          s10, a0, t0
                  srl          t5, s6, a1
                  slt          t4, a3, a5
                  slti         s8, t2, 299
                  sra          a7, s8, t3
                  xor          zero, a7, tp
                  add          s11, zero, t1
                  slti         s11, a3, 1715
                  slti         zero, a5, -1109
                  slt          s2, s10, a3
                  xor          t5, tp, s4
                  slt          t1, a1, t3
                  sub          s7, s9, s8
                  lui          s4, 693234
                  sltu         a3, tp, a2
                  and          zero, gp, a1
                  or           t2, s3, s1
                  xor          s3, s9, s3
                  addi         sp, s7, -1242
                  sub          gp, s3, a0
                  nop
                  sll          t4, s11, s5
                  addi         a2, zero, 1275
                  xor          a3, s11, t1
                  ori          s4, s11, 1280
                  ori          a0, gp, -1772
                  slli         s6, t3, 28
                  xor          t3, s5, s6
                  xor          s2, s4, a5
                  sra          sp, s8, tp
                  slt          s1, a0, s8
                  add          s0, t2, s7
                  xor          t5, s2, tp
                  or           t4, s0, s0
                  nop
                  srli         t2, a5, 2
                  ori          s7, a7, 1543
                  sub          s3, s5, a1
                  sll          s7, ra, t2
                  ori          gp, s10, 1516
                  addi         t3, t5, 759
                  and          t3, s9, a1
                  xor          a2, t2, a6
                  slti         tp, s5, 642
                  srli         t2, s0, 20
                  and          t5, s11, s8
                  srl          a7, a5, s4
                  auipc        zero, 571310
                  xor          s11, s9, s6
                  srai         s11, s2, 19
                  sub          s11, s3, s7
                  slli         zero, s4, 18
                  andi         t5, tp, -1494
                  slt          a0, s5, a0
                  andi         t4, a4, 1778
                  xor          s8, s7, gp
                  add          a6, tp, t1
                  ori          a3, t5, 675
                  lui          s9, 146697
                  srl          s9, zero, ra
                  lui          t3, 461156
                  or           gp, t1, a1
                  add          s9, sp, t3
                  andi         sp, a2, -787
                  slti         gp, t0, -516
                  srli         a3, ra, 15
                  nop
                  slli         s0, a7, 6
                  xor          s6, sp, tp
                  sra          tp, a2, s1
                  add          t4, a6, t4
                  srl          s3, tp, a7
                  addi         s9, tp, 1274
                  nop
                  and          t4, t0, s2
                  add          s0, ra, s8
                  slt          t0, sp, s7
                  xori         a3, s4, 1686
                  nop
                  andi         a2, t0, 1938
                  auipc        t5, 896433
                  slt          s1, t0, a2
                  sltiu        a7, s10, -1963
                  srl          tp, sp, t4
                  or           a1, s3, a7
                  srl          ra, sp, a1
                  slli         s4, s7, 22
                  slti         gp, s8, -584
                  ori          a6, s5, -2044
                  and          a2, s2, s0
                  add          t3, t0, t4
                  srli         a3, ra, 29
                  slti         tp, s3, 715
                  sra          t4, t0, s10
                  nop
                  slli         s8, gp, 13
                  slt          ra, a0, a1
                  sub          a2, s7, s4
                  addi         a1, ra, -220
                  sll          gp, s11, t1
                  srl          s10, s6, s9
                  sll          s4, t2, s9
                  srai         s7, t3, 0
                  xori         s9, t2, -1171
                  xor          zero, t0, s9
                  sltu         a3, s10, a1
                  xori         t3, t6, -177
                  or           gp, t3, ra
                  auipc        a1, 34984
                  add          s3, sp, s8
                  auipc        t2, 318992
                  slt          a0, sp, s1
                  slli         s9, a4, 6
                  xor          t5, t5, t6
                  auipc        a6, 740925
                  slli         a3, s11, 15
                  sra          s1, t1, t2
                  xori         s4, a0, 2025
                  srl          t4, t2, zero
                  slti         t5, tp, 453
                  sub          s8, s4, zero
                  ori          zero, s10, 1594
                  nop
                  sll          t0, a2, gp
                  xor          s0, s4, s7
                  sra          gp, t2, s5
                  or           s3, a1, a3
                  slti         ra, t5, 585
                  slli         s10, s1, 12
                  sra          s4, sp, sp
                  addi         s5, s9, -202
                  xori         ra, a4, 1630
                  slli         tp, t1, 15
                  andi         s7, tp, -958
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s4, 0x3426fa69
                  li           a3, 0x80000000
                  li           t3, 0xffffffff
                  li           s7, 0x80000000
                  li           gp, 0xffffffff
                  li           s9, 0x80000000
                  li           s11, 0x80000000
                  li           s10, 0xffffffff
                  li           a6, 0x0
                  auipc        a6, 150083
                  auipc        t3, 527479
                  auipc        a6, 740410
                  lui          gp, 512172
                  lui          a6, 762470
                  sub          gp, s4, s9
                  addi         t4, s4, -1229
                  lui          s11, 161104
                  nop
                  sub          t4, s10, s10
                  auipc        a3, 873123
                  lui          s9, 603464
                  auipc        gp, 231628
                  lui          gp, 321687
                  add          gp, t3, s11
                  add          s4, s7, s9
                  lui          s11, 146233
                  auipc        s7, 118741 #end riscv_int_numeric_corner_stream_6
                  lui          a2, 348740
                  andi         ra, t1, 939
                  ori          a0, a7, -731
                  xori         s5, t2, -369
                  lui          tp, 404626
                  srai         t5, s10, 4
                  sra          t1, a6, a3
                  sltiu        s5, s8, -1168
                  sltiu        t5, gp, 980
                  slt          t2, s1, a0
                  slti         s0, a1, -1498
                  srli         sp, t1, 4
                  auipc        s4, 215866
                  srai         t5, a2, 28
                  sltiu        t5, t2, 519
                  slti         s1, s4, 916
                  slli         s9, s10, 11
                  addi         gp, s1, -1238
                  xor          t2, t0, s3
                  slt          a2, s4, s6
                  lui          s1, 180745
                  ori          zero, s2, 512
                  slti         s7, t3, -166
                  sltu         t4, tp, s1
                  addi         t1, s7, 949
                  and          t0, a6, s10
                  sltu         ra, a5, a4
                  and          ra, gp, sp
                  sltiu        s7, t2, 247
                  sltiu        a3, s4, -1322
                  sltu         a1, t1, s3
                  sub          t3, t4, t4
                  sra          t1, t3, s7
                  sra          s1, s10, t0
                  or           a0, s1, a4
                  srl          t5, s0, s3
                  sub          s8, s4, t3
                  slli         zero, t1, 4
                  srli         a6, s0, 2
                  addi         ra, s10, 434
                  sltu         s2, zero, gp
                  or           s2, a2, a0
                  slt          a7, s9, tp
                  xori         s6, ra, -1706
                  sub          gp, a1, sp
                  and          a7, a0, t1
                  lui          t3, 188429
                  srl          s8, a0, s8
                  or           ra, a1, a7
                  sltu         a3, t4, t1
                  addi         t2, s10, 456
                  sll          zero, a3, gp
                  slti         s0, zero, -502
                  and          a2, s5, t6
                  or           s1, zero, s3
                  sub          a2, t1, a5
                  sub          a2, sp, s3
                  sltiu        s5, s8, 34
                  sub          s6, t4, s3
                  sub          a6, a1, t4
                  srl          a1, s9, t2
                  ori          gp, s3, -309
                  sll          t4, s3, zero
                  xor          s9, a7, t6
                  add          s4, t6, s9
                  srai         s10, a2, 19
                  sll          t3, s9, a3
                  auipc        zero, 1028869
                  addi         t5, gp, -1381
                  srli         tp, ra, 7
                  slli         s5, s2, 18
                  srli         sp, a7, 10
                  auipc        s3, 981073
                  sltu         s6, a0, s2
                  srai         sp, t5, 1
                  sltu         a1, s4, a2
                  addi         t5, tp, 623
                  slli         t0, t1, 2
                  auipc        s1, 134478
                  srli         t2, s1, 0
                  or           zero, a5, t4
                  srli         a3, s8, 27
                  slt          s6, s8, s11
                  addi         t4, a3, 1645
                  and          tp, t3, s5
                  sll          t1, s11, a0
                  xor          ra, s2, a3
                  ori          s2, a4, -1476
                  or           t2, s10, s9
                  xor          ra, s9, s7
                  srai         t2, s3, 9
                  xor          s6, s5, a5
                  ori          s2, s2, 524
                  and          s10, s2, a5
                  andi         t5, s5, 1406
                  ori          a2, t1, 1969
                  andi         t0, gp, 1331
                  sltu         ra, zero, zero
                  srai         s4, s2, 1
                  sltu         s5, t3, s7
                  nop
                  srli         s0, a1, 14
                  or           gp, s10, s8
                  sltu         s8, t3, s7
                  lui          zero, 702731
                  ori          a3, s7, -958
                  sll          ra, a5, t1
                  slt          s5, s3, s2
                  nop
                  nop
                  slt          s0, a2, a1
                  sra          a7, s7, s1
                  xori         zero, sp, 171
                  srli         s9, s8, 25
                  srai         s0, t0, 21
                  srai         t0, zero, 28
                  sra          gp, a0, zero
                  auipc        a3, 551814
                  add          s4, sp, a1
                  slt          s10, t4, ra
                  and          sp, a1, a0
                  sll          t5, a4, t4
                  auipc        s10, 643741
                  srli         s5, t5, 12
                  sub          a6, a3, s5
                  sll          a3, ra, a0
                  xor          s4, zero, a1
                  sltu         t1, s5, t1
                  sltiu        t4, a7, 751
                  add          tp, a1, zero
                  addi         s9, a4, -1731
                  or           sp, s8, sp
                  slli         a6, tp, 13
                  srli         a3, a3, 7
                  ori          a3, s4, -514
                  slti         a6, s8, 1576
                  slli         a2, sp, 6
                  sltu         s4, s11, a1
                  andi         s4, t5, -1232
                  sra          ra, a0, t3
                  sub          s5, s9, t2
                  ori          tp, a6, -1648
                  sll          s6, s1, t4
                  andi         s6, gp, -1010
                  srai         t2, s10, 24
                  lui          s11, 569707
                  srli         s0, s2, 5
                  add          a7, tp, zero
                  slti         s5, s9, -499
                  sll          tp, tp, s8
                  lui          s6, 919118
                  slt          s6, tp, t1
                  xor          t4, s2, tp
                  ori          a6, tp, 833
                  addi         s5, a2, -1123
                  slli         t3, s1, 6
                  sltu         s1, sp, s11
                  sll          s6, s3, s9
                  xor          a2, zero, t2
                  ori          s0, t0, 507
                  addi         s1, gp, 1560
                  sltu         tp, s3, s11
                  slli         s1, s7, 2
                  or           zero, ra, a2
                  sub          a0, s1, a1
                  sll          s5, ra, t0
                  ori          s2, t6, -747
                  sra          s1, s3, a4
                  sra          s0, a0, zero
                  sltiu        a6, a1, 1609
                  sll          t3, a7, t0
                  or           a3, a2, s8
                  xor          s1, a2, t6
                  auipc        s0, 1039764
                  sll          a3, t2, s3
                  and          s8, sp, s10
                  sub          a1, s11, ra
                  sltu         s2, t6, a5
                  lui          s7, 651301
                  slli         a2, zero, 9
                  xori         a1, s4, -2048
                  xori         s1, s5, 422
                  auipc        t0, 883413
                  slti         tp, t0, -445
                  nop
                  slti         ra, a1, 412
                  add          tp, a5, t6
                  srl          s7, t3, t1
                  add          s6, tp, t5
                  slt          s3, s11, s6
                  srai         ra, a5, 4
                  and          t1, t5, a1
                  xori         t3, a4, 1802
                  srli         zero, a1, 30
                  add          tp, s8, gp
                  andi         s9, s9, 624
                  sltu         s0, zero, t3
                  xor          t4, s3, s5
                  srl          s7, a6, s2
                  xori         t1, t3, -1806
                  andi         s7, s0, -148
                  andi         t0, a5, 188
                  sltiu        a6, t3, -1056
                  sra          a0, a1, t4
                  and          s5, a3, tp
                  lui          t2, 282949
                  srl          s4, sp, s0
                  sll          a1, t1, s10
                  slli         t4, s8, 5
                  lui          a3, 469307
                  andi         t3, t3, 993
                  sltu         s2, zero, s1
                  slli         a2, t4, 29
                  slti         s3, zero, -1739
                  srai         sp, s1, 24
                  ori          t2, s0, -899
                  slt          s6, t2, s0
                  slli         s6, s9, 28
                  nop
                  sra          t0, t2, s3
                  srli         a2, s5, 26
                  srl          t0, a7, s10
                  sub          t3, s6, s4
                  srli         s4, a6, 4
                  sll          a6, s1, s0
                  srli         s6, s5, 29
                  add          t4, a1, t2
                  andi         t4, s0, 2001
                  slli         t5, t2, 7
                  srl          s1, s2, s10
                  xori         s5, s2, -1766
                  slli         s1, t3, 1
                  nop
                  sltiu        s7, a3, 1905
                  sll          t2, s11, s11
                  xor          a6, zero, zero
                  srai         a0, a6, 11
                  slt          sp, s4, s0
                  andi         s8, gp, 362
                  or           a7, s7, a4
                  srl          t2, s7, t0
                  lui          sp, 425547
                  addi         s4, s5, -229
                  sll          t2, t1, s1
                  srl          s2, s5, s0
                  srl          s6, t4, t4
                  sltiu        t2, zero, -1679
                  sll          a1, s5, t3
                  auipc        s6, 594276
                  and          s1, s2, a3
                  nop
                  slti         s6, t2, 1026
                  srai         a1, s9, 17
                  addi         s7, a2, 1516
                  sub          a6, a7, s10
                  sra          t3, tp, t5
                  srli         a0, a0, 21
                  lui          gp, 644310
                  srai         a3, t4, 0
                  sub          t1, a5, s2
                  andi         t4, a0, 866
                  lui          a3, 884818
                  nop
                  sub          s9, t4, s8
                  sltiu        s1, a5, -649
                  xor          a6, a5, tp
                  sltiu        t2, s1, -498
                  srli         t3, s0, 17
                  sra          a1, ra, s4
                  srl          s1, a3, a2
                  sltu         s7, t5, t2
                  and          s9, t0, a2
                  slt          s6, s5, s0
                  sltu         a3, ra, s5
                  srli         s5, s1, 22
                  or           a1, t0, a5
                  or           a3, t6, t0
                  srl          a1, t2, s1
                  sub          a0, a0, t3
                  slli         sp, s4, 30
                  sltu         s10, a2, t0
                  srl          s10, a6, s0
                  srai         s0, s5, 25
                  xor          a0, s1, t2
                  or           zero, a0, tp
                  ori          t2, a2, -783
                  slt          s2, ra, a1
                  sub          t2, s10, s9
                  add          s8, a6, s10
                  slt          s2, s9, a1
                  srai         t4, a7, 13
                  nop
                  addi         s7, t1, 1844
                  slti         s7, s0, 731
                  add          s6, a1, s7
                  and          s3, s1, s9
                  xori         t2, a7, 547
                  xori         a3, a5, -907
                  srli         a1, t6, 2
                  auipc        a7, 947889
                  xori         sp, a0, -855
                  slti         t3, tp, 1929
                  slti         t2, s9, -1585
                  and          a0, t2, t3
                  sll          s0, gp, s7
                  lui          a7, 6344
                  ori          tp, a5, -640
                  ori          s0, s3, 97
                  xori         a0, s0, -159
                  sub          zero, t5, a7
                  lui          a7, 1020697
                  ori          t1, ra, -1075
                  andi         tp, s9, 821
                  or           t0, a7, tp
                  slt          a7, t2, t0
                  xori         a6, t6, -1751
                  srl          t1, a3, s5
                  xor          s3, s8, s11
                  xor          a0, s7, s2
                  sll          a3, a0, s0
                  andi         t4, a6, 968
                  srai         s4, s10, 9
                  sll          ra, a4, s5
                  nop
                  sra          s5, gp, t2
                  slti         s6, ra, 154
                  sra          gp, s0, a7
                  sub          a2, s7, t3
                  slli         s8, zero, 14
                  add          t1, s8, a2
                  sub          s2, t0, s1
                  nop
                  nop
                  srl          gp, s1, s7
                  sltiu        sp, sp, 1041
                  xori         a3, a5, 207
                  sll          t5, t3, s7
                  srli         s4, s10, 13
                  auipc        s4, 871212
                  srai         t1, s8, 0
                  sll          s6, t4, s6
                  sltu         a1, a6, t5
                  addi         a1, t4, 1356
                  srl          a6, s11, s3
                  srli         a6, sp, 2
                  sra          t2, a5, a2
                  add          t1, t1, a1
                  auipc        t1, 588431
                  ori          t3, t6, -1707
                  srai         t2, ra, 27
                  and          s2, t6, sp
                  slli         t0, a2, 27
                  addi         s7, t6, 1526
                  sltiu        s10, s4, -536
                  nop
                  sltu         s9, s11, s7
                  xor          t2, zero, a3
                  nop
                  andi         a3, s3, -664
                  slt          s1, t1, t5
                  nop
                  andi         s7, t0, -342
                  xor          s11, s4, s5
                  and          s1, t6, tp
                  nop
                  auipc        t3, 911897
                  sltu         t3, s6, t3
                  sra          s10, s3, a7
                  sub          a3, s5, t6
                  srai         s10, t1, 22
                  sltiu        s9, t3, -1165
                  sll          a3, a0, s6
                  xori         t4, t5, 266
                  ori          s11, a4, 881
                  add          a2, a6, tp
                  or           a0, a0, a4
                  nop
                  srli         a0, s3, 24
                  sltiu        s9, ra, 677
                  slti         s10, gp, -1433
                  srl          t3, a3, s4
                  slt          t5, s8, t0
                  addi         a7, t4, 636
                  srai         s6, t0, 29
                  nop
                  sra          s10, t5, a4
                  slti         a1, tp, -78
                  or           s5, s7, a6
                  or           s11, s2, zero
                  sll          s7, a7, tp
                  or           s5, s2, a1
                  sra          s0, s4, a0
                  srai         s3, a6, 7
                  sltu         s6, a7, gp
                  sra          t0, s10, s11
                  sra          tp, a5, s1
                  slli         s9, sp, 15
                  sltu         zero, s0, s7
                  sltu         s5, a6, a7
                  lui          a2, 437928
                  or           a2, t5, s0
                  slli         s7, s10, 15
                  lui          s3, 553259
                  lui          s5, 956399
                  srl          s0, s11, t6
                  andi         a7, s2, -1681
                  andi         gp, s7, 593
                  srli         t3, s4, 29
                  srl          s2, s7, s10
                  slt          a2, t1, s8
                  add          a1, a3, ra
                  slli         s10, s1, 16
                  li           t5, 0x335f0994 #start riscv_int_numeric_corner_stream_8
                  li           a7, 0xffffffff
                  li           t1, 0x0
                  li           s2, 0xffffffff
                  li           t3, 0x0
                  li           s7, 0x0
                  li           gp, 0xffffffff
                  li           t0, 0xbc8db5ef
                  li           s5, 0x155b6389
                  li           s10, 0xffffffff
                  sub          t3, t1, t0
                  nop
                  auipc        s10, 131113
                  add          s2, s5, t3
                  nop
                  nop
                  addi         s10, s10, -1191
                  sub          t3, t3, t3
                  auipc        t5, 577830
                  nop
                  add          t3, s7, gp
                  sub          gp, a7, t0
                  nop
                  nop
                  addi         t1, t0, -1249
                  sub          t1, t5, t0
                  add          s2, a7, t3
                  add          t3, t1, s5
                  sub          t3, s2, t0
                  lui          t1, 952591 #end riscv_int_numeric_corner_stream_8
                  srli         a1, s8, 2
                  slt          t1, a0, s10
                  andi         t3, s1, 390
                  or           s7, t2, s2
                  srai         a3, sp, 28
                  srai         a1, s0, 27
                  slli         s9, ra, 12
                  addi         a1, t2, -855
                  and          s5, s1, a7
                  addi         s3, t5, -718
                  add          s6, s5, s0
                  add          ra, t1, sp
                  add          s5, a0, t6
                  ori          t2, s3, -1036
                  sub          t5, t0, t6
                  srai         a0, s1, 0
                  addi         sp, s6, 1663
                  sub          zero, a0, s0
                  slt          a3, s4, ra
                  auipc        s11, 479155
                  slli         t2, a0, 14
                  nop
                  sltiu        t1, a2, -1920
                  add          t0, a7, t3
                  slli         t0, a0, 17
                  sub          s0, s7, t5
                  sltu         t4, a7, a5
                  and          zero, s3, s4
                  sltiu        t4, s6, -1862
                  sltu         t3, t3, zero
                  srl          a0, a3, a5
                  slti         t1, s1, 1085
                  auipc        s11, 548978
                  andi         a1, zero, 1917
                  sltu         s7, a7, ra
                  sub          t3, s3, a0
                  sub          s10, sp, t5
                  lui          t5, 837951
                  auipc        a2, 538111
                  slt          t3, s10, a1
                  slti         s9, a1, 939
                  sltiu        s11, s6, 811
                  srai         zero, a6, 18
                  srl          t5, t5, s7
                  slt          a1, s7, s10
                  sll          a0, a3, s9
                  xori         zero, s7, 1176
                  xori         ra, s0, -1783
                  sltu         s1, a5, a6
                  slt          t5, s8, a2
                  slli         zero, t1, 23
                  add          a2, s10, a7
                  sub          t5, sp, a0
                  slli         t4, s0, 9
                  sub          s4, t4, t6
                  srl          t4, a3, t5
                  sub          s4, t3, t6
                  xori         s2, a5, 1990
                  sltiu        a6, s11, -1368
                  sra          a0, a1, s3
                  sll          s0, t5, s2
                  or           s7, t1, a2
                  sltu         t3, s7, a6
                  sra          s9, a1, s3
                  sll          s10, a7, zero
                  srl          t4, a1, sp
                  or           a1, t0, zero
                  sra          s5, t2, s9
                  srl          zero, s3, s7
                  nop
                  sub          s8, a2, s2
                  slt          s2, s5, s9
                  lui          a7, 391146
                  sub          s11, s4, a6
                  slti         t3, a4, -1341
                  sll          sp, a7, sp
                  sltiu        a0, s5, -281
                  xor          t2, a5, a6
                  ori          s3, a7, -1921
                  sltu         a1, t2, t3
                  sll          a0, s7, s3
                  slli         s7, s1, 17
                  sub          s8, s11, s4
                  sltiu        a7, s8, -1789
                  xori         s6, t3, 980
                  srli         a1, t2, 0
                  srli         sp, a4, 3
                  xor          t2, a7, s4
                  sub          s8, s2, s3
                  ori          a6, t2, 1706
                  add          s6, a5, s9
                  andi         t0, t6, 864
                  lui          t4, 218735
                  auipc        t1, 476156
                  xori         s4, s10, 662
                  addi         sp, t5, 1953
                  andi         s10, s9, 810
                  add          sp, s1, tp
                  xori         t4, s3, 943
                  sra          zero, t1, s4
                  srai         s3, t0, 4
                  sub          a6, a6, gp
                  sub          sp, a5, s5
                  xori         a7, s5, -968
                  slli         s11, gp, 30
                  srl          t5, tp, s10
                  srl          t1, a3, t1
                  nop
                  sll          s1, s4, s6
                  ori          s4, s2, 611
                  sub          s0, tp, sp
                  xori         a6, t6, -1807
                  lui          s6, 792800
                  srl          s3, a4, s11
                  andi         s5, s3, 268
                  auipc        t1, 206476
                  sltiu        t3, zero, -1286
                  slli         gp, t5, 6
                  sll          t1, t6, t1
                  ori          s11, gp, 1630
                  addi         sp, a4, 896
                  xori         t4, t1, -1810
                  lui          s1, 766465
                  slli         s8, s7, 19
                  add          zero, a1, sp
                  srli         s11, t5, 15
                  xori         s4, t6, 1113
                  auipc        s9, 837044
                  slti         a3, s11, 1780
                  and          a0, s8, s2
                  srli         s4, a4, 1
                  slli         a0, t5, 0
                  srl          s0, s3, a5
                  xor          s8, s3, s6
                  or           s0, s11, s1
                  sub          t2, t6, t0
                  sub          ra, t6, t1
                  auipc        a7, 139624
                  nop
                  xori         t1, s4, -515
                  addi         s0, a6, -1355
                  slti         t2, t1, -1397
                  slli         s11, tp, 9
                  slti         tp, s10, 1452
                  xor          sp, s3, s8
                  nop
                  srli         t4, s11, 30
                  ori          s5, s3, -531
                  add          s0, a2, a3
                  sll          a3, t6, s7
                  xori         t5, s8, -403
                  srli         s0, s7, 15
                  sll          tp, a5, t1
                  sub          t0, a1, a7
                  slti         t2, a3, 1265
                  sll          s5, a1, sp
                  sra          s6, s11, t2
                  slti         a1, s9, 791
                  add          a7, s5, a3
                  srl          zero, s8, gp
                  slti         a7, zero, -1336
                  sub          s2, a1, t2
                  srli         t3, t1, 24
                  auipc        t4, 956896
                  and          s4, s4, a7
                  or           zero, a4, tp
                  slt          s1, s7, s11
                  sltiu        s8, s3, -935
                  sub          a1, t4, s1
                  sra          a3, s1, a5
                  ori          t2, a7, -849
                  srai         s1, s4, 26
                  sltu         s1, t1, a6
                  andi         s9, t2, 1103
                  sltiu        t1, a0, -989
                  srai         s2, a3, 2
                  ori          sp, s7, -566
                  xor          t5, s3, tp
                  srl          t4, t1, s1
                  slt          t3, s10, s4
                  sra          s0, s6, s1
                  xor          t3, t4, t0
                  add          a7, s3, a7
                  slti         s1, t2, 1650
                  srai         a0, s6, 12
                  nop
                  slt          s8, s10, a5
                  ori          a3, t5, 1467
                  sra          t2, s4, a4
                  sltiu        a0, s8, -734
                  sub          s0, s5, t6
                  sra          t2, a4, a5
                  andi         t1, tp, 1634
                  sra          a0, gp, s2
                  add          s9, s3, s11
                  lui          a7, 89569
                  auipc        zero, 872938
                  slli         t4, s9, 19
                  sra          a2, t5, s4
                  ori          a2, t0, -791
                  addi         t4, s0, 1283
                  sub          s11, a5, t1
                  sltu         sp, a0, s5
                  sltu         t1, t1, s8
                  srai         s0, s9, 12
                  and          t5, gp, t0
                  nop
                  slt          a6, t0, a4
                  sub          t0, gp, t5
                  sll          sp, s9, tp
                  slti         a7, s5, 1933
                  slti         a2, s6, -1774
                  and          t1, a2, t4
                  and          t0, t2, s3
                  auipc        s8, 323067
                  lui          t0, 584959
                  srai         t3, a1, 10
                  srai         sp, s3, 0
                  sll          a3, s7, sp
                  or           s2, t3, a2
                  or           s2, t2, zero
                  sltiu        a7, zero, -461
                  sltiu        t0, s10, 691
                  xor          s2, s3, a5
                  addi         s11, a3, 397
                  andi         s1, a3, -1422
                  srai         t2, s6, 24
                  sra          s2, s3, tp
                  xori         zero, s0, -703
                  slt          sp, tp, zero
                  srli         t5, s6, 7
                  slt          s7, s9, a3
                  srai         a7, sp, 29
                  and          s0, s10, s1
                  xor          sp, a7, a3
                  andi         ra, t3, 755
                  xori         s4, ra, 1229
                  add          a2, ra, t6
                  lui          t4, 200847
                  and          a0, a6, t2
                  add          a6, sp, s7
                  srli         s5, gp, 4
                  or           t5, tp, gp
                  slli         a1, s11, 17
                  ori          t2, s5, -1638
                  sub          tp, a0, s0
                  sll          zero, s9, s6
                  srl          s11, a0, t0
                  sub          a2, zero, t6
                  slti         s10, s8, -1869
                  andi         s10, gp, -1376
                  or           t5, t0, t0
                  xor          t5, s9, tp
                  slt          t2, s4, s3
                  xor          s6, a3, gp
                  slti         s5, s0, -1853
                  slli         a0, s8, 23
                  sltiu        a3, s2, 1067
                  lui          s7, 789939
                  sltu         t5, tp, s9
                  nop
                  andi         t5, t6, -377
                  sra          a2, a2, t2
                  or           s3, s7, t4
                  sltu         zero, tp, a5
                  srai         t4, a5, 27
                  sub          tp, a5, ra
                  nop
                  sltu         s0, t6, s4
                  srli         zero, s1, 18
                  sub          s6, s4, a3
                  sra          s7, a6, s5
                  and          s8, t2, t4
                  srli         t1, a5, 12
                  and          t5, a5, s6
                  xor          s4, t5, s0
                  xori         s6, a0, -1636
                  and          s1, s7, t4
                  srai         a0, s9, 26
                  sltu         s1, a2, a2
                  srli         a1, s2, 19
                  add          s10, s2, t3
                  srai         s6, t2, 31
                  andi         t2, a4, 1251
                  and          ra, s7, t4
                  ori          gp, s10, -143
                  slti         s4, sp, 915
                  slli         t3, t4, 2
                  xori         t1, s5, -1047
                  and          s7, s6, s9
                  srai         s2, a2, 12
                  addi         t1, s4, -1230
                  addi         t1, t4, -643
                  sub          t0, t5, a1
                  slt          s7, s8, t4
                  add          a0, t5, ra
                  or           s10, t2, t4
                  add          t4, t1, s11
                  xori         s11, sp, 1515
                  ori          t1, tp, 1809
                  xor          t2, a0, t1
                  or           s9, a4, zero
                  srai         s10, t5, 26
                  slt          s5, a6, s3
                  slti         a3, a2, -527
                  xor          sp, t3, t1
                  srli         a3, ra, 30
                  sll          a3, t2, a0
                  or           t0, t5, t1
                  ori          t0, t0, 625
                  and          t5, t2, ra
                  nop
                  srl          s2, ra, a5
                  and          s6, s0, s4
                  slt          s6, a6, s5
                  sll          s10, sp, a7
                  add          s8, t4, a4
                  sltiu        s10, tp, -1796
                  srli         s9, tp, 14
                  xori         a1, s4, 1036
                  sltu         t1, s6, a4
                  slti         s3, tp, 1127
                  sltiu        sp, s5, -1306
                  and          s7, s9, s3
                  xori         ra, a7, 616
                  sub          t3, a3, s5
                  or           t4, t6, s1
                  sltu         t1, a3, s7
                  or           s8, a5, s2
                  srli         zero, tp, 28
                  slt          s1, a4, s10
                  sltiu        t4, a6, 356
                  or           t2, a6, a0
                  slti         ra, ra, 1420
                  sll          a2, zero, s5
                  nop
                  and          t0, zero, t3
                  sltu         s8, a7, t5
                  ori          t5, zero, 570
                  srai         t2, s8, 13
                  sub          t1, t1, s3
                  and          a6, a3, t4
                  sra          s8, s11, zero
                  addi         t4, a6, 1299
                  ori          t3, a3, 1494
                  slli         s8, t4, 6
                  srli         gp, t5, 29
                  slti         gp, a3, -770
                  sltiu        a2, a3, -902
                  slli         zero, tp, 21
                  sltu         s9, t1, t5
                  slli         gp, a4, 14
                  auipc        s11, 973486
                  lui          s5, 857320
                  sll          tp, a1, t1
                  or           s8, s10, s8
                  or           s4, s6, t4
                  xor          s1, s1, t5
                  nop
                  sltiu        a3, t6, 766
                  or           a6, gp, gp
                  add          t2, s10, a1
                  srai         t4, a3, 2
                  srli         ra, a6, 10
                  slt          tp, s8, a7
                  sra          gp, t0, a7
                  add          tp, t3, a5
                  andi         t2, t0, -1261
                  slti         a0, s10, 1680
                  or           t0, tp, s0
                  or           s4, s9, s0
                  xori         s11, s3, -1538
                  sra          t3, a6, s3
                  slli         s7, s2, 12
                  or           tp, a7, s3
                  xori         a6, s0, -1441
                  ori          t1, a3, 77
                  addi         s3, a6, -1424
                  srai         tp, a6, 27
                  srai         t3, ra, 25
                  srli         s11, s10, 8
                  sltiu        a6, a7, -1465
                  srai         a1, s9, 15
                  and          tp, t2, ra
                  sub          tp, s7, s0
                  slt          a3, s3, a0
                  auipc        s5, 681
                  srl          ra, t3, a2
                  sltiu        s2, s8, 1086
                  srai         gp, s8, 29
                  sub          s8, tp, zero
                  srl          s2, a1, s11
                  slli         s11, s4, 23
                  srai         s11, s2, 29
                  sll          sp, t1, s10
                  xor          s0, a2, t2
                  and          s8, t6, s10
                  srai         s1, s8, 31
                  xori         s3, s4, -322
                  sll          s5, t1, gp
                  srl          t1, a7, a6
                  addi         s0, ra, -371
                  or           t5, t0, a5
                  or           t3, gp, a4
                  slti         sp, s10, -1420
                  srli         s2, t1, 19
                  sltu         gp, t0, s2
                  andi         a2, t5, 1300
                  sltu         s11, a4, s10
                  lui          sp, 301282
                  sra          a6, s4, t1
                  srai         s8, s0, 12
                  nop
                  xor          a1, a0, a4
                  xor          gp, s10, a7
                  add          s10, t5, s9
                  add          s1, s4, s3
                  addi         zero, s7, 103
                  srai         tp, zero, 22
                  sra          tp, tp, s2
                  srli         s8, a2, 9
                  ori          a7, t0, -1585
                  auipc        s1, 802990
                  nop
                  auipc        t2, 778262
                  sltiu        s6, a7, 1968
                  slti         s6, s9, -1897
                  slli         zero, a4, 28
                  xori         ra, s2, 849
                  sra          gp, a5, a3
                  srli         s8, a5, 0
                  and          tp, a2, s9
                  srli         sp, zero, 17
                  srai         s1, t3, 1
                  srai         s0, s6, 25
                  sra          a6, a3, t6
                  lui          a6, 916941
                  add          s9, a0, s4
                  slli         s10, s0, 8
                  or           t5, t4, t1
                  sltiu        t1, zero, 729
                  auipc        tp, 461840
                  srl          t2, t1, ra
                  and          s8, a5, gp
                  or           a6, a5, t4
                  srai         s11, gp, 4
                  srli         s0, s5, 15
                  nop
                  srli         sp, s6, 6
                  or           a3, gp, a7
                  lui          zero, 111478
                  addi         t1, gp, 649
                  or           s6, tp, t4
                  sltu         s9, a7, t5
                  sltu         s0, t5, t0
                  slli         s1, s10, 22
                  slt          s1, t5, t2
                  andi         s1, gp, -568
                  xori         a0, tp, 733
                  srl          t4, s7, a2
                  lui          a2, 874276
                  ori          t3, s2, 1713
                  auipc        sp, 734162
                  add          a0, gp, t2
                  xori         s8, s2, 218
                  ori          a0, s3, -822
                  add          a0, a2, a3
                  sltu         s0, tp, s9
                  sltiu        s9, s11, 894
                  andi         sp, s0, -193
                  srl          s7, t3, a2
                  nop
                  sll          t5, tp, ra
                  lui          s7, 772743
                  sub          a1, s6, sp
                  slt          s9, a3, zero
                  and          t2, tp, s3
                  srai         s0, a2, 31
                  sll          s11, a1, a4
                  andi         s10, s5, -1847
                  addi         s10, s8, 809
                  slli         s11, s3, 12
                  xor          tp, a2, s1
                  add          s2, s2, s10
                  add          s2, ra, zero
                  slt          sp, s10, a5
                  and          s3, s0, zero
                  addi         t1, s8, 1876
                  nop
                  nop
                  sra          s10, t1, s7
                  srai         t0, s9, 23
                  or           t2, t5, s9
                  slti         a6, s2, 1700
                  ori          a7, s6, 943
                  slt          t4, ra, sp
                  slt          s7, s4, zero
                  add          sp, s0, s11
                  lui          a7, 429659
                  slli         tp, a6, 28
                  slli         tp, s2, 28
                  sra          t0, sp, t3
                  add          s5, a4, a3
                  sra          t5, tp, ra
                  slt          a1, s11, zero
                  sll          ra, s5, s3
                  srli         s5, s8, 9
                  slli         s8, t6, 8
                  nop
                  sra          tp, t5, a2
                  sltu         s11, gp, ra
                  sub          a3, t2, zero
                  sll          s11, t0, a4
                  andi         t0, s10, 1672
                  auipc        s10, 477546
                  auipc        s1, 13371
                  srli         t1, s11, 13
                  sll          a2, s7, a7
                  sub          s1, t4, s11
                  slti         t4, s4, 1357
                  lui          t4, 477315
                  slti         s5, t4, 781
                  add          ra, s3, t1
                  sub          t2, s11, a3
                  lui          a6, 230500
                  slti         a2, t3, -283
                  sltu         s2, s8, s4
                  lui          a3, 611459
                  sra          s2, a7, s6
                  andi         s4, t3, -1119
                  nop
                  sltiu        gp, a5, -472
                  sub          s5, s0, a2
                  sub          a2, s4, gp
                  andi         a3, t6, -1919
                  ori          a0, ra, 1724
                  sltu         zero, s2, tp
                  sltu         tp, a3, t4
                  nop
                  sub          t5, a0, s9
                  xori         tp, s0, 148
                  addi         a0, s11, 1303
                  sra          s0, s11, s8
                  and          a3, s1, zero
                  addi         s0, s1, 1624
                  sltiu        a3, s8, -719
                  lui          t4, 944934
                  xori         s9, s1, 682
                  andi         t1, s5, -543
                  srl          a0, a7, a4
                  srli         gp, s4, 3
                  srl          s11, a5, gp
                  slt          s7, t6, a7
                  sltu         s9, a2, ra
                  auipc        zero, 978385
                  and          zero, s2, a7
                  srl          s6, t5, s2
                  slt          t0, a6, s11
                  add          a7, s5, ra
                  add          a2, a3, a1
                  andi         gp, s6, -1761
                  srai         a1, s2, 21
                  srli         gp, gp, 27
                  auipc        sp, 940745
                  sll          t1, s1, s1
                  andi         s6, s10, 1163
                  nop
                  sltu         s11, t2, t2
                  add          t4, sp, t2
                  srai         a6, a0, 0
                  srai         t3, a1, 30
                  add          t1, a7, s11
                  sll          t4, s8, t0
                  sltiu        gp, t4, 913
                  ori          a1, ra, -1946
                  lui          s9, 632782
                  slti         gp, s8, -1021
                  andi         a6, a5, -668
                  xor          s2, ra, sp
                  or           a2, s3, ra
                  xori         a2, t3, 525
                  xori         a3, s11, 1299
                  sltu         t1, a1, a3
                  or           a7, zero, s6
                  andi         t1, t2, 82
                  ori          t1, s0, -1463
                  xor          t2, a2, a5
                  auipc        tp, 707791
                  addi         a6, s10, -337
                  sltu         s9, s4, s6
                  xor          tp, zero, t2
                  add          sp, t1, s7
                  sra          t0, s0, t2
                  lui          t5, 923457
                  slti         a3, s2, -976
                  sub          s7, t2, s6
                  lui          t0, 722512
                  slli         s6, s5, 21
                  and          a6, s11, t5
                  srl          t1, s9, a1
                  slt          t3, s6, s1
                  slt          gp, s8, a2
                  or           s9, t3, s6
                  and          a3, a6, t3
                  add          a2, a0, a0
                  add          t5, s1, s3
                  ori          s4, gp, -1264
                  and          s7, t3, a6
                  add          t4, a5, s7
                  sub          s5, s8, sp
                  sltu         s4, sp, s7
                  slti         s3, a2, 1417
                  addi         s7, t3, 1119
                  ori          zero, a2, 834
                  sltu         s5, sp, ra
                  sub          a2, s0, t6
                  srai         s9, a3, 27
                  nop
                  sltu         s5, t4, a0
                  srl          s3, ra, a6
                  nop
                  srai         t2, zero, 23
                  xori         s2, t1, -895
                  addi         s3, s0, 1437
                  sll          s1, s2, ra
                  auipc        ra, 287843
                  sltu         a2, s5, s10
                  xori         s6, s1, 752
                  lui          a0, 631791
                  ori          s3, t1, 1796
                  andi         a6, t1, 1608
                  xor          t2, s2, t6
                  andi         t2, a5, 1715
                  sll          a1, s8, t3
                  and          s11, s2, s3
                  auipc        s3, 713560
                  sll          t2, s7, t1
                  lui          t0, 1000262
                  xori         s10, s1, 1057
                  sll          a3, t2, a2
                  sltu         sp, t0, t6
                  andi         s6, zero, -689
                  add          s8, t4, s1
                  srli         s10, s3, 18
                  and          s0, a4, zero
                  and          t5, sp, s6
                  srl          s2, sp, t6
                  xor          a1, a3, s7
                  add          t5, a3, a0
                  xor          a1, a3, s4
                  sll          a6, s11, a0
                  sra          a0, t5, sp
                  srli         s9, s4, 3
                  slli         t5, a0, 5
                  sub          a0, s2, t6
                  addi         s2, s9, -629
                  addi         a7, s6, -469
                  srli         t5, s0, 22
                  or           a2, a6, s10
                  lui          s5, 858781
                  or           a7, t3, a0
                  ori          t1, a4, 186
                  xor          t5, s11, gp
                  addi         t3, s4, 1696
                  lui          a6, 306773
                  nop
                  lui          s3, 601269
                  ori          s10, a1, 505
                  sltiu        t3, s11, 107
                  sltu         s9, a1, sp
                  andi         t5, gp, 910
                  lui          t4, 807527
                  lui          zero, 845739
                  slli         t0, t2, 24
                  andi         t1, s9, -1600
                  slli         s10, s0, 28
                  sltiu        a0, t0, -1409
                  lui          a2, 1003563
                  sll          s3, t5, s4
                  add          a7, s3, s3
                  srl          s3, a0, s10
                  sra          a0, s4, a3
                  slti         s11, t0, -221
                  sra          s2, s2, s5
                  srli         s6, s4, 18
                  xor          s1, t5, s7
                  sltiu        s11, s11, 288
                  ori          a7, t5, -1532
                  srli         t5, a3, 22
                  sltu         s8, s8, a6
                  add          t1, t4, s10
                  ori          t2, a0, -1356
                  andi         a0, tp, 167
                  sltiu        s10, s1, 1661
                  slti         a1, s1, -1653
                  and          s10, s6, a7
                  sltiu        s7, t5, 315
                  slli         s6, t1, 4
                  slli         a7, ra, 18
                  sltiu        a7, tp, 1210
                  and          t5, s3, sp
                  nop
                  slli         s3, s5, 29
                  sll          s7, t3, s8
                  srl          s4, t2, s1
                  srl          s9, t5, t0
                  sra          t2, zero, a7
                  sub          s8, zero, tp
                  slt          s0, s0, t3
                  lui          a3, 4768
                  andi         a0, a0, -216
                  sra          t5, a4, s3
                  ori          t3, s10, 1272
                  sub          a2, t6, gp
                  sra          t1, t0, a1
                  ori          t5, s6, -882
                  sub          s10, t0, t3
                  andi         s6, a6, -778
                  slli         s3, s8, 12
                  auipc        s10, 996988
                  sra          s2, s8, s10
                  srl          a7, a4, s11
                  sub          s11, a5, tp
                  or           s5, t4, s4
                  slli         s0, s10, 21
                  auipc        t2, 642833
                  addi         s0, s2, -245
                  slt          tp, t0, s4
                  srli         a0, a0, 24
                  slti         tp, s9, 657
                  sll          s9, t5, a6
                  addi         ra, s6, 1318
                  slt          sp, ra, s5
                  addi         t2, s9, -908
                  xori         s6, s7, 1764
                  or           s11, s0, t5
                  sub          a1, s5, a3
                  sub          t5, sp, a5
                  sltu         sp, a2, s7
                  andi         s0, ra, 1804
                  addi         gp, t2, 861
                  sltiu        tp, a2, 1308
                  slt          a3, gp, s1
                  srai         t5, t3, 14
                  srl          s1, t5, a4
                  sltiu        a3, a2, 830
                  srl          s4, s7, sp
                  andi         tp, sp, -1257
                  sltiu        s1, a6, 548
                  slti         gp, s7, -1087
                  slli         a3, zero, 8
                  or           s7, s11, s3
                  sltiu        t0, s11, -1829
                  andi         tp, s0, -139
                  sub          a0, t0, s11
                  lui          s6, 634228
                  lui          t2, 413326
                  and          s10, t2, s6
                  slt          a6, s1, a3
                  sub          t1, s10, t2
                  slt          s9, a0, t4
                  sra          s8, t4, t0
                  andi         ra, ra, -884
                  sltu         a7, a7, s11
                  slli         ra, s8, 12
                  auipc        s1, 562402
                  srli         s10, t4, 8
                  srli         s1, t6, 25
                  slti         zero, a7, -358
                  xor          s9, a2, a3
                  xor          s2, s8, s5
                  sltu         s11, s7, t4
                  slt          s4, t3, t2
                  srai         a3, s1, 24
                  ori          t5, s5, -232
                  or           t2, s0, a6
                  srli         a1, tp, 5
                  sll          a0, s3, t3
                  sll          t0, t4, s2
                  add          a2, a1, s0
                  ori          t2, tp, 1189
                  sub          a7, a5, t6
                  and          s9, sp, s3
                  sra          s11, t1, s3
                  srli         s9, s5, 20
                  and          s9, zero, sp
                  sltu         zero, t5, a6
                  slli         gp, zero, 10
                  slli         s3, s7, 6
                  slli         tp, s9, 0
                  sub          a7, t1, a2
                  sub          t1, a0, t2
                  srli         s3, t3, 16
                  or           s6, t5, s8
                  sltu         t1, ra, gp
                  addi         a1, s9, -1067
                  nop
                  and          t4, s0, s3
                  srl          s3, t4, t4
                  sra          s10, a7, s9
                  sll          s2, s8, s4
                  nop
                  auipc        s3, 659800
                  sll          t3, a6, s10
                  ori          t2, s11, -355
                  sltu         t2, a2, s2
                  nop
                  lui          t3, 1026236
                  and          s0, t3, s1
                  srli         a1, s11, 23
                  srl          t4, s6, t0
                  slti         t5, a1, -1183
                  and          s9, gp, gp
                  auipc        t5, 118813
                  sra          gp, s8, t0
                  srai         s0, a3, 14
                  or           sp, s11, zero
                  and          t0, s4, t6
                  sltiu        zero, s6, 907
                  srai         a0, t1, 8
                  slli         zero, s4, 18
                  andi         a7, s6, -2008
                  add          t1, t1, t6
                  andi         s5, a3, 774
                  sub          s4, s4, tp
                  srli         t1, s11, 2
                  sra          s11, s6, s2
                  srai         s8, a0, 11
                  ori          zero, a5, 661
                  auipc        t1, 363359
                  add          a3, a0, a1
                  addi         sp, t0, 407
                  srli         a6, tp, 2
                  sll          t5, a3, s4
                  slli         t4, s0, 24
                  srl          a0, t6, s11
                  xori         s3, a7, 1619
                  sra          a2, tp, s1
                  slli         s0, s1, 18
                  addi         sp, s8, 16
                  addi         s4, zero, 1159
                  andi         ra, t6, -462
                  sltu         a7, a4, s9
                  sub          s8, zero, a5
                  sll          s9, tp, a4
                  xori         sp, ra, -816
                  slli         t0, t4, 19
                  slti         s2, ra, -1970
                  sltiu        s6, s3, 803
                  xori         a3, tp, 989
                  sltu         a7, a7, s10
                  sltu         a1, s8, t1
                  addi         gp, t6, -333
                  sra          s4, zero, s0
                  sub          t3, s10, a0
                  sra          a1, t0, s10
                  or           t0, tp, s8
                  slt          s9, s0, a1
                  sll          a7, a4, s7
                  xori         t1, a5, -925
                  sra          t0, a1, s0
                  sll          sp, s7, s9
                  srl          sp, a1, s6
                  or           a1, s8, s11
                  auipc        t5, 94930
                  ori          t5, s0, -700
                  sltiu        s11, t4, -1419
                  nop
                  srl          a1, s0, s11
                  or           s11, a3, a7
                  xor          a3, a2, s1
                  addi         a3, t5, -1688
                  add          t5, t6, gp
                  srli         s4, s3, 11
                  xor          s2, s3, s4
                  slt          a7, s6, s5
                  auipc        a3, 327568
                  and          a7, sp, sp
                  xor          s9, zero, s6
                  and          t1, s3, t4
                  xori         zero, tp, 1927
                  xori         ra, t3, 1931
                  sra          a0, s0, s1
                  auipc        a3, 625358
                  auipc        t5, 234361
                  auipc        s1, 877220
                  xor          sp, tp, a5
                  srli         s11, t5, 11
                  sltiu        s11, a3, 1403
                  add          s2, a2, a4
                  srli         s8, s7, 30
                  or           s3, s4, a4
                  srai         s7, s10, 6
                  and          s1, s4, s11
                  xor          sp, s5, s3
                  sub          s2, s6, t0
                  xor          s4, s8, s11
                  sub          a0, s9, ra
                  sra          s0, s9, t0
                  xor          s9, zero, s9
                  sra          s3, t6, s6
                  sra          s7, a7, gp
                  andi         zero, a2, 1883
                  srli         s4, t4, 4
                  slt          s5, sp, s6
                  andi         a1, s11, -859
                  auipc        s11, 394362
                  auipc        a6, 224149
                  nop
                  slli         t1, s9, 2
                  andi         s9, gp, 305
                  xori         a1, s0, 693
                  ori          t1, a4, 1634
                  srli         s5, t1, 6
                  slti         a1, s3, 409
                  sra          a1, gp, t3
                  sub          s7, s6, t4
                  auipc        a1, 98948
                  nop
                  addi         gp, t3, 1024
                  add          s10, t0, s8
                  xor          s3, s11, s10
                  sltiu        sp, s0, 1586
                  andi         s5, a6, -1384
                  nop
                  sll          a1, s3, a4
                  srli         s6, s9, 23
                  sltiu        a1, tp, -1018
                  and          gp, zero, t0
                  slli         a7, gp, 21
                  sub          s3, a4, a7
                  andi         a7, t2, 1312
                  xori         a1, tp, -1321
                  lui          t4, 471156
                  sll          s5, a4, s4
                  xor          a3, sp, sp
                  auipc        gp, 958607
                  slt          sp, ra, t4
                  auipc        t5, 696744
                  sltiu        t5, s2, 1933
                  slti         a1, s9, 1261
                  ori          a0, t5, -1336
                  sll          tp, t1, t3
                  andi         a6, s10, -1010
                  slli         ra, t3, 1
                  slti         s1, s7, 838
                  sltu         s7, ra, a1
                  slli         s10, a1, 11
                  xori         t4, s1, -1695
                  xori         a3, a4, -1898
                  or           s3, t3, sp
                  srli         t4, s2, 13
                  auipc        a6, 655390
                  srai         s6, a4, 29
                  sll          t5, a2, s8
                  sltu         a2, s1, a3
                  xor          s9, a1, a0
                  xor          s4, tp, s3
                  sll          s9, t1, t3
                  lui          s8, 315837
                  auipc        t2, 712913
                  sll          t4, t4, s5
                  srai         s10, a2, 13
                  ori          s6, tp, 1212
                  sra          s5, s1, ra
                  nop
                  slli         s11, s10, 9
                  lui          t1, 615935
                  xor          s10, a4, s10
                  ori          t5, s5, 416
                  and          s4, s7, s4
                  lui          t1, 489192
                  slt          s11, t2, a6
                  nop
                  addi         t0, t4, -195
                  xor          t5, a1, t1
                  xor          s3, a1, s8
                  nop
                  sltiu        a2, s8, -632
                  sra          a1, s7, t1
                  xori         s8, a7, 1649
                  auipc        tp, 1018367
                  xori         s1, t4, -440
                  ori          t0, t1, -2037
                  srai         s1, s5, 12
                  srl          a7, s5, t4
                  slli         zero, t3, 28
                  srl          s7, s8, t5
                  sub          ra, a7, a1
                  srl          ra, s7, s3
                  slti         s2, s6, -763
                  srli         a7, t0, 31
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           ra, 0xffffffff
                  li           t5, 0x0
                  li           t2, 0xffffffff
                  li           a0, 0x80000000
                  li           s2, 0x0
                  li           a3, 0xffffffff
                  li           s6, 0x0
                  li           tp, 0x80000000
                  li           t0, 0x80000000
                  addi         a3, t5, 14
                  auipc        t2, 92
                  nop
                  lui          ra, 990575
                  sub          s2, t2, a0
                  auipc        tp, 164377
                  auipc        s2, 111175
                  sub          a3, ra, t0
                  sub          a0, a2, t2
                  lui          s2, 743296
                  auipc        ra, 691706
                  add          tp, a2, s2
                  auipc        t2, 602155
                  lui          a3, 627413
                  auipc        ra, 747541
                  sub          a0, t5, a0
                  auipc        a0, 474491
                  sub          ra, s2, a3
                  addi         s2, tp, -323
                  sub          s6, a3, t5
                  sub          a0, s2, tp
                  add          t0, s2, a2
                  lui          t0, 178951
                  add          tp, tp, t2
                  addi         a3, s2, 222
                  addi         ra, s2, -1370
                  auipc        ra, 526491
                  lui          a3, 375187
                  auipc        a3, 306527 #end riscv_int_numeric_corner_stream_38
                  sltu         s10, t3, zero
                  ori          t5, s2, 314
                  or           t1, s8, t2
                  srli         t5, a3, 6
                  xor          t4, s11, a1
                  auipc        s2, 82300
                  sra          t0, t0, t5
                  sra          a1, t0, t1
                  li           s0, 0xc5f62ba6 #start riscv_int_numeric_corner_stream_26
                  li           ra, 0x80000000
                  li           s11, 0x9c1b7fda
                  li           s6, 0x80000000
                  li           t3, 0xfb550129
                  li           t5, 0x80000000
                  li           a0, 0x0
                  li           a1, 0x80000000
                  li           s2, 0x0
                  li           a3, 0x4984a709
                  nop
                  auipc        s6, 80275
                  nop
                  lui          ra, 290119
                  lui          t3, 712463
                  lui          t3, 1002072
                  nop
                  sub          s0, t3, s0
                  sub          t3, s6, s0
                  nop
                  lui          s11, 330386
                  auipc        ra, 563548
                  addi         s11, s0, -1285
                  lui          s0, 746826
                  auipc        s11, 204621
                  lui          t5, 734435 #end riscv_int_numeric_corner_stream_26
                  sub          ra, s1, t3
                  sub          a3, s5, a7
                  addi         ra, a1, -227
                  auipc        t2, 24140
                  addi         s0, s1, 1623
                  sltiu        s11, s5, -1157
                  lui          a0, 214870
                  lui          a1, 181749
                  xori         t4, gp, -657
                  lui          tp, 941222
                  slli         t3, a1, 11
                  sltiu        s2, s4, 655
                  or           t3, s10, s4
                  and          s2, t6, s9
                  sub          a0, t5, zero
                  sltu         t1, sp, s5
                  or           tp, a2, a7
                  andi         s10, s7, 514
                  lui          sp, 428223
                  ori          zero, t1, -1358
                  sub          t2, t3, s1
                  sltiu        t5, s4, -698
                  and          gp, s0, a7
                  ori          t3, s3, 1069
                  addi         t3, t3, 365
                  andi         a3, sp, -1094
                  sll          s11, s7, s11
                  sltiu        t2, s7, -1481
                  nop
                  sll          a0, s1, t0
                  auipc        sp, 186346
                  xori         t3, t2, -1614
                  ori          s2, tp, 1621
                  andi         a3, s2, 930
                  nop
                  add          t2, s7, s3
                  auipc        s6, 970994
                  nop
                  or           t0, s11, s10
                  sll          s6, a2, s1
                  nop
                  slli         s10, a4, 5
                  sltu         sp, tp, t3
                  srai         s11, s10, 18
                  nop
                  srli         a0, sp, 1
                  lui          s5, 698431
                  ori          s1, t4, -1539
                  ori          s7, a7, -1454
                  lui          s8, 830266
                  auipc        t4, 405962
                  auipc        s0, 486120
                  sltu         a3, s6, s7
                  addi         t4, s6, 1699
                  sub          s3, t6, t3
                  add          a0, ra, t2
                  sll          t1, t5, a0
                  srl          s0, t2, a0
                  srai         a6, t3, 7
                  srai         ra, s1, 16
                  nop
                  addi         s6, s11, -1759
                  srai         t1, s7, 19
                  or           s3, t3, t3
                  xori         zero, s2, 1033
                  lui          sp, 277926
                  slli         s10, t1, 3
                  and          a2, a0, t6
                  or           a1, s9, zero
                  add          sp, zero, a5
                  add          s5, s1, t2
                  slli         s5, s0, 11
                  addi         a6, s2, -589
                  lui          s9, 614878
                  lui          a0, 166337
                  sub          s2, s1, t5
                  ori          s3, s6, -1725
                  srl          s8, a7, s8
                  auipc        a3, 32069
                  ori          s9, zero, 311
                  xor          t0, a6, s2
                  srl          zero, t0, ra
                  srli         a3, zero, 10
                  lui          s11, 672260
                  srai         a1, s11, 31
                  slti         a3, t1, -1496
                  auipc        a2, 158246
                  slli         s0, s2, 25
                  slt          a2, s2, s0
                  sltu         a1, t3, tp
                  ori          s9, s10, 183
                  sra          tp, gp, a3
                  and          s9, s2, t3
                  sll          t1, s4, t3
                  andi         gp, t6, -1127
                  slt          s3, a2, s2
                  sra          t5, s3, s10
                  or           a6, zero, s4
                  nop
                  sub          a6, t4, s1
                  addi         gp, zero, -1595
                  sra          s7, zero, s3
                  sltiu        a1, s0, 1245
                  xor          s5, t0, t6
                  srli         a3, s5, 25
                  auipc        a3, 94301
                  and          s4, a3, t1
                  xor          gp, a3, s0
                  sltu         a7, s7, gp
                  sll          a3, a3, s6
                  sll          s10, t2, s2
                  xori         tp, t2, -1769
                  addi         zero, zero, 714
                  ori          s7, s1, 20
                  sll          t5, s5, a3
                  sll          ra, a6, s8
                  andi         s6, sp, -671
                  or           t5, a7, t6
                  andi         t3, a7, 719
                  slt          t1, zero, tp
                  lui          zero, 1031608
                  srl          zero, sp, s1
                  xor          t2, s1, s11
                  sltiu        t5, s11, -16
                  ori          t4, a3, -790
                  andi         a6, t5, 972
                  xori         a1, a3, -521
                  or           t3, t2, s8
                  slli         s9, s1, 22
                  ori          t2, s4, -12
                  srli         a3, a5, 12
                  auipc        sp, 852085
                  xori         s5, tp, -322
                  sltiu        a6, sp, -780
                  ori          a1, a1, -150
                  sltu         a1, tp, s1
                  addi         s1, t1, 1968
                  slli         t2, s8, 1
                  auipc        s11, 20403
                  slli         tp, s4, 26
                  or           t1, s11, t2
                  or           t1, s2, s2
                  xor          t2, zero, a3
                  xor          s10, t3, t4
                  ori          t1, t3, 83
                  slti         a1, t4, 1450
                  or           t1, a5, s8
                  add          a6, s4, t3
                  sll          t4, s5, s3
                  slt          t2, a2, a2
                  add          t3, s0, s0
                  and          s8, s5, s3
                  slti         t0, t1, -1052
                  slt          t3, s1, s10
                  nop
                  sll          a0, a0, t5
                  nop
                  slli         tp, t4, 28
                  andi         s11, gp, -1235
                  auipc        a1, 520539
                  slti         t3, s8, 1214
                  xori         a7, tp, 1076
                  nop
                  slli         s1, s6, 5
                  nop
                  or           s0, tp, s6
                  slti         ra, a6, -1310
                  or           gp, s1, a0
                  sll          a2, s2, s2
                  slt          t3, t0, t1
                  sltiu        a3, t4, 1175
                  or           s9, s4, s6
                  auipc        tp, 609129
                  slti         t5, t2, -1005
                  lui          s3, 596225
                  andi         s3, s8, -1855
                  or           a6, t6, t5
                  sub          s4, s11, a6
                  xor          a1, s11, a0
                  auipc        s11, 964009
                  sltiu        a3, s9, 709
                  slti         s9, s11, 1155
                  xor          s9, s11, a7
                  srl          a3, s7, zero
                  sll          s9, a6, t0
                  slti         gp, a3, 1286
                  addi         a1, a1, -659
                  sra          s5, s0, s6
                  auipc        a6, 370967
                  sra          s10, t3, a2
                  sra          t5, s4, zero
                  add          s11, s9, gp
                  srai         tp, a2, 16
                  nop
                  sll          t2, t6, s3
                  slt          s11, a0, t0
                  srai         t5, t5, 25
                  ori          s0, s2, -1677
                  xor          sp, t4, tp
                  sltu         gp, t3, t6
                  srl          s9, s4, t2
                  auipc        s3, 361847
                  nop
                  xori         s7, s7, -996
                  addi         s5, s2, -733
                  srai         sp, a5, 28
                  ori          t5, s8, 1803
                  xor          t3, s1, a6
                  ori          t2, s3, -240
                  sra          ra, t2, a0
                  addi         a3, t6, 1561
                  slli         t0, t1, 17
                  slti         ra, t6, 1238
                  sll          t2, t3, sp
                  lui          a6, 622250
                  slt          a1, gp, s5
                  and          t3, a4, s0
                  srl          t1, s2, a5
                  andi         s0, s0, 1153
                  and          t0, s8, s6
                  sltu         s7, s10, zero
                  srl          s5, s8, t1
                  sltiu        a0, s5, 1596
                  auipc        a1, 960318
                  ori          a1, s7, 1874
                  xori         s2, s8, -126
                  slli         s9, gp, 2
                  auipc        gp, 330842
                  sltu         tp, t1, t3
                  andi         t2, sp, 1589
                  sra          t3, t2, t5
                  xori         s7, a6, -447
                  auipc        s0, 762846
                  sll          s11, tp, s0
                  addi         sp, ra, -1994
                  nop
                  and          a0, t5, t5
                  sra          a2, s11, tp
                  andi         s3, tp, 753
                  ori          tp, s4, -741
                  andi         t3, a5, 1558
                  slli         gp, t6, 22
                  sltiu        a3, s11, -439
                  addi         a2, t6, -39
                  and          a0, a7, t4
                  sll          tp, a2, a0
                  slti         t2, s11, -1155
                  andi         a6, s5, -757
                  srl          a2, ra, s7
                  srli         a3, a5, 13
                  and          s7, a0, s8
                  xor          t1, t0, s10
                  or           a6, s9, s4
                  slti         t3, a6, 919
                  xori         a1, t0, -593
                  slti         ra, gp, -1062
                  xor          s8, t6, s9
                  slti         t3, s2, 765
                  ori          s2, s3, -1112
                  sra          a1, t0, s2
                  sub          t5, t6, gp
                  andi         s0, a1, -1740
                  lui          s1, 769638
                  ori          s9, a3, -315
                  auipc        a1, 298826
                  slt          t2, s6, s4
                  slti         a2, s11, 683
                  sltiu        tp, s8, 1603
                  andi         a3, s4, -410
                  or           s9, a2, t5
                  slti         s3, t4, -23
                  or           s2, s6, s2
                  andi         s0, a4, -863
                  slt          s4, a6, t1
                  and          a2, s2, t1
                  srli         t1, s1, 1
                  srl          a2, s0, s4
                  auipc        a2, 320929
                  slt          t1, a6, s5
                  srl          s2, t3, tp
                  slli         s1, s1, 26
                  srli         s11, zero, 17
                  sub          a6, t3, zero
                  srai         s4, sp, 21
                  srai         t0, s6, 10
                  slti         a2, s10, 947
                  xori         s0, a3, 946
                  auipc        t1, 489149
                  lui          s11, 292510
                  slti         s4, a2, 1976
                  srl          a3, t3, sp
                  nop
                  xor          s1, t0, s2
                  xori         s0, t0, 1072
                  ori          s0, a4, 525
                  srai         sp, s3, 17
                  slt          a0, s8, gp
                  sltu         a7, a2, a5
                  sra          s3, sp, s0
                  sra          t4, a0, a6
                  lui          a2, 651870
                  sll          s8, zero, t6
                  slt          s9, t1, t5
                  srli         s7, s6, 25
                  sltu         s0, gp, t0
                  sll          t4, t0, t1
                  addi         sp, s8, -1797
                  nop
                  sra          t2, a1, a4
                  and          t1, sp, a4
                  sltu         a2, t3, s4
                  add          a7, ra, s2
                  xor          a0, s10, s10
                  xori         s9, s2, 1823
                  addi         s8, tp, 550
                  xori         s8, s7, 1047
                  or           s8, a4, s5
                  sltu         s11, a2, t2
                  ori          a7, a0, -497
                  xor          s6, t4, a4
                  ori          t4, s8, -1170
                  sll          a7, t5, a6
                  ori          t4, t5, 318
                  xor          a7, t0, t4
                  sub          t3, s0, tp
                  sltiu        ra, s7, -1456
                  or           sp, tp, s1
                  sra          gp, a1, t4
                  slt          s6, s0, zero
                  sll          s6, s0, t3
                  sll          s1, t5, a1
                  sub          s10, tp, ra
                  sra          s6, a7, s7
                  sltiu        s5, s2, -1028
                  slli         s2, s0, 13
                  sltiu        tp, a2, -899
                  auipc        s2, 933556
                  srai         ra, zero, 10
                  sub          t4, s10, a0
                  slli         t4, a6, 4
                  slt          t1, s6, t2
                  sltu         s0, a3, t3
                  sll          a0, s0, s10
                  srl          t4, s3, a0
                  and          t5, s4, ra
                  ori          tp, a0, 1643
                  lui          a7, 595225
                  slti         s1, t5, -55
                  ori          s8, t2, 1372
                  and          s10, a1, a4
                  xor          s3, s3, t5
                  add          s7, s6, s8
                  sub          t0, zero, s0
                  add          t3, t1, gp
                  sll          sp, t4, a5
                  lui          gp, 125821
                  auipc        t2, 747104
                  xori         a2, gp, 1395
                  sll          a1, t6, a1
                  srai         s6, t6, 6
                  slli         a2, s10, 4
                  sll          tp, a7, s5
                  srl          a1, s10, ra
                  and          tp, a2, sp
                  addi         ra, s10, -1948
                  srl          t3, s7, t5
                  ori          t4, zero, 353
                  sra          s0, zero, t1
                  sll          s10, s1, a6
                  sub          a0, a7, s3
                  xori         s8, s3, -211
                  xor          t2, s4, t6
                  slt          s0, s7, s1
                  xor          gp, zero, t1
                  xor          a6, s3, ra
                  sub          t2, a7, a3
                  andi         s4, s3, -1715
                  slti         t5, a7, 1960
                  srl          s11, ra, a7
                  slli         a0, s2, 24
                  sltiu        s7, a7, 1571
                  sltiu        t1, s4, -23
                  lui          t2, 487322
                  xori         s6, a1, -271
                  srl          a3, s6, s8
                  xor          t3, a1, t5
                  sltiu        a3, s0, 816
                  sub          sp, a3, t4
                  ori          t5, sp, 873
                  slt          a2, t4, s7
                  srai         s6, s0, 20
                  sltu         t0, a5, a0
                  sltiu        t5, a3, -667
                  sra          a7, sp, s3
                  srli         s9, a3, 12
                  ori          a6, a1, 114
                  or           t5, s11, a6
                  addi         a1, t4, -102
                  add          t4, s9, t3
                  xor          zero, zero, s1
                  srai         zero, t1, 28
                  sltiu        t1, t5, 1697
                  or           s8, s9, s7
                  addi         a1, t2, 1408
                  ori          a1, gp, -1676
                  auipc        s6, 679235
                  nop
                  sll          s7, a7, a7
                  slti         s5, s1, -1881
                  andi         s5, sp, 1764
                  srai         s5, s2, 6
                  sub          t5, sp, zero
                  sltu         zero, a4, t4
                  xor          tp, t0, t4
                  srli         t1, sp, 21
                  xori         s1, t6, -294
                  xori         gp, t0, 622
                  sltu         s2, t1, gp
                  sub          t4, a1, t2
                  lui          s6, 772823
                  auipc        t4, 156424
                  or           s11, t1, t1
                  slti         s5, s10, 1513
                  slli         t3, sp, 19
                  lui          zero, 410035
                  lui          s5, 409538
                  andi         t3, t2, 1778
                  and          t2, s4, a6
                  ori          sp, tp, 1692
                  andi         s3, a1, -790
                  and          t1, s2, tp
                  lui          s7, 25614
                  sub          a6, t5, s0
                  lui          t1, 282799
                  andi         t2, t2, 368
                  or           a3, s10, t4
                  sll          gp, s7, t5
                  xori         a6, a2, 1400
                  add          s5, t2, a5
                  addi         gp, a1, 524
                  or           s10, a5, s0
                  srai         sp, s7, 3
                  srl          zero, s5, s11
                  slti         a3, s2, 1402
                  xori         s7, s3, -1190
                  andi         sp, zero, 1768
                  srl          t3, t4, a4
                  ori          t5, s2, 1394
                  or           s4, s3, a0
                  xori         s3, a7, 580
                  sll          t3, s2, s6
                  nop
                  lui          t4, 659353
                  sll          t1, s8, s7
                  lui          s5, 528707
                  ori          a1, t5, -1961
                  slt          zero, sp, a4
                  sltu         t2, t0, s7
                  sltiu        zero, t5, -1135
                  auipc        tp, 800039
                  add          a2, ra, s10
                  slli         s10, s0, 8
                  sll          t2, s8, s2
                  andi         s6, zero, -843
                  slli         t0, s4, 31
                  sltiu        s6, a5, 12
                  ori          a3, s7, -2008
                  srl          t5, s0, a2
                  sub          a2, a3, ra
                  nop
                  sra          s6, s5, s3
                  sll          a0, s1, a7
                  slti         t4, tp, -943
                  slti         s4, a7, -1305
                  xor          s11, s1, zero
                  srai         t4, t5, 28
                  sub          a7, s10, s2
                  sltu         sp, s6, gp
                  srai         s2, s11, 28
                  auipc        t3, 27461
                  xori         a7, s10, 268
                  sltiu        s9, t6, 1400
                  or           t0, s7, s2
                  or           s9, s11, tp
                  slt          tp, a4, s3
                  or           t2, s7, t0
                  addi         a6, t6, 910
                  srli         s7, a7, 27
                  add          t2, t3, s4
                  ori          s11, a5, 1760
                  slti         gp, gp, -1251
                  andi         t1, s1, 1196
                  slli         sp, s6, 25
                  xori         t5, a2, 1893
                  add          a1, sp, s5
                  sltu         t1, ra, ra
                  sltu         t1, s7, a2
                  slti         t2, a1, -1054
                  xori         s8, s6, 565
                  slli         a7, t2, 8
                  srai         tp, s3, 10
                  and          tp, s5, s10
                  addi         s5, a1, -1417
                  ori          t2, s6, -1697
                  nop
                  lui          a3, 128766
                  sltu         a0, s8, s2
                  xori         a1, a0, -407
                  slti         s7, a7, 1826
                  slt          a3, ra, s11
                  xor          a3, s7, t3
                  slt          t3, s6, s7
                  srl          t4, s3, t2
                  xori         a1, t1, 701
                  or           s8, sp, s0
                  add          a3, s9, s5
                  nop
                  ori          s6, s9, 462
                  slti         ra, s4, -1118
                  and          a3, a5, t4
                  sub          t2, s11, s8
                  srai         s6, zero, 7
                  xor          s3, t4, s4
                  addi         tp, s10, -1267
                  auipc        s5, 570349
                  sra          s1, t1, gp
                  slt          s10, s3, a6
                  sltu         s4, ra, a6
                  srli         a3, gp, 17
                  ori          s2, zero, 781
                  slt          a7, s8, s10
                  auipc        s0, 278711
                  sub          a3, s5, s6
                  lui          a0, 259391
                  auipc        s6, 31955
                  slt          s9, ra, a0
                  sll          t5, sp, s3
                  sub          s0, a3, a2
                  xori         t2, s1, 1513
                  and          a0, s0, s11
                  sltu         s0, tp, a1
                  xor          s9, s8, t6
                  srai         s7, s5, 19
                  srai         t1, s7, 4
                  auipc        s6, 183594
                  auipc        s7, 258695
                  sll          s5, a0, s10
                  or           zero, t3, t3
                  slli         s1, s10, 30
                  srai         s7, ra, 3
                  srl          t1, t2, s2
                  srl          s4, a7, a6
                  andi         s8, a3, -565
                  srai         t1, s3, 14
                  xor          s11, a6, a2
                  sub          s8, s8, s6
                  ori          s0, zero, 1668
                  slti         a1, a6, -59
                  sra          s7, a2, s9
                  sltiu        s5, a4, -57
                  add          s4, t4, s1
                  sltiu        zero, s9, 862
                  slt          s8, a4, gp
                  sltiu        t0, a7, 1455
                  andi         s9, a7, 169
                  nop
                  add          a1, s3, s5
                  lui          a0, 545146
                  sll          t0, s0, sp
                  srai         s7, t5, 2
                  sltu         tp, ra, ra
                  ori          t4, a4, -462
                  xori         a2, t1, 894
                  auipc        s4, 64518
                  slt          zero, s0, a7
                  sll          a1, a4, zero
                  srl          s10, a3, a2
                  sra          s5, a6, sp
                  xor          t3, s9, s2
                  xor          s9, s3, a0
                  sll          s5, s1, a1
                  srl          s7, a6, s1
                  srli         a1, s8, 29
                  slti         t0, t5, -849
                  andi         t5, t1, 1662
                  sltu         a6, sp, a6
                  lui          t3, 489214
                  sra          s6, t5, a0
                  lui          a0, 166295
                  srl          s5, a6, s11
                  addi         s8, s9, -325
                  xori         a2, t4, 377
                  and          t2, a3, sp
                  addi         t5, t2, 2039
                  sra          a0, a7, t5
                  addi         t3, tp, -255
                  add          t1, s6, s0
                  srl          a7, a6, s7
                  xor          t0, s8, ra
                  slli         a1, tp, 0
                  sltiu        t0, a5, 898
                  andi         t2, s6, 917
                  slt          s7, t4, a1
                  sll          t3, a3, a5
                  lui          a6, 656092
                  and          a3, s11, tp
                  slli         s11, s9, 8
                  sltu         gp, a6, t1
                  sub          s7, s11, a1
                  lui          tp, 464478
                  xor          s6, s9, t2
                  srli         ra, ra, 24
                  auipc        s8, 407485
                  srli         s0, s7, 15
                  ori          t1, s3, -1938
                  sll          s11, s9, s1
                  srli         t3, a4, 19
                  andi         a6, s6, -742
                  slt          a2, a1, a4
                  srl          a6, s11, s3
                  slli         a3, s11, 4
                  sltu         gp, s7, t1
                  andi         a2, a1, 1469
                  auipc        s7, 318006
                  auipc        a2, 636798
                  srli         s2, t4, 29
                  srl          a2, sp, t4
                  sra          s2, s8, t4
                  add          zero, s3, s8
                  andi         a7, a7, -2031
                  sll          a2, s2, t5
                  auipc        s6, 62357
                  xor          s11, s5, tp
                  srli         s9, a6, 27
                  sra          s2, zero, s7
                  sltu         s2, s2, a7
                  auipc        t0, 342371
                  slli         a7, s11, 31
                  or           s1, a0, a3
                  slt          zero, a6, a3
                  lui          t2, 807212
                  sltiu        s10, a7, 1874
                  sltu         s10, t0, sp
                  sub          a3, gp, a2
                  or           a2, zero, s10
                  sub          t5, t6, a2
                  srli         t5, a5, 29
                  slti         a6, t0, 225
                  sub          t3, s1, a5
                  or           a3, s4, ra
                  sra          s4, s8, s1
                  sra          a1, ra, tp
                  or           a7, s11, s11
                  slti         s0, a0, -411
                  and          t0, s0, sp
                  srai         t2, t6, 7
                  xor          s2, t0, s9
                  srai         t1, s10, 17
                  and          s6, a6, a2
                  or           s9, t4, tp
                  slti         a3, s11, -1733
                  xori         ra, s6, -1598
                  or           zero, s10, t6
                  xor          a7, s8, zero
                  slt          s5, s10, s8
                  srl          s2, a0, a1
                  slti         s9, a1, 1256
                  xor          s11, t6, s9
                  sltiu        s4, s7, -1124
                  sltiu        s2, a7, -474
                  andi         tp, a4, 157
                  sltiu        a3, t0, -1747
                  lui          s10, 22263
                  add          sp, a0, a0
                  srli         a7, t0, 12
                  sra          tp, s3, t2
                  lui          t5, 28619
                  xori         t1, a7, 355
                  nop
                  add          s2, gp, sp
                  add          s1, ra, a5
                  andi         t5, a2, 21
                  sltu         t1, t6, t4
                  sub          ra, t6, s2
                  ori          a2, s4, 915
                  auipc        gp, 529104
                  slti         s4, t6, 1980
                  auipc        s11, 381321
                  sltu         s9, a7, t0
                  and          t1, s5, t5
                  nop
                  sltiu        a7, s10, 59
                  or           s5, t6, sp
                  slt          s1, s8, a7
                  srli         a7, t6, 4
                  add          t4, s1, s10
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           s1, 0xffffffff
                  li           s11, 0x91a333a6
                  li           sp, 0x80000000
                  li           a6, 0xffffffff
                  li           s5, 0x80000000
                  li           t1, 0xdbf2df06
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  li           t5, 0xa1fb419c
                  nop
                  add          a6, s5, t1
                  add          a0, s11, s5
                  auipc        tp, 654756
                  auipc        tp, 178693
                  add          t5, t5, sp
                  lui          t1, 679499
                  lui          tp, 305766
                  sub          t1, ra, sp
                  nop
                  add          a6, a6, a0
                  add          s11, sp, tp
                  lui          tp, 835141
                  sub          t1, s5, s1
                  lui          s1, 141371
                  addi         s1, a6, 306
                  nop
                  nop
                  lui          a6, 916376
                  sub          ra, s1, tp
                  add          ra, t5, sp
                  nop
                  sub          sp, tp, a0
                  addi         sp, a6, 1882
                  nop
                  sub          t1, t5, tp
                  auipc        s5, 604827
                  nop
                  add          sp, sp, a0 #end riscv_int_numeric_corner_stream_27
                  sltiu        a0, t2, 464
                  auipc        s7, 1012869
                  or           tp, a2, ra
                  nop
                  nop
                  srai         t0, s3, 0
                  and          s0, s4, s11
                  addi         gp, gp, 1000
                  andi         t5, a1, -976
                  ori          a1, zero, 171
                  srai         s6, s4, 23
                  andi         t1, s10, 1100
                  ori          t1, a4, -481
                  slti         t2, zero, -1846
                  or           s4, s10, gp
                  andi         ra, a1, -481
                  nop
                  auipc        t4, 386697
                  slt          s10, a5, s11
                  auipc        s4, 638907
                  slli         s8, t3, 8
                  sltiu        t0, s5, 317
                  srl          t2, s8, s1
                  srli         s11, s1, 24
                  sltiu        zero, t6, -490
                  ori          zero, s0, -365
                  ori          a6, a4, -1114
                  sub          a0, zero, a6
                  slt          a1, s1, s7
                  auipc        a3, 75087
                  and          s9, ra, s2
                  slli         s11, a7, 18
                  slti         t1, s5, -4
                  xor          s10, s8, s4
                  srli         sp, t6, 5
                  andi         s0, a0, -512
                  sltu         t5, a4, t0
                  auipc        a0, 928071
                  sub          s10, s9, a0
                  addi         s2, gp, 884
                  sltiu        s4, s2, -286
                  sll          ra, s8, s6
                  and          t4, t3, s8
                  ori          a1, s5, 829
                  srai         s10, a6, 15
                  auipc        t0, 369730
                  ori          a7, t5, -356
                  srl          s6, t5, tp
                  lui          s9, 413085
                  sub          a3, a4, t3
                  slli         s2, t6, 3
                  andi         s9, s3, 858
                  ori          s9, a6, 1505
                  sltu         s3, t5, s9
                  xor          s11, s9, s6
                  and          a1, a0, a0
                  addi         t3, t3, 1033
                  srl          t4, a7, t2
                  slti         s11, a4, 1115
                  sra          t4, ra, sp
                  slti         t4, t5, -330
                  xor          s5, tp, s0
                  lui          a3, 914651
                  sltu         t5, a7, a1
                  sll          s10, sp, a7
                  slt          a1, a1, t2
                  srai         s5, s3, 17
                  and          t1, s9, s2
                  sra          s7, t4, s11
                  sra          s7, t0, s9
                  add          s3, s6, s4
                  xori         s4, t6, -1997
                  srl          s6, gp, a4
                  sll          a3, zero, t2
                  sub          s5, t0, t5
                  sltu         a1, s11, s10
                  slti         s11, a4, 470
                  addi         s4, a6, 1377
                  andi         a0, a4, -75
                  slti         s4, s0, 1312
                  lui          t1, 766135
                  addi         a6, s2, -834
                  addi         t5, s6, 406
                  addi         s2, a7, -1346
                  sll          t0, s5, s6
                  and          s10, gp, a3
                  sub          t1, a5, s4
                  ori          a0, s6, -373
                  srl          s7, a5, a7
                  auipc        s8, 304549
                  xori         a1, s4, 944
                  nop
                  xor          s0, s10, a3
                  addi         s5, s1, 1008
                  slti         t5, t0, 132
                  and          tp, a5, tp
                  srli         s8, a6, 20
                  sub          a2, t5, s7
                  sll          s6, s9, s0
                  slt          a2, sp, s6
                  nop
                  auipc        a1, 73325
                  xor          tp, a5, a1
                  slt          s1, a0, s10
                  srai         a7, t1, 12
                  xor          a1, t3, a4
                  srai         s4, s2, 30
                  srl          t0, s11, s6
                  andi         a1, s2, 1704
                  slti         t5, s2, -1747
                  addi         s0, a4, 1348
                  add          s5, a1, s10
                  slli         s2, s1, 25
                  srai         s9, a4, 22
                  srli         s1, sp, 31
                  sltiu        s4, a3, -143
                  sltiu        t0, s4, 539
                  xor          a1, s3, a5
                  slli         sp, zero, 0
                  srl          s9, sp, zero
                  auipc        t5, 690756
                  srli         a3, s7, 23
                  and          s4, t0, s1
                  xori         s5, s4, 1249
                  nop
                  sll          a7, t4, s11
                  andi         s5, s0, 1474
                  srli         s3, a4, 19
                  and          gp, a7, a0
                  sub          a2, s6, a0
                  andi         a0, sp, -417
                  srl          s0, a1, a6
                  lui          s10, 215574
                  slli         a2, s1, 31
                  or           a1, t0, ra
                  srl          ra, s4, ra
                  xor          s0, t0, a1
                  srai         a2, t5, 8
                  srl          gp, tp, s5
                  and          s10, a0, a3
                  srl          t5, s4, zero
                  slt          a1, t1, s8
                  sll          t5, s2, ra
                  slti         s1, a1, -983
                  slt          t4, ra, s0
                  lui          gp, 307958
                  add          a2, sp, a0
                  and          s11, zero, a1
                  sltu         s9, s8, a4
                  or           t4, a2, t3
                  sll          s7, a5, a5
                  xor          a3, s6, s10
                  auipc        gp, 384131
                  nop
                  sll          a6, a3, a5
                  addi         t3, a5, -948
                  slt          a6, s9, s10
                  srl          s10, sp, s6
                  or           t2, t2, s11
                  sub          a3, s6, a4
                  ori          t5, zero, -513
                  andi         t5, s10, -1699
                  lui          a7, 765513
                  srl          tp, s8, t6
                  sra          a0, s7, a6
                  xor          s8, s7, s8
                  addi         s11, s3, -1729
                  ori          sp, a7, 1455
                  nop
                  slt          t0, s0, a7
                  sltu         s10, tp, a2
                  slti         a2, t6, -1572
                  or           s7, a1, s0
                  auipc        a6, 880302
                  srli         a1, s8, 29
                  sltiu        s10, a4, 450
                  xori         a1, sp, -1320
                  lui          s7, 1019273
                  and          s5, t5, a5
                  srli         t0, gp, 11
                  srai         tp, s9, 13
                  srli         a6, a7, 11
                  srai         a2, s7, 1
                  sltiu        a1, a0, -1597
                  lui          t5, 345295
                  srli         t0, s3, 16
                  slti         s3, zero, -1559
                  slti         s4, a7, 1844
                  add          s5, s3, s8
                  sll          t5, t4, zero
                  slt          t0, sp, ra
                  xor          t5, tp, s1
                  or           zero, t0, a2
                  sub          t2, a1, s4
                  ori          sp, t1, 524
                  or           t4, s8, a6
                  lui          s8, 228432
                  andi         sp, s3, 1285
                  xor          s0, s4, s4
                  slti         tp, s10, 1913
                  xori         s11, s3, 384
                  and          a3, zero, a7
                  sll          a1, t4, ra
                  lui          s6, 283720
                  lui          t3, 964595
                  srai         a3, a0, 29
                  lui          s0, 788144
                  andi         t4, t5, 883
                  addi         sp, a2, 710
                  sll          ra, sp, s8
                  andi         s10, s9, -1511
                  sltiu        a1, a7, -632
                  sltu         s2, t6, t4
                  andi         s9, a5, 2029
                  nop
                  sltu         t5, a0, s11
                  xor          a3, ra, t5
                  sll          s7, ra, t4
                  xor          s9, s1, a5
                  nop
                  srai         t1, t6, 13
                  srai         ra, sp, 30
                  slt          s4, s2, s6
                  add          a0, s11, a2
                  add          gp, t1, s5
                  srli         s5, a5, 16
                  nop
                  sltu         s10, t1, gp
                  ori          ra, a3, 1145
                  srli         s8, s10, 27
                  sra          a3, sp, t3
                  lui          s7, 882316
                  add          t3, t0, s4
                  xori         s9, s1, 1395
                  srai         s3, s1, 30
                  sltu         s2, s8, s9
                  xor          a2, t6, a2
                  and          s3, a3, a0
                  andi         s4, t6, -448
                  slli         s9, s8, 24
                  and          a6, a0, s6
                  ori          t5, a6, 706
                  andi         s1, t4, -462
                  slti         s8, s4, 1709
                  andi         t5, zero, 472
                  sub          s7, s10, t5
                  sra          s6, gp, t1
                  sltiu        a2, t4, -746
                  ori          s8, t2, 834
                  xori         s6, s11, 402
                  srai         s0, gp, 17
                  slti         s6, s3, 1312
                  slt          s2, t0, sp
                  sub          sp, zero, a6
                  add          s4, sp, t6
                  add          t1, a1, s9
                  slti         s4, zero, -559
                  sll          sp, zero, t5
                  slti         a1, t0, -1477
                  lui          sp, 1029839
                  xori         a0, t6, -1158
                  sll          a0, a7, sp
                  slti         t2, s9, -1014
                  or           gp, t4, a2
                  srli         t2, t6, 23
                  srl          s7, tp, s6
                  sltiu        s7, t1, -876
                  add          s2, s0, s7
                  add          a1, s10, t3
                  sra          s6, a0, t4
                  slt          a2, a7, tp
                  sll          t5, a2, a4
                  lui          t2, 980710
                  sltu         s6, t0, s9
                  add          s5, a1, s5
                  xor          sp, s11, a3
                  add          s9, s9, t5
                  lui          s10, 244768
                  andi         zero, a7, -1376
                  sltu         s6, a1, a0
                  add          t1, zero, s11
                  slli         s7, t1, 28
                  srl          s6, t6, a1
                  sltu         s6, a5, zero
                  nop
                  srai         s11, s9, 25
                  or           t4, a2, t4
                  ori          t5, sp, 200
                  srai         tp, a6, 14
                  sra          s0, a5, s11
                  ori          t4, a3, 1782
                  sub          a2, s8, sp
                  slti         a3, a7, 730
                  sltiu        s6, tp, -1298
                  and          s5, s9, s6
                  ori          t4, a5, 393
                  sltu         s7, sp, t0
                  sltu         a0, s5, a0
                  slli         t2, t1, 1
                  slli         a1, s10, 18
                  and          a1, t2, zero
                  slt          a1, sp, s9
                  or           a1, sp, zero
                  srli         s10, a2, 23
                  sra          a6, s7, t4
                  lui          a2, 384295
                  and          a2, t0, s9
                  ori          t4, a3, -125
                  and          a6, a0, sp
                  slt          a2, zero, s7
                  auipc        t5, 502274
                  srli         s10, a5, 28
                  srl          tp, s5, a3
                  andi         s4, s3, -372
                  xori         s7, t4, 537
                  slli         s1, s10, 19
                  srl          s1, a2, t4
                  add          a1, a1, a6
                  lui          a6, 839537
                  and          t5, t1, t3
                  sub          tp, t0, s7
                  sub          t5, s5, s5
                  slt          s1, a1, t4
                  add          a7, a4, a0
                  lui          s9, 241968
                  lui          a0, 1014165
                  xori         a3, a1, 1630
                  slti         s3, t6, -1230
                  srli         s7, t4, 0
                  sra          t4, a0, s11
                  or           s10, s10, t5
                  sltiu        tp, s2, 1615
                  xor          a0, s7, t1
                  nop
                  andi         s11, s2, 1108
                  slt          a6, sp, s11
                  srai         t3, ra, 17
                  auipc        s1, 370169
                  or           s11, zero, s11
                  sltu         t5, t1, s3
                  add          gp, t6, ra
                  slli         a2, sp, 28
                  auipc        t0, 835239
                  or           a3, tp, s8
                  add          s2, gp, s11
                  ori          zero, a2, -508
                  sub          s4, t1, a3
                  andi         a6, t3, -860
                  srai         a7, s5, 1
                  srli         a0, s9, 8
                  sra          s9, t6, a7
                  sltiu        t1, s11, -2004
                  slli         s3, t1, 21
                  ori          a7, a4, -1161
                  srli         a0, zero, 10
                  xori         s8, sp, -745
                  sltu         a2, zero, a0
                  sra          t5, tp, s6
                  sra          ra, s1, sp
                  slt          a1, a4, a2
                  slt          s8, a0, t2
                  add          a0, t3, s8
                  sltiu        t1, s1, -1907
                  sltu         s1, t6, t4
                  slt          s4, s6, s5
                  srl          s11, s10, a7
                  slt          s0, zero, s10
                  slt          gp, a5, s5
                  sra          s9, tp, sp
                  add          s10, a6, t6
                  sra          a2, a6, a4
                  nop
                  auipc        a6, 29131
                  sra          s10, s0, a6
                  slli         sp, s6, 12
                  slli         t5, s0, 10
                  sltu         t3, tp, t3
                  sra          s4, s10, t6
                  slti         t4, ra, 681
                  xori         a1, a7, 1062
                  srli         t1, s7, 22
                  srl          s0, a5, t2
                  nop
                  slti         s5, s11, -1978
                  slt          s5, t2, t3
                  sll          s1, a5, s8
                  auipc        s10, 553657
                  sub          s10, a1, s6
                  sra          a1, a7, s5
                  xori         s10, sp, -614
                  slli         s8, s7, 26
                  slt          s5, a6, t4
                  addi         a7, a7, 1826
                  auipc        a2, 4604
                  sltiu        s10, t0, -1109
                  slli         s7, a7, 8
                  sltiu        s11, t5, 851
                  andi         s11, t0, -338
                  slti         t2, s7, -619
                  auipc        sp, 382674
                  slli         s8, s10, 15
                  andi         t4, a4, 1324
                  sub          a1, s6, a6
                  srl          a2, t2, s0
                  xor          a1, t5, t3
                  srai         s6, sp, 24
                  sll          s7, s5, gp
                  auipc        s1, 947667
                  lui          s11, 216512
                  srai         a2, t0, 7
                  srli         a2, a7, 16
                  sll          s6, ra, sp
                  xor          s11, s2, a6
                  sub          a3, s8, sp
                  srai         a3, s11, 19
                  xor          t0, t2, a7
                  sra          s0, s1, s11
                  srl          s11, a5, s9
                  sll          s11, s6, a4
                  slli         s0, s8, 29
                  andi         a3, t6, -1920
                  slli         zero, s8, 2
                  ori          s7, s1, 1079
                  addi         a0, s11, 738
                  sltiu        a6, s1, 2001
                  slti         s1, t5, 12
                  and          t4, s9, s2
                  ori          s7, t3, 108
                  and          s6, t1, sp
                  sltiu        s9, t4, -999
                  addi         zero, s7, 1879
                  addi         t3, a2, -274
                  and          t0, s8, s4
                  xor          a0, s3, gp
                  andi         s6, tp, -778
                  add          s8, a7, tp
                  sltu         s8, a1, s10
                  slli         s5, a3, 17
                  slti         t4, t0, -1214
                  slt          s3, s1, t5
                  auipc        zero, 354576
                  slt          a0, a1, t6
                  auipc        a7, 712239
                  xori         s1, s9, -1654
                  sra          t5, s4, t4
                  and          a2, t0, a7
                  xor          s2, t2, sp
                  nop
                  sll          s8, t3, s9
                  ori          t3, t3, 1471
                  sll          a7, a6, s9
                  sub          s6, s3, s4
                  slli         a3, t1, 10
                  lui          a3, 390255
                  slli         s8, t2, 28
                  sub          gp, t2, t1
                  addi         s10, t0, -721
                  slt          t5, a4, t4
                  srl          s5, s2, s2
                  srli         s11, zero, 5
                  xori         t5, a5, -37
                  addi         s11, sp, -775
                  nop
                  sub          s1, t3, zero
                  slt          a3, t4, s7
                  srli         s10, t6, 27
                  sll          tp, a6, a2
                  xor          a7, s6, a4
                  and          s7, t4, s6
                  add          a3, s4, sp
                  add          s11, t2, a5
                  add          s8, a3, s10
                  sub          s2, a7, s7
                  xori         t1, s2, -358
                  lui          sp, 149624
                  slti         t2, ra, -1190
                  or           s4, a7, s8
                  xori         t4, sp, -897
                  slt          s10, a0, s7
                  addi         s6, s6, 1768
                  xor          s5, s1, a4
                  sltiu        t2, gp, -494
                  slt          t2, t0, t4
                  lui          s3, 571261
                  addi         a0, t2, -217
                  sltiu        a1, t4, -1209
                  andi         t2, s1, -1256
                  slti         a2, t0, -266
                  sra          s5, s10, a4
                  slti         s0, a7, -622
                  addi         a0, a2, -1104
                  nop
                  sltiu        gp, t4, 527
                  sltu         s6, a4, s5
                  srli         a1, t2, 28
                  sltiu        a2, s7, 875
                  or           a0, a7, a1
                  xor          s11, s4, zero
                  sub          s2, s4, t4
                  sltu         a1, a6, s11
                  srai         s7, s10, 19
                  ori          t4, s10, 116
                  slti         a7, a0, 733
                  sltu         gp, a4, t2
                  xori         sp, a7, 1318
                  srli         s9, a6, 23
                  sra          a0, a3, s9
                  xor          t3, a6, a6
                  slli         t0, zero, 0
                  or           zero, s3, sp
                  sra          t1, ra, sp
                  sub          a0, s2, a0
                  slt          s0, t4, a1
                  srai         s4, s3, 6
                  sra          s10, s6, a6
                  auipc        s2, 289112
                  slli         s1, a3, 20
                  addi         s8, s2, -1012
                  srl          ra, a0, a5
                  or           tp, gp, s1
                  auipc        t5, 901358
                  sltu         tp, zero, t6
                  srl          s3, s6, t3
                  slt          s2, t3, s4
                  srli         s6, s8, 26
                  sltu         s1, s3, t1
                  ori          sp, s10, -1313
                  sll          s10, s5, sp
                  nop
                  sub          s8, s11, tp
                  srl          s11, zero, tp
                  add          a1, a1, ra
                  slli         s9, s7, 6
                  or           a1, s1, t6
                  srl          t2, a1, t3
                  addi         tp, s0, -290
                  srli         t5, t3, 15
                  xor          s10, zero, s7
                  sll          gp, s5, a6
                  or           t0, gp, a5
                  nop
                  sub          t4, zero, gp
                  sltu         ra, s1, sp
                  sltu         a6, s8, tp
                  sltu         ra, a2, s11
                  sll          t1, t6, s7
                  srli         s5, ra, 16
                  ori          s9, tp, 805
                  add          t0, t0, t6
                  srl          ra, t5, s5
                  slti         a7, s4, 507
                  sltu         s11, t2, s9
                  slli         s5, s5, 24
                  sltiu        a2, s6, 1357
                  sll          t1, sp, s6
                  slli         s1, s10, 12
                  lui          t0, 183607
                  srai         a6, s9, 17
                  andi         gp, ra, 1151
                  xor          t0, s0, t2
                  ori          s3, zero, -1154
                  xor          s8, s8, a0
                  slt          a7, s6, a0
                  ori          t5, zero, 672
                  slt          t5, t5, a1
                  slli         t4, s0, 25
                  srli         s2, s5, 2
                  sltu         s1, gp, s2
                  or           a3, t1, t3
                  and          a1, t2, a6
                  nop
                  add          a1, t4, t0
                  xori         t0, a7, -812
                  nop
                  auipc        zero, 793742
                  sll          ra, gp, s0
                  or           t1, s11, t5
                  xori         s6, s10, 781
                  auipc        s5, 952286
                  nop
                  lui          zero, 723307
                  andi         t1, s4, 389
                  sltu         s8, s4, a1
                  and          sp, s1, t2
                  sll          s8, s2, s2
                  auipc        tp, 857092
                  lui          s6, 27115
                  lui          s1, 623443
                  add          tp, t6, a6
                  nop
                  ori          t4, a5, 284
                  slli         a3, a3, 13
                  sra          s8, tp, t2
                  nop
                  xori         a7, t3, -1426
                  sra          s5, a2, t0
                  addi         s3, s10, 879
                  sub          sp, zero, s3
                  lui          s6, 883180
                  sub          a1, zero, t3
                  slli         t3, a6, 28
                  sltu         gp, t5, t3
                  sub          s3, a7, t6
                  slti         t1, sp, -1499
                  srli         s5, s9, 11
                  sltu         a2, a7, t6
                  lui          s0, 160834
                  sra          t0, t6, a1
                  addi         s9, s5, -1239
                  sub          s1, a2, t2
                  sll          s2, a3, sp
                  slti         sp, s10, 1979
                  andi         s2, t1, 1049
                  srli         s6, s0, 24
                  sub          t5, sp, s8
                  srai         a3, a6, 27
                  srli         s11, s5, 27
                  sll          a3, zero, s5
                  auipc        tp, 733379
                  srli         t5, a1, 27
                  srli         s8, t1, 28
                  slti         t5, s9, 546
                  andi         a6, t4, -103
                  xor          a6, s2, s10
                  xor          a6, t3, s11
                  andi         s1, a0, 576
                  sltu         sp, a6, s2
                  add          s3, sp, s9
                  lui          a6, 463320
                  srai         s5, t6, 6
                  sll          sp, s2, gp
                  addi         sp, gp, 653
                  andi         a2, s0, -621
                  sltu         s6, s8, t5
                  and          s7, t0, s1
                  slli         s2, sp, 22
                  or           sp, t5, s4
                  auipc        s5, 450847
                  slti         a1, s1, 276
                  andi         t5, a1, 1480
                  slti         zero, a7, 613
                  or           t2, s7, s0
                  or           t1, tp, s5
                  sub          s1, a5, gp
                  or           a6, a0, s6
                  ori          s0, a1, 100
                  sub          s4, a2, a3
                  lui          s10, 714071
                  xori         ra, s0, 97
                  nop
                  ori          a6, a1, 1355
                  nop
                  nop
                  sltu         a3, s8, ra
                  slt          sp, t3, a3
                  addi         t1, s5, -1628
                  sra          s0, a6, gp
                  ori          ra, t6, 1093
                  sll          t3, t3, a2
                  xori         t4, zero, -1477
                  xor          s0, s10, s11
                  slti         s2, t5, 313
                  sra          gp, s10, tp
                  ori          a3, a0, 1974
                  slt          tp, s7, ra
                  xor          s7, s9, s7
                  and          s2, t1, s2
                  xor          s3, t0, t2
                  srli         gp, s1, 21
                  xori         s11, s9, -1230
                  andi         a0, t3, 889
                  or           s9, s4, t2
                  srai         t3, a3, 5
                  slti         a1, t0, 1203
                  add          s2, s3, t0
                  or           a1, s3, ra
                  slt          s10, s5, tp
                  addi         a0, tp, -485
                  sub          t5, t5, a5
                  addi         a3, s4, 318
                  sltu         a3, s0, s3
                  ori          s7, s2, -1126
                  slt          tp, gp, a0
                  xori         a2, t0, 1287
                  slti         a1, t2, 1251
                  auipc        s0, 191106
                  lui          t2, 390015
                  xor          s11, s8, t3
                  srai         tp, s5, 8
                  add          t0, t0, t3
                  lui          t3, 710099
                  lui          ra, 37672
                  slt          s0, s10, s1
                  add          tp, ra, s3
                  xori         t5, a3, -1341
                  ori          tp, ra, -894
                  xor          s1, s11, a2
                  sra          s10, a5, s3
                  sub          s7, s11, a2
                  sub          s7, a1, zero
                  srl          s2, a0, t5
                  slli         zero, s9, 16
                  addi         s2, a4, -1619
                  slt          s2, a7, t5
                  srl          t2, s5, t0
                  slli         a7, a3, 30
                  ori          s3, t6, -1914
                  srl          t5, sp, a2
                  sltiu        a3, t0, -1933
                  sub          a0, zero, s5
                  sub          a6, t4, t2
                  and          t0, s4, s9
                  slli         a7, a5, 1
                  sltiu        s2, a1, 1828
                  slt          s11, a6, s5
                  slti         a7, t6, 1424
                  sltiu        s11, sp, 480
                  slti         sp, a2, -1787
                  andi         t0, s1, -568
                  auipc        t2, 209328
                  sub          t2, sp, s1
                  slt          t1, s2, sp
                  xori         s7, s11, 1358
                  xor          s9, a7, s2
                  sub          s7, a6, a3
                  xor          a2, t0, t0
                  addi         tp, s1, 1444
                  sub          tp, t2, s2
                  sra          a3, s4, gp
                  slti         a1, sp, 1199
                  addi         s1, s8, 1595
                  andi         s6, t2, -1742
                  srli         gp, gp, 28
                  xori         sp, s1, 1978
                  nop
                  xor          t1, s1, a0
                  slli         s11, a6, 29
                  sll          s0, a5, a5
                  sltiu        s3, s1, 484
                  and          s8, s8, a3
                  ori          s10, s0, -454
                  slti         ra, t0, -83
                  andi         s11, a2, -175
                  andi         s1, a7, 1797
                  srli         a7, a0, 18
                  sltiu        s5, s8, 1868
                  xor          t2, s10, t3
                  sltu         a6, t0, s3
                  srai         t1, a6, 14
                  andi         a3, t3, 549
                  xori         t1, a0, 1206
                  srai         s0, s4, 22
                  xori         s4, s0, 962
                  nop
                  auipc        ra, 800448
                  slt          t0, a5, a3
                  srl          s3, tp, a7
                  auipc        sp, 560453
                  add          s3, s10, sp
                  xor          s7, tp, s4
                  lui          gp, 1025216
                  slt          a3, t3, a0
                  or           sp, t6, a6
                  sub          t5, t4, a4
                  lui          s1, 410570
                  auipc        ra, 131118
                  add          s6, s4, s10
                  ori          s4, t6, -46
                  nop
                  xor          t3, t5, gp
                  slti         t1, a3, -1588
                  xori         s1, s5, -1828
                  sll          s3, a5, a0
                  auipc        t4, 53688
                  xor          a3, t3, t3
                  xori         s6, a3, -263
                  or           gp, s1, s10
                  add          s3, a3, t2
                  slt          a7, s4, s8
                  srl          t4, t0, t6
                  and          t4, sp, sp
                  sub          t4, s6, a5
                  xori         t2, s1, 700
                  or           a6, s2, a3
                  xori         t1, s11, -954
                  auipc        ra, 973682
                  slli         a3, s6, 8
                  andi         s3, gp, -1076
                  srli         t0, t1, 1
                  slti         s2, sp, 790
                  or           zero, a4, t4
                  sub          t5, s1, t2
                  srli         a3, gp, 11
                  sll          tp, s7, s3
                  auipc        a3, 734437
                  sltiu        a7, t6, 1884
                  auipc        a1, 28255
                  sltu         a0, a1, zero
                  lui          s7, 991471
                  srl          a0, t3, a4
                  andi         s9, a0, 416
                  slt          s1, ra, a7
                  lui          s4, 394858
                  srai         s7, a1, 24
                  sltu         s0, s4, s3
                  or           s8, a1, ra
                  nop
                  ori          zero, s11, -368
                  addi         a0, t5, -938
                  add          s4, s4, s6
                  slli         s7, a4, 29
                  andi         t4, t0, -590
                  sltu         s9, s3, zero
                  sub          zero, t3, s3
                  srli         zero, t6, 29
                  sll          s1, t0, s9
                  andi         t2, s9, -792
                  sll          a3, s0, a3
                  lui          t5, 102542
                  xor          a7, s6, s7
                  lui          t2, 213815
                  slti         zero, ra, 771
                  or           s5, a7, gp
                  add          s8, s10, a1
                  auipc        s5, 649341
                  srl          sp, s1, s3
                  nop
                  xori         t4, tp, 1845
                  srl          s11, sp, s11
                  ori          a3, zero, 890
                  srai         s7, s7, 11
                  srai         a7, a0, 8
                  auipc        t0, 145490
                  xor          s3, s1, s7
                  srai         t5, gp, 10
                  sll          s7, gp, a0
                  ori          s1, t4, 77
                  sltiu        a3, s9, 944
                  sub          s8, ra, s3
                  nop
                  xor          s3, s9, a7
                  slli         sp, s7, 26
                  sltu         s8, s4, s2
                  srl          tp, t5, a6
                  addi         gp, s3, 480
                  srli         s11, s1, 15
                  auipc        s4, 262203
                  srl          t5, s10, sp
                  slli         t5, t2, 17
                  sub          a7, tp, sp
                  xor          t4, t3, sp
                  srl          t5, a4, t2
                  addi         a3, a0, -388
                  xor          zero, t4, t2
                  sll          s2, a7, zero
                  slti         t0, t0, -1832
                  auipc        a7, 367126
                  srli         zero, a1, 29
                  addi         t4, sp, -1788
                  sll          a2, t4, s8
                  slti         tp, ra, 231
                  andi         s9, t3, 364
                  sltiu        zero, a3, 1550
                  sltu         s8, s1, a7
                  sub          tp, s4, a4
                  xori         zero, t3, 1923
                  srl          s4, t2, a4
                  or           s11, ra, t4
                  sltu         s1, a6, t6
                  lui          s8, 19851
                  sra          a3, a2, s6
                  xori         s9, t3, -1315
                  sltiu        gp, t1, 2027
                  add          tp, s9, t6
                  sra          a2, sp, t2
                  ori          zero, a3, 1705
                  sub          a6, s6, s8
                  sra          tp, zero, a2
                  addi         t5, s4, -911
                  slti         a1, t5, -917
                  or           s2, zero, s10
                  add          s2, a4, t2
                  srai         s11, s4, 10
                  xor          zero, s1, a3
                  srai         tp, ra, 0
                  and          s4, s7, s11
                  sll          t1, t1, gp
                  add          ra, t2, a3
                  xor          s9, t5, a3
                  sltiu        t1, s4, 1819
                  nop
                  slt          a3, a4, s2
                  or           a1, tp, a5
                  slli         t2, t0, 8
                  auipc        s11, 151066
                  xori         s9, t4, -1493
                  sltiu        a1, a3, -158
                  or           a7, ra, tp
                  xor          t3, s6, s0
                  lui          s8, 173407
                  srli         t4, ra, 7
                  ori          t1, a3, 1696
                  sltiu        s1, s3, -1902
                  sub          a3, s4, s1
                  xori         sp, a3, 481
                  sll          s6, a6, s8
                  srai         a3, t1, 14
                  lui          s3, 163550
                  add          ra, s2, s6
                  addi         s2, s10, -1209
                  sra          s0, t0, a5
                  srli         a1, t4, 26
                  slt          s3, a1, s2
                  and          t2, t5, s6
                  addi         s0, a2, 55
                  sltiu        t5, s2, 183
                  auipc        t1, 982076
                  add          t5, a4, a6
                  srl          a0, s10, t1
                  nop
                  ori          gp, s6, 485
                  sltiu        s3, s4, -1404
                  srai         t5, tp, 1
                  srai         s5, a3, 19
                  auipc        s2, 651791
                  srli         s8, s1, 22
                  srai         a1, t0, 25
                  ori          t5, a5, -529
                  nop
                  sll          s11, a6, s9
                  slti         s11, t5, -894
                  addi         s10, s0, 2042
                  auipc        a3, 942605
                  auipc        s5, 229545
                  sltiu        a0, t2, 1957
                  andi         s10, t6, 1741
                  slli         gp, a3, 18
                  and          s2, s5, t4
                  lui          s0, 222000
                  andi         a0, ra, 1426
                  sra          sp, t3, a2
                  sra          a3, a7, s10
                  xor          a0, t2, s9
                  sltiu        t4, a6, 1068
                  or           s0, a7, s10
                  srli         s10, s4, 31
                  nop
                  slti         a6, s8, 1179
                  lui          a3, 769434
                  and          a3, a2, t0
                  srai         a7, s8, 15
                  slt          s11, tp, a5
                  and          ra, gp, a6
                  ori          s3, a5, 54
                  srli         t0, ra, 9
                  ori          a3, a3, 1375
                  ori          a7, a1, 873
                  nop
                  or           gp, zero, a1
                  slt          t5, t5, s7
                  sll          s4, sp, t1
                  lui          zero, 497511
                  sltiu        s0, s0, -1270
                  slli         zero, s9, 16
                  srl          t2, s11, tp
                  slti         zero, s9, -1676
                  sltiu        t2, t3, 1803
                  slt          s11, zero, s9
                  slti         a0, t1, -557
                  sll          s2, a6, s1
                  srl          s8, s5, a2
                  xor          t2, s5, t6
                  nop
                  srli         gp, a6, 20
                  add          t5, t0, zero
                  addi         t4, a2, -204
                  lui          sp, 512435
                  addi         s11, tp, -1301
                  andi         s0, gp, 579
                  slt          s0, t2, sp
                  addi         s9, t6, 1812
                  slli         t5, s2, 6
                  sll          s0, a3, a3
                  sll          s5, t5, zero
                  addi         a2, t5, -1167
                  ori          t5, t6, 594
                  slti         a2, a7, 1912
                  sll          gp, t6, t5
                  addi         s1, t3, -1314
                  xori         tp, t2, -371
                  xori         t2, sp, -238
                  addi         s6, s10, -903
                  andi         s2, ra, -1277
                  sub          t2, s6, s7
                  srl          s9, a3, s6
                  add          t0, a5, s4
                  nop
                  nop
                  sll          t4, t2, s4
                  or           sp, s11, a2
                  sll          s5, s7, s6
                  sra          tp, t1, a0
                  sltiu        t5, t1, 461
                  auipc        a2, 814327
                  xor          gp, t0, s2
                  add          s6, ra, s7
                  slt          t4, t1, t2
                  xor          s0, a7, a6
                  ori          t3, a5, 829
                  ori          a1, ra, -1042
                  sltu         a2, s7, t0
                  and          t4, a5, s4
                  lui          t3, 929769
                  sll          sp, a1, t6
                  slti         s9, sp, 1938
                  srli         a1, s5, 18
                  slli         s0, gp, 9
                  or           s3, a7, s3
                  add          a2, a7, s7
                  lui          t5, 502705
                  sll          s7, t4, a6
                  or           a3, s1, a2
                  or           t5, s0, s9
                  slti         zero, s4, -371
                  sltiu        sp, s2, -202
                  xori         s9, s4, 1761
                  add          a0, sp, s0
                  srl          s0, ra, a6
                  lui          a0, 635240
                  xori         gp, sp, 428
                  srli         s3, t2, 22
                  srai         t4, t0, 5
                  andi         t4, s1, 101
                  sll          a3, s2, t6
                  sltiu        a3, a3, -1109
                  lui          zero, 626369
                  sltu         s9, t6, zero
                  add          t4, t0, gp
                  xor          s0, s1, t0
                  slli         t3, a0, 4
                  or           s2, s10, t6
                  srl          s9, t0, s5
                  and          s0, ra, a7
                  auipc        s4, 297600
                  sltiu        s11, s7, -246
                  sll          s7, t6, tp
                  srli         s1, t4, 28
                  srl          zero, s5, a2
                  or           ra, zero, s4
                  slt          t2, s10, t3
                  nop
                  auipc        a3, 1032799
                  sll          a0, ra, gp
                  sll          t4, a6, t0
                  add          ra, ra, zero
                  lui          a6, 385088
                  xori         tp, s5, 78
                  sll          s7, s2, a3
                  srai         t5, a3, 27
                  srai         ra, a2, 2
                  and          s2, t4, s5
                  srl          s3, a7, t2
                  xori         s9, s9, 1425
                  nop
                  add          a6, s1, tp
                  sll          s11, tp, a4
                  nop
                  sltu         s8, s10, t2
                  srai         a6, a4, 13
                  nop
                  sltiu        a7, s3, 74
                  xori         s8, a5, 1423
                  or           zero, ra, a0
                  lui          a1, 581590
                  ori          s4, t0, 1213
                  slt          ra, s1, t6
                  sra          s2, a5, s5
                  slt          a7, t4, t6
                  sll          s3, s10, sp
                  ori          a0, s5, 1409
                  lui          a0, 169258
                  addi         a3, s1, -1428
                  add          t5, t2, s0
                  sub          ra, s5, s11
                  sub          ra, s4, t2
                  sll          a0, s3, t3
                  nop
                  xor          t5, s8, a7
                  nop
                  nop
                  slli         a0, s7, 14
                  addi         s3, zero, 64
                  sub          s1, a7, s0
                  nop
                  and          t4, a4, t6
                  srli         s6, a2, 5
                  srli         t5, t6, 6
                  slti         t3, s6, -1330
                  nop
                  xor          zero, s9, t1
                  slti         a0, a2, -781
                  ori          a7, a6, -1297
                  ori          s5, a6, -783
                  xori         s8, s11, 1928
                  xor          s5, a2, t5
                  slti         s9, sp, -1809
                  slt          a6, t6, t0
                  sltu         s10, s0, a1
                  and          s1, ra, t2
                  lui          s1, 710481
                  and          s2, a4, a4
                  sltiu        a6, s6, 1676
                  ori          a1, a6, -1229
                  addi         zero, t2, 12
                  slli         s4, s6, 19
                  xori         s7, t3, 1821
                  or           a3, a0, gp
                  andi         s8, t2, -2037
                  and          t5, s6, t2
                  sll          s5, s10, sp
                  xori         a7, s10, 1904
                  nop
                  slli         a3, a2, 3
                  addi         a1, s0, -1159
                  srai         gp, t0, 15
                  xori         s10, gp, -1854
                  auipc        ra, 418792
                  auipc        t1, 62316
                  ori          a2, sp, -1240
                  and          s3, s9, s6
                  add          a3, a3, sp
                  xori         s6, s3, -698
                  addi         s2, s9, 924
                  slli         s6, a5, 11
                  slt          s2, ra, gp
                  addi         a6, s0, 847
                  xori         a3, sp, -1389
                  srl          s4, s4, t0
                  add          a7, s11, tp
                  auipc        a2, 1036050
                  srli         t4, t6, 1
                  slt          t1, a3, s9
                  sltiu        s2, s8, -1830
                  sll          zero, s11, s3
                  addi         s10, s5, -1426
                  sub          s7, a3, a6
                  and          tp, s4, a7
                  addi         a1, gp, -500
                  sub          a0, a2, s1
                  sltiu        a1, a1, -1744
                  sltiu        s6, sp, 377
                  xor          a0, s4, tp
                  addi         s8, zero, -443
                  slti         t3, sp, 1758
                  srli         gp, tp, 22
                  slt          s6, s6, s7
                  ori          t1, t5, -1605
                  sra          t1, s3, s2
                  srl          s3, t0, a1
                  sub          a6, t0, s2
                  xor          t1, s7, s8
                  slti         t4, s11, 1833
                  srl          t2, s9, sp
                  sub          tp, s6, a4
                  slt          s9, a1, s8
                  sub          t1, s5, s1
                  ori          s4, sp, 1319
                  addi         t0, s3, 1206
                  addi         s2, s5, 1645
                  xor          a2, a0, s1
                  sltiu        s10, s10, -771
                  sra          s8, a0, zero
                  slt          s1, a2, s4
                  xori         s8, a7, -1728
                  slti         t4, t4, -1475
                  srai         ra, a7, 10
                  andi         a6, s10, -786
                  sra          a7, s6, a5
                  sltiu        t2, t6, 1592
                  sub          a3, s2, ra
                  slti         t1, a0, -566
                  xori         s8, a0, 416
                  addi         t4, a5, 1310
                  sub          t3, a4, t0
                  or           a3, s3, a6
                  andi         a7, s7, 1322
                  sra          s11, t4, a3
                  sltu         s0, s0, a6
                  sll          s6, a5, t0
                  add          t5, a4, s2
                  xori         a2, a4, -1436
                  sra          s3, t5, s7
                  auipc        s9, 1014474
                  sltu         s3, t6, tp
                  xori         s8, a3, 104
                  sltu         a6, t4, s11
                  srl          a0, a7, a2
                  sll          zero, sp, a7
                  auipc        a0, 724745
                  sltu         a0, s1, s4
                  srai         s3, s10, 4
                  srai         s11, t5, 1
                  sll          t5, a7, s8
                  slli         a6, s1, 25
                  addi         s8, s2, 427
                  or           s4, sp, gp
                  addi         t1, a5, 580
                  slli         zero, a7, 29
                  sltiu        s2, t1, 243
                  nop
                  sltu         ra, gp, s8
                  srli         t4, s3, 2
                  and          a0, s9, s4
                  and          tp, s11, t6
                  ori          s1, t1, 1269
                  andi         tp, sp, -918
                  addi         s0, s6, -998
                  slli         tp, s4, 14
                  xor          t0, a6, a3
                  slt          s0, a5, a6
                  sra          s4, s8, a1
                  slt          sp, a5, a3
                  srai         a3, s7, 5
                  sltiu        t1, sp, -435
                  srli         t3, a2, 21
                  add          s3, zero, ra
                  and          t0, s9, t1
                  andi         t2, gp, 1988
                  slti         a7, t4, -375
                  ori          s9, s3, 1536
                  xor          s8, s10, a6
                  xori         s11, s7, -1654
                  xor          s1, ra, s3
                  sltu         s8, t0, zero
                  sra          s3, a6, a1
                  sub          s6, s4, t0
                  slti         s11, sp, -1884
                  sltu         a6, a1, s11
                  xori         t4, zero, -1624
                  xori         a1, s8, 1347
                  srl          s8, t1, a2
                  addi         s6, zero, -567
                  addi         a0, t4, -1741
                  auipc        a2, 389588
                  sltu         a1, t3, a2
                  srl          s6, tp, t0
                  and          a1, s6, s6
                  nop
                  slli         t4, a5, 16
                  add          s5, sp, a5
                  or           s10, a4, s4
                  auipc        t4, 974001
                  sub          t4, t0, sp
                  sub          s1, s9, s2
                  sltiu        t0, s6, -435
                  srl          a2, t2, s2
                  slt          s0, a5, s0
                  sub          s3, s11, sp
                  or           a2, a2, t4
                  xor          sp, a2, t2
                  srli         t1, a3, 6
                  slti         s2, s9, -498
                  srli         a1, s5, 21
                  or           s6, a2, s1
                  srai         s5, s3, 11
                  nop
                  srl          t1, a7, gp
                  xori         s0, s5, -1610
                  xor          tp, s5, s0
                  xor          t4, t2, a1
                  slti         a3, s2, 1398
                  srl          ra, a5, a3
                  srli         t1, t4, 19
                  slli         s1, ra, 1
                  srli         s4, s4, 13
                  sll          s0, a7, ra
                  and          s3, s3, t3
                  andi         s4, a4, 1584
                  slli         sp, s10, 30
                  auipc        a0, 469777
                  auipc        t0, 811843
                  sra          a3, a6, s1
                  and          s8, sp, s2
                  sll          s1, t1, a3
                  or           s11, s7, s2
                  andi         a6, ra, -480
                  srl          t2, a1, a6
                  xori         t5, s7, 1691
                  addi         s8, a6, 667
                  andi         t4, s1, 761
                  sltiu        a6, t1, 1137
                  sra          a2, t4, s3
                  sltiu        sp, ra, 353
                  auipc        t1, 115194
                  or           a1, s9, s5
                  sltu         t1, a0, s11
                  lui          s0, 872705
                  xori         t2, gp, 963
                  sra          s3, zero, s7
                  andi         a1, a1, -539
                  and          t1, t5, a7
                  sra          t3, s9, tp
                  sltu         s9, t1, t4
                  xor          a1, a1, t1
                  add          a1, a7, t5
                  andi         a3, s6, 1100
                  nop
                  lui          t4, 519714
                  add          s3, s9, t0
                  xori         s10, gp, -599
                  sra          s2, a3, t3
                  addi         tp, tp, -175
                  sltu         s10, s9, tp
                  addi         a1, s7, 520
                  lui          t2, 610633
                  ori          t1, t3, -914
                  sra          s7, ra, s10
                  srli         t1, a7, 24
                  and          s5, a3, a7
                  slti         t4, t1, 1613
                  add          s7, a3, a2
                  xor          a6, s0, s6
                  auipc        s1, 964792
                  srli         s7, sp, 0
                  srli         a6, s2, 27
                  sltiu        a2, t3, -1103
                  slti         ra, ra, 452
                  sltiu        s4, zero, 130
                  srl          s0, s6, t5
                  andi         a3, t2, 2018
                  or           a1, s9, ra
                  auipc        s7, 794550
                  srli         a1, s7, 18
                  slti         t5, s2, -207
                  srl          a7, t1, s5
                  xori         t5, t3, 703
                  slti         a6, s7, 311
                  sltu         t4, s0, zero
                  slli         s11, t2, 25
                  sra          t2, s8, a4
                  andi         a3, t5, 1145
                  and          t0, a2, s2
                  lui          a7, 186574
                  srli         s2, s2, 8
                  andi         t1, gp, -942
                  sub          gp, s4, s0
                  sltu         s9, t5, s9
                  sra          t5, ra, a5
                  sra          s8, t6, gp
                  sll          zero, s6, t4
                  and          t4, s9, a0
                  sub          s9, s3, t4
                  nop
                  addi         t4, ra, 488
                  slti         s11, sp, 1113
                  sltiu        t5, gp, 295
                  srli         a3, a1, 10
                  and          s2, gp, s2
                  auipc        t2, 147659
                  sll          a3, s1, a3
                  andi         s1, a4, 1840
                  srli         ra, t4, 6
                  srai         s0, s1, 22
                  xori         s11, s11, -1023
                  and          tp, tp, sp
                  or           s2, a4, ra
                  slt          s1, a6, zero
                  xor          t0, a0, t5
                  sra          gp, a2, a3
                  xori         t5, a6, -1463
                  srl          gp, a5, a1
                  sra          s9, a2, a5
                  srai         s5, a0, 12
                  nop
                  and          t2, a5, gp
                  and          t2, t0, zero
                  sltu         s11, a6, tp
                  sltiu        s1, t3, 1524
                  add          s0, a6, gp
                  slti         sp, s2, -1948
                  add          s3, s5, a6
                  addi         gp, s2, 126
                  andi         t2, s7, -466
                  sub          t4, s11, s0
                  xor          s2, t2, a5
                  and          s6, s3, s3
                  andi         t4, s5, 955
                  srai         t1, s4, 6
                  srl          a3, t4, t6
                  or           a3, s4, s9
                  srli         tp, a5, 1
                  add          a7, s3, tp
                  ori          s11, a0, 1464
                  andi         s6, s0, 896
                  and          s8, ra, t3
                  nop
                  sub          s11, t6, s7
                  slli         t1, gp, 7
                  srai         a7, t4, 18
                  andi         t2, a2, -1650
                  srai         s0, s4, 5
                  lui          ra, 797904
                  sub          a3, a2, s5
                  sub          s3, s2, t5
                  srl          s9, s5, t1
                  add          s4, zero, t6
                  auipc        s5, 129115
                  slli         t5, s2, 19
                  ori          a1, s8, 677
                  sub          a7, t4, t3
                  ori          s7, a5, -1781
                  nop
                  ori          s3, t6, -1527
                  sltu         ra, a5, s10
                  srli         a3, t5, 12
                  addi         tp, s10, -1439
                  lui          gp, 754202
                  srai         t3, s4, 16
                  or           s10, a2, a7
                  slli         s8, t6, 12
                  lui          a0, 553404
                  slti         tp, t0, 666
                  and          s10, s8, sp
                  sub          s11, a2, s10
                  slt          a3, t4, sp
                  slt          t3, t3, t6
                  nop
                  xor          s6, s5, a4
                  or           s6, t3, t3
                  xor          ra, a4, zero
                  sltu         s10, t6, s3
                  nop
                  lui          t5, 632019
                  sra          t4, a4, t2
                  sltiu        a7, s6, -452
                  and          t5, ra, a5
                  sltiu        s2, s2, -1338
                  xori         t0, a6, 621
                  sra          s0, s4, zero
                  lui          s0, 664508
                  sll          s8, s8, s4
                  sltu         zero, a2, gp
                  add          s3, s10, gp
                  andi         s7, a3, 1982
                  and          a1, a0, zero
                  srl          s3, t1, t0
                  auipc        s9, 575721
                  lui          tp, 476822
                  lui          s1, 960318
                  xor          a7, gp, t2
                  andi         s2, zero, -1981
                  ori          a7, a0, 606
                  sll          t1, s5, a3
                  ori          t1, a4, 1503
                  srli         s9, s1, 13
                  srli         t4, s6, 15
                  add          s8, tp, a7
                  sll          s3, t1, t0
                  slli         a3, a4, 7
                  sltu         s0, zero, s5
                  nop
                  and          s0, s6, s3
                  srai         s7, t1, 9
                  slti         a1, t4, -1094
                  lui          a7, 37938
                  ori          a2, t6, -422
                  slt          a0, a2, s2
                  sltiu        s9, s4, -1455
                  srli         a2, s10, 14
                  add          a7, t3, s6
                  and          t4, a1, ra
                  sll          s6, s5, s9
                  srl          s7, s7, t2
                  andi         gp, t3, 669
                  slt          s7, sp, s0
                  slli         t5, sp, 0
                  auipc        a6, 324538
                  lui          t2, 896896
                  sltiu        t2, zero, -1394
                  and          t1, a7, s3
                  srai         s2, t2, 2
                  sll          s7, a2, s4
                  nop
                  and          t1, s11, t0
                  srai         t5, t6, 0
                  slli         a0, a6, 21
                  sra          s0, a4, s2
                  srli         t1, s3, 30
                  slli         t1, s1, 3
                  lui          a0, 438985
                  sll          s9, t6, s9
                  addi         a6, zero, 1290
                  srli         t5, s3, 31
                  srai         s1, s4, 14
                  add          t4, zero, zero
                  and          tp, s7, a3
                  sltu         a2, t1, s4
                  and          tp, s0, s1
                  slti         a7, sp, 235
                  sra          s9, a4, a2
                  srl          sp, a4, t6
                  sltu         a0, s7, t1
                  srli         t3, s5, 24
                  sll          a7, s0, s2
                  auipc        s2, 424329
                  xori         a7, tp, 1101
                  sra          t2, s11, t4
                  xori         t1, t0, -102
                  and          s4, s10, s7
                  lui          s3, 285302
                  andi         gp, tp, -1324
                  srai         s4, s11, 1
                  ori          t2, t5, 1319
                  sll          t0, s10, t3
                  srli         a0, gp, 16
                  sll          s3, s2, s7
                  addi         a2, s5, -1395
                  sub          t1, a6, a1
                  xor          gp, a4, t5
                  lui          t0, 696611
                  sub          s8, gp, a6
                  and          s5, s8, s7
                  slti         s6, a0, 1926
                  auipc        s4, 129955
                  xor          a7, a2, t4
                  sub          t3, s1, s3
                  sra          a6, s0, s11
                  srai         zero, s8, 31
                  or           s6, s3, t5
                  lui          s7, 133591
                  sub          t5, t5, tp
                  srl          s1, t1, s9
                  andi         t2, t0, 1887
                  nop
                  srli         gp, zero, 31
                  srli         s2, s10, 24
                  sll          a6, s10, s11
                  sra          t0, a3, s3
                  or           t0, a3, s0
                  ori          t5, gp, -144
                  sltiu        a2, gp, -223
                  srl          ra, a5, s9
                  slti         t3, t3, 900
                  slt          a6, s1, a1
                  sll          s0, a0, t5
                  ori          s4, a1, -197
                  xor          t1, t2, s4
                  sll          s11, s6, tp
                  and          s9, s1, zero
                  or           s0, a7, s11
                  nop
                  xor          t4, a0, t6
                  ori          t3, gp, 458
                  slli         gp, t3, 30
                  sra          s7, s7, t1
                  xori         a7, s5, -1737
                  srli         s6, s1, 27
                  ori          tp, a2, 297
                  lui          s10, 116247
                  slli         sp, s8, 25
                  add          a2, tp, ra
                  sltiu        gp, gp, -678
                  srl          s0, s2, a1
                  or           s10, a3, a5
                  auipc        a2, 910389
                  and          t2, tp, s0
                  xori         s11, zero, -626
                  sub          a2, s0, s2
                  srl          s4, s4, tp
                  sll          a2, s10, t6
                  xor          t1, tp, gp
                  xor          s2, s3, a7
                  ori          s3, s7, -261
                  slt          s7, s6, s11
                  srli         a3, a2, 29
                  xori         gp, a0, 1591
                  andi         a3, s9, 13
                  nop
                  addi         zero, t2, -612
                  slli         s1, t2, 11
                  srli         s9, s10, 0
                  srai         s11, s6, 13
                  or           a6, gp, ra
                  lui          t1, 811807
                  sra          s4, s4, gp
                  slti         a2, s11, -1625
                  nop
                  srli         t4, a4, 28
                  srai         s9, a2, 6
                  sll          s11, a5, a0
                  xori         s1, s4, -1280
                  lui          s2, 1040653
                  add          a2, ra, a2
                  sub          tp, s1, t2
                  srli         a6, a7, 0
                  sltiu        a2, s8, -1805
                  srli         s10, zero, 24
                  srli         t2, s0, 19
                  lui          s4, 10754
                  srl          s11, t5, gp
                  sltu         a2, s0, ra
                  sra          t1, t3, a0
                  xor          t4, a4, s10
                  slti         s8, t0, 761
                  sra          a3, s3, t4
                  addi         s4, gp, 1913
                  auipc        ra, 349149
                  slti         t4, s2, -1510
                  add          t1, a7, a4
                  srl          a0, t3, a6
                  xor          s11, a2, s9
                  and          gp, a3, t6
                  sub          t2, s10, zero
                  srai         s2, a0, 14
                  sra          t3, s8, zero
                  slli         s4, s3, 13
                  sll          s5, a2, a2
                  and          ra, s0, a1
                  sltu         gp, t4, a5
                  srli         t5, a6, 15
                  slti         a2, t2, 1166
                  xor          t0, s5, s6
                  add          t5, t4, s9
                  auipc        t5, 115343
                  nop
                  srli         s3, a7, 6
                  xor          s7, ra, a3
                  srl          s0, a3, t1
                  lui          tp, 184849
                  slti         gp, t4, 128
                  and          s11, s5, gp
                  sltu         t5, t3, t1
                  srli         s2, s10, 10
                  sll          s7, t0, s5
                  lui          t5, 51124
                  srai         t4, t0, 4
                  lui          s5, 7048
                  lui          a3, 832934
                  sltiu        s4, s6, 1651
                  srli         ra, s11, 18
                  auipc        s4, 673376
                  slli         s10, s2, 1
                  slti         t4, t3, 1150
                  sra          a3, a0, a5
                  sll          zero, a0, s9
                  slt          s10, t1, tp
                  andi         a6, t5, 692
                  slli         s2, t3, 0
                  srai         s11, s7, 13
                  sra          t4, a1, t1
                  sltu         s1, s11, s5
                  srl          a3, a3, s0
                  andi         gp, s8, -1360
                  andi         s9, t1, -46
                  xor          s9, a5, a3
                  slli         t1, a5, 1
                  srai         s0, sp, 29
                  sltu         t3, t4, s5
                  addi         s2, t0, 1161
                  srl          s0, s3, t5
                  srl          s8, a4, a6
                  sra          t5, s10, sp
                  add          s8, s4, a0
                  andi         t2, s5, 387
                  slt          t4, a6, s10
                  lui          tp, 12966
                  srl          a0, s9, s11
                  srli         t4, t2, 21
                  addi         s5, t1, -1755
                  addi         a6, t6, 610
                  add          s3, a4, s3
                  sra          zero, t5, a5
                  ori          a2, s1, -693
                  xori         a0, s8, -1437
                  xori         t5, a3, -1410
                  srli         s5, t0, 24
                  sltiu        s2, a2, 700
                  sltu         s8, a6, s1
                  andi         zero, tp, 1976
                  addi         t4, a2, -59
                  slti         t0, zero, 487
                  slli         ra, a6, 9
                  srli         tp, t4, 5
                  addi         s1, t1, 1448
                  srai         t1, sp, 20
                  sub          sp, t0, a3
                  add          tp, a3, ra
                  or           tp, t3, s4
                  slt          a6, sp, sp
                  nop
                  slt          s9, s8, a7
                  sll          s2, s8, t2
                  and          t5, t6, t0
                  andi         s1, zero, -1992
                  sub          s7, a0, a6
                  sll          a3, tp, s6
                  slli         a0, a2, 17
                  ori          a0, zero, 839
                  sra          s6, a7, s8
                  add          a0, s6, gp
                  nop
                  lui          t0, 600272
                  slli         tp, s0, 14
                  or           s4, a0, a6
                  sll          t2, s7, gp
                  xori         s6, a6, -1433
                  addi         sp, s8, -716
                  andi         s0, s10, 777
                  auipc        a0, 1016207
                  srl          zero, s7, a4
                  andi         t4, a7, -110
                  sra          s2, tp, s8
                  srli         s5, t2, 9
                  and          s4, s8, s9
                  sltiu        s8, s8, 39
                  xor          a7, gp, s9
                  slli         s1, sp, 18
                  nop
                  srai         t3, gp, 6
                  nop
                  auipc        tp, 275100
                  add          s9, s7, s11
                  and          s9, s11, a0
                  srai         s2, gp, 22
                  xor          s4, t1, t6
                  sltu         a7, t1, gp
                  srli         s11, t4, 24
                  add          s6, t0, t6
                  slt          t3, t1, s0
                  sltiu        a2, t6, 828
                  auipc        s7, 711675
                  auipc        a3, 599552
                  and          gp, s9, s1
                  sub          t2, a2, t4
                  srli         t4, a4, 23
                  andi         a2, gp, 844
                  srl          s9, t2, a4
                  sltu         s5, a1, ra
                  srl          t1, s10, s9
                  srl          s6, s3, t5
                  xor          s3, s5, s8
                  slt          gp, t6, a2
                  slt          t3, a0, a1
                  slti         t2, t1, 1081
                  xori         t5, s9, 269
                  slti         t4, a4, -1862
                  sll          zero, a0, t6
                  or           t4, a7, a7
                  add          s9, t3, s7
                  slli         t5, ra, 16
                  nop
                  slti         t1, t1, 233
                  srli         a1, a4, 26
                  auipc        gp, 527796
                  srai         a2, t1, 26
                  sltu         s10, s5, s8
                  addi         s1, sp, 1387
                  nop
                  srl          t5, zero, a7
                  addi         tp, a5, 97
                  sltu         s1, tp, s5
                  addi         a2, t1, 376
                  ori          zero, s8, 586
                  sll          s7, a5, tp
                  or           s9, a7, s7
                  sub          s1, t5, s4
                  lui          a7, 818244
                  sub          s10, s0, a2
                  nop
                  slti         s8, tp, -491
                  or           zero, a0, a5
                  or           s7, t6, t2
                  slli         zero, a4, 7
                  sltiu        a0, s4, 1664
                  xor          a6, t5, s10
                  add          s8, s11, t4
                  sltu         sp, sp, s7
                  srli         s0, t3, 29
                  or           s4, a3, t2
                  srl          zero, t6, s6
                  ori          a7, s11, -1231
                  srai         t5, s7, 0
                  slt          tp, zero, a7
                  sltiu        s2, gp, -710
                  addi         sp, gp, 802
                  srl          t1, s7, t1
                  nop
                  addi         t5, tp, 353
                  slt          a3, a0, a3
                  slt          a2, a3, s1
                  andi         t5, s2, -1521
                  srai         t5, t3, 9
                  or           s2, a2, t3
                  sra          a6, s9, s6
                  srai         t1, s10, 30
                  nop
                  slt          s5, a0, t4
                  andi         t4, s5, 687
                  slti         s7, s7, 637
                  lui          s11, 678215
                  addi         t2, t2, -1013
                  sub          s2, s7, t3
                  srl          s11, s9, s2
                  srai         t3, s2, 18
                  srai         s2, s5, 10
                  lui          t3, 734886
                  slt          s7, t4, a3
                  sra          s2, t5, t0
                  sltu         s3, s11, a5
                  sll          a2, a3, s0
                  xori         s1, a0, 935
                  srl          sp, s8, a7
                  srai         a1, s5, 8
                  sltiu        s3, s6, -1524
                  slti         s10, sp, -442
                  sll          s6, t4, a5
                  slli         a1, s9, 19
                  sll          s9, a4, gp
                  auipc        s0, 661151
                  and          zero, s2, s3
                  lui          s8, 719365
                  add          s7, s8, t2
                  srl          s5, gp, tp
                  andi         t2, tp, -469
                  xori         a3, t0, -1980
                  srli         s3, a2, 1
                  srai         t2, gp, 15
                  sub          s2, a1, s8
                  sra          t5, a4, a7
                  auipc        t1, 502148
                  srl          ra, s8, t2
                  and          t4, a1, t2
                  sub          a6, s7, t3
                  lui          t0, 165539
                  add          s4, sp, s11
                  slti         a6, s10, -1406
                  sub          s5, t3, t4
                  xor          s5, t4, a1
                  sub          s5, t6, t4
                  or           s5, t4, s3
                  lui          sp, 595096
                  auipc        t3, 567517
                  or           s5, s6, a3
                  srai         s9, t6, 3
                  ori          a1, s9, 1530
                  add          a3, a1, gp
                  sll          s8, t4, s6
                  slt          t2, s4, t5
                  sra          a2, t4, s5
                  add          ra, s10, s9
                  add          s1, gp, gp
                  sub          s5, s9, t0
                  slli         a1, s7, 22
                  nop
                  auipc        a1, 87531
                  sll          t3, a0, a1
                  sltiu        t2, s10, 373
                  lui          tp, 298010
                  slli         a0, t4, 1
                  srl          a3, s3, gp
                  and          s3, a3, a2
                  xor          a1, s8, tp
                  sll          s5, t2, tp
                  srl          s8, sp, t6
                  srli         s10, s1, 23
                  sltiu        t3, a6, -999
                  slt          gp, s4, a5
                  add          s3, t5, a6
                  lui          s0, 599439
                  srl          a2, zero, a1
                  sll          a6, s5, t0
                  sra          gp, s1, s6
                  xori         s3, zero, -1620
                  xori         a7, a1, 1617
                  addi         a3, a6, -1530
                  nop
                  sll          s8, s2, s2
                  andi         gp, a2, 1987
                  srai         a0, a4, 11
                  slti         t1, t4, -551
                  or           s10, t5, a6
                  nop
                  addi         s1, s4, 1886
                  sub          s7, s7, s11
                  nop
                  srl          s5, s9, s4
                  nop
                  or           sp, s3, s5
                  srli         t2, t4, 22
                  sltu         tp, s6, a5
                  lui          s2, 581256
                  lui          a6, 2509
                  slt          s4, t0, a4
                  slt          s9, s8, s9
                  slt          zero, s9, t0
                  srl          a3, a5, a7
                  sltiu        t5, s8, 1721
                  srli         s11, s10, 7
                  xor          s7, t5, s6
                  slli         t4, a6, 29
                  xori         t1, s7, 1686
                  sll          tp, t3, s6
                  nop
                  srl          s0, ra, s11
                  add          s0, a4, t6
                  xori         a1, a4, -82
                  and          s7, t3, s6
                  nop
                  slt          s3, s3, s7
                  addi         s3, s2, 952
                  add          t4, s1, tp
                  sra          t3, s10, s9
                  xor          a0, a3, s0
                  sltu         s3, s4, s4
                  sra          t0, t0, s10
                  andi         tp, s1, -556
                  slti         s3, sp, -2004
                  slt          s10, s11, s3
                  slli         ra, s11, 20
                  andi         a6, a7, -1783
                  xori         s1, s9, 1911
                  and          a6, t5, tp
                  xori         a6, s9, -1630
                  andi         gp, a7, 688
                  sra          s3, a7, ra
                  srli         t2, s10, 21
                  srli         s11, a2, 15
                  srai         s6, s10, 3
                  slli         gp, tp, 22
                  or           t2, a0, t0
                  add          t4, a3, t6
                  andi         s9, a1, 83
                  slli         s2, a5, 22
                  nop
                  slli         s11, a0, 4
                  srai         a0, t2, 8
                  sub          t0, a6, zero
                  xori         s10, gp, -1779
                  addi         s6, t3, 608
                  sra          a2, s11, s7
                  addi         s6, s0, -1260
                  add          s2, zero, s4
                  sltu         a1, s0, a5
                  slti         t4, s0, -1603
                  slti         s3, ra, -1007
                  andi         a7, a7, 766
                  and          s2, s3, s2
                  ori          gp, a7, -1220
                  slti         t4, t4, -1047
                  add          s4, s8, s0
                  slt          s1, s7, t0
                  srl          a0, s0, s4
                  xor          tp, s7, s9
                  srl          sp, t1, s3
                  add          s6, t4, a7
                  addi         s7, s0, 1958
                  ori          sp, a4, -1121
                  sll          s5, s3, t3
                  sub          t0, a2, s11
                  or           t4, ra, a1
                  sra          s11, t2, a1
                  srai         s5, gp, 6
                  sub          s4, s6, s11
                  srli         s7, a6, 12
                  srli         t2, s5, 5
                  sub          s4, zero, a3
                  sltu         t1, s11, s6
                  nop
                  auipc        t3, 470170
                  xori         zero, s1, -948
                  ori          t5, s10, -380
                  auipc        s8, 773973
                  sll          a6, t2, gp
                  sub          s4, s9, a5
                  srl          sp, a7, ra
                  srli         t4, s7, 28
                  lui          a2, 722884
                  sub          t1, t3, s11
                  addi         a3, t1, 421
                  sltiu        s6, zero, 1897
                  srli         s8, s0, 19
                  slli         s7, s10, 12
                  lui          t0, 658314
                  ori          t0, a0, 255
                  and          s9, t5, t4
                  srl          a0, t5, t3
                  and          tp, s11, a4
                  sltu         s10, s8, zero
                  sltu         zero, sp, s1
                  srli         s7, s2, 6
                  sub          a2, t6, tp
                  nop
                  xor          s7, a3, ra
                  addi         s7, t2, 377
                  andi         s0, t1, -1081
                  sltiu        s3, tp, 492
                  slti         a3, s4, -1383
                  and          a1, t1, s5
                  xori         a6, s11, -1167
                  slli         s11, s3, 5
                  ori          gp, gp, 1879
                  srl          a3, s4, t1
                  sll          ra, s6, t1
                  ori          s1, s10, 1222
                  lui          t5, 965113
                  srl          t0, s10, tp
                  or           a2, s5, s8
                  slti         zero, t0, 404
                  or           zero, s10, s5
                  xori         a6, s5, -1304
                  slt          t2, a3, t6
                  ori          t1, t2, 138
                  or           s0, t3, s8
                  auipc        s8, 737048
                  sltu         s9, s4, gp
                  sra          a6, t4, t6
                  sra          a2, a4, s4
                  xori         zero, ra, -1590
                  nop
                  srl          s7, ra, s8
                  andi         a6, a4, -850
                  xor          a3, s5, s9
                  andi         s9, s3, 1328
                  auipc        a3, 695579
                  slli         tp, t1, 27
                  srai         t5, ra, 5
                  nop
                  nop
                  auipc        a1, 861812
                  ori          a3, t6, 1273
                  slti         tp, t0, 0
                  srl          a3, s5, s7
                  sltiu        a2, a2, 1867
                  slti         a0, a5, 637
                  xor          zero, t2, t4
                  srl          s11, s4, tp
                  and          t5, t0, s6
                  srli         s4, s2, 14
                  andi         s4, t4, 33
                  xori         s8, s1, 1645
                  lui          s2, 947262
                  sra          t2, a1, a7
                  sltu         a2, s2, s9
                  sltiu        s1, zero, 1754
                  slli         t5, a3, 28
                  sub          s1, t0, t6
                  andi         s9, s6, -352
                  xori         s8, a3, -446
                  auipc        s9, 46472
                  xor          t4, a5, zero
                  andi         tp, t1, 1888
                  srli         gp, s3, 26
                  srl          t4, ra, s6
                  xor          t5, s3, t5
                  slli         ra, s7, 25
                  xor          t1, s3, t2
                  lui          a7, 27715
                  slti         zero, s4, -572
                  sll          a0, s8, a1
                  srai         t2, t6, 2
                  srai         s9, sp, 9
                  sub          s3, tp, s2
                  andi         s9, t0, -1707
                  or           sp, a5, t6
                  xor          zero, t5, t4
                  sub          s11, a7, t3
                  srli         s10, t0, 11
                  ori          t1, t3, 875
                  sll          sp, tp, a7
                  andi         a2, s1, 1941
                  addi         gp, sp, 65
                  sra          t3, a5, a7
                  xori         a7, s11, -615
                  slli         a1, a2, 1
                  xor          sp, s7, gp
                  sub          t5, a2, a2
                  nop
                  sltu         t1, a7, t1
                  slt          t1, t2, s11
                  slli         s5, t0, 12
                  auipc        s7, 524306
                  andi         s7, tp, -1267
                  auipc        ra, 626567
                  sltiu        s0, t6, 389
                  addi         a3, t6, -423
                  slti         gp, t2, 565
                  slt          t0, s1, s10
                  ori          a3, s1, -315
                  srl          t1, s7, t4
                  sub          s6, t4, t1
                  lui          a3, 522750
                  andi         s7, ra, -1484
                  ori          a2, s3, 1464
                  lui          s1, 493506
                  slti         s7, s6, -401
                  addi         s11, s5, -218
                  ori          s1, t1, 104
                  or           s6, s8, s9
                  srl          s3, s7, a5
                  nop
                  sltu         s10, s3, zero
                  sra          a1, zero, t5
                  or           s7, ra, s8
                  sub          t4, a4, a5
                  xor          a3, s3, s10
                  sub          a2, s5, s8
                  slt          t0, zero, zero
                  srai         a3, s9, 18
                  slti         a0, gp, 1568
                  or           s11, s8, t3
                  srl          t5, t4, s7
                  slli         a3, a1, 22
                  ori          sp, a5, -1140
                  sra          s6, a7, s3
                  and          s9, gp, s8
                  addi         a6, s6, -426
                  sll          gp, t2, a3
                  xor          s5, s10, a7
                  srli         s1, a6, 22
                  andi         s6, s11, 858
                  and          s6, s2, s6
                  slt          t5, s3, tp
                  lui          s5, 529163
                  slt          t0, zero, tp
                  sltiu        s7, s7, 1198
                  xori         s5, s6, -948
                  slt          zero, a4, s1
                  sltiu        gp, s5, 1390
                  sll          s3, a4, t4
                  sltu         a7, t1, zero
                  sll          zero, t6, a5
                  srli         s2, a3, 29
                  srli         s1, gp, 3
                  srl          s9, s5, s8
                  and          a2, t0, s8
                  auipc        t2, 390200
                  srl          t2, zero, s9
                  sub          t1, sp, s4
                  slli         s9, gp, 1
                  srl          s10, t2, s7
                  sll          s3, s0, tp
                  sll          sp, s4, t5
                  slti         s4, s2, 836
                  srl          a1, s3, ra
                  addi         s9, a2, 1872
                  slti         sp, ra, -1951
                  addi         s9, t2, 664
                  sub          a1, s8, t3
                  xor          ra, s2, t2
                  and          s2, a1, t6
                  nop
                  sltiu        t4, a6, -541
                  ori          a6, s8, -1532
                  add          a0, a1, s8
                  srli         a0, a2, 17
                  xori         s0, s9, -467
                  and          zero, a6, s3
                  slli         s6, a0, 16
                  addi         t2, zero, 1995
                  srli         s11, s10, 13
                  and          t4, s9, s3
                  srl          s0, s0, a2
                  srli         t1, a7, 18
                  sub          a1, s1, gp
                  xori         s2, a0, -1828
                  and          t1, t6, t4
                  srai         a2, s0, 25
                  addi         t0, a3, -1065
                  sra          s2, tp, s5
                  sltu         t3, s5, s3
                  sltu         s8, a3, zero
                  sltiu        t1, a1, 412
                  add          zero, s7, sp
                  sltu         a6, a2, a6
                  sltiu        s1, gp, 1609
                  srai         a3, s8, 15
                  slt          t0, a3, s0
                  xori         s3, ra, -333
                  xori         s8, s6, -372
                  auipc        t5, 533287
                  xori         a2, s2, 1613
                  ori          t5, a3, -1985
                  or           s0, s2, a6
                  srli         t5, zero, 20
                  slti         t1, t5, -1385
                  srl          a2, a1, a0
                  srl          s5, s6, s0
                  slti         t4, a1, -1827
                  sltu         t4, s1, a4
                  sltu         a3, s8, sp
                  ori          gp, tp, 1363
                  slti         s2, a6, -190
                  srai         s11, a1, 27
                  srli         s11, a3, 18
                  sra          s5, sp, s4
                  add          s2, s10, a1
                  and          t2, s3, a5
                  srai         a6, a0, 26
                  nop
                  slt          t3, t4, s9
                  auipc        t3, 862967
                  sll          a2, tp, t2
                  addi         gp, t4, 1548
                  lui          zero, 459216
                  addi         s5, s10, 557
                  addi         t5, s4, -1676
                  add          zero, t0, s2
                  addi         s1, t5, -1440
                  sub          s8, t0, zero
                  srl          a3, s3, a0
                  sltiu        s1, a4, -134
                  ori          s0, t6, -1591
                  addi         a6, s7, -1950
                  add          t3, a1, zero
                  sub          s4, t3, s9
                  auipc        a3, 838975
                  slt          a6, s10, a7
                  slti         s6, s8, 407
                  and          t5, s2, s10
                  sltu         s0, a4, t2
                  andi         s10, s3, -1511
                  slli         t4, s1, 21
                  and          s9, s7, a1
                  slli         a1, tp, 12
                  nop
                  slli         s9, s0, 10
                  slli         a3, gp, 14
                  sltiu        zero, zero, -1495
                  lui          s0, 603968
                  sra          t0, a3, s8
                  srl          zero, s3, a5
                  andi         a0, tp, -1123
                  nop
                  addi         a1, a4, 413
                  sub          zero, a3, s4
                  sll          t2, t0, s5
                  add          a2, ra, s9
                  srli         s11, a4, 15
                  lui          t2, 930426
                  xor          s2, a1, s0
                  srl          t2, s0, a5
                  sll          t5, a4, s2
                  srai         s6, a7, 19
                  slli         a1, t5, 22
                  srai         s10, t0, 1
                  andi         t5, s11, -1271
                  sltiu        a1, a6, -1830
                  nop
                  slt          a0, t4, s5
                  sltu         s9, tp, gp
                  xor          a2, a4, a1
                  sltu         a3, sp, a5
                  slt          s1, t2, a6
                  lui          t3, 606766
                  slt          tp, a6, a0
                  ori          s10, s1, -1315
                  nop
                  sltu         s4, t5, s3
                  slt          s0, s9, s4
                  slli         sp, a6, 25
                  sltiu        s9, a4, -331
                  sra          s4, a1, t3
                  and          t1, t2, s1
                  and          gp, ra, s7
                  auipc        a0, 537649
                  srai         a1, s9, 20
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           s9, 0x80000000
                  li           t3, 0x80000000
                  li           a2, 0x769b8d5d
                  li           s1, 0xa6e53bdc
                  li           s10, 0xffffffff
                  li           s7, 0x80000000
                  li           gp, 0xd877a3f9
                  li           s6, 0x9b1157c9
                  li           t2, 0xffffffff
                  lui          s1, 1037505
                  nop
                  add          s10, s9, t3
                  addi         t5, s9, -646
                  nop
                  lui          s6, 523010
                  sub          a2, t3, a2
                  auipc        s7, 105316
                  nop
                  auipc        t5, 298815
                  add          s7, t2, s7
                  nop
                  addi         s9, s9, 1599
                  add          s1, s9, t5
                  add          t2, a2, t3
                  add          gp, s9, s1
                  auipc        s9, 716973
                  lui          s1, 308641
                  nop
                  nop
                  lui          gp, 984801
                  lui          t3, 275545
                  addi         gp, a2, -1974
                  lui          s1, 795887 #end riscv_int_numeric_corner_stream_29
                  srai         s10, s9, 10
                  sll          s9, s10, a4
                  xor          gp, s10, s4
                  slli         s10, s9, 13
                  sra          s11, t6, a7
                  and          t4, t0, t4
                  add          s0, t3, tp
                  xori         tp, s8, 1792
                  slt          a7, a0, a4
                  or           t4, a0, s0
                  sltiu        t2, ra, -1672
                  addi         a2, a4, -1275
                  nop
                  slti         t4, a3, -645
                  addi         s7, a0, 867
                  sub          s11, s5, t6
                  srl          t3, s0, t2
                  nop
                  xori         gp, gp, 244
                  sra          a1, a2, a5
                  slt          zero, s10, s5
                  andi         t4, tp, 1274
                  xori         a3, s4, -1462
                  or           s4, a4, sp
                  nop
                  addi         a1, a3, 693
                  nop
                  slli         t0, a1, 15
                  sra          t5, t1, s11
                  sra          t1, s3, t6
                  and          t3, s6, s8
                  srli         a1, t5, 16
                  andi         s11, a2, 897
                  andi         a2, zero, 104
                  srl          s5, sp, s5
                  xor          t3, a3, ra
                  sltiu        s8, s5, -976
                  sub          ra, a6, s0
                  sra          s1, t0, a3
                  srl          a2, t0, s4
                  lui          t0, 44395
                  srl          t4, t4, s4
                  srai         t2, a6, 8
                  slti         a2, a0, -839
                  srl          s9, t2, s3
                  sra          s4, t0, ra
                  lui          t0, 110957
                  lui          a1, 95185
                  addi         s11, t5, 2037
                  sra          sp, a0, t4
                  srai         s6, a5, 14
                  slti         t3, s3, -187
                  ori          s8, a0, 1724
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s5, 0x0
                  li           s9, 0x7c8d455e
                  li           s8, 0xffffffff
                  li           s11, 0x80000000
                  li           s1, 0xffffffff
                  li           t1, 0x80000000
                  li           s3, 0xd82e30b0
                  li           tp, 0x0
                  li           a0, 0x0
                  lui          s8, 661681
                  auipc        s8, 190036
                  sub          tp, s8, tp
                  lui          s8, 805828
                  sub          s5, s8, s11
                  addi         s11, s1, -1752
                  auipc        s7, 889792
                  auipc        s5, 128600
                  lui          s9, 112695
                  add          tp, a0, s11
                  sub          s5, s11, s5
                  add          s1, s1, a0
                  nop
                  add          s5, a0, a0
                  auipc        s3, 270556
                  lui          t1, 494116
                  auipc        s1, 69764
                  nop
                  nop #end riscv_int_numeric_corner_stream_5
                  sll          s4, tp, t5
                  srai         tp, gp, 21
                  xori         sp, t2, 607
                  nop
                  slti         t3, ra, 1230
                  xori         t1, s3, -1930
                  addi         t5, s2, -412
                  and          t2, tp, gp
                  auipc        tp, 61484
                  auipc        sp, 694464
                  srli         s7, tp, 14
                  srl          s9, s3, a7
                  sltiu        ra, s3, 1560
                  add          a7, s5, s2
                  slli         s3, a6, 1
                  ori          s8, tp, -1390
                  xori         s9, t6, -1825
                  sltiu        a6, t0, 1029
                  nop
                  srl          a7, s2, t0
                  srai         a2, a0, 31
                  addi         t5, a5, -400
                  slli         s10, s0, 5
                  srai         a0, s8, 3
                  slli         s3, a0, 21
                  srai         sp, s7, 11
                  xor          a0, t0, ra
                  and          s9, a0, a5
                  sub          s10, t3, a5
                  or           t0, s8, zero
                  add          a1, s11, zero
                  xori         s8, a2, 1335
                  srl          s10, a7, s10
                  nop
                  ori          t2, s2, -1995
                  xor          s9, t6, a0
                  add          t2, s9, s5
                  add          s9, t6, a7
                  srai         t1, zero, 27
                  srai         s10, gp, 7
                  srli         a0, ra, 8
                  slli         s6, tp, 18
                  srai         t2, s7, 19
                  addi         t5, a4, -913
                  slti         t4, a4, 325
                  slti         s4, a2, 543
                  lui          s6, 14999
                  or           ra, s5, s5
                  sltiu        t5, t1, 1166
                  nop
                  andi         s6, s9, -571
                  and          t1, s8, t6
                  sub          t4, s4, sp
                  andi         a2, ra, 342
                  sltu         t0, s9, t2
                  slt          s4, t3, s6
                  srl          s6, a2, s6
                  slti         s2, t2, 21
                  sltu         zero, t0, sp
                  andi         zero, a2, 1250
                  auipc        tp, 344749
                  nop
                  and          t4, s6, s7
                  lui          s4, 456091
                  sltu         s1, sp, t5
                  srl          t4, a4, t2
                  nop
                  srli         s2, a1, 0
                  andi         gp, t1, 267
                  slt          zero, a0, s9
                  slt          sp, s3, tp
                  sra          s8, s2, a2
                  and          s8, s3, t1
                  lui          a7, 276105
                  sub          s6, zero, t0
                  sub          s3, a1, s8
                  auipc        t1, 958263
                  nop
                  sra          t1, t4, t4
                  nop
                  addi         tp, tp, 415
                  sra          t0, a7, t5
                  addi         s4, s8, 954
                  lui          s9, 150575
                  andi         sp, sp, -709
                  slt          s4, a0, t1
                  nop
                  xori         t4, a1, -1575
                  sra          a0, a0, s2
                  slt          s4, t6, t1
                  xor          gp, t4, t0
                  and          tp, a3, ra
                  slti         a2, tp, -1851
                  sll          t2, s10, t3
                  srli         s4, t0, 30
                  sll          a1, s6, sp
                  andi         t1, a4, -678
                  ori          zero, t3, -1985
                  xor          t2, s2, s4
                  ori          ra, ra, 1783
                  sll          t5, t4, a3
                  slt          ra, a5, t6
                  addi         t3, t0, 696
                  xori         s8, s10, -918
                  ori          t1, t3, 1290
                  slli         a0, a1, 0
                  sub          t1, s3, s7
                  auipc        a7, 855689
                  slli         t0, tp, 0
                  lui          a7, 905994
                  sltu         s5, t6, s3
                  sltiu        sp, a1, -1803
                  slli         a1, t1, 25
                  sra          ra, zero, a4
                  srl          t5, s0, s8
                  slli         s9, s0, 4
                  srl          a7, s6, t6
                  ori          a6, gp, 1314
                  nop
                  auipc        t5, 598321
                  sll          s10, s5, a3
                  lui          s11, 825448
                  xori         s2, a4, -1312
                  ori          a3, s7, 1843
                  xor          sp, t1, s4
                  srli         a1, s0, 18
                  slt          s6, t3, s10
                  auipc        a7, 417050
                  sub          s11, s2, a3
                  srli         tp, a2, 24
                  sll          t4, s0, tp
                  sub          a6, s11, a0
                  sltu         s11, s2, s2
                  or           s2, t0, a3
                  srli         t1, s0, 18
                  or           s9, a1, a3
                  slli         t5, s2, 5
                  or           t1, t4, sp
                  ori          a7, s3, -1467
                  sub          s2, s11, a0
                  sll          s2, t4, s9
                  xor          zero, a1, s11
                  sll          s7, s3, a4
                  or           a2, tp, s9
                  and          a2, a6, s3
                  ori          s10, s11, 1934
                  sra          s1, gp, s4
                  addi         t0, t4, 301
                  srli         s6, s0, 2
                  srl          s11, a3, t1
                  xor          a2, a3, s3
                  slti         s11, a5, 2043
                  ori          a3, gp, 697
                  add          s10, sp, a0
                  add          tp, s10, s7
                  sll          tp, a2, a3
                  sub          t0, sp, t4
                  add          s2, t3, t3
                  addi         s9, t6, -1951
                  slt          a0, a2, s10
                  or           t0, t5, s6
                  sltu         s3, a4, t4
                  xor          t0, gp, s2
                  sltiu        ra, gp, -1076
                  addi         t2, t6, 1134
                  xor          s10, t6, tp
                  addi         s11, s6, -1999
                  sltu         s6, a6, s10
                  srl          ra, t1, a0
                  auipc        t4, 680586
                  andi         s6, t4, 37
                  slt          s9, s10, t1
                  srli         a2, a1, 1
                  srai         t4, a0, 27
                  or           a1, s3, t5
                  slti         t1, s2, 189
                  and          a7, s0, t1
                  sub          a6, a4, t4
                  addi         t4, ra, -1895
                  slli         zero, s2, 29
                  sub          t1, a2, t2
                  xori         a1, s10, -1283
                  or           t5, a0, s10
                  sll          a3, s10, a1
                  andi         s8, t4, -381
                  sll          s0, t6, s0
                  auipc        t1, 538313
                  srai         a3, s8, 6
                  sub          a3, t4, sp
                  srl          s11, sp, a4
                  sltiu        s2, t4, 795
                  and          a0, sp, s4
                  or           s11, t4, t3
                  ori          ra, t5, -108
                  xor          t1, a2, ra
                  sra          s10, a4, a1
                  srli         s0, zero, 29
                  nop
                  or           t0, a5, t3
                  ori          s10, s9, 1991
                  and          t4, a7, s3
                  sll          t1, a4, s2
                  nop
                  sub          gp, a1, s5
                  xor          ra, t1, t3
                  nop
                  srai         s1, gp, 31
                  and          a6, s4, t4
                  srai         tp, tp, 19
                  slti         s5, a6, -1109
                  slli         s0, s11, 17
                  xori         s1, t6, -919
                  slti         t2, t0, -1208
                  xor          zero, s7, s4
                  srl          tp, a5, s7
                  xor          a7, t3, s10
                  slli         a2, s6, 29
                  slt          s5, t2, t2
                  nop
                  andi         a2, a4, 2041
                  sltiu        a6, a3, -1520
                  srli         s3, t3, 0
                  auipc        s1, 944414
                  and          t0, zero, gp
                  sltiu        tp, t5, -1921
                  auipc        s8, 262750
                  sra          t2, s11, t3
                  sltu         s10, a3, s1
                  slti         s7, s10, 1192
                  srai         t2, s1, 8
                  sub          s1, s1, t6
                  nop
                  sltu         t5, a5, tp
                  sll          a1, t6, a4
                  sll          s10, a6, s2
                  addi         s5, s11, 509
                  slti         a0, t5, -1553
                  or           t2, tp, a1
                  sll          zero, a2, s0
                  srai         a7, a4, 23
                  slt          tp, a6, s0
                  slti         s5, t4, 1609
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           a6, 0x75848fd
                  li           a0, 0xca06c25b
                  li           s10, 0x80000000
                  li           gp, 0x74d0bec
                  li           s2, 0x0
                  li           t3, 0x80000000
                  li           ra, 0x80000000
                  li           sp, 0x0
                  li           a7, 0x3290d140
                  lui          ra, 761275
                  sub          t3, t3, t3
                  auipc        ra, 864922
                  sub          gp, t3, ra
                  addi         t3, a6, -648
                  auipc        a6, 779304
                  nop
                  nop
                  nop
                  sub          s10, t3, t3
                  lui          sp, 89010
                  nop
                  add          s2, a6, s10
                  nop
                  addi         sp, s11, 1752
                  sub          s10, s10, a6
                  add          sp, t3, s10
                  sub          ra, s11, gp
                  lui          s2, 830336
                  lui          gp, 663589
                  addi         gp, t3, -316
                  add          ra, s10, ra
                  sub          t3, a6, s10
                  lui          t3, 759444
                  add          t3, t3, a0
                  sub          a7, s11, gp
                  sub          sp, t3, gp #end riscv_int_numeric_corner_stream_39
                  auipc        s10, 632843
                  or           a7, s1, t3
                  srli         t1, a2, 15
                  sltiu        t1, ra, 1620
                  andi         tp, t2, -1360
                  srai         s7, s4, 2
                  slt          s4, a1, a5
                  ori          s0, s9, -1698
                  addi         t2, s4, -211
                  xor          s8, a1, s6
                  ori          gp, t5, -970
                  addi         s7, s9, -370
                  slli         s8, t2, 15
                  xori         s0, t1, 518
                  ori          sp, s8, -1480
                  sub          t2, a1, s2
                  slli         s11, s2, 23
                  xor          a2, a6, zero
                  slt          gp, s3, s5
                  ori          gp, a6, 568
                  xor          s4, s10, a6
                  slti         s11, a2, -1960
                  nop
                  xor          zero, s1, s6
                  slti         s8, s3, 977
                  xori         t3, a0, -1033
                  srli         s9, s6, 31
                  sra          t4, t5, t0
                  srai         s3, gp, 9
                  slli         s9, s4, 21
                  addi         t5, a2, 546
                  nop
                  sll          ra, a3, t0
                  nop
                  sll          a2, s7, s11
                  ori          t5, s2, 1565
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           ra, 0x0
                  li           a2, 0xd4eaf7a
                  li           s6, 0x0
                  li           a6, 0xffffffff
                  li           t5, 0xde53fd08
                  li           s0, 0x0
                  li           t1, 0x0
                  li           s2, 0xffffffff
                  li           s1, 0x80000000
                  add          t5, s2, a2
                  sub          t1, s2, ra
                  addi         s6, t1, -634
                  lui          t5, 761490
                  addi         s1, s0, 1067
                  nop
                  sub          ra, s6, a2
                  add          s1, t1, s1
                  sub          t1, s0, a2
                  addi         t1, ra, 376
                  addi         s2, t0, 459
                  auipc        ra, 130153
                  sub          t5, s1, s2
                  lui          s1, 18873
                  nop
                  sub          s2, a2, s0
                  auipc        s6, 585748
                  auipc        s1, 895897
                  add          s2, t5, s2
                  addi         s0, t5, 925
                  sub          s1, t5, s6
                  auipc        s1, 480093
                  add          t5, s1, t1
                  sub          s6, t5, s2
                  auipc        t5, 4287
                  auipc        t5, 24250
                  sub          ra, t5, s0
                  lui          t5, 569343 #end riscv_int_numeric_corner_stream_36
                  sub          a1, zero, s11
                  ori          t4, a5, -1710
                  srai         s3, a2, 17
                  nop
                  sub          gp, s11, sp
                  or           a1, sp, s5
                  addi         s9, zero, -99
                  sra          s8, a1, t3
                  andi         s0, s0, 1763
                  xori         t4, s0, 1264
                  auipc        t5, 398619
                  lui          s2, 661718
                  nop
                  srai         s8, a4, 9
                  sltiu        s11, s2, 356
                  addi         t5, s2, 886
                  andi         s8, sp, 1547
                  sll          ra, s10, t2
                  andi         a3, s4, -725
                  ori          s0, s0, -68
                  sltu         a7, ra, s3
                  nop
                  or           a3, t0, a6
                  lui          s7, 1045190
                  xor          a1, s4, t0
                  and          s11, sp, s5
                  or           a0, s7, s8
                  slt          s1, a6, t1
                  slli         s11, t1, 19
                  sltiu        t4, t6, 1638
                  xori         s0, sp, -1311
                  ori          zero, a5, 1692
                  slli         s11, zero, 29
                  xori         zero, s3, -1236
                  slt          gp, s5, a6
                  xori         s4, s3, 421
                  nop
                  slti         t0, a1, -2029
                  or           s8, s11, t1
                  xori         t1, s0, 1626
                  add          t4, a7, t1
                  sll          t1, a4, a7
                  andi         tp, a2, 1660
                  srai         a6, s2, 23
                  and          sp, s5, tp
                  sltu         s1, s10, s8
                  addi         t5, t1, -1851
                  sltu         t2, s6, a5
                  auipc        a1, 660914
                  auipc        t3, 647514
                  auipc        sp, 797642
                  srl          s5, zero, s1
                  srai         t0, s1, 17
                  sub          s7, s3, t6
                  srli         a2, a6, 6
                  sltiu        s9, s10, -900
                  slli         s1, a3, 10
                  addi         s3, tp, 1773
                  auipc        t0, 510716
                  srli         a3, s9, 23
                  srai         a2, a7, 4
                  slti         t1, a4, 504
                  slt          t5, t6, tp
                  slt          s0, s1, s6
                  xori         s3, s2, -1629
                  slti         t4, s8, 772
                  sra          a7, s3, a0
                  srli         s7, zero, 5
                  add          gp, t1, s10
                  andi         s2, a7, 625
                  slli         s3, s11, 30
                  sltiu        s7, s8, 1628
                  slti         s10, s1, -2013
                  ori          s8, a2, 1278
                  srli         t1, a2, 20
                  sll          ra, t5, s5
                  ori          s0, a3, 430
                  sra          s6, a2, s2
                  ori          t0, t5, 1884
                  auipc        t5, 48030
                  and          zero, s11, s7
                  ori          s7, s6, -289
                  sltiu        gp, s3, -194
                  auipc        a2, 1028633
                  slli         s4, a7, 12
                  srai         t4, t5, 4
                  slli         a1, s4, 5
                  andi         tp, a7, 1970
                  nop
                  and          s2, s7, a6
                  sub          t3, a0, s4
                  slt          ra, s4, s6
                  sra          s9, s3, s1
                  xor          ra, s1, a5
                  lui          t0, 903309
                  andi         t1, s6, -1409
                  auipc        zero, 321950
                  xori         s11, s0, 649
                  sub          t2, t5, t2
                  and          s10, t1, s3
                  lui          s8, 17632
                  xori         t4, s5, -1943
                  lui          zero, 775273
                  xori         a1, t1, 1231
                  slt          s9, s3, a2
                  sltu         s6, t4, gp
                  sra          s3, s5, s3
                  xor          tp, s2, t5
                  addi         s9, ra, 568
                  sltiu        s11, a5, -420
                  slt          a0, s10, s6
                  sub          a3, zero, a5
                  sltiu        t2, t6, 1462
                  xori         s10, s2, 363
                  sra          tp, a1, a3
                  auipc        s4, 190813
                  ori          s6, ra, 1678
                  slti         a1, s8, -1862
                  addi         ra, t6, 154
                  srai         a1, s0, 28
                  sra          s11, t4, t5
                  xor          s10, s5, zero
                  xori         s5, s4, 1014
                  nop
                  slt          tp, a7, zero
                  or           a0, s8, s0
                  slt          s4, s7, t3
                  auipc        a6, 161916
                  add          t0, a1, s1
                  addi         ra, t1, 1225
                  xori         s0, s10, 781
                  srai         s10, s3, 4
                  auipc        s5, 945780
                  addi         s8, t2, -461
                  xori         a3, sp, -675
                  xor          s1, sp, s11
                  srai         t3, a6, 16
                  srl          tp, t0, s5
                  and          tp, s4, s1
                  slt          s11, a0, t0
                  sra          sp, t5, ra
                  slli         s2, tp, 14
                  sltu         t5, t4, s0
                  xor          s8, a4, s4
                  sub          s7, a4, s5
                  sra          ra, t0, a7
                  sltiu        t3, t4, -1135
                  sltu         s11, gp, s10
                  slt          a6, a5, s6
                  nop
                  xor          a6, t6, s10
                  sub          a3, ra, a5
                  xori         s11, s3, -1296
                  or           a6, s9, t6
                  sltu         s7, a1, s2
                  slti         t2, t1, -1064
                  auipc        t0, 728116
                  add          s10, s3, ra
                  addi         tp, zero, -35
                  ori          s0, s1, 553
                  sltiu        s3, s5, 1880
                  srli         a0, a5, 20
                  srli         s0, t0, 13
                  or           s1, t3, t0
                  sltu         t3, sp, t3
                  xor          s11, a1, a4
                  sub          s0, t6, s6
                  srli         a7, t1, 5
                  srl          s3, a1, s7
                  srli         sp, a0, 20
                  add          t5, s2, s7
                  sll          a3, s0, a4
                  sltu         ra, s0, tp
                  slt          s6, s1, s4
                  and          s1, s4, a2
                  ori          a7, a0, -1121
                  sra          ra, a4, s3
                  sltiu        t4, a4, -1787
                  sltiu        t5, a4, 1452
                  nop
                  lui          ra, 289292
                  slti         s5, a6, 510
                  auipc        s3, 936280
                  nop
                  srl          t3, s10, s0
                  sub          t0, t2, s1
                  sra          t5, a0, a0
                  and          t0, s3, a7
                  add          t5, t3, s10
                  sra          s10, s0, a5
                  xori         s11, s5, -1075
                  addi         s2, s7, 764
                  xor          t4, a3, t2
                  sltu         zero, s10, s5
                  slt          t2, s9, s10
                  sltu         s10, s4, t1
                  slti         s6, s7, 209
                  andi         a0, a0, 1254
                  ori          a3, s0, 1180
                  sll          t2, ra, a2
                  add          a3, a0, a7
                  lui          t5, 203380
                  sltu         s11, t2, a4
                  sub          a2, a6, t1
                  sltu         s4, tp, t1
                  slt          t0, a7, a7
                  ori          s3, s2, -578
                  sltiu        t3, s8, -1137
                  sltu         a1, gp, s9
                  sra          a7, s11, t0
                  and          s5, gp, a5
                  or           s3, tp, a6
                  srli         s6, t5, 2
                  slt          gp, a4, zero
                  add          sp, ra, a1
                  srli         s3, zero, 10
                  add          s7, t5, s7
                  sll          t1, a1, t3
                  slt          t0, t6, s3
                  addi         s1, a5, 1469
                  andi         a0, t3, -1145
                  sltiu        s10, a1, -628
                  andi         s1, t6, -1446
                  slti         t2, s5, -895
                  andi         s10, a4, -649
                  andi         a2, gp, -122
                  sltiu        a6, s0, 1633
                  xori         s9, t0, 343
                  xor          t1, s0, s3
                  slt          s8, s2, s4
                  srl          s7, s9, a2
                  sra          s10, a4, a4
                  nop
                  auipc        t3, 399777
                  srai         gp, t0, 22
                  sll          a1, a5, t2
                  addi         t5, ra, -1288
                  nop
                  slli         a7, t6, 26
                  ori          s0, s6, -504
                  sll          s9, s2, t0
                  addi         a6, a5, 113
                  or           s7, t3, s3
                  sltiu        s1, s0, -477
                  sltiu        t0, a6, -5
                  ori          s7, s1, -283
                  slli         s0, t6, 25
                  auipc        t3, 415295
                  sltiu        t3, a2, 701
                  sltu         t2, tp, t6
                  xori         t4, gp, -2025
                  nop
                  srl          s3, s8, t3
                  srai         t1, t3, 2
                  srli         a3, s8, 11
                  lui          s7, 258060
                  xor          t4, s4, s3
                  sll          s9, zero, t4
                  sltu         s10, s9, s2
                  and          s9, a5, t4
                  add          s8, s9, s2
                  slt          t1, a6, t1
                  add          t4, a7, s9
                  addi         s1, a1, -1520
                  xori         zero, s1, 1850
                  xori         ra, tp, -988
                  and          zero, s5, tp
                  lui          s6, 805941
                  srli         t4, tp, 11
                  srl          t4, a0, t2
                  sltiu        gp, s8, 666
                  slli         s1, s8, 17
                  addi         a3, s10, 1912
                  andi         t0, gp, 512
                  add          zero, a4, s6
                  xor          a2, a0, a0
                  nop
                  lui          s2, 806852
                  slti         t3, a1, -317
                  xori         tp, t1, -1153
                  xori         s7, t0, -943
                  srli         s0, a2, 24
                  or           a2, t3, gp
                  srai         tp, t2, 1
                  slli         a7, a4, 27
                  and          ra, zero, s8
                  andi         ra, zero, -730
                  addi         t1, s8, -197
                  add          a0, a1, t6
                  or           s11, a6, s3
                  sltu         t0, s1, zero
                  lui          s2, 134132
                  sll          t2, s1, a4
                  ori          sp, t1, 249
                  sll          a1, a6, t0
                  sra          t0, s10, t5
                  slli         s10, a2, 23
                  lui          s4, 535944
                  sltiu        s8, s5, 989
                  srai         s10, s3, 31
                  addi         zero, s8, -513
                  xor          t2, s8, ra
                  addi         a2, s9, -1400
                  ori          t2, s8, -725
                  srli         tp, t0, 4
                  and          tp, s4, s10
                  slli         s7, a5, 27
                  auipc        a1, 118493
                  slt          t1, a7, a7
                  slt          a3, t1, s0
                  auipc        s10, 1023817
                  xori         zero, s7, 1416
                  srli         a0, a3, 15
                  lui          a1, 192538
                  sll          s7, s8, t2
                  slli         s0, sp, 27
                  ori          a1, a6, -2033
                  sltiu        a7, t0, -1222
                  addi         s8, s4, -1567
                  slt          a3, gp, s6
                  ori          s10, a6, -1376
                  srai         a2, t1, 9
                  srli         s3, s11, 13
                  auipc        s5, 511883
                  srl          s1, a5, gp
                  sub          a0, s9, gp
                  srli         t4, a3, 22
                  addi         s11, a6, -39
                  slt          s11, s3, s11
                  xori         t1, sp, -769
                  auipc        s0, 721365
                  or           s4, s9, t4
                  nop
                  or           s7, a7, t5
                  slt          a1, a2, t3
                  srli         tp, s3, 30
                  xori         s1, tp, 630
                  slli         tp, t2, 7
                  lui          t1, 581916
                  xori         s5, s5, 1282
                  srl          ra, s9, t0
                  srl          sp, a1, t2
                  slli         a7, a0, 24
                  slt          s7, s5, zero
                  sll          t0, s11, s1
                  add          s7, a2, s5
                  xori         a1, s7, -69
                  srl          s1, s9, t5
                  srl          s2, s6, s6
                  sub          s6, t4, a5
                  xor          gp, s11, t1
                  srai         s3, t0, 23
                  xor          t4, s4, s10
                  addi         s3, t5, 1473
                  srli         t4, t1, 3
                  ori          s6, a5, 1266
                  slli         a3, a1, 23
                  and          t3, ra, t4
                  xor          s7, s9, s10
                  sltiu        t2, s1, -1323
                  xori         s4, t6, 1464
                  auipc        s10, 376000
                  srli         t0, a0, 27
                  sra          a0, t0, a6
                  lui          t4, 494563
                  sra          a0, t3, s11
                  addi         a2, tp, -1994
                  auipc        sp, 224200
                  srai         s0, s11, 25
                  or           t1, s2, s11
                  xori         s9, t0, 634
                  sub          s11, t1, s5
                  andi         zero, gp, 1957
                  lui          s10, 354055
                  slt          t5, ra, t0
                  sltu         tp, a2, s8
                  lui          tp, 965979
                  srai         t4, s8, 23
                  andi         a3, a4, 250
                  add          s0, s7, t5
                  or           t4, t2, t0
                  or           s3, s1, a7
                  srl          s2, a0, t5
                  sll          s1, s8, s2
                  lui          t2, 495404
                  sltiu        s6, t6, 882
                  auipc        s6, 116881
                  sra          a1, gp, a7
                  srl          t3, s8, t2
                  lui          t2, 233967
                  auipc        gp, 548421
                  and          t5, s3, s5
                  and          a0, tp, s0
                  add          s10, s2, s6
                  srl          a2, t5, s6
                  and          zero, t1, a2
                  sll          t1, s4, s6
                  sra          s8, s11, t5
                  xor          t0, a2, t5
                  andi         s2, s5, 429
                  slli         tp, a4, 2
                  slti         sp, sp, -892
                  or           s11, a3, a4
                  slti         zero, gp, -287
                  xor          s7, t6, s9
                  srai         t1, s2, 12
                  slli         s5, t3, 26
                  or           t5, t1, s11
                  srai         s9, s11, 8
                  sltiu        t0, a2, -635
                  lui          s11, 346513
                  andi         a7, s5, -1954
                  xor          ra, ra, t4
                  srli         t3, s5, 19
                  slt          zero, zero, tp
                  ori          t5, t1, -1364
                  xor          s5, sp, s10
                  sub          s8, a1, a5
                  xor          s2, t6, gp
                  slt          s5, tp, a7
                  nop
                  auipc        s2, 208567
                  srli         s11, t6, 12
                  or           t3, s7, a0
                  or           gp, t5, a3
                  nop
                  or           a1, a2, s8
                  sub          tp, s0, t0
                  sra          s1, s4, a5
                  slti         a2, t0, 574
                  lui          s2, 131235
                  auipc        a7, 997318
                  auipc        gp, 72463
                  nop
                  sll          a3, s3, s1
                  or           t4, ra, t5
                  slli         gp, tp, 24
                  srli         a3, t1, 9
                  srli         t1, t3, 11
                  slli         s5, s10, 10
                  slti         a2, s7, -648
                  srli         a7, s1, 20
                  lui          t2, 307984
                  andi         t2, s4, 1163
                  addi         s2, sp, 626
                  and          a1, t2, s0
                  slli         zero, t4, 26
                  auipc        a6, 817942
                  addi         s7, t4, 388
                  srl          s7, a3, gp
                  andi         s7, a4, 170
                  slti         s4, t0, -1426
                  sltu         t1, a2, s10
                  slli         zero, a3, 18
                  and          s11, s8, s8
                  srai         s4, gp, 0
                  srai         t5, s7, 20
                  sll          a0, t3, tp
                  slt          s4, a4, s9
                  auipc        a1, 10104
                  sub          gp, t0, t0
                  srl          s6, s1, gp
                  or           a2, s11, sp
                  sll          s0, t6, s0
                  srai         a3, a3, 1
                  auipc        t4, 332669
                  slti         t1, a7, -459
                  sltiu        s3, a5, -1156
                  add          s6, zero, s11
                  srl          s5, a7, s3
                  xori         sp, a1, -601
                  addi         t2, zero, 287
                  srli         s10, t1, 7
                  slti         s4, t5, 819
                  xori         t1, a5, 165
                  srl          t4, t5, t5
                  xor          s8, a6, s4
                  nop
                  srai         gp, a4, 22
                  lui          a1, 467125
                  nop
                  andi         t1, s4, 1549
                  srai         s2, sp, 15
                  nop
                  or           s3, a6, t6
                  sltiu        s2, a4, 1524
                  sll          t0, s9, a6
                  srli         s1, a7, 7
                  slt          t1, t5, s7
                  xor          s3, t6, t2
                  and          s1, s8, tp
                  add          sp, s3, gp
                  srl          tp, s8, tp
                  xor          t2, s3, sp
                  srai         t3, s11, 22
                  slt          s10, s6, t6
                  auipc        a2, 405069
                  srl          s4, zero, s6
                  srl          a7, s10, s5
                  lui          s7, 376736
                  slti         a7, a2, -515
                  srl          sp, a6, s2
                  slt          t4, s4, a5
                  slli         s2, s9, 17
                  and          sp, s10, s2
                  auipc        s10, 966095
                  srai         t2, a0, 30
                  srl          t1, t5, s2
                  srl          a2, s5, t4
                  and          tp, zero, a4
                  sltu         t2, ra, s11
                  or           s2, a6, a4
                  lui          s5, 267337
                  xori         s7, t5, 580
                  ori          t2, ra, 952
                  sll          t2, t6, s1
                  srli         s5, s1, 28
                  srl          a3, t4, s0
                  andi         s3, s10, 2026
                  sub          sp, a5, s4
                  andi         sp, s1, -1535
                  sub          t2, s3, t3
                  xor          s10, t2, s10
                  slti         t3, gp, -1509
                  or           t4, s1, s7
                  and          s7, t4, s5
                  xori         t0, tp, -1991
                  and          t5, a6, t6
                  sltiu        t5, gp, 1266
                  addi         t2, a4, -776
                  auipc        t5, 991893
                  ori          s0, a0, -1478
                  add          t2, s1, s5
                  addi         ra, gp, -1285
                  srl          s6, s10, t5
                  sltu         s7, sp, s8
                  sub          a7, a0, t1
                  add          a0, t2, t2
                  sltiu        t5, zero, 325
                  addi         a2, t5, 604
                  srai         s5, a2, 14
                  addi         t1, s3, 153
                  slti         gp, a3, -984
                  srl          s5, t5, a1
                  and          t5, s10, s2
                  sra          s6, a6, gp
                  lui          s9, 667056
                  auipc        s11, 1042795
                  sub          a2, a0, t5
                  and          s11, a0, tp
                  andi         t1, a5, -682
                  sltu         a3, zero, a4
                  srl          t1, s7, a2
                  sub          t5, a0, s2
                  and          t5, s1, sp
                  xori         a2, s1, 356
                  and          s11, s9, s10
                  sltu         ra, s2, a5
                  ori          s8, t4, -516
                  srai         a2, s9, 20
                  ori          s5, a0, 680
                  nop
                  sltiu        sp, zero, 1803
                  sltu         s1, s9, t4
                  nop
                  xori         sp, zero, 711
                  auipc        ra, 639832
                  slt          s0, a0, a4
                  slt          t4, s10, t5
                  sltu         s7, s9, s10
                  sltiu        s10, tp, -558
                  nop
                  add          a0, a3, s8
                  sll          t2, a4, t0
                  srli         s3, t5, 19
                  auipc        s0, 751724
                  srai         s6, t4, 19
                  sra          t3, gp, t4
                  xor          ra, s1, s11
                  srai         s1, t0, 13
                  ori          t0, t6, 1656
                  srai         s5, t5, 5
                  srai         a6, a4, 30
                  sltiu        s1, s5, 836
                  slti         t0, s7, 1196
                  and          gp, s2, s2
                  sub          a2, t4, t5
                  andi         s11, s5, 1657
                  sltu         t5, t0, t1
                  sltu         zero, t0, a0
                  srl          s8, s4, zero
                  add          s0, t2, s7
                  srl          s3, t6, s2
                  andi         a7, t1, -134
                  slt          a6, a0, s8
                  sltiu        a2, tp, -1981
                  ori          t3, s1, 173
                  auipc        tp, 117806
                  srli         s1, a0, 22
                  addi         s7, sp, 81
                  add          sp, t2, t5
                  ori          a0, s6, -1860
                  lui          t4, 280556
                  addi         s4, t6, 1810
                  or           s5, s9, s4
                  srai         a2, t4, 14
                  add          s8, a0, t1
                  srl          s4, s8, s10
                  sll          t1, t3, s8
                  sub          tp, s11, sp
                  sltu         zero, t0, t6
                  srli         a1, ra, 18
                  lui          s0, 590178
                  sll          t2, s9, a1
                  slt          t1, a1, a2
                  lui          s10, 485607
                  addi         a1, t3, -1159
                  srl          t4, a0, a3
                  srai         s7, s3, 19
                  srli         zero, t4, 0
                  add          s0, t2, t6
                  sub          ra, s3, t0
                  auipc        s9, 117179
                  andi         t2, t6, -1807
                  auipc        a3, 467752
                  srai         a1, s8, 18
                  srai         s9, s2, 0
                  sub          a2, a1, t0
                  auipc        t5, 187895
                  xor          s0, s4, ra
                  sltiu        gp, s0, -358
                  nop
                  or           s0, a3, t2
                  slti         t2, s3, -1087
                  srl          s5, t0, a4
                  xor          s0, a3, s10
                  sra          s3, t6, t1
                  sra          t0, a3, tp
                  sltu         s10, s9, s2
                  sltiu        t3, a6, 1089
                  or           t4, t1, s2
                  srl          tp, s10, t4
                  slt          s9, gp, s2
                  srl          a7, t6, s8
                  nop
                  ori          t5, t5, 1368
                  slti         a0, s10, -982
                  slli         a0, s11, 31
                  sltu         t5, s2, t1
                  add          sp, t3, s4
                  slli         ra, t5, 5
                  slti         s3, s1, -1973
                  sltu         sp, s5, a6
                  addi         s1, s11, 958
                  xori         t5, zero, -787
                  and          t1, t1, a1
                  ori          s0, s8, 1330
                  andi         t4, s1, 1634
                  and          t4, s7, tp
                  srl          t3, t2, a5
                  xori         t5, a6, 1475
                  add          s1, a3, a1
                  sll          a3, gp, a6
                  lui          s3, 563280
                  sltu         gp, t5, t0
                  sltu         s2, s0, zero
                  and          t4, s0, t6
                  sra          s11, s10, t5
                  sltu         a1, a5, s5
                  slti         a6, t5, -1927
                  slli         gp, a5, 13
                  sltiu        s6, s1, 659
                  or           s6, s5, a6
                  srai         ra, s1, 31
                  xor          t0, s0, s1
                  srai         a3, a3, 24
                  sub          a6, a4, s2
                  and          sp, a4, s10
                  sra          s0, s6, t5
                  xori         t2, s8, 73
                  sll          s1, t1, s5
                  slt          t2, a4, a1
                  and          a1, s8, a7
                  sltiu        s11, s0, 1014
                  srl          s6, s3, a4
                  or           s6, s8, s8
                  xori         ra, t0, -484
                  srai         s11, sp, 14
                  nop
                  lui          s4, 839185
                  andi         s10, a6, 1339
                  sll          s2, s2, t4
                  auipc        ra, 232873
                  sltiu        t2, a5, 614
                  slli         s10, s5, 1
                  auipc        t5, 31643
                  ori          s7, a7, -757
                  auipc        t2, 52647
                  sra          a7, a0, t1
                  andi         t0, s5, 1380
                  sub          s7, s10, tp
                  srli         s11, t2, 27
                  srl          s4, s9, s2
                  and          a1, s1, a4
                  slti         gp, s4, 1018
                  srl          a3, a7, a4
                  srl          s10, t2, a1
                  slti         s7, s4, 764
                  nop
                  xori         s8, s5, 1924
                  add          s10, t6, t1
                  sra          t2, t4, t5
                  sltu         tp, s8, a3
                  sra          s0, sp, zero
                  and          sp, sp, s0
                  sll          a3, tp, t2
                  lui          t5, 715389
                  xori         tp, s9, -1974
                  auipc        a6, 977087
                  srl          s6, a0, s9
                  add          s9, t5, a3
                  nop
                  srli         a1, tp, 26
                  and          tp, t4, s0
                  or           t5, s8, t6
                  slt          a0, s1, s3
                  lui          s9, 38125
                  slli         s10, a7, 3
                  andi         s0, t6, 1466
                  sltu         s4, s7, s1
                  slt          t0, s1, a2
                  andi         sp, a7, 1203
                  srli         zero, s10, 23
                  addi         a6, t5, 1154
                  add          s5, a7, s7
                  xori         s0, a1, -142
                  andi         s6, a6, 249
                  slti         s0, s10, -113
                  xor          ra, a1, tp
                  and          tp, t2, a0
                  srai         t1, s0, 31
                  addi         tp, ra, -301
                  sub          t1, t6, a1
                  srai         s0, s1, 17
                  and          t4, ra, a4
                  xori         s3, a6, -845
                  xor          s0, s8, s8
                  ori          t1, a0, 204
                  srli         sp, a7, 29
                  srai         sp, t6, 24
                  sra          t0, sp, sp
                  and          s1, t2, s8
                  or           zero, s3, s6
                  srli         t1, t0, 13
                  sltiu        s7, t4, -1230
                  srl          a6, zero, t6
                  sll          a1, sp, a2
                  srai         t5, t5, 0
                  or           t0, sp, s1
                  xori         sp, t5, 1413
                  sub          s2, ra, s3
                  slti         s11, t6, 418
                  sll          s5, s6, s9
                  sltiu        t5, zero, 1574
                  andi         s8, a4, -1325
                  auipc        a2, 1004183
                  sltiu        a0, sp, -1320
                  auipc        sp, 554148
                  and          t0, gp, s6
                  or           a0, t1, t0
                  sll          t0, sp, a4
                  slli         a0, s2, 26
                  sltu         s4, a4, a1
                  addi         sp, a4, 1318
                  srl          a1, tp, a4
                  sltiu        t0, s9, -1502
                  xori         gp, gp, -1156
                  slli         tp, a7, 21
                  slli         s7, s10, 5
                  srl          s8, a2, t6
                  srai         a2, a1, 17
                  xor          s8, s1, t4
                  slt          t0, a7, a5
                  slt          a1, t1, ra
                  or           s10, t6, s11
                  sll          a1, a2, t2
                  nop
                  or           a6, ra, s11
                  sll          s7, s11, ra
                  andi         a3, s11, -539
                  sltiu        a2, tp, -510
                  or           a0, a7, s10
                  slt          a0, t6, s8
                  or           s5, a3, s1
                  sra          a1, s6, t3
                  srai         t5, s0, 8
                  slt          s2, tp, a1
                  sub          a6, s2, a4
                  sll          gp, t1, tp
                  add          t0, a3, tp
                  andi         s3, t3, -1421
                  sltu         a1, sp, tp
                  sltu         tp, ra, t6
                  sltu         s10, t5, s9
                  sltu         s9, a0, t6
                  srl          s8, s3, s5
                  lui          zero, 38787
                  slli         t4, s1, 23
                  sub          t0, t5, t3
                  ori          gp, t0, -633
                  add          s1, a0, s0
                  and          t2, t2, t6
                  andi         t2, s11, 1067
                  xor          t2, a5, gp
                  srl          tp, s5, s5
                  or           a7, s11, a0
                  xori         a0, ra, -938
                  lui          t3, 27293
                  slli         t3, s10, 26
                  add          a3, a2, s6
                  addi         a2, a0, 1289
                  sra          s8, zero, tp
                  sltu         s3, s1, t1
                  sra          gp, s1, a1
                  srl          s0, s4, s5
                  auipc        t3, 213283
                  ori          s5, a6, 1027
                  sltiu        s3, sp, 187
                  sll          a2, s1, t0
                  xori         s2, a7, 336
                  slli         t0, zero, 19
                  sub          sp, s11, tp
                  xor          t3, t6, sp
                  slli         s6, a3, 12
                  srl          t1, t0, s3
                  andi         s5, s4, 163
                  sll          zero, t4, a6
                  lui          s5, 785687
                  sll          t2, t4, a5
                  or           s6, t0, gp
                  sra          zero, s5, s2
                  sll          s6, t1, t2
                  andi         a0, s4, 847
                  sra          s8, s11, s5
                  xori         s4, a5, -460
                  xor          s10, s3, s7
                  addi         a3, t6, 201
                  or           s9, gp, s6
                  auipc        gp, 856284
                  auipc        t2, 760960
                  and          s2, a4, s3
                  or           s11, a3, s1
                  or           a0, a6, a0
                  auipc        a2, 1006091
                  srl          ra, gp, s8
                  auipc        a7, 597391
                  slt          a0, t6, a4
                  sll          s3, t3, t0
                  and          zero, t5, s8
                  slti         a2, t6, -512
                  auipc        a1, 97373
                  add          s6, s1, a3
                  ori          s7, s7, -1808
                  sra          s2, a4, s0
                  srl          a3, a3, t5
                  xor          s10, s7, s5
                  lui          t3, 90299
                  add          s7, t3, t2
                  andi         s10, s8, 156
                  add          a2, s5, a6
                  srai         a6, a0, 19
                  srli         s0, a3, 8
                  sltu         tp, t2, t6
                  add          tp, s7, s8
                  addi         s2, a1, 954
                  sub          t5, t1, sp
                  addi         s4, s2, 1919
                  lui          t5, 869159
                  sltu         tp, zero, a7
                  xor          t1, sp, s2
                  srai         gp, t1, 27
                  nop
                  sltu         ra, a1, a1
                  ori          t2, s5, -1187
                  sra          a3, gp, s4
                  slti         a6, s1, 18
                  auipc        ra, 465301
                  sll          t2, a4, s2
                  sra          s8, a7, a7
                  ori          s1, t1, 494
                  sra          gp, s10, a6
                  andi         ra, s0, 2027
                  srli         s9, a1, 7
                  srli         s6, s1, 7
                  lui          s0, 199818
                  sltiu        a7, sp, -955
                  add          ra, a7, t0
                  srai         a1, a3, 28
                  addi         t2, s4, 1570
                  sra          s11, a6, sp
                  sltiu        a6, a7, 903
                  lui          sp, 462319
                  sll          sp, s5, tp
                  andi         s11, s1, -1898
                  srl          s4, a5, t6
                  sltu         s4, ra, t6
                  addi         s11, s11, -373
                  auipc        s11, 997473
                  auipc        s6, 804765
                  sra          t5, s4, t3
                  xor          a2, t3, ra
                  sub          s0, a4, s1
                  slti         s4, s10, -1952
                  add          t0, t4, a7
                  srai         t0, t2, 20
                  addi         a2, a7, 202
                  srai         a2, a4, 6
                  addi         s1, t5, 976
                  srl          t0, tp, t3
                  add          tp, t1, ra
                  andi         t0, a5, -1834
                  slt          s8, a2, s9
                  nop
                  sltiu        s7, a6, 2006
                  xor          a7, sp, tp
                  sub          t5, a6, t1
                  slti         t1, s5, -1259
                  andi         a1, s3, 1718
                  xori         s5, a0, 915
                  slti         s11, s8, 472
                  srai         s11, a2, 28
                  xori         s7, s2, -204
                  add          a1, s10, s11
                  sltiu        tp, s7, 379
                  srai         s10, a0, 14
                  sltiu        a3, s6, -1048
                  slt          a7, a2, s2
                  sll          gp, s0, ra
                  xori         t3, s3, -1559
                  xor          a2, t3, s1
                  auipc        a3, 853927
                  sub          t2, s5, s5
                  or           s10, s2, t1
                  srl          s9, t3, s1
                  addi         t2, tp, 320
                  slli         t1, t1, 10
                  add          s11, t1, a5
                  slli         gp, t0, 14
                  xor          a6, t1, s0
                  srai         a1, s2, 14
                  srl          s0, a1, a1
                  or           sp, a3, s8
                  slli         s6, s10, 14
                  srl          a0, a0, t0
                  sra          s0, s4, s9
                  sll          s6, s1, t4
                  srl          s1, a2, s8
                  and          ra, zero, s8
                  srl          a7, a7, a3
                  srai         a1, a7, 13
                  andi         s8, s4, -720
                  or           t3, tp, s11
                  andi         s9, a2, 1149
                  sra          tp, s6, sp
                  sltu         a1, s1, s8
                  srai         zero, t3, 1
                  xor          a1, s9, s9
                  slt          a3, s1, s4
                  sub          sp, t2, t0
                  auipc        t3, 835232
                  or           s0, sp, a6
                  auipc        s2, 63831
                  slli         s2, s8, 17
                  sltiu        tp, a0, 1771
                  sub          gp, t6, s10
                  addi         s1, ra, 1776
                  nop
                  ori          s7, a3, -211
                  ori          ra, t0, -38
                  sltiu        t3, s10, 1204
                  ori          tp, s4, 2021
                  slt          tp, t4, s8
                  ori          ra, t6, 45
                  addi         s9, s9, -253
                  xor          t4, s5, tp
                  addi         s0, a6, 1162
                  srli         s4, a0, 30
                  sltu         a2, s10, a1
                  lui          s8, 186503
                  addi         s7, s5, -1153
                  xor          sp, sp, a0
                  slli         s3, t5, 21
                  and          s10, t1, a3
                  srli         s5, a5, 12
                  or           s2, s0, a7
                  ori          s0, t2, -1375
                  addi         t1, t2, 963
                  srl          s7, a1, t2
                  sra          t1, s3, a7
                  xor          a3, s11, s4
                  xor          a2, zero, s11
                  andi         s9, t3, 165
                  slti         t5, tp, 1895
                  srli         s3, s1, 22
                  nop
                  xori         s5, s8, 1724
                  xori         a0, a6, -179
                  ori          s10, s11, -1846
                  slli         sp, s2, 6
                  sltiu        s11, s6, 221
                  sltiu        a6, s5, 337
                  sltiu        a1, a1, 1759
                  nop
                  srl          ra, tp, t0
                  ori          s9, a4, -879
                  lui          s6, 598327
                  sub          t1, zero, s1
                  auipc        s11, 673743
                  xor          s0, s11, s5
                  slt          s9, s11, t1
                  srl          s8, s4, s2
                  xori         sp, a3, -921
                  sltiu        t3, s5, 1739
                  auipc        s6, 287364
                  and          s6, sp, zero
                  addi         t5, a2, 1225
                  ori          a6, s8, -1820
                  ori          t1, a7, -489
                  or           t5, s3, s8
                  srl          s6, a4, ra
                  srli         sp, t5, 5
                  slti         s0, a2, -760
                  and          a0, s9, t0
                  slli         a6, s11, 10
                  sltiu        s1, t4, 554
                  xor          a6, s5, a0
                  slti         s5, a3, -753
                  xor          gp, t3, zero
                  srli         t4, t6, 0
                  xor          a3, a1, zero
                  sub          a0, t5, s10
                  slti         a2, ra, -1652
                  srli         ra, t4, 14
                  lui          s0, 898185
                  auipc        s4, 890453
                  slt          t5, s6, t4
                  sltu         s8, s8, s1
                  lui          a7, 556623
                  sub          s1, s7, a0
                  or           t2, s5, t6
                  sltiu        a6, tp, 496
                  nop
                  sltu         t5, a1, a7
                  sltiu        gp, s1, -746
                  xor          s7, t5, gp
                  addi         t1, a4, -1600
                  xori         s11, a2, -116
                  xor          s8, s10, sp
                  sll          s6, sp, t0
                  xori         a1, s6, -1714
                  sra          s6, a0, t2
                  xor          sp, s1, a5
                  sll          s0, s9, t2
                  andi         t1, a0, 511
                  addi         tp, s2, 1085
                  add          t3, s9, s7
                  sltiu        tp, t1, -1537
                  srli         t4, s6, 12
                  nop
                  andi         a2, a0, 1183
                  sra          s1, tp, t4
                  sltiu        a3, a7, 1356
                  nop
                  slt          t0, s10, a7
                  sub          t4, t4, s10
                  srli         s9, sp, 1
                  sll          gp, zero, zero
                  and          s8, zero, a0
                  sub          t3, t2, t0
                  slti         s0, t6, -1293
                  addi         s2, t0, -1456
                  srai         sp, a1, 28
                  addi         tp, t4, 657
                  auipc        a6, 49682
                  auipc        t5, 926347
                  sltiu        s7, t0, 1096
                  auipc        gp, 353277
                  xori         s10, zero, -1004
                  sltiu        a7, ra, -105
                  lui          s0, 672962
                  andi         s7, t1, -1555
                  sra          a2, t2, gp
                  addi         t2, a0, 262
                  slti         t5, s3, -1456
                  auipc        s1, 789871
                  lui          s1, 864479
                  xori         t4, s5, -1986
                  sub          tp, t5, a7
                  slti         s6, t4, 632
                  slti         s7, a6, -1178
                  and          a1, tp, t3
                  or           s7, zero, s3
                  andi         t5, s9, -1191
                  addi         a1, a7, -1488
                  nop
                  slti         t1, t2, 1421
                  slli         ra, ra, 27
                  addi         s3, s8, 1990
                  srl          s10, s5, t4
                  srli         t4, t2, 9
                  sub          t0, s2, s11
                  srai         s2, a4, 6
                  srl          zero, a5, t3
                  sltiu        s1, s11, 894
                  srli         t4, a2, 10
                  sltiu        zero, t0, -57
                  xori         tp, a7, -1475
                  lui          t1, 964757
                  sra          s7, s4, s3
                  ori          a0, s6, -270
                  sub          gp, t3, a7
                  sltiu        s3, tp, 1351
                  srli         ra, s2, 18
                  srli         s1, s5, 23
                  xor          a6, sp, s7
                  sub          t0, t0, s8
                  sra          a1, s6, s4
                  xori         t5, s4, 1008
                  slti         t5, sp, 791
                  slti         t1, a0, -1864
                  slt          a7, t4, s3
                  and          s6, tp, s1
                  xor          s9, ra, t0
                  xori         s3, gp, 1366
                  sra          t4, zero, t2
                  and          t4, s1, zero
                  slli         sp, s4, 16
                  xor          s8, gp, t6
                  srai         a1, t1, 12
                  srl          s7, t0, a6
                  sltiu        t1, s3, 1239
                  nop
                  addi         s6, t0, 1630
                  srai         a3, s8, 26
                  addi         s11, t1, -1070
                  lui          a2, 77401
                  slti         zero, a3, 1329
                  xori         t3, s10, -888
                  or           t5, s3, a3
                  sltu         zero, s2, s2
                  sra          t0, t5, a7
                  sub          a1, ra, s0
                  sltiu        a1, a0, -1219
                  sub          s7, s11, t1
                  slti         s4, t4, -434
                  or           gp, s8, t2
                  sltiu        a1, t2, -1341
                  slli         s1, tp, 15
                  auipc        tp, 675137
                  slli         tp, s9, 28
                  srai         gp, t1, 22
                  slt          s4, t2, s11
                  lui          a2, 839512
                  xor          a1, t5, s10
                  or           s9, s9, s8
                  andi         s6, s6, 894
                  srai         t5, s9, 14
                  sltu         t5, s1, s6
                  sra          s5, s9, tp
                  sltu         a2, s0, sp
                  and          t3, s2, t6
                  xor          t3, t3, a1
                  slti         s9, s2, 1908
                  xor          a1, sp, t1
                  sll          t0, t4, a6
                  add          t0, t1, a4
                  or           t4, sp, ra
                  sub          s7, a0, gp
                  xori         t5, a2, -118
                  slt          s10, a5, a5
                  sub          gp, a7, a4
                  and          s6, zero, s8
                  addi         s7, a3, 1956
                  auipc        ra, 845663
                  xor          s11, s4, tp
                  sub          a6, s0, s8
                  slli         t3, t5, 7
                  ori          zero, s7, -313
                  slt          tp, s6, s9
                  sub          t1, a5, s2
                  or           t0, a7, s10
                  sltu         a3, a0, s10
                  andi         a7, t6, 1346
                  slli         ra, s5, 31
                  sll          s9, s6, s2
                  sra          a0, s7, s2
                  lui          zero, 183351
                  slti         a2, s10, -718
                  slti         s11, s10, -1112
                  sltu         s4, s2, zero
                  nop
                  sub          t2, a5, t3
                  xori         s10, a6, -1298
                  xor          a7, ra, s9
                  or           a3, a7, s5
                  andi         s11, s6, 1362
                  xor          s4, s11, t3
                  xori         s10, gp, 1603
                  andi         ra, a0, 350
                  addi         s6, s7, 1732
                  lui          a3, 34895
                  add          s1, s10, t2
                  srl          t5, a6, a0
                  slti         s6, a5, -104
                  srli         t5, s0, 5
                  xori         tp, s6, -1127
                  add          s6, a2, tp
                  andi         t1, t2, 1866
                  srai         a0, ra, 16
                  addi         a3, t6, -708
                  slt          s2, t2, s2
                  add          a6, t0, gp
                  xori         s2, a5, 1727
                  add          s6, t0, t4
                  lui          tp, 789754
                  lui          gp, 754469
                  or           a3, s0, s6
                  srai         s0, sp, 28
                  srl          a6, sp, a1
                  slt          s3, a4, a2
                  srai         zero, gp, 18
                  sltu         t4, t1, a2
                  slt          a3, ra, t6
                  add          s9, s11, a3
                  nop
                  add          s6, a6, s1
                  xori         a2, s5, 325
                  srli         t4, a0, 12
                  andi         a6, t3, -671
                  andi         a6, t4, -1285
                  and          s6, s4, s3
                  sltiu        t5, t0, 1938
                  slli         t2, a3, 22
                  sub          s6, t6, a2
                  slt          t4, s2, t3
                  lui          s2, 370498
                  sltu         zero, a3, sp
                  sltiu        t3, tp, 133
                  auipc        t3, 829823
                  sll          t5, t5, sp
                  sra          s2, gp, a6
                  addi         s10, sp, -322
                  srli         a2, ra, 19
                  srl          s8, t5, t5
                  nop
                  srl          s0, zero, s3
                  srl          a1, s7, s8
                  and          t2, t4, t1
                  auipc        s3, 50229
                  srli         t2, s10, 13
                  srai         s10, a0, 24
                  slti         zero, s10, 1968
                  srli         s1, a1, 9
                  ori          t4, s1, 331
                  andi         s9, t5, -1440
                  addi         a1, a6, 345
                  sra          a2, a3, s6
                  xor          a2, a2, t2
                  addi         t3, s0, -1787
                  srl          s7, s9, a6
                  nop
                  xori         a0, t1, 1436
                  auipc        s1, 875308
                  andi         t0, s5, 654
                  slti         s1, s1, -483
                  xori         t5, t3, -827
                  addi         a1, t3, -1146
                  auipc        s0, 264599
                  slli         s11, a0, 24
                  srai         a7, a7, 31
                  slti         t2, t4, -802
                  addi         s3, s4, -1456
                  srli         s10, gp, 30
                  lui          a1, 983584
                  sltiu        a6, s5, 1431
                  xori         sp, s1, -1986
                  auipc        s2, 751472
                  xor          sp, a7, a0
                  slt          s7, a4, s6
                  auipc        a0, 77192
                  auipc        a2, 569120
                  xor          s10, gp, s10
                  auipc        s5, 553647
                  xor          a1, ra, a3
                  slli         a3, t3, 20
                  xori         a3, a4, 667
                  xor          t0, s6, s8
                  srl          s9, a1, a7
                  slt          t5, t1, s6
                  andi         tp, t2, -1204
                  nop
                  slli         a3, s7, 22
                  xori         s7, sp, 1218
                  sltiu        ra, s10, 603
                  or           a7, s9, a3
                  lui          sp, 346438
                  sltiu        s11, s6, -1905
                  slli         s0, t6, 4
                  sltiu        t5, t0, 686
                  addi         tp, t2, -1234
                  nop
                  auipc        s9, 1001500
                  srai         s3, t3, 31
                  srl          s8, s3, zero
                  and          s8, s5, t5
                  addi         a6, ra, 256
                  sltiu        zero, s10, 1396
                  slli         s5, t5, 31
                  lui          tp, 248471
                  lui          s1, 92153
                  xori         s5, a7, 620
                  or           s10, t3, t4
                  sll          s0, s8, t1
                  xor          tp, t6, zero
                  sltiu        s6, s4, 1560
                  andi         s4, a3, 1096
                  xor          s1, tp, t6
                  and          s10, a0, a4
                  sltu         ra, tp, s6
                  srl          t1, s11, t6
                  lui          sp, 3607
                  srai         s4, t1, 11
                  auipc        s5, 629321
                  slli         t0, s6, 27
                  or           s11, a2, t6
                  slli         tp, s8, 15
                  srai         s6, s1, 30
                  sll          s7, a6, s2
                  sra          s9, s1, t3
                  lui          s7, 946338
                  nop
                  sltiu        t3, t3, -718
                  srli         tp, t4, 2
                  sltu         s11, s4, t4
                  lui          a3, 663552
                  slti         t3, t2, 630
                  srai         s11, zero, 17
                  lui          t1, 994964
                  slt          s10, t6, t3
                  andi         a0, a4, -663
                  xor          s1, s9, a4
                  slti         a0, a3, 283
                  sub          a3, s9, a0
                  nop
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0xffffffff
                  li           a7, 0x80000000
                  li           tp, 0x80000000
                  li           t3, 0x0
                  li           s6, 0xe2b96124
                  li           s1, 0xbb84a0ac
                  li           s9, 0xe0396bd8
                  li           s8, 0x761ba9b9
                  li           s2, 0x80000000
                  lui          s9, 514565
                  auipc        t4, 355650
                  sub          s2, s6, t3
                  add          t3, s1, s2
                  lui          s2, 1004838
                  lui          s6, 223264
                  lui          s6, 635921
                  lui          t3, 83163
                  nop
                  add          s2, t4, t4
                  lui          s2, 35128
                  auipc        s2, 762751
                  add          tp, s1, s6
                  sub          s6, a7, s8
                  sub          t4, s11, s1
                  nop
                  add          s6, a7, s1
                  sub          s11, s8, s11 #end riscv_int_numeric_corner_stream_9
                  sll          s3, a0, sp
                  andi         a0, s1, -214
                  lui          t1, 386630
                  sltu         t0, a1, s0
                  slli         s6, t6, 30
                  xori         s0, s4, -1236
                  lui          s1, 1011495
                  sltu         s10, a6, sp
                  ori          ra, s11, -1828
                  sll          a0, s10, a3
                  xori         a2, s9, -1866
                  lui          gp, 371350
                  slli         s3, t5, 22
                  slli         tp, zero, 23
                  and          a0, s2, gp
                  ori          t5, s11, -763
                  srl          a0, t3, a0
                  or           s0, t4, zero
                  slli         a6, ra, 23
                  sub          a6, t0, a4
                  add          a2, a1, s4
                  xori         s11, s8, -1197
                  sub          t3, tp, a3
                  slti         t3, s11, 1890
                  auipc        s1, 848221
                  lui          s8, 377868
                  sltu         a0, tp, s4
                  srai         a3, a4, 8
                  sub          tp, a2, t6
                  srli         s4, s8, 7
                  xori         s5, a2, 1434
                  srl          a2, s9, s1
                  sltiu        t3, a7, -466
                  lui          a3, 146463
                  sltu         a2, s7, s5
                  srli         t0, s3, 13
                  sra          t1, s7, s5
                  lui          t5, 99047
                  xori         zero, s10, -50
                  sub          s1, t3, s3
                  xor          s10, zero, s5
                  xori         t0, s0, 906
                  sltiu        s5, a6, -183
                  xori         s1, t0, -789
                  sltu         a2, a2, s5
                  xor          s7, t2, ra
                  ori          a2, s7, 331
                  xor          a1, s5, s0
                  slli         ra, s11, 16
                  or           t4, s6, a7
                  and          s4, a0, t0
                  and          s8, t5, a5
                  slti         t3, s1, -537
                  sltu         a3, t2, s0
                  andi         t3, t1, -1203
                  srli         s5, s6, 15
                  auipc        t5, 755578
                  sltu         a1, a4, ra
                  srli         sp, sp, 17
                  xor          a0, t3, a2
                  add          s4, a2, s11
                  sub          ra, sp, sp
                  sll          t2, a5, s9
                  srli         a3, t6, 11
                  slti         t1, a2, 1333
                  sll          ra, a5, s7
                  and          t2, s8, t6
                  addi         a3, s2, 267
                  slt          a2, s3, ra
                  xor          s11, s7, t6
                  addi         s3, ra, -1047
                  srai         s1, s2, 17
                  sltiu        s9, a5, 1526
                  add          s10, a6, tp
                  auipc        a2, 747743
                  sra          a6, s3, zero
                  srli         s8, a6, 11
                  andi         s0, a6, -14
                  slti         a1, a2, 1553
                  add          t2, s3, s0
                  slli         s5, tp, 25
                  xor          s10, s6, t0
                  sltiu        a7, s9, 628
                  andi         s6, s8, 1450
                  or           sp, s3, gp
                  srl          a2, s7, s10
                  or           a1, a3, t1
                  slti         t5, s2, -1748
                  add          s3, a4, tp
                  nop
                  xori         t5, a4, 974
                  sra          a2, s6, a6
                  srl          t2, a0, s3
                  sll          ra, a1, a6
                  sltiu        tp, s11, -577
                  lui          s1, 1021554
                  ori          s4, ra, 608
                  and          a1, s8, t3
                  nop
                  andi         a7, a0, -617
                  slt          t1, sp, s4
                  andi         s9, tp, 946
                  add          s6, t0, s3
                  nop
                  srai         s5, a0, 9
                  add          tp, s9, s0
                  sltu         t2, sp, tp
                  sra          s0, s11, tp
                  xori         t1, s0, -816
                  sll          t1, s4, a3
                  srai         tp, s6, 0
                  or           t5, s0, s8
                  sub          t3, s7, a3
                  slti         a1, a2, -1895
                  sltu         a6, s11, s4
                  slli         a3, tp, 29
                  sltiu        s8, s4, 1457
                  nop
                  ori          a0, s9, -407
                  and          a6, s8, a7
                  ori          s4, a1, 641
                  ori          s11, t6, 1793
                  slt          t2, s5, a5
                  addi         a2, a6, -1667
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           t2, 0xffffffff
                  li           s4, 0xb1bee34f
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  li           t0, 0x0
                  li           a0, 0x0
                  li           t3, 0x80000000
                  li           a1, 0x873dc56d
                  li           t5, 0xffffffff
                  auipc        t5, 858602
                  addi         t5, a1, 949
                  auipc        t3, 437202
                  add          s10, t2, a0
                  add          s0, t2, t0
                  sub          s8, a0, s4
                  lui          a1, 913324
                  addi         a1, t2, 1157
                  lui          t2, 448074
                  addi         s0, s8, -1053
                  add          s4, t0, s0
                  add          a1, t2, t0
                  sub          t0, a1, s8
                  addi         s4, a1, 950
                  lui          t2, 1014356
                  lui          s10, 877810 #end riscv_int_numeric_corner_stream_16
                  srai         a7, t0, 20
                  srli         s1, a6, 14
                  slt          t4, s7, s2
                  slt          zero, s3, s9
                  sltiu        t5, t2, 983
                  sltiu        t4, t3, -996
                  addi         s11, a6, -307
                  sub          a6, s3, s1
                  add          a0, t5, s5
                  auipc        a1, 671553
                  sra          s1, a4, a4
                  slti         t2, t3, -1533
                  slti         zero, t2, 608
                  or           a3, a7, t4
                  sll          s9, a0, s0
                  srli         a1, s5, 9
                  sub          t3, a7, a6
                  sra          a6, s6, a4
                  nop
                  sra          s5, s2, s0
                  sltiu        s9, t1, 709
                  xori         a0, t6, 1930
                  xori         a1, s7, 1097
                  sltiu        t1, s10, -2017
                  auipc        t0, 968602
                  nop
                  sltu         a3, zero, s5
                  sltiu        s5, s4, 159
                  auipc        t0, 293882
                  addi         s10, a0, 1091
                  and          zero, sp, a0
                  srai         s2, s1, 30
                  add          s11, gp, a1
                  slti         zero, s9, -1882
                  slti         t2, s11, -1476
                  slti         s10, s4, -719
                  sra          a2, s11, t6
                  slt          tp, s2, s0
                  add          a6, gp, a3
                  or           s9, t3, t0
                  slti         a7, a7, 967
                  sll          a2, ra, t0
                  sra          s11, s3, s8
                  add          a0, a1, zero
                  slli         s5, a3, 30
                  slt          t2, s2, s3
                  addi         a3, s7, -2017
                  sltu         s5, s9, t5
                  ori          a0, s0, -1430
                  ori          t4, a5, -1329
                  ori          a1, s5, 668
                  ori          a6, s9, -812
                  andi         s7, s10, 567
                  srai         s9, a1, 30
                  xor          a2, zero, a7
                  add          s5, s3, s8
                  addi         tp, s0, 1606
                  sltiu        s1, s2, 694
                  sub          s7, s9, s3
                  nop
                  ori          a6, t2, 1170
                  addi         s8, gp, 1328
                  sltu         s11, a5, s2
                  sra          t3, s0, s5
                  slli         a2, ra, 11
                  and          t2, t5, t1
                  xori         zero, s9, 174
                  and          zero, a3, t0
                  sub          s1, s4, s9
                  add          t1, s8, s5
                  lui          s2, 730666
                  add          t3, t0, t2
                  slt          s4, s2, s3
                  xor          t2, t6, a0
                  slt          s8, a7, s1
                  srai         t0, t0, 19
                  sra          s7, s9, s3
                  srai         s7, ra, 10
                  srl          a2, t2, s5
                  or           t4, a5, a7
                  ori          t3, s5, 36
                  slti         s10, a5, 1272
                  lui          t2, 908755
                  sll          a1, s9, tp
                  sra          s6, s4, t0
                  slti         ra, s8, 352
                  sll          t5, t5, s9
                  and          s6, a1, t3
                  xor          a3, s8, ra
                  andi         t5, a7, 104
                  and          t4, s11, s2
                  auipc        t2, 101641
                  slli         a6, t2, 16
                  or           t4, zero, s10
                  add          a1, a7, s4
                  slli         tp, s3, 12
                  and          t5, t2, a3
                  sll          s11, s8, s9
                  nop
                  addi         t5, t5, 165
                  auipc        a3, 385114
                  slli         s11, a7, 2
                  addi         t2, t1, 677
                  sub          t3, a6, t5
                  xor          ra, s11, a3
                  slti         s2, tp, 689
                  nop
                  sltu         a0, s10, t1
                  xori         a0, s7, 190
                  sltiu        a0, s11, -1528
                  xori         s8, a1, 780
                  andi         s5, s2, 2043
                  sltu         t2, gp, t2
                  srli         t3, gp, 5
                  slt          t0, s4, s0
                  lui          s8, 733350
                  lui          a7, 167993
                  slli         s3, s10, 19
                  lui          a3, 40832
                  add          t4, a6, s3
                  sra          a0, s7, a5
                  slli         s5, ra, 10
                  add          sp, t3, gp
                  sub          ra, gp, a6
                  andi         a0, t3, -782
                  srli         s10, t2, 6
                  auipc        s11, 1020163
                  sub          t4, gp, a6
                  sra          t2, gp, a6
                  andi         t5, s9, -1197
                  nop
                  sll          t5, s5, a7
                  ori          a3, a6, -938
                  sll          a0, s1, s5
                  ori          t3, sp, -1633
                  srai         a3, s4, 13
                  nop
                  andi         s8, a6, 1925
                  sra          t1, tp, a7
                  xori         t5, s10, -793
                  andi         gp, a0, -1047
                  auipc        gp, 896981
                  auipc        ra, 389924
                  slti         zero, a7, -144
                  slti         s1, a5, -961
                  auipc        t5, 359833
                  lui          a3, 658035
                  srai         s4, t0, 31
                  lui          s5, 219810
                  slti         a2, s3, 1050
                  lui          a3, 151099
                  or           a1, a3, a2
                  sra          t0, sp, t3
                  sub          t0, s10, s7
                  slti         a0, t1, -1618
                  auipc        s11, 220631
                  srl          t3, a1, s6
                  addi         s11, a0, -1009
                  slli         s3, a4, 3
                  srai         s3, t1, 21
                  or           a1, s4, a2
                  slt          s5, s8, a6
                  or           s7, zero, t3
                  auipc        t1, 560307
                  sra          t2, t5, a1
                  lui          t2, 198597
                  xor          a3, t0, s9
                  ori          t4, s1, 1100
                  slli         s1, s6, 10
                  sub          s4, tp, s5
                  auipc        t4, 95221
                  xor          t5, a4, a5
                  xor          ra, a5, t4
                  slli         gp, a4, 2
                  or           t0, t2, a1
                  and          tp, t3, a4
                  lui          s5, 488362
                  lui          a1, 811540
                  ori          a2, s2, -1917
                  ori          s0, s7, 1693
                  slt          zero, t2, t6
                  xori         t2, s11, -358
                  slti         s7, t6, -607
                  auipc        t1, 134777
                  srl          s9, tp, s1
                  andi         t4, t4, -76
                  auipc        s4, 780685
                  xor          s10, a4, s11
                  slt          s8, tp, s7
                  sra          t4, s2, a0
                  sltu         a6, a5, t5
                  srli         t3, sp, 12
                  nop
                  lui          s7, 296917
                  sltu         a0, ra, t3
                  srl          tp, a7, s2
                  srli         t1, s3, 30
                  slli         zero, a7, 29
                  srli         t4, tp, 27
                  lui          t5, 513991
                  sll          s5, s0, s0
                  slti         s2, t4, 1027
                  slti         tp, s10, -856
                  andi         a6, t3, -133
                  add          t1, s0, a2
                  slt          s5, a1, s9
                  sll          gp, sp, t0
                  and          t0, ra, gp
                  srli         a2, t3, 27
                  addi         t2, s7, -1700
                  sub          s6, s9, a2
                  xor          s6, t3, tp
                  sltiu        gp, s9, 1754
                  add          s0, s9, t1
                  add          a6, a3, t6
                  sltiu        s1, t3, 1470
                  sltu         a3, t6, s9
                  nop
                  lui          t1, 292564
                  or           a6, a4, t2
                  sub          zero, s6, s7
                  andi         s9, t2, 368
                  sltiu        a3, s5, -1395
                  sll          s5, s4, s9
                  sub          a6, t1, s5
                  or           s10, tp, sp
                  srl          t4, a2, tp
                  and          ra, s5, s2
                  slli         sp, zero, 22
                  xor          a1, a0, t0
                  andi         s4, t5, 31
                  xor          gp, a5, s5
                  srai         sp, t4, 6
                  ori          s7, s1, -991
                  or           gp, s11, s6
                  sltu         t1, t6, a6
                  sll          t2, sp, s9
                  ori          a2, s2, -1536
                  slli         a0, ra, 22
                  xor          t3, s6, a1
                  sltiu        t2, ra, 1458
                  and          sp, s9, a6
                  slt          t4, s11, tp
                  srli         s6, t6, 26
                  sltiu        zero, a7, 897
                  xor          t2, t4, t6
                  sll          a7, s1, s8
                  sll          ra, a6, s0
                  xor          a7, sp, t6
                  sra          s3, a0, a5
                  slti         t3, s3, -1597
                  slt          t5, s1, t2
                  sra          gp, a6, s6
                  sra          a1, tp, s8
                  xori         zero, s2, 1713
                  or           a2, s11, s3
                  add          gp, a2, s1
                  sll          s2, s5, tp
                  sltu         t1, t5, sp
                  sltu         a1, a3, t6
                  srl          t5, a1, s0
                  sltiu        s2, a5, -1798
                  sll          t1, zero, t0
                  add          a0, s3, s11
                  add          tp, s1, s2
                  or           a6, a1, s1
                  sltu         t5, s1, t0
                  ori          t1, a4, 1961
                  andi         s9, a1, -1439
                  srai         s9, s3, 4
                  slli         gp, s11, 30
                  slti         t0, gp, 1040
                  srli         t5, s3, 31
                  addi         t1, s11, 1861
                  add          a3, s8, t3
                  auipc        s9, 142054
                  xor          a2, t6, s8
                  sub          a3, zero, t6
                  and          a7, a5, ra
                  srli         a0, t0, 5
                  and          s9, a1, t6
                  srl          ra, a1, gp
                  sll          t5, t4, s5
                  srai         a6, tp, 18
                  slli         t5, s3, 4
                  sltiu        t5, a7, -1470
                  srli         t0, tp, 28
                  slti         a1, gp, -30
                  slt          a3, t0, s10
                  slt          a6, s9, t1
                  srl          s2, t5, t5
                  xori         a2, s11, -1073
                  ori          gp, a6, 1272
                  slt          s4, s1, zero
                  slli         s0, sp, 28
                  sll          t4, s7, a3
                  slt          a2, s10, a2
                  nop
                  addi         t1, s5, -390
                  slti         s6, tp, -729
                  lui          s2, 58213
                  slt          s10, s0, gp
                  slli         a0, tp, 1
                  addi         a6, s2, -1293
                  sltiu        s0, s4, 1457
                  slti         ra, t2, -827
                  slt          s7, a7, t5
                  slt          s8, a3, a2
                  sll          t0, t6, a4
                  sltu         s11, t0, tp
                  slti         a3, a3, -1214
                  andi         gp, s10, -1859
                  sltu         s8, t2, gp
                  slli         s5, t3, 14
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_28
                  li           a7, 0xffffffff
                  li           t4, 0xcbfd379f
                  li           s7, 0x80000000
                  li           s6, 0x80000000
                  li           s1, 0x0
                  li           t1, 0x80000000
                  li           s8, 0xffffffff
                  li           a0, 0x80000000
                  li           tp, 0xffffffff
                  add          s8, tp, s1
                  sub          s7, s6, s8
                  lui          t1, 854252
                  add          t4, s8, t1
                  auipc        s8, 972155
                  sub          tp, s8, a7
                  lui          s1, 999971
                  add          a7, a7, t1
                  sub          a0, s1, t4
                  sub          a7, a0, t0
                  sub          t4, tp, s6
                  sub          s8, a0, a7
                  sub          t4, s7, a0
                  add          s7, s1, tp
                  auipc        s1, 860458
                  add          s1, a0, s6 #end riscv_int_numeric_corner_stream_28
                  auipc        s1, 462141
                  ori          t2, a3, 1820
                  sra          a3, sp, s2
                  sll          s2, tp, gp
                  xori         s2, t1, 1402
                  slli         ra, a7, 0
                  lui          a3, 447678
                  add          a0, s8, tp
                  srl          zero, a4, t5
                  srai         a7, s8, 29
                  lui          sp, 114840
                  lui          s7, 290967
                  sra          t2, a5, s3
                  xor          t2, tp, a7
                  or           s6, a0, a5
                  sub          s4, t4, s9
                  xor          s8, a2, a7
                  lui          s7, 1005463
                  srli         t0, zero, 28
                  sltu         s4, t2, zero
                  srli         s7, s4, 15
                  sltiu        zero, s5, -1199
                  lui          t1, 710121
                  add          t1, t1, a1
                  andi         s7, s3, 1610
                  srl          s2, t2, s8
                  sll          s6, t1, a2
                  addi         t1, s10, 721
                  addi         zero, a7, -561
                  sltu         s9, t3, a5
                  sra          ra, s0, t1
                  ori          zero, s10, -790
                  sra          s3, a1, a2
                  slt          t1, a3, a7
                  slti         s6, a4, 1934
                  sltu         s1, a0, s6
                  add          t1, ra, s6
                  nop
                  xor          s0, tp, a1
                  xori         s11, a5, 574
                  slti         s11, t2, 284
                  srl          a2, s4, a6
                  sub          a0, a4, s6
                  auipc        s8, 547156
                  nop
                  sltu         t5, gp, s3
                  lui          a0, 399491
                  sra          s0, a2, a7
                  xor          s1, s10, s1
                  srli         s0, a3, 30
                  auipc        s9, 269113
                  and          a2, a1, s3
                  lui          t5, 687708
                  ori          sp, t2, -287
                  sll          ra, s4, s11
                  addi         t3, s1, -1975
                  addi         s1, t2, -333
                  lui          s8, 463354
                  xori         tp, s11, -280
                  and          s1, a6, s2
                  srl          s9, s8, gp
                  lui          sp, 404269
                  sltu         t4, s4, a4
                  slli         a1, t2, 14
                  sltiu        s2, tp, 1609
                  slli         s2, ra, 1
                  auipc        s9, 266314
                  slti         s8, a4, -1529
                  sll          t1, s3, s3
                  srai         zero, a5, 3
                  srai         s8, t5, 1
                  srli         t1, a5, 17
                  srl          ra, t4, tp
                  srai         s9, a3, 20
                  auipc        ra, 601864
                  nop
                  sra          t5, tp, gp
                  slli         zero, t6, 22
                  lui          t3, 461636
                  slt          s6, a7, s2
                  slt          zero, t3, s6
                  add          t2, t3, zero
                  sra          t1, s4, ra
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           s7, 0x0
                  li           sp, 0x0
                  li           a6, 0xffffffff
                  li           s4, 0xdff4617d
                  li           a7, 0x80000000
                  li           gp, 0x80000000
                  li           t4, 0x80000000
                  li           a0, 0xffffffff
                  li           t3, 0xffffffff
                  addi         ra, s7, -450
                  nop
                  auipc        s4, 422568
                  addi         gp, a0, -107
                  lui          ra, 199789
                  addi         a0, ra, -446
                  sub          sp, s4, ra
                  nop
                  sub          s4, a0, a7
                  nop
                  auipc        t4, 400550
                  lui          s4, 554541
                  nop
                  add          a6, t3, gp
                  sub          a0, ra, a0
                  addi         ra, sp, 236
                  addi         sp, t3, 967
                  add          s7, t3, a7 #end riscv_int_numeric_corner_stream_32
                  sra          s2, t3, a7
                  sll          s8, s6, a7
                  nop
                  slli         gp, t3, 28
                  add          t4, t0, s0
                  lui          sp, 626845
                  srl          t0, t6, a5
                  auipc        s10, 1033151
                  addi         sp, t1, 243
                  slti         zero, sp, 886
                  sltu         s7, s2, tp
                  xor          s9, s6, s11
                  xori         sp, t3, -608
                  srli         s8, s8, 5
                  sra          t1, s11, ra
                  or           s3, sp, s3
                  andi         a6, s8, -1148
                  add          s7, a1, sp
                  sra          s9, gp, s6
                  sra          t2, s4, tp
                  add          t1, s10, t4
                  slt          t2, t0, a3
                  srai         t0, gp, 6
                  srli         t3, a6, 11
                  sll          s2, t6, t1
                  nop
                  slli         a3, t1, 12
                  xor          a0, t6, a2
                  ori          gp, a6, 85
                  slt          a7, s3, t2
                  srl          a6, ra, t4
                  sra          s11, s0, t0
                  slti         a2, zero, -1047
                  srai         sp, s2, 6
                  slli         s0, s10, 24
                  lui          gp, 258660
                  srl          a1, a0, s3
                  sltiu        s2, a2, 1078
                  slti         t5, t3, 2044
                  xori         s7, s2, -463
                  sra          zero, a6, s6
                  addi         t4, a6, 298
                  add          t4, t3, s3
                  auipc        s2, 1008005
                  slti         s2, s1, -390
                  sub          t3, s10, t2
                  srl          a2, a6, a6
                  ori          a6, a6, -542
                  slti         a1, s10, -1569
                  srl          t5, s2, a7
                  sltu         t0, s4, a1
                  andi         s5, a4, 262
                  and          s3, gp, t3
                  srai         zero, a3, 30
                  srl          s5, s8, t0
                  slli         s11, gp, 11
                  andi         tp, a6, 1009
                  srli         s5, s8, 2
                  sll          s1, s8, s2
                  sltiu        t2, tp, -1723
                  and          s2, a1, s5
                  sll          s11, t5, t2
                  sub          s5, t3, zero
                  nop
                  sub          a2, s6, a0
                  sltiu        s9, t6, 1782
                  sra          s8, s6, sp
                  srl          t1, a7, t1
                  sltu         t5, s0, t0
                  srl          a3, s8, a1
                  sltu         s7, s1, a1
                  sra          s4, t0, a7
                  nop
                  xor          t5, zero, t1
                  srl          a3, a2, s3
                  sll          s8, s9, a4
                  andi         a0, ra, 773
                  slti         t5, t6, -1270
                  slt          zero, t3, sp
                  sll          s5, s1, t2
                  auipc        zero, 552300
                  add          s2, s3, a7
                  slt          s10, s1, a0
                  or           a0, zero, s0
                  srli         a6, a0, 12
                  sll          a7, s4, t4
                  auipc        s9, 480271
                  sub          s3, s4, s4
                  lui          s6, 416811
                  srl          tp, s5, tp
                  slti         s5, t3, -178
                  addi         s11, s0, -678
                  srai         s5, s5, 28
                  sltu         s7, s9, s4
                  ori          t2, ra, 447
                  xor          ra, s1, s11
                  nop
                  addi         a6, t1, -1302
                  slti         s11, a2, 238
                  xor          a0, s5, s2
                  and          s8, a4, a0
                  andi         s8, a7, 1694
                  srl          s3, a4, a7
                  nop
                  sra          s11, a1, s0
                  srl          t3, sp, s9
                  slli         t2, a1, 16
                  ori          s11, a6, 964
                  srli         a6, t3, 17
                  andi         a6, s5, -1418
                  slti         t5, s8, -1648
                  slli         t3, t3, 25
                  nop
                  add          a2, tp, a4
                  addi         s2, t2, -390
                  xori         a7, s2, -563
                  sltu         tp, a7, tp
                  sltu         t4, a2, s11
                  auipc        a7, 149748
                  and          s4, a2, s4
                  sub          sp, gp, t3
                  srai         t0, s6, 23
                  nop
                  srl          s3, a5, gp
                  sub          t0, s10, t1
                  xor          t5, s1, t0
                  xori         ra, t5, 1068
                  sltu         a3, gp, s5
                  slt          t4, a1, t1
                  andi         sp, t5, 1121
                  sll          s0, a2, tp
                  xori         s5, a5, 1954
                  sub          s5, s5, s10
                  srai         a7, a3, 23
                  slt          sp, a4, s6
                  nop
                  nop
                  srai         s4, a0, 24
                  xori         tp, a4, 1891
                  nop
                  lui          a0, 258049
                  xori         zero, s6, -1917
                  andi         t2, tp, -844
                  addi         s9, s9, -136
                  sra          s0, t6, s8
                  nop
                  sll          a1, zero, zero
                  srai         s4, t3, 26
                  sltiu        a0, s1, 670
                  slti         t1, s1, 552
                  and          t5, sp, s4
                  sub          zero, zero, t0
                  add          t3, sp, s2
                  sub          t4, s1, a3
                  and          s6, sp, tp
                  add          a1, s11, s11
                  srli         zero, s6, 20
                  xori         t2, a4, 487
                  addi         t5, gp, -954
                  sll          s2, sp, t2
                  sltu         a2, t6, s4
                  slt          s9, t2, s8
                  srai         s4, tp, 26
                  add          a7, s10, s6
                  sub          s8, a7, a1
                  and          s0, a4, s10
                  xori         a7, sp, -1829
                  add          a1, t6, a2
                  addi         s8, t3, -396
                  sra          tp, s4, t4
                  and          s9, s4, a4
                  slt          s3, zero, s10
                  sltiu        t1, s7, 576
                  sltiu        s2, a0, -238
                  sub          s4, t0, s0
                  srli         t5, s5, 18
                  slt          s11, s8, a5
                  lui          tp, 253498
                  and          s8, t4, zero
                  srai         s10, t2, 9
                  sltiu        s6, t2, 1566
                  sub          s4, t6, a7
                  srl          t4, a4, zero
                  slt          s5, t6, ra
                  nop
                  xor          s3, a4, s11
                  auipc        zero, 627118
                  ori          t0, a3, 1441
                  sll          t2, s6, gp
                  andi         t3, t3, 1536
                  ori          s6, a4, 929
                  add          t1, s3, t2
                  xori         sp, t1, 526
                  xori         t3, a1, -226
                  sra          s11, s7, s8
                  andi         a3, s6, -1837
                  slli         t0, t2, 23
                  addi         gp, t6, 1955
                  srl          t0, s0, s0
                  nop
                  slti         t5, s0, -1176
                  srai         s8, a6, 26
                  xor          gp, a2, a3
                  lui          a7, 283325
                  nop
                  slli         s6, sp, 21
                  or           a7, t6, a5
                  addi         a7, a3, -360
                  addi         a0, tp, -1831
                  add          a0, s8, s11
                  lui          a7, 536774
                  srli         a1, t0, 27
                  sltiu        a1, t5, 1346
                  srli         a2, t6, 16
                  sltu         t1, gp, s3
                  xor          s0, s0, t4
                  sltu         s0, s0, t6
                  sltiu        t1, ra, 1352
                  sltu         zero, s7, s3
                  xori         s4, a0, -1037
                  add          gp, t5, s9
                  srai         gp, a0, 9
                  srl          s10, ra, t3
                  xor          t0, ra, s11
                  srli         s1, a2, 12
                  srl          a0, sp, tp
                  andi         a6, t4, -781
                  addi         s7, gp, -1572
                  sll          a3, s10, gp
                  srli         t0, ra, 2
                  sltu         a2, s9, s3
                  srai         ra, s3, 9
                  sltu         s4, s6, t0
                  slti         s4, s3, -1599
                  auipc        a1, 586452
                  lui          t1, 1039399
                  sra          s0, s1, t5
                  sra          s9, a5, s11
                  lui          t0, 867186
                  srl          s0, a3, s5
                  sltu         s11, t4, a4
                  slt          s5, ra, t3
                  add          t5, a6, sp
                  lui          s7, 268760
                  add          t5, a0, ra
                  srai         s3, s7, 16
                  lui          s1, 564162
                  auipc        s11, 41035
                  srai         a6, zero, 9
                  slti         s11, s9, -1874
                  nop
                  lui          t5, 248361
                  or           s2, s2, gp
                  sltiu        s11, a5, 1559
                  addi         t4, a4, 395
                  addi         t4, s1, -880
                  sra          a1, s11, s8
                  nop
                  sll          s7, s8, s1
                  ori          s2, a2, -1796
                  xori         s6, t3, -1556
                  sra          s2, a3, t3
                  or           a7, a0, t4
                  sub          s7, a0, s8
                  or           zero, tp, zero
                  auipc        s0, 119741
                  sltu         s11, a6, a0
                  sltiu        t4, t0, 39
                  srl          s0, t4, t3
                  or           t5, s8, t1
                  auipc        t2, 276986
                  sltu         t1, s5, s8
                  add          a6, s0, s11
                  or           gp, s6, a6
                  add          s7, gp, t1
                  slt          a0, gp, a5
                  sltiu        s0, s5, -33
                  xor          s8, t1, t0
                  sra          s5, a2, s8
                  sub          s5, a0, s2
                  sll          s6, tp, s8
                  sltu         s1, tp, s3
                  srai         gp, a7, 11
                  lui          t2, 75219
                  srai         ra, zero, 4
                  slti         s3, s9, 1948
                  or           s11, t3, s11
                  addi         s8, s1, 1320
                  add          s1, s11, sp
                  add          s5, t0, s9
                  slli         s8, s6, 31
                  sll          a1, t1, s2
                  andi         s10, s11, 1867
                  sltu         s4, s3, s1
                  sra          t4, ra, t2
                  slli         s6, t2, 5
                  srl          a3, a7, s1
                  srli         t0, t4, 13
                  sltiu        s4, a1, 1050
                  addi         a0, gp, -158
                  sltiu        a0, a2, 1348
                  ori          s0, s0, 1460
                  addi         a7, s9, 1765
                  xori         zero, s0, 1835
                  srai         t0, a5, 15
                  sra          t5, s10, t1
                  sra          sp, s3, sp
                  slt          a3, s10, s5
                  lui          s0, 470196
                  sll          s0, zero, t1
                  slti         s3, s7, 1801
                  and          t5, s0, a6
                  auipc        s11, 796399
                  addi         gp, s8, 307
                  slti         a3, s2, -287
                  sll          s4, t6, t2
                  slti         t0, a0, 330
                  sltiu        s6, ra, 665
                  lui          s10, 358057
                  srl          a6, s11, s4
                  add          t2, a0, a5
                  srli         sp, a0, 31
                  lui          s1, 205977
                  nop
                  andi         s9, a6, 1636
                  ori          t1, ra, 1761
                  sll          ra, a6, s11
                  srl          a6, t6, s6
                  sra          a6, t5, a0
                  sra          t3, s6, ra
                  nop
                  auipc        zero, 830642
                  slt          t1, a1, s11
                  slt          a6, s7, t0
                  lui          a3, 319612
                  xori         s9, a4, -380
                  slti         s2, a1, 626
                  slti         t4, s11, -1621
                  add          zero, a2, s6
                  sltu         s1, a0, s1
                  add          sp, gp, ra
                  auipc        tp, 1015377
                  and          a6, t2, s0
                  sltu         s6, s3, a4
                  slti         a7, s5, -87
                  and          a3, a2, s11
                  sltiu        t3, s2, 1286
                  sltiu        t4, t5, 354
                  nop
                  xor          s7, s2, a3
                  lui          a3, 619977
                  sltiu        t3, s9, -1842
                  sub          zero, t3, t3
                  andi         sp, gp, -585
                  sub          a2, s3, t2
                  srli         s5, gp, 15
                  sub          s7, s5, s4
                  sltiu        t5, s2, -990
                  sltiu        a6, a7, -691
                  nop
                  sltiu        gp, a1, 1401
                  or           s5, a6, ra
                  add          s10, a1, ra
                  ori          s1, t2, -1686
                  lui          t5, 243988
                  andi         a1, t4, -1416
                  addi         s3, a1, 97
                  slli         s2, s11, 5
                  and          s11, s6, s4
                  slli         s8, a6, 26
                  srli         a3, s0, 15
                  ori          s6, a2, -1500
                  sltiu        s11, t6, -470
                  sub          a2, a1, s5
                  or           sp, t4, a1
                  or           t5, zero, s5
                  slt          tp, a3, t3
                  or           s6, s4, s2
                  andi         s9, s3, 886
                  or           s11, s8, s8
                  slt          t0, a3, t2
                  slli         s2, t2, 28
                  sub          t1, a4, zero
                  sltu         t4, sp, t0
                  addi         a2, s6, 982
                  andi         ra, s3, 319
                  slti         zero, s3, -433
                  slli         ra, s6, 25
                  or           tp, s2, t5
                  srli         a6, s0, 6
                  slti         a1, s8, 457
                  add          s8, gp, tp
                  slli         a0, a5, 8
                  srai         t4, s4, 11
                  sra          ra, a3, s6
                  sub          gp, t4, tp
                  srli         ra, a7, 7
                  andi         a3, s7, 1825
                  lui          s10, 402064
                  sub          sp, s6, t0
                  and          s10, s2, a4
                  andi         s8, t3, -179
                  sltiu        a7, a4, -1598
                  srli         a3, s10, 20
                  slt          s11, s5, a6
                  lui          s9, 972243
                  auipc        t2, 781122
                  slt          s2, tp, a3
                  or           s0, t5, s7
                  lui          a6, 896927
                  xori         s4, a4, 509
                  addi         t1, a1, -80
                  srli         t3, a4, 26
                  addi         s5, s4, -1446
                  sltiu        tp, s8, -1086
                  xori         t5, s0, -1223
                  addi         a6, t0, -990
                  ori          tp, a2, -1705
                  srai         t5, t0, 30
                  lui          s3, 827362
                  sltiu        t2, zero, 1976
                  and          a3, s4, s7
                  srl          sp, a3, s4
                  xori         s7, a0, 783
                  andi         s6, t3, 351
                  nop
                  or           s7, s4, a4
                  lui          t5, 912074
                  andi         t2, s5, -1351
                  or           s0, a1, s7
                  sltiu        ra, s8, 499
                  sll          s3, s11, s8
                  srli         s10, s5, 18
                  ori          a7, zero, 370
                  lui          s8, 672617
                  xori         s0, tp, -217
                  sub          t5, t4, s6
                  sltiu        t3, sp, 1301
                  slti         s10, t6, -538
                  addi         gp, a7, -1798
                  sub          a3, a7, s6
                  sra          t1, s10, s2
                  srl          tp, s1, s4
                  xori         a2, s4, -138
                  sll          t4, s4, ra
                  auipc        a3, 867021
                  sltiu        a6, t6, -595
                  add          t3, t4, t5
                  srl          s4, s4, s5
                  auipc        s4, 324453
                  xor          gp, s2, a3
                  andi         a2, t5, 1114
                  slt          s10, t0, s0
                  srli         t1, t5, 17
                  slli         t0, s5, 20
                  nop
                  ori          t5, s11, -1389
                  sltiu        s10, s2, 571
                  and          t5, s2, t6
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_34
                  li           t3, 0x48d2a3f9
                  li           a3, 0x80000000
                  li           s3, 0x80000000
                  li           t2, 0x0
                  li           a1, 0x46b5b732
                  li           s2, 0xdc9ba4e
                  li           s10, 0x3d670e9c
                  li           a2, 0xffffffff
                  li           tp, 0xffffffff
                  sub          a1, s10, s6
                  auipc        s6, 819506
                  sub          s10, t3, a1
                  nop
                  nop
                  sub          s10, t2, s2
                  auipc        a3, 515755
                  lui          t3, 155782
                  add          tp, t2, s6
                  nop
                  addi         s3, tp, 740
                  addi         a2, s3, 196
                  add          a1, a3, s2
                  sub          t2, t2, s10
                  nop
                  add          s6, t3, tp
                  sub          s10, a1, tp #end riscv_int_numeric_corner_stream_34
                  slti         s6, s11, -1924
                  xor          t4, a5, gp
                  andi         zero, a1, 1720
                  ori          s4, t5, 893
                  xor          a6, zero, s1
                  lui          s3, 1039416
                  srli         s5, t3, 15
                  srl          s6, sp, a5
                  slt          a6, s4, t1
                  auipc        s10, 777866
                  or           t3, s3, s1
                  sub          a1, t2, a0
                  sltu         s9, a5, t3
                  sra          s3, sp, s1
                  srli         s9, s11, 7
                  srl          t2, ra, s9
                  nop
                  andi         t0, s11, 618
                  lui          gp, 34730
                  auipc        t3, 209992
                  xor          a6, s6, s4
                  slli         t3, s10, 10
                  or           tp, a6, a3
                  ori          s9, s2, -314
                  xor          s7, s0, t4
                  and          s6, a1, s7
                  sub          t5, tp, a1
                  srl          a7, s0, t5
                  slli         s11, s11, 18
                  sltiu        ra, t0, 311
                  xor          s9, s2, s0
                  auipc        a0, 838928
                  sra          t4, t5, s10
                  slli         a0, a1, 0
                  slli         ra, zero, 3
                  srai         sp, s7, 0
                  addi         a2, s1, 823
                  or           a2, tp, t2
                  srl          sp, s10, s1
                  sll          s2, a1, a2
                  sltiu        a7, s2, 1030
                  sltu         s6, zero, s9
                  slti         t0, sp, -1610
                  sub          t1, a3, s4
                  xor          t4, s6, t6
                  sra          s8, s7, s5
                  slt          s10, t5, s10
                  add          a1, s1, a6
                  xor          t5, sp, a1
                  addi         s3, s7, -288
                  andi         a3, s10, 270
                  sra          t5, t4, sp
                  srl          s6, a2, s1
                  xori         a1, a1, 1520
                  slli         s6, sp, 11
                  xori         t2, s5, 1903
                  xor          zero, a3, s6
                  srli         t1, s11, 16
                  slti         t4, a7, 326
                  nop
                  xor          sp, a2, t1
                  sra          s1, t1, sp
                  sra          s0, a6, gp
                  nop
                  slti         a7, s11, -847
                  xor          t0, a1, s5
                  add          a3, s5, a6
                  add          a0, a4, t0
                  sltu         s6, ra, s10
                  slli         a7, s8, 7
                  xori         s11, ra, -1871
                  add          s5, s5, t3
                  slt          s10, tp, t5
                  xori         t2, s1, -1353
                  nop
                  andi         s4, a7, -998
                  nop
                  ori          s5, t6, 1821
                  ori          a7, a1, -1185
                  xor          s11, a4, s11
                  slti         t4, s5, -147
                  srl          s6, s2, a7
                  xor          t5, sp, s2
                  srl          s0, s1, s5
                  srl          gp, s11, s7
                  slli         t0, s3, 15
                  auipc        s2, 1014700
                  andi         s5, ra, -1472
                  slti         t0, tp, 864
                  srli         s7, zero, 19
                  sub          t4, a3, a4
                  ori          t4, s1, 1021
                  auipc        s8, 987577
                  andi         gp, s3, -1925
                  addi         s1, zero, -1576
                  nop
                  lui          a0, 922565
                  srli         a2, a4, 0
                  auipc        t2, 1033126
                  slli         zero, sp, 24
                  and          t3, s1, s10
                  addi         s9, s8, -1065
                  or           s9, t1, a3
                  xor          s1, tp, t3
                  addi         s9, t1, -365
                  srli         s9, tp, 30
                  ori          a1, a3, -1667
                  sltiu        t3, a7, -1289
                  add          sp, s1, zero
                  addi         s3, s2, 1987
                  xori         t0, t6, -422
                  srli         t4, t3, 22
                  slli         a3, s0, 31
                  lui          s5, 849096
                  ori          s7, t5, -629
                  sltu         s0, ra, s0
                  xori         t3, a0, 1951
                  slli         s5, a1, 26
                  lui          t4, 164932
                  and          s4, a1, t6
                  srli         a0, s2, 6
                  slti         gp, t6, 824
                  srl          sp, s0, t6
                  slli         tp, s0, 3
                  and          s7, s3, a5
                  slt          t1, a7, s7
                  andi         s4, zero, -1947
                  ori          sp, s0, -1153
                  nop
                  andi         s4, a2, -876
                  srl          s9, s10, a7
                  andi         t0, t4, -1400
                  or           t1, t0, t0
                  sub          zero, ra, t2
                  xori         s5, s6, -316
                  add          tp, s6, s7
                  lui          s8, 69081
                  sll          s8, a7, a6
                  sra          s2, a3, sp
                  sltiu        s10, s8, -1441
                  xori         a0, s6, 1647
                  andi         a7, a7, 1777
                  sltu         a6, s8, t6
                  ori          t2, tp, 1979
                  ori          t3, a4, -1851
                  sll          s9, a4, t4
                  nop
                  and          s6, t0, a0
                  xor          gp, sp, s1
                  and          tp, s8, a3
                  add          s4, t3, t3
                  sub          s1, s7, t3
                  srli         a6, s6, 2
                  sll          s1, t2, t5
                  sll          s0, s4, s2
                  slli         s9, a6, 28
                  sltiu        t1, s3, 756
                  sltiu        zero, s0, 913
                  addi         a6, t2, -233
                  srl          a1, s2, zero
                  slti         ra, gp, 1216
                  sra          a0, t1, t3
                  addi         t5, t6, -1008
                  addi         t4, a6, 1194
                  lui          s5, 407363
                  addi         a3, s11, 1451
                  slt          s11, s0, a2
                  ori          t5, s1, -782
                  xori         s3, s2, -2007
                  srl          tp, a0, s5
                  srli         zero, t2, 27
                  srai         s10, s4, 28
                  srli         s10, zero, 20
                  xori         t5, s6, -1175
                  andi         gp, a7, -1801
                  nop
                  srl          tp, s9, s7
                  auipc        t0, 947259
                  add          a7, a4, ra
                  srl          t2, ra, s8
                  ori          a0, t0, 1103
                  sltiu        s2, t6, 1309
                  nop
                  andi         s2, t5, -1580
                  sub          a2, t1, a1
                  xori         s7, zero, -1656
                  sltiu        s6, t2, 1592
                  slt          a6, a3, gp
                  sub          t4, sp, s8
                  auipc        t5, 406126
                  addi         a7, tp, -1568
                  sltiu        a3, s6, -1967
                  or           s11, sp, a5
                  sltiu        s4, s8, -116
                  srli         a2, s1, 9
                  slti         t3, t2, 1323
                  addi         s9, a6, 1775
                  and          t0, ra, s3
                  slli         a0, a6, 30
                  slti         a2, t6, 1992
                  sltiu        tp, t6, -1034
                  addi         a1, s11, -1494
                  srl          t1, s8, t0
                  sltu         s11, t1, t1
                  slli         s7, s4, 29
                  sll          t2, tp, s2
                  srai         s7, s7, 27
                  srl          a1, t1, t3
                  slti         ra, s7, -448
                  slti         s10, a1, 34
                  addi         gp, t5, -1636
                  sll          a7, a3, s0
                  xor          s3, s3, s1
                  sub          s10, s4, a3
                  andi         s0, s8, 1622
                  srli         t3, ra, 18
                  xori         zero, s4, 1054
                  auipc        gp, 99032
                  add          ra, s6, s10
                  or           zero, s6, s6
                  ori          s6, gp, -1972
                  srai         gp, a7, 10
                  lui          zero, 573538
                  sra          s9, gp, a7
                  srli         a7, a7, 28
                  and          zero, s9, s9
                  sub          t1, s7, a0
                  or           a7, zero, t0
                  nop
                  slti         s3, a3, -1515
                  sll          a3, s3, a0
                  auipc        tp, 879872
                  or           a0, t2, a3
                  xori         s11, t1, -261
                  slli         s1, s10, 5
                  and          t2, t5, t1
                  or           t4, gp, a0
                  add          t2, a1, s4
                  sub          t4, s5, a6
                  slli         tp, a2, 21
                  andi         a3, s0, -932
                  andi         a2, t6, -1096
                  sra          s2, a0, s6
                  slt          s10, s0, a2
                  srai         a0, s6, 24
                  sll          t5, t2, a4
                  sltiu        t0, sp, -2032
                  slli         s2, t6, 5
                  sub          a0, t2, a6
                  add          sp, zero, tp
                  lui          s10, 537230
                  addi         s11, t3, 419
                  srl          s10, t1, a3
                  slli         sp, tp, 11
                  auipc        a7, 1026690
                  srli         s4, s3, 8
                  slli         t3, s4, 15
                  sub          a7, a0, a7
                  xor          a6, s0, gp
                  auipc        a1, 1048213
                  and          s0, t4, s2
                  slli         t2, gp, 9
                  and          t4, a0, t0
                  sltu         t4, t2, t2
                  add          s8, s5, t1
                  auipc        s2, 668072
                  nop
                  ori          t1, s10, -18
                  sub          s11, gp, s6
                  sub          a0, t6, a6
                  ori          a0, t5, -384
                  ori          a3, s3, -1188
                  lui          s9, 634590
                  sra          s9, a5, s2
                  slti         s3, s4, -1818
                  sll          t5, s8, tp
                  addi         tp, s6, 1748
                  sltu         t5, sp, a5
                  xori         t5, a2, 1118
                  lui          zero, 517012
                  sll          a1, t5, s10
                  ori          a2, s7, 1573
                  srl          s11, t6, s4
                  xor          gp, s5, gp
                  auipc        a1, 904803
                  and          t5, s9, t2
                  add          a0, a7, a7
                  srai         s2, t6, 24
                  sltu         s2, a6, ra
                  xor          s8, t0, s7
                  and          s8, s4, t4
                  sra          t3, s7, a4
                  slti         t3, s4, 483
                  sub          sp, s8, a7
                  ori          s6, ra, 145
                  srl          s8, s9, tp
                  sltu         t0, s8, t5
                  srai         a1, s1, 26
                  sltu         a6, a3, s9
                  add          zero, t1, a7
                  sub          s6, sp, s5
                  sra          a2, s5, sp
                  srli         s3, s6, 16
                  nop
                  sub          s2, ra, s2
                  sll          s11, s1, t3
                  sltiu        a1, s8, -970
                  and          t2, s11, a3
                  xor          t5, t5, gp
                  xori         t4, a0, -844
                  srl          s2, a1, s2
                  nop
                  lui          a7, 595774
                  lui          s1, 111772
                  xori         a6, a1, -949
                  auipc        t4, 26453
                  srli         s11, a6, 13
                  srl          zero, a4, ra
                  srl          a3, s7, t6
                  sub          a0, s10, s1
                  xor          s8, t3, s2
                  addi         a1, s9, 1233
                  andi         t3, gp, -764
                  addi         s10, a2, 279
                  and          s4, sp, s11
                  and          a2, a6, a3
                  add          tp, s4, s11
                  slli         t3, s4, 6
                  lui          tp, 36298
                  sltiu        s8, s5, -642
                  srli         a2, a4, 1
                  srli         s2, s6, 19
                  srl          s9, s9, sp
                  and          s6, s11, t0
                  sltu         t5, s1, t5
                  ori          t0, a6, 985
                  sub          s9, t3, t2
                  sra          s5, a3, t5
                  slli         s7, tp, 11
                  lui          gp, 178004
                  xor          a2, tp, t0
                  slt          a1, s8, s1
                  add          s7, s4, s5
                  xor          a1, t1, s2
                  add          s0, a7, a4
                  xor          t1, t2, s4
                  sltu         s3, s8, a0
                  or           a1, t0, ra
                  ori          sp, s0, -342
                  sltu         a6, s2, a6
                  slt          s6, t1, t4
                  srai         gp, s7, 6
                  srl          t3, s5, t5
                  xor          t0, a1, s2
                  srl          s3, s5, t0
                  sltu         t1, ra, zero
                  auipc        t2, 660713
                  sltu         s2, a3, gp
                  sra          gp, s3, a1
                  srai         ra, s6, 14
                  srli         s9, t4, 30
                  sub          gp, a7, s9
                  srli         a2, a0, 6
                  srl          tp, t5, a1
                  slli         ra, zero, 3
                  srli         gp, zero, 18
                  srl          a2, t3, gp
                  xor          s11, a1, gp
                  ori          s3, a5, -1067
                  nop
                  sltiu        a1, s4, -1564
                  lui          a3, 560298
                  ori          s10, s10, -974
                  andi         t2, sp, -862
                  srli         a0, s11, 7
                  ori          a7, a3, -1472
                  sltiu        t4, s6, 534
                  or           t3, a1, s4
                  ori          s6, a7, -1055
                  addi         a2, a4, -582
                  srli         s0, ra, 9
                  slti         s6, s0, -1748
                  nop
                  sra          s1, gp, a4
                  sltiu        ra, s10, 1369
                  srli         s6, t6, 1
                  srl          t5, s4, a6
                  or           a7, s8, a1
                  and          t3, t5, s4
                  xori         s8, tp, -1289
                  sra          s10, t6, a7
                  or           t1, s8, s4
                  xor          s7, s0, t6
                  nop
                  sub          gp, t0, a6
                  add          s4, t1, s11
                  addi         s7, s3, -1709
                  srli         a0, s8, 16
                  sra          a6, s2, a5
                  slti         s2, t0, 486
                  andi         s8, t0, -985
                  lui          s2, 15196
                  slt          s3, a1, a2
                  sltiu        t1, zero, -126
                  lui          s8, 314884
                  or           t5, t5, t3
                  srl          t2, s9, a1
                  xori         a1, s8, 1011
                  and          s1, a4, gp
                  sll          a7, s10, tp
                  slli         ra, a7, 20
                  addi         s5, a6, 1782
                  andi         s8, t6, -485
                  nop
                  xori         a7, s5, -925
                  srl          t5, s10, t0
                  lui          a1, 131679
                  srl          s3, a1, s7
                  addi         s7, s0, 420
                  andi         ra, a3, 1147
                  sltu         a2, s10, s1
                  ori          a7, s9, 349
                  xor          t2, s11, t2
                  slti         t5, s5, 1959
                  nop
                  srl          t0, a5, a1
                  lui          s11, 855345
                  sll          a0, a0, sp
                  slti         a0, t2, 1612
                  or           gp, a0, zero
                  addi         s11, s0, -1302
                  slli         a3, s4, 12
                  ori          t2, s10, 125
                  srli         a3, ra, 19
                  xori         a1, t4, -1315
                  xori         s4, t6, -1218
                  sltu         s2, s7, s9
                  or           t5, s9, a6
                  slt          a0, a4, s5
                  sub          tp, s4, s7
                  slli         gp, t3, 26
                  sra          s11, s9, t3
                  sll          gp, t2, a5
                  slt          s5, s2, t3
                  or           s1, a1, s1
                  or           a6, a2, s11
                  add          s0, tp, tp
                  auipc        s2, 409380
                  addi         gp, a5, 1854
                  sltu         s2, s2, a2
                  auipc        s2, 903213
                  srli         s4, a2, 28
                  sll          ra, a1, t0
                  ori          a0, a1, -1496
                  sra          s1, s10, ra
                  and          a3, a3, a6
                  xori         t1, t0, -127
                  xori         t1, a3, -941
                  slli         a0, s8, 4
                  ori          a1, tp, 685
                  slti         s7, s3, -1438
                  sltu         s6, a4, t5
                  add          s8, tp, s7
                  xori         a3, t1, 1842
                  sltiu        t4, s10, -581
                  xor          s6, s10, t4
                  srl          s0, s10, t1
                  slli         a7, t0, 18
                  ori          t1, t4, 797
                  xori         zero, t5, 1061
                  ori          a3, s1, 1258
                  sltiu        s4, tp, -1699
                  lui          a0, 221306
                  srl          tp, tp, t6
                  addi         a6, a1, -470
                  slt          s0, t4, s9
                  xori         s0, s3, 1369
                  srai         zero, s1, 18
                  slli         a2, s11, 3
                  sll          t1, s4, t1
                  addi         gp, s3, -57
                  nop
                  ori          t5, t5, -1345
                  or           t0, zero, a4
                  lui          s2, 822402
                  nop
                  sub          t2, s4, s1
                  and          a2, a3, s0
                  xor          ra, s10, t2
                  add          sp, s1, a4
                  sub          ra, t1, t4
                  slt          gp, tp, a4
                  srli         t4, a7, 30
                  or           a6, t1, s9
                  slt          a6, s11, a5
                  xor          t4, s11, t1
                  sltu         s3, sp, s4
                  srli         s0, s1, 19
                  slli         s4, sp, 24
                  nop
                  xori         a3, a1, -572
                  or           a6, a4, t1
                  and          ra, t1, s3
                  sltu         t4, t1, t1
                  sll          a3, s2, t0
                  slti         s10, s4, 474
                  nop
                  srl          s8, a1, a6
                  xori         t4, t2, -409
                  auipc        t5, 354511
                  slt          t5, s3, t6
                  lui          a1, 762362
                  and          t1, t2, s11
                  sll          s6, s11, a0
                  and          s9, s2, t3
                  and          t2, s1, a6
                  and          a2, s5, s11
                  slti         s10, zero, -502
                  lui          t3, 595359
                  nop
                  xori         t3, s3, 1436
                  sll          s11, s5, s10
                  sltiu        s10, s3, 1842
                  srai         t1, t6, 24
                  sll          s4, zero, t4
                  slt          s7, t0, t1
                  srli         t5, s8, 28
                  sltiu        ra, s7, -1901
                  sltiu        t5, ra, -2
                  nop
                  lui          ra, 1037803
                  nop
                  slti         a0, s11, 132
                  lui          a1, 511094
                  srl          t3, a1, s9
                  nop
                  slti         s11, ra, 59
                  slti         s7, tp, -283
                  slti         gp, a6, 308
                  auipc        s2, 895956
                  srai         a2, t0, 30
                  slli         a0, a2, 23
                  nop
                  sub          s7, s11, s11
                  sub          t2, s8, gp
                  xori         s0, s0, 767
                  sll          s8, sp, t1
                  xori         s3, a6, 1553
                  xor          a6, a0, s0
                  nop
                  xor          a0, t6, a4
                  lui          t4, 870356
                  ori          t4, t2, -937
                  srli         s7, s2, 4
                  sltu         t2, a1, s7
                  slli         tp, zero, 10
                  or           t5, s9, a4
                  add          t4, a3, ra
                  and          a3, a0, s3
                  andi         s10, a2, 1271
                  or           ra, t1, a7
                  add          zero, a6, a0
                  srli         t5, t5, 9
                  sltiu        t1, sp, 349
                  sltu         a1, gp, a4
                  xori         t1, s6, -2020
                  andi         ra, s2, -1206
                  sltiu        tp, t5, 928
                  nop
                  sub          t4, a3, t5
                  sltu         a0, t4, t1
                  sltu         a3, a1, s3
                  xor          s8, s5, a0
                  sltiu        s11, t6, -886
                  or           a7, a5, s1
                  xori         t0, ra, -368
                  add          t3, ra, s3
                  nop
                  srli         tp, a2, 0
                  slt          a1, t0, t5
                  nop
                  sltu         a2, s2, s11
                  sltiu        s5, a0, -1570
                  srli         zero, s2, 1
                  srli         zero, s2, 6
                  srli         t5, a1, 10
                  sltiu        ra, t5, 379
                  auipc        a1, 721219
                  andi         sp, t4, 864
                  srli         s6, a6, 1
                  andi         s3, s8, 275
                  ori          t2, a4, 232
                  sll          s9, a1, t1
                  nop
                  add          sp, t6, s11
                  sltiu        zero, s2, -1398
                  sltu         s2, ra, a4
                  nop
                  srl          t1, a3, s2
                  sltu         ra, s5, s4
                  slli         a0, t3, 20
                  slti         t5, a4, -1660
                  sltu         gp, a5, a2
                  sub          ra, sp, tp
                  slti         gp, s10, 721
                  add          s8, zero, s2
                  sra          a2, s7, gp
                  sub          a1, sp, gp
                  srl          t1, a3, t1
                  srli         s0, t3, 8
                  and          t0, a0, s6
                  srli         t0, a3, 8
                  auipc        s11, 793570
                  sll          t5, s11, s10
                  lui          t1, 486098
                  lui          sp, 570194
                  slli         s6, gp, 21
                  slti         a6, a6, -977
                  srli         t5, t6, 25
                  ori          t5, t0, 1996
                  ori          sp, s2, -95
                  and          t5, a5, s0
                  slti         s2, s3, -1459
                  xori         s9, s2, 1124
                  slt          t0, a3, a6
                  xor          a7, gp, s11
                  lui          a7, 4228
                  srai         t4, s3, 5
                  sub          a1, s3, s6
                  ori          s4, gp, 1208
                  slli         a6, s6, 12
                  nop
                  srai         a2, a3, 31
                  or           zero, a1, s4
                  addi         t0, s5, 425
                  slli         s8, s7, 7
                  srli         t5, s4, 22
                  auipc        a1, 98653
                  auipc        t3, 240460
                  lui          tp, 572883
                  add          s6, s4, s3
                  xori         zero, t4, -799
                  sub          t5, t6, s11
                  add          s1, s0, s4
                  or           gp, s10, s1
                  add          s3, s5, t1
                  addi         s6, a1, -455
                  srl          t1, zero, t4
                  lui          s2, 1012509
                  slti         s2, s10, 35
                  ori          zero, s0, -1524
                  auipc        zero, 201841
                  sub          s9, t6, a5
                  addi         tp, a6, 1151
                  sra          t0, t0, a1
                  addi         s9, a1, 38
                  srli         t4, s9, 21
                  sra          t4, a2, t2
                  nop
                  sub          gp, t2, t6
                  ori          s7, zero, -1891
                  xor          a1, t0, s11
                  xori         a1, s0, -1311
                  ori          t0, s2, -1293
                  sra          t2, gp, s4
                  or           t0, a7, t5
                  srli         s3, t1, 11
                  and          ra, a5, s3
                  sltu         a6, tp, t5
                  srl          t5, s8, s9
                  sltu         s4, t3, s9
                  sll          t1, a6, s4
                  srli         a6, a4, 5
                  nop
                  srl          a2, a3, a5
                  sltu         t5, t3, ra
                  slli         t2, t0, 30
                  and          s3, t5, a4
                  slt          sp, t2, a6
                  nop
                  xori         s0, s5, 432
                  srl          t1, t0, t3
                  or           ra, s10, s6
                  or           s10, s3, t5
                  srai         t0, s1, 22
                  xor          a2, s7, s11
                  nop
                  sltu         t3, t3, s11
                  slli         s11, t1, 8
                  add          gp, gp, t0
                  sltu         s3, t2, s11
                  auipc        a6, 560129
                  sll          a7, t1, a2
                  srl          s7, s2, s3
                  auipc        s8, 660652
                  srli         t4, s3, 17
                  andi         s7, t5, -1981
                  srli         a7, s9, 11
                  addi         ra, s6, 1966
                  xor          s9, s8, s7
                  sra          t3, sp, gp
                  nop
                  slti         s10, gp, 1297
                  auipc        a1, 1043169
                  nop
                  or           s3, s7, t1
                  sltu         s4, s8, s10
                  sltiu        s0, a3, 1376
                  slti         t1, t2, -1483
                  nop
                  slti         zero, t6, 429
                  ori          s0, t5, 1527
                  srl          gp, a0, a5
                  slti         s11, s1, -709
                  addi         s10, zero, -236
                  sltu         s3, s5, t6
                  add          t2, s8, a2
                  xori         s11, s5, 1668
                  slti         t4, t2, 1874
                  add          a7, t2, ra
                  nop
                  sltu         s2, a7, a0
                  lui          s7, 107606
                  auipc        s8, 219297
                  lui          zero, 604981
                  sltu         tp, s10, s0
                  srli         a2, a7, 22
                  auipc        s5, 820072
                  nop
                  or           s1, a7, a3
                  srai         gp, t4, 17
                  ori          t2, s10, 94
                  ori          s11, t6, -858
                  sltiu        zero, s5, 2004
                  lui          a0, 755645
                  sra          zero, gp, a3
                  lui          a0, 316093
                  sll          t2, s10, a5
                  and          a2, s0, s7
                  slti         t4, t2, 713
                  sub          ra, t2, s6
                  sub          s0, t3, t0
                  srai         a1, t6, 3
                  sub          s6, sp, t4
                  sub          s7, ra, zero
                  auipc        a3, 1003538
                  or           a3, t6, t0
                  srli         a0, a3, 8
                  add          t2, a3, t5
                  xor          s10, sp, a3
                  sll          sp, t4, s9
                  sltu         s7, s10, a0
                  xori         s1, t1, 1523
                  xor          s11, t2, a4
                  srl          s4, a3, s11
                  nop
                  slti         s2, a5, -1966
                  addi         a3, s2, -1111
                  andi         tp, a1, 567
                  sub          t2, sp, ra
                  xor          t2, zero, s6
                  nop
                  add          t1, a7, s10
                  srl          t3, t4, s2
                  or           t0, s1, s7
                  slti         s5, s4, 748
                  auipc        s8, 975881
                  auipc        t1, 95314
                  auipc        t0, 915548
                  srli         s11, a7, 23
                  addi         t4, a0, 81
                  xor          s9, t4, s8
                  or           a0, gp, s8
                  srli         t3, a7, 24
                  slli         t1, a3, 29
                  ori          s7, zero, -1902
                  addi         t4, t6, 2
                  srai         a0, a7, 27
                  add          s10, a1, s5
                  slti         t3, t0, -689
                  srai         t5, a0, 6
                  slt          s0, a5, s8
                  slli         a3, t4, 10
                  sltiu        t2, s8, -1257
                  addi         s8, s8, 1312
                  or           s7, s11, t2
                  srl          gp, t1, a7
                  sra          zero, t6, s6
                  srai         s7, a7, 31
                  srl          s7, s2, s9
                  srl          zero, t4, s9
                  srli         a1, t4, 8
                  slti         s8, s2, 505
                  slti         s11, a7, -941
                  slt          t4, a7, s0
                  sltu         s9, ra, s8
                  sub          s8, s9, s0
                  slt          tp, ra, s11
                  ori          a2, t6, 1039
                  lui          s7, 666926
                  and          s2, a6, a6
                  slt          t2, gp, tp
                  ori          s2, s8, -1058
                  slti         s1, s2, 835
                  sltu         t3, s8, t1
                  srai         s0, s8, 12
                  sltu         a0, a5, gp
                  auipc        s0, 897720
                  and          a6, s8, t0
                  srl          a0, gp, sp
                  sub          a0, s7, s7
                  slli         s7, t0, 22
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x31, x31, -4
                  sw  x14, (x31)
                  add x14, x31, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x31, x14, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x21, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x21, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x1
                  beq x21, x27, instr_fault_handler
                  li x27, 0x5
                  beq x21, x27, load_fault_handler
                  li x27, 0x7
                  beq x21, x27, store_fault_handler
                  li x27, 0xc
                  beq x21, x27, pt_fault_handler
                  li x27, 0xd
                  beq x21, x27, pt_fault_handler
                  li x27, 0xf
                  beq x21, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
                  mret

load_fault_handler:
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
                  mret

store_fault_handler:
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x14, x31, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x31, x14, zero
                  lw  x14, (x31)
                  addi x31, x31, 4
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
