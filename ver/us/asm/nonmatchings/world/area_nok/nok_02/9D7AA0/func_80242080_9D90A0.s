.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242080_9D90A0
/* 9D90A0 80242080 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 9D90A4 80242084 AFB1001C */  sw        $s1, 0x1c($sp)
/* 9D90A8 80242088 AFBF0020 */  sw        $ra, 0x20($sp)
/* 9D90AC 8024208C AFB00018 */  sw        $s0, 0x18($sp)
/* 9D90B0 80242090 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 9D90B4 80242094 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 9D90B8 80242098 10A00060 */  beqz      $a1, .L8024221C
/* 9D90BC 8024209C 0080882D */   daddu    $s1, $a0, $zero
/* 9D90C0 802420A0 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D90C4 802420A4 0C0B1EAF */  jal       evt_get_variable
/* 9D90C8 802420A8 34A5D481 */   ori      $a1, $a1, 0xd481
/* 9D90CC 802420AC 0220202D */  daddu     $a0, $s1, $zero
/* 9D90D0 802420B0 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D90D4 802420B4 4482B000 */  mtc1      $v0, $f22
/* 9D90D8 802420B8 00000000 */  nop
/* 9D90DC 802420BC 4680B5A0 */  cvt.s.w   $f22, $f22
/* 9D90E0 802420C0 0C0B1EAF */  jal       evt_get_variable
/* 9D90E4 802420C4 34A5D482 */   ori      $a1, $a1, 0xd482
/* 9D90E8 802420C8 0220202D */  daddu     $a0, $s1, $zero
/* 9D90EC 802420CC 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D90F0 802420D0 4482A000 */  mtc1      $v0, $f20
/* 9D90F4 802420D4 00000000 */  nop
/* 9D90F8 802420D8 4680A520 */  cvt.s.w   $f20, $f20
/* 9D90FC 802420DC 0C0B1EAF */  jal       evt_get_variable
/* 9D9100 802420E0 34A5D483 */   ori      $a1, $a1, 0xd483
/* 9D9104 802420E4 44821000 */  mtc1      $v0, $f2
/* 9D9108 802420E8 00000000 */  nop
/* 9D910C 802420EC 468010A0 */  cvt.s.w   $f2, $f2
/* 9D9110 802420F0 4405B000 */  mfc1      $a1, $f22
/* 9D9114 802420F4 4406A000 */  mfc1      $a2, $f20
/* 9D9118 802420F8 44071000 */  mfc1      $a3, $f2
/* 9D911C 802420FC 0C01C574 */  jal       fx_quizmo_stage
/* 9D9120 80242100 0000202D */   daddu    $a0, $zero, $zero
/* 9D9124 80242104 0220202D */  daddu     $a0, $s1, $zero
/* 9D9128 80242108 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D912C 8024210C 34A5D481 */  ori       $a1, $a1, 0xd481
/* 9D9130 80242110 3C108025 */  lui       $s0, %hi(func_802549C0)
/* 9D9134 80242114 261049C0 */  addiu     $s0, $s0, %lo(func_802549C0)
/* 9D9138 80242118 0C0B1EAF */  jal       evt_get_variable
/* 9D913C 8024211C AE020000 */   sw       $v0, ($s0)
/* 9D9140 80242120 0220202D */  daddu     $a0, $s1, $zero
/* 9D9144 80242124 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D9148 80242128 4482B000 */  mtc1      $v0, $f22
/* 9D914C 8024212C 00000000 */  nop
/* 9D9150 80242130 4680B5A0 */  cvt.s.w   $f22, $f22
/* 9D9154 80242134 0C0B1EAF */  jal       evt_get_variable
/* 9D9158 80242138 34A5D482 */   ori      $a1, $a1, 0xd482
/* 9D915C 8024213C 0220202D */  daddu     $a0, $s1, $zero
/* 9D9160 80242140 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D9164 80242144 4482A000 */  mtc1      $v0, $f20
/* 9D9168 80242148 00000000 */  nop
/* 9D916C 8024214C 4680A520 */  cvt.s.w   $f20, $f20
/* 9D9170 80242150 0C0B1EAF */  jal       evt_get_variable
/* 9D9174 80242154 34A5D483 */   ori      $a1, $a1, 0xd483
/* 9D9178 80242158 44821000 */  mtc1      $v0, $f2
/* 9D917C 8024215C 00000000 */  nop
/* 9D9180 80242160 468010A0 */  cvt.s.w   $f2, $f2
/* 9D9184 80242164 4405B000 */  mfc1      $a1, $f22
/* 9D9188 80242168 4406A000 */  mfc1      $a2, $f20
/* 9D918C 8024216C 44071000 */  mfc1      $a3, $f2
/* 9D9190 80242170 0C01C604 */  jal       fx_quizmo_audience
/* 9D9194 80242174 0000202D */   daddu    $a0, $zero, $zero
/* 9D9198 80242178 0220202D */  daddu     $a0, $s1, $zero
/* 9D919C 8024217C 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D91A0 80242180 3C018025 */  lui       $at, %hi(D_802549C4)
/* 9D91A4 80242184 AC2249C4 */  sw        $v0, %lo(D_802549C4)($at)
/* 9D91A8 80242188 0C0B1EAF */  jal       evt_get_variable
/* 9D91AC 8024218C 34A5D481 */   ori      $a1, $a1, 0xd481
/* 9D91B0 80242190 0220202D */  daddu     $a0, $s1, $zero
/* 9D91B4 80242194 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D91B8 80242198 4482B000 */  mtc1      $v0, $f22
/* 9D91BC 8024219C 00000000 */  nop
/* 9D91C0 802421A0 4680B5A0 */  cvt.s.w   $f22, $f22
/* 9D91C4 802421A4 0C0B1EAF */  jal       evt_get_variable
/* 9D91C8 802421A8 34A5D482 */   ori      $a1, $a1, 0xd482
/* 9D91CC 802421AC 0220202D */  daddu     $a0, $s1, $zero
/* 9D91D0 802421B0 3C05F4AC */  lui       $a1, 0xf4ac
/* 9D91D4 802421B4 4482A000 */  mtc1      $v0, $f20
/* 9D91D8 802421B8 00000000 */  nop
/* 9D91DC 802421BC 4680A520 */  cvt.s.w   $f20, $f20
/* 9D91E0 802421C0 0C0B1EAF */  jal       evt_get_variable
/* 9D91E4 802421C4 34A5D483 */   ori      $a1, $a1, 0xd483
/* 9D91E8 802421C8 44821000 */  mtc1      $v0, $f2
/* 9D91EC 802421CC 00000000 */  nop
/* 9D91F0 802421D0 468010A0 */  cvt.s.w   $f2, $f2
/* 9D91F4 802421D4 4405B000 */  mfc1      $a1, $f22
/* 9D91F8 802421D8 4406A000 */  mfc1      $a2, $f20
/* 9D91FC 802421DC 3C013F80 */  lui       $at, 0x3f80
/* 9D9200 802421E0 44810000 */  mtc1      $at, $f0
/* 9D9204 802421E4 44071000 */  mfc1      $a3, $f2
/* 9D9208 802421E8 0000202D */  daddu     $a0, $zero, $zero
/* 9D920C 802421EC AFA00014 */  sw        $zero, 0x14($sp)
/* 9D9210 802421F0 0C01CA24 */  jal       fx_quizmo_assistant
/* 9D9214 802421F4 E7A00010 */   swc1     $f0, 0x10($sp)
/* 9D9218 802421F8 8E030000 */  lw        $v1, ($s0)
/* 9D921C 802421FC 8C64000C */  lw        $a0, 0xc($v1)
/* 9D9220 80242200 3C018025 */  lui       $at, %hi(D_802549C8)
/* 9D9224 80242204 AC2249C8 */  sw        $v0, %lo(D_802549C8)($at)
/* 9D9228 80242208 AC800018 */  sw        $zero, 0x18($a0)
/* 9D922C 8024220C AC800020 */  sw        $zero, 0x20($a0)
/* 9D9230 80242210 AC800024 */  sw        $zero, 0x24($a0)
/* 9D9234 80242214 AC800028 */  sw        $zero, 0x28($a0)
/* 9D9238 80242218 AC80001C */  sw        $zero, 0x1c($a0)
.L8024221C:
/* 9D923C 8024221C 3C028025 */  lui       $v0, %hi(func_802549C0)
/* 9D9240 80242220 8C4249C0 */  lw        $v0, %lo(func_802549C0)($v0)
/* 9D9244 80242224 8C44000C */  lw        $a0, 0xc($v0)
/* 9D9248 80242228 8C820020 */  lw        $v0, 0x20($a0)
/* 9D924C 8024222C 8C830028 */  lw        $v1, 0x28($a0)
/* 9D9250 80242230 2442000A */  addiu     $v0, $v0, 0xa
/* 9D9254 80242234 AC820020 */  sw        $v0, 0x20($a0)
/* 9D9258 80242238 8C820024 */  lw        $v0, 0x24($a0)
/* 9D925C 8024223C 2463000A */  addiu     $v1, $v1, 0xa
/* 9D9260 80242240 AC830028 */  sw        $v1, 0x28($a0)
/* 9D9264 80242244 8C830018 */  lw        $v1, 0x18($a0)
/* 9D9268 80242248 2442000A */  addiu     $v0, $v0, 0xa
/* 9D926C 8024224C AC820024 */  sw        $v0, 0x24($a0)
/* 9D9270 80242250 8C82001C */  lw        $v0, 0x1c($a0)
/* 9D9274 80242254 2463000A */  addiu     $v1, $v1, 0xa
/* 9D9278 80242258 AC830018 */  sw        $v1, 0x18($a0)
/* 9D927C 8024225C 286300FF */  slti      $v1, $v1, 0xff
/* 9D9280 80242260 2442000A */  addiu     $v0, $v0, 0xa
/* 9D9284 80242264 AC82001C */  sw        $v0, 0x1c($a0)
/* 9D9288 80242268 14600004 */  bnez      $v1, .L8024227C
/* 9D928C 8024226C 0000102D */   daddu    $v0, $zero, $zero
/* 9D9290 80242270 240200FF */  addiu     $v0, $zero, 0xff
/* 9D9294 80242274 AC820018 */  sw        $v0, 0x18($a0)
/* 9D9298 80242278 24020002 */  addiu     $v0, $zero, 2
.L8024227C:
/* 9D929C 8024227C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 9D92A0 80242280 8FB1001C */  lw        $s1, 0x1c($sp)
/* 9D92A4 80242284 8FB00018 */  lw        $s0, 0x18($sp)
/* 9D92A8 80242288 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 9D92AC 8024228C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 9D92B0 80242290 03E00008 */  jr        $ra
/* 9D92B4 80242294 27BD0038 */   addiu    $sp, $sp, 0x38
