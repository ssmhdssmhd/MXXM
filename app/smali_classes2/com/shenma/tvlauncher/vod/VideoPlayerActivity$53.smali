.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setvvListener()V
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

    .line 2981
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 25
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 2987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2989
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3039
    .local v2, "dpi":I
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3050
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3052
    .local v4, "specAspectRatio":F
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v5

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v6

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3053
    .local v5, "displayAspectRatio":F
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v6

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoSarNum()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v6

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getmVideoSarDen()I

    move-result v6

    if-lez v6, :cond_0

    .line 3054
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v6

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoSarNum()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v7

    invoke-virtual {v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getmVideoSarDen()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 3055
    :cond_0
    cmpl-float v8, v5, v4

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 3056
    .local v8, "shouldBeWider":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3057
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v9

    .line 3058
    .local v9, "width":I
    int-to-float v10, v9

    div-float/2addr v10, v5

    float-to-int v10, v10

    .local v10, "height":I
    goto :goto_1

    .line 3060
    .end local v9    # "width":I
    .end local v10    # "height":I
    :cond_2
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v10

    .line 3061
    .restart local v10    # "height":I
    int-to-float v9, v10

    mul-float v9, v9, v5

    float-to-int v9, v9

    .line 3064
    .restart local v9    # "width":I
    :goto_1
    int-to-double v11, v9

    int-to-double v13, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    .line 3070
    .local v11, "pmzhb":D
    iget-object v13, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v13}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v13

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    .line 3074
    .local v13, "zdspgd":D
    iget-object v15, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v15}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v15

    int-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v13

    double-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    .line 3079
    .local v6, "zdsd":I
    if-gtz v6, :cond_3

    .line 3080
    const/4 v6, 0x0

    .line 3083
    :cond_3
    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v7

    move v15, v4

    move/from16 v17, v5

    .end local v4    # "specAspectRatio":F
    .end local v5    # "displayAspectRatio":F
    .local v15, "specAspectRatio":F
    .local v17, "displayAspectRatio":F
    int-to-double v4, v7

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v7

    move/from16 v18, v6

    .end local v6    # "zdsd":I
    .local v18, "zdsd":I
    int-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 3085
    .local v4, "scaledVideoWidth":D
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v6

    double-to-int v7, v4

    sub-int/2addr v6, v7

    .line 3087
    .local v6, "extraSpace":I
    div-int/lit8 v7, v6, 0x2

    .line 3089
    .local v7, "blackBarSize":I
    if-gtz v7, :cond_4

    .line 3090
    const/4 v7, 0x0

    .line 3114
    :cond_4
    move-object/from16 v19, v1

    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v19, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetEwmWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    int-to-float v1, v1

    move-wide/from16 v20, v4

    .end local v4    # "scaledVideoWidth":D
    .local v20, "scaledVideoWidth":D
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v7

    .line 3115
    .local v1, "ewmwidth":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetEwmHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "extraSpace":I
    .local v22, "extraSpace":I
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    add-int v6, v18, v4

    .line 3116
    .local v6, "ewmheight":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3117
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3119
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MOVIE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3121
    const/16 v4, 0xf0

    if-le v2, v4, :cond_5

    .line 3122
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMoviesize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "ewmwidth":I
    .local v24, "ewmwidth":I
    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v1, v18, v1

    .local v1, "MoviesizeInPx":I
    goto :goto_2

    .line 3124
    .end local v24    # "ewmwidth":I
    .local v1, "ewmwidth":I
    :cond_5
    move/from16 v24, v1

    .end local v1    # "ewmwidth":I
    .restart local v24    # "ewmwidth":I
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMoviesize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int v1, v18, v1

    .line 3129
    .local v1, "MoviesizeInPx":I
    :goto_2
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_up(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3130
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_down(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3132
    .end local v1    # "MoviesizeInPx":I
    goto :goto_4

    .line 3119
    .end local v24    # "ewmwidth":I
    .local v1, "ewmwidth":I
    :cond_6
    move/from16 v24, v1

    .line 3134
    .end local v1    # "ewmwidth":I
    .restart local v24    # "ewmwidth":I
    const/16 v4, 0xf0

    if-le v2, v4, :cond_7

    .line 3135
    div-int/lit16 v1, v2, 0xf0

    .line 3136
    .local v1, "s":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetTvplaysize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "s":I
    .local v23, "s":I
    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v1, v18, v1

    .line 3137
    .end local v23    # "s":I
    .local v1, "TvplaysizeInPx":I
    goto :goto_3

    .line 3138
    .end local v1    # "TvplaysizeInPx":I
    :cond_7
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetTvplaysize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int v1, v18, v1

    .line 3143
    .restart local v1    # "TvplaysizeInPx":I
    :goto_3
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_up(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3144
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_down(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3147
    .end local v1    # "TvplaysizeInPx":I
    :goto_4
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    .line 3148
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_down(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->button_normal_bga:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3149
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_up(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->button_normal_bga:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3150
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->button_normal_bga:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3234
    :cond_8
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3237
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAuto_Source(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_a

    .line 3238
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vod_caton_check:I

    if-ne v1, v5, :cond_9

    .line 3240
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetseizing_time(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    move/from16 v16, v2

    move-object/from16 v23, v3

    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .local v16, "dpi":I
    .local v23, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-long v2, v5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 3238
    .end local v16    # "dpi":I
    .end local v23    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "dpi":I
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    move/from16 v16, v2

    move-object/from16 v23, v3

    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "dpi":I
    .restart local v23    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_5

    .line 3237
    .end local v16    # "dpi":I
    .end local v23    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "dpi":I
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    move/from16 v16, v2

    move-object/from16 v23, v3

    .line 3244
    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "dpi":I
    .restart local v23    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_5
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputseizings(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3247
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetseekBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 3249
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Vod_Notice_starting_time:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x26

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3251
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    if-lez v1, :cond_c

    .line 3252
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3253
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos2(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_6

    .line 3255
    :cond_b
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos2(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3256
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_6

    .line 3251
    :cond_c
    const/4 v2, 0x0

    .line 3260
    :goto_6
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)V

    .line 3261
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputNumbermax(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 3263
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3264
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3265
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3266
    return-void
.end method
