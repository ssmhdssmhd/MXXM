.class Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerVideoRenderedListener"
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

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 542
    return-void
.end method


# virtual methods
.method public onVideoRendered(JJ)V
    .locals 1
    .param p1, "timeMs"    # J
    .param p3, "pts"    # J

    .line 546
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 547
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 548
    invoke-static {v0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->access$2100(Lcom/aliyun/player/AVPBase;JJ)V

    .line 550
    :cond_0
    return-void
.end method
