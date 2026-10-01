.class public Lcom/baidu/cyberplayer/utils/P;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/O;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/P;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/O;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/O;
    .locals 5

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/P;->size()I

    move-result v1

    .line 42
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 43
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/P;->a(I)Lcom/baidu/cyberplayer/utils/O;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/O;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 45
    return-object v3

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/P;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/O;

    move-result-object p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string p1, ""

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/O;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/baidu/cyberplayer/utils/O;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/P;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/O;

    return-object p1
.end method
