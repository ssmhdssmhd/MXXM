.class public Lcom/aliyun/player/source/UrlSource;
.super Lcom/aliyun/player/source/SourceBase;
.source "UrlSource.java"


# instance fields
.field private mCacheFilePath:Ljava/lang/String;

.field private mOriginSize:J

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    .line 15
    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mQuality:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/source/UrlSource;->mForceQuality:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    .line 18
    return-void
.end method


# virtual methods
.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginSize()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheFilePath"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOriginSize(J)V
    .locals 0
    .param p1, "originSize"    # J

    .line 79
    iput-wide p1, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    .line 80
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUri"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    .line 46
    return-void
.end method
