.class public Lcom/aliyun/player/source/SourceBase;
.super Ljava/lang/Object;
.source "SourceBase.java"


# instance fields
.field private mCoverPath:Ljava/lang/String;

.field protected mForceQuality:Z

.field protected mQuality:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    return-void
.end method


# virtual methods
.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isForceQuality()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    return v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCoverPath"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/aliyun/player/source/SourceBase;->mCoverPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/aliyun/player/source/SourceBase;->mTitle:Ljava/lang/String;

    .line 69
    return-void
.end method
