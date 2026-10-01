.class public Lcom/shenma/tvlauncher/fragment/TopicFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "TopicFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TopicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private id1:I

.field private id2:I

.field private id3:I

.field private id4:I

.field private id5:I

.field private id6:I

.field public imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mvLogs:[Landroid/widget/ImageView;

.field private mvLogsa:[Landroid/widget/ImageView;

.field private mv_fls:[Landroid/widget/FrameLayout;

.field public mv_typeLogs:[Landroid/widget/FrameLayout;

.field private mvbgs:[I

.field private tvs:[Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmvLogs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid1(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid2(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid3(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid4(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid5(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid6(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTypeImage(Lcom/shenma/tvlauncher/fragment/TopicFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setTypeImage(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    .line 64
    const-string/jumbo v0, "topicFragment"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    .line 66
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    .line 67
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    .line 68
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    .line 69
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    .line 70
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 252
    new-instance v0, Lcom/shenma/tvlauncher/fragment/TopicFragment$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Topic;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;)V

    return-object v0
.end method

.method private flyAnimation(I)V
    .locals 7
    .param p1, "paramInt"    # I

    .line 443
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 444
    .local v0, "location":[I
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 445
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 446
    .local v1, "width":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 447
    .local v2, "height":I
    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    .line 448
    .local v3, "x":F
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    .line 449
    .local v4, "y":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "paramInt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "...y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "joychang"

    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mHeight:I

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_0

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mWidth:I

    if-le v5, v6, :cond_0

    .line 451
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_0
    add-int/lit8 v1, v1, 0x1e

    .line 484
    add-int/lit8 v2, v2, 0x3c

    .line 485
    const v3, 0x44ca8000    # 1620.0f

    .line 486
    const v4, 0x43f48000    # 489.0f

    goto :goto_0

    .line 477
    :pswitch_1
    add-int/lit8 v1, v1, 0x28

    .line 478
    add-int/lit8 v2, v2, 0x3c

    .line 479
    const/high16 v3, 0x449f0000    # 1272.0f

    .line 480
    const/high16 v4, 0x43f50000    # 490.0f

    .line 481
    goto :goto_0

    .line 471
    :pswitch_2
    add-int/lit8 v1, v1, 0x1e

    .line 472
    add-int/lit8 v2, v2, 0x17

    .line 473
    const v3, 0x44678000    # 926.0f

    .line 474
    const v4, 0x4429c000    # 679.0f

    .line 475
    goto :goto_0

    .line 465
    :pswitch_3
    add-int/lit8 v1, v1, 0x1e

    .line 466
    add-int/lit8 v2, v2, 0x17

    .line 467
    const v3, 0x441d8000    # 630.0f

    .line 468
    const v4, 0x4429c000    # 679.0f

    .line 469
    goto :goto_0

    .line 459
    :pswitch_4
    add-int/lit8 v1, v1, 0x41

    .line 460
    add-int/lit8 v2, v2, 0x27

    .line 461
    const v3, 0x44434000    # 781.0f

    .line 462
    const v4, 0x43bc8000    # 377.0f

    .line 463
    goto :goto_0

    .line 453
    :pswitch_5
    add-int/lit8 v1, v1, 0x2e

    .line 454
    add-int/lit8 v2, v2, 0x41

    .line 455
    const v3, 0x438e8000    # 285.0f

    .line 456
    const/high16 v4, 0x43f50000    # 490.0f

    .line 457
    nop

    .line 486
    :goto_0
    goto :goto_1

    .line 489
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 521
    :pswitch_6
    add-int/lit8 v1, v1, 0x14

    .line 522
    add-int/lit8 v2, v2, 0x28

    .line 523
    const v3, 0x44844000    # 1058.0f

    .line 524
    const/high16 v4, 0x43980000    # 304.0f

    goto :goto_1

    .line 515
    :pswitch_7
    add-int/lit8 v1, v1, 0x1a

    .line 516
    add-int/lit8 v2, v2, 0x2a

    .line 517
    const v3, 0x444ec000    # 827.0f

    .line 518
    const/high16 v4, 0x43980000    # 304.0f

    .line 519
    goto :goto_1

    .line 509
    :pswitch_8
    add-int/lit8 v1, v1, 0x15

    .line 510
    add-int/lit8 v2, v2, 0xe

    .line 511
    const/high16 v3, 0x44150000    # 596.0f

    .line 512
    const v4, 0x43d78000    # 431.0f

    .line 513
    goto :goto_1

    .line 503
    :pswitch_9
    add-int/lit8 v1, v1, 0x15

    .line 504
    add-int/lit8 v2, v2, 0xe

    .line 505
    const/high16 v3, 0x43c70000    # 398.0f

    .line 506
    const v4, 0x43d78000    # 431.0f

    .line 507
    goto :goto_1

    .line 497
    :pswitch_a
    add-int/lit8 v1, v1, 0x2b

    .line 498
    add-int/lit8 v2, v2, 0x1b

    .line 499
    const v3, 0x43f88000    # 497.0f

    .line 500
    const/high16 v4, 0x43660000    # 230.0f

    .line 501
    goto :goto_1

    .line 491
    :pswitch_b
    add-int/lit8 v1, v1, 0x1a

    .line 492
    add-int/lit8 v2, v2, 0x28

    .line 493
    const/high16 v3, 0x43280000    # 168.0f

    .line 494
    const v4, 0x43988000    # 305.0f

    .line 495
    nop

    .line 528
    :goto_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 529
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private init()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->loadViewLayout()V

    .line 124
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->findViewById()V

    .line 125
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setListener()V

    .line 127
    return-void
.end method

.method private initData()V
    .locals 10

    .line 131
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "BASE_HOST":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 134
    new-instance v3, Lcom/shenma/tvlauncher/fragment/TopicFragment$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/api.php/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/topic"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/shenma/tvlauncher/domain/Topic;

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v8

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v9

    const/4 v5, 0x1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/shenma/tvlauncher/fragment/TopicFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 158
    .local v3, "mtopics":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Topic;>;"
    iget-object v2, v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 159
    return-void
.end method

.method private setTypeImage(ILjava/lang/String;)V
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramUrl"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvbgs:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvbgs:[I

    aget v3, v3, p1

    .line 227
    invoke-static {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 226
    invoke-virtual {v0, p2, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 230
    return-void
.end method

.method private showLoseFocusAinimation(I)V
    .locals 7
    .param p1, "paramInt"    # I

    .line 570
    const v3, 0x3f8ccccd    # 1.1f

    .line 571
    .local v3, "f1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 572
    .local v4, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 573
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 574
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 8
    .param p1, "paramInt"    # I

    .line 537
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 538
    const/high16 v4, 0x3f800000    # 1.0f

    .line 539
    .local v4, "f1":F
    const v5, 0x3f8ccccd    # 1.1f

    .line 540
    .local v5, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 541
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 542
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 560
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 9

    .line 279
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_fl_0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 280
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->topic_fl_1:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 281
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->topic_fl_2:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 282
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v5, Lcom/shenma/tvlauncher/R$id;->topic_fl_3:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 283
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->topic_fl_4:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 284
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v7, Lcom/shenma/tvlauncher/R$id;->topic_fl_5:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 286
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_0:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v2

    .line 287
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_1:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v3

    .line 288
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_2:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v4

    .line 289
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_3:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v5

    .line 290
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_4:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v6

    .line 291
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_iv_5:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v7

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_0:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 294
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_1:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 295
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_2:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 296
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_3:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_4:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_bg_5:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 301
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_0:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_1:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 303
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_2:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 304
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_3:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 305
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_4:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 306
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->topic_i_5:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->top_re_0:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 310
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->top_re_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->top_re_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 312
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->top_re_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    .line 313
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->top_re_4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v6

    .line 314
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->top_re_5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v7

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 267
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    .line 268
    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    .line 270
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    .line 271
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    .line 272
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvbgs:[I

    .line 273
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 274
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 336
    .local v1, "viewId":I
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_0:I

    const-string v3, "TYPE"

    const-string v4, "linkurl"

    const-string v5, "bigpic"

    const-string v6, "describe"

    if-ne v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 338
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    :cond_0
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_1:I

    if-ne v1, v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 346
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 352
    :cond_1
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_2:I

    if-ne v1, v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x2

    if-le v2, v7, :cond_5

    .line 354
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    :cond_2
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_3:I

    if-ne v1, v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x3

    if-le v2, v7, :cond_5

    .line 362
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 368
    :cond_3
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_4:I

    if-ne v1, v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x4

    if-le v2, v7, :cond_5

    .line 370
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :cond_4
    sget v2, Lcom/shenma/tvlauncher/R$id;->topic_iv_5:I

    if-ne v1, v2, :cond_5

    .line 377
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x5

    if-le v2, v7, :cond_5

    .line 378
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    .line 385
    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "topicFragment...onCreate"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "topicFragment...onCreateView"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 85
    if-nez p2, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "Interface_Style":I
    if-nez v0, :cond_1

    .line 93
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_topic:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_topicss:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 97
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 99
    :cond_3
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_topics:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    .line 103
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->init()V

    .line 104
    .end local v0    # "Interface_Style":I
    goto :goto_1

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 107
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-nez v0, :cond_7

    .line 110
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->initData()V

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 602
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 603
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 606
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 394
    .local v0, "viewId":I
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_0:I

    if-ne v0, v1, :cond_0

    .line 395
    const/4 v1, 0x0

    .local v1, "paramInt":I
    goto :goto_0

    .line 396
    .end local v1    # "paramInt":I
    :cond_0
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_1:I

    if-ne v0, v1, :cond_1

    .line 397
    const/4 v1, 0x1

    .restart local v1    # "paramInt":I
    goto :goto_0

    .line 398
    .end local v1    # "paramInt":I
    :cond_1
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_2:I

    if-ne v0, v1, :cond_2

    .line 399
    const/4 v1, 0x2

    .restart local v1    # "paramInt":I
    goto :goto_0

    .line 400
    .end local v1    # "paramInt":I
    :cond_2
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_3:I

    if-ne v0, v1, :cond_3

    .line 401
    const/4 v1, 0x3

    .restart local v1    # "paramInt":I
    goto :goto_0

    .line 402
    .end local v1    # "paramInt":I
    :cond_3
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_4:I

    if-ne v0, v1, :cond_4

    .line 403
    const/4 v1, 0x4

    .restart local v1    # "paramInt":I
    goto :goto_0

    .line 404
    .end local v1    # "paramInt":I
    :cond_4
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_5:I

    if-ne v0, v1, :cond_c

    .line 405
    const/4 v1, 0x5

    .line 410
    .restart local v1    # "paramInt":I
    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 411
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->showOnFocusAnimation(I)V

    .line 412
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :cond_5
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->flyAnimation(I)V

    goto :goto_1

    .line 417
    :cond_6
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->showLoseFocusAinimation(I)V

    .line 421
    :goto_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Interface_Style"

    invoke-static {v3, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 422
    .local v3, "Interface_Style":I
    if-eqz v3, :cond_a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    goto :goto_3

    .line 428
    :cond_7
    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    const/4 v2, 0x3

    if-ne v3, v2, :cond_b

    .line 429
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 430
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    .line 431
    .local v4, "tv":Landroid/widget/TextView;
    const/4 v5, 0x5

    if-eq v2, v5, :cond_9

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 432
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 423
    .end local v2    # "i":I
    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    array-length v5, v4

    :goto_4
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    .line 424
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    .line 423
    .end local v6    # "tv":Landroid/widget/TextView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 436
    :cond_b
    return-void

    .line 407
    .end local v1    # "paramInt":I
    .end local v3    # "Interface_Style":I
    :cond_c
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStart()V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 593
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 594
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 597
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 328
    return-void
.end method
