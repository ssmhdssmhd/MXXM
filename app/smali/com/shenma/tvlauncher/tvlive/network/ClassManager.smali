.class public Lcom/shenma/tvlauncher/tvlive/network/ClassManager;
.super Ljava/lang/Object;
.source "ClassManager.java"


# instance fields
.field LETV_IMP:Ljava/lang/String;

.field PLAY_IMP:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dexCL:Ldalvik/system/DexClassLoader;

.field private dexFile:Ljava/io/File;

.field private iLetv:Lcom/wepower/live/parser/ILetv;

.field private iPlay:Lcom/wepower/live/parser/IPlay;

.field private letvClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private playClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "com.letv.pp.service.LeService"

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->LETV_IMP:Ljava/lang/String;

    .line 15
    const-string v0, "com.wepower.live.tv.PlayImp"

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->PLAY_IMP:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->context:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->playClass:Ljava/lang/Class;

    .line 19
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iPlay:Lcom/wepower/live/parser/IPlay;

    .line 20
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iLetv:Lcom/wepower/live/parser/ILetv;

    .line 21
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexFile:Ljava/io/File;

    .line 22
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexCL:Ldalvik/system/DexClassLoader;

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private findJarFile()Ljava/io/File;
    .locals 3

    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method


# virtual methods
.method public getLetvClass()Lcom/wepower/live/parser/ILetv;
    .locals 2

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexCL:Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->LETV_IMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->letvClass:Ljava/lang/Class;

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->letvClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepower/live/parser/ILetv;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iLetv:Lcom/wepower/live/parser/ILetv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iLetv:Lcom/wepower/live/parser/ILetv;

    return-object v0
.end method

.method public getPlayClass()Lcom/wepower/live/parser/IPlay;
    .locals 2

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexCL:Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->PLAY_IMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->playClass:Ljava/lang/Class;

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->playClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepower/live/parser/IPlay;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iPlay:Lcom/wepower/live/parser/IPlay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->iPlay:Lcom/wepower/live/parser/IPlay;

    return-object v0
.end method

.method public initFile()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->context:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexFile:Ljava/io/File;

    .line 54
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->findJarFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexFile:Ljava/io/File;

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->dexCL:Ldalvik/system/DexClassLoader;

    .line 56
    return-void
.end method
