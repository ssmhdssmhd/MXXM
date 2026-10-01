.class Lcom/shenma/tvlauncher/AppManageActivity$5;
.super Ljava/lang/Object;
.source "AppManageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/AppManageActivity;->onCreateMenu()V
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

    .line 321
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$5;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 324
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 325
    return v2

    .line 327
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$5;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/AppManageActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 332
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
