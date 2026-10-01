.class public Lcom/aliyun/liveshift/LiveTimeUpdater;
.super Ljava/lang/Object;
.source "LiveTimeUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveTimeUpdater"

.field private static WHAT_UPDATE_LIVE_TIME:I

.field private static WHAT_UPDATE_PLAY_TIME:I


# instance fields
.field private contextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private liveTime:J

.field private mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

.field private final mTimeShift:Lcom/aliyun/player/source/LiveShift;

.field private needPause:Z

.field private playTime:J

.field private timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

.field private timer:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeShift"    # Lcom/aliyun/player/source/LiveShift;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 42
    new-instance v0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater$1;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    .line 70
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 22
    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    return v0
.end method

.method static synthetic access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # Lcom/aliyun/liveshift/bean/TimeLineContent;

    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 22
    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    return v0
.end method

.method static synthetic access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # J

    .line 22
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide p1
.end method

.method static synthetic access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # J

    .line 22
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide p1
.end method

.method static synthetic access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdatePlayTimerDelay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 22
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p1, "x1"    # Lcom/aliyun/liveshift/bean/TimeLineContent;

    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 3
    .param p1, "requestInfo"    # Lcom/aliyun/liveshift/bean/TimeLineContent;

    .line 112
    iget-object v0, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    .line 113
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/liveshift/bean/TimeLineInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    iget-wide v1, v1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->end:J

    return-wide v1

    .line 117
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 3
    .param p1, "requestInfo"    # Lcom/aliyun/liveshift/bean/TimeLineContent;

    .line 121
    iget-object v0, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    .line 122
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/liveshift/bean/TimeLineInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    iget-wide v1, v1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->start:J

    return-wide v1

    .line 126
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private startUpdateLiveTimerDelay(I)V
    .locals 4
    .param p1, "seconds"    # I

    .line 145
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    .line 146
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    return-void
.end method

.method private startUpdatePlayTimerDelay(I)V
    .locals 4
    .param p1, "second"    # I

    .line 136
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    .line 137
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    return-void
.end method

.method private stopUpdateLiveTimer()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    return-void
.end method

.method private stopUpdatePlayTimer()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    return-void
.end method

.method private updateLiveTimer()V
    .locals 4

    .line 77
    new-instance v0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    new-instance v3, Lcom/aliyun/liveshift/LiveTimeUpdater$2;

    invoke-direct {v3, p0}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;-><init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    .line 101
    .local v0, "request":Lcom/aliyun/liveshift/request/GetTimeShiftRequest;
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setRefer(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setTimeout(I)V

    .line 104
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHttpProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setHttpProxy(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setUerAgent(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/PlayerConfig;->getCustomHeaders()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setCustomHeaders([Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->getAsync()V

    .line 109
    return-void
.end method


# virtual methods
.method public getLiveTime()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method public pauseUpdater()V
    .locals 1

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 165
    return-void
.end method

.method public resumeUpdater()V
    .locals 1

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 175
    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 198
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 199
    return-void
.end method

.method public setStartPlayTime(J)V
    .locals 0
    .param p1, "startPlayTime"    # J

    .line 73
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 74
    return-void
.end method

.method public setUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 131
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 133
    return-void
.end method

.method public startUpdater()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    .line 157
    return-void
.end method

.method public stopUpdater()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    .line 185
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    .line 186
    return-void
.end method
