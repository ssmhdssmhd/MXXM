.class Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.super Lcom/aliyun/player/AVPBase;
.source "ApsaraLiveShiftPlayer.java"

# interfaces
.implements Lcom/aliyun/player/AliLiveShiftPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;
    }
.end annotation


# static fields
.field public static final SeekLive:I = 0xa


# instance fields
.field private innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private liveSeekOffset:J

.field private liveSeekToTime:J

.field private liveShiftSource:Lcom/aliyun/player/source/LiveShift;

.field private liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

.field private mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

.field private mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

.field private status:I

.field private statusWhenSeek:I

.field private timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceID"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    .line 29
    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    .line 32
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 34
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    .line 133
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    .line 134
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 196
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 198
    new-instance v1, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 232
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 233
    new-instance v1, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 352
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 38
    new-instance v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    invoke-direct {v0, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 19
    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onPrepared()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/ApsaraLiveShiftPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 19
    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingBegin()V

    return-void
.end method

.method static synthetic access$300(Lcom/aliyun/player/ApsaraLiveShiftPlayer;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingProgress(IF)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 19
    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/ApsaraLiveShiftPlayer;JJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onUpdater(JJJ)V

    return-void
.end method

.method private onLoadingBegin()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingBegin()V

    .line 276
    :cond_1
    return-void
.end method

.method private onLoadingEnd()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingEnd()V

    .line 291
    :cond_1
    return-void
.end method

.method private onLoadingProgress(IF)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "netSpeed"    # F

    .line 279
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    .line 282
    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;-><init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 162
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    .line 166
    .local v0, "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 167
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    invoke-virtual {v1, v2, v3}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setStartPlayTime(J)V

    .line 168
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdater()V

    .line 170
    iget v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-ne v1, v2, :cond_4

    .line 171
    iput v3, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    .line 173
    iget v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->statusWhenSeek:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->start()V

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->isAutoPlay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    goto :goto_1

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    invoke-interface {v1, v2, v3}, Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;->onSeekLiveCompletion(J)V

    .line 186
    :cond_3
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    goto :goto_2

    .line 189
    :cond_4
    iput v3, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    .line 190
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    if-eqz v1, :cond_5

    .line 191
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    invoke-interface {v1}, Lcom/aliyun/player/IPlayer$OnPreparedListener;->onPrepared()V

    .line 194
    :cond_5
    :goto_2
    return-void
.end method

.method private onStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 217
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 218
    iput p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnStateChangedListener;->onStateChanged(I)V

    .line 224
    :cond_1
    return-void
.end method

.method private onUpdater(JJJ)V
    .locals 8
    .param p1, "currentTime"    # J
    .param p3, "shiftStartTime"    # J
    .param p5, "shiftEndTime"    # J

    .line 355
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "currentTime":J
    .end local p3    # "shiftStartTime":J
    .end local p5    # "shiftEndTime":J
    .local v2, "currentTime":J
    .local v4, "shiftStartTime":J
    .local v6, "shiftEndTime":J
    invoke-interface/range {v1 .. v7}, Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;->onUpdater(JJJ)V

    goto :goto_0

    .line 355
    .end local v2    # "currentTime":J
    .end local v4    # "shiftStartTime":J
    .end local v6    # "shiftEndTime":J
    .restart local p1    # "currentTime":J
    .restart local p3    # "shiftStartTime":J
    .restart local p5    # "shiftEndTime":J
    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 358
    .end local p1    # "currentTime":J
    .end local p3    # "shiftStartTime":J
    .end local p5    # "shiftEndTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "shiftStartTime":J
    .restart local v6    # "shiftEndTime":J
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentLiveTime()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getLiveTime()J

    move-result-wide v0

    return-wide v0

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getPlayTime()J

    move-result-wide v0

    return-wide v0

    .line 70
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->pause()V

    .line 320
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    .line 323
    :cond_0
    return-void
.end method

.method public seekToLiveTime(J)V
    .locals 6
    .param p1, "liveTime"    # J

    .line 78
    iget v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    if-nez v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    iget v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    iput v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->statusWhenSeek:I

    .line 87
    iput v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    .line 89
    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    .line 90
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCurrentLiveTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    .line 92
    iget-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 93
    iput-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    .line 94
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCurrentLiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-virtual {v0}, Lcom/aliyun/player/source/LiveShift;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "finalPlayUrl":Ljava/lang/String;
    iget-wide v4, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    iget-wide v4, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "queryStr":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "&lhs_start=1&aliyunols=on"

    if-nez v2, :cond_5

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?lhs_offset_unix_s_0="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&lhs_offset_unix_s_0="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "lhs_offset_unix_s_0="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v1    # "queryStr":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v1, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v1}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    .line 114
    .local v1, "urlSource":Lcom/aliyun/player/source/UrlSource;
    invoke-virtual {v1, v0}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v2

    .line 116
    .local v2, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v3, v2, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v3, :cond_7

    .line 117
    move-object v3, v2

    check-cast v3, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v3, v1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 118
    invoke-virtual {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->prepare()V

    .line 120
    :cond_7
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveShift;)V
    .locals 3
    .param p1, "liveShift"    # Lcom/aliyun/player/source/LiveShift;

    .line 48
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    .line 49
    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    .line 50
    .local v0, "urlSource":Lcom/aliyun/player/source/UrlSource;
    invoke-virtual {p1}, Lcom/aliyun/player/source/LiveShift;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v1

    .line 52
    .local v1, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v2, v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v1

    check-cast v2, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v2, v0}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 55
    :cond_0
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 296
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 297
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-super {p0, v0}, Lcom/aliyun/player/AVPBase;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 298
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 302
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 304
    new-instance v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;

    invoke-direct {v0, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    invoke-super {p0, v0}, Lcom/aliyun/player/AVPBase;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 305
    return-void
.end method

.method public setOnSeekLiveCompletionListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    .line 130
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    .line 131
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 228
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 229
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-super {p0, v0}, Lcom/aliyun/player/AVPBase;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 230
    return-void
.end method

.method public setOnTimeShiftUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 125
    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 126
    return-void
.end method

.method public start()V
    .locals 1

    .line 309
    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->start()V

    .line 311
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    .line 314
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 327
    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->stop()V

    .line 329
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    .line 332
    :cond_0
    return-void
.end method
