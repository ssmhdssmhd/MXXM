.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnCompletionListener;


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

    .line 576
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .line 579
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnCompletion()V

    .line 581
    return-void
.end method
