.class public Lcom/shenma/tvlauncher/dao/bean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appdata:Ljava/lang/String;

.field private appicon:Landroid/graphics/drawable/Drawable;

.field private appname:Ljava/lang/String;

.field private apppack:Ljava/lang/String;

.field private appsize:Ljava/lang/String;

.field private isLove:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appicon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appsize"    # Ljava/lang/String;
    .param p3, "appdata"    # Ljava/lang/String;
    .param p4, "appname"    # Ljava/lang/String;
    .param p5, "apppack"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appicon:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p2, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appsize:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appdata:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appname:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->apppack:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAppdata()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appdata:Ljava/lang/String;

    return-object v0
.end method

.method public getAppicon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appicon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getApppack()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->apppack:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsize()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appsize:Ljava/lang/String;

    return-object v0
.end method

.method public isLove()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove:Z

    return v0
.end method

.method public setAppdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "appdata"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appdata:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setAppicon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appicon"    # Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appicon:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appname:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setApppack(Ljava/lang/String;)V
    .locals 0
    .param p1, "apppack"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->apppack:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAppsize(Ljava/lang/String;)V
    .locals 0
    .param p1, "appsize"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->appsize:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLove(Z)V
    .locals 0
    .param p1, "isLove"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove:Z

    .line 77
    return-void
.end method
