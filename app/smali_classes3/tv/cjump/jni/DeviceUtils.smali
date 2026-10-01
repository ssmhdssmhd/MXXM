.class public Ltv/cjump/jni/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/cjump/jni/DeviceUtils$ARCH;
    }
.end annotation


# static fields
.field public static final ABI_MIPS:Ljava/lang/String; = "mips"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static sArch:Ltv/cjump/jni/DeviceUtils$ARCH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->Unknown:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;
    .locals 8

    const-class v0, Ltv/cjump/jni/DeviceUtils;

    monitor-enter v0

    .line 36
    const/16 v1, 0x14

    :try_start_0
    new-array v1, v1, [B

    .line 37
    .local v1, "data":[B
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "lib/libc.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v2, "libc":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "fp":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 42
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    const/16 v4, 0x13

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x12

    aget-byte v5, v1, v5

    or-int/2addr v4, v5

    .line 44
    .local v4, "machine":I
    sparse-switch v4, :sswitch_data_0

    .line 58
    const-string v5, "NativeBitmapFactory"

    goto :goto_0

    .line 55
    :sswitch_0
    sget-object v5, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM64:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v5, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 56
    goto :goto_1

    .line 46
    :sswitch_1
    sget-object v5, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v5, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 47
    goto :goto_1

    .line 52
    :sswitch_2
    sget-object v5, Ltv/cjump/jni/DeviceUtils$ARCH;->MIPS:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v5, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 53
    goto :goto_1

    .line 49
    :sswitch_3
    sget-object v5, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v5, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 50
    goto :goto_1

    .line 58
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "libc.so is unknown arch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v4    # "machine":I
    :goto_1
    nop

    .line 68
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 69
    :catch_0
    move-exception v4

    goto :goto_3

    .line 66
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 63
    :catch_1
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 69
    :catch_2
    move-exception v4

    goto :goto_3

    .line 61
    :catch_3
    move-exception v4

    .line 62
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 68
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 71
    :goto_2
    goto :goto_6

    .line 69
    :catch_4
    move-exception v4

    .line 70
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 66
    :goto_4
    if-eqz v3, :cond_0

    .line 68
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 71
    goto :goto_5

    .line 69
    :catch_5
    move-exception v5

    .line 70
    .local v5, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_5
    throw v4

    .line 75
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_6
    sget-object v3, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v0

    return-object v3

    .line 35
    .end local v1    # "data":[B
    .end local v2    # "libc":Ljava/io/File;
    :catchall_1
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x8 -> :sswitch_2
        0x28 -> :sswitch_1
        0xb7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static get_CPU_ABI()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static get_CPU_ABI2()Ljava/lang/String;
    .locals 4

    .line 84
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "CPU_ABI2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 86
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "fieldValue":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 90
    return-object v0

    .line 93
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 94
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 98
    return-object v0
.end method

.method public static isARMSimulatedByX86()Z
    .locals 2

    .line 120
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 121
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->supportX86()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMagicBoxDevice()Z
    .locals 4

    .line 132
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 133
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 134
    .local v1, "productName":Ljava/lang/String;
    const-string v2, "MagicBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isMiBox2Device()Z
    .locals 3

    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 126
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 127
    .local v1, "productName":Ljava/lang/String;
    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "dredd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isProblemBoxDevice()Z
    .locals 1

    .line 139
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMiBox2Device()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMagicBoxDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRealARMArch()Z
    .locals 2

    .line 143
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 144
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    const-string v1, "armeabi-v7a"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "armeabi"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRealX86Arch()Z
    .locals 2

    .line 148
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 149
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    const-string v1, "x86"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static supportABI(Ljava/lang/String;)Z
    .locals 4
    .param p0, "requestAbi"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    return v2

    .line 106
    :cond_0
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "abi2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static supportMips()Z
    .locals 1

    .line 116
    const-string v0, "mips"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportX86()Z
    .locals 1

    .line 112
    const-string v0, "x86"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
