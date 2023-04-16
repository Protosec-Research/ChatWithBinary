source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402008 = constant [34 x i8] c"Enter a string of %d characters: \00"
@global_var_40202a = constant [9 x i8] c"sleep %d\00"
@global_var_402033 = constant [24 x i8] c"Stable index # (0-%d)? \00"
@global_var_40204b = constant [3 x i8] c"%d\00"
@global_var_40204e = constant [21 x i8] c"Invalid stable index\00"
@global_var_402068 = constant [31 x i8] c"Stable location already in use\00"
@global_var_402087 = constant [28 x i8] c"Horse name length (%d-%d)? \00"
@global_var_4020a3 = constant [26 x i8] c"Invalid horse name length\00"
@global_var_4020c0 = constant [41 x i8] c"Failed to allocate memory for horse name\00"
@global_var_4020f0 = constant [32 x i8] c"Added horse to stable index %d\0A\00"
@global_var_402110 = constant [27 x i8] c"Stable location not in use\00"
@global_var_402130 = constant [36 x i8] c"Removed horse from stable index %d\0A\00"
@global_var_402158 = constant [87 x i8] c"You may try to take a head start, if you get caught you will be banned from the races!\00"
@global_var_4021af = constant [11 x i8] c"New spot? \00"
@global_var_4021c0 = constant [35 x i8] c"Modified horse in stable index %d\0A\00"
@global_var_4021e5 = constant [13 x i8] c"/dev/urandom\00"
@global_var_4021f2 = constant [13 x i8] c"1. Add horse\00"
@global_var_4021ff = constant [16 x i8] c"2. Remove horse\00"
@global_var_40220f = constant [8 x i8] c"3. Race\00"
@global_var_402217 = constant [8 x i8] c"4. Exit\00"
@global_var_40221f = constant [9 x i8] c"Choice: \00"
@global_var_402288 = constant i64 -6043018986907
@global_var_402228 = local_unnamed_addr constant [31 x i8] c"You have been caught cheating!\00"
@global_var_402247 = local_unnamed_addr constant [13 x i8] c"WINNER: %s\0A\0A\00"
@global_var_402254 = local_unnamed_addr constant [26 x i8] c"Not enough horses to race\00"
@global_var_40226e = constant [15 x i8] c"Invalid choice\00"
@global_var_40227d = local_unnamed_addr constant [9 x i8] c"Goodbye!\00"
@global_var_403e00 = global i64 4198944
@global_var_403e08 = global i64 4198896
@0 = external global i32
@global_var_4040e8 = local_unnamed_addr global i8 0
@global_var_4040c0 = local_unnamed_addr global %_IO_FILE* null
@1 = internal constant [2 x i8] c"\0A\00"
@2 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i64 0, i64 0)
@global_var_4040d0 = local_unnamed_addr global %_IO_FILE* null
@global_var_4040e0 = local_unnamed_addr global %_IO_FILE* null
@3 = internal constant [2 x i8] c"r\00"
@4 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i64 0, i64 0)
@global_var_4040ec = local_unnamed_addr global i32 0
@global_var_402154 = constant [2 x i8] c"\0A\00"
@global_var_4021e3 = constant [2 x i8] c"r\00"

define i64 @function_401000() local_unnamed_addr {
dec_label_pc_401000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* @global_var_403ff8, align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_401012, label %dec_label_pc_401010, !insn.addr !3

dec_label_pc_401010:                              ; preds = %dec_label_pc_401000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_401012, !insn.addr !4

dec_label_pc_401012:                              ; preds = %dec_label_pc_401010, %dec_label_pc_401000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define void @function_401030(i64* %ptr) local_unnamed_addr {
dec_label_pc_401030:
  call void @free(i64* %ptr), !insn.addr !6
  ret void, !insn.addr !6
}

define i32 @function_401040(i8* %s) local_unnamed_addr {
dec_label_pc_401040:
  %0 = call i32 @puts(i8* %s), !insn.addr !7
  ret i32 %0, !insn.addr !7
}

define i32 @function_401050(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_401050:
  %0 = call i32 @fread(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %stream), !insn.addr !8
  ret i32 %0, !insn.addr !8
}

define i32 @function_401060(%_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_401060:
  %0 = call i32 @fclose(%_IO_FILE* %stream), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define void @function_401070() local_unnamed_addr {
dec_label_pc_401070:
  call void @__stack_chk_fail(), !insn.addr !10
  ret void, !insn.addr !10
}

define void @function_401080(%_IO_FILE* %stream, i8* %buf) local_unnamed_addr {
dec_label_pc_401080:
  call void @setbuf(%_IO_FILE* %stream, i8* %buf), !insn.addr !11
  ret void, !insn.addr !11
}

define i32 @function_401090(i8* %command) local_unnamed_addr {
dec_label_pc_401090:
  %0 = call i32 @system(i8* %command), !insn.addr !12
  ret i32 %0, !insn.addr !12
}

define i32 @function_4010a0(i8* %format, ...) local_unnamed_addr {
dec_label_pc_4010a0:
  %0 = call i32 (i8*, ...) @printf(i8* %format), !insn.addr !13
  ret i32 %0, !insn.addr !13
}

define i32 @function_4010b0(i8* %string, i32 %maxlen) local_unnamed_addr {
dec_label_pc_4010b0:
  %0 = call i32 @strnlen(i8* %string, i32 %maxlen), !insn.addr !14
  ret i32 %0, !insn.addr !14
}

define void @function_4010c0(i32 %seed) local_unnamed_addr {
dec_label_pc_4010c0:
  call void @srand(i32 %seed), !insn.addr !15
  ret void, !insn.addr !15
}

define i32 @function_4010d0(i32 %c, %_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_4010d0:
  %0 = call i32 @putc(i32 %c, %_IO_FILE* %stream), !insn.addr !16
  ret i32 %0, !insn.addr !16
}

define i32 @function_4010e0() local_unnamed_addr {
dec_label_pc_4010e0:
  %0 = call i32 @getchar(), !insn.addr !17
  ret i32 %0, !insn.addr !17
}

define i64* @function_4010f0(i32 %size) local_unnamed_addr {
dec_label_pc_4010f0:
  %0 = call i64* @malloc(i32 %size), !insn.addr !18
  ret i64* %0, !insn.addr !18
}

define %_IO_FILE* @function_401100(i8* %filename, i8* %modes) local_unnamed_addr {
dec_label_pc_401100:
  %0 = call %_IO_FILE* @fopen(i8* %filename, i8* %modes), !insn.addr !19
  ret %_IO_FILE* %0, !insn.addr !19
}

define i32 @function_401110(i8* %format, ...) local_unnamed_addr {
dec_label_pc_401110:
  %0 = call i32 (i8*, ...) @scanf(i8* %format), !insn.addr !20
  ret i32 %0, !insn.addr !20
}

define i32 @function_401120(i8* %s, i8* %format, ...) local_unnamed_addr {
dec_label_pc_401120:
  %0 = call i32 (i8*, i8*, ...) @sprintf(i8* %s, i8* %format), !insn.addr !21
  ret i32 %0, !insn.addr !21
}

define i32 @function_401130() local_unnamed_addr {
dec_label_pc_401130:
  %0 = call i32 @rand(), !insn.addr !22
  ret i32 %0, !insn.addr !22
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_401140:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !23
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !23
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !23
  %3 = call i32 @__libc_start_main(i64 4201484, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 4202064 to void ()*), void ()* inttoptr (i64 4202160 to void ()*), void ()* %2), !insn.addr !23
  %4 = call i64 @__asm_hlt(), !insn.addr !24
  unreachable, !insn.addr !24
}

define i64 @function_401170() local_unnamed_addr {
dec_label_pc_401170:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !25
}

define i64 @function_401180() local_unnamed_addr {
dec_label_pc_401180:
  ret i64 4210864, !insn.addr !26
}

define i64 @function_4011b0() local_unnamed_addr {
dec_label_pc_4011b0:
  ret i64 0, !insn.addr !27
}

define i64 @function_4011f0() local_unnamed_addr {
dec_label_pc_4011f0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* @global_var_4040e8, align 1, !insn.addr !28
  %3 = icmp eq i8 %2, 0, !insn.addr !28
  %4 = icmp eq i1 %3, false, !insn.addr !29
  br i1 %4, label %dec_label_pc_401210, label %dec_label_pc_4011fd, !insn.addr !29

dec_label_pc_4011fd:                              ; preds = %dec_label_pc_4011f0
  %5 = call i64 @function_401180(), !insn.addr !30
  store i8 1, i8* @global_var_4040e8, align 1, !insn.addr !31
  ret i64 %5, !insn.addr !32

dec_label_pc_401210:                              ; preds = %dec_label_pc_4011f0
  ret i64 %1, !insn.addr !33

; uselistorder directives
  uselistorder i8* @global_var_4040e8, { 1, 0 }
}

define i64 @function_401220() local_unnamed_addr {
dec_label_pc_401220:
  %0 = call i64 @function_4011b0(), !insn.addr !34
  ret i64 %0, !insn.addr !34
}

define i64 @function_401226(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_401226:
  %rax.0.reg2mem = alloca i64, !insn.addr !35
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, !insn.addr !35
  %storemerge2.lcssa.reg2mem = alloca i8, !insn.addr !35
  %storemerge3.in.lcssa.reg2mem = alloca i32, !insn.addr !35
  %stack_var_-32.07.reg2mem = alloca i64, !insn.addr !35
  %storemerge8.reg2mem = alloca i32, !insn.addr !35
  %0 = and i64 %arg2, 4294967295, !insn.addr !36
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_var_402008, i64 0, i64 0), i64 %0), !insn.addr !37
  %2 = trunc i64 %arg2 to i32, !insn.addr !38
  %3 = icmp sgt i32 %2, 0, !insn.addr !39
  store i32 0, i32* %storemerge8.reg2mem, !insn.addr !39
  store i64 %arg1, i64* %stack_var_-32.07.reg2mem, !insn.addr !39
  store i64 %arg1, i64* %stack_var_-32.0.lcssa.reg2mem, !insn.addr !39
  br i1 %3, label %dec_label_pc_40125c, label %dec_label_pc_401299.preheader, !insn.addr !39

