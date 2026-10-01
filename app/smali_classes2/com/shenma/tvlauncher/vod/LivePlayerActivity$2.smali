.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    sparse-switch v0, :sswitch_data_0

    .line 312
    return-void

    .line 308
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetll_epg1(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetll_epg2(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    return-void

    .line 305
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetll_forfend(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    return-void

    .line 266
    :sswitch_2
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "position":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 269
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 270
    sget-object v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 272
    const/4 v3, -0x1

    .line 273
    .local v3, "maxUrlValueSoFar":I
    const/4 v4, -0x1

    .line 275
    .local v4, "maxUrlIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 277
    :try_start_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v6, v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .local v6, "currentUrlValue":I
    add-int/lit8 v7, v0, 0x1

    if-gt v6, v7, :cond_0

    if-le v6, v3, :cond_0

    .line 281
    move v3, v6

    .line 282
    move v4, v5

    goto :goto_1

    .line 283
    :cond_0
    add-int/lit8 v7, v0, 0x1

    if-le v6, v7, :cond_1

    .line 284
    goto :goto_3

    .line 288
    .end local v6    # "currentUrlValue":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 286
    :catch_0
    move-exception v6

    .line 287
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 275
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 290
    .end local v5    # "i":I
    :cond_2
    :goto_3
    if-eq v4, v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 292
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 296
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    .end local v0    # "position":I
    .end local v3    # "maxUrlValueSoFar":I
    .end local v4    # "maxUrlIndex":I
    :cond_4
    sput-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmProgramNum(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyChanne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 257
    :sswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mvodlogoloadImg(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 259
    nop

    .line 314
    return-void

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->sm_logo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    return-void

    .line 254
    :sswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mgetVodGongGao(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 255
    return-void

    .line 251
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_notice_root(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    return-void

    .line 244
    :sswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setSelected(Z)V

    .line 245
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 246
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 247
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const-string v1, "Vod_Notice_end_time"

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "Vod_Notice_end_time":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x25

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    return-void

    .line 241
    .end local v0    # "Vod_Notice_end_time":I
    :sswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mResetMovieTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 242
    return-void

    .line 238
    :sswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 239
    return-void

    .line 235
    :sswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 236
    return-void

    .line 231
    :sswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mendSpeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 233
    return-void

    .line 227
    :sswitch_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mstartSpeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 229
    return-void

    .line 223
    :sswitch_c
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mPrepareVodData(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 224
    return-void

    .line 219
    :sswitch_d
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenus()V

    .line 220
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V

    .line 221
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x13 -> :sswitch_9
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x24 -> :sswitch_6
        0x25 -> :sswitch_5
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x28 -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method
