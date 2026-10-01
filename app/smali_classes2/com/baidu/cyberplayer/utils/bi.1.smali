.class public Lcom/baidu/cyberplayer/utils/bi;
.super Lcom/baidu/cyberplayer/utils/U;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/U;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/U;-><init>(Lcom/baidu/cyberplayer/utils/U;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 78
    const-string v0, "StartingIndex"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 112
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public b()I
    .locals 1

    .line 83
    const-string v0, "RequestedCount"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "BrowseFlag"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 117
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public b()Z
    .locals 2

    .line 63
    const-string v0, "BrowseMetadata"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "ObjectID"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 122
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public c()Z
    .locals 2

    .line 68
    const-string v0, "BrowseDirectChildren"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "SortCriteria"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 127
    const-string v0, "UpdateID"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 128
    return-void
.end method
