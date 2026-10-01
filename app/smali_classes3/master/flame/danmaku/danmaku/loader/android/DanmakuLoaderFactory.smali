.class public Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;
.super Ljava/lang/Object;
.source "DanmakuLoaderFactory.java"


# static fields
.field public static TAG_ACFUN:Ljava/lang/String;

.field public static TAG_BILI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "bili"

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_BILI:Ljava/lang/String;

    .line 24
    const-string v0, "acfun"

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_ACFUN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_BILI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/android/BiliDanmakuLoader;->instance()Lmaster/flame/danmaku/danmaku/loader/android/BiliDanmakuLoader;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_ACFUN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/android/AcFunDanmakuLoader;->instance()Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v0

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
