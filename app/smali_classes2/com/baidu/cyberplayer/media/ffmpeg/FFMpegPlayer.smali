.class public Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()I
    .locals 1

    .line 41
    invoke-static {}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->kernel_getPort()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->kernel_stopPlay(Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->kernel_start(Ljava/lang/String;ILjava/lang/String;I)I

    .line 31
    return-void
.end method

.method public static b()I
    .locals 1

    .line 53
    invoke-static {}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->kernel_getMode()I

    move-result v0

    return v0
.end method

.method public static native kernel_getMode()I
.end method

.method public static native kernel_getPort()I
.end method

.method public static native kernel_start(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public static native kernel_stopPlay(Ljava/lang/String;)I
.end method
