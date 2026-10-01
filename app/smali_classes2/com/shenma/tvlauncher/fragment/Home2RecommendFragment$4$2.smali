.class Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;
.super Ljava/lang/Object;
.source "Home2RecommendFragment.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;


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

    .line 233
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFocused(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 237
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    const-string v0, ""

    .line 239
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;->showItemPic(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetmovieTitle(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgethome2RecommentMovieNum(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetmovieDetail(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method
