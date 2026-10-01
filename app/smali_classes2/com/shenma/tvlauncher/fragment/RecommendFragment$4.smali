.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Recommend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

.field final synthetic val$Home_text_shadow:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
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

    .line 303
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iput p2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->val$Home_text_shadow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
    .locals 6
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Recommend;

    .line 305
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Recommend;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;Ljava/util/List;)V

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "paramInt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 309
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Interface_Style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 310
    .local v2, "Interface_Style":I
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 313
    move v0, v1

    goto :goto_2

    .line 311
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x3

    .line 315
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "paramUrl":Ljava/lang/String;
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->val$Home_text_shadow:I

    if-nez v5, :cond_3

    .line 319
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paramUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "joychang"

    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v4, v0, v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$msetTypeImage(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;)V

    .line 308
    .end local v2    # "Interface_Style":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 325
    .end local v1    # "i":I
    .end local v3    # "paramUrl":Ljava/lang/String;
    :cond_4
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

    .line 303
    check-cast p1, Lcom/shenma/tvlauncher/domain/Recommend;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V

    return-void
.end method
