.class Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;
.super Ljava/lang/Thread;
.source "DownloadResourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->downloadZip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetupdateList(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    move-result-object v2

    iget-object v2, v2, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->getStreamFromZip(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$mtarZip(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;Ljava/io/InputStream;)V

    .line 97
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
