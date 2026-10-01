.class public Lcom/baidu/cyberplayer/dlna/ContainerItem;
.super Lcom/baidu/cyberplayer/dlna/ContentItem;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/ContentItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCount()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:I

    return v0
.end method

.method public getResItem()Lcom/baidu/cyberplayer/dlna/ResourceItem;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

    return-object v0
.end method

.method public isSearchable()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:Z

    return v0
.end method

.method public setChildCount(I)V
    .locals 0
    .param p1, "childCount"    # I

    .line 19
    iput p1, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:I

    .line 20
    return-void
.end method

.method public setResItem(Lcom/baidu/cyberplayer/dlna/ResourceItem;)V
    .locals 0
    .param p1, "resItem"    # Lcom/baidu/cyberplayer/dlna/ResourceItem;

    .line 13
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

    .line 14
    return-void
.end method

.method public setSearchable(Z)V
    .locals 0
    .param p1, "isSearchable"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/ContainerItem;->a:Z

    .line 26
    return-void
.end method
