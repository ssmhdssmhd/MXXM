.class public Lcom/baidu/cyberplayer/utils/aT;
.super Lcom/baidu/cyberplayer/utils/aR;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aR;-><init>()V

    .line 30
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aT;->b(I)V

    .line 31
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aT;->a(I)V

    .line 32
    const-string v0, "Server"

    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aT;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aT;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