dec_label_pc_40125c:                              ; preds = %dec_label_pc_401226, %dec_label_pc_40127a
  %stack_var_-32.07.reload = load i64, i64* %stack_var_-32.07.reg2mem
  %storemerge8.reload = load i32, i32* %storemerge8.reg2mem
  %4 = call i32 @getchar(), !insn.addr !40
  %storemerge25 = trunc i32 %4 to i8
  %5 = icmp eq i8 %storemerge25, 10, !insn.addr !41
  store i32 %4, i32* %storemerge3.in.lcssa.reg2mem, !insn.addr !42
  store i8 %storemerge25, i8* %storemerge2.lcssa.reg2mem, !insn.addr !42
  br i1 %5, label %dec_label_pc_401266, label %dec_label_pc_401274, !insn.addr !42

dec_label_pc_401266:                              ; preds = %dec_label_pc_40125c, %dec_label_pc_401266
  %6 = call i32 @getchar(), !insn.addr !43
  %storemerge2 = trunc i32 %6 to i8
  %7 = icmp eq i8 %storemerge2, 10, !insn.addr !41
  store i32 %6, i32* %storemerge3.in.lcssa.reg2mem, !insn.addr !42
  store i8 %storemerge2, i8* %storemerge2.lcssa.reg2mem, !insn.addr !42
  br i1 %7, label %dec_label_pc_401266, label %dec_label_pc_401274, !insn.addr !42

dec_label_pc_401274:                              ; preds = %dec_label_pc_401266, %dec_label_pc_40125c
  %storemerge2.lcssa.reload = load i8, i8* %storemerge2.lcssa.reg2mem
  %8 = icmp eq i8 %storemerge2.lcssa.reload, -1, !insn.addr !44
  br i1 %8, label %dec_label_pc_4012b1.loopexit, label %dec_label_pc_40127a, !insn.addr !45

dec_label_pc_40127a:                              ; preds = %dec_label_pc_401274
  %9 = add i64 %stack_var_-32.07.reload, 1, !insn.addr !46
  %10 = inttoptr i64 %stack_var_-32.07.reload to i8*, !insn.addr !47
  store i8 %storemerge2.lcssa.reload, i8* %10, align 1, !insn.addr !47
  %11 = add nuw nsw i32 %storemerge8.reload, 1, !insn.addr !48
  %12 = icmp slt i32 %11, %2, !insn.addr !39
  store i32 %11, i32* %storemerge8.reg2mem, !insn.addr !39
  store i64 %9, i64* %stack_var_-32.07.reg2mem, !insn.addr !39
  store i64 %9, i64* %stack_var_-32.0.lcssa.reg2mem, !insn.addr !39
  br i1 %12, label %dec_label_pc_40125c, label %dec_label_pc_401299.preheader, !insn.addr !39

dec_label_pc_401299.preheader:                    ; preds = %dec_label_pc_40127a, %dec_label_pc_401226
  %stack_var_-32.0.lcssa.reload = load i64, i64* %stack_var_-32.0.lcssa.reg2mem
  br label %dec_label_pc_401299

dec_label_pc_401299:                              ; preds = %dec_label_pc_401299.preheader, %dec_label_pc_401299
  %13 = call i32 @getchar(), !insn.addr !49
  %14 = trunc i32 %13 to i8, !insn.addr !50
  %15 = icmp eq i8 %14, 10, !insn.addr !51
  %16 = icmp eq i1 %15, false, !insn.addr !52
  br i1 %16, label %dec_label_pc_401299, label %dec_label_pc_4012a7, !insn.addr !52

dec_label_pc_4012a7:                              ; preds = %dec_label_pc_401299
  %17 = inttoptr i64 %stack_var_-32.0.lcssa.reload to i8*, !insn.addr !53
  store i8 0, i8* %17, align 1, !insn.addr !53
  store i64 %stack_var_-32.0.lcssa.reload, i64* %rax.0.reg2mem, !insn.addr !54
  br label %dec_label_pc_4012b1, !insn.addr !54

dec_label_pc_4012b1.loopexit:                     ; preds = %dec_label_pc_401274
  %storemerge3.in.lcssa.reload = load i32, i32* %storemerge3.in.lcssa.reg2mem
  %storemerge3.le = sext i32 %storemerge3.in.lcssa.reload to i64
  store i64 %storemerge3.le, i64* %rax.0.reg2mem
  br label %dec_label_pc_4012b1

dec_label_pc_4012b1:                              ; preds = %dec_label_pc_4012b1.loopexit, %dec_label_pc_4012a7
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !55

; uselistorder directives
  uselistorder i32 %2, { 1, 0 }
  uselistorder i32* %storemerge8.reg2mem, { 2, 0, 1 }
  uselistorder i64* %stack_var_-32.07.reg2mem, { 2, 0, 1 }
  uselistorder i8 0, { 1, 2, 0 }
  uselistorder i8 10, { 2, 1, 0 }
  uselistorder i32 ()* @getchar, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_401299, { 1, 0 }
  uselistorder label %dec_label_pc_401266, { 1, 0 }
  uselistorder label %dec_label_pc_40125c, { 1, 0 }
}

define i64 @sleep(i64 %arg1) local_unnamed_addr {
dec_label_pc_4012b3:
  %rax.0.reg2mem = alloca i64, !insn.addr !56
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !57
  %1 = and i64 %arg1, 4294967295, !insn.addr !58
  %2 = bitcast i64* %stack_var_-40 to i8*, !insn.addr !59
  %3 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_40202a, i64 0, i64 0), i64 %1), !insn.addr !59
  %4 = call i32 @system(i8* nonnull %2), !insn.addr !60
  %5 = call i64 @__readfsqword(i64 40), !insn.addr !61
  %6 = icmp eq i64 %0, %5, !insn.addr !61
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !62
  br i1 %6, label %dec_label_pc_40130d, label %dec_label_pc_401308, !insn.addr !62

dec_label_pc_401308:                              ; preds = %dec_label_pc_4012b3
  call void @__stack_chk_fail(), !insn.addr !63
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !63
  br label %dec_label_pc_40130d, !insn.addr !63

dec_label_pc_40130d:                              ; preds = %dec_label_pc_401308, %dec_label_pc_4012b3
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !64
}

define i64 @function_40130f(i64 %arg1) local_unnamed_addr {
dec_label_pc_40130f:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !65
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401324

dec_label_pc_401324:                              ; preds = %dec_label_pc_401324, %dec_label_pc_40130f
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %0 = mul i64 %indvars.iv.reload, 16, !insn.addr !66
  %1 = add i64 %0, %arg1, !insn.addr !67
  %2 = inttoptr i64 %1 to i64*, !insn.addr !68
  store i64 0, i64* %2, align 8, !insn.addr !68
  %3 = add i64 %1, 8, !insn.addr !69
  %4 = inttoptr i64 %3 to i32*, !insn.addr !70
  %5 = trunc i64 %indvars.iv.reload to i32
  store i32 %5, i32* %4, align 4, !insn.addr !70
  %6 = add i64 %1, 12, !insn.addr !71
  %7 = inttoptr i64 %6 to i32*, !insn.addr !72
  store i32 0, i32* %7, align 4, !insn.addr !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 18
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !73
  br i1 %exitcond, label %dec_label_pc_40137b, label %dec_label_pc_401324, !insn.addr !73

dec_label_pc_40137b:                              ; preds = %dec_label_pc_401324
  ret i64 %6, !insn.addr !74

; uselistorder directives
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
}

define i64 @function_40137f(i64 %arg1) local_unnamed_addr {
dec_label_pc_40137f:
  %rax.1.reg2mem = alloca i64, !insn.addr !75
  %rax.0.reg2mem = alloca i64, !insn.addr !75
  %stack_var_-36 = alloca i32, align 4
  %stack_var_-40 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !76
  store i32 0, i32* %stack_var_-40, align 4, !insn.addr !77
  store i32 0, i32* %stack_var_-36, align 4, !insn.addr !78
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_var_402033, i64 0, i64 0), i64 17), !insn.addr !79
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-40), !insn.addr !80
  %3 = load i32, i32* %stack_var_-40, align 4, !insn.addr !81
  %4 = icmp ult i32 %3, 18
  br i1 %4, label %dec_label_pc_401400, label %dec_label_pc_4013ea, !insn.addr !82

dec_label_pc_4013ea:                              ; preds = %dec_label_pc_40137f
  %5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_40204e, i64 0, i64 0)), !insn.addr !83
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !84
  br label %dec_label_pc_401536, !insn.addr !84

dec_label_pc_401400:                              ; preds = %dec_label_pc_40137f
  %6 = sext i32 %3 to i64, !insn.addr !85
  %7 = mul i64 %6, 16, !insn.addr !86
  %8 = add i64 %arg1, 12
  %9 = add i64 %7, %8, !insn.addr !87
  %10 = inttoptr i64 %9 to i32*, !insn.addr !88
  %11 = load i32, i32* %10, align 4, !insn.addr !88
  %12 = icmp eq i32 %11, 0, !insn.addr !89
  br i1 %12, label %dec_label_pc_401431, label %dec_label_pc_40141b, !insn.addr !90

