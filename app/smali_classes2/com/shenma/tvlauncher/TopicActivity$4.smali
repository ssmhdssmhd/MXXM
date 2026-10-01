.class Lcom/shenma/tvlauncher/TopicActivity$4;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 242
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$4;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 249
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$4;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$4;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1, p3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/TopicActivity;I)V

    goto :goto_0

    .line 252
    :cond_0
    if-nez v0, :cond_1

    .line 253
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$4;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$4;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/TopicActivity;->overridePendingTransition(II)V

    .line 257
    :cond_1
    :goto_0
    return-void
.end method
