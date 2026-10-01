.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1948
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1958
    return-void
.end method

.method public onParseComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;)V"
        }
    .end annotation

    .line 1951
    .local p1, "allDanmakuItems":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmAllDanmakuItems(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/util/List;)V

    .line 1952
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mstartDanmakuSchedule(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1953
    return-void
.end method
