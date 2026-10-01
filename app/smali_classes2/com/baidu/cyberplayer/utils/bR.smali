.class public Lcom/baidu/cyberplayer/utils/bR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/bl;)I
    .locals 4

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/baidu/cyberplayer/utils/bK;

    if-eqz v1, :cond_4

    instance-of v1, p2, Lcom/baidu/cyberplayer/utils/bK;

    if-nez v1, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    check-cast p1, Lcom/baidu/cyberplayer/utils/bK;

    .line 40
    check-cast p2, Lcom/baidu/cyberplayer/utils/bK;

    .line 41
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->a()J

    move-result-wide v1

    .line 42
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bK;->a()J

    move-result-wide p1

    .line 43
    cmp-long v3, v1, p1

    if-nez v3, :cond_2

    .line 44
    return v0

    .line 45
    :cond_2
    cmp-long v0, v1, p1

    if-gez v0, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 38
    :cond_4
    :goto_1
    return v0

    .line 36
    :cond_5
    :goto_2
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "dc:date"

    return-object v0
.end method
