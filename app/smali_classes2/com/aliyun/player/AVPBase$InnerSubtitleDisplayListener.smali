.class Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerSubtitleDisplayListener"
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

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 341
    return-void
.end method


# virtual methods
.method public onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 346
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/AVPBase;->access$1200(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method public onSubtitleHeader(ILjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "header"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 370
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 371
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/AVPBase;->access$1500(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V

    .line 373
    :cond_0
    return-void
.end method

.method public onSubtitleHide(IJ)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J

    .line 361
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 362
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 363
    invoke-static {v0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->access$1400(Lcom/aliyun/player/AVPBase;IJ)V

    .line 365
    :cond_0
    return-void
.end method

.method public onSubtitleShow(IJLjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J
    .param p4, "data"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 354
    .local v0, "avpBase":Lcom/aliyun/player/AVPBase;
    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->access$1300(Lcom/aliyun/player/AVPBase;IJLjava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method
