.class public Lcom/baidu/cyberplayer/utils/ar;
.super Lcom/baidu/cyberplayer/utils/cf;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/aa;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cf;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ar;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/aa;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ar;->a:Lcom/baidu/cyberplayer/utils/aa;

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/ar;->a:Lcom/baidu/cyberplayer/utils/aa;

    .line 43
    return-void
.end method

.method public run()V
    .locals 11

    .line 56
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ar;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->b()I

    move-result v1

    int-to-long v1, v1

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ar;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 60
    const-wide/16 v3, 0x4

    div-long v3, v1, v3

    long-to-float v5, v1

    float-to-double v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-long v5, v5

    add-long/2addr v3, v5

    .line 61
    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 63
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 65
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->b()V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
