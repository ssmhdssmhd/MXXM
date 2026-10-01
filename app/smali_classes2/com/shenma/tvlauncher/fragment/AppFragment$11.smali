.class Lcom/shenma/tvlauncher/fragment/AppFragment$11;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;->showOnFocusAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
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

    .line 814
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    iput p2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$11;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 827
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetappbgs(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$11;->val$paramInt:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 821
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 817
    return-void
.end method
