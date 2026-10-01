.class public Lcom/baidu/cyberplayer/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/utils/l$a;
    }
.end annotation


# static fields
.field public static a:D

.field public static b:D

.field public static c:D

.field public static d:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 273
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Lcom/baidu/cyberplayer/utils/l;->a:D

    .line 274
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sput-wide v0, Lcom/baidu/cyberplayer/utils/l;->b:D

    .line 275
    sput-wide v0, Lcom/baidu/cyberplayer/utils/l;->c:D

    .line 276
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/baidu/cyberplayer/utils/l;->d:D

    return-void
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/l$a;II)D
    .locals 8

    .line 287
    nop

    .line 288
    iget p2, p0, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    sparse-switch p2, :sswitch_data_0

    .line 297
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    .line 294
    :sswitch_0
    nop

    .line 295
    const-wide v0, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    .line 291
    :sswitch_1
    nop

    .line 292
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 301
    :goto_0
    iget-wide v2, p0, Lcom/baidu/cyberplayer/utils/l$a;->a:J

    long-to-double v2, v2

    const-wide v4, 0x414f400000000000L    # 4096000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 302
    iget p0, p0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    int-to-double v4, p0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 303
    int-to-double p0, p1

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v6

    .line 305
    sget-wide v6, Lcom/baidu/cyberplayer/utils/l;->a:D

    mul-double v0, v0, v6

    sget-wide v6, Lcom/baidu/cyberplayer/utils/l;->b:D

    mul-double v2, v2, v6

    add-double/2addr v0, v2

    sget-wide v2, Lcom/baidu/cyberplayer/utils/l;->c:D

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sget-wide v2, Lcom/baidu/cyberplayer/utils/l;->d:D

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    .line 310
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a()I
    .locals 4

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 161
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 170
    nop

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :goto_0
    nop

    .line 179
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 183
    :goto_1
    goto/16 :goto_9

    .line 180
    :catch_1
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 167
    :catch_2
    move-exception v0

    goto :goto_2

    .line 165
    :catch_3
    move-exception v0

    goto :goto_5

    .line 170
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_a

    .line 167
    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    .line 165
    :catch_5
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_5

    .line 170
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_a

    .line 167
    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 168
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 176
    goto :goto_3

    .line 173
    :catch_7
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :cond_0
    :goto_3
    if-eqz v2, :cond_2

    .line 179
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_7

    .line 165
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 166
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 170
    if-eqz v1, :cond_1

    .line 172
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 176
    goto :goto_6

    .line 173
    :catch_9
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :cond_1
    :goto_6
    if-eqz v2, :cond_2

    .line 179
    goto :goto_4

    .line 183
    :goto_7
    goto :goto_8

    .line 180
    :catch_a
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 186
    :cond_2
    :goto_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 170
    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v1, :cond_3

    .line 172
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 176
    goto :goto_b

    .line 173
    :catch_b
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :cond_3
    :goto_b
    if-eqz v2, :cond_4

    .line 179
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 183
    goto :goto_c

    .line 180
    :catch_c
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :cond_4
    :goto_c
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public static a()Lcom/baidu/cyberplayer/utils/l$a;
    .locals 5

    .line 127
    nop

    .line 130
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 131
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/cpuinfo"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 133
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 135
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 136
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    :cond_0
    nop

    .line 140
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    nop

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, ""

    .line 148
    :goto_1
    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/l$a;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/baidu/cyberplayer/utils/l;->a()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:J

    .line 151
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/l$a;
    .locals 7

    .line 218
    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 222
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/l$a;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/l$a;-><init>()V

    .line 223
    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    .line 224
    iput v1, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    .line 225
    const/4 v2, 0x1

    iput v2, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    .line 226
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:D

    .line 228
    const-string v3, "ARMv5"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x100

    const/16 v5, 0x10

    if-eqz v3, :cond_1

    .line 229
    iput v2, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    goto :goto_0

    .line 230
    :cond_1
    const-string v3, "ARMv6"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iput v5, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    goto :goto_0

    .line 232
    :cond_2
    const-string v3, "ARMv7"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iput v4, v0, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    .line 236
    :cond_3
    :goto_0
    const-string v3, "neon"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    iget v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    .line 240
    :cond_4
    const-string v3, "vfpv3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    iget v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    or-int/2addr v3, v5

    iput v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    .line 244
    :cond_5
    const-string v3, " vfp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    iget v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    or-int/2addr v3, v2

    iput v3, v0, Lcom/baidu/cyberplayer/utils/l$a;->c:I

    .line 248
    :cond_6
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 250
    array-length v3, p0

    :goto_1
    if-ge v1, v3, :cond_b

    aget-object v4, p0, v1

    .line 251
    const-string v5, "CPU variant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ": "

    if-eqz v5, :cond_8

    .line 252
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 253
    if-ltz v5, :cond_9

    .line 254
    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    .line 257
    iget v4, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    iget v4, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    :goto_2
    iput v4, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_3

    .line 258
    :catch_0
    move-exception v4

    .line 259
    iput v2, v0, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    goto :goto_3

    .line 262
    :cond_8
    const-string v5, "BogoMIPS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 264
    if-ltz v5, :cond_a

    .line 265
    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_4

    .line 262
    :cond_9
    :goto_3
    nop

    .line 250
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    :cond_b
    return-object v0

    .line 219
    :cond_c
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .line 65
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "Intel"

    return-object v0

    .line 69
    :cond_0
    const-string v0, ""

    .line 72
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 73
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/cpuinfo"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 75
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 77
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 78
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    move-object v0, v3

    .line 82
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 347
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    nop

    .line 351
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    goto :goto_2

    .line 359
    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    goto :goto_2

    .line 357
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 354
    :catch_1
    move-exception v0

    .line 355
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 363
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 358
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 361
    goto :goto_4

    .line 359
    :catch_2
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 361
    :goto_4
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 314
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 315
    return-object v0

    .line 318
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 321
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/baidu/cyberplayer/utils/l;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 322
    :catch_0
    move-exception p0

    .line 323
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 324
    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 331
    and-int/lit16 v4, v3, 0xf0

    if-lez v4, :cond_0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 372
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 373
    return v0

    .line 376
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 377
    return v0

    .line 379
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-static {}, Lcom/baidu/cyberplayer/utils/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 92
    nop

    .line 94
    const-string v1, "ARMv5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "armv5"

    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "ARMv6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "armv6"

    goto :goto_0

    .line 98
    :cond_1
    const-string v1, "ARMv7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const-string v1, "armv7"

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "Intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    const-string v1, "x86"

    .line 107
    :goto_0
    const-string v2, "neon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_neon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_3
    const-string v2, "vfpv3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vfpv3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_4
    const-string v2, " vfp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vfp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    return-object v0

    .line 103
    :cond_6
    nop

    .line 104
    const-string v0, "unknown"

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 505
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CommonUtils"

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " exists."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 p0, 0x1

    return p0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " can\'t be found."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 p0, 0x0

    return p0
.end method
