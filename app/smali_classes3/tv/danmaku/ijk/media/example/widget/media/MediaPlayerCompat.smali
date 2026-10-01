.class public Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .line 65
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 66
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 67
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->deselectTrack(I)V

    .line 69
    return-void
.end method

.method public static getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 2
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez p0, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    .line 50
    move-object v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto :goto_0

    .line 51
    :cond_1
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_2

    .line 52
    move-object v1, p0

    check-cast v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 54
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;
    .locals 3
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, "null"

    return-object v0

    .line 29
    :cond_0
    instance-of v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    if-eqz v0, :cond_2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextureMediaPlayer <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    check-cast v1, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    .line 32
    .local v1, "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-nez v1, :cond_1

    .line 33
    const-string v2, "null>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I
    .locals 2
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "trackType"    # I

    .line 72
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 73
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, -0x1

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSelectedTrack(I)I

    move-result v1

    return v1
.end method

.method public static selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .line 58
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 59
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 60
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->selectTrack(I)V

    .line 62
    return-void
.end method
