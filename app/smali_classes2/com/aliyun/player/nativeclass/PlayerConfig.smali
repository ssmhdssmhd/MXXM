.class public Lcom/aliyun/player/nativeclass/PlayerConfig;
.super Ljava/lang/Object;
.source "PlayerConfig.java"


# instance fields
.field public mClearFrameWhenStop:Z

.field private mCustomHeaders:[Ljava/lang/String;

.field public mDisableAudio:Z

.field public mDisableVideo:Z

.field public mEnableSEI:Z

.field public mEnableVideoTunnelRender:Z

.field public mHighBufferDuration:I

.field public mHttpProxy:Ljava/lang/String;

.field public mLiveStartIndex:I

.field public mMaxBackwardBufferDurationMs:J

.field public mMaxBufferDuration:I

.field public mMaxDelayTime:I

.field public mMaxProbeSize:I

.field public mNetworkRetryCount:I

.field public mNetworkTimeout:I

.field public mPositionTimerIntervalMs:I

.field public mPreferAudio:Z

.field public mReferrer:Ljava/lang/String;

.field public mStartBufferDuration:I

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHttpProxy:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    .line 34
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    .line 42
    const/16 v1, 0x1388

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxDelayTime:I

    .line 50
    const v1, 0xc350

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    .line 58
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHighBufferDuration:I

    .line 66
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mStartBufferDuration:I

    .line 73
    const/4 v2, -0x1

    iput v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxProbeSize:I

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    .line 89
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoTunnelRender:Z

    .line 97
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableSEI:Z

    .line 105
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I

    .line 121
    const/4 v0, -0x3

    iput v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mLiveStartIndex:I

    .line 129
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableAudio:Z

    .line 137
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z

    .line 146
    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPositionTimerIntervalMs:I

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBackwardBufferDurationMs:J

    .line 162
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPreferAudio:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCustomHeaders()[Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    return-object v0
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # [Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    .line 172
    return-void
.end method
