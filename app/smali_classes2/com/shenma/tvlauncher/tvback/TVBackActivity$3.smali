.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "postion"    # I
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

    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisFull(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mshowController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 347
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 350
    return-void

    .line 352
    :cond_1
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmchannellist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneUrl()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "dataUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mloadDataFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V

    .line 354
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmchannellist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputtvbackname(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;)V

    .line 355
    return-void
.end method
