.class Lcom/baidu/cyberplayer/media/ffmpeg/a$b;
.super Lcom/baidu/cyberplayer/media/ffmpeg/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/media/ffmpeg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final b:[B

.field private static final c:[B

.field static final synthetic d:Z


# instance fields
.field public final a:Z

.field b:I

.field public final b:Z

.field private c:I

.field public final c:Z

.field private final d:[B

.field private final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 544
    const-class v0, Lcom/baidu/cyberplayer/media/ffmpeg/a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:Z

    .line 556
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:[B

    .line 567
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 583
    invoke-direct {p0}, Lcom/baidu/cyberplayer/media/ffmpeg/a$a;-><init>()V

    .line 584
    iput-object p2, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:[B

    .line 586
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:Z

    .line 587
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    .line 588
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    .line 589
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    sget-object p1, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:[B

    :goto_3
    iput-object p1, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->e:[B

    .line 591
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    .line 592
    iput v0, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    .line 594
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    iput p1, p0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:I

    .line 595
    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 17

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->e:[B

    .line 608
    iget-object v2, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:[B

    .line 609
    nop

    .line 610
    iget v3, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:I

    .line 612
    nop

    .line 613
    add-int v4, p3, p2

    .line 614
    nop

    .line 620
    iget v5, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 637
    :pswitch_0
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_0

    .line 639
    iget-object v9, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    aget-byte v9, v9, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    iget-object v10, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 642
    iput v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    goto :goto_1

    .line 626
    :pswitch_1
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_0

    .line 629
    iget-object v5, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v9, p2, 0x1

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v5

    .line 632
    iput v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    move v5, v10

    goto :goto_1

    .line 623
    :pswitch_2
    nop

    .line 647
    :cond_0
    :goto_0
    move/from16 v5, p2

    const/4 v9, -0x1

    :goto_1
    const/16 v10, 0x13

    const/4 v11, 0x4

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/4 v14, 0x2

    if-eq v9, v8, :cond_3

    .line 648
    shr-int/lit8 v8, v9, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v7

    .line 649
    shr-int/lit8 v8, v9, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    .line 650
    shr-int/lit8 v8, v9, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v14

    .line 651
    and-int/lit8 v8, v9, 0x3f

    aget-byte v8, v1, v8

    const/4 v9, 0x3

    aput-byte v8, v2, v9

    .line 652
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 653
    iget-boolean v3, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v3, :cond_1

    aput-byte v12, v2, v11

    const/4 v3, 0x5

    goto :goto_2

    :cond_1
    const/4 v3, 0x4

    .line 654
    :goto_2
    add-int/lit8 v8, v3, 0x1

    aput-byte v13, v2, v3

    .line 655
    const/16 v3, 0x13

    goto :goto_3

    .line 652
    :cond_2
    const/4 v8, 0x4

    goto :goto_3

    .line 647
    :cond_3
    const/4 v8, 0x0

    .line 664
    :goto_3
    add-int/lit8 v9, v5, 0x3

    if-gt v9, v4, :cond_6

    .line 665
    aget-byte v15, p1, v5

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v5, 0x1

    const/16 p3, 0x0

    aget-byte v7, p1, v16

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v15

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v7

    .line 668
    shr-int/lit8 v7, v5, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v1, v7

    aput-byte v7, v2, v8

    .line 669
    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v7

    .line 670
    add-int/lit8 v7, v8, 0x2

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v7

    .line 671
    add-int/lit8 v7, v8, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    aput-byte v5, v2, v7

    .line 672
    nop

    .line 673
    add-int/lit8 v8, v8, 0x4

    .line 674
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    .line 675
    iget-boolean v3, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v3, :cond_4

    add-int/lit8 v3, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v3

    .line 676
    :cond_4
    add-int/lit8 v3, v8, 0x1

    aput-byte v13, v2, v8

    .line 677
    move v8, v3

    move v5, v9

    const/16 v3, 0x13

    const/4 v7, 0x0

    goto :goto_3

    .line 674
    :cond_5
    move v5, v9

    const/4 v7, 0x0

    goto :goto_3

    .line 681
    :cond_6
    const/16 p3, 0x0

    if-eqz p4, :cond_17

    .line 687
    iget v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    sub-int v7, v5, v7

    add-int/lit8 v9, v4, -0x1

    const/16 v15, 0x3d

    if-ne v7, v9, :cond_b

    .line 688
    nop

    .line 689
    iget v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    if-lez v7, :cond_7

    iget-object v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    aget-byte v7, v7, p3

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p1, v5

    move v9, v7

    move v7, v5

    move v5, v9

    const/4 v9, 0x0

    :goto_4
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v11

    .line 690
    iget v10, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    .line 691
    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v8

    .line 692
    add-int/lit8 v8, v9, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v9

    .line 693
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:Z

    if-eqz v1, :cond_8

    .line 694
    add-int/lit8 v1, v8, 0x1

    aput-byte v15, v2, v8

    .line 695
    add-int/lit8 v8, v1, 0x1

    aput-byte v15, v2, v1

    .line 697
    :cond_8
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    if-eqz v1, :cond_a

    .line 698
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v1, :cond_9

    add-int/lit8 v1, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v1

    .line 699
    :cond_9
    add-int/lit8 v1, v8, 0x1

    aput-byte v13, v2, v8

    move v8, v1

    .line 701
    :cond_a
    goto/16 :goto_7

    :cond_b
    iget v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    sub-int v7, v5, v7

    add-int/lit8 v9, v4, -0x2

    if-ne v7, v9, :cond_11

    .line 702
    nop

    .line 703
    iget v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    if-le v7, v6, :cond_c

    iget-object v7, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    aget-byte v7, v7, p3

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p1, v5

    move v9, v7

    move v7, v5

    move v5, v9

    const/4 v9, 0x0

    :goto_5
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v13

    iget v10, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    if-lez v10, :cond_d

    iget-object v10, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v10, v9

    goto :goto_6

    :cond_d
    add-int/lit8 v10, v5, 0x1

    aget-byte v5, p1, v5

    move v11, v9

    move v9, v5

    move v5, v10

    :goto_6
    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v14

    or-int/2addr v7, v9

    .line 705
    iget v9, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    sub-int/2addr v9, v11

    iput v9, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    .line 706
    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v8

    .line 707
    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v9

    .line 708
    add-int/lit8 v9, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v8

    .line 709
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:Z

    if-eqz v1, :cond_e

    .line 710
    add-int/lit8 v1, v9, 0x1

    aput-byte v15, v2, v9

    move v9, v1

    .line 712
    :cond_e
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    if-eqz v1, :cond_10

    .line 713
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v1, :cond_f

    add-int/lit8 v1, v9, 0x1

    aput-byte v12, v2, v9

    move v9, v1

    .line 714
    :cond_f
    add-int/lit8 v1, v9, 0x1

    aput-byte v13, v2, v9

    move v9, v1

    .line 716
    :cond_10
    move v8, v9

    goto :goto_7

    :cond_11
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:Z

    if-eqz v1, :cond_13

    if-lez v8, :cond_13

    if-eq v3, v10, :cond_13

    .line 717
    iget-boolean v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:Z

    if-eqz v1, :cond_12

    add-int/lit8 v1, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v1

    .line 718
    :cond_12
    add-int/lit8 v1, v8, 0x1

    aput-byte v13, v2, v8

    move v8, v1

    .line 721
    :cond_13
    :goto_7
    sget-boolean v1, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:Z

    if-nez v1, :cond_15

    iget v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    if-nez v1, :cond_14

    goto :goto_8

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 722
    :cond_15
    :goto_8
    sget-boolean v1, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:Z

    if-nez v1, :cond_19

    if-ne v5, v4, :cond_16

    goto :goto_9

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 727
    :cond_17
    add-int/lit8 v1, v4, -0x1

    if-ne v5, v1, :cond_18

    .line 728
    iget-object v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    iget v2, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    goto :goto_9

    .line 729
    :cond_18
    sub-int/2addr v4, v14

    if-ne v5, v4, :cond_19

    .line 730
    iget-object v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    iget v2, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    .line 731
    iget-object v1, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->d:[B

    iget v2, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->b:I

    add-int/2addr v5, v6

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    .line 735
    :cond_19
    :goto_9
    iput v8, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->a:I

    .line 736
    iput v3, v0, Lcom/baidu/cyberplayer/media/ffmpeg/a$b;->c:I

    .line 738
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
