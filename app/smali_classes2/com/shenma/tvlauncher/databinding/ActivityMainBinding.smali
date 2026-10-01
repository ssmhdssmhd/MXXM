.class public final Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flMain:Landroid/widget/FrameLayout;

.field public final gonggao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field public final gonggaoRoot:Landroid/widget/LinearLayout;

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
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/viewpager/widget/ViewPager;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "flMain"    # Landroid/widget/FrameLayout;
    .param p3, "gonggao"    # Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .param p4, "gonggaoRoot"    # Landroid/widget/LinearLayout;
    .param p5, "ivMainLine"    # Landroid/widget/ImageView;
    .param p6, "ivNetState"    # Landroid/widget/ImageView;
    .param p7, "ivTitile"    # Landroid/widget/ImageView;
    .param p8, "llRb"    # Landroid/widget/LinearLayout;
    .param p9, "logo"    # Landroid/widget/ImageView;
    .param p10, "main"    # Landroid/widget/LinearLayout;
    .param p11, "mains"    # Landroid/widget/LinearLayout;
    .param p12, "notice"    # Landroid/widget/RelativeLayout;
    .param p13, "noticeButton"    # Landroid/widget/TextView;
    .param p14, "noticeIamgeUrl"    # Landroid/widget/ImageView;
    .param p15, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p16, "rbRecommend"    # Landroid/widget/RadioButton;
    .param p17, "rbSettings"    # Landroid/widget/RadioButton;
    .param p18, "rgVideoTypeBottom"    # Landroid/widget/RadioGroup;
    .param p19, "rgVideoTypeBottoms"    # Landroid/widget/LinearLayout;
    .param p20, "rlBg"    # Landroid/widget/RelativeLayout;
    .param p21, "timeColon"    # Landroid/widget/TextView;
    .param p22, "titleGroup"    # Landroid/widget/RadioGroup;
    .param p23, "tvMainDate"    # Landroid/widget/TextView;
    .param p24, "tvMainTime"    # Landroid/widget/TextView;
    .param p25, "tvUpdateMsg"    # Landroid/widget/TextView;

    .line 110
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    .line 112
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->flMain:Landroid/widget/FrameLayout;

    .line 113
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->gonggao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 114
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->gonggaoRoot:Landroid/widget/LinearLayout;

    .line 115
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->ivMainLine:Landroid/widget/ImageView;

    .line 116
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->ivNetState:Landroid/widget/ImageView;

    .line 117
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->ivTitile:Landroid/widget/ImageView;

    .line 118
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->llRb:Landroid/widget/LinearLayout;

    .line 119
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->logo:Landroid/widget/ImageView;

    .line 120
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->main:Landroid/widget/LinearLayout;

    .line 121
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->mains:Landroid/widget/LinearLayout;

    .line 122
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->notice:Landroid/widget/RelativeLayout;

    .line 123
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->noticeButton:Landroid/widget/TextView;

    .line 124
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->noticeIamgeUrl:Landroid/widget/ImageView;

    .line 125
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 126
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rbRecommend:Landroid/widget/RadioButton;

    .line 127
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rbSettings:Landroid/widget/RadioButton;

    .line 128
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rgVideoTypeBottom:Landroid/widget/RadioGroup;

    .line 129
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rgVideoTypeBottoms:Landroid/widget/LinearLayout;

    .line 130
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rlBg:Landroid/widget/RelativeLayout;

    .line 131
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->timeColon:Landroid/widget/TextView;

    .line 132
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->titleGroup:Landroid/widget/RadioGroup;

    .line 133
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->tvMainDate:Landroid/widget/TextView;

    .line 134
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->tvMainTime:Landroid/widget/TextView;

    .line 135
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->tvUpdateMsg:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;

    .line 165
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->fl_main:I

    .line 166
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    .line 167
    .local v5, "flMain":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_17

    .line 171
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 173
    .local v6, "gonggao":Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    if-eqz v6, :cond_16

    .line 177
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao_root:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    .line 179
    .local v7, "gonggaoRoot":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_15

    .line 183
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_main_line:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 185
    .local v8, "ivMainLine":Landroid/widget/ImageView;
    if-eqz v8, :cond_14

    .line 189
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_net_state:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 191
    .local v9, "ivNetState":Landroid/widget/ImageView;
    if-eqz v9, :cond_13

    .line 195
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_titile:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    .line 197
    .local v10, "ivTitile":Landroid/widget/ImageView;
    if-eqz v10, :cond_12

    .line 201
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_rb:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    .line 203
    .local v11, "llRb":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_11

    .line 207
    sget v1, Lcom/shenma/tvlauncher/R$id;->logo:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    .line 209
    .local v12, "logo":Landroid/widget/ImageView;
    if-eqz v12, :cond_10

    .line 213
    sget v1, Lcom/shenma/tvlauncher/R$id;->main:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    .line 215
    .local v13, "main":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_f

    .line 219
    sget v1, Lcom/shenma/tvlauncher/R$id;->mains:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    .line 221
    .local v14, "mains":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_e

    .line 225
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 227
    .local v15, "notice":Landroid/widget/RelativeLayout;
    if-eqz v15, :cond_d

    .line 231
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice_button:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 233
    .local v16, "noticeButton":Landroid/widget/TextView;
    if-eqz v16, :cond_c

    .line 237
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice_iamge_url:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    .line 239
    .local v17, "noticeIamgeUrl":Landroid/widget/ImageView;
    if-eqz v17, :cond_b

    .line 243
    sget v1, Lcom/shenma/tvlauncher/R$id;->pager:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/viewpager/widget/ViewPager;

    .line 245
    .local v18, "pager":Landroidx/viewpager/widget/ViewPager;
    if-eqz v18, :cond_a

    .line 249
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_recommend:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RadioButton;

    .line 251
    .local v19, "rbRecommend":Landroid/widget/RadioButton;
    if-eqz v19, :cond_9

    .line 255
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_settings:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/RadioButton;

    .line 257
    .local v20, "rbSettings":Landroid/widget/RadioButton;
    if-eqz v20, :cond_8

    .line 261
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_type_bottom:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/RadioGroup;

    .line 263
    .local v21, "rgVideoTypeBottom":Landroid/widget/RadioGroup;
    if-eqz v21, :cond_7

    .line 267
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_type_bottoms:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    .line 269
    .local v22, "rgVideoTypeBottoms":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_6

    .line 273
    sget v1, Lcom/shenma/tvlauncher/R$id;->rl_bg:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 275
    .local v23, "rlBg":Landroid/widget/RelativeLayout;
    if-eqz v23, :cond_5

    .line 279
    sget v1, Lcom/shenma/tvlauncher/R$id;->time_colon:I

    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 281
    .local v24, "timeColon":Landroid/widget/TextView;
    if-eqz v24, :cond_4

    .line 285
    sget v1, Lcom/shenma/tvlauncher/R$id;->title_group:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/RadioGroup;

    .line 287
    .local v25, "titleGroup":Landroid/widget/RadioGroup;
    if-eqz v25, :cond_3

    .line 291
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_date:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    .line 293
    .local v26, "tvMainDate":Landroid/widget/TextView;
    if-eqz v26, :cond_2

    .line 297
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_time:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    .line 299
    .local v27, "tvMainTime":Landroid/widget/TextView;
    if-eqz v27, :cond_1

    .line 303
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_update_msg:I

    .line 304
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    .line 305
    .local v28, "tvUpdateMsg":Landroid/widget/TextView;
    if-eqz v28, :cond_0

    .line 309
    new-instance v3, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v28}, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/viewpager/widget/ViewPager;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 306
    :cond_0
    goto :goto_0

    .line 300
    .end local v28    # "tvUpdateMsg":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 294
    .end local v27    # "tvMainTime":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 288
    .end local v26    # "tvMainDate":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 282
    .end local v25    # "titleGroup":Landroid/widget/RadioGroup;
    :cond_4
    goto :goto_0

    .line 276
    .end local v24    # "timeColon":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 270
    .end local v23    # "rlBg":Landroid/widget/RelativeLayout;
    :cond_6
    goto :goto_0

    .line 264
    .end local v22    # "rgVideoTypeBottoms":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 258
    .end local v21    # "rgVideoTypeBottom":Landroid/widget/RadioGroup;
    :cond_8
    goto :goto_0

    .line 252
    .end local v20    # "rbSettings":Landroid/widget/RadioButton;
    :cond_9
    goto :goto_0

    .line 246
    .end local v19    # "rbRecommend":Landroid/widget/RadioButton;
    :cond_a
    goto :goto_0

    .line 240
    .end local v18    # "pager":Landroidx/viewpager/widget/ViewPager;
    :cond_b
    goto :goto_0

    .line 234
    .end local v17    # "noticeIamgeUrl":Landroid/widget/ImageView;
    :cond_c
    goto :goto_0

    .line 228
    .end local v16    # "noticeButton":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 222
    .end local v15    # "notice":Landroid/widget/RelativeLayout;
    :cond_e
    goto :goto_0

    .line 216
    .end local v14    # "mains":Landroid/widget/LinearLayout;
    :cond_f
    goto :goto_0

    .line 210
    .end local v13    # "main":Landroid/widget/LinearLayout;
    :cond_10
    goto :goto_0

    .line 204
    .end local v12    # "logo":Landroid/widget/ImageView;
    :cond_11
    goto :goto_0

    .line 198
    .end local v11    # "llRb":Landroid/widget/LinearLayout;
    :cond_12
    goto :goto_0

    .line 192
    .end local v10    # "ivTitile":Landroid/widget/ImageView;
    :cond_13
    goto :goto_0

    .line 186
    .end local v9    # "ivNetState":Landroid/widget/ImageView;
    :cond_14
    goto :goto_0

    .line 180
    .end local v8    # "ivMainLine":Landroid/widget/ImageView;
    :cond_15
    goto :goto_0

    .line 174
    .end local v7    # "gonggaoRoot":Landroid/widget/LinearLayout;
    :cond_16
    goto :goto_0

    .line 168
    .end local v6    # "gonggao":Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    :cond_17
    nop

    .line 314
    .end local v5    # "flMain":Landroid/widget/FrameLayout;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 152
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
