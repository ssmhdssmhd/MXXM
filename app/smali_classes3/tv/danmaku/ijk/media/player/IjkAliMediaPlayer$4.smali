.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnErrorListener;


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

    .line 489
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 492
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnError(II)Z

    .line 494
    return-void
.end method
