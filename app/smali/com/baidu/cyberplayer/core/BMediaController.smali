.class public Lcom/baidu/cyberplayer/core/BMediaController;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/drawable/StateListDrawable;

.field private a:Landroid/media/AudioManager;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/ImageButton;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/SeekBar;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

.field private a:Lcom/baidu/cyberplayer/core/b$c;

.field private a:Lcom/baidu/cyberplayer/core/f;

.field private a:Ljava/lang/String;

.field a:Z

.field private b:Landroid/graphics/drawable/StateListDrawable;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/ImageButton;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/StateListDrawable;

.field private c:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 86
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 90
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 100
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 104
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 115
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 119
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 162
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 163
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 165
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 145
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 148
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/media/AudioManager;

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 130
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->a()V

    .line 133
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BMediaController;)Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 6

    .line 475
    div-int/lit16 v0, p1, 0xe10

    .line 476
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 477
    rem-int/lit8 p1, p1, 0x3c

    .line 478
    nop

    .line 479
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    aput-object p1, v5, v4

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 484
    :goto_0
    return-object p1
.end method

.method private a()V
    .locals 15

    .line 188
    const-string v0, "00:00:00"

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    new-instance v3, Lcom/baidu/cyberplayer/core/f;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v5}, Lcom/baidu/cyberplayer/core/f;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    .line 192
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/f;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 193
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/f;->b()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 194
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/f;->g()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 202
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    .line 203
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 208
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    const/16 v6, 0x60

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 209
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/BMediaController;->addView(Landroid/view/View;)V

    .line 212
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    const/16 v7, 0xa

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    const/16 v3, 0x11

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 223
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    .line 227
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    new-instance v11, Landroid/widget/TextView;

    iget-object v14, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v11, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    .line 234
    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 240
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    new-instance v10, Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    .line 245
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    const/16 v10, 0xf

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 247
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 248
    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v10, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setMinimumHeight(I)V

    .line 251
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v10}, Lcom/baidu/cyberplayer/core/f;->a(Landroid/widget/ProgressBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v10, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    const-string v11, "cyberplayer_seekbar_ratio"

    invoke-virtual {v10, v11}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 258
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    invoke-virtual {v0, v9, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 269
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 274
    const/16 v3, 0x19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 275
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 277
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    .line 278
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    const/16 v10, 0xff

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 280
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v11}, Lcom/baidu/cyberplayer/core/f;->e()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 283
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    .line 284
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 286
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v11}, Lcom/baidu/cyberplayer/core/f;->f()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 289
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    .line 290
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 292
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v11}, Lcom/baidu/cyberplayer/core/f;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 295
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    .line 296
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 298
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/f;

    invoke-virtual {v11}, Lcom/baidu/cyberplayer/core/f;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    .line 302
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 304
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    .line 307
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    invoke-static {v9, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 309
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 326
    invoke-virtual {v0, v9, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 330
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 370
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    new-instance v1, Lcom/baidu/cyberplayer/core/BMediaController$1;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/core/BMediaController$1;-><init>(Lcom/baidu/cyberplayer/core/BMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 392
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/BMediaController;->enableControllerBar(Z)V

    .line 393
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BMediaController;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->b(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    if-nez v0, :cond_0

    .line 527
    const-string v0, "VideoViewController"

    const-string v1, "videoview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->start()V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->pause()V

    .line 536
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->resume()V

    .line 540
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_3
    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V
    .locals 4
    .param p1, "status"    # Lcom/baidu/cyberplayer/core/b$c;

    .line 400
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 401
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->getCurrentPosition()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->b(I)V

    .line 406
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->getDuration()I

    move-result v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/core/BMediaController;->a(I)V

    goto :goto_2

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->b:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_3

    .line 408
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_4

    .line 412
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 416
    :cond_4
    :goto_2
    return-void
.end method

.method public enableControllerBar(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .line 521
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 522
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 523
    return-void
.end method

.method public getIsDragging()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasVideoView()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 567
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BMediaController;->b()V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 571
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 580
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 582
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 586
    :cond_5
    :goto_0
    return-void
.end method

.method public setCache(I)V
    .locals 1
    .param p1, "cache"    # I

    .line 512
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .line 493
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 495
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->a(I)V

    .line 496
    return-void
.end method

.method public setMediaPlayerControl(Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;)V
    .locals 0
    .param p1, "player"    # Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 423
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    .line 424
    return-void
.end method

.method public setPreNextListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "preListener"    # Landroid/view/View$OnClickListener;
    .param p2, "backListener"    # Landroid/view/View$OnClickListener;

    .line 602
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/view/View$OnClickListener;

    .line 603
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/view/View$OnClickListener;

    .line 604
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 605
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BMediaController;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 609
    :goto_0
    if-eqz p2, :cond_1

    .line 610
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 614
    :goto_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 503
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public setResolutionListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "resListener"    # Landroid/view/View$OnClickListener;

    .line 638
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/view/View$OnClickListener;

    .line 639
    if-eqz p1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 644
    :goto_0
    return-void
.end method

.method public setSnapshotListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "snapListener"    # Landroid/view/View$OnClickListener;

    .line 623
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->c:Landroid/view/View$OnClickListener;

    .line 624
    if-eqz p1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 629
    :goto_0
    return-void
.end method

.method public setSubtitleListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "subtitleListener"    # Landroid/view/View$OnClickListener;

    .line 651
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController;->d:Landroid/view/View$OnClickListener;

    .line 652
    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 657
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->getCurrentPosition()I

    move-result v0

    .line 435
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->setProgress(I)V

    .line 436
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    :cond_1
    return-void
.end method
