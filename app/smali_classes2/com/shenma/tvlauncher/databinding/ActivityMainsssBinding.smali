.class public final Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;
.super Ljava/lang/Object;
.source "ActivityMainsssBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flMain:Landroid/widget/FrameLayout;

.field public final gonggao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field public final gonggaoRoot:Landroid/widget/LinearLayout;

.field public final homeClear:Landroid/widget/LinearLayout;

.field public final homeCollect:Landroid/widget/LinearLayout;

.field public final homePlaySet:Landroid/widget/LinearLayout;

.field public final homeTopRecords:Landroid/widget/LinearLayout;

.field public final homeTopSearchs:Landroid/widget/LinearLayout;

.field public final homeUser:Landroid/widget/LinearLayout;

.field public final homeWallpaper:Landroid/widget/LinearLayout;

.field public final ivMainLine:Landroid/widget/ImageView;

.field public final ivNetState:Landroid/widget/ImageView;

.field public final ivTitile:Landroid/widget/ImageView;

.field public final llRb:Landroid/widget/LinearLayout;

.field public final logo:Landroid/widget/ImageView;

.field public final main:Landroid/widget/LinearLayout;

.field public final mains:Landroid/widget/LinearLayout;

.field public final notice:Landroid/widget/RelativeLayout;

.field public final noticeButton:Landroid/widget/TextView;

.field public final noticeIamgeUrl:Landroid/widget/ImageView;

.field public final pager:Landroidx/viewpager/widget/ViewPager;

.field public final rbRecommend:Landroid/widget/RadioButton;

.field public final rbSettings:Landroid/widget/RadioButton;

.field public final rbVideoType:Landroid/widget/RadioButton;

.field public final rgVideoTypeBottom:Landroid/widget/RadioGroup;

.field public final rgVideoTypeBottoms:Landroid/widget/LinearLayout;

.field public final rlBg:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final timeColon:Landroid/widget/TextView;

.field public final titleGroup:Landroid/widget/RadioGroup;

.field public final tvMainDate:Landroid/widget/TextView;

.field public final tvMainTime:Landroid/widget/TextView;