dec_label_pc_40141b:                              ; preds = %dec_label_pc_401400
  %13 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_var_402068, i64 0, i64 0)), !insn.addr !91
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !92
  br label %dec_label_pc_401536, !insn.addr !92

dec_label_pc_401431:                              ; preds = %dec_label_pc_401400
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_var_402087, i64 0, i64 0), i64 16, i64 256), !insn.addr !93
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-36), !insn.addr !94
  %16 = load i32, i32* %stack_var_-36, align 4, !insn.addr !95
  %.off = add i32 %16, -16
  %17 = icmp ult i32 %.off, 241
  br i1 %17, label %dec_label_pc_40148c, label %dec_label_pc_401476, !insn.addr !96

dec_label_pc_401476:                              ; preds = %dec_label_pc_401431
  %18 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_4020a3, i64 0, i64 0)), !insn.addr !97
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !98
  br label %dec_label_pc_401536, !insn.addr !98

dec_label_pc_40148c:                              ; preds = %dec_label_pc_401431
  %19 = add i32 %16, 1, !insn.addr !99
  %20 = load i32, i32* %stack_var_-40, align 4, !insn.addr !100
  %21 = call i64* @malloc(i32 %19), !insn.addr !101
  %22 = ptrtoint i64* %21 to i64, !insn.addr !101
  %23 = sext i32 %20 to i64, !insn.addr !102
  %24 = mul i64 %23, 16, !insn.addr !103
  %25 = add i64 %24, %arg1, !insn.addr !104
  %26 = inttoptr i64 %25 to i64*, !insn.addr !105
  store i64 %22, i64* %26, align 8, !insn.addr !105
  %27 = load i32, i32* %stack_var_-40, align 4, !insn.addr !106
  %28 = sext i32 %27 to i64, !insn.addr !107
  %29 = mul i64 %28, 16, !insn.addr !108
  %30 = add i64 %29, %arg1, !insn.addr !109
  %31 = inttoptr i64 %30 to i64*, !insn.addr !110
  %32 = load i64, i64* %31, align 8, !insn.addr !110
  %33 = icmp eq i64 %32, 0, !insn.addr !111
  %34 = icmp eq i1 %33, false, !insn.addr !112
  br i1 %34, label %dec_label_pc_4014df, label %dec_label_pc_4014cc, !insn.addr !112

dec_label_pc_4014cc:                              ; preds = %dec_label_pc_40148c
  %35 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_var_4020c0, i64 0, i64 0)), !insn.addr !113
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !114
  br label %dec_label_pc_401536, !insn.addr !114

dec_label_pc_4014df:                              ; preds = %dec_label_pc_40148c
  %36 = load i32, i32* %stack_var_-36, align 4, !insn.addr !115
  %37 = zext i32 %36 to i64, !insn.addr !116
  %38 = call i64 @function_401226(i64 %32, i64 %37), !insn.addr !117
  %39 = load i32, i32* %stack_var_-40, align 4, !insn.addr !118
  %40 = sext i32 %39 to i64, !insn.addr !119
  %41 = mul i64 %40, 16, !insn.addr !120
  %42 = add i64 %41, %8, !insn.addr !121
  %43 = inttoptr i64 %42 to i32*, !insn.addr !122
  store i32 1, i32* %43, align 4, !insn.addr !122
  %44 = load i32, i32* %stack_var_-40, align 4, !insn.addr !123
  %45 = zext i32 %44 to i64, !insn.addr !124
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_var_4020f0, i64 0, i64 0), i64 %45), !insn.addr !125
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !126
  br label %dec_label_pc_401536, !insn.addr !126

dec_label_pc_401536:                              ; preds = %dec_label_pc_4014df, %dec_label_pc_4014cc, %dec_label_pc_401476, %dec_label_pc_40141b, %dec_label_pc_4013ea
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %47 = call i64 @__readfsqword(i64 40), !insn.addr !127
  %48 = icmp eq i64 %0, %47, !insn.addr !127
  store i64 %rax.0.reload, i64* %rax.1.reg2mem, !insn.addr !128
  br i1 %48, label %dec_label_pc_40154a, label %dec_label_pc_401545, !insn.addr !128

dec_label_pc_401545:                              ; preds = %dec_label_pc_401536
  call void @__stack_chk_fail(), !insn.addr !129
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.1.reg2mem, !insn.addr !129
  br label %dec_label_pc_40154a, !insn.addr !129

dec_label_pc_40154a:                              ; preds = %dec_label_pc_401545, %dec_label_pc_401536
  %rax.1.reload = load i64, i64* %rax.1.reg2mem
  ret i64 %rax.1.reload, !insn.addr !130

; uselistorder directives
  uselistorder i32 %16, { 1, 0 }
  uselistorder i32 %3, { 1, 0 }
  uselistorder i32* %stack_var_-40, { 1, 2, 3, 4, 5, 0, 6 }
  uselistorder i32* %stack_var_-36, { 1, 2, 0, 3 }
  uselistorder i64* %rax.0.reg2mem, { 0, 5, 4, 3, 2, 1 }
}

define i64 @function_401551(i64 %arg1) local_unnamed_addr {
dec_label_pc_401551:
  %rax.1.reg2mem = alloca i64, !insn.addr !131
  %rax.0.reg2mem = alloca i64, !insn.addr !131
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !132
  store i32 0, i32* %stack_var_-20, align 4, !insn.addr !133
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_var_402033, i64 0, i64 0), i64 17), !insn.addr !134
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-20), !insn.addr !135
  %3 = load i32, i32* %stack_var_-20, align 4, !insn.addr !136
  %4 = icmp ult i32 %3, 18
  br i1 %4, label %dec_label_pc_4015ca, label %dec_label_pc_4015b4, !insn.addr !137

dec_label_pc_4015b4:                              ; preds = %dec_label_pc_401551
  %5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_40204e, i64 0, i64 0)), !insn.addr !138
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !139
  br label %dec_label_pc_40164a, !insn.addr !139

dec_label_pc_4015ca:                              ; preds = %dec_label_pc_401551
  %6 = sext i32 %3 to i64, !insn.addr !140
  %7 = mul i64 %6, 16, !insn.addr !141
  %8 = add i64 %7, %arg1, !insn.addr !142
  %9 = add i64 %8, 12, !insn.addr !143
  %10 = inttoptr i64 %9 to i32*, !insn.addr !144
  %11 = load i32, i32* %10, align 4, !insn.addr !144
  %12 = icmp eq i32 %11, 0, !insn.addr !145
  %13 = icmp eq i1 %12, false, !insn.addr !146
  br i1 %13, label %dec_label_pc_4015f8, label %dec_label_pc_4015e5, !insn.addr !146

dec_label_pc_4015e5:                              ; preds = %dec_label_pc_4015ca
  %14 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_402110, i64 0, i64 0)), !insn.addr !147
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !148
  br label %dec_label_pc_40164a, !insn.addr !148

dec_label_pc_4015f8:                              ; preds = %dec_label_pc_4015ca
  %15 = inttoptr i64 %8 to i64*, !insn.addr !149
  %16 = load i64, i64* %15, align 8, !insn.addr !149
  %17 = inttoptr i64 %16 to i64*, !insn.addr !150
  call void @free(i64* %17), !insn.addr !150
  %18 = load i32, i32* %stack_var_-20, align 4, !insn.addr !151
  %19 = sext i32 %18 to i64, !insn.addr !152
  %20 = mul i64 %19, 16, !insn.addr !153
  %21 = add i64 %arg1, 12, !insn.addr !154
  %22 = add i64 %21, %20, !insn.addr !155
  %23 = inttoptr i64 %22 to i32*, !insn.addr !156
  store i32 0, i32* %23, align 4, !insn.addr !156
  %24 = load i32, i32* %stack_var_-20, align 4, !insn.addr !157
  %25 = zext i32 %24 to i64, !insn.addr !158
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_var_402130, i64 0, i64 0), i64 %25), !insn.addr !159
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !160
  br label %dec_label_pc_40164a, !insn.addr !160

dec_label_pc_40164a:                              ; preds = %dec_label_pc_4015f8, %dec_label_pc_4015e5, %dec_label_pc_4015b4
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %27 = call i64 @__readfsqword(i64 40), !insn.addr !161
  %28 = icmp eq i64 %0, %27, !insn.addr !161
  store i64 %rax.0.reload, i64* %rax.1.reg2mem, !insn.addr !162
  br i1 %28, label %dec_label_pc_40165e, label %dec_label_pc_401659, !insn.addr !162

dec_label_pc_401659:                              ; preds = %dec_label_pc_40164a
  call void @__stack_chk_fail(), !insn.addr !163
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.1.reg2mem, !insn.addr !163
  br label %dec_label_pc_40165e, !insn.addr !163

dec_label_pc_40165e:                              ; preds = %dec_label_pc_401659, %dec_label_pc_40164a
  %rax.1.reload = load i64, i64* %rax.1.reg2mem
  ret i64 %rax.1.reload, !insn.addr !164

; uselistorder directives
  uselistorder i32 %3, { 1, 0 }
  uselistorder i32* %stack_var_-20, { 1, 2, 3, 0, 4 }
  uselistorder i64* %rax.0.reg2mem, { 0, 3, 2, 1 }
  uselistorder i64 %arg1, { 1, 0 }
}

