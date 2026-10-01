.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;
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

    .line 816
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdanmu_velocity_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "danmu_velocity_seekbar_value"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 821
    const/high16 v0, 0x3f800000    # 1.0f

    .line 822
    .local v0, "danmuSpeed":F
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 836
    :pswitch_0
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    .line 833
    :pswitch_1
    const v0, 0x3f666666    # 0.9f

    .line 834
    goto :goto_0

    .line 830
    :pswitch_2
    const v0, 0x3f99999a    # 1.2f

    .line 831
    goto :goto_0

    .line 827
    :pswitch_3
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 828
    goto :goto_0

    .line 824
    :pswitch_4
    const/high16 v0, 0x40000000    # 2.0f

    .line 825
    nop

    .line 839
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 840
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
