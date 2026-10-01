.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;
.super Ljava/lang/Thread;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadXMLThread"
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private msg:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "msg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1857
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1854
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->msg:I

    .line 1855
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->file:Ljava/lang/String;

    .line 1858
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->url:Ljava/lang/String;

    .line 1859
    iput-object p3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->file:Ljava/lang/String;

    .line 1860
    iput p4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->msg:I

    .line 1861
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1864
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;-><init>(Landroid/os/Handler;)V

    .line 1865
    .local v0, "downLoadTools":Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 1867
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->msg:I

    .line 1865
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->getNetXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    .line 1868
    return-void
.end method
