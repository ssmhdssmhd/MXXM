.class Lcom/aliyun/player/externalplayer/MediaPlayer$6;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
.method constructor <init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 152
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 155
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1002(Lcom/aliyun/player/externalplayer/MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;

    .line 156
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1200(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    .line 158
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1300(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1400(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1400(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;->onAutoPlayStart()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 164
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->start()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 167
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;->onPrepared()V

    .line 172
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1600(Lcom/aliyun/player/externalplayer/MediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 173
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1600(Lcom/aliyun/player/externalplayer/MediaPlayer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v3}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aliyun/player/externalplayer/MediaPlayer;->seekTo(JZ)V

    .line 174
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$6;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1602(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J

    .line 176
    :cond_3
    return-void
.end method
