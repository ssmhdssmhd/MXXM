.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1634
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1639
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1640
    return v1

    .line 1642
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1644
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 1646
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 1647
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1653
    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
