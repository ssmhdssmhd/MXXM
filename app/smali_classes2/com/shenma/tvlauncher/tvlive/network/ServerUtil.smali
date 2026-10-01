.class public Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;
.super Ljava/lang/Object;
.source "ServerUtil.java"


# instance fields
.field private filmID:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->filmID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->server:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->link:Ljava/lang/String;

    return-void
.end method

.method public static getServerPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filmID"    # Ljava/lang/String;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:9906/api?func=switch_chan&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->MAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&flag=&monitor=&path=&file=&server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFilmID()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->filmID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->server:Ljava/lang/String;

    return-object v0
.end method

.method public setFilmID(Ljava/lang/String;)V
    .locals 0
    .param p1, "filmID"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->filmID:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->link:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/ServerUtil;->server:Ljava/lang/String;

    .line 28
    return-void
.end method
