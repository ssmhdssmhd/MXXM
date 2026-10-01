.class Lcom/baidu/cyberplayer/dlna/c$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/c;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$c;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_0
    return-void
.end method
