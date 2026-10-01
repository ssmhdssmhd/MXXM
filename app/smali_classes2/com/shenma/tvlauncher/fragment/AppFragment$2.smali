.class Lcom/shenma/tvlauncher/fragment/AppFragment$2;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Upload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Upload;)V
    .locals 2
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Upload;

    .line 99
    if-eqz p1, :cond_0

    const-string v0, "200"

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Upload;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "zhouchuan"

    const-string/jumbo v1, "\u4e0a\u4f20\u6210\u529f"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

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

    .line 96
    check-cast p1, Lcom/shenma/tvlauncher/domain/Upload;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$2;->onResponse(Lcom/shenma/tvlauncher/domain/Upload;)V

    return-void
.end method
