.class Lcom/shenma/tvlauncher/OtherActivity$6;
.super Ljava/lang/Object;
.source "OtherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/OtherActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/OtherActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/OtherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/OtherActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_bgblur_rl_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "open_blur":Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, "index":I
    const/4 v2, 0x0

    .line 220
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 221
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    move v1, v2

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_bgblur_rl_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_bgblur_rl_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/OtherActivity$6;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_1
    return-void
.end method
