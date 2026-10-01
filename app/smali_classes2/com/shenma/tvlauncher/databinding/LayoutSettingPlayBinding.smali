.class public final Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;
.super Ljava/lang/Object;
.source "LayoutSettingPlayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playSettingContent:Landroid/widget/RelativeLayout;

.field public final playSettingContentCore:Landroid/widget/RelativeLayout;

.field public final playSettingContentCoreLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentCoreRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentCoreText:Landroid/widget/TextView;

.field public final playSettingContentDecode:Landroid/widget/RelativeLayout;

.field public final playSettingContentDecodeLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentDecodeRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentDecodeText:Landroid/widget/TextView;

.field public final playSettingContentJump:Landroid/widget/RelativeLayout;

.field public final playSettingContentJumpEnd:Landroid/widget/RelativeLayout;

.field public final playSettingContentJumpEndLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentJumpEndRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentJumpEndText:Landroid/widget/TextView;

.field public final playSettingContentJumpLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentJumpRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentJumpText:Landroid/widget/TextView;

.field public final playSettingContentLiveCore:Landroid/widget/RelativeLayout;

.field public final playSettingContentLiveCoreLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentLiveCoreRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentLiveCoreText:Landroid/widget/TextView;

.field public final playSettingContentPlayratio:Landroid/widget/RelativeLayout;

.field public final playSettingContentPlayratioLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentPlayratioRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentPlayratioText:Landroid/widget/TextView;

.field public final playSettingContentTheme:Landroid/widget/RelativeLayout;

.field public final playSettingContentThemeLeftArrows:Landroid/widget/ImageButton;

.field public final playSettingContentThemeRightArrows:Landroid/widget/ImageButton;

.field public final playSettingContentThemeText:Landroid/widget/TextView;

