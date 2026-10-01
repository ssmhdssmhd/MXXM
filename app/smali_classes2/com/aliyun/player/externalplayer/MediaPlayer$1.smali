.class Lcom/aliyun/player/externalplayer/MediaPlayer$1;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/externalplayer/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 81
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$000(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 87
    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$000(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getBufferPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;->onBufferPositionUpdate(J)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$200(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$200(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getPlayingPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;->onPositionUpdate(J)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$1;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$300(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    .line 99
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    return-void
.end method
