.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
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

    .line 281
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, ""

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 375
    return-void

    .line 359
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetwebView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 360
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetwebView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 361
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputjxurls(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 362
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputFburl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmEventHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 373
    :cond_1
    return-void

    .line 351
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mvodlogoloadImg(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 353
    nop

    .line 377
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->sm_logo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    return-void

    .line 348
    :sswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mgetVodGongGao(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 349
    return-void

    .line 345
    :sswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_notice_root(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    return-void

    .line 338
    :sswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setSelected(Z)V

    .line 339
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 340
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 341
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-string v1, "Vod_Notice_end_time"

    invoke-static {v0, v1, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 342
    .local v0, "Vod_Notice_end_time":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x25

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    return-void

    .line 333
    .end local v0    # "Vod_Notice_end_time":I
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Try_to_see_expired:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetTrytime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->end:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 336
    return-void

    .line 329
    :sswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mResetMovieTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 330
    return-void

    .line 326
    :sswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 327
    return-void

    .line 323
    :sswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 324
    return-void

    .line 319
    :sswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mendSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 321
    return-void

    .line 310
    :sswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mstartSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 316
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputptpositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 317
    return-void

    .line 307
    :sswitch_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mPrepareVodData(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 308
    return-void

    .line 298
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    .line 299
    .local v0, "vodurl":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmVideoSource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)V

    .line 301
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmEventHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmEventHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->removeMessages(I)V

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmEventHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 305
    return-void

    .line 293
    .end local v0    # "vodurl":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    :sswitch_d
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onCreateMenu()V

    .line 294
    return-void

    .line 285
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-string/jumbo v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u91cd\u8fde\u7f51\u7edc\u540e\u91cd\u8bd5\uff01"

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 291
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x12 -> :sswitch_9
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x18 -> :sswitch_6
        0x23 -> :sswitch_5
        0x24 -> :sswitch_4
        0x25 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method
