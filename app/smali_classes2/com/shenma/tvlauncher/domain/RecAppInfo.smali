.class public Lcom/shenma/tvlauncher/domain/RecAppInfo;
.super Ljava/lang/Object;
.source "RecAppInfo.java"


# instance fields
.field private packname:Ljava/lang/String;

.field private tjapk:Ljava/lang/String;

.field private tjinfo:Ljava/lang/String;

.field private tjpicur:Ljava/lang/String;

.field private tjtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackname()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->packname:Ljava/lang/String;

    return-object v0
.end method

.method public getTjapk()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjapk:Ljava/lang/String;

    return-object v0
.end method

.method public getTjinfo()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTjpicur()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjpicur:Ljava/lang/String;

    return-object v0
.end method

.method public getTjtype()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjtype:Ljava/lang/String;

    return-object v0
.end method

.method public setPackname(Ljava/lang/String;)V
    .locals 0
    .param p1, "packname"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->packname:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTjapk(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjapk"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjapk:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTjinfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjinfo"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjinfo:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTjpicur(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjpicur"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjpicur:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTjtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjtype"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecAppInfo;->tjtype:Ljava/lang/String;

    .line 44
    return-void
.end method
