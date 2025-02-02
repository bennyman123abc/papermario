.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219900_465D90
/* 465D90 80219900 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 465D94 80219904 AFB00020 */  sw        $s0, 0x20($sp)
/* 465D98 80219908 0080802D */  daddu     $s0, $a0, $zero
/* 465D9C 8021990C AFBF0028 */  sw        $ra, 0x28($sp)
/* 465DA0 80219910 AFB10024 */  sw        $s1, 0x24($sp)
/* 465DA4 80219914 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 465DA8 80219918 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 465DAC 8021991C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 465DB0 80219920 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 465DB4 80219924 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 465DB8 80219928 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 465DBC 8021992C 8E02000C */  lw        $v0, 0xc($s0)
/* 465DC0 80219930 0C0B1EAF */  jal       evt_get_variable
/* 465DC4 80219934 8C450000 */   lw       $a1, ($v0)
/* 465DC8 80219938 0040882D */  daddu     $s1, $v0, $zero
/* 465DCC 8021993C 24040001 */  addiu     $a0, $zero, 1
/* 465DD0 80219940 1224002F */  beq       $s1, $a0, .L80219A00
/* 465DD4 80219944 AE110070 */   sw       $s1, 0x70($s0)
/* 465DD8 80219948 2A220002 */  slti      $v0, $s1, 2
/* 465DDC 8021994C 10400005 */  beqz      $v0, .L80219964
/* 465DE0 80219950 24020002 */   addiu    $v0, $zero, 2
/* 465DE4 80219954 12200009 */  beqz      $s1, .L8021997C
/* 465DE8 80219958 2402008E */   addiu    $v0, $zero, 0x8e
/* 465DEC 8021995C 08086740 */  j         .L80219D00
/* 465DF0 80219960 00000000 */   nop
.L80219964:
/* 465DF4 80219964 12220085 */  beq       $s1, $v0, .L80219B7C
/* 465DF8 80219968 24020003 */   addiu    $v0, $zero, 3
/* 465DFC 8021996C 12220013 */  beq       $s1, $v0, .L802199BC
/* 465E00 80219970 2403005B */   addiu    $v1, $zero, 0x5b
/* 465E04 80219974 08086740 */  j         .L80219D00
/* 465E08 80219978 00000000 */   nop
.L8021997C:
/* 465E0C 8021997C 3C01430E */  lui       $at, 0x430e
/* 465E10 80219980 44812000 */  mtc1      $at, $f4
/* 465E14 80219984 3C01C2EC */  lui       $at, 0xc2ec
/* 465E18 80219988 4481F000 */  mtc1      $at, $f30
/* 465E1C 8021998C 2403FF8A */  addiu     $v1, $zero, -0x76
/* 465E20 80219990 AFA00014 */  sw        $zero, 0x14($sp)
/* 465E24 80219994 E7A40010 */  swc1      $f4, 0x10($sp)
/* 465E28 80219998 AE020090 */  sw        $v0, 0x90($s0)
/* 465E2C 8021999C 2402002C */  addiu     $v0, $zero, 0x2c
/* 465E30 802199A0 AE02009C */  sw        $v0, 0x9c($s0)
/* 465E34 802199A4 24020003 */  addiu     $v0, $zero, 3
/* 465E38 802199A8 AE000094 */  sw        $zero, 0x94($s0)
/* 465E3C 802199AC AE030098 */  sw        $v1, 0x98($s0)
/* 465E40 802199B0 AE0300A0 */  sw        $v1, 0xa0($s0)
/* 465E44 802199B4 0808667C */  j         .L802199F0
/* 465E48 802199B8 AE0200A4 */   sw       $v0, 0xa4($s0)
.L802199BC:
/* 465E4C 802199BC 3C0142B6 */  lui       $at, 0x42b6
/* 465E50 802199C0 44812000 */  mtc1      $at, $f4
/* 465E54 802199C4 3C01C2EC */  lui       $at, 0xc2ec
/* 465E58 802199C8 4481F000 */  mtc1      $at, $f30
/* 465E5C 802199CC 2402FF8A */  addiu     $v0, $zero, -0x76
/* 465E60 802199D0 AFA00014 */  sw        $zero, 0x14($sp)
/* 465E64 802199D4 E7A40010 */  swc1      $f4, 0x10($sp)
/* 465E68 802199D8 AE030090 */  sw        $v1, 0x90($s0)
/* 465E6C 802199DC AE000094 */  sw        $zero, 0x94($s0)
/* 465E70 802199E0 AE020098 */  sw        $v0, 0x98($s0)
/* 465E74 802199E4 AE03009C */  sw        $v1, 0x9c($s0)
/* 465E78 802199E8 AE0200A0 */  sw        $v0, 0xa0($s0)
/* 465E7C 802199EC AE1100A4 */  sw        $s1, 0xa4($s0)
.L802199F0:
/* 465E80 802199F0 AE0000A8 */  sw        $zero, 0xa8($s0)
/* 465E84 802199F4 AE0000B0 */  sw        $zero, 0xb0($s0)
/* 465E88 802199F8 08086740 */  j         .L80219D00
/* 465E8C 802199FC AE040070 */   sw       $a0, 0x70($s0)
.L80219A00:
/* 465E90 80219A00 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 465E94 80219A04 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 465E98 80219A08 00431021 */  addu      $v0, $v0, $v1
/* 465E9C 80219A0C AE0200A8 */  sw        $v0, 0xa8($s0)
/* 465EA0 80219A10 2842002E */  slti      $v0, $v0, 0x2e
/* 465EA4 80219A14 14400003 */  bnez      $v0, .L80219A24
/* 465EA8 80219A18 00000000 */   nop
/* 465EAC 80219A1C 2402002D */  addiu     $v0, $zero, 0x2d
/* 465EB0 80219A20 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80219A24:
/* 465EB4 80219A24 C6040090 */  lwc1      $f4, 0x90($s0)
/* 465EB8 80219A28 46802120 */  cvt.s.w   $f4, $f4
/* 465EBC 80219A2C E7A40010 */  swc1      $f4, 0x10($sp)
/* 465EC0 80219A30 C6040094 */  lwc1      $f4, 0x94($s0)
/* 465EC4 80219A34 46802120 */  cvt.s.w   $f4, $f4
/* 465EC8 80219A38 E7A40014 */  swc1      $f4, 0x14($sp)
/* 465ECC 80219A3C C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 465ED0 80219A40 46806320 */  cvt.s.w   $f12, $f12
/* 465ED4 80219A44 3C0140C9 */  lui       $at, 0x40c9
/* 465ED8 80219A48 34210FD0 */  ori       $at, $at, 0xfd0
/* 465EDC 80219A4C 4481D000 */  mtc1      $at, $f26
/* 465EE0 80219A50 C61E0098 */  lwc1      $f30, 0x98($s0)
/* 465EE4 80219A54 4680F7A0 */  cvt.s.w   $f30, $f30
/* 465EE8 80219A58 461A6302 */  mul.s     $f12, $f12, $f26
/* 465EEC 80219A5C 00000000 */  nop
/* 465EF0 80219A60 C61C009C */  lwc1      $f28, 0x9c($s0)
/* 465EF4 80219A64 4680E720 */  cvt.s.w   $f28, $f28
/* 465EF8 80219A68 3C0143B4 */  lui       $at, 0x43b4
/* 465EFC 80219A6C 4481C000 */  mtc1      $at, $f24
/* 465F00 80219A70 C60400A0 */  lwc1      $f4, 0xa0($s0)
/* 465F04 80219A74 46802120 */  cvt.s.w   $f4, $f4
/* 465F08 80219A78 E7A40018 */  swc1      $f4, 0x18($sp)
/* 465F0C 80219A7C 0C00A85B */  jal       sin_rad
/* 465F10 80219A80 46186303 */   div.s    $f12, $f12, $f24
/* 465F14 80219A84 46000021 */  cvt.d.s   $f0, $f0
/* 465F18 80219A88 3C013FF0 */  lui       $at, 0x3ff0
/* 465F1C 80219A8C 4481B800 */  mtc1      $at, $f23
/* 465F20 80219A90 4480B000 */  mtc1      $zero, $f22
/* 465F24 80219A94 C7A40010 */  lwc1      $f4, 0x10($sp)
/* 465F28 80219A98 4620B001 */  sub.d     $f0, $f22, $f0
/* 465F2C 80219A9C 46002521 */  cvt.d.s   $f20, $f4
/* 465F30 80219AA0 4620A502 */  mul.d     $f20, $f20, $f0
/* 465F34 80219AA4 00000000 */  nop
/* 465F38 80219AA8 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 465F3C 80219AAC 46806320 */  cvt.s.w   $f12, $f12
/* 465F40 80219AB0 461A6302 */  mul.s     $f12, $f12, $f26
/* 465F44 80219AB4 00000000 */  nop
/* 465F48 80219AB8 0C00A85B */  jal       sin_rad
/* 465F4C 80219ABC 46186303 */   div.s    $f12, $f12, $f24
/* 465F50 80219AC0 4600E002 */  mul.s     $f0, $f28, $f0
/* 465F54 80219AC4 00000000 */  nop
/* 465F58 80219AC8 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 465F5C 80219ACC 00021040 */  sll       $v0, $v0, 1
/* 465F60 80219AD0 44826000 */  mtc1      $v0, $f12
/* 465F64 80219AD4 00000000 */  nop
/* 465F68 80219AD8 46806320 */  cvt.s.w   $f12, $f12
/* 465F6C 80219ADC 461A6302 */  mul.s     $f12, $f12, $f26
/* 465F70 80219AE0 00000000 */  nop
/* 465F74 80219AE4 46000021 */  cvt.d.s   $f0, $f0
/* 465F78 80219AE8 4620A500 */  add.d     $f20, $f20, $f0
/* 465F7C 80219AEC 46186303 */  div.s     $f12, $f12, $f24
/* 465F80 80219AF0 4620A520 */  cvt.s.d   $f20, $f20
/* 465F84 80219AF4 0C00A85B */  jal       sin_rad
/* 465F88 80219AF8 E7B40010 */   swc1     $f20, 0x10($sp)
/* 465F8C 80219AFC C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 465F90 80219B00 46806320 */  cvt.s.w   $f12, $f12
/* 465F94 80219B04 461A6302 */  mul.s     $f12, $f12, $f26
/* 465F98 80219B08 00000000 */  nop
/* 465F9C 80219B0C 3C0142B4 */  lui       $at, 0x42b4
/* 465FA0 80219B10 44811000 */  mtc1      $at, $f2
/* 465FA4 80219B14 00000000 */  nop
/* 465FA8 80219B18 46020002 */  mul.s     $f0, $f0, $f2
/* 465FAC 80219B1C 00000000 */  nop
/* 465FB0 80219B20 C7A40014 */  lwc1      $f4, 0x14($sp)
/* 465FB4 80219B24 46002100 */  add.s     $f4, $f4, $f0
/* 465FB8 80219B28 46186303 */  div.s     $f12, $f12, $f24
/* 465FBC 80219B2C 0C00A85B */  jal       sin_rad
/* 465FC0 80219B30 E7A40014 */   swc1     $f4, 0x14($sp)
/* 465FC4 80219B34 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 465FC8 80219B38 46806320 */  cvt.s.w   $f12, $f12
/* 465FCC 80219B3C 461A6302 */  mul.s     $f12, $f12, $f26
/* 465FD0 80219B40 00000000 */  nop
/* 465FD4 80219B44 46000021 */  cvt.d.s   $f0, $f0
/* 465FD8 80219B48 4620B581 */  sub.d     $f22, $f22, $f0
/* 465FDC 80219B4C 4600F521 */  cvt.d.s   $f20, $f30
/* 465FE0 80219B50 4636A502 */  mul.d     $f20, $f20, $f22
/* 465FE4 80219B54 00000000 */  nop
/* 465FE8 80219B58 0C00A85B */  jal       sin_rad
/* 465FEC 80219B5C 46186303 */   div.s    $f12, $f12, $f24
/* 465FF0 80219B60 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 465FF4 80219B64 46002002 */  mul.s     $f0, $f4, $f0
/* 465FF8 80219B68 00000000 */  nop
/* 465FFC 80219B6C 46000021 */  cvt.d.s   $f0, $f0
/* 466000 80219B70 4620A500 */  add.d     $f20, $f20, $f0
/* 466004 80219B74 0808673C */  j         .L80219CF0
/* 466008 80219B78 2402002D */   addiu    $v0, $zero, 0x2d
.L80219B7C:
/* 46600C 80219B7C 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 466010 80219B80 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 466014 80219B84 00431021 */  addu      $v0, $v0, $v1
/* 466018 80219B88 AE0200A8 */  sw        $v0, 0xa8($s0)
/* 46601C 80219B8C 2842005B */  slti      $v0, $v0, 0x5b
/* 466020 80219B90 14400002 */  bnez      $v0, .L80219B9C
/* 466024 80219B94 2402005A */   addiu    $v0, $zero, 0x5a
/* 466028 80219B98 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80219B9C:
/* 46602C 80219B9C C6040090 */  lwc1      $f4, 0x90($s0)
/* 466030 80219BA0 46802120 */  cvt.s.w   $f4, $f4
/* 466034 80219BA4 E7A40010 */  swc1      $f4, 0x10($sp)
/* 466038 80219BA8 C6040094 */  lwc1      $f4, 0x94($s0)
/* 46603C 80219BAC 46802120 */  cvt.s.w   $f4, $f4
/* 466040 80219BB0 E7A40014 */  swc1      $f4, 0x14($sp)
/* 466044 80219BB4 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 466048 80219BB8 46806320 */  cvt.s.w   $f12, $f12
/* 46604C 80219BBC 3C0140C9 */  lui       $at, 0x40c9
/* 466050 80219BC0 34210FD0 */  ori       $at, $at, 0xfd0
/* 466054 80219BC4 4481D000 */  mtc1      $at, $f26
/* 466058 80219BC8 C61E0098 */  lwc1      $f30, 0x98($s0)
/* 46605C 80219BCC 4680F7A0 */  cvt.s.w   $f30, $f30
/* 466060 80219BD0 461A6302 */  mul.s     $f12, $f12, $f26
/* 466064 80219BD4 00000000 */  nop
/* 466068 80219BD8 C61C009C */  lwc1      $f28, 0x9c($s0)
/* 46606C 80219BDC 4680E720 */  cvt.s.w   $f28, $f28
/* 466070 80219BE0 3C0143B4 */  lui       $at, 0x43b4
/* 466074 80219BE4 4481C000 */  mtc1      $at, $f24
/* 466078 80219BE8 C60400A0 */  lwc1      $f4, 0xa0($s0)
/* 46607C 80219BEC 46802120 */  cvt.s.w   $f4, $f4
/* 466080 80219BF0 E7A40018 */  swc1      $f4, 0x18($sp)
/* 466084 80219BF4 0C00A85B */  jal       sin_rad
/* 466088 80219BF8 46186303 */   div.s    $f12, $f12, $f24
/* 46608C 80219BFC 46000021 */  cvt.d.s   $f0, $f0
/* 466090 80219C00 3C013FF0 */  lui       $at, 0x3ff0
/* 466094 80219C04 4481B800 */  mtc1      $at, $f23
/* 466098 80219C08 4480B000 */  mtc1      $zero, $f22
/* 46609C 80219C0C C7A40010 */  lwc1      $f4, 0x10($sp)
/* 4660A0 80219C10 4620B001 */  sub.d     $f0, $f22, $f0
/* 4660A4 80219C14 46002521 */  cvt.d.s   $f20, $f4
/* 4660A8 80219C18 4620A502 */  mul.d     $f20, $f20, $f0
/* 4660AC 80219C1C 00000000 */  nop
/* 4660B0 80219C20 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 4660B4 80219C24 46806320 */  cvt.s.w   $f12, $f12
/* 4660B8 80219C28 461A6302 */  mul.s     $f12, $f12, $f26
/* 4660BC 80219C2C 00000000 */  nop
/* 4660C0 80219C30 0C00A85B */  jal       sin_rad
/* 4660C4 80219C34 46186303 */   div.s    $f12, $f12, $f24
/* 4660C8 80219C38 4600E002 */  mul.s     $f0, $f28, $f0
/* 4660CC 80219C3C 00000000 */  nop
/* 4660D0 80219C40 8E0200A8 */  lw        $v0, 0xa8($s0)
/* 4660D4 80219C44 00021040 */  sll       $v0, $v0, 1
/* 4660D8 80219C48 44826000 */  mtc1      $v0, $f12
/* 4660DC 80219C4C 00000000 */  nop
/* 4660E0 80219C50 46806320 */  cvt.s.w   $f12, $f12
/* 4660E4 80219C54 461A6302 */  mul.s     $f12, $f12, $f26
/* 4660E8 80219C58 00000000 */  nop
/* 4660EC 80219C5C 46000021 */  cvt.d.s   $f0, $f0
/* 4660F0 80219C60 4620A500 */  add.d     $f20, $f20, $f0
/* 4660F4 80219C64 46186303 */  div.s     $f12, $f12, $f24
/* 4660F8 80219C68 4620A520 */  cvt.s.d   $f20, $f20
/* 4660FC 80219C6C 0C00A85B */  jal       sin_rad
/* 466100 80219C70 E7B40010 */   swc1     $f20, 0x10($sp)
/* 466104 80219C74 C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 466108 80219C78 46806320 */  cvt.s.w   $f12, $f12
/* 46610C 80219C7C 461A6302 */  mul.s     $f12, $f12, $f26
/* 466110 80219C80 00000000 */  nop
/* 466114 80219C84 3C0142B4 */  lui       $at, 0x42b4
/* 466118 80219C88 44811000 */  mtc1      $at, $f2
/* 46611C 80219C8C 00000000 */  nop
/* 466120 80219C90 46020002 */  mul.s     $f0, $f0, $f2
/* 466124 80219C94 00000000 */  nop
/* 466128 80219C98 C7A40014 */  lwc1      $f4, 0x14($sp)
/* 46612C 80219C9C 46002100 */  add.s     $f4, $f4, $f0
/* 466130 80219CA0 46186303 */  div.s     $f12, $f12, $f24
/* 466134 80219CA4 0C00A85B */  jal       sin_rad
/* 466138 80219CA8 E7A40014 */   swc1     $f4, 0x14($sp)
/* 46613C 80219CAC C60C00A8 */  lwc1      $f12, 0xa8($s0)
/* 466140 80219CB0 46806320 */  cvt.s.w   $f12, $f12
/* 466144 80219CB4 461A6302 */  mul.s     $f12, $f12, $f26
/* 466148 80219CB8 00000000 */  nop
/* 46614C 80219CBC 46000021 */  cvt.d.s   $f0, $f0
/* 466150 80219CC0 4620B581 */  sub.d     $f22, $f22, $f0
/* 466154 80219CC4 4600F521 */  cvt.d.s   $f20, $f30
/* 466158 80219CC8 4636A502 */  mul.d     $f20, $f20, $f22
/* 46615C 80219CCC 00000000 */  nop
/* 466160 80219CD0 0C00A85B */  jal       sin_rad
/* 466164 80219CD4 46186303 */   div.s    $f12, $f12, $f24
/* 466168 80219CD8 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 46616C 80219CDC 46002002 */  mul.s     $f0, $f4, $f0
/* 466170 80219CE0 00000000 */  nop
/* 466174 80219CE4 46000021 */  cvt.d.s   $f0, $f0
/* 466178 80219CE8 4620A500 */  add.d     $f20, $f20, $f0
/* 46617C 80219CEC 2402005A */  addiu     $v0, $zero, 0x5a
.L80219CF0:
/* 466180 80219CF0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 466184 80219CF4 14620002 */  bne       $v1, $v0, .L80219D00
/* 466188 80219CF8 4620A7A0 */   cvt.s.d  $f30, $f20
/* 46618C 80219CFC AE1100B0 */  sw        $s1, 0xb0($s0)
.L80219D00:
/* 466190 80219D00 C7A40010 */  lwc1      $f4, 0x10($sp)
/* 466194 80219D04 4600210D */  trunc.w.s $f4, $f4
/* 466198 80219D08 E6040084 */  swc1      $f4, 0x84($s0)
/* 46619C 80219D0C C7A40014 */  lwc1      $f4, 0x14($sp)
/* 4661A0 80219D10 4600210D */  trunc.w.s $f4, $f4
/* 4661A4 80219D14 E6040088 */  swc1      $f4, 0x88($s0)
/* 4661A8 80219D18 4600F10D */  trunc.w.s $f4, $f30
/* 4661AC 80219D1C E604008C */  swc1      $f4, 0x8c($s0)
/* 4661B0 80219D20 8FBF0028 */  lw        $ra, 0x28($sp)
/* 4661B4 80219D24 8FB10024 */  lw        $s1, 0x24($sp)
/* 4661B8 80219D28 8FB00020 */  lw        $s0, 0x20($sp)
/* 4661BC 80219D2C D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 4661C0 80219D30 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 4661C4 80219D34 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 4661C8 80219D38 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 4661CC 80219D3C D7B60038 */  ldc1      $f22, 0x38($sp)
/* 4661D0 80219D40 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 4661D4 80219D44 24020002 */  addiu     $v0, $zero, 2
/* 4661D8 80219D48 03E00008 */  jr        $ra
/* 4661DC 80219D4C 27BD0060 */   addiu    $sp, $sp, 0x60
