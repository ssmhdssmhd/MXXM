.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 432
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 435
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.smtvzm.com/xmlfile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetuName(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.xml"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 436
    return-void
.end method
