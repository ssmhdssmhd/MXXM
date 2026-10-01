.class public Lcom/baidu/cyberplayer/dlna/FileItem;
.super Lcom/baidu/cyberplayer/dlna/ContentItem;
.source "SourceFile"


# instance fields
.field private a:J

.field private a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/ContentItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResItem()Lcom/baidu/cyberplayer/dlna/ResourceItem;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

    return-object v0
.end method

.method public getResURL()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:J

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProtocolInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolInfo"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setResItem(Lcom/baidu/cyberplayer/dlna/ResourceItem;)V
    .locals 0
    .param p1, "resItem"    # Lcom/baidu/cyberplayer/dlna/ResourceItem;

    .line 16
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:Lcom/baidu/cyberplayer/dlna/ResourceItem;

    .line 17
    return-void
.end method

.method public setResURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "resURL"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 34
    iput-wide p1, p0, Lcom/baidu/cyberplayer/dlna/FileItem;->a:J

    .line 35
    return-void
.end method
