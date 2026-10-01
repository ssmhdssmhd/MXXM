.class public Lcom/baidu/cyberplayer/utils/aq;
.super Lcom/baidu/cyberplayer/utils/cf;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/Z;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cf;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aq;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Z;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aq;->a:Lcom/baidu/cyberplayer/utils/Z;

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aq;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 43
    return-void
.end method

.method public run()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aq;->a()Lcom/baidu/cyberplayer/utils/Z;

    move-result-object v0

    .line 57
    nop

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aq;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 60
    const-wide/32 v1, 0x1d4c0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 62
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Z;->g()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
