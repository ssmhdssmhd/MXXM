.class public Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnFocusAnimListenter"
.end annotation


# instance fields
.field private paramInt:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .param p2, "paramInt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1305
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    iput p2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    .line 1307
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1316
    const-string v0, "joychang"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgetrebgs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "Interface_Style"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1323
    .local v0, "Interface_Style":I
    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1328
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1324
    :cond_1
    :goto_0
    iget v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    if-lt v3, v2, :cond_2

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    const/16 v4, 0x8

    if-gt v3, v4, :cond_2

    .line 1325
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;->paramInt:I

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1330
    :cond_2
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1335
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1312
    return-void
.end method
