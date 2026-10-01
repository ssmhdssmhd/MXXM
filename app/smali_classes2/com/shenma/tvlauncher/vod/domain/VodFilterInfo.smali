.class public Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;
.super Ljava/lang/Object;
.source "VodFilterInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private field:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->values:[Ljava/lang/String;

    return-object v0
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->field:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setValues([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->values:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VodFilterInfo [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->values:[Ljava/lang/String;

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
