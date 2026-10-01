.class Lcom/baidu/cyberplayer/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;
.implements Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/b$c;,
        Lcom/baidu/cyberplayer/core/b$a;,
        Lcom/baidu/cyberplayer/core/b$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static a:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private a:D

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

.field private a:Lcom/baidu/cyberplayer/core/b$b;

.field private a:Lcom/baidu/cyberplayer/core/b$c;

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "CyberPlayerController"

    sput-object v0, Lcom/baidu/cyberplayer/core/b;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/cyberplayer/core/b;->a:Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/b;->c:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/baidu/cyberplayer/core/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 p4, 0x0

    iput-object p4, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    .line 61
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 62
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 65
    sget-object p4, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object p4, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 66
    const/4 p4, 0x2

    iput p4, p0, Lcom/baidu/cyberplayer/core/b;->a:I

    .line 69
    const/4 p4, 0x5

    iput p4, p0, Lcom/baidu/cyberplayer/core/b;->b:I

    .line 70
    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/baidu/cyberplayer/core/b;->b:Z

    .line 71
    iput-boolean p4, p0, Lcom/baidu/cyberplayer/core/b;->c:Z

    .line 73
    iput-boolean p4, p0, Lcom/baidu/cyberplayer/core/b;->d:Z

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/b;->a:D

    .line 166
    invoke-static {p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setBAEKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object p2, Lcom/baidu/cyberplayer/core/b;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 168
    sget-object p2, Lcom/baidu/cyberplayer/core/b;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeLlibsDirectory(Ljava/lang/String;)V

    .line 170
    :cond_0
    sget-object p2, Lcom/baidu/cyberplayer/core/b;->d:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 171
    sget-object p2, Lcom/baidu/cyberplayer/core/b;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeFilesDirectory(Ljava/lang/String;)V

    .line 174
    :cond_1
    new-instance p2, Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-direct {p2, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 175
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Landroid/content/Context;

    .line 176
    iput-object p5, p0, Lcom/baidu/cyberplayer/core/b;->a:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 151
    sput-object p0, Lcom/baidu/cyberplayer/core/b;->c:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 84
    sput-boolean p0, Lcom/baidu/cyberplayer/core/b;->a:Z

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 113
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 114
    return v0

    .line 117
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rtsp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rtmp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/baidu/cyberplayer/core/b;->a:Z

    if-eqz p0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    return v0

    .line 119
    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 160
    sput-object p0, Lcom/baidu/cyberplayer/core/b;->d:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 127
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 128
    return v0

    .line 131
    :cond_0
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    return v0

    .line 132
    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 140
    return v0

    .line 143
    :cond_0
    const-string v1, "p2p://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 144
    const/4 p0, 0x1

    return p0

    .line 147
    :cond_1
    return v0
.end method


# virtual methods
.method public a()D
    .locals 4

    .line 307
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/b;->b()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public a(I)D
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getDuration(I)D

    move-result-wide v0

    return-wide v0

    .line 342
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getVideoWidth()I

    move-result v0

    return v0

    .line 532
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->openExtSubFile(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 581
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->takeSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 324
    nop

    .line 325
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getCurrentPlayingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->pause()V

    .line 356
    :cond_0
    return-void
.end method

.method public a(D)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->seekTo(D)V

    .line 380
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setDecodeMode(I)Z

    .line 90
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setDisplay(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 595
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 598
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/b$b;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    .line 194
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V
    .locals 8

    .line 197
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 199
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-nez p1, :cond_0

    .line 200
    return-void

    .line 201
    :cond_0
    sget-boolean p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    const/16 v0, -0x44c

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/cyberplayer/core/b;->onError(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z

    .line 203
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/b;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 204
    return-void

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->reset()V

    .line 208
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget v0, p0, Lcom/baidu/cyberplayer/core/b;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setVideoScalingMode(I)V

    .line 209
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    const/16 v0, 0x432

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setVideoCloudTransLevel(I)V

    .line 210
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setDisplay(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 211
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnCompletionListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;)V

    .line 212
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnCompletionWithParamListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;)V

    .line 213
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnErrorListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;)V

    .line 214
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnPreparedListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;)V

    .line 215
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnInfoListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;)V

    .line 216
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnSeekCompleteListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;)V

    .line 218
    :try_start_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 222
    :catch_1
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 219
    :catch_2
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 228
    :goto_0
    nop

    .line 230
    :goto_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/cyberplayer/core/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/cyberplayer/core/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 235
    sget-object p1, Lcom/baidu/cyberplayer/core/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocalFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->b:Ljava/lang/String;

    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Landroid/content/Context;

    const-string v2, "__cyberplayer_dl_sec"

    invoke-virtual {v0, v2, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    if-eqz p1, :cond_5

    .line 242
    :try_start_1
    const-string v0, "com.baidu.cyberplayer.download.LocalHlsSec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 243
    const-string v3, "decryptStr"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, p2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 244
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/b;->a:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, p2

    aput-object p1, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 245
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setLocalDecryptKeyForHLS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 250
    :cond_3
    goto :goto_3

    .line 248
    :catch_3
    move-exception p1

    .line 249
    sget-object v0, Lcom/baidu/cyberplayer/core/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 231
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnBufferingUpdateListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;)V

    .line 232
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnPlayingBufferCacheListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;)V

    .line 233
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setOnNetworkSpeedListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;)V

    .line 256
    :cond_5
    :goto_3
    :try_start_2
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    .line 260
    goto :goto_4

    .line 257
    :catch_4
    move-exception p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 261
    :goto_4
    nop

    .line 263
    sget-object p1, Lcom/baidu/cyberplayer/core/b$c;->b:Lcom/baidu/cyberplayer/core/b$c;

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 264
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-interface {p1, v0, p2, p2}, Lcom/baidu/cyberplayer/core/b$b;->onPlayStatusChanged(Lcom/baidu/cyberplayer/core/b$c;II)V

    .line 266
    return-void
