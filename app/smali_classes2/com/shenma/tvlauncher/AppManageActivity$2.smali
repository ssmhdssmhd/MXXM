.class Lcom/shenma/tvlauncher/AppManageActivity$2;
.super Landroid/os/Handler;
.source "AppManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/AppManageActivity;
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

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmIndex(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 90
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmy_app_manage_gv(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fputlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$2;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3ea

    goto :goto_1

    :cond_3
    const/16 v1, 0x3eb

    :goto_1
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fputisVis(Lcom/shenma/tvlauncher/AppManageActivity;I)V

    .line 100
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
