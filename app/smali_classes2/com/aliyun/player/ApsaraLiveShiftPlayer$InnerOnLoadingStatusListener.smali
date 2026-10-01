.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;
.super Ljava/lang/Object;
.source "ApsaraLiveShiftPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnLoadingStatusListener"
.end annotation


# instance fields
.field private playerWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraLiveShiftPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 1
    .param p1, "apsaraLiveShiftPlayer"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    .line 240
    return-void
.end method


# virtual methods
.method public onLoadingBegin()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 245
    .local v0, "player":Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {v0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$200(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onLoadingEnd()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 261
    .local v0, "player":Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    if-eqz v0, :cond_0

    .line 262
    invoke-static {v0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$400(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onLoadingProgress(IF)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "netSpeed"    # F

    .line 252
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 253
    .local v0, "player":Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    if-eqz v0, :cond_0

    .line 254
    invoke-static {v0, p1, p2}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$300(Lcom/aliyun/player/ApsaraLiveShiftPlayer;IF)V

    .line 256
    :cond_0
    return-void
.end method
