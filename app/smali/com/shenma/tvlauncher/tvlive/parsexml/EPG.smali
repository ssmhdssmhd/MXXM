.class public Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;
.super Ljava/lang/Object;
.source "EPG.java"


# instance fields
.field private keyTime:Ljava/lang/String;

.field private valueContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyTime()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->keyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getValueContent()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->valueContent:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyTime"    # Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->keyTime:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setValueContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "valueContent"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->valueContent:Ljava/lang/String;

    .line 21
    return-void
.end method
