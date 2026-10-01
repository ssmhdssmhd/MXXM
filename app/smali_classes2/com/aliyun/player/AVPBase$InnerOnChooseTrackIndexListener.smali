.class Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnChooseTrackIndexListener"
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method


# virtual methods
.method public onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 2
    .param p1, "trackInfos"    # [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 108
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 109
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0, p1}, Lcom/aliyun/player/AVPBase;->access$200(Lcom/aliyun/player/AVPBase;[Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result v1

    return v1

    .line 112
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
