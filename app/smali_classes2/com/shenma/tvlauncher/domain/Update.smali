.class public Lcom/shenma/tvlauncher/domain/Update;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcom/shenma/tvlauncher/domain/UpdateInfo;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/Update;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/shenma/tvlauncher/domain/UpdateInfo;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/Update;->data:Lcom/shenma/tvlauncher/domain/UpdateInfo;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/Update;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/Update;->code:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setData(Lcom/shenma/tvlauncher/domain/UpdateInfo;)V
    .locals 0
    .param p1, "data"    # Lcom/shenma/tvlauncher/domain/UpdateInfo;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/Update;->data:Lcom/shenma/tvlauncher/domain/UpdateInfo;

    .line 37
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/Update;->msg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/Update;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/Update;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/Update;->data:Lcom/shenma/tvlauncher/domain/UpdateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
