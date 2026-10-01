.class public final Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;
.super Ljava/lang/Object;
.source "LayoutTopicssBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivComicBg:Landroid/widget/ImageView;

.field public final ivMusicBg:Landroid/widget/ImageView;

.field public final ivTeachBg:Landroid/widget/ImageView;

.field public final ivTopicBg:Landroid/widget/ImageView;

.field public final ivTvplayBg:Landroid/widget/ImageView;

.field public final ivTvshowBg:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final topRe0:Landroid/widget/TextView;

.field public final topRe1:Landroid/widget/TextView;

.field public final topRe2:Landroid/widget/TextView;

.field public final topRe3:Landroid/widget/TextView;

.field public final topRe4:Landroid/widget/TextView;

.field public final topRe5:Landroid/widget/TextView;

.field public final topicBg0:Landroid/widget/ImageView;

.field public final topicBg1:Landroid/widget/ImageView;

.field public final topicBg2:Landroid/widget/ImageView;

.field public final topicBg3:Landroid/widget/ImageView;

.field public final topicBg4:Landroid/widget/ImageView;

.field public final topicBg5:Landroid/widget/ImageView;

.field public final topicFl0:Landroid/widget/FrameLayout;

.field public final topicFl1:Landroid/widget/FrameLayout;

.field public final topicFl2:Landroid/widget/FrameLayout;

.field public final topicFl3:Landroid/widget/FrameLayout;

.field public final topicFl4:Landroid/widget/FrameLayout;

.field public final topicFl5:Landroid/widget/FrameLayout;

.field public final topicI0:Landroid/widget/ImageView;

.field public final topicI1:Landroid/widget/ImageView;

.field public final topicI2:Landroid/widget/ImageView;

.field public final topicI3:Landroid/widget/ImageView;

.field public final topicI4:Landroid/widget/ImageView;

.field public final topicI5:Landroid/widget/ImageView;

.field public final topicIv0:Landroid/widget/FrameLayout;

.field public final topicIv1:Landroid/widget/FrameLayout;

.field public final topicIv2:Landroid/widget/FrameLayout;

.field public final topicIv3:Landroid/widget/FrameLayout;

.field public final topicIv4:Landroid/widget/FrameLayout;

