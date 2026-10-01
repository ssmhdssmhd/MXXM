.class public Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# instance fields
.field private channeName:Ljava/lang/String;

.field private channeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChanneName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->channeName:Ljava/lang/String;

    return-object v0
.end method

.method public getChanneUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->channeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setChanneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "channeName"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->channeName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setChanneUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "channeUrl"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->channeUrl:Ljava/lang/String;

    .line 25
    return-void
.end method
