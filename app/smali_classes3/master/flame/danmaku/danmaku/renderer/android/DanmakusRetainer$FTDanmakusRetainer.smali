.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;
.super Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FTDanmakusRetainer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;

    .line 295
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "overwriteInsert"    # Z
    .param p2, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p4, "topPos"    # F
    .param p5, "firstItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p6, "lastItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 300
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, p4

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
