.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setupSeekBars()V
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

    .line 789
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettransparency_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string/jumbo v1, "transparency_seekbar_value"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 794
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_0

    .line 808
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 809
    goto :goto_0

    .line 805
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 806
    goto :goto_0

    .line 802
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 803
    goto :goto_0

    .line 799
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 800
    goto :goto_0

    .line 796
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 797
    nop

    .line 814
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
