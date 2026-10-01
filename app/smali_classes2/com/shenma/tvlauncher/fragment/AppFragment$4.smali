.class Lcom/shenma/tvlauncher/fragment/AppFragment$4;
.super Landroid/os/Handler;
.source "AppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "drawable":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetimageLoader(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetapp_iv_0(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->app_iv_0:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->app_iv_0:I

    invoke-static {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 133
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetapp_iv_0(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 135
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    .line 136
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    .line 142
    .end local v0    # "drawable":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
