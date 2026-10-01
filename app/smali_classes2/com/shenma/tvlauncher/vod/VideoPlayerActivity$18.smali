.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V
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

    .line 1675
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "positionSpeed"    # I
    .param p3, "content"    # Ljava/lang/String;

    .line 1678
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 1679
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1705
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    goto :goto_0

    .line 1702
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1703
    goto :goto_0

    .line 1699
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1700
    goto :goto_0

    .line 1696
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1697
    goto :goto_0

    .line 1693
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1694
    goto :goto_0

    .line 1690
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1691
    goto :goto_0

    .line 1687
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1688
    goto :goto_0

    .line 1684
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1685
    goto :goto_0

    .line 1681
    :pswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1682
    nop

    .line 1708
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
