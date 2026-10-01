.class public Lcom/baidu/cyberplayer/utils/at;
.super Lcom/baidu/cyberplayer/utils/cf;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/Z;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cf;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/at;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Z;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/at;->a:Lcom/baidu/cyberplayer/utils/Z;

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/at;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 41
    return-void
.end method

.method public run()V
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/at;->a()Lcom/baidu/cyberplayer/utils/Z;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Z;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/at;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 59
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 61
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Z;->a()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
