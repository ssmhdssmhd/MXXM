.class public Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field private apkurl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkurl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->apkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApkurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkurl"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->apkurl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->description:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->version:Ljava/lang/String;

    .line 14
    return-void
.end method
