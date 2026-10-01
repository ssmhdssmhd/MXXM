.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnInfoListener;


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

    .line 497
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 1
    .param p1, "infoBean"    # Lcom/aliyun/player/bean/InfoBean;

    .line 500
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$msourceVideoPlayerInfo(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;Lcom/aliyun/player/bean/InfoBean;)V

    .line 501
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    .line 505
    return-void
.end method
