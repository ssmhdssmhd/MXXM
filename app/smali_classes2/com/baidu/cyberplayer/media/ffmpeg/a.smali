.class public Lcom/baidu/cyberplayer/media/ffmpeg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/media/ffmpeg/a$b;,
        Lcom/baidu/cyberplayer/media/ffmpeg/a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/cyberplayer/media/ffmpeg/a;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 1

    .line 458
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/media/ffmpeg/a;->a([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 459
    :catch_0
    move-exception p0

    .line 461
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a([BI)[B
    .locals 2

    .line 496
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/baidu/cyberplayer/media/ffmpeg/a;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .locals 4

    .line 512
    new-instance v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;-><init>(I[B)V

    .line 515
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 518
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:Z

    if-eqz v1, :cond_0

    .line 519
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_1

    .line 520
    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 523
    :cond_0
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 526
    :pswitch_0
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 525
    :pswitch_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 524
    :pswitch_2
    nop

    .line 531
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-lez p2, :cond_3

    .line 532
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v2

    iget-boolean v3, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    mul-int v1, v1, v3

    add-int/2addr p3, v1

    .line 536
    :cond_3
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:[B

    .line 537
    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a([BIIZ)Z

    .line 539
    sget-boolean p0, Lcom/baidu/cyberplayer/media/ffmpeg/a;->a:Z

    if-nez p0, :cond_5

    iget p0, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:I

    if-ne p0, p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 541
    :cond_5
    :goto_2
    iget-object p0, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:[B

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
