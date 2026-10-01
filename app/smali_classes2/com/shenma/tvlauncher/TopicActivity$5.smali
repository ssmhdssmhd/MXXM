.class Lcom/shenma/tvlauncher/TopicActivity$5;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 4
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fputvodDatas(Lcom/shenma/tvlauncher/TopicActivity;Ljava/util/ArrayList;)V

    .line 276
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/adapter/TopicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fputmAdapter(Lcom/shenma/tvlauncher/TopicActivity;Lcom/shenma/tvlauncher/adapter/TopicAdapter;)V

    .line 277
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_gl(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetmAdapter(Lcom/shenma/tvlauncher/TopicActivity;)Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 279
    :cond_0
    const-string v0, "joychang"

    const-string/jumbo v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
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

    .line 271
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/TopicActivity$5;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    return-void
.end method
