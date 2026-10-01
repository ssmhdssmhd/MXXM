.class Lcom/baidu/cyberplayer/dlna/c$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/c;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 228
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAUSED_PLAYBACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    :cond_1
    return-void

    .line 236
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aY;->c()Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v3, v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aY;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 242
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aY;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aY;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 253
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    move-result-object v2

    sget-object v3, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SOURCE_CHANGE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->e(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 247
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    move-result-object v2

    sget-object v3, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SYNC_SUCCESS:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->e(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 260
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 261
    return-void

    .line 262
    :cond_6
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->f(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 263
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2}, Lcom/baidu/cyberplayer/dlna/c;->g(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 264
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->h(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 265
    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->f(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LEFT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-gez v3, :cond_7

    if-lez v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2, v0}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_7
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->f(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RIGHT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v2, :cond_8

    .line 269
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v2, v0}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Ljava/lang/String;)V

    .line 272
    :cond_8
    :goto_2
    goto :goto_3

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Ljava/lang/String;)V

    .line 276
    :goto_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_4

    .line 277
    :catch_0
    move-exception v0

    .line 279
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$a;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :goto_4
    return-void
.end method
