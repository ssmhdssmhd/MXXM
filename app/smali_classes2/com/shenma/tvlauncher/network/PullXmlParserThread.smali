.class public Lcom/shenma/tvlauncher/network/PullXmlParserThread;
.super Lcom/shenma/tvlauncher/network/BaseThread;
.source "PullXmlParserThread.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PullXmlParserThread"


# instance fields
.field protected mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "callback"    # Lcom/shenma/tvlauncher/network/PullXmlParserCallback;
    .param p4, "url"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/network/BaseThread;-><init>(J)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    .line 23
    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    .line 53
    const-string v0, "PullXmlParserThread() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/shenma/tvlauncher/network/PullXmlParser;

    invoke-direct {v0, p3}, Lcom/shenma/tvlauncher/network/PullXmlParser;-><init>(Lcom/shenma/tvlauncher/network/PullXmlParserCallback;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    .line 56
    iput-object p4, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    .line 58
    const-string v0, "PullXmlParserThread() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public constructor <init>(JLjava/lang/Boolean;Lcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "isaiqiyi"    # Ljava/lang/Boolean;
    .param p4, "callback"    # Lcom/shenma/tvlauncher/network/PullXmlParserCallback;
    .param p5, "url"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/network/BaseThread;-><init>(J)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    .line 23
    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    .line 35
    const-string v0, "PullXmlParserThread() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/shenma/tvlauncher/network/PullXmlParser;

    invoke-direct {v0, p4, p3}, Lcom/shenma/tvlauncher/network/PullXmlParser;-><init>(Lcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    .line 38
    iput-object p5, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    .line 40
    const-string v0, "PullXmlParserThread() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method protected _done()V
    .locals 3

    .line 87
    const-string v0, "_done() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mParser:Lcom/shenma/tvlauncher/network/PullXmlParser;

    iget-object v2, p0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/network/PullXmlParser;->parser(Ljava/lang/String;)Z

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->stop()Z

    .line 95
    const-string v0, "_done() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method protected _finish()V
    .locals 2

    .line 77
    const-string v0, "_finish() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "_finish() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected _init()V
    .locals 2

    .line 67
    const-string v0, "_init() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "_init() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected _interrupted()V
    .locals 2

    .line 104
    const-string v0, "_interrupted() start"

    const-string v1, "PullXmlParserThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "_interrupted() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
