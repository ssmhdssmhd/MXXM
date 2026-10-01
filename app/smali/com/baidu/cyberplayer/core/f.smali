.class Lcom/baidu/cyberplayer/core/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/res/Resources;

.field a:Lcom/baidu/cyberplayer/core/c;

.field a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ResourceUtil"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/f;->b:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/f;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    .line 31
    new-instance p1, Lcom/baidu/cyberplayer/core/c;

    invoke-direct {p1, p3}, Lcom/baidu/cyberplayer/core/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/widget/ProgressBar;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 64
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 68
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_seekbar_cache"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 73
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v5, "cyberplayer_seekbar_normal"

    invoke-virtual {p0, v5}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v1, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 77
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_seekbar_background"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 81
    const v1, 0x102000f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 83
    const v1, 0x102000d

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "ResourceUtil"

    const-string v1, "getProgressDrawable is not LayerDrawable"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-object p1
.end method

.method public a()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_play_media"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_play_media_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_play_media_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "id"

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_stop_media"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_stop_media_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_stop_media_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_retreat_media"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_retreat_media_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_retreat_media_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_next_play"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_next_play_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_next_play_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_take_snapshot"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_take_snapshot_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_take_snapshot_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_subtitle_setting"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_subtitle_setting_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_subtitle_setting_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v1, "cyberplayer_set_resolution"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v2, "cyberplayer_set_resolution_disable"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/f;->a:Landroid/content/res/Resources;

    const-string v3, "cyberplayer_set_resolution_pressed"

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/core/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/f;->a:Lcom/baidu/cyberplayer/core/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/cyberplayer/core/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method
