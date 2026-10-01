.class Lcom/shenma/tvlauncher/AppManageActivity$4;
.super Ljava/lang/Object;
.source "AppManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/AppManageActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AppManageActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AppManageActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fputmIndex(Lcom/shenma/tvlauncher/AppManageActivity;I)V

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fputlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v1, 0x3eb

    :goto_0
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fputisVis(Lcom/shenma/tvlauncher/AppManageActivity;I)V

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$4;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetisVis(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mshowMenu(Lcom/shenma/tvlauncher/AppManageActivity;I)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method