define i64 @function_401660(i64 %arg1) local_unnamed_addr {
dec_label_pc_401660:
  %stack_var_-16.11.reg2mem = alloca i32, !insn.addr !165
  %indvars.iv.reg2mem = alloca i64, !insn.addr !165
  %0 = add i64 %arg1, 12, !insn.addr !166
  store i64 0, i64* %indvars.iv.reg2mem
  store i32 0, i32* %stack_var_-16.11.reg2mem
  br label %dec_label_pc_40167c

dec_label_pc_40167c:                              ; preds = %dec_label_pc_40167c, %dec_label_pc_401660
  %stack_var_-16.11.reload = load i32, i32* %stack_var_-16.11.reg2mem
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %1 = mul i64 %indvars.iv.reload, 16, !insn.addr !167
  %2 = add i64 %0, %1, !insn.addr !168
  %3 = inttoptr i64 %2 to i32*, !insn.addr !169
  %4 = load i32, i32* %3, align 4, !insn.addr !169
  %5 = icmp ne i32 %4, 0, !insn.addr !170
  %6 = zext i1 %5 to i32
  %spec.select = add i32 %stack_var_-16.11.reload, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 18
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !171
  store i32 %spec.select, i32* %stack_var_-16.11.reg2mem, !insn.addr !171
  br i1 %exitcond, label %dec_label_pc_4016a5, label %dec_label_pc_40167c, !insn.addr !171

dec_label_pc_4016a5:                              ; preds = %dec_label_pc_40167c
  %7 = add i32 %spec.select, -4, !insn.addr !172
  %8 = sub i32 3, %spec.select
  %9 = and i32 %8, %spec.select, !insn.addr !172
  %10 = icmp slt i32 %9, 0, !insn.addr !172
  %11 = icmp eq i32 %7, 0, !insn.addr !172
  %12 = icmp slt i32 %7, 0, !insn.addr !172
  %13 = icmp eq i1 %12, %10, !insn.addr !173
  %14 = icmp eq i1 %11, false, !insn.addr !173
  %15 = icmp eq i1 %13, %14, !insn.addr !173
  %16 = zext i1 %15 to i64, !insn.addr !174
  ret i64 %16, !insn.addr !175

; uselistorder directives
  uselistorder i32 %7, { 1, 0 }
  uselistorder i32 %spec.select, { 1, 3, 2, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-16.11.reg2mem, { 1, 0, 2 }
}

define i64 @function_4016b1(i64 %arg1) local_unnamed_addr {
dec_label_pc_4016b1:
  %storemerge.reg2mem = alloca i64, !insn.addr !176
  %indvars.iv.reg2mem = alloca i64, !insn.addr !176
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_4016c6

dec_label_pc_4016c6:                              ; preds = %dec_label_pc_4016b1, %dec_label_pc_401704
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %0 = mul i64 %indvars.iv.reload, 16, !insn.addr !177
  %1 = add i64 %0, %arg1, !insn.addr !178
  %2 = add i64 %1, 12, !insn.addr !179
  %3 = inttoptr i64 %2 to i32*, !insn.addr !180
  %4 = load i32, i32* %3, align 4, !insn.addr !180
  %5 = icmp eq i32 %4, 0, !insn.addr !181
  br i1 %5, label %dec_label_pc_401704, label %dec_label_pc_4016e1, !insn.addr !182

dec_label_pc_4016e1:                              ; preds = %dec_label_pc_4016c6
  %6 = add i64 %1, 8, !insn.addr !183
  %7 = inttoptr i64 %6 to i32*, !insn.addr !184
  %8 = load i32, i32* %7, align 4, !insn.addr !184
  %9 = icmp slt i32 %8, 30, !insn.addr !185
  store i64 1, i64* %storemerge.reg2mem, !insn.addr !185
  br i1 %9, label %dec_label_pc_401704, label %dec_label_pc_401713, !insn.addr !185

dec_label_pc_401704:                              ; preds = %dec_label_pc_4016e1, %dec_label_pc_4016c6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %10 = icmp ult i64 %indvars.iv.next, 18, !insn.addr !186
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !186
  store i64 0, i64* %storemerge.reg2mem, !insn.addr !186
  br i1 %10, label %dec_label_pc_4016c6, label %dec_label_pc_401713, !insn.addr !186

dec_label_pc_401713:                              ; preds = %dec_label_pc_401704, %dec_label_pc_4016e1
  %storemerge.reload = load i64, i64* %storemerge.reg2mem
  ret i64 %storemerge.reload, !insn.addr !187

; uselistorder directives
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder label %dec_label_pc_4016c6, { 1, 0 }
}

define i64 @function_401715(i64 %arg1) local_unnamed_addr {
dec_label_pc_401715:
  %stack_var_-16.0.reg2mem = alloca i32, !insn.addr !188
  %stack_var_-20.0.reg2mem = alloca i32, !insn.addr !188
  %stack_var_-20.12.reg2mem = alloca i32, !insn.addr !188
  %stack_var_-16.13.reg2mem = alloca i32, !insn.addr !188
  %indvars.iv.reg2mem = alloca i64, !insn.addr !188
  store i64 0, i64* %indvars.iv.reg2mem
  store i32 0, i32* %stack_var_-16.13.reg2mem
  store i32 0, i32* %stack_var_-20.12.reg2mem
  br label %dec_label_pc_401738

dec_label_pc_401738:                              ; preds = %dec_label_pc_40178f, %dec_label_pc_401715
  %stack_var_-20.12.reload = load i32, i32* %stack_var_-20.12.reg2mem
  %stack_var_-16.13.reload = load i32, i32* %stack_var_-16.13.reg2mem
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %0 = mul i64 %indvars.iv.reload, 16, !insn.addr !189
  %1 = add i64 %0, %arg1, !insn.addr !190
  %2 = add i64 %1, 12, !insn.addr !191
  %3 = inttoptr i64 %2 to i32*, !insn.addr !192
  %4 = load i32, i32* %3, align 4, !insn.addr !192
  %5 = icmp eq i32 %4, 0, !insn.addr !193
  store i32 %stack_var_-20.12.reload, i32* %stack_var_-20.0.reg2mem, !insn.addr !194
  store i32 %stack_var_-16.13.reload, i32* %stack_var_-16.0.reg2mem, !insn.addr !194
  br i1 %5, label %dec_label_pc_40178f, label %dec_label_pc_401753, !insn.addr !194

dec_label_pc_401753:                              ; preds = %dec_label_pc_401738
  %6 = add i64 %1, 8, !insn.addr !195
  %7 = inttoptr i64 %6 to i32*, !insn.addr !196
  %8 = load i32, i32* %7, align 4, !insn.addr !196
  %9 = zext i32 %8 to i64, !insn.addr !196
  %10 = sext i32 %stack_var_-20.12.reload to i64, !insn.addr !197
  %11 = icmp slt i64 %10, %9, !insn.addr !197
  %spec.select = select i1 %11, i32 %8, i32 %stack_var_-20.12.reload
  %12 = trunc i64 %indvars.iv.reload to i32
  %spec.select1 = select i1 %11, i32 %12, i32 %stack_var_-16.13.reload
  store i32 %spec.select, i32* %stack_var_-20.0.reg2mem
  store i32 %spec.select1, i32* %stack_var_-16.0.reg2mem
  br label %dec_label_pc_40178f

dec_label_pc_40178f:                              ; preds = %dec_label_pc_401753, %dec_label_pc_401738
  %stack_var_-16.0.reload = load i32, i32* %stack_var_-16.0.reg2mem
  %stack_var_-20.0.reload = load i32, i32* %stack_var_-20.0.reg2mem
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 18
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !198
  store i32 %stack_var_-16.0.reload, i32* %stack_var_-16.13.reg2mem, !insn.addr !198
  store i32 %stack_var_-20.0.reload, i32* %stack_var_-20.12.reg2mem, !insn.addr !198
  br i1 %exitcond, label %dec_label_pc_401799, label %dec_label_pc_401738, !insn.addr !198

dec_label_pc_401799:                              ; preds = %dec_label_pc_40178f
  %13 = sext i32 %stack_var_-16.0.reload to i64, !insn.addr !199
  %14 = mul i64 %13, 16, !insn.addr !200
  %15 = add i64 %14, %arg1, !insn.addr !201
  %16 = inttoptr i64 %15 to i64*, !insn.addr !202
  %17 = load i64, i64* %16, align 8, !insn.addr !202
  ret i64 %17, !insn.addr !203

; uselistorder directives
  uselistorder i32 %stack_var_-16.13.reload, { 1, 0 }
  uselistorder i32 %stack_var_-20.12.reload, { 1, 2, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-16.13.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-20.12.reg2mem, { 1, 0, 2 }
}

define i64 @function_4017af(i64 %arg1) local_unnamed_addr {
dec_label_pc_4017af:
  %rax.0.reg2mem = alloca i64, !insn.addr !204
  %indvars.iv.reg2mem = alloca i64, !insn.addr !204
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_4017c8

dec_label_pc_4017c8:                              ; preds = %dec_label_pc_401842, %dec_label_pc_4017af
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %0 = mul i64 %indvars.iv.reload, 16, !insn.addr !205
  %1 = add i64 %0, %arg1, !insn.addr !206
  %2 = add i64 %1, 12, !insn.addr !207
  %3 = inttoptr i64 %2 to i32*, !insn.addr !208
  %4 = load i32, i32* %3, align 4, !insn.addr !208
  %5 = icmp eq i32 %4, 0, !insn.addr !209
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !210
  br i1 %5, label %dec_label_pc_401842, label %dec_label_pc_4017e3, !insn.addr !210

dec_label_pc_4017e3:                              ; preds = %dec_label_pc_4017c8
  %6 = call i32 @rand(), !insn.addr !211
  %7 = srem i32 %6, 5
  %8 = sub i32 %7, %6
  %9 = add i64 %1, 8, !insn.addr !212
  %10 = inttoptr i64 %9 to i32*, !insn.addr !213
  %11 = load i32, i32* %10, align 4, !insn.addr !213
  %12 = add i32 %6, 1, !insn.addr !214
  %13 = add i32 %12, %11, !insn.addr !215
  %14 = add i32 %13, %8, !insn.addr !216
  store i32 %14, i32* %10, align 4, !insn.addr !217
  store i64 %9, i64* %rax.0.reg2mem, !insn.addr !217
  br label %dec_label_pc_401842, !insn.addr !217

dec_label_pc_401842:                              ; preds = %dec_label_pc_4017e3, %dec_label_pc_4017c8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 18
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !218
  br i1 %exitcond, label %dec_label_pc_401850, label %dec_label_pc_4017c8, !insn.addr !218

dec_label_pc_401850:                              ; preds = %dec_label_pc_401842
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !219

; uselistorder directives
  uselistorder i32 %6, { 2, 0, 1 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
}

define i64 @function_401854(i64 %arg1) local_unnamed_addr {
dec_label_pc_401854:
  %storemerge413.reg2mem = alloca i32, !insn.addr !220
  %.reg2mem28 = alloca %_IO_FILE*, !insn.addr !220
  %.lcssa6.reg2mem = alloca %_IO_FILE*, !insn.addr !220
  %storemerge111.reg2mem = alloca i32, !insn.addr !220
  %.reg2mem26 = alloca %_IO_FILE*, !insn.addr !220
  %.reg2mem24 = alloca i32, !insn.addr !220
  %indvars.iv.reg2mem = alloca i64, !insn.addr !220
  %.reg2mem = alloca i32, !insn.addr !220
  %storemerge38.reg2mem = alloca i32, !insn.addr !220
  %indvars.iv17.reg2mem = alloca i64, !insn.addr !220
  store i64 0, i64* %indvars.iv17.reg2mem
  br label %dec_label_pc_401877

dec_label_pc_401877:                              ; preds = %dec_label_pc_4019fe, %dec_label_pc_401854
  %indvars.iv17.reload = load i64, i64* %indvars.iv17.reg2mem
  %0 = mul i64 %indvars.iv17.reload, 16, !insn.addr !221
  %1 = add i64 %0, %arg1, !insn.addr !222
  %2 = add i64 %1, 12, !insn.addr !223
  %3 = inttoptr i64 %2 to i32*, !insn.addr !224
  %4 = load i32, i32* %3, align 4, !insn.addr !224
  %5 = icmp eq i32 %4, 0, !insn.addr !225
  br i1 %5, label %dec_label_pc_4019e4.preheader, label %dec_label_pc_401896, !insn.addr !226

dec_label_pc_4019e4.preheader:                    ; preds = %dec_label_pc_401877
  %6 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8
  store %_IO_FILE* %6, %_IO_FILE** %.reg2mem28
  store i32 0, i32* %storemerge413.reg2mem
  br label %dec_label_pc_4019cc

dec_label_pc_401896:                              ; preds = %dec_label_pc_401877
  %7 = inttoptr i64 %1 to i64*, !insn.addr !227
  %8 = load i64, i64* %7, align 8, !insn.addr !227
  %9 = inttoptr i64 %8 to i8*, !insn.addr !228
  %10 = call i32 @strnlen(i8* %9, i32 16), !insn.addr !228
  %11 = add i64 %1, 8, !insn.addr !229
  %12 = inttoptr i64 %11 to i32*, !insn.addr !230
  %13 = load i32, i32* %12, align 4, !insn.addr !230
  %14 = icmp eq i32 %13, 0, !insn.addr !231
  store i32 0, i32* %storemerge38.reg2mem, !insn.addr !231
  store i32 0, i32* %.reg2mem, !insn.addr !231
  br i1 %14, label %dec_label_pc_401937.preheader, label %dec_label_pc_4018c3, !insn.addr !231

dec_label_pc_4018c3:                              ; preds = %dec_label_pc_401896, %dec_label_pc_4018c3
  %storemerge38.reload = load i32, i32* %storemerge38.reg2mem
  %15 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8, !insn.addr !232
  %16 = call i32 @putc(i32 32, %_IO_FILE* %15), !insn.addr !233
  %17 = add i32 %storemerge38.reload, 1, !insn.addr !234
  %18 = load i32, i32* %12, align 4, !insn.addr !230
  %19 = zext i32 %18 to i64, !insn.addr !230
  %20 = sext i32 %17 to i64, !insn.addr !231
  %21 = icmp slt i64 %20, %19, !insn.addr !231
  store i32 %17, i32* %storemerge38.reg2mem, !insn.addr !231
  store i32 %18, i32* %.reg2mem, !insn.addr !231
  br i1 %21, label %dec_label_pc_4018c3, label %dec_label_pc_401937.preheader, !insn.addr !231

dec_label_pc_401937.preheader:                    ; preds = %dec_label_pc_4018c3, %dec_label_pc_401896
  %.reload = load i32, i32* %.reg2mem
  %22 = icmp sgt i32 %10, 0, !insn.addr !235
  store i32 %.reload, i32* %.reg2mem24, !insn.addr !235
  br i1 %22, label %dec_label_pc_401900.preheader, label %dec_label_pc_40193f, !insn.addr !235

dec_label_pc_401900.preheader:                    ; preds = %dec_label_pc_401937.preheader
  %wide.trip.count = zext i32 %10 to i64
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401900

dec_label_pc_401900:                              ; preds = %dec_label_pc_401900.preheader, %dec_label_pc_401900
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %23 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8, !insn.addr !236
  %24 = load i64, i64* %7, align 8, !insn.addr !237
  %25 = add i64 %24, %indvars.iv.reload, !insn.addr !238
  %26 = inttoptr i64 %25 to i8*, !insn.addr !239
  %27 = load i8, i8* %26, align 1, !insn.addr !239
  %28 = sext i8 %27 to i32, !insn.addr !240
  %29 = call i32 @putc(i32 %28, %_IO_FILE* %23), !insn.addr !241
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !235
  br i1 %exitcond, label %dec_label_pc_401937.dec_label_pc_40193f_crit_edge, label %dec_label_pc_401900, !insn.addr !235

dec_label_pc_401937.dec_label_pc_40193f_crit_edge: ; preds = %dec_label_pc_401900
  %.pre = load i32, i32* %12, align 4
  store i32 %.pre, i32* %.reg2mem24
  br label %dec_label_pc_40193f

dec_label_pc_40193f:                              ; preds = %dec_label_pc_401937.dec_label_pc_40193f_crit_edge, %dec_label_pc_401937.preheader
  %.reload25 = load i32, i32* %.reg2mem24, !insn.addr !242
  %30 = add i32 %.reload25, %10, !insn.addr !243
  %31 = icmp sgt i32 %30, 29, !insn.addr !244
  br i1 %31, label %dec_label_pc_4019fe, label %dec_label_pc_401985.preheader, !insn.addr !244

dec_label_pc_401985.preheader:                    ; preds = %dec_label_pc_40193f
  %32 = sub i32 30, %10, !insn.addr !245
  %33 = icmp eq i32 %32, %.reload25, !insn.addr !246
  %34 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8
  store %_IO_FILE* %34, %_IO_FILE** %.reg2mem26, !insn.addr !246
  store i32 0, i32* %storemerge111.reg2mem, !insn.addr !246
  store %_IO_FILE* %34, %_IO_FILE** %.lcssa6.reg2mem, !insn.addr !246
  br i1 %33, label %dec_label_pc_4019ad, label %dec_label_pc_40196d, !insn.addr !246

dec_label_pc_40196d:                              ; preds = %dec_label_pc_401985.preheader, %dec_label_pc_40196d
  %storemerge111.reload = load i32, i32* %storemerge111.reg2mem
  %.reload27 = load %_IO_FILE*, %_IO_FILE** %.reg2mem26
  %35 = call i32 @putc(i32 32, %_IO_FILE* %.reload27), !insn.addr !247
  %36 = add i32 %storemerge111.reload, 1, !insn.addr !248
  %37 = load i32, i32* %12, align 4, !insn.addr !242
  %38 = sub i32 %32, %37, !insn.addr !249
  %39 = zext i32 %38 to i64, !insn.addr !249
  %40 = sext i32 %36 to i64, !insn.addr !246
  %41 = icmp slt i64 %40, %39, !insn.addr !246
  %42 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8
  store %_IO_FILE* %42, %_IO_FILE** %.reg2mem26, !insn.addr !246
  store i32 %36, i32* %storemerge111.reg2mem, !insn.addr !246
  store %_IO_FILE* %42, %_IO_FILE** %.lcssa6.reg2mem, !insn.addr !246
  br i1 %41, label %dec_label_pc_40196d, label %dec_label_pc_4019ad, !insn.addr !246

dec_label_pc_4019ad:                              ; preds = %dec_label_pc_40196d, %dec_label_pc_401985.preheader
  %.lcssa6.reload = load %_IO_FILE*, %_IO_FILE** %.lcssa6.reg2mem
  %43 = call i32 @putc(i32 124, %_IO_FILE* %.lcssa6.reload), !insn.addr !250
  br label %dec_label_pc_4019fe, !insn.addr !251

dec_label_pc_4019cc:                              ; preds = %dec_label_pc_4019cc, %dec_label_pc_4019e4.preheader
  %storemerge413.reload = load i32, i32* %storemerge413.reg2mem
  %.reload29 = load %_IO_FILE*, %_IO_FILE** %.reg2mem28
  %44 = call i32 @putc(i32 32, %_IO_FILE* %.reload29), !insn.addr !252
  %45 = add nuw nsw i32 %storemerge413.reload, 1, !insn.addr !253
  %46 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8
  %exitcond16 = icmp eq i32 %45, 30
  store %_IO_FILE* %46, %_IO_FILE** %.reg2mem28, !insn.addr !254
  store i32 %45, i32* %storemerge413.reg2mem, !insn.addr !254
  br i1 %exitcond16, label %dec_label_pc_4019ea, label %dec_label_pc_4019cc, !insn.addr !254

dec_label_pc_4019ea:                              ; preds = %dec_label_pc_4019cc
  %47 = call i32 @putc(i32 124, %_IO_FILE* %46), !insn.addr !255
  br label %dec_label_pc_4019fe, !insn.addr !255

dec_label_pc_4019fe:                              ; preds = %dec_label_pc_4019ea, %dec_label_pc_4019ad, %dec_label_pc_40193f
  %48 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8, !insn.addr !256
  %49 = call i32 @putc(i32 10, %_IO_FILE* %48), !insn.addr !257
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 18
  store i64 %indvars.iv.next18, i64* %indvars.iv17.reg2mem, !insn.addr !258
  br i1 %exitcond19, label %dec_label_pc_401a20, label %dec_label_pc_401877, !insn.addr !258

dec_label_pc_401a20:                              ; preds = %dec_label_pc_4019fe
  %50 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_402154, i64 0, i64 0)), !insn.addr !259
  %51 = call i64 @sleep(i64 1), !insn.addr !260
  ret i64 %51, !insn.addr !261

; uselistorder directives
  uselistorder %_IO_FILE* %46, { 1, 0 }
  uselistorder i32* %12, { 1, 0, 3, 2 }
  uselistorder i32 %10, { 2, 0, 1, 3 }
  uselistorder i64* %indvars.iv17.reg2mem, { 1, 0, 2 }
  uselistorder i32* %storemerge38.reg2mem, { 2, 0, 1 }
  uselistorder i64* %indvars.iv.reg2mem, { 2, 0, 1 }
  uselistorder i32* %.reg2mem24, { 0, 2, 1 }
  uselistorder %_IO_FILE** %.reg2mem26, { 2, 0, 1 }
  uselistorder i32* %storemerge111.reg2mem, { 2, 0, 1 }
  uselistorder %_IO_FILE** %.reg2mem28, { 1, 0, 2 }
  uselistorder i32* %storemerge413.reg2mem, { 1, 0, 2 }
  uselistorder i32 (i32, %_IO_FILE*)* @putc, { 6, 4, 5, 2, 3, 1, 0, 7 }
  uselistorder i32 32, { 0, 2, 1 }
  uselistorder i64 12, { 3, 4, 5, 6, 0, 1, 7, 2, 8 }
  uselistorder label %dec_label_pc_40196d, { 1, 0 }
  uselistorder label %dec_label_pc_401900, { 1, 0 }
  uselistorder label %dec_label_pc_4018c3, { 1, 0 }
}

define i64 @function_401a39(i64 %arg1) local_unnamed_addr {
dec_label_pc_401a39:
  %rax.0.reg2mem = alloca i64, !insn.addr !262
  %stack_var_-20 = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !263
  store i32 0, i32* %stack_var_-24, align 4, !insn.addr !264
  store i32 0, i32* %stack_var_-20, align 4, !insn.addr !265
  %1 = call i32 @puts(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @global_var_402158, i64 0, i64 0)), !insn.addr !266
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_var_402033, i64 0, i64 0), i64 17), !insn.addr !267
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-24), !insn.addr !268
  %4 = load i32, i32* %stack_var_-24, align 4, !insn.addr !269
  %5 = icmp ult i32 %4, 18
  br i1 %5, label %dec_label_pc_401abd, label %dec_label_pc_401aaf, !insn.addr !270

