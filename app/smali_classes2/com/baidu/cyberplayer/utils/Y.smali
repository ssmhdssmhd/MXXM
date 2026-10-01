.class public Lcom/baidu/cyberplayer/utils/Y;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/X;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Y;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/X;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;
    .locals 5

    .line 47
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v0

    .line 48
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 49
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 54
    return-object v2

    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Y;)V
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v0

    .line 87
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 88
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/X;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/Y;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Argument \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" missing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/Y;)V
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v0

    .line 107
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/X;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/Y;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Argument \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" missing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method
