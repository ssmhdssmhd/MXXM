.class Lcom/aliyun/player/externalplayer/MediaPlayer$9;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 191
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$9;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 194
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$9;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$9;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    .line 197
    :cond_0
    return-void
.end method
