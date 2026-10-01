.class final Lcom/baidu/cyberplayer/core/CyberPlayerCore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;->audioStartThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2169
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 2170
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k()V

    .line 2171
    return-void
.end method
