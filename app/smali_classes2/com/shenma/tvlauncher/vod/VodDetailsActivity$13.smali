.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->GetMotion(I)V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
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

    .line 1590
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;->val$position:I

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

    .line 1590
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1592
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;->val$position:I

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->GetMotionResponse(Ljava/lang/String;I)V

    .line 1593
    return-void
.end method
