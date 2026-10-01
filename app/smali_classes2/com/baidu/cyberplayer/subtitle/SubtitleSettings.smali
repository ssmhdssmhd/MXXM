.class public final Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_TOP:I = 0x1

.field private static a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    .line 55
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$1;-><init>(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/content/Context;

    .line 77
    sput-object p2, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 78
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 86
    const-string v0, "#FFB5B5B5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:I

    .line 87
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 88
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    const/high16 p1, 0x41a00000    # 20.0f

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    iput v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:F

    .line 91
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->c:I

    .line 92
    const/high16 p1, 0x41200000    # 10.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->b:I

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 129
    nop

    .line 130
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;

    .line 134
    invoke-interface {v1, p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDisplayColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:I

    return v0
.end method

.method public getDisplayFontSize()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:F

    return v0
.end method

.method public getDisplayPadding()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->b:I

    return v0
.end method

.method public getSubtitleAlign()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->c:I

    return v0
.end method

.method public setDisplayColor(I)V
    .locals 2
    .param p1, "displayColor"    # I

    .line 152
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:I

    .line 153
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    return-void
.end method

.method public setDisplayFontSize(F)V
    .locals 2
    .param p1, "displayFontSize"    # F

    .line 169
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:F

    .line 170
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method public setDisplayLocation(II)V
    .locals 5
    .param p1, "align"    # I
    .param p2, "padding"    # I

    .line 196
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "align only support ALIGN_BOTTOM and ALIGN_TOP, align: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0xbbd

    invoke-static {v0, v3, v1, v4, v2}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 200
    return-void

    .line 203
    :cond_0
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->c:I

    .line 204
    iput p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->b:I

    .line 205
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method
