.class public Lcom/shenma/tvlauncher/fragment/SettingFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private settingbgs:[Landroid/widget/ImageView;

.field private st_fls:[Landroid/widget/FrameLayout;

.field public st_typeLogs:[Landroid/widget/ImageView;

.field private view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetsettingbgs(Lcom/shenma/tvlauncher/fragment/SettingFragment;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private flyAnimation(I)V
    .locals 7
    .param p1, "paramInt"    # I

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 137
    .local v0, "location":[I
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 138
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 139
    .local v1, "width":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 140
    .local v2, "height":I
    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    .line 141
    .local v3, "x":F
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    .line 142
    .local v4, "y":F
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->mHeight:I

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_0

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->mWidth:I

    if-le v5, v6, :cond_0

    .line 143
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    add-int/lit8 v1, v1, 0x17

    .line 188
    add-int/lit8 v2, v2, 0x17

    .line 189
    const v3, 0x44ab8000    # 1372.0f

    .line 190
    const/high16 v4, 0x441f0000    # 636.0f

    goto :goto_0

    .line 181
    :pswitch_1
    add-int/lit8 v1, v1, 0x17

    .line 182
    add-int/lit8 v2, v2, 0x17

    .line 183
    const v3, 0x44ab8000    # 1372.0f

    .line 184
    const/high16 v4, 0x43aa0000    # 340.0f

    .line 185
    goto :goto_0

    .line 175
    :pswitch_2
    add-int/lit8 v1, v1, 0x17

    .line 176
    add-int/lit8 v2, v2, 0x17

    .line 177
    const/high16 v3, 0x44870000    # 1080.0f

    .line 178
    const/high16 v4, 0x441f0000    # 636.0f

    .line 179
    goto :goto_0

    .line 169
    :pswitch_3
    add-int/lit8 v1, v1, 0x17

    .line 170
    add-int/lit8 v2, v2, 0x17

    .line 171
    const/high16 v3, 0x44870000    # 1080.0f

    .line 172
    const/high16 v4, 0x43aa0000    # 340.0f

    .line 173
    goto :goto_0

    .line 163
    :pswitch_4
    add-int/lit8 v1, v1, 0x17

    .line 164
    add-int/lit8 v2, v2, 0x17

    .line 165
    const v3, 0x4444c000    # 787.0f

    .line 166
    const/high16 v4, 0x441f0000    # 636.0f

    .line 167
    goto :goto_0

    .line 157
    :pswitch_5
    add-int/lit8 v1, v1, 0x17

    .line 158
    add-int/lit8 v2, v2, 0x17

    .line 159
    const v3, 0x4444c000    # 787.0f

    .line 160
    const/high16 v4, 0x43aa0000    # 340.0f

    .line 161
    goto :goto_0

    .line 151
    :pswitch_6
    add-int/lit8 v1, v1, 0x17

    .line 152
    add-int/lit8 v2, v2, 0x17

    .line 153
    const v3, 0x43f78000    # 495.0f

    .line 154
    const/high16 v4, 0x441f0000    # 636.0f

    .line 155
    goto :goto_0

    .line 145
    :pswitch_7
    add-int/lit8 v1, v1, 0x17

    .line 146
    add-int/lit8 v2, v2, 0x17

    .line 147
    const v3, 0x43f78000    # 495.0f

    .line 148
    const/high16 v4, 0x43aa0000    # 340.0f

    .line 149
    nop

    .line 191
    :goto_0
    goto :goto_1

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 238
    :pswitch_8
    add-int/lit8 v1, v1, 0xf

    .line 239
    add-int/lit8 v2, v2, 0xf

    .line 240
    const v3, 0x445f4000    # 893.0f

    .line 241
    const/high16 v4, 0x43c90000    # 402.0f

    goto :goto_1

    .line 232
    :pswitch_9
    add-int/lit8 v1, v1, 0xf

    .line 233
    add-int/lit8 v2, v2, 0xf

    .line 234
    const v3, 0x445f4000    # 893.0f

    .line 235
    const/high16 v4, 0x434d0000    # 205.0f

    .line 236
    goto :goto_1

    .line 226
    :pswitch_a
    add-int/lit8 v1, v1, 0xf

    .line 227
    add-int/lit8 v2, v2, 0xf

    .line 228
    const v3, 0x442e8000    # 698.0f

    .line 229
    const/high16 v4, 0x43c90000    # 402.0f

    .line 230
    goto :goto_1

    .line 220
    :pswitch_b
    add-int/lit8 v1, v1, 0xf

    .line 221
    add-int/lit8 v2, v2, 0xf

    .line 222
    const v3, 0x442e8000    # 698.0f

    .line 223
    const/high16 v4, 0x434d0000    # 205.0f

    .line 224
    goto :goto_1

    .line 214
    :pswitch_c
    add-int/lit8 v1, v1, 0xf

    .line 215
    add-int/lit8 v2, v2, 0xf

    .line 216
    const v3, 0x43fb8000    # 503.0f

    .line 217
    const/high16 v4, 0x43c90000    # 402.0f

    .line 218
    goto :goto_1

    .line 208
    :pswitch_d
    add-int/lit8 v1, v1, 0xf

    .line 209
    add-int/lit8 v2, v2, 0xf

    .line 210
    const v3, 0x43fb8000    # 503.0f

    .line 211
    const/high16 v4, 0x434d0000    # 205.0f

    .line 212
    goto :goto_1

    .line 202
    :pswitch_e
    add-int/lit8 v1, v1, 0xf

    .line 203
    add-int/lit8 v2, v2, 0xf

    .line 204
    const/high16 v3, 0x439a0000    # 308.0f

    .line 205
    const/high16 v4, 0x43c90000    # 402.0f

    .line 206
    goto :goto_1

    .line 196
    :pswitch_f
    add-int/lit8 v1, v1, 0xf

    .line 197
    add-int/lit8 v2, v2, 0xf

    .line 198
    const/high16 v3, 0x439a0000    # 308.0f

    .line 199
    const/high16 v4, 0x434d0000    # 205.0f

    .line 200
    nop

    .line 245
    :goto_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 246
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private showLoseFocusAinimation(I)V
    .locals 7
    .param p1, "paramInt"    # I

    .line 372
    const v3, 0x3f8ccccd    # 1.1f

    .line 373
    .local v3, "f1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 374
    .local v4, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 375
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 376
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 8
    .param p1, "paramInt"    # I

    .line 347
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 348
    const/high16 v4, 0x3f800000    # 1.0f

    .line 349
    .local v4, "f1":F
    const v5, 0x3f8ccccd    # 1.1f

    .line 350
    .local v5, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 351
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 352
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/SettingFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_1:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_2:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v5, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_3:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 105
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_4:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 106
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v7, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_5:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 107
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_6:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v9, Lcom/shenma/tvlauncher/R$id;->setting_fl_re_7:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_remote:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_network:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_play:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 113
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_clean:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_wallpaper:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 115
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_other:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_act:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_iv_about:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 120
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->setting_bg_0:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 121
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 123
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 124
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 126
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_bg_7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 129
    return-void
.end method

.method init()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->loadViewLayout()V

    .line 88
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->findViewById()V

    .line 89
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->setListener()V

    .line 91
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 94
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_fls:[Landroid/widget/FrameLayout;

    .line 95
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    .line 96
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    .line 97
    new-instance v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 254
    .local v1, "viewId":I
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Settings_page"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    .line 255
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_remote:I

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/SettingRemoteActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 258
    :cond_0
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_network:I

    if-ne v1, v2, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "login_type"

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 260
    .local v2, "login_type":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->context:Landroid/content/Context;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 266
    .end local v2    # "login_type":I
    :goto_0
    goto/16 :goto_1

    :cond_2
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_play:I

    if-ne v1, v2, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 269
    :cond_3
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_clean:I

    if-ne v1, v2, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/ClearActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 272
    :cond_4
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_wallpaper:I

    if-ne v1, v2, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 275
    :cond_5
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_other:I

    if-ne v1, v2, :cond_6

    .line 276
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/OtherActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 278
    :cond_6
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_act:I

    if-ne v1, v2, :cond_7

    .line 279
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 281
    :cond_7
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_about:I

    if-ne v1, v2, :cond_c

    .line 282
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/AboutActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 286
    :cond_8
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_remote:I

    if-ne v1, v2, :cond_9

    .line 287
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 289
    :cond_9
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_play:I

    if-ne v1, v2, :cond_a

    .line 290
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/ClearActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 292
    :cond_a
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_wallpaper:I

    if-ne v1, v2, :cond_b

    .line 293
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 295
    :cond_b
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_act:I

    if-ne v1, v2, :cond_c

    .line 296
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/AboutActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 301
    :cond_c
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 303
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    if-nez p2, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Settings_page"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 57
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_settings:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->init()V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 63
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 72
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 307
    const/4 v0, -0x1

    .line 308
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 310
    .local v1, "viewId":I
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_remote:I

    if-ne v1, v2, :cond_0

    .line 311
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_0
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_network:I

    if-ne v1, v2, :cond_1

    .line 313
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_play:I

    if-ne v1, v2, :cond_2

    .line 315
    const/4 v0, 0x2

    goto :goto_0

    .line 316
    :cond_2
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_clean:I

    if-ne v1, v2, :cond_3

    .line 317
    const/4 v0, 0x3

    goto :goto_0

    .line 318
    :cond_3
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_wallpaper:I

    if-ne v1, v2, :cond_4

    .line 319
    const/4 v0, 0x4

    goto :goto_0

    .line 320
    :cond_4
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_other:I

    if-ne v1, v2, :cond_5

    .line 321
    const/4 v0, 0x5

    goto :goto_0

    .line 322
    :cond_5
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_act:I

    if-ne v1, v2, :cond_6

    .line 323
    const/4 v0, 0x6

    goto :goto_0

    .line 324
    :cond_6
    sget v2, Lcom/shenma/tvlauncher/R$id;->setting_iv_about:I

    if-ne v1, v2, :cond_7

    .line 325
    const/4 v0, 0x7

    .line 328
    :cond_7
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 329
    if-eqz p2, :cond_9

    .line 330
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->showOnFocusAnimation(I)V

    .line 331
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 332
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :cond_8
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->flyAnimation(I)V

    goto :goto_1

    .line 336
    :cond_9
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->showLoseFocusAinimation(I)V

    .line 339
    :cond_a
    :goto_1
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->settingbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
