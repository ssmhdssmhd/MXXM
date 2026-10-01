.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showInputDialog()V
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

    .line 2861
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 2864
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdanmuInput(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2865
    .local v0, "inputText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2867
    const/4 v1, 0x1

    .line 2868
    .local v1, "type":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v2, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->createDanmaku(I)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 2869
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v2, :cond_0

    return-void

    .line 2872
    :cond_0
    iput-object v0, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 2874
    const/high16 v3, -0x10000

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 2876
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_22:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 2878
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v3

    invoke-virtual {v3}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 2880
    const/4 v3, 0x5

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    .line 2881
    const/4 v3, 0x1

    iput-byte v3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    .line 2884
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2885
    return-void

    .line 2887
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 2888
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/shenma/tvlauncher/Api;->MAIN_JUHETV_URL:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 2889
    .local v4, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msendDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2890
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdanmuInputDialog(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 2891
    .end local v1    # "type":I
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_0

    .line 2892
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdanmuInput(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "\u8bf7\u8f93\u5165\u5185\u5bb9"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2894
    :goto_0
    return-void
.end method