dec_label_pc_401aaf:                              ; preds = %dec_label_pc_401a39
  %6 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_40204e, i64 0, i64 0)), !insn.addr !271
  br label %dec_label_pc_401b37, !insn.addr !272

dec_label_pc_401abd:                              ; preds = %dec_label_pc_401a39
  %7 = sext i32 %4 to i64, !insn.addr !273
  %8 = mul i64 %7, 16, !insn.addr !274
  %9 = add i64 %8, %arg1, !insn.addr !275
  %10 = inttoptr i64 %9 to i64*, !insn.addr !276
  %11 = load i64, i64* %10, align 8, !insn.addr !276
  %12 = call i64 @function_401226(i64 %11, i64 16), !insn.addr !277
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_var_4021af, i64 0, i64 0)), !insn.addr !278
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-20), !insn.addr !279
  %15 = load i32, i32* %stack_var_-24, align 4, !insn.addr !280
  %16 = load i32, i32* %stack_var_-20, align 4, !insn.addr !281
  %17 = sext i32 %15 to i64, !insn.addr !282
  %18 = mul i64 %17, 16, !insn.addr !283
  %19 = add i64 %arg1, 8, !insn.addr !284
  %20 = add i64 %19, %18, !insn.addr !285
  %21 = inttoptr i64 %20 to i32*, !insn.addr !286
  store i32 %16, i32* %21, align 4, !insn.addr !286
  %22 = load i32, i32* %stack_var_-24, align 4, !insn.addr !287
  %23 = zext i32 %22 to i64, !insn.addr !288
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_var_4021c0, i64 0, i64 0), i64 %23), !insn.addr !289
  br label %dec_label_pc_401b37, !insn.addr !289

