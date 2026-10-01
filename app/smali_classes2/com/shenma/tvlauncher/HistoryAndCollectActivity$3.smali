.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;
.super Ljava/lang/Object;
.source "HistoryAndCollectActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->GetMotion(Lcom/shenma/tvlauncher/vod/db/Album;)V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

.field final synthetic val$item:Lcom/shenma/tvlauncher/vod/db/Album;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 674
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;->val$item:Lcom/shenma/tvlauncher/vod/db/Album;

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

    .line 674
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;->val$item:Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->GetMotionResponse(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 677
    return-void
.end method
