.class Lcom/baidu/cyberplayer/core/CyberPlayer$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayer;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    .line 241
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CyberPlayer$b;)Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 269
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current decode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hw decode"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sw decode"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get metadata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "fail"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "success"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 284
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 281
    :catch_1
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 278
    :catch_2
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 287
    :goto_2
    goto/16 :goto_4

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto video cloud transcoding mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/core/CBMetaData;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/core/CBMetaData;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_4

    .line 300
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://cybertran.baidu.com/video?ak="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&sign="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&src_media_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&output_format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/CBMetaData;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/CBMetaData;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_5

    const-string v0, ", noneed transcoding"

    goto :goto_3

    :cond_5
    const-string v0, ", need transcoding"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 328
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g(Ljava/lang/String;)V

    .line 332
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v0

    if-nez v0, :cond_8

    .line 333
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 335
    nop

    .line 336
    :try_start_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 338
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    .line 339
    :catch_3
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :goto_5
    goto :goto_6

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 346
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(I)V

    .line 347
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(I)V

    .line 348
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()V

    goto :goto_6

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CyberPlayer$b;)Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 250
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CBMetaData;)Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 251
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayer;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeGetMetaData(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CBMetaData;)Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 256
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->sendEmptyMessage(I)Z

    .line 257
    nop

    .line 356
    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