.field public final tvUpdateMsg:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/viewpager/widget/ViewPager;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "flMain"    # Landroid/widget/FrameLayout;
    .param p3, "gonggao"    # Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .param p4, "gonggaoRoot"    # Landroid/widget/LinearLayout;
    .param p5, "homeClear"    # Landroid/widget/LinearLayout;
    .param p6, "homeCollect"    # Landroid/widget/LinearLayout;
    .param p7, "homePlaySet"    # Landroid/widget/LinearLayout;
    .param p8, "homeTopRecords"    # Landroid/widget/LinearLayout;
    .param p9, "homeTopSearchs"    # Landroid/widget/LinearLayout;
    .param p10, "homeUser"    # Landroid/widget/LinearLayout;
    .param p11, "homeWallpaper"    # Landroid/widget/LinearLayout;
    .param p12, "ivMainLine"    # Landroid/widget/ImageView;
    .param p13, "ivNetState"    # Landroid/widget/ImageView;
    .param p14, "ivTitile"    # Landroid/widget/ImageView;
    .param p15, "llRb"    # Landroid/widget/LinearLayout;
    .param p16, "logo"    # Landroid/widget/ImageView;
    .param p17, "main"    # Landroid/widget/LinearLayout;
    .param p18, "mains"    # Landroid/widget/LinearLayout;
    .param p19, "notice"    # Landroid/widget/RelativeLayout;
    .param p20, "noticeButton"    # Landroid/widget/TextView;
    .param p21, "noticeIamgeUrl"    # Landroid/widget/ImageView;
    .param p22, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p23, "rbRecommend"    # Landroid/widget/RadioButton;
    .param p24, "rbSettings"    # Landroid/widget/RadioButton;
    .param p25, "rbVideoType"    # Landroid/widget/RadioButton;
    .param p26, "rgVideoTypeBottom"    # Landroid/widget/RadioGroup;
    .param p27, "rgVideoTypeBottoms"    # Landroid/widget/LinearLayout;
    .param p28, "rlBg"    # Landroid/widget/RelativeLayout;
    .param p29, "timeColon"    # Landroid/widget/TextView;
    .param p30, "titleGroup"    # Landroid/widget/RadioGroup;
    .param p31, "tvMainDate"    # Landroid/widget/TextView;
    .param p32, "tvMainTime"    # Landroid/widget/TextView;
    .param p33, "tvUpdateMsg"    # Landroid/widget/TextView;

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rootView:Landroid/widget/FrameLayout;

    .line 140
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->flMain:Landroid/widget/FrameLayout;

    .line 141
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->gonggao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 142
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->gonggaoRoot:Landroid/widget/LinearLayout;

    .line 143
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeClear:Landroid/widget/LinearLayout;

    .line 144
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeCollect:Landroid/widget/LinearLayout;

    .line 145
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homePlaySet:Landroid/widget/LinearLayout;

    .line 146
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeTopRecords:Landroid/widget/LinearLayout;

    .line 147
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeTopSearchs:Landroid/widget/LinearLayout;

    .line 148
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeUser:Landroid/widget/LinearLayout;

    .line 149
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->homeWallpaper:Landroid/widget/LinearLayout;

    .line 150
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->ivMainLine:Landroid/widget/ImageView;

    .line 151
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->ivNetState:Landroid/widget/ImageView;

    .line 152
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->ivTitile:Landroid/widget/ImageView;

    .line 153
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->llRb:Landroid/widget/LinearLayout;

    .line 154
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->logo:Landroid/widget/ImageView;

    .line 155
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->main:Landroid/widget/LinearLayout;

    .line 156
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->mains:Landroid/widget/LinearLayout;

    .line 157
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->notice:Landroid/widget/RelativeLayout;

    .line 158
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->noticeButton:Landroid/widget/TextView;

    .line 159
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->noticeIamgeUrl:Landroid/widget/ImageView;

    .line 160
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 161
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rbRecommend:Landroid/widget/RadioButton;

    .line 162
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rbSettings:Landroid/widget/RadioButton;

    .line 163
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rbVideoType:Landroid/widget/RadioButton;

    .line 164
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rgVideoTypeBottom:Landroid/widget/RadioGroup;

    .line 165
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rgVideoTypeBottoms:Landroid/widget/LinearLayout;

    .line 166
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rlBg:Landroid/widget/RelativeLayout;

    .line 167
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->timeColon:Landroid/widget/TextView;

    .line 168
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->titleGroup:Landroid/widget/RadioGroup;

    .line 169
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->tvMainDate:Landroid/widget/TextView;

    .line 170
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->tvMainTime:Landroid/widget/TextView;

    .line 171
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->tvUpdateMsg:Landroid/widget/TextView;

    .line 172
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;
    .locals 37
    .param p0, "rootView"    # Landroid/view/View;

    .line 201
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->fl_main:I

    .line 202
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    .line 203
    .local v5, "flMain":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_1f

    .line 207
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 209
    .local v6, "gonggao":Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    if-eqz v6, :cond_1e

    .line 213
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao_root:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    .line 215
    .local v7, "gonggaoRoot":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_1d

    .line 219
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_clear:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 221
    .local v8, "homeClear":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_1c

    .line 225
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_collect:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 227
    .local v9, "homeCollect":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_1b

    .line 231
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_play_set:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    .line 233
    .local v10, "homePlaySet":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_1a

    .line 237
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_top_records:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    .line 239
    .local v11, "homeTopRecords":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_19

    .line 243
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_top_searchs:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    .line 245
    .local v12, "homeTopSearchs":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_18

    .line 249
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_user:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    .line 251
    .local v13, "homeUser":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_17

    .line 255
    sget v1, Lcom/shenma/tvlauncher/R$id;->home_wallpaper:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    .line 257
    .local v14, "homeWallpaper":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_16

    .line 261
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_main_line:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    .line 263
    .local v15, "ivMainLine":Landroid/widget/ImageView;
    if-eqz v15, :cond_15

    .line 267
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_net_state:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    .line 269
    .local v16, "ivNetState":Landroid/widget/ImageView;
    if-eqz v16, :cond_14

    .line 273
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_titile:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    .line 275
    .local v17, "ivTitile":Landroid/widget/ImageView;
    if-eqz v17, :cond_13

    .line 279
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_rb:I

    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    .line 281
    .local v18, "llRb":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_12

    .line 285
    sget v1, Lcom/shenma/tvlauncher/R$id;->logo:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    .line 287
    .local v19, "logo":Landroid/widget/ImageView;
    if-eqz v19, :cond_11

    .line 291
    sget v1, Lcom/shenma/tvlauncher/R$id;->main:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    .line 293
    .local v20, "main":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_10

    .line 297
    sget v1, Lcom/shenma/tvlauncher/R$id;->mains:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    .line 299
    .local v21, "mains":Landroid/widget/LinearLayout;
    if-eqz v21, :cond_f

    .line 303
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice:I

    .line 304
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 305
    .local v22, "notice":Landroid/widget/RelativeLayout;
    if-eqz v22, :cond_e

    .line 309
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice_button:I

    .line 310
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    .line 311
    .local v23, "noticeButton":Landroid/widget/TextView;
    if-eqz v23, :cond_d

    .line 315
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice_iamge_url:I

    .line 316
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/ImageView;

    .line 317
    .local v24, "noticeIamgeUrl":Landroid/widget/ImageView;
    if-eqz v24, :cond_c

    .line 321
    sget v1, Lcom/shenma/tvlauncher/R$id;->pager:I

    .line 322
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/viewpager/widget/ViewPager;

    .line 323
    .local v25, "pager":Landroidx/viewpager/widget/ViewPager;
    if-eqz v25, :cond_b

    .line 327
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_recommend:I

    .line 328
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/RadioButton;

    .line 329
    .local v26, "rbRecommend":Landroid/widget/RadioButton;
    if-eqz v26, :cond_a

    .line 333
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_settings:I

    .line 334
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/RadioButton;

    .line 335
    .local v27, "rbSettings":Landroid/widget/RadioButton;
    if-eqz v27, :cond_9

    .line 339
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_video_type:I

    .line 340
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/RadioButton;

    .line 341
    .local v28, "rbVideoType":Landroid/widget/RadioButton;
    if-eqz v28, :cond_8

    .line 345
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_type_bottom:I

    .line 346
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/RadioGroup;

    .line 347
    .local v29, "rgVideoTypeBottom":Landroid/widget/RadioGroup;
    if-eqz v29, :cond_7

    .line 351
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_type_bottoms:I

    .line 352
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/LinearLayout;

    .line 353
    .local v30, "rgVideoTypeBottoms":Landroid/widget/LinearLayout;
    if-eqz v30, :cond_6

    .line 357
    sget v1, Lcom/shenma/tvlauncher/R$id;->rl_bg:I

    .line 358
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/RelativeLayout;

    .line 359
    .local v31, "rlBg":Landroid/widget/RelativeLayout;
    if-eqz v31, :cond_5

    .line 363
    sget v1, Lcom/shenma/tvlauncher/R$id;->time_colon:I

    .line 364
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/TextView;

    .line 365
    .local v32, "timeColon":Landroid/widget/TextView;
    if-eqz v32, :cond_4

    .line 369
    sget v1, Lcom/shenma/tvlauncher/R$id;->title_group:I

    .line 370
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/RadioGroup;

    .line 371
    .local v33, "titleGroup":Landroid/widget/RadioGroup;
    if-eqz v33, :cond_3

    .line 375
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_date:I

    .line 376
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/TextView;

    .line 377
    .local v34, "tvMainDate":Landroid/widget/TextView;
    if-eqz v34, :cond_2

    .line 381
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_time:I

    .line 382
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/TextView;

    .line 383
    .local v35, "tvMainTime":Landroid/widget/TextView;
    if-eqz v35, :cond_1

    .line 387
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_update_msg:I

    .line 388
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/TextView;

    .line 389
    .local v36, "tvUpdateMsg":Landroid/widget/TextView;
    if-eqz v36, :cond_0

    .line 393
    new-instance v3, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v36}, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/viewpager/widget/ViewPager;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 390
    :cond_0
    goto :goto_0

    .line 384
    .end local v36    # "tvUpdateMsg":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 378
    .end local v35    # "tvMainTime":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 372
    .end local v34    # "tvMainDate":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 366
    .end local v33    # "titleGroup":Landroid/widget/RadioGroup;
    :cond_4
    goto :goto_0

    .line 360
    .end local v32    # "timeColon":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 354
    .end local v31    # "rlBg":Landroid/widget/RelativeLayout;
    :cond_6
    goto :goto_0

    .line 348
    .end local v30    # "rgVideoTypeBottoms":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 342
    .end local v29    # "rgVideoTypeBottom":Landroid/widget/RadioGroup;
    :cond_8
    goto :goto_0

    .line 336
    .end local v28    # "rbVideoType":Landroid/widget/RadioButton;
    :cond_9
    goto :goto_0

    .line 330
    .end local v27    # "rbSettings":Landroid/widget/RadioButton;
    :cond_a
    goto :goto_0

    .line 324
    .end local v26    # "rbRecommend":Landroid/widget/RadioButton;
    :cond_b
    goto :goto_0

    .line 318
    .end local v25    # "pager":Landroidx/viewpager/widget/ViewPager;
    :cond_c
    goto :goto_0

    .line 312
    .end local v24    # "noticeIamgeUrl":Landroid/widget/ImageView;
    :cond_d
    goto :goto_0

    .line 306
    .end local v23    # "noticeButton":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 300
    .end local v22    # "notice":Landroid/widget/RelativeLayout;
    :cond_f
    goto :goto_0

    .line 294
    .end local v21    # "mains":Landroid/widget/LinearLayout;
    :cond_10
    goto :goto_0

    .line 288
    .end local v20    # "main":Landroid/widget/LinearLayout;
    :cond_11
    goto :goto_0

    .line 282
    .end local v19    # "logo":Landroid/widget/ImageView;
    :cond_12
    goto :goto_0

    .line 276
    .end local v18    # "llRb":Landroid/widget/LinearLayout;
    :cond_13
    goto :goto_0

    .line 270
    .end local v17    # "ivTitile":Landroid/widget/ImageView;
    :cond_14
    goto :goto_0

    .line 264
    .end local v16    # "ivNetState":Landroid/widget/ImageView;
    :cond_15
    goto :goto_0

    .line 258
    .end local v15    # "ivMainLine":Landroid/widget/ImageView;
    :cond_16
    goto :goto_0

    .line 252
    .end local v14    # "homeWallpaper":Landroid/widget/LinearLayout;
    :cond_17
    goto :goto_0

    .line 246
    .end local v13    # "homeUser":Landroid/widget/LinearLayout;
    :cond_18
    goto :goto_0

    .line 240
    .end local v12    # "homeTopSearchs":Landroid/widget/LinearLayout;
    :cond_19
    goto :goto_0

    .line 234
    .end local v11    # "homeTopRecords":Landroid/widget/LinearLayout;
    :cond_1a
    goto :goto_0

    .line 228
    .end local v10    # "homePlaySet":Landroid/widget/LinearLayout;
    :cond_1b
    goto :goto_0

    .line 222
    .end local v9    # "homeCollect":Landroid/widget/LinearLayout;
    :cond_1c
    goto :goto_0

    .line 216
    .end local v8    # "homeClear":Landroid/widget/LinearLayout;
    :cond_1d
    goto :goto_0

    .line 210
    .end local v7    # "gonggaoRoot":Landroid/widget/LinearLayout;
    :cond_1e
    goto :goto_0

    .line 204
    .end local v6    # "gonggao":Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    :cond_1f
    nop

    .line 400
    .end local v5    # "flMain":Landroid/widget/FrameLayout;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 188
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_mainsss:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ActivityMainsssBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
