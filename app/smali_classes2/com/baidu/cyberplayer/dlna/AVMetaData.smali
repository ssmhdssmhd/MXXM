.class public Lcom/baidu/cyberplayer/dlna/AVMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->b:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->c:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->d:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->e:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Z

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptMimeType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptOpened()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Z

    return v0
.end method

.method public getScriptURL()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setScriptMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptMimeType"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->e:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setScriptOpened(Z)V
    .locals 0
    .param p1, "bFlag"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Z

    .line 50
    return-void
.end method

.method public setScriptURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptURL"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoURL"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/AVMetaData;->a:Ljava/lang/String;

    .line 29
    return-void
.end method
