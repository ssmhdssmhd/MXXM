.class Lcom/aliyun/player/externalplayer/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 131
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 134
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingEnd()V

    goto :goto_0

    .line 138
    :cond_0
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingStart()V

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;->onFirstFrameRender()V

    goto :goto_0

    .line 146
    :cond_2
    nop

    .line 149
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
