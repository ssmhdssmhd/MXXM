.class public Lcom/baidu/cyberplayer/utils/bg;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/bf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bg;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bf;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bg;->size()I

    move-result v0

    .line 60
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/bg;->a(I)Lcom/baidu/cyberplayer/utils/bf;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bf;->a()V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