dec_label_pc_401b37:                              ; preds = %dec_label_pc_401abd, %dec_label_pc_401aaf
  %25 = call i64 @__readfsqword(i64 40), !insn.addr !290
  %26 = icmp eq i64 %0, %25, !insn.addr !290
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !291
  br i1 %26, label %dec_label_pc_401b4b, label %dec_label_pc_401b46, !insn.addr !291

dec_label_pc_401b46:                              ; preds = %dec_label_pc_401b37
  call void @__stack_chk_fail(), !insn.addr !292
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !292
  br label %dec_label_pc_401b4b, !insn.addr !292

dec_label_pc_401b4b:                              ; preds = %dec_label_pc_401b46, %dec_label_pc_401b37
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !293

; uselistorder directives
  uselistorder i32 %4, { 1, 0 }
  uselistorder i32* %stack_var_-24, { 1, 2, 3, 0, 4 }
  uselistorder i32* %stack_var_-20, { 1, 0, 2 }
  uselistorder i64 (i64, i64)* @function_401226, { 1, 0 }
  uselistorder i64 16, { 0, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 16, 13, 14 }
  uselistorder i64 %arg1, { 1, 0 }
}

define i64 @function_401b4d() local_unnamed_addr {
dec_label_pc_401b4d:
  %rax.0.reg2mem = alloca i64, !insn.addr !294
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !295
  %1 = load %_IO_FILE*, %_IO_FILE** @global_var_4040d0, align 8, !insn.addr !296
  call void @setbuf(%_IO_FILE* %1, i8* null), !insn.addr !297
  %2 = load %_IO_FILE*, %_IO_FILE** @global_var_4040c0, align 8, !insn.addr !298
  call void @setbuf(%_IO_FILE* %2, i8* null), !insn.addr !299
  %3 = load %_IO_FILE*, %_IO_FILE** @global_var_4040e0, align 8, !insn.addr !300
  call void @setbuf(%_IO_FILE* %3, i8* null), !insn.addr !301
  %4 = call %_IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_4021e5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_4021e3, i64 0, i64 0)), !insn.addr !302
  store i32 0, i32* %stack_var_-28, align 4, !insn.addr !303
  %5 = bitcast i32* %stack_var_-28 to i64*, !insn.addr !304
  %6 = call i32 @fread(i64* nonnull %5, i32 4, i32 1, %_IO_FILE* %4), !insn.addr !304
  %7 = call i32 @fclose(%_IO_FILE* %4), !insn.addr !305
  %8 = load i32, i32* %stack_var_-28, align 4, !insn.addr !306
  call void @srand(i32 %8), !insn.addr !307
  %9 = call i64 @__readfsqword(i64 40), !insn.addr !308
  %10 = icmp eq i64 %0, %9, !insn.addr !308
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !309
  br i1 %10, label %dec_label_pc_401c0a, label %dec_label_pc_401c05, !insn.addr !309

dec_label_pc_401c05:                              ; preds = %dec_label_pc_401b4d
  call void @__stack_chk_fail(), !insn.addr !310
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !310
  br label %dec_label_pc_401c0a, !insn.addr !310

dec_label_pc_401c0a:                              ; preds = %dec_label_pc_401c05, %dec_label_pc_401b4d
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !311

; uselistorder directives
  uselistorder i32* %stack_var_-28, { 1, 0, 2 }
  uselistorder void ()* @__stack_chk_fail, { 4, 3, 2, 1, 0, 5 }
  uselistorder %_IO_FILE** @global_var_4040c0, { 7, 6, 5, 4, 1, 3, 2, 0 }
  uselistorder void (%_IO_FILE*, i8*)* @setbuf, { 2, 1, 0, 3 }
}

