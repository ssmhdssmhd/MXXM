.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainerState"
.end annotation


# instance fields
.field public firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public lines:I

.field public minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public overwriteInsert:Z

.field public removeItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public shown:Z

.field public willHit:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lines:I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->removeItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 109
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->overwriteInsert:Z

    .line 110
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->shown:Z

    .line 111
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->willHit:Z

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;

    .line 106
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;-><init>()V

    return-void
.end method
