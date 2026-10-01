.class Lcom/shenma/tvlauncher/ClearActivity$5;
.super Ljava/lang/Object;
.source "ClearActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ClearActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/ClearActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ClearActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ClearActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->-$$Nest$fgetall_cache_clear_tv(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->-$$Nest$fgetall_cache_clear_tv(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :goto_0
    return-void
.end method
