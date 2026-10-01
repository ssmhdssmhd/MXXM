.class public abstract Lcom/baidu/cyberplayer/dlna/ContentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/dlna/ContentItem$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method


# virtual methods
.method public getContentType()Lcom/baidu/cyberplayer/dlna/ContentItem$a;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V
    .locals 0
    .param p1, "contentType"    # Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    .line 26
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    .line 27
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ContentItem;->c:Ljava/lang/String;

    .line 39
    return-void
.end method
