.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2505
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2507
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2508
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2510
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2512
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2513
    goto :goto_0

    .line 2516
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V

    .line 2517
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V

    .line 2518
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2523
    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
