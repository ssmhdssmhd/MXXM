.class Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerVideoSizeChangedListener"
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

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 209
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 213
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 214
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/AVPBase;->access$600(Lcom/aliyun/player/AVPBase;II)V

    .line 217
    :cond_0
    return-void
.end method
