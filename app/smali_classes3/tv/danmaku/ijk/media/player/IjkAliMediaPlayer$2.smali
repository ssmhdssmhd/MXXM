.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 2

    .line 476
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreparing:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnPrepared()V

    .line 478
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreparing:Z

    .line 480
    :cond_0
    return-void
.end method
