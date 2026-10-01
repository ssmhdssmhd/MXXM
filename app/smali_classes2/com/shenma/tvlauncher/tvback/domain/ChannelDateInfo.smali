.class public Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;
.super Ljava/lang/Object;
.source "ChannelDateInfo.java"


# instance fields
.field private channelDate:Ljava/lang/String;

.field private channelDate_Url:Ljava/lang/String;

.field private channelDate_label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelDate()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelDate_Url()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate_Url:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelDate_label()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate_label:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelDate"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setChannelDate_Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelDate_Url"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate_Url:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setChannelDate_label(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelDate_label"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->channelDate_label:Ljava/lang/String;

    .line 35
    return-void
.end method
