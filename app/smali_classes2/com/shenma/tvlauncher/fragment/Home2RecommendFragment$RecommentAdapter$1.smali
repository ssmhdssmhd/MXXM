.class Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;
.super Ljava/lang/Object;
.source "Home2RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;

.field final synthetic val$item:Lcom/shenma/tvlauncher/domain/RecommendInfo;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;
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

    .line 559
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;

    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;->val$item:Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .line 562
    const-wide/16 v0, 0xc8

    if-eqz p2, :cond_0

    .line 564
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 565
    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 566
    invoke-virtual {v2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 567
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->-$$Nest$fgetonItemFocusedListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->-$$Nest$fgetonItemFocusedListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;->val$item:Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;->onItemFocused(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 573
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 574
    invoke-virtual {v2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 576
    :cond_1
    :goto_0
    return-void
.end method