define i64 @function_401c0c(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_401c0c:
  %.lcssa.reg2mem = alloca i32, !insn.addr !312
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !313
  %1 = call i64* @malloc(i32 288), !insn.addr !314
  %2 = ptrtoint i64* %1 to i64, !insn.addr !314
  store i32 0, i32* %stack_var_-36, align 4, !insn.addr !315
  %3 = call i64 @function_401b4d(), !insn.addr !316
  %4 = call i64 @function_40130f(i64 %2), !insn.addr !317
  %5 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_4021f2, i64 0, i64 0)), !insn.addr !318
  %6 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_4021ff, i64 0, i64 0)), !insn.addr !319
  %7 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_40220f, i64 0, i64 0)), !insn.addr !320
  %8 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_402217, i64 0, i64 0)), !insn.addr !321
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_40221f, i64 0, i64 0)), !insn.addr !322
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-36), !insn.addr !323
  %11 = load i32, i32* %stack_var_-36, align 4, !insn.addr !324
  %12 = icmp ult i32 %11, 5
  store i32 %11, i32* %.lcssa.reg2mem, !insn.addr !325
  br i1 %12, label %dec_label_pc_401cca, label %dec_label_pc_401e0b, !insn.addr !325

dec_label_pc_401cca:                              ; preds = %dec_label_pc_401e0b, %dec_label_pc_401c0c
  %.lcssa.reload = load i32, i32* %.lcssa.reg2mem
  %13 = zext i32 %.lcssa.reload to i64, !insn.addr !324
  %14 = mul i64 %13, 4, !insn.addr !326
  %15 = add i64 %14, ptrtoint (i64* @global_var_402288 to i64), !insn.addr !327
  %16 = inttoptr i64 %15 to i32*, !insn.addr !327
  %17 = load i32, i32* %16, align 4, !insn.addr !327
  %18 = sext i32 %17 to i64, !insn.addr !328
  %19 = add i64 %18, ptrtoint (i64* @global_var_402288 to i64), !insn.addr !329
  ret i64 %19, !insn.addr !330

dec_label_pc_401e0b:                              ; preds = %dec_label_pc_401c0c, %dec_label_pc_401e0b
  %20 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_40226e, i64 0, i64 0)), !insn.addr !331
  %21 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_4021f2, i64 0, i64 0)), !insn.addr !318
  %22 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_4021ff, i64 0, i64 0)), !insn.addr !319
  %23 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_40220f, i64 0, i64 0)), !insn.addr !320
  %24 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_402217, i64 0, i64 0)), !insn.addr !321
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_40221f, i64 0, i64 0)), !insn.addr !322
  %26 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), i32* nonnull %stack_var_-36), !insn.addr !323
  %27 = load i32, i32* %stack_var_-36, align 4, !insn.addr !324
  %28 = icmp ult i32 %27, 5
  store i32 %27, i32* %.lcssa.reg2mem, !insn.addr !325
  br i1 %28, label %dec_label_pc_401cca, label %dec_label_pc_401e0b, !insn.addr !325

; uselistorder directives
  uselistorder i32* %stack_var_-36, { 3, 2, 0, 1, 4 }
  uselistorder i32* %.lcssa.reg2mem, { 1, 0, 2 }
  uselistorder i64 ptrtoint (i64* @global_var_402288 to i64), { 1, 0 }
  uselistorder i32 5, { 2, 1, 0 }
  uselistorder i32 (i8*, ...)* @scanf, { 6, 0, 5, 4, 3, 2, 1, 7 }
  uselistorder i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40204b, i64 0, i64 0), { 1, 0, 2, 3, 4, 5, 6 }
  uselistorder i32 (i8*, ...)* @printf, { 10, 0, 9, 8, 7, 6, 5, 4, 3, 2, 1, 11 }
  uselistorder i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_40221f, i64 0, i64 0), { 1, 0 }
  uselistorder i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_402217, i64 0, i64 0), { 1, 0 }
  uselistorder i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_40220f, i64 0, i64 0), { 1, 0 }
  uselistorder i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_4021ff, i64 0, i64 0), { 1, 0 }
  uselistorder i32 (i8*)* @puts, { 16, 15, 14, 13, 17, 0, 1, 2, 3, 12, 11, 10, 9, 8, 7, 6, 5, 4, 18 }
  uselistorder i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_4021f2, i64 0, i64 0), { 1, 0 }
  uselistorder i32 0, { 12, 13, 14, 15, 1, 8, 2, 3, 9, 0, 19, 20, 21, 4, 5, 22, 24, 25, 26, 23, 6, 27, 28, 16, 29, 17, 18, 30, 7, 10, 11 }
  uselistorder i64* (i32)* @malloc, { 1, 0, 2 }
  uselistorder label %dec_label_pc_401e0b, { 1, 0 }
}

define i64 @function_401e50(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_401e50:
  %rbx.0.reg2mem = alloca i64, !insn.addr !332
  %0 = call i64 @function_401000(), !insn.addr !333
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !334
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_403e08 to i64), i64 ptrtoint (i64* @global_var_403e00 to i64)), i64 3), i64 0), label %dec_label_pc_401e9e, label %dec_label_pc_401e88, !insn.addr !334

dec_label_pc_401e88:                              ; preds = %dec_label_pc_401e50, %dec_label_pc_401e88
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !335
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_403e08 to i64), i64 ptrtoint (i64* @global_var_403e00 to i64)), i64 3), !insn.addr !336
  %3 = icmp eq i1 %2, false, !insn.addr !337
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !337
  br i1 %3, label %dec_label_pc_401e88, label %dec_label_pc_401e9e, !insn.addr !337

dec_label_pc_401e9e:                              ; preds = %dec_label_pc_401e88, %dec_label_pc_401e50
  ret i64 %0, !insn.addr !338

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64 1, { 11, 10, 3, 4, 5, 6, 7, 0, 8, 1, 2, 9, 12 }
  uselistorder i64 0, { 29, 0, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 1, 20, 21, 42, 43, 2, 44, 45, 46, 47, 48, 49, 22, 23, 3, 4, 5, 6, 7, 8, 9, 10, 50, 51, 12, 52, 53, 11, 54, 55, 16, 56, 57, 75, 15, 58, 59, 60, 61, 14, 62, 63, 13, 64, 65, 66, 67, 68, 69, 76, 17, 18, 70, 71, 72, 73, 24, 19, 77, 25, 26, 27, 28, 74 }
  uselistorder label %dec_label_pc_401e88, { 1, 0 }
}

define i64 @function_401eb0() local_unnamed_addr {
dec_label_pc_401eb0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !339
}

