.class Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnTrackReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTrackReadyListener"
.end annotation


# instance fields
.field private avpBaseWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/AVPBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/AVPBase;)V
    .locals 1
    .param p1, "avpBase"    # Lcom/aliyun/player/AVPBase;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 234
    return-void
.end method


# virtual methods
.method public onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 238
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 239
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0, p1}, Lcom/aliyun/player/AVPBase;->access$700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 242
    :cond_0
    return-void
.end method
