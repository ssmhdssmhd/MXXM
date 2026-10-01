.class Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnTrackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTrackChangedListener"
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

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method public onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1
    .param p1, "trackInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;
    .param p2, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 445
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 446
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 447
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/AVPBase;->access$1800(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 1
    .param p1, "trackInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 437
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 438
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0, p1}, Lcom/aliyun/player/AVPBase;->access$1700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 441
    :cond_0
    return-void
.end method