.field public final playSettingTop:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final settingPlay:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "playSettingContent"    # Landroid/widget/RelativeLayout;
    .param p3, "playSettingContentCore"    # Landroid/widget/RelativeLayout;
    .param p4, "playSettingContentCoreLeftArrows"    # Landroid/widget/ImageButton;
    .param p5, "playSettingContentCoreRightArrows"    # Landroid/widget/ImageButton;
    .param p6, "playSettingContentCoreText"    # Landroid/widget/TextView;
    .param p7, "playSettingContentDecode"    # Landroid/widget/RelativeLayout;
    .param p8, "playSettingContentDecodeLeftArrows"    # Landroid/widget/ImageButton;
    .param p9, "playSettingContentDecodeRightArrows"    # Landroid/widget/ImageButton;
    .param p10, "playSettingContentDecodeText"    # Landroid/widget/TextView;
    .param p11, "playSettingContentJump"    # Landroid/widget/RelativeLayout;
    .param p12, "playSettingContentJumpEnd"    # Landroid/widget/RelativeLayout;
    .param p13, "playSettingContentJumpEndLeftArrows"    # Landroid/widget/ImageButton;
    .param p14, "playSettingContentJumpEndRightArrows"    # Landroid/widget/ImageButton;
    .param p15, "playSettingContentJumpEndText"    # Landroid/widget/TextView;
    .param p16, "playSettingContentJumpLeftArrows"    # Landroid/widget/ImageButton;
    .param p17, "playSettingContentJumpRightArrows"    # Landroid/widget/ImageButton;
    .param p18, "playSettingContentJumpText"    # Landroid/widget/TextView;
    .param p19, "playSettingContentLiveCore"    # Landroid/widget/RelativeLayout;
    .param p20, "playSettingContentLiveCoreLeftArrows"    # Landroid/widget/ImageButton;
    .param p21, "playSettingContentLiveCoreRightArrows"    # Landroid/widget/ImageButton;
    .param p22, "playSettingContentLiveCoreText"    # Landroid/widget/TextView;
    .param p23, "playSettingContentPlayratio"    # Landroid/widget/RelativeLayout;
    .param p24, "playSettingContentPlayratioLeftArrows"    # Landroid/widget/ImageButton;
    .param p25, "playSettingContentPlayratioRightArrows"    # Landroid/widget/ImageButton;
    .param p26, "playSettingContentPlayratioText"    # Landroid/widget/TextView;
    .param p27, "playSettingContentTheme"    # Landroid/widget/RelativeLayout;
    .param p28, "playSettingContentThemeLeftArrows"    # Landroid/widget/ImageButton;
    .param p29, "playSettingContentThemeRightArrows"    # Landroid/widget/ImageButton;
    .param p30, "playSettingContentThemeText"    # Landroid/widget/TextView;
    .param p31, "playSettingTop"    # Landroid/widget/RelativeLayout;
    .param p32, "settingPlay"    # Landroid/widget/RelativeLayout;

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 147
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContent:Landroid/widget/RelativeLayout;

    .line 148
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentCore:Landroid/widget/RelativeLayout;

    .line 149
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentCoreLeftArrows:Landroid/widget/ImageButton;

    .line 150
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentCoreRightArrows:Landroid/widget/ImageButton;

    .line 151
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentCoreText:Landroid/widget/TextView;

    .line 152
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentDecode:Landroid/widget/RelativeLayout;

    .line 153
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentDecodeLeftArrows:Landroid/widget/ImageButton;

    .line 154
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentDecodeRightArrows:Landroid/widget/ImageButton;

    .line 155
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentDecodeText:Landroid/widget/TextView;

    .line 156
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJump:Landroid/widget/RelativeLayout;

    .line 157
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpEnd:Landroid/widget/RelativeLayout;

    .line 158
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpEndLeftArrows:Landroid/widget/ImageButton;

    .line 159
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpEndRightArrows:Landroid/widget/ImageButton;

    .line 160
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpEndText:Landroid/widget/TextView;

    .line 161
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpLeftArrows:Landroid/widget/ImageButton;

    .line 162
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpRightArrows:Landroid/widget/ImageButton;

    .line 163
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentJumpText:Landroid/widget/TextView;

    .line 164
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentLiveCore:Landroid/widget/RelativeLayout;

    .line 165
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentLiveCoreLeftArrows:Landroid/widget/ImageButton;

    .line 166
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentLiveCoreRightArrows:Landroid/widget/ImageButton;

    .line 167
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentLiveCoreText:Landroid/widget/TextView;

    .line 168
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentPlayratio:Landroid/widget/RelativeLayout;

    .line 169
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentPlayratioLeftArrows:Landroid/widget/ImageButton;

    .line 170
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentPlayratioRightArrows:Landroid/widget/ImageButton;

    .line 171
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentPlayratioText:Landroid/widget/TextView;

    .line 172
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentTheme:Landroid/widget/RelativeLayout;

    .line 173
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentThemeLeftArrows:Landroid/widget/ImageButton;

    .line 174
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentThemeRightArrows:Landroid/widget/ImageButton;

    .line 175
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingContentThemeText:Landroid/widget/TextView;

    .line 176
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->playSettingTop:Landroid/widget/RelativeLayout;

    .line 177
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->settingPlay:Landroid/widget/RelativeLayout;

    .line 178
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;
    .locals 36
    .param p0, "rootView"    # Landroid/view/View;

    .line 207
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content:I

    .line 208
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 209
    .local v5, "playSettingContent":Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_1d

    .line 213
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_core:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 215
    .local v6, "playSettingContentCore":Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_1c

    .line 219
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_core_left_arrows:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageButton;

    .line 221
    .local v7, "playSettingContentCoreLeftArrows":Landroid/widget/ImageButton;
    if-eqz v7, :cond_1b

    .line 225
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_core_right_arrows:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    .line 227
    .local v8, "playSettingContentCoreRightArrows":Landroid/widget/ImageButton;
    if-eqz v8, :cond_1a

    .line 231
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_core_text:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 233
    .local v9, "playSettingContentCoreText":Landroid/widget/TextView;
    if-eqz v9, :cond_19

    .line 237
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_decode:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 239
    .local v10, "playSettingContentDecode":Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_18

    .line 243
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_decode_left_arrows:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageButton;

    .line 245
    .local v11, "playSettingContentDecodeLeftArrows":Landroid/widget/ImageButton;
    if-eqz v11, :cond_17

    .line 249
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_decode_right_arrows:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageButton;

    .line 251
    .local v12, "playSettingContentDecodeRightArrows":Landroid/widget/ImageButton;
    if-eqz v12, :cond_16

    .line 255
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_decode_text:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 257
    .local v13, "playSettingContentDecodeText":Landroid/widget/TextView;
    if-eqz v13, :cond_15

    .line 261
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 263
    .local v14, "playSettingContentJump":Landroid/widget/RelativeLayout;
    if-eqz v14, :cond_14

    .line 267
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_end:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 269
    .local v15, "playSettingContentJumpEnd":Landroid/widget/RelativeLayout;
    if-eqz v15, :cond_13

    .line 273
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_end_left_arrows:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageButton;

    .line 275
    .local v16, "playSettingContentJumpEndLeftArrows":Landroid/widget/ImageButton;
    if-eqz v16, :cond_12

    .line 279
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_end_right_arrows:I

    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageButton;

    .line 281
    .local v17, "playSettingContentJumpEndRightArrows":Landroid/widget/ImageButton;
    if-eqz v17, :cond_11

    .line 285
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_end_text:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 287
    .local v18, "playSettingContentJumpEndText":Landroid/widget/TextView;
    if-eqz v18, :cond_10

    .line 291
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_left_arrows:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageButton;

    .line 293
    .local v19, "playSettingContentJumpLeftArrows":Landroid/widget/ImageButton;
    if-eqz v19, :cond_f

    .line 297
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_right_arrows:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageButton;

    .line 299
    .local v20, "playSettingContentJumpRightArrows":Landroid/widget/ImageButton;
    if-eqz v20, :cond_e

    .line 303
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_jump_text:I

    .line 304
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    .line 305
    .local v21, "playSettingContentJumpText":Landroid/widget/TextView;
    if-eqz v21, :cond_d

    .line 309
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_live_core:I

    .line 310
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 311
    .local v22, "playSettingContentLiveCore":Landroid/widget/RelativeLayout;
    if-eqz v22, :cond_c

    .line 315
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_live_core_left_arrows:I

    .line 316
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/ImageButton;

    .line 317
    .local v23, "playSettingContentLiveCoreLeftArrows":Landroid/widget/ImageButton;
    if-eqz v23, :cond_b

    .line 321
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_live_core_right_arrows:I

    .line 322
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/ImageButton;

    .line 323
    .local v24, "playSettingContentLiveCoreRightArrows":Landroid/widget/ImageButton;
    if-eqz v24, :cond_a

    .line 327
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_live_core_text:I

    .line 328
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    .line 329
    .local v25, "playSettingContentLiveCoreText":Landroid/widget/TextView;
    if-eqz v25, :cond_9

    .line 333
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_playratio:I

    .line 334
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 335
    .local v26, "playSettingContentPlayratio":Landroid/widget/RelativeLayout;
    if-eqz v26, :cond_8

    .line 339
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_playratio_left_arrows:I

    .line 340
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ImageButton;

    .line 341
    .local v27, "playSettingContentPlayratioLeftArrows":Landroid/widget/ImageButton;
    if-eqz v27, :cond_7

    .line 345
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_playratio_right_arrows:I

    .line 346
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/ImageButton;

    .line 347
    .local v28, "playSettingContentPlayratioRightArrows":Landroid/widget/ImageButton;
    if-eqz v28, :cond_6

    .line 351
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_playratio_text:I

    .line 352
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    .line 353
    .local v29, "playSettingContentPlayratioText":Landroid/widget/TextView;
    if-eqz v29, :cond_5

    .line 357
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_theme:I

    .line 358
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 359
    .local v30, "playSettingContentTheme":Landroid/widget/RelativeLayout;
    if-eqz v30, :cond_4

    .line 363
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_theme_left_arrows:I

    .line 364
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/ImageButton;

    .line 365
    .local v31, "playSettingContentThemeLeftArrows":Landroid/widget/ImageButton;
    if-eqz v31, :cond_3

    .line 369
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_theme_right_arrows:I

    .line 370
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/ImageButton;

    .line 371
    .local v32, "playSettingContentThemeRightArrows":Landroid/widget/ImageButton;
    if-eqz v32, :cond_2

    .line 375
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_content_theme_text:I

    .line 376
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/TextView;

    .line 377
    .local v33, "playSettingContentThemeText":Landroid/widget/TextView;
    if-eqz v33, :cond_1

    .line 381
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_setting_top:I

    .line 382
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 383
    .local v34, "playSettingTop":Landroid/widget/RelativeLayout;
    if-eqz v34, :cond_0

    .line 387
    move-object/from16 v35, v0

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 389
    .local v35, "settingPlay":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v35}, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v3

    .line 384
    .end local v35    # "settingPlay":Landroid/widget/RelativeLayout;
    :cond_0
    goto :goto_0

    .line 378
    .end local v34    # "playSettingTop":Landroid/widget/RelativeLayout;
    :cond_1
    goto :goto_0

    .line 372
    .end local v33    # "playSettingContentThemeText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 366
    .end local v32    # "playSettingContentThemeRightArrows":Landroid/widget/ImageButton;
    :cond_3
    goto :goto_0

    .line 360
    .end local v31    # "playSettingContentThemeLeftArrows":Landroid/widget/ImageButton;
    :cond_4
    goto :goto_0

    .line 354
    .end local v30    # "playSettingContentTheme":Landroid/widget/RelativeLayout;
    :cond_5
    goto :goto_0

    .line 348
    .end local v29    # "playSettingContentPlayratioText":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 342
    .end local v28    # "playSettingContentPlayratioRightArrows":Landroid/widget/ImageButton;
    :cond_7
    goto :goto_0

    .line 336
    .end local v27    # "playSettingContentPlayratioLeftArrows":Landroid/widget/ImageButton;
    :cond_8
    goto :goto_0

    .line 330
    .end local v26    # "playSettingContentPlayratio":Landroid/widget/RelativeLayout;
    :cond_9
    goto :goto_0

    .line 324
    .end local v25    # "playSettingContentLiveCoreText":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 318
    .end local v24    # "playSettingContentLiveCoreRightArrows":Landroid/widget/ImageButton;
    :cond_b
    goto :goto_0

    .line 312
    .end local v23    # "playSettingContentLiveCoreLeftArrows":Landroid/widget/ImageButton;
    :cond_c
    goto :goto_0

    .line 306
    .end local v22    # "playSettingContentLiveCore":Landroid/widget/RelativeLayout;
    :cond_d
    goto :goto_0

    .line 300
    .end local v21    # "playSettingContentJumpText":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 294
    .end local v20    # "playSettingContentJumpRightArrows":Landroid/widget/ImageButton;
    :cond_f
    goto :goto_0

    .line 288
    .end local v19    # "playSettingContentJumpLeftArrows":Landroid/widget/ImageButton;
    :cond_10
    goto :goto_0

    .line 282
    .end local v18    # "playSettingContentJumpEndText":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 276
    .end local v17    # "playSettingContentJumpEndRightArrows":Landroid/widget/ImageButton;
    :cond_12
    goto :goto_0

    .line 270
    .end local v16    # "playSettingContentJumpEndLeftArrows":Landroid/widget/ImageButton;
    :cond_13
    goto :goto_0

    .line 264
    .end local v15    # "playSettingContentJumpEnd":Landroid/widget/RelativeLayout;
    :cond_14
    goto :goto_0

    .line 258
    .end local v14    # "playSettingContentJump":Landroid/widget/RelativeLayout;
    :cond_15
    goto :goto_0

    .line 252
    .end local v13    # "playSettingContentDecodeText":Landroid/widget/TextView;
    :cond_16
    goto :goto_0

    .line 246
    .end local v12    # "playSettingContentDecodeRightArrows":Landroid/widget/ImageButton;
    :cond_17
    goto :goto_0

    .line 240
    .end local v11    # "playSettingContentDecodeLeftArrows":Landroid/widget/ImageButton;
    :cond_18
    goto :goto_0

    .line 234
    .end local v10    # "playSettingContentDecode":Landroid/widget/RelativeLayout;
    :cond_19
    goto :goto_0

    .line 228
    .end local v9    # "playSettingContentCoreText":Landroid/widget/TextView;
    :cond_1a
    goto :goto_0

    .line 222
    .end local v8    # "playSettingContentCoreRightArrows":Landroid/widget/ImageButton;
    :cond_1b
    goto :goto_0

    .line 216
    .end local v7    # "playSettingContentCoreLeftArrows":Landroid/widget/ImageButton;
    :cond_1c
    goto :goto_0

    .line 210
    .end local v6    # "playSettingContentCore":Landroid/widget/RelativeLayout;
    :cond_1d
    nop

    .line 404
    .end local v5    # "playSettingContent":Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 194
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_play:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingPlayBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
