.class Lcom/aliyun/player/externalplayer/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 112
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 115
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;->onCompletion()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 119
    return-void
.end method
