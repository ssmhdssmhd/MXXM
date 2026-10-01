.class Lcom/aliyun/player/externalplayer/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 106
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$2;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .line 109
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$2;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    int-to-long v1, p2

    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$2;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-virtual {v3}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getDuration()J

    move-result-wide v3

    mul-long v1, v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$402(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J

    .line 110
    return-void
.end method
