.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;
.super Ljava/lang/Object;
.source "ApsaraLiveShiftPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerStateChangedListener"
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

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;->playerWR:Ljava/lang/ref/WeakReference;

    .line 205
    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 209
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 210
    .local v0, "player":Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$100(Lcom/aliyun/player/ApsaraLiveShiftPlayer;I)V

    .line 213
    :cond_0
    return-void
.end method
