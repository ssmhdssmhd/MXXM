.class public Lcom/baidu/cyberplayer/dlna/ResourceItem;
.super Lcom/baidu/cyberplayer/dlna/ContentItem;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/ContentItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResURL()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setProtocolInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolInfo"    # Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setResURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "resURL"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/ResourceItem;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
