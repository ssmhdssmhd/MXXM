.class Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;
.super Ljava/lang/Object;
.source "DownloadResourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileName"
.end annotation


# static fields
.field static final LETV_SO:Ljava/lang/String; = "libutp.so"

.field static final PATH_ROOT:Ljava/lang/String; = "sdcard"

.field static final PATH_WEPOWER:Ljava/lang/String; = "wepower"

.field static final PLAY_JAR:Ljava/lang/String; = "play.jar"

.field static final WEIBAO:Ljava/lang/String; = "weibao"

.field static final WEPOWER_SO:Ljava/lang/String; = "so"

.field static final ZIP_NAME:Ljava/lang/String; = "wepower.zip"

.field static final ZIP_VERSION:Ljava/lang/String; = "version.txt"


# instance fields
.field letvSo:Ljava/io/File;

.field playJarFile:Ljava/io/File;

.field rootFile:Ljava/io/File;

.field tempFile:Ljava/io/File;

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

.field wepowerFile:Ljava/io/File;

.field zipContentFile:Ljava/io/File;

.field zipFile:Ljava/io/File;

.field zipVersionFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->rootFile:Ljava/io/File;

    .line 301
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->zipVersionFile:Ljava/io/File;

    .line 302
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->zipFile:Ljava/io/File;

    .line 303
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->zipContentFile:Ljava/io/File;

    .line 304
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->letvSo:Ljava/io/File;

    .line 305
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->playJarFile:Ljava/io/File;

    .line 306
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->tempFile:Ljava/io/File;

    .line 307
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->wepowerFile:Ljava/io/File;

    return-void
.end method