define i64 @function_401eb4() local_unnamed_addr {
dec_label_pc_401eb4:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !340

; uselistorder directives
  uselistorder i32 1, { 3, 2, 4, 44, 5, 43, 45, 6, 47, 46, 7, 53, 54, 55, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 42, 19, 18, 24, 23, 22, 21, 20, 26, 25, 28, 27, 48, 30, 29, 56, 57, 50, 49, 32, 31, 33, 51, 34, 58, 40, 39, 38, 37, 36, 35, 1, 0, 52, 41 }
}

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @free(i64*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @fread(i64*, i32, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @fclose(%_IO_FILE*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @setbuf(%_IO_FILE*, i8*) local_unnamed_addr

declare i32 @system(i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @strnlen(i8*, i32) local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @putc(i32, %_IO_FILE*) local_unnamed_addr

declare i32 @getchar() local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare i32 @sprintf(i8*, i8*, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4198400}
!1 = !{i64 4198404}
!2 = !{i64 4198411}
!3 = !{i64 4198414}
!4 = !{i64 4198416}
!5 = !{i64 4198422}
!6 = !{i64 4198448}
!7 = !{i64 4198464}
!8 = !{i64 4198480}
!9 = !{i64 4198496}
!10 = !{i64 4198512}
!11 = !{i64 4198528}
!12 = !{i64 4198544}
!13 = !{i64 4198560}
!14 = !{i64 4198576}
!15 = !{i64 4198592}
!16 = !{i64 4198608}
!17 = !{i64 4198624}
!18 = !{i64 4198640}
!19 = !{i64 4198656}
!20 = !{i64 4198672}
!21 = !{i64 4198688}
!22 = !{i64 4198704}
!23 = !{i64 4198756}
!24 = !{i64 4198762}
!25 = !{i64 4198768}
!26 = !{i64 4198816}
!27 = !{i64 4198880}
!28 = !{i64 4198900}
!29 = !{i64 4198907}
!30 = !{i64 4198913}
!31 = !{i64 4198918}
!32 = !{i64 4198926}
!33 = !{i64 4198928}
!34 = !{i64 4198948}
!35 = !{i64 4198950}
!36 = !{i64 4198976}
!37 = !{i64 4198990}
!38 = !{i64 4199059}
!39 = !{i64 4199062}
!40 = !{i64 4199004}
!41 = !{i64 4199022}
!42 = !{i64 4199026}
!43 = !{i64 4199014}
!44 = !{i64 4199028}
!45 = !{i64 4199032}
!46 = !{i64 4199038}
!47 = !{i64 4199050}
!48 = !{i64 4199052}
!49 = !{i64 4199065}
!50 = !{i64 4199070}
!51 = !{i64 4199073}
!52 = !{i64 4199077}
!53 = !{i64 4199083}
!54 = !{i64 4199086}
!55 = !{i64 4199090}
!56 = !{i64 4199091}
!57 = !{i64 4199106}
!58 = !{i64 4199121}
!59 = !{i64 4199143}
!60 = !{i64 4199155}
!61 = !{i64 4199165}
!62 = !{i64 4199174}
!63 = !{i64 4199176}
!64 = !{i64 4199182}
!65 = !{i64 4199183}
!66 = !{i64 4199214}
!67 = !{i64 4199218}
!68 = !{i64 4199221}
!69 = !{i64 4199245}
!70 = !{i64 4199252}
!71 = !{i64 4199271}
!72 = !{i64 4199275}
!73 = !{i64 4199289}
!74 = !{i64 4199294}
!75 = !{i64 4199295}
!76 = !{i64 4199312}
!77 = !{i64 4199327}
!78 = !{i64 4199334}
!79 = !{i64 4199358}
!80 = !{i64 4199382}
!81 = !{i64 4199387}
!82 = !{i64 4199392}
!83 = !{i64 4199409}
!84 = !{i64 4199419}
!85 = !{i64 4199431}
!86 = !{i64 4199434}
!87 = !{i64 4199441}
!88 = !{i64 4199445}
!89 = !{i64 4199447}
!90 = !{i64 4199449}
!91 = !{i64 4199458}
!92 = !{i64 4199468}
!93 = !{i64 4199495}
!94 = !{i64 4199519}
!95 = !{i64 4199524}
!96 = !{i64 4199530}
!97 = !{i64 4199549}
!98 = !{i64 4199559}
!99 = !{i64 4199567}
!100 = !{i64 4199572}
!101 = !{i64 4199578}
!102 = !{i64 4199590}
!103 = !{i64 4199593}
!104 = !{i64 4199597}
!105 = !{i64 4199600}
!106 = !{i64 4199603}
!107 = !{i64 4199610}
!108 = !{i64 4199613}
!109 = !{i64 4199617}
!110 = !{i64 4199620}
!111 = !{i64 4199623}
!112 = !{i64 4199626}
!113 = !{i64 4199635}
!114 = !{i64 4199645}
!115 = !{i64 4199647}
!116 = !{i64 4199670}
!117 = !{i64 4199675}
!118 = !{i64 4199680}
!119 = !{i64 4199687}
!120 = !{i64 4199690}
!121 = !{i64 4199697}
!122 = !{i64 4199701}
!123 = !{i64 4199707}
!124 = !{i64 4199710}
!125 = !{i64 4199724}
!126 = !{i64 4199729}
!127 = !{i64 4199738}
!128 = !{i64 4199747}
!129 = !{i64 4199749}
!130 = !{i64 4199760}
!131 = !{i64 4199761}
!132 = !{i64 4199777}
!133 = !{i64 4199792}
!134 = !{i64 4199816}
!135 = !{i64 4199840}
!136 = !{i64 4199845}
!137 = !{i64 4199850}
!138 = !{i64 4199867}
!139 = !{i64 4199877}
!140 = !{i64 4199889}
!141 = !{i64 4199892}
!142 = !{i64 4199896}
!143 = !{i64 4199899}
!144 = !{i64 4199903}
!145 = !{i64 4199905}
!146 = !{i64 4199907}
!147 = !{i64 4199916}
!148 = !{i64 4199926}
!149 = !{i64 4199945}
!150 = !{i64 4199951}
!151 = !{i64 4199956}
!152 = !{i64 4199963}
!153 = !{i64 4199966}
!154 = !{i64 4199970}
!155 = !{i64 4199973}
!156 = !{i64 4199977}
!157 = !{i64 4199983}
!158 = !{i64 4199986}
!159 = !{i64 4200000}
!160 = !{i64 4200005}
!161 = !{i64 4200014}
!162 = !{i64 4200023}
!163 = !{i64 4200025}
!164 = !{i64 4200031}
!165 = !{i64 4200032}
!166 = !{i64 4200074}
!167 = !{i64 4200070}
!168 = !{i64 4200077}
!169 = !{i64 4200081}
!170 = !{i64 4200083}
!171 = !{i64 4200099}
!172 = !{i64 4200101}
!173 = !{i64 4200105}
!174 = !{i64 4200108}
!175 = !{i64 4200112}
!176 = !{i64 4200113}
!177 = !{i64 4200144}
!178 = !{i64 4200148}
!179 = !{i64 4200151}
!180 = !{i64 4200155}
!181 = !{i64 4200157}
!182 = !{i64 4200159}
!183 = !{i64 4200178}
!184 = !{i64 4200182}
!185 = !{i64 4200187}
!186 = !{i64 4200204}
!187 = !{i64 4200212}
!188 = !{i64 4200213}
!189 = !{i64 4200258}
!190 = !{i64 4200262}
!191 = !{i64 4200265}
!192 = !{i64 4200269}
!193 = !{i64 4200271}
!194 = !{i64 4200273}
!195 = !{i64 4200292}
!196 = !{i64 4200296}
!197 = !{i64 4200301}
!198 = !{i64 4200343}
!199 = !{i64 4200352}
!200 = !{i64 4200355}
!201 = !{i64 4200359}
!202 = !{i64 4200362}
!203 = !{i64 4200366}
!204 = !{i64 4200367}
!205 = !{i64 4200402}
!206 = !{i64 4200406}
!207 = !{i64 4200409}
!208 = !{i64 4200413}
!209 = !{i64 4200415}
!210 = !{i64 4200417}
!211 = !{i64 4200419}
!212 = !{i64 4200482}
!213 = !{i64 4200486}
!214 = !{i64 4200458}
!215 = !{i64 4200462}
!216 = !{i64 4200488}
!217 = !{i64 4200512}
!218 = !{i64 4200522}
!219 = !{i64 4200531}
!220 = !{i64 4200532}
!221 = !{i64 4200577}
!222 = !{i64 4200581}
!223 = !{i64 4200584}
!224 = !{i64 4200588}
!225 = !{i64 4200590}
!226 = !{i64 4200592}
!227 = !{i64 4200615}
!228 = !{i64 4200626}
!229 = !{i64 4200684}
!230 = !{i64 4200688}
!231 = !{i64 4200693}
!232 = !{i64 4200643}
!233 = !{i64 4200658}
!234 = !{i64 4200663}
!235 = !{i64 4200765}
!236 = !{i64 4200704}
!237 = !{i64 4200728}
!238 = !{i64 4200736}
!239 = !{i64 4200739}
!240 = !{i64 4200748}
!241 = !{i64 4200750}
!242 = !{i64 4200858}
!243 = !{i64 4200793}
!244 = !{i64 4200798}
!245 = !{i64 4200865}
!246 = !{i64 4200875}
!247 = !{i64 4200828}
!248 = !{i64 4200833}
!249 = !{i64 4200869}
!250 = !{i64 4200892}
!251 = !{i64 4200897}
!252 = !{i64 4200923}
!253 = !{i64 4200928}
!254 = !{i64 4200936}
!255 = !{i64 4200953}
!256 = !{i64 4200958}
!257 = !{i64 4200973}
!258 = !{i64 4200986}
!259 = !{i64 4200999}
!260 = !{i64 4201009}
!261 = !{i64 4201016}
!262 = !{i64 4201017}
!263 = !{i64 4201033}
!264 = !{i64 4201048}
!265 = !{i64 4201055}
!266 = !{i64 4201069}
!267 = !{i64 4201091}
!268 = !{i64 4201115}
!269 = !{i64 4201120}
!270 = !{i64 4201125}
!271 = !{i64 4201142}
!272 = !{i64 4201147}
!273 = !{i64 4201156}
!274 = !{i64 4201159}
!275 = !{i64 4201163}
!276 = !{i64 4201166}
!277 = !{i64 4201177}
!278 = !{i64 4201194}
!279 = !{i64 4201218}
!280 = !{i64 4201223}
!281 = !{i64 4201226}
!282 = !{i64 4201233}
!283 = !{i64 4201236}
!284 = !{i64 4201240}
!285 = !{i64 4201243}
!286 = !{i64 4201247}
!287 = !{i64 4201249}
!288 = !{i64 4201252}
!289 = !{i64 4201266}
!290 = !{i64 4201275}
!291 = !{i64 4201284}
!292 = !{i64 4201286}
!293 = !{i64 4201292}
!294 = !{i64 4201293}
!295 = !{i64 4201305}
!296 = !{i64 4201320}
!297 = !{i64 4201335}
!298 = !{i64 4201340}
!299 = !{i64 4201355}
!300 = !{i64 4201360}
!301 = !{i64 4201375}
!302 = !{i64 4201394}
!303 = !{i64 4201403}
!304 = !{i64 4201434}
!305 = !{i64 4201446}
!306 = !{i64 4201451}
!307 = !{i64 4201456}
!308 = !{i64 4201466}
!309 = !{i64 4201475}
!310 = !{i64 4201477}
!311 = !{i64 4201483}
!312 = !{i64 4201484}
!313 = !{i64 4201503}
!314 = !{i64 4201523}
!315 = !{i64 4201532}
!316 = !{i64 4201551}
!317 = !{i64 4201563}
!318 = !{i64 4201580}
!319 = !{i64 4201592}
!320 = !{i64 4201604}
!321 = !{i64 4201616}
!322 = !{i64 4201633}
!323 = !{i64 4201657}
!324 = !{i64 4201662}
!325 = !{i64 4201668}
!326 = !{i64 4201674}
!327 = !{i64 4201691}
!328 = !{i64 4201694}
!329 = !{i64 4201703}
!330 = !{i64 4201706}
!331 = !{i64 4202002}
!332 = !{i64 4202064}
!333 = !{i64 4202104}
!334 = !{i64 4202113}
!335 = !{i64 4202133}
!336 = !{i64 4202137}
!337 = !{i64 4202140}
!338 = !{i64 4202156}
!339 = !{i64 4202160}
!340 = !{i64 4202172}
