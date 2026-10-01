.class Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;
.super Landroid/os/Handler;
.source "InfoHudViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 30
    :pswitch_0
    iget-object v2, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 31
    .local v2, "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    const/4 v3, 0x0

    .line 32
    .local v3, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 33
    goto/16 :goto_2

    .line 34
    :cond_0
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    instance-of v4, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto :goto_0

    .line 36
    :cond_1
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    instance-of v4, v4, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v4, :cond_2

    .line 37
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    check-cast v4, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .line 38
    .local v4, "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    .line 39
    .local v5, "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-eqz v5, :cond_2

    instance-of v6, v5, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v6, :cond_2

    .line 40
    move-object v3, v5

    check-cast v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 42
    .end local v4    # "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    .end local v5    # "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 43
    goto/16 :goto_2

    .line 45
    :cond_3
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v4

    .line 46
    .local v4, "vdec":I
    packed-switch v4, :pswitch_data_1

    .line 54
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v6, Lcom/shenma/tvlauncher/R$string;->vdec:I

    const-string v7, ""

    invoke-static {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    goto :goto_1

    .line 51
    :pswitch_1
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v6, Lcom/shenma/tvlauncher/R$string;->vdec:I

    const-string v7, "MediaCodec"

    invoke-static {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 52
    goto :goto_1

    .line 48
    :pswitch_2
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v6, Lcom/shenma/tvlauncher/R$string;->vdec:I

    const-string v7, "avcodec"

    invoke-static {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 49
    nop

    .line 58
    :goto_1
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v5

    .line 59
    .local v5, "fpsOutput":F
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecodeFramesPerSecond()F

    move-result v6

    .line 60
    .local v6, "fpsDecode":F
    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v8, Lcom/shenma/tvlauncher/R$string;->fps:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v10, 0x1

    aput-object v11, v13, v10

    const-string v11, "%.2f / %.2f"

    invoke-static {v9, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v7

    .line 63
    .local v7, "videoCachedDuration":J
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v15

    .line 64
    .local v15, "audioCachedDuration":J
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v17

    .line 65
    .local v17, "videoCachedBytes":J
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v19

    .line 66
    .local v19, "audioCachedBytes":J
    move-wide/from16 v21, v15

    const/4 v9, 0x0

    .end local v15    # "audioCachedDuration":J
    .local v21, "audioCachedDuration":J
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v14

    .line 67
    .local v14, "tcpSpeed":J
    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getBitRate()J

    move-result-wide v9

    .line 68
    .local v9, "bitRate":J
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSeekLoadDuration()J

    move-result-wide v23

    .line 70
    .local v23, "seekLoadDuration":J
    const/16 v16, 0x1

    iget-object v11, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const/16 v25, 0x0

    sget v13, Lcom/shenma/tvlauncher/R$string;->v_cache:I

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$smformatedDurationMilli(J)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v17 .. v18}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$smformatedSize(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v2

    const/4 v1, 0x2

    .end local v2    # "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .local v29, "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v27, v2, v25

    aput-object v28, v2, v16

    const-string v1, "%s, %s"

    invoke-static {v12, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v13, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 71
    iget-object v2, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v11, Lcom/shenma/tvlauncher/R$string;->a_cache:I

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v21 .. v22}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$smformatedDurationMilli(J)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v19 .. v20}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$smformatedSize(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v3

    const/4 v3, 0x2

    .end local v3    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .local v28, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v25

    aput-object v27, v3, v16

    invoke-static {v12, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v11, v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 72
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$string;->load_cost:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v11, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v11}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmLoadCost(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v12, v13, v25

    const-string v12, "%d ms"

    invoke-static {v3, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 73
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$string;->seek_cost:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v13, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmSeekCost(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v16, v4

    const/4 v11, 0x1

    .end local v4    # "vdec":I
    .local v16, "vdec":I
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v13, v4, v25

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 74
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$string;->seek_load_cost:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v4, v13, v25

    invoke-static {v3, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 75
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$string;->tcp_speed:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/16 v12, 0x3e8

    invoke-static {v14, v15, v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$smformatedSpeed(JJ)Ljava/lang/String;

    move-result-object v4

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v4, v12, v25

    const-string v4, "%s"

    invoke-static {v3, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 76
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$string;->bit_rate:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float v4, v9

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v4, v12, v25

    const-string v4, "%.2f kbs"

    invoke-static {v3, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 78
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmHandler(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->-$$Nest$fgetmHandler(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    .end local v5    # "fpsOutput":F
    .end local v6    # "fpsDecode":F
    .end local v7    # "videoCachedDuration":J
    .end local v9    # "bitRate":J
    .end local v14    # "tcpSpeed":J
    .end local v16    # "vdec":I
    .end local v17    # "videoCachedBytes":J
    .end local v19    # "audioCachedBytes":J
    .end local v21    # "audioCachedDuration":J
    .end local v23    # "seekLoadDuration":J
    .end local v28    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .end local v29    # "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
