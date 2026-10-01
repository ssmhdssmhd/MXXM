.class public Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
.super Ljava/lang/Object;
.source "DanmakuItem.java"


# instance fields
.field private color:Ljava/lang/String;

.field private fontSize:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private time:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->fontSize:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->time:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->color:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontSize"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->fontSize:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->text:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 19
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->time:I

    .line 20
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->type:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DanmakuItem{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->color:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fontSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
