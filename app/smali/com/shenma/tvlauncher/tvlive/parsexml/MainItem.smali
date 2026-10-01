.class public Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;
.super Ljava/lang/Object;
.source "MainItem.java"


# instance fields
.field private list_name:Ljava/lang/String;

.field private list_src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList_name()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_name:Ljava/lang/String;

    return-object v0
.end method

.method public getList_src()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_src:Ljava/lang/String;

    return-object v0
.end method

.method public setList_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "list_name"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setList_src(Ljava/lang/String;)V
    .locals 0
    .param p1, "list_src"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_src:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainItem [list_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list_src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->list_src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
