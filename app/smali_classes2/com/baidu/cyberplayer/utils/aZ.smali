.class public Lcom/baidu/cyberplayer/utils/aZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/U;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/U;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    .line 52
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "NumberReturned"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "StartingIndex"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "BrowseFlag"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public a()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "TotalMatches"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "RequestedCount"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "ObjectID"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "Filter"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aZ;->a:Lcom/baidu/cyberplayer/utils/U;

    const-string v1, "SortCriteria"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
