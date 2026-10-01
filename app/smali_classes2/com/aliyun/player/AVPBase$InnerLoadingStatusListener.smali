.class Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerLoadingStatusListener"
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

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 263
    return-void
.end method


# virtual methods
.method public onLoadingBegin()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 268
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0}, Lcom/aliyun/player/AVPBase;->access$800(Lcom/aliyun/player/AVPBase;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onLoadingEnd()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 284
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 285
    invoke-static {v0}, Lcom/aliyun/player/AVPBase;->access$1000(Lcom/aliyun/player/AVPBase;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onLoadingProgress(IF)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "netSpeed"    # F

    .line 275
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 276
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/AVPBase;->access$900(Lcom/aliyun/player/AVPBase;IF)V

    .line 279
    :cond_0
    return-void
.end method
