.class public Lcom/baidu/cyberplayer/utils/ci;
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
.method public a(I)Lcom/baidu/cyberplayer/utils/ch;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ci;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/ch;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;
    .locals 5

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ci;->size()I

    move-result v1

    .line 37
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 38
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/ci;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 40
    return-object v3

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-object v0
.end method
