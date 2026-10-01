.class public Lcom/baidu/cyberplayer/utils/aM;
.super Lcom/baidu/cyberplayer/utils/aQ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aQ;-><init>()V

    .line 28
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aM;->g(Ljava/lang/String;)V

    .line 29
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aM;->h(Ljava/lang/String;)V

    .line 30
    return-void
.end method