.field public final topicIv5:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "ivComicBg"    # Landroid/widget/ImageView;
    .param p3, "ivMusicBg"    # Landroid/widget/ImageView;
    .param p4, "ivTeachBg"    # Landroid/widget/ImageView;
    .param p5, "ivTopicBg"    # Landroid/widget/ImageView;
    .param p6, "ivTvplayBg"    # Landroid/widget/ImageView;
    .param p7, "ivTvshowBg"    # Landroid/widget/ImageView;
    .param p8, "topRe0"    # Landroid/widget/TextView;
    .param p9, "topRe1"    # Landroid/widget/TextView;
    .param p10, "topRe2"    # Landroid/widget/TextView;
    .param p11, "topRe3"    # Landroid/widget/TextView;
    .param p12, "topRe4"    # Landroid/widget/TextView;
    .param p13, "topRe5"    # Landroid/widget/TextView;
    .param p14, "topicBg0"    # Landroid/widget/ImageView;
    .param p15, "topicBg1"    # Landroid/widget/ImageView;
    .param p16, "topicBg2"    # Landroid/widget/ImageView;
    .param p17, "topicBg3"    # Landroid/widget/ImageView;
    .param p18, "topicBg4"    # Landroid/widget/ImageView;
    .param p19, "topicBg5"    # Landroid/widget/ImageView;
    .param p20, "topicFl0"    # Landroid/widget/FrameLayout;
    .param p21, "topicFl1"    # Landroid/widget/FrameLayout;
    .param p22, "topicFl2"    # Landroid/widget/FrameLayout;
    .param p23, "topicFl3"    # Landroid/widget/FrameLayout;
    .param p24, "topicFl4"    # Landroid/widget/FrameLayout;
    .param p25, "topicFl5"    # Landroid/widget/FrameLayout;
    .param p26, "topicI0"    # Landroid/widget/ImageView;
    .param p27, "topicI1"    # Landroid/widget/ImageView;
    .param p28, "topicI2"    # Landroid/widget/ImageView;
    .param p29, "topicI3"    # Landroid/widget/ImageView;
    .param p30, "topicI4"    # Landroid/widget/ImageView;
    .param p31, "topicI5"    # Landroid/widget/ImageView;
    .param p32, "topicIv0"    # Landroid/widget/FrameLayout;
    .param p33, "topicIv1"    # Landroid/widget/FrameLayout;
    .param p34, "topicIv2"    # Landroid/widget/FrameLayout;
    .param p35, "topicIv3"    # Landroid/widget/FrameLayout;
    .param p36, "topicIv4"    # Landroid/widget/FrameLayout;
    .param p37, "topicIv5"    # Landroid/widget/FrameLayout;

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 144
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->rootView:Landroid/widget/FrameLayout;

    .line 145
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivComicBg:Landroid/widget/ImageView;

    .line 146
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivMusicBg:Landroid/widget/ImageView;

    .line 147
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivTeachBg:Landroid/widget/ImageView;

    .line 148
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivTopicBg:Landroid/widget/ImageView;

    .line 149
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivTvplayBg:Landroid/widget/ImageView;

    .line 150
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->ivTvshowBg:Landroid/widget/ImageView;

    .line 151
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe0:Landroid/widget/TextView;

    .line 152
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe1:Landroid/widget/TextView;

    .line 153
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe2:Landroid/widget/TextView;

    .line 154
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe3:Landroid/widget/TextView;

    .line 155
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe4:Landroid/widget/TextView;

    .line 156
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topRe5:Landroid/widget/TextView;

    .line 157
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg0:Landroid/widget/ImageView;

    .line 158
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg1:Landroid/widget/ImageView;

    .line 159
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg2:Landroid/widget/ImageView;

    .line 160
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg3:Landroid/widget/ImageView;

    .line 161
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg4:Landroid/widget/ImageView;

    .line 162
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicBg5:Landroid/widget/ImageView;

    .line 163
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl0:Landroid/widget/FrameLayout;

    .line 164
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl1:Landroid/widget/FrameLayout;

    .line 165
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl2:Landroid/widget/FrameLayout;

    .line 166
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl3:Landroid/widget/FrameLayout;

    .line 167
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl4:Landroid/widget/FrameLayout;

    .line 168
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicFl5:Landroid/widget/FrameLayout;

    .line 169
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI0:Landroid/widget/ImageView;

    .line 170
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI1:Landroid/widget/ImageView;

    .line 171
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI2:Landroid/widget/ImageView;

    .line 172
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI3:Landroid/widget/ImageView;

    .line 173
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI4:Landroid/widget/ImageView;

    .line 174
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicI5:Landroid/widget/ImageView;

    .line 175
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv0:Landroid/widget/FrameLayout;

    .line 176
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv1:Landroid/widget/FrameLayout;

    .line 177
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv2:Landroid/widget/FrameLayout;

    .line 178
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv3:Landroid/widget/FrameLayout;

    .line 179
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv4:Landroid/widget/FrameLayout;

    .line 180
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->topicIv5:Landroid/widget/FrameLayout;

    .line 181
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;
    .locals 41
    .param p0, "rootView"    # Landroid/view/View;

    .line 210
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_comic_bg:I

    .line 211
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    .line 212
    .local v5, "ivComicBg":Landroid/widget/ImageView;
    if-eqz v5, :cond_23

    .line 216
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_music_bg:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    .line 218
    .local v6, "ivMusicBg":Landroid/widget/ImageView;
    if-eqz v6, :cond_22

    .line 222
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_teach_bg:I

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    .line 224
    .local v7, "ivTeachBg":Landroid/widget/ImageView;
    if-eqz v7, :cond_21

    .line 228
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_topic_bg:I

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 230
    .local v8, "ivTopicBg":Landroid/widget/ImageView;
    if-eqz v8, :cond_20

    .line 234
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_tvplay_bg:I

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 236
    .local v9, "ivTvplayBg":Landroid/widget/ImageView;
    if-eqz v9, :cond_1f

    .line 240
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_tvshow_bg:I

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    .line 242
    .local v10, "ivTvshowBg":Landroid/widget/ImageView;
    if-eqz v10, :cond_1e

    .line 246
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_0:I

    .line 247
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 248
    .local v11, "topRe0":Landroid/widget/TextView;
    if-eqz v11, :cond_1d

    .line 252
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_1:I

    .line 253
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 254
    .local v12, "topRe1":Landroid/widget/TextView;
    if-eqz v12, :cond_1c

    .line 258
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_2:I

    .line 259
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 260
    .local v13, "topRe2":Landroid/widget/TextView;
    if-eqz v13, :cond_1b

    .line 264
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_3:I

    .line 265
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 266
    .local v14, "topRe3":Landroid/widget/TextView;
    if-eqz v14, :cond_1a

    .line 270
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_4:I

    .line 271
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 272
    .local v15, "topRe4":Landroid/widget/TextView;
    if-eqz v15, :cond_19

    .line 276
    sget v1, Lcom/shenma/tvlauncher/R$id;->top_re_5:I

    .line 277
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 278
    .local v16, "topRe5":Landroid/widget/TextView;
    if-eqz v16, :cond_18

    .line 282
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_0:I

    .line 283
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    .line 284
    .local v17, "topicBg0":Landroid/widget/ImageView;
    if-eqz v17, :cond_17

    .line 288
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_1:I

    .line 289
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    .line 290
    .local v18, "topicBg1":Landroid/widget/ImageView;
    if-eqz v18, :cond_16

    .line 294
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_2:I

    .line 295
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    .line 296
    .local v19, "topicBg2":Landroid/widget/ImageView;
    if-eqz v19, :cond_15

    .line 300
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_3:I

    .line 301
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    .line 302
    .local v20, "topicBg3":Landroid/widget/ImageView;
    if-eqz v20, :cond_14

    .line 306
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_4:I

    .line 307
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    .line 308
    .local v21, "topicBg4":Landroid/widget/ImageView;
    if-eqz v21, :cond_13

    .line 312
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_bg_5:I

    .line 313
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    .line 314
    .local v22, "topicBg5":Landroid/widget/ImageView;
    if-eqz v22, :cond_12

    .line 318
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_0:I

    .line 319
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/FrameLayout;

    .line 320
    .local v23, "topicFl0":Landroid/widget/FrameLayout;
    if-eqz v23, :cond_11

    .line 324
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_1:I

    .line 325
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/FrameLayout;

    .line 326
    .local v24, "topicFl1":Landroid/widget/FrameLayout;
    if-eqz v24, :cond_10

    .line 330
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_2:I

    .line 331
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/FrameLayout;

    .line 332
    .local v25, "topicFl2":Landroid/widget/FrameLayout;
    if-eqz v25, :cond_f

    .line 336
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_3:I

    .line 337
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/FrameLayout;

    .line 338
    .local v26, "topicFl3":Landroid/widget/FrameLayout;
    if-eqz v26, :cond_e

    .line 342
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_4:I

    .line 343
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/FrameLayout;

    .line 344
    .local v27, "topicFl4":Landroid/widget/FrameLayout;
    if-eqz v27, :cond_d

    .line 348
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_fl_5:I

    .line 349
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/FrameLayout;

    .line 350
    .local v28, "topicFl5":Landroid/widget/FrameLayout;
    if-eqz v28, :cond_c

    .line 354
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_0:I

    .line 355
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/ImageView;

    .line 356
    .local v29, "topicI0":Landroid/widget/ImageView;
    if-eqz v29, :cond_b

    .line 360
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_1:I

    .line 361
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/ImageView;

    .line 362
    .local v30, "topicI1":Landroid/widget/ImageView;
    if-eqz v30, :cond_a

    .line 366
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_2:I

    .line 367
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/ImageView;

    .line 368
    .local v31, "topicI2":Landroid/widget/ImageView;
    if-eqz v31, :cond_9

    .line 372
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_3:I

    .line 373
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/ImageView;

    .line 374
    .local v32, "topicI3":Landroid/widget/ImageView;
    if-eqz v32, :cond_8

    .line 378
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_4:I

    .line 379
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/ImageView;

    .line 380
    .local v33, "topicI4":Landroid/widget/ImageView;
    if-eqz v33, :cond_7

    .line 384
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_i_5:I

    .line 385
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/ImageView;

    .line 386
    .local v34, "topicI5":Landroid/widget/ImageView;
    if-eqz v34, :cond_6

    .line 390
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_0:I

    .line 391
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/FrameLayout;

    .line 392
    .local v35, "topicIv0":Landroid/widget/FrameLayout;
    if-eqz v35, :cond_5

    .line 396
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_1:I

    .line 397
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/FrameLayout;

    .line 398
    .local v36, "topicIv1":Landroid/widget/FrameLayout;
    if-eqz v36, :cond_4

    .line 402
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_2:I

    .line 403
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/FrameLayout;

    .line 404
    .local v37, "topicIv2":Landroid/widget/FrameLayout;
    if-eqz v37, :cond_3

    .line 408
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_3:I

    .line 409
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/FrameLayout;

    .line 410
    .local v38, "topicIv3":Landroid/widget/FrameLayout;
    if-eqz v38, :cond_2

    .line 414
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_4:I

    .line 415
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/FrameLayout;

    .line 416
    .local v39, "topicIv4":Landroid/widget/FrameLayout;
    if-eqz v39, :cond_1

    .line 420
    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_iv_5:I

    .line 421
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroid/widget/FrameLayout;

    .line 422
    .local v40, "topicIv5":Landroid/widget/FrameLayout;
    if-eqz v40, :cond_0

    .line 426
    new-instance v3, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v40}, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v3

    .line 423
    :cond_0
    goto :goto_0

    .line 417
    .end local v40    # "topicIv5":Landroid/widget/FrameLayout;
    :cond_1
    goto :goto_0

    .line 411
    .end local v39    # "topicIv4":Landroid/widget/FrameLayout;
    :cond_2
    goto :goto_0

    .line 405
    .end local v38    # "topicIv3":Landroid/widget/FrameLayout;
    :cond_3
    goto :goto_0

    .line 399
    .end local v37    # "topicIv2":Landroid/widget/FrameLayout;
    :cond_4
    goto :goto_0

    .line 393
    .end local v36    # "topicIv1":Landroid/widget/FrameLayout;
    :cond_5
    goto :goto_0

    .line 387
    .end local v35    # "topicIv0":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_0

    .line 381
    .end local v34    # "topicI5":Landroid/widget/ImageView;
    :cond_7
    goto :goto_0

    .line 375
    .end local v33    # "topicI4":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 369
    .end local v32    # "topicI3":Landroid/widget/ImageView;
    :cond_9
    goto :goto_0

    .line 363
    .end local v31    # "topicI2":Landroid/widget/ImageView;
    :cond_a
    goto :goto_0

    .line 357
    .end local v30    # "topicI1":Landroid/widget/ImageView;
    :cond_b
    goto :goto_0

    .line 351
    .end local v29    # "topicI0":Landroid/widget/ImageView;
    :cond_c
    goto :goto_0

    .line 345
    .end local v28    # "topicFl5":Landroid/widget/FrameLayout;
    :cond_d
    goto :goto_0

    .line 339
    .end local v27    # "topicFl4":Landroid/widget/FrameLayout;
    :cond_e
    goto :goto_0

    .line 333
    .end local v26    # "topicFl3":Landroid/widget/FrameLayout;
    :cond_f
    goto :goto_0

    .line 327
    .end local v25    # "topicFl2":Landroid/widget/FrameLayout;
    :cond_10
    goto :goto_0

    .line 321
    .end local v24    # "topicFl1":Landroid/widget/FrameLayout;
    :cond_11
    goto :goto_0

    .line 315
    .end local v23    # "topicFl0":Landroid/widget/FrameLayout;
    :cond_12
    goto :goto_0

    .line 309
    .end local v22    # "topicBg5":Landroid/widget/ImageView;
    :cond_13
    goto :goto_0

    .line 303
    .end local v21    # "topicBg4":Landroid/widget/ImageView;
    :cond_14
    goto :goto_0

    .line 297
    .end local v20    # "topicBg3":Landroid/widget/ImageView;
    :cond_15
    goto :goto_0

    .line 291
    .end local v19    # "topicBg2":Landroid/widget/ImageView;
    :cond_16
    goto :goto_0

    .line 285
    .end local v18    # "topicBg1":Landroid/widget/ImageView;
    :cond_17
    goto :goto_0

    .line 279
    .end local v17    # "topicBg0":Landroid/widget/ImageView;
    :cond_18
    goto :goto_0

    .line 273
    .end local v16    # "topRe5":Landroid/widget/TextView;
    :cond_19
    goto :goto_0

    .line 267
    .end local v15    # "topRe4":Landroid/widget/TextView;
    :cond_1a
    goto :goto_0

    .line 261
    .end local v14    # "topRe3":Landroid/widget/TextView;
    :cond_1b
    goto :goto_0

    .line 255
    .end local v13    # "topRe2":Landroid/widget/TextView;
    :cond_1c
    goto :goto_0

    .line 249
    .end local v12    # "topRe1":Landroid/widget/TextView;
    :cond_1d
    goto :goto_0

    .line 243
    .end local v11    # "topRe0":Landroid/widget/TextView;
    :cond_1e
    goto :goto_0

    .line 237
    .end local v10    # "ivTvshowBg":Landroid/widget/ImageView;
    :cond_1f
    goto :goto_0

    .line 231
    .end local v9    # "ivTvplayBg":Landroid/widget/ImageView;
    :cond_20
    goto :goto_0

    .line 225
    .end local v8    # "ivTopicBg":Landroid/widget/ImageView;
    :cond_21
    goto :goto_0

    .line 219
    .end local v7    # "ivTeachBg":Landroid/widget/ImageView;
    :cond_22
    goto :goto_0

    .line 213
    .end local v6    # "ivMusicBg":Landroid/widget/ImageView;
    :cond_23
    nop

    .line 432
    .end local v5    # "ivComicBg":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 197
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_topicss:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutTopicssBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
