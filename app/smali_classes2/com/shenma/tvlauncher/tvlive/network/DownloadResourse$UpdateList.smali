.class Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;
.super Ljava/lang/Object;
.source "DownloadResourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateList"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field link:Ljava/lang/String;

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

.field version:F


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->link:Ljava/lang/String;

    .line 283
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    .line 284
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->description:Ljava/lang/String;

    return-void
.end method
