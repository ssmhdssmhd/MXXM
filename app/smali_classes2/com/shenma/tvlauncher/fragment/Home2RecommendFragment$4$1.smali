.class Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;
.super Ljava/lang/Object;
.source "Home2RecommendFragment.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 214
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 218
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 222
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, ""

    .line 224
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 226
    :cond_0
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getThumb()Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;->showItemPic(Ljava/lang/String;)V

    .line 231
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method