.end method

.method public a()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()D
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getCurrentPositionInMsecs()D

    move-result-wide v0

    .line 314
    iget-boolean v2, p0, Lcom/baidu/cyberplayer/core/b;->d:Z

    if-eqz v2, :cond_0

    .line 315
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/b;->a:D

    return-wide v0

    .line 317
    :cond_0
    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/b;->a:D

    .line 318
    return-wide v0

    .line 320
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getVideoHeight()I

    move-result v0

    return v0

    .line 539
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->start()V

    .line 362
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 93
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iput v0, p0, Lcom/baidu/cyberplayer/core/b;->a:I

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/b;->a:I

    .line 100
    :goto_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-eq p1, v0, :cond_2

    .line 101
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget v0, p0, Lcom/baidu/cyberplayer/core/b;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setVideoScalingMode(I)V

    .line 103
    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setAutoVideoCloudTranscoding(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public c()D
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getDuration()D

    move-result-wide v0

    return-wide v0

    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-eq v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->stop()V

    .line 368
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setEnableFastStart(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->release()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 406
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->selectResolutionType(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setSubtitleVisibility(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setSubtitleColor(I)V

    .line 552
    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setSubtitleFontScale(I)V

    .line 557
    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setSubtitleAlignMethod(I)V

    .line 562
    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->manualSyncSubtitle(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "percent"    # I

    .line 434
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/core/b$b;->onCachingUpdate(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayer;)V
    .locals 3
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 513
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 514
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-interface {v0, v2, v1, v1}, Lcom/baidu/cyberplayer/core/b$b;->onPlayStatusChanged(Lcom/baidu/cyberplayer/core/b$c;II)V

    .line 516
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/b$b;->onCompletion()V

    .line 518
    :cond_0
    sput-boolean v1, Lcom/baidu/cyberplayer/core/b;->a:Z

    .line 519
    return-void
.end method

.method public onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "param"    # I

    .line 524
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/core/b$b;->OnCompletionWithParam(I)V

    .line 527
    :cond_0
    return-void
.end method

.method public onError(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 457
    nop

    .line 458
    sparse-switch p2, :sswitch_data_0

    .line 482
    goto :goto_0

    .line 478
    :sswitch_0
    nop

    .line 479
    goto :goto_0

    .line 475
    :sswitch_1
    nop

    .line 476
    goto :goto_0

    .line 472
    :sswitch_2
    nop

    .line 473
    goto :goto_0

    .line 469
    :sswitch_3
    nop

    .line 470
    goto :goto_0

    .line 460
    :sswitch_4
    nop

    .line 461
    goto :goto_0

    .line 463
    :sswitch_5
    nop

    .line 464
    goto :goto_0

    .line 466
    :sswitch_6
    nop

    .line 467
    nop

    .line 486
    :goto_0
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 487
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-interface {v0, v2, v1, v1}, Lcom/baidu/cyberplayer/core/b$b;->onPlayStatusChanged(Lcom/baidu/cyberplayer/core/b$c;II)V

    .line 489
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2, p3}, Lcom/baidu/cyberplayer/core/b$b;->onError(II)Z

    move-result v0

    return v0

    .line 492
    :cond_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x64 -> :sswitch_5
        0xc8 -> :sswitch_4
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x12f -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInfo(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 409
    const/16 v0, 0x2bd

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/b;->d:Z

    .line 411
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    sget-object v2, Lcom/baidu/cyberplayer/core/b$a;->a:Lcom/baidu/cyberplayer/core/b$a;

    invoke-interface {v0, v2}, Lcom/baidu/cyberplayer/core/b$b;->onCacheStatusChanged(Lcom/baidu/cyberplayer/core/b$a;)V

    goto :goto_0

    .line 413
    :cond_0
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1

    .line 414
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/b;->d:Z

    .line 415
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    sget-object v2, Lcom/baidu/cyberplayer/core/b$a;->b:Lcom/baidu/cyberplayer/core/b$a;

    invoke-interface {v0, v2}, Lcom/baidu/cyberplayer/core/b$b;->onCacheStatusChanged(Lcom/baidu/cyberplayer/core/b$a;)V

    .line 419
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2, p3}, Lcom/baidu/cyberplayer/core/b$b;->onInfo(II)V

    .line 422
    :cond_2
    return v1
.end method

.method public onOnNetworkSpeedUpdate(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "speed"    # I

    .line 450
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/core/b$b;->onNetworkSpeedUpdate(I)V

    .line 453
    :cond_0
    return-void
.end method

.method public onPlayingBufferCache(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;
    .param p2, "percent"    # I

    .line 442
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/core/b$b;->onPlayingBufferCache(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayer;)V
    .locals 4
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 502
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 503
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->getVideoHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/b$b;->onPlayStatusChanged(Lcom/baidu/cyberplayer/core/b$c;II)V

    .line 506
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/b$b;->onPrePared()V

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->start()V

    .line 509
    return-void
.end method

.method public onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayer;)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 427
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/b;->a:Lcom/baidu/cyberplayer/core/b$b;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/b$b;->onSeekCompleted()V

    .line 430
    :cond_0
    return-void
.end method
