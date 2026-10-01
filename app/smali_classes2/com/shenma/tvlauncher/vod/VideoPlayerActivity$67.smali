.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3886
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

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

    .line 3891
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 3949
    invoke-static {}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$sfgetmenutype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4141
    return-void

    .line 3952
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_2

    .line 3953
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisNext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)V

    .line 3954
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisSwitch(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 3955
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputNumbermax(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3957
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3958
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputPlayersNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3960
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 3961
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3962
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_0

    .line 3963
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3966
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3969
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3970
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mshowController(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 3972
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3974
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v2, p3, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 3975
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p3, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    rem-int/lit8 v2, p3, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 3976
    sput p3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3977
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 3978
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
