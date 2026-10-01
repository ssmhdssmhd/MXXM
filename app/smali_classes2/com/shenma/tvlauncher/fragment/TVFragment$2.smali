.class Lcom/shenma/tvlauncher/fragment/TVFragment$2;
.super Ljava/lang/Object;
.source "TVFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/TVFragment;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/TVFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->tv_iv_livetv:I

    if-ne v1, v2, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->-$$Nest$mshowOnFocusAnimation(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V

    .line 131
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->-$$Nest$mshowLoseFocusAinimation(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V

    .line 138
    :cond_2
    :goto_0
    return-void
.end method
