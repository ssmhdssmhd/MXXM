.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;
.super Ljava/lang/Object;
.source "ApsaraLiveShiftPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerPreparedListener"
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
    .param p1, "player"    # Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;->playerWR:Ljava/lang/ref/WeakReference;

    .line 142
    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 148
    .local v0, "player":Lcom/aliyun/player/ApsaraLiveShiftPlayer;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$000(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    .line 152
    :cond_0
    return-void
.end method
