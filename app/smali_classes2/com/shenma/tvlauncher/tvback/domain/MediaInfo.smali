.class public Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private mediaurl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaurl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->mediaurl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaurl"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->mediaurl:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->name:Ljava/lang/String;

    .line 26
    return-void
.end method
