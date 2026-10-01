.class public Lcom/baidu/cyberplayer/utils/bs;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/br;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/br;

    return-object p1
.end method

.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;
    .locals 5

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bs;->size()I

    move-result v1

    .line 52
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/bs;->a(I)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v3

    .line 54
    invoke-interface {v3, p1}, Lcom/baidu/cyberplayer/utils/br;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    nop

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-object v3

    .line 58
    :cond_2
    return-object v0
.end method
