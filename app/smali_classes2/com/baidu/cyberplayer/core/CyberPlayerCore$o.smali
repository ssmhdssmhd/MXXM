.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field private a:Landroid/content/ContentValues;

.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Landroid/content/ContentValues;)V
    .locals 0

    .line 2539
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2537
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    .line 2540
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    .line 2541
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 2545
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    if-eqz v0, :cond_b

    .line 2547
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Z

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2549
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    const/16 v3, 0x130

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2550
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2552
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1388

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2556
    goto :goto_0

    .line 2557
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2553
    :catch_0
    move-exception v0

    .line 2555
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2557
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2558
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2559
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)Z

    .line 2560
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2561
    invoke-static {v1, v3, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2562
    const-string v0, "CyberPlayerCore"

    const-string/jumbo v1, "surface create fail 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    return-void

    .line 2557
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2565
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2566
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)Z

    .line 2567
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2568
    invoke-static {v1, v3, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2569
    const-string v0, "CyberPlayerCore"

    const-string/jumbo v1, "surface create fail 3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    return-void

    .line 2574
    :cond_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2575
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)Z

    .line 2576
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2577
    const/16 v0, -0x44d

    invoke-static {v1, v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2578
    return-void

    .line 2581
    :cond_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->init()V

    .line 2582
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v3, v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setDisplayMode(I)V

    .line 2583
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2584
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    const-string v4, "User-Agent"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2585
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    const-string v4, "Referer"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2586
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    const-string v4, "http-header"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2587
    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Landroid/content/ContentValues;

    const-string/jumbo v5, "subfile"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2588
    const-string v5, "CyberPlayerCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set core useragent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",custom header : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    const/16 v5, 0xb

    new-array v10, v5, [Ljava/lang/String;

    .line 2591
    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 2592
    const-string v6, "key-http-header"

    aput-object v6, v10, v2

    .line 2593
    aput-object v3, v10, v5

    .line 2595
    :cond_3
    const/4 v3, 0x2

    const-string v6, "key-android-version"

    aput-object v6, v10, v3

    .line 2596
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v10, v6

    .line 2597
    const/4 v3, 0x4

    const-string v6, "key-decode-mode"

    aput-object v6, v10, v3

    .line 2598
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v10, v6

    .line 2599
    const/4 v3, 0x6

    const-string v6, "key-enable-dolby"

    aput-object v6, v10, v3

    .line 2600
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()Z

    move-result v3

    const/4 v6, 0x7

    if-eqz v3, :cond_4

    .line 2601
    const-string v3, "1"

    aput-object v3, v10, v6

    goto :goto_2

    .line 2603
    :cond_4
    const-string v3, "0"

    aput-object v3, v10, v6

    .line 2605
    :goto_2
    if-eqz v4, :cond_5

    .line 2606
    const/16 v3, 0x8

    const-string v6, "key-ext-subfile"

    aput-object v6, v10, v3

    .line 2607
    const/16 v3, 0x9

    aput-object v4, v10, v3

    .line 2609
    :cond_5
    nop

    .line 2610
    if-eqz v0, :cond_a

    .line 2612
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2613
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 2614
    invoke-static {}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->a()I

    move-result v1

    .line 2615
    invoke-static {}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->b()I

    .line 2616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2619
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2620
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_6

    .line 2621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2624
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2626
    :goto_3
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "msessionid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/baidu/cyberplayer/media/ffmpeg/a;->a([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    .line 2630
    :cond_7
    move-object v7, v0

    :goto_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v7}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/lang/String;)Ljava/lang/String;

    .line 2631
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2632
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v5, :cond_8

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2634
    :goto_5
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2636
    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2639
    :goto_6
    goto :goto_5

    .line 2637
    :catch_1
    move-exception v0

    .line 2638
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 2642
    :cond_8
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v5, :cond_9

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2644
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->setConfigSurface(Landroid/view/Surface;)V

    .line 2646
    :cond_9
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 2648
    :cond_a
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)Z

    .line 2649
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2650
    const/16 v0, 0x12d

    invoke-static {v1, v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2653
    :cond_b
    :goto_7
    return-void
.end method
