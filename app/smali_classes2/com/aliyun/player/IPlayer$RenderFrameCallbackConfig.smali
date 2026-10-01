.class public Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderFrameCallbackConfig"
.end annotation


# instance fields
.field public mAudioDataAddr:Z

.field public mVideoDataAddr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mVideoDataAddr:Z

    .line 1970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mAudioDataAddr:Z

    return-void
.end method
